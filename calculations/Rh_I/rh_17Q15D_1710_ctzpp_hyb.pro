
 Working directory              : /wrk/irikura/molpro.O5GvR2VN5I/
 Global scratch directory       : /wrk/irikura/molpro.O5GvR2VN5I/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.O5GvR2VN5I/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! 4F,4P,4F + 2F,2D,2P
                                                                                 ! Hybrid, opt-MRCI+Q but displ for (b 4F)
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,17;
     wf,nelec=17,sym=1,spin=1; state,15;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,17;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,15;save,5101.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
                                                                                 ! replace with opt-MRCI+Q energies
                                                                                 ! 2D after 2F
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
 HLSDIAG(18)=-109.960044
 HLSDIAG(19)=-109.960044
 HLSDIAG(20)=-109.960044
 HLSDIAG(21)=-109.960044
 HLSDIAG(22)=-109.960044
 HLSDIAG(23)=-109.960044
 HLSDIAG(24)=-109.960044
 HLSDIAG(25)=-109.995136
 HLSDIAG(26)=-109.995136
 HLSDIAG(27)=-109.995136
 HLSDIAG(28)=-109.995136
 HLSDIAG(29)=-109.995136
 HLSDIAG(30)=-109.958296
 HLSDIAG(31)=-109.958296
 HLSDIAG(32)=-109.958296
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space                                                                                                                                 
  (32 PROC) 64 bit mpp version                                                           DATE: 20-Feb-24          TIME: 15:07:22  
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

     13.369 MB (compressed) written to integral file ( 16.7%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.73      0.52
 REAL TIME  *         1.51 SEC
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.143D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.139D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.330D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 5 3 1 6 4 2 5 3 2   6 4 5 3 1 711 91415  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.303D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.303D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   1 2 7 9 4 5 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 4 5 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125
                                          0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125
                                          0.03125
 Weight factors for state symmetry  2:    0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125
                                          0.03125   0.03125   0.03125   0.03125   0.03125   0.03125   0.03125
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    4870
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    8    0   -109.30997365    -109.33689836   -0.02692471    0.24076198 0.00025544 0.00000000  0.17E+00      0.28
   2    3    6    0   -109.33599848    -109.33606179   -0.00006331    0.01246715 0.00003397 0.00000000  0.86E-02      0.49
   3   20   40    0   -109.33606192    -109.33606191    0.00000001    0.00003339 0.00007509 0.00000000  0.29E-04      1.65
   4   20   40    0   -109.33606192    -109.33606192   -0.00000000    0.00000229 0.00000020 0.00000000  0.22E-05      2.81

 CONVERGENCE REACHED!  Final gradient:    0.00000018 ( 0.18E-06)
                       Final energy:   -109.33606192
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.378682212999
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792211
 One electron energy                          -194.10072922
 Two electron energy                            84.72204701
 Virial ratio                                    3.64404584
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.378682212473
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792211
 One electron energy                          -194.10072923
 Two electron energy                            84.72204702
 Virial ratio                                    3.64404584
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.378682212053
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792213
 One electron energy                          -194.10072926
 Two electron energy                            84.72204705
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.378682211154
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792214
 One electron energy                          -194.10072927
 Two electron energy                            84.72204706
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.378682211056
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792216
 One electron energy                          -194.10072929
 Two electron energy                            84.72204707
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.378682210985
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792214
 One electron energy                          -194.10072930
 Two electron energy                            84.72204709
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.378682210379
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792218
 One electron energy                          -194.10072934
 Two electron energy                            84.72204713
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.324480882021
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36876886
 One electron energy                          -194.09096132
 Two electron energy                            84.76648044
 Virial ratio                                    3.64268152
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.324480881878
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36876880
 One electron energy                          -194.09096126
 Two electron energy                            84.76648038
 Virial ratio                                    3.64268152
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.324480879096
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36876888
 One electron energy                          -194.09096136
 Two electron energy                            84.76648048
 Virial ratio                                    3.64268152
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.303283482817
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300389
 One electron energy                          -189.61138121
 Two electron energy                            80.30809773
 Virial ratio                                    3.80819239
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.303283482368
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300388
 One electron energy                          -189.61138122
 Two electron energy                            80.30809773
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.303283482157
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300386
 One electron energy                          -189.61138118
 Two electron energy                            80.30809769
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.303283481605
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300385
 One electron energy                          -189.61138117
 Two electron energy                            80.30809769
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.303283481347
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300385
 One electron energy                          -189.61138114
 Two electron energy                            80.30809766
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.303283480906
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300382
 One electron energy                          -189.61138115
 Two electron energy                            80.30809766
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.303283480367
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300381
 One electron energy                          -189.61138110
 Two electron energy                            80.30809762
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.348755626559
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766053
 One electron energy                          -194.06559454
 Two electron energy                            84.71683891
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.348755625843
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766052
 One electron energy                          -194.06559455
 Two electron energy                            84.71683892
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.348755625228
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766055
 One electron energy                          -194.06559457
 Two electron energy                            84.71683895
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.348755624357
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766056
 One electron energy                          -194.06559458
 Two electron energy                            84.71683896
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.348755624086
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766058
 One electron energy                          -194.06559460
 Two electron energy                            84.71683898
 Virial ratio                                    3.64461771
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.348755623715
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766056
 One electron energy                          -194.06559461
 Two electron energy                            84.71683899
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.348755622800
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766059
 One electron energy                          -194.06559465
 Two electron energy                            84.71683903
 Virial ratio                                    3.64461771
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.330091363714
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184053
 One electron energy                          -194.10693514
 Two electron energy                            84.77684378
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.330091363446
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184055
 One electron energy                          -194.10693516
 Two electron energy                            84.77684380
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.330091363158
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184056
 One electron energy                          -194.10693517
 Two electron energy                            84.77684381
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.330091362928
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184054
 One electron energy                          -194.10693514
 Two electron energy                            84.77684378
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.330091362182
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184056
 One electron energy                          -194.10693519
 Two electron energy                            84.77684383
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Doublet
 ==============================
 !MCSCF STATE 13.1 Doublet Energy             -109.305010877326
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03254609
 One electron energy                          -193.46147066
 Two electron energy                            84.15645978
 Virial ratio                                    3.66386128
 
 !MCSCF STATE 13.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Doublet
 ==============================
 !MCSCF STATE 14.1 Doublet Energy             -109.305010876713
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03254616
 One electron energy                          -193.46147072
 Two electron energy                            84.15645984
 Virial ratio                                    3.66386128
 
 !MCSCF STATE 14.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Doublet
 ==============================
 !MCSCF STATE 15.1 Doublet Energy             -109.305010874310
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03254614
 One electron energy                          -193.46147070
 Two electron energy                            84.15645982
 Virial ratio                                    3.66386128
 
 !MCSCF STATE 15.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     6.118900529037
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     6.781827531327
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     2.664705662249
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     1.335165463952
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     3.218315961604
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     4.000000000323
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     3.881096637087
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.000000006991
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     1.000000000000
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.999999999790
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     2.613689067922
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     4.598818520500
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     0.002643186833
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     3.997372697558
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     3.999999994018
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     7.386179677374
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     5.401125138399
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     5.979399877998
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     5.890082268073
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     2.628305117354
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     1.371777131912
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     4.109985091223
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     3.999999997538
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     4.020610860473
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     1.026705526067
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000956934
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     1.000000325855
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     3.999999006903
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     2.973176215416
 !MCSCF expec    <13.1 Doublet|LXLX|13.1 Doublet>     0.999999999966
 !MCSCF expec    <14.1 Doublet|LXLX|14.1 Doublet>     0.000000000407
 !MCSCF expec    <15.1 Doublet|LXLX|15.1 Doublet>     0.999999999176
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     0.000950264959
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     1.707153344621
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     1.014823072317
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     8.985153351083
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     8.292755661137
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     4.000000004547
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.999049714760
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.999999999830
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     1.000000000000
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.000000000214
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     5.533880411232
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     0.123420455509
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     6.197727894470
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     3.802860509186
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     4.000000046804
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     4.466281669474
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     3.876589422466
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     0.000028344756
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     2.333238069416
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     1.008943462925
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     8.991067976307
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     7.666710430556
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     3.999999989826
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.999971722852
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     3.999764217895
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     3.999999042419
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000000005679
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     1.000000736919
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     0.000238073118
 !MCSCF expec    <13.1 Doublet|LYLY|13.1 Doublet>     1.000000000000
 !MCSCF expec    <14.1 Doublet|LYLY|14.1 Doublet>     0.999999999611
 !MCSCF expec    <15.1 Doublet|LYLY|15.1 Doublet>     0.000000000839
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     5.880149206004
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     3.511019124052
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     8.320471265433
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     1.679681184965
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     0.488928377259
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     3.999999995129
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     4.119853648152
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.999999993179
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>    -0.000000000000
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.999999999997
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     3.852430520846
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     7.277761023991
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     5.799628918697
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     4.199766793256
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     3.999999959178
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     0.147538653153
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     2.722285439135
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     6.020571777247
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     3.776679662511
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     8.362751419721
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     1.637154891781
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     0.223304478221
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     4.000000012636
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     3.979417416675
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     0.973530256039
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000000647
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     3.999999668466
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     1.000000256178
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.026585711466
 !MCSCF expec    <13.1 Doublet|LZLZ|13.1 Doublet>     0.000000000034
 !MCSCF expec    <14.1 Doublet|LZLZ|14.1 Doublet>     0.999999999983
 !MCSCF expec    <15.1 Doublet|LZLZ|15.1 Doublet>     0.999999999985
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 6 4 5 1 1 3 6   2 5 4 1 3 6 2 5 4 6   3 5 2 4 11113101415  12 8 7 9 6 5 3 2 4 1
                                       111310141512 8 7 9 6   5 3 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 2 3 1 2   3 1 5 9 7 6 810 4 2   3 1 5 7 9 810 6 4 2   3 1 5 7 910 8 6 4 2
                                        3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99989    -3.75648     1  1  s    1.00114
    2.1     1.55365    -0.32032     1  1  d0   1.00403
    3.1     1.55365    -0.32032     1  1  d2-  1.00403
    4.1     1.55365    -0.32032     1  1  d1-  1.00403
    5.1     1.55365    -0.32032     1  1  d1+  1.00403
    6.1     1.55365    -0.32032     1  1  d2+  1.00403
    7.1     1.23328    -0.13509     1  2  s    0.97538
    1.2     1.99953    -2.38281     1  1  pz   0.99975
    2.2     1.99953    -2.38281     1  1  px   0.99975
    3.2     1.99953    -2.38281     1  1  py   0.99975
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a222aa 222     -0.00000001     -0.00000000      0.00000273      0.00001204      0.00000000      0.99999878      0.00002244
 22aaa22 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222aaa2 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000
 2aa222a 222     -0.00001956      0.93688454     -0.00000236      0.00000974     -0.34963541     -0.00000000      0.00000000
 22aa22a 222      0.89431987      0.00002560      0.00001626     -0.00000537      0.00001856     -0.00000030      0.01378593
 22a22aa 222      0.00001317     -0.15636173     -0.00000283      0.00001168     -0.41898751     -0.00000000      0.00000000
 2a2a2a2 222     -0.00000000     -0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000000     -0.00000000
 2a22aa2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001
 2aa22a2 222      0.00000000     -0.00000001      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2aa2a22 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2222aaa 222      0.21023177      0.00000602      0.00004512     -0.00009822      0.00000436     -0.00001951      0.86936795
 222aa2a 222     -0.00002634      0.31272341      0.00000566     -0.00002335      0.83797500      0.00000000     -0.00000000
 222a2aa 222     -0.00001322     -0.00000000      0.83604007      0.31786012      0.00000321     -0.00000610     -0.00000428
 2aaa222 222      0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2a22a2a 222      0.39495839      0.00001130     -0.00001666      0.00005361      0.00000820      0.00001109     -0.49397051
 2a2a22a 222     -0.00000062      0.00000000      0.18432674      0.60499807      0.00001562     -0.00000779      0.00005894
 22a2a2a 222      0.00001214      0.00000000     -0.51677674      0.73002727      0.00002383     -0.00000738      0.00010636
 22aa2a2 222     -0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22a2aa2 222     -0.00000000      0.00000000      0.00000001     -0.00000001     -0.00000000      0.00000000     -0.00000000
 2a2aa22 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 
 Energy:       -109.37868221   -109.37868221   -109.37868221   -109.37868221   -109.37868221   -109.37868221   -109.37868221

 State:                8               9              10              11              12              13              14
 2a222aa 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22aaa22 222      0.00000000     -0.00000000      0.00000000     -0.00000103      0.00001598     -0.00006419     -0.00015359
 222aaa2 222     -0.00000000     -0.00000001      0.00000000      0.98095190      0.00000136      0.00000077      0.00000157
 2aa222a 222     -0.00000000      0.00000002     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22aa22a 222     -0.00000582      0.00000000     -0.44687689      0.00000000     -0.00000001      0.00000000     -0.00000000
 22a22aa 222      0.00007382      0.89375384      0.00000001      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2a2a2a2 222      0.00009887     -0.00000001     -0.00000000     -0.00000001      0.00009886      0.89374116     -0.02298183
 2a22aa2 222     -0.00000000      0.00000000     -0.00009892      0.00000001      0.88013573     -0.00009494      0.00000218
 2aa22a2 222      0.00000001      0.00009892      0.00000000     -0.17172106      0.00000630      0.00000350      0.00000718
 2aa2a22 222      0.00009890     -0.00000001     -0.00000000      0.00000000     -0.00002266     -0.20118323      0.87110660
 2222aaa 222      0.00000582     -0.00000000      0.44687694     -0.00000000      0.00000000      0.00000000      0.00000000
 222aa2a 222      0.00003691      0.44687694      0.00000000      0.00000002     -0.00000000     -0.00000000     -0.00000000
 222a2aa 222     -0.44687691      0.00003691      0.00000582     -0.00000000     -0.00000000     -0.00000002     -0.00000000
 2aaa222 222      0.00000000     -0.00000000      0.00009888      0.00000001      0.37209020     -0.00005362     -0.00000899
 2a22a2a 222      0.00001008     -0.00000001      0.77401356     -0.00000000      0.00000002     -0.00000000      0.00000000
 2a2a22a 222      0.77401354     -0.00006393     -0.00001008      0.00000000      0.00000000      0.00000003      0.00000001
 22a2a2a 222     -0.44687694      0.00003691      0.00000582     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22aa2a2 222      0.00000000     -0.00000000      0.00017131      0.00000000      0.29332022     -0.00002385      0.00000645
 22a2aa2 222     -0.00017131      0.00000001      0.00000000     -0.00000000      0.00004400      0.39984848      0.48966507
 2a2aa22 222      0.00000002      0.00019780      0.00000000      0.08586055     -0.00000315     -0.00000175     -0.00000359
 
 Energy:       -109.32448088   -109.32448088   -109.32448088   -109.30328348   -109.30328348   -109.30328348   -109.30328348

 State:               15              16              17
 2a222aa 222     -0.00000000     -0.00000000     -0.00000000
 22aaa22 222      0.99956328     -0.00000072      0.00000361
 222aaa2 222      0.00000115      0.19198999     -0.00000000
 2aa222a 222      0.00000000      0.00000001     -0.00000000
 22aa22a 222      0.00000000     -0.00000000     -0.00000002
 22a22aa 222      0.00000000     -0.00000002      0.00000000
 2a2a2a2 222      0.00005386     -0.00000338      0.00001345
 2a22aa2 222     -0.00001351     -0.00000631     -0.15704305
 2aa22a2 222      0.00000045      0.87739004     -0.00000000
 2aa2a22 222      0.00012093     -0.00000633      0.00000674
 2222aaa 222     -0.00000000     -0.00000000      0.00000001
 222aa2a 222      0.00000000     -0.00000000      0.00000000
 222a2aa 222     -0.00000000     -0.00000000     -0.00000000
 2aaa222 222     -0.00000889     -0.00000267      0.81292701
 2a22a2a 222     -0.00000000     -0.00000000      0.00000001
 2a2a22a 222      0.00000000      0.00000000      0.00000000
 22a2a2a 222     -0.00000000     -0.00000000     -0.00000000
 22aa2a2 222     -0.00000267     -0.00000211     -0.56001246
 22a2aa2 222      0.00010092     -0.00000560      0.00001165
 2a2aa22 222     -0.00000023     -0.43869504      0.00000000
 
 Energy:       -109.30328348   -109.30328348   -109.30328348
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a222ab 222      0.00002336      0.00000183      0.00008901      0.00000213      0.00000446      0.81355784     -0.00003407
 2aa222b 222     -0.00000300      0.79052119     -0.00000369      0.00001128     -0.19223063     -0.00000072     -0.00000029
 22aa22b 222      0.72766569      0.00000343      0.00016255     -0.00005304      0.00000274     -0.00002099     -0.00193387
 222aa2b 222     -0.00000349      0.17193629      0.00000824     -0.00003416      0.70706364     -0.00000427     -0.00000312
 2222aab 222      0.18378885      0.00000183      0.00005476     -0.00006999      0.00000356      0.00002420      0.70407580
 222a2ab 222     -0.00013203      0.00000054      0.67764951      0.26512681      0.00000478     -0.00007483      0.00000812
 22a22ab 222      0.00000174     -0.08596817     -0.00000412      0.00001708     -0.35353184      0.00000213      0.00000156
 22a2a2b 222      0.00013833     -0.00000214     -0.42612028      0.58984962      0.00003398      0.00004507      0.00005566
 2a22a2b 222      0.31400738      0.00000092      0.00006223      0.00000978     -0.00000047     -0.00002609     -0.40761487
 2a2a22b 222      0.00000364     -0.00000093      0.14522045      0.49362087      0.00002238     -0.00001718      0.00003682
 2ba222a 222      0.00000150     -0.39526058      0.00000184     -0.00000564      0.09611532      0.00000036      0.00000015
 2ab222a 222      0.00000150     -0.39526061      0.00000184     -0.00000564      0.09611531      0.00000036      0.00000015
 222202a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 220222a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 202222a 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222220a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2a222ba 222     -0.00001168     -0.00000092     -0.00004451     -0.00000107     -0.00000223     -0.40677892      0.00001703
 2b222aa 222     -0.00001168     -0.00000092     -0.00004451     -0.00000107     -0.00000223     -0.40677892      0.00001703
 222ab2a 222      0.00000174     -0.08596814     -0.00000412      0.00001708     -0.35353181      0.00000213      0.00000156
 222ba2a 222      0.00000174     -0.08596815     -0.00000412      0.00001708     -0.35353183      0.00000213      0.00000156
 22ba22a 222     -0.36383285     -0.00000171     -0.00008127      0.00002652     -0.00000137      0.00001049      0.00096694
 22ab22a 222     -0.36383284     -0.00000171     -0.00008127      0.00002652     -0.00000137      0.00001049      0.00096693
 2222baa 222     -0.09189443     -0.00000091     -0.00002738      0.00003499     -0.00000178     -0.00001210     -0.35203790
 2222aba 222     -0.09189443     -0.00000091     -0.00002738      0.00003499     -0.00000178     -0.00001210     -0.35203791
 222a2ba 222      0.00006602     -0.00000027     -0.33882475     -0.13256340     -0.00000239      0.00003742     -0.00000406
 22a2b2a 222     -0.00006917      0.00000107      0.21306013     -0.29492480     -0.00001699     -0.00002254     -0.00002783
 222b2aa 222      0.00006602     -0.00000027     -0.33882476     -0.13256340     -0.00000239      0.00003742     -0.00000406
 22b2a2a 222     -0.00006917      0.00000107      0.21306015     -0.29492481     -0.00001699     -0.00002254     -0.00002783
 222022a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22b22aa 222     -0.00000087      0.04298408      0.00000206     -0.00000854      0.17676592     -0.00000107     -0.00000078
 22a22ba 222     -0.00000087      0.04298408      0.00000206     -0.00000854      0.17676592     -0.00000107     -0.00000078
 2b22a2a 222     -0.15700369     -0.00000046     -0.00003112     -0.00000489      0.00000024      0.00001305      0.20380744
 2a2b22a 222     -0.00000182      0.00000046     -0.07261023     -0.24681044     -0.00001119      0.00000859     -0.00001841
 2b2a22a 222     -0.00000182      0.00000046     -0.07261022     -0.24681043     -0.00001119      0.00000859     -0.00001841
 2a22b2a 222     -0.15700369     -0.00000046     -0.00003112     -0.00000489      0.00000024      0.00001305      0.20380744
 2ba22a2 222      0.00000021     -0.01031717     -0.00000049      0.00000205     -0.04242788      0.00000026      0.00000019
 22a2220 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000
 2222a20 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000001
 222a220 222     -0.00000000     -0.00000000      0.00000001      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2a22220 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000001     -0.00000000
 22222a0 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000001     -0.00000000
 2222a02 222      0.02839311      0.00000015      0.00000658     -0.00000305      0.00000016     -0.00000031      0.01212913
 2022a22 222     -0.02826337     -0.00000008     -0.00000560     -0.00000088      0.00000004      0.00000235      0.03668884
 2220a22 222      0.01884225      0.00000006      0.00000373      0.00000059     -0.00000003     -0.00000157     -0.02445923
 222aba2 222     -0.00000009      0.00446746      0.00000021     -0.00000089      0.01837181     -0.00000011     -0.00000008
 222baa2 222      0.00000009     -0.00446746     -0.00000021      0.00000089     -0.01837180      0.00000011      0.00000008
 222a022 222      0.00000022     -0.00000006      0.00871406      0.02962008      0.00000134     -0.00000103      0.00000221
 222a202 222      0.00000708     -0.00000008     -0.02650100      0.01584238      0.00000109      0.00000286      0.00000179
 22a0222 222      0.00000018     -0.02818536     -0.00000010      0.00000055     -0.01260434      0.00000013      0.00000009
 22a2022 222     -0.00000000     -0.01925044      0.00000032     -0.00000123      0.02413928     -0.00000009     -0.00000007
 2202a22 222     -0.01897199     -0.00000012     -0.00000471      0.00000334     -0.00000017     -0.00000047     -0.02435873
 202a222 222     -0.00000033      0.00000008     -0.01307109     -0.04443013     -0.00000201      0.00000155     -0.00000331
 220a222 222     -0.00000697      0.00000006      0.03085803     -0.00103233     -0.00000042     -0.00000337     -0.00000068
 2a22ab2 222     -0.02734625     -0.00000016     -0.00000652      0.00000369     -0.00000019     -0.00000010     -0.02106627
 2ab2a22 222     -0.00000811      0.00000008      0.03311626     -0.00974262     -0.00000088     -0.00000360     -0.00000143
 2aba222 222     -0.02734626     -0.00000016     -0.00000652      0.00000369     -0.00000019     -0.00000010     -0.02106627
 2a2a2b2 222      0.00000811     -0.00000008     -0.03311626      0.00974261      0.00000088      0.00000360      0.00000143
 2a22ba2 222      0.02183206      0.00000010      0.00000488     -0.00000159      0.00000008     -0.00000063     -0.00005802
 2aa2b22 222      0.00000396     -0.00000002     -0.02033143     -0.00795457     -0.00000014      0.00000225     -0.00000024
 2aab222 222      0.00551419      0.00000005      0.00000164     -0.00000210      0.00000011      0.00000073      0.02112429
 2a2b2a2 222     -0.00000415      0.00000006      0.01278483     -0.01769718     -0.00000102     -0.00000135     -0.00000167
 2ab22a2 222     -0.00000010      0.00515859      0.00000025     -0.00000102      0.02121394     -0.00000013     -0.00000009
 2aa22b2 222     -0.00000010      0.00515858      0.00000025     -0.00000102      0.02121394     -0.00000013     -0.00000009
 22a2ba2 222      0.00000033     -0.00000008      0.01307109      0.04443013      0.00000201     -0.00000155      0.00000331
 22ab2a2 222     -0.02826337     -0.00000008     -0.00000560     -0.00000088      0.00000004      0.00000235      0.03668885
 20a2222 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a02222 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2a22202 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000001     -0.00000000
 20222a2 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22220a2 222     -0.00000070     -0.00000005     -0.00000267     -0.00000006     -0.00000013     -0.02440907      0.00000102
 22202a2 222     -0.00000070     -0.00000005     -0.00000267     -0.00000006     -0.00000013     -0.02440907      0.00000102
 222aab2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000
 22aab22 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2b2aa22 222      0.00000021     -0.01031716     -0.00000049      0.00000205     -0.04242787      0.00000026      0.00000019
 
 Energy:       -109.34875563   -109.34875563   -109.34875563   -109.34875562   -109.34875562   -109.34875562   -109.34875562

 State:                8               9              10              11              12              13              14
 2a222ab 222      0.00000001      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2aa222b 222      0.00000000      0.00000000      0.00000001     -0.00000000      0.00000000      0.00000001     -0.00000000
 22aa22b 222     -0.00000000      0.00000001      0.00000000     -0.00000000     -0.00000000     -0.00000016     -0.00000667
 222aa2b 222     -0.00000000      0.00000000      0.00000002     -0.00000000     -0.00000000      0.33779107     -0.00000197
 2222aab 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000016      0.00000667
 222a2ab 222      0.00000000     -0.00000000     -0.00000000     -0.00000002     -0.00000000     -0.00000197     -0.33779103
 22a22ab 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.67558209     -0.00000394
 22a2a2b 222     -0.00000000      0.00000000      0.00000000      0.00000001      0.00000000     -0.00000197     -0.33779106
 2a22a2b 222      0.00000000     -0.00000002      0.00000000      0.00000000     -0.00000000      0.00000028      0.00001154
 2a2a22b 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000342      0.58507127
 2ba222a 222      0.00000084     -0.00000654     -0.52003085      0.00017137     -0.00000085     -0.00000000      0.00000000
 2ab222a 222     -0.00000084      0.00000654      0.52003084     -0.00017137      0.00000085     -0.00000001     -0.00000000
 222202a 222     -0.00399144      0.00000053     -0.00000096     -0.00030791      0.52001544     -0.00000000      0.00000000
 220222a 222      0.45234240      0.00006048      0.00000123      0.00024751     -0.25655098      0.00000000      0.00000000
 202222a 222     -0.45234237     -0.00006048     -0.00000123     -0.00024751      0.25655097     -0.00000000     -0.00000000
 222220a 222      0.45234237      0.00006048      0.00000123      0.00024751     -0.25655099      0.00000000      0.00000000
 2a222ba 222      0.25655107      0.00003553     -0.00000040     -0.00021264      0.45234236     -0.00000000     -0.00000000
 2b222aa 222     -0.25655107     -0.00003553      0.00000040      0.00021264     -0.45234235      0.00000000      0.00000000
 222ab2a 222      0.00000073     -0.00000566     -0.45035991      0.00014841     -0.00000074     -0.16889552      0.00000099
 222ba2a 222     -0.00000073      0.00000566      0.45035990     -0.00014841      0.00000074     -0.16889555      0.00000099
 22ba22a 222      0.00006068     -0.45035988      0.00000574      0.00025438      0.00000107      0.00000008      0.00000333
 22ab22a 222     -0.00006068      0.45035988     -0.00000574     -0.00025438     -0.00000107      0.00000008      0.00000333
 2222baa 222      0.00006068     -0.45035985      0.00000574      0.00025438      0.00000107     -0.00000008     -0.00000333
 2222aba 222     -0.00006068      0.45035985     -0.00000574     -0.00025438     -0.00000107     -0.00000008     -0.00000333
 222a2ba 222     -0.00009564      0.00025437      0.00014841      0.45035977      0.00026593      0.00000099      0.16889550
 22a2b2a 222      0.00009564     -0.00025437     -0.00014841     -0.45035976     -0.00026593      0.00000099      0.16889553
 222b2aa 222      0.00009564     -0.00025437     -0.00014841     -0.45035975     -0.00026593      0.00000099      0.16889553
 22b2a2a 222     -0.00009564      0.00025437      0.00014841      0.45035975      0.00026593      0.00000099      0.16889553
 222022a 222     -0.44835095     -0.00006101     -0.00000027      0.00006039     -0.26346447      0.00000000     -0.00000000
 22b22aa 222     -0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000     -0.33779106      0.00000197
 22a22ba 222      0.00000000      0.00000000      0.00000001     -0.00000000     -0.00000000     -0.33779103      0.00000197
 2b22a2a 222      0.00003504     -0.26001537      0.00000332      0.00014686      0.00000062     -0.00000014     -0.00000577
 2a2b22a 222      0.00005522     -0.00014686     -0.00008568     -0.26001532     -0.00015353     -0.00000171     -0.29253564
 2b2a22a 222     -0.00005522      0.00014686      0.00008568      0.26001532      0.00015353     -0.00000171     -0.29253563
 2a22b2a 222     -0.00003504      0.26001539     -0.00000332     -0.00014686     -0.00000062     -0.00000014     -0.00000577
 2ba22a2 222     -0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000      0.20834498     -0.00000122
 22a2220 222     -0.00000027      0.00000207      0.16488802     -0.00005434      0.00000027      0.00000001      0.00000000
 2222a20 222      0.00002222     -0.16488799      0.00000210      0.00009313      0.00000039     -0.00000000     -0.00000000
 222a220 222     -0.00003502      0.00009313      0.00005434      0.16488795      0.00009736     -0.00000000     -0.00000000
 2a22220 222     -0.14342579     -0.00001918     -0.00000039     -0.00007848      0.08134552     -0.00000000     -0.00000000
 22222a0 222      0.08134556      0.00001126     -0.00000013     -0.00006742      0.14342579     -0.00000000      0.00000000
 2222a02 222     -0.00000768      0.05697074     -0.00000073     -0.00003218     -0.00000014      0.00000006      0.00000267
 2022a22 222     -0.00000002      0.00012136     -0.00000000     -0.00000007     -0.00000000     -0.00000006     -0.00000267
 2220a22 222     -0.00000768      0.05697075     -0.00000073     -0.00003218     -0.00000014     -0.00000006     -0.00000267
 222aba2 222     -0.00000005      0.00000036      0.02842471     -0.00000937      0.00000005      0.13532405     -0.00000079
 222baa2 222     -0.00000005      0.00000036      0.02842469     -0.00000937      0.00000005     -0.13532404      0.00000079
 222a022 222      0.00001210     -0.00003218     -0.00001877     -0.05697074     -0.00003364     -0.00000079     -0.13532404
 222a202 222      0.00001210     -0.00003218     -0.00001877     -0.05697074     -0.00003364      0.00000079      0.13532404
 22a0222 222      0.00000009     -0.00000072     -0.05697076      0.00001877     -0.00000009     -0.13532404      0.00000079
 22a2022 222      0.00000009     -0.00000072     -0.05697076      0.00001877     -0.00000009      0.13532404     -0.00000079
 2202a22 222     -0.00000768      0.05697075     -0.00000073     -0.00003218     -0.00000014      0.00000006      0.00000267
 202a222 222      0.00000003     -0.00000007     -0.00000004     -0.00012136     -0.00000007     -0.00000079     -0.13532404
 220a222 222      0.00001210     -0.00003218     -0.00001877     -0.05697073     -0.00003364      0.00000079      0.13532403
 2a22ab2 222     -0.00000663      0.04923302     -0.00000063     -0.00002781     -0.00000012     -0.00000006     -0.00000257
 2ab2a22 222     -0.00001046      0.00002781      0.00001622      0.04923301      0.00002907      0.00000076      0.13021562
 2aba222 222      0.00000663     -0.04923302      0.00000063      0.00002781      0.00000012      0.00000006      0.00000257
 2a2a2b2 222     -0.00001046      0.00002781      0.00001622      0.04923301      0.00002907      0.00000076      0.13021561
 2a22ba2 222      0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000005      0.00000206
 2aa2b22 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000061     -0.10417250
 2aab222 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000005     -0.00000206
 2a2b2a2 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000061     -0.10417249
 2ab22a2 222      0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000     -0.10417249      0.00000061
 2aa22b2 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.10417249      0.00000061
 22a2ba2 222     -0.00001207      0.00003211      0.00001873      0.05684938      0.00003357     -0.00000053     -0.09021603
 22ab2a2 222     -0.00000766      0.05684939     -0.00000073     -0.00003211     -0.00000014      0.00000004      0.00000178
 20a2222 222      0.00000014     -0.00000107     -0.08539545      0.00002814     -0.00000014     -0.00000001     -0.00000000
 2a02222 222      0.07428018      0.00000993      0.00000020      0.00004064     -0.04212882      0.00000000      0.00000000
 2a22202 222      0.07428018      0.00000993      0.00000020      0.00004064     -0.04212883      0.00000000      0.00000000
 20222a2 222     -0.04212884     -0.00000583      0.00000007      0.00003492     -0.07428018      0.00000000      0.00000000
 22220a2 222      0.01471888      0.00000183      0.00000016      0.00004673     -0.07384383      0.00000000     -0.00000000
 22202a2 222     -0.07093058     -0.00000962     -0.00000007     -0.00000014     -0.02526678      0.00000000      0.00000000
 222aab2 222      0.00000009     -0.00000071     -0.05684940      0.00001873     -0.00000009     -0.00000000      0.00000000
 22aab22 222     -0.05684773     -0.00000767     -0.00000009     -0.00001181     -0.00043635     -0.00000000      0.00000000
 2b2aa22 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.05208625      0.00000030
 
 Energy:       -109.33009136   -109.33009136   -109.33009136   -109.33009136   -109.33009136   -109.30501088   -109.30501088

 State:               15
 2a222ab 222      0.00000000
 2aa222b 222     -0.00000000
 22aa22b 222     -0.33779101
 222aa2b 222     -0.00000016
 2222aab 222      0.33779106
 222a2ab 222      0.00000667
 22a22ab 222     -0.00000032
 22a2a2b 222      0.00000667
 2a22a2b 222      0.58507128
 2a2a22b 222     -0.00001154
 2ba222a 222      0.00000000
 2ab222a 222     -0.00000000
 222202a 222     -0.00000000
 220222a 222     -0.00000000
 202222a 222      0.00000000
 222220a 222      0.00000000
 2a222ba 222     -0.00000000
 2b222aa 222     -0.00000000
 222ab2a 222      0.00000008
 222ba2a 222      0.00000008
 22ba22a 222      0.16889549
 22ab22a 222      0.16889552
 2222baa 222     -0.16889554
 2222aba 222     -0.16889552
 222a2ba 222     -0.00000333
 22a2b2a 222     -0.00000333
 222b2aa 222     -0.00000333
 22b2a2a 222     -0.00000333
 222022a 222     -0.00000000
 22b22aa 222      0.00000016
 22a22ba 222      0.00000016
 2b22a2a 222     -0.29253565
 2a2b22a 222      0.00000577
 2b2a22a 222      0.00000577
 2a22b2a 222     -0.29253563
 2ba22a2 222     -0.00000010
 22a2220 222     -0.00000000
 2222a20 222      0.00000001
 222a220 222     -0.00000000
 2a22220 222      0.00000000
 22222a0 222      0.00000000
 2222a02 222      0.13532405
 2022a22 222     -0.13532405
 2220a22 222     -0.13532405
 222aba2 222     -0.00000006
 222baa2 222      0.00000006
 222a022 222      0.00000267
 222a202 222     -0.00000267
 22a0222 222      0.00000006
 22a2022 222     -0.00000006
 2202a22 222      0.13532404
 202a222 222      0.00000267
 220a222 222     -0.00000267
 2a22ab2 222     -0.13021563
 2ab2a22 222     -0.00000257
 2aba222 222      0.13021562
 2a2a2b2 222     -0.00000257
 2a22ba2 222      0.10417250
 2aa2b22 222      0.00000206
 2aab222 222     -0.10417249
 2a2b2a2 222      0.00000206
 2ab22a2 222      0.00000005
 2aa22b2 222      0.00000005
 22a2ba2 222      0.00000178
 22ab2a2 222      0.09021602
 20a2222 222      0.00000000
 2a02222 222     -0.00000000
 2a22202 222     -0.00000000
 20222a2 222     -0.00000000
 22220a2 222      0.00000000
 22202a2 222     -0.00000000
 222aab2 222     -0.00000000
 22aab22 222      0.00000000
 2b2aa22 222      0.00000002
 
 Energy:       -109.30501087
 


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
 CPU TIMES  *         3.63      2.90      0.52
 REAL TIME  *         4.64 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
 SF USED    *        12.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3786822   12.0
    -109.3786822   12.0
    -109.3786822   12.0
    -109.3786822   12.0
    -109.3786822   12.0
    -109.3786822   12.0
    -109.3786822   12.0
    -109.3244809    2.0
    -109.3244809    2.0
    -109.3244809    2.0
    -109.3032835   12.0
    -109.3032835   12.0
    -109.3032835   12.0
    -109.3032835   12.0
    -109.3032835   12.0
    -109.3032835   12.0
    -109.3032835   12.0
    -109.3487556   12.0
    -109.3487556   12.0
    -109.3487556   12.0
    -109.3487556   12.0
    -109.3487556   12.0
    -109.3487556   12.0
    -109.3487556   12.0
    -109.3300914    6.0
    -109.3300914    6.0
    -109.3300914    6.0
    -109.3300914    6.0
    -109.3300914    6.0
    -109.3050109    2.0
    -109.3050109    2.0
    -109.3050109    2.0
                                                  


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
 Smallest eigenvalue of S: -0.6977552E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.37868221
     2      -109.37868221
     3      -109.37868221
     4      -109.37868221
     5      -109.37868221
     6      -109.37868221
     7      -109.37868221
     8      -109.32448088
     9      -109.32448088
    10      -109.32448088
    11      -109.30328348
    12      -109.30328348
    13      -109.30328348
    14      -109.30328348
    15      -109.30328348
    16      -109.30328348
    17      -109.30328348

 Number of blocks in overlap matrix:    71   Smallest eigenvalue:  0.14D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    758700 words, CPU-Time:      0.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    564595 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.67864166  0.30D-01  0.99D-01     1.04
    1     2     2     1.00000000     0.00000000  -109.37868221     0.00000000    -0.68097490  0.30D-01  0.10D+00     1.04
    1     3     3     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.67999161  0.30D-01  0.10D+00     1.04
    1     4     4     1.00000000     0.00000000  -109.37868221     0.00000000    -0.67939307  0.30D-01  0.10D+00     1.04
    1     5     5     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.67879799  0.30D-01  0.99D-01     1.04
    1     6     6     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.68210778  0.30D-01  0.10D+00     1.04
    1     7     7     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.68072010  0.30D-01  0.10D+00     1.04
    1     8     8     1.00000000     0.00000000  -109.32448088    -0.00000000    -0.69263110  0.38D-01  0.10D+00     1.04
    1     9     9     1.00000000     0.00000000  -109.32448088    -0.00000000    -0.69304617  0.37D-01  0.10D+00     1.04
    1    10    10     1.00000000     0.00000000  -109.32448088     0.00000000    -0.69210787  0.38D-01  0.10D+00     1.04
    1    11    11     1.00000000     0.00000000  -109.30328348     0.00000000    -0.68543538  0.72D-01  0.87D-01     1.04
    1    12    12     1.00000000     0.00000000  -109.30328348     0.00000000    -0.68202799  0.71D-01  0.86D-01     1.04
    1    13    13     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68258057  0.71D-01  0.86D-01     1.04
    1    14    14     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68432081  0.71D-01  0.87D-01     1.04
    1    15    15     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68406087  0.72D-01  0.86D-01     1.04
    1    16    16     1.00000000     0.00000000  -109.30328348     0.00000000    -0.68188556  0.71D-01  0.86D-01     1.04
    1    17    17     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68317863  0.70D-01  0.86D-01     1.04
    2     1     1     1.08865331    -0.56233445  -109.94101667    -0.56233445    -0.02060815  0.21D-02  0.26D-02   150.35
    2     2     2     1.08857696    -0.56205778  -109.94073999    -0.56205778    -0.02070981  0.21D-02  0.26D-02   150.35
    2     3     3     1.08849872    -0.56199332  -109.94067553    -0.56199332    -0.02062519  0.20D-02  0.26D-02   150.35
    2     4     4     1.08845772    -0.56184085  -109.94052307    -0.56184085    -0.02067892  0.20D-02  0.26D-02   150.35
    2     5     5     1.08837308    -0.56146329  -109.94014550    -0.56146329    -0.02079356  0.20D-02  0.26D-02   150.35
    2     6     6     1.08832639    -0.56129951  -109.93998172    -0.56129951    -0.02084878  0.20D-02  0.26D-02   150.35
    2     7     7     1.08832547    -0.56127763  -109.93995984    -0.56127763    -0.02084663  0.20D-02  0.26D-02   150.35
    2     8     8     1.09497907    -0.57176129  -109.89624217    -0.57176129    -0.02128063  0.28D-02  0.27D-02   150.35
    2     9     9     1.09499104    -0.57150649  -109.89598738    -0.57150649    -0.02144901  0.29D-02  0.27D-02   150.35
    2    10    10     1.09495941    -0.57135713  -109.89583801    -0.57135713    -0.02149868  0.29D-02  0.27D-02   150.35
    2    11    11     1.10640352    -0.56306681  -109.86635029    -0.56306681    -0.02644310  0.37D-02  0.32D-02   150.35
    2    12    12     1.10709191    -0.56272510  -109.86600858    -0.56272510    -0.02694469  0.39D-02  0.33D-02   150.35
    2    13    13     1.10620153    -0.56272152  -109.86600500    -0.56272152    -0.02646909  0.36D-02  0.32D-02   150.35
    2    14    14     1.10648482    -0.56239086  -109.86567434    -0.56239086    -0.02679664  0.37D-02  0.33D-02   150.35
    2    15    15     1.10636089    -0.56227087  -109.86555435    -0.56227087    -0.02680110  0.37D-02  0.33D-02   150.35
    2    16    16     1.10657238    -0.56204878  -109.86533226    -0.56204878    -0.02685130  0.39D-02  0.32D-02   150.35
    2    17    17     1.10641096    -0.56202528  -109.86530876    -0.56202528    -0.02690474  0.37D-02  0.33D-02   150.35
    3     1     1     1.08579669    -0.58381580  -109.96249802    -0.02148135    -0.00146818  0.91D-04  0.24D-03   297.53
    3     2     2     1.08571420    -0.58374182  -109.96242403    -0.02168404    -0.00150815  0.94D-04  0.24D-03   297.53
    3     3     3     1.08562059    -0.58365861  -109.96234082    -0.02166529    -0.00152820  0.89D-04  0.24D-03   297.53
    3     4     4     1.08557043    -0.58361671  -109.96229892    -0.02177585    -0.00155058  0.92D-04  0.24D-03   297.53
    3     5     5     1.08545958    -0.58347768  -109.96215989    -0.02201440    -0.00161541  0.95D-04  0.25D-03   297.53
    3     6     6     1.08540700    -0.58342434  -109.96210655    -0.02212484    -0.00164213  0.98D-04  0.25D-03   297.53
    3     7     7     1.08539213    -0.58339885  -109.96208107    -0.02212123    -0.00164867  0.97D-04  0.25D-03   297.53
    3     8     8     1.09023465    -0.59376092  -109.91824181    -0.02199963    -0.00163344  0.15D-03  0.25D-03   297.53
    3     9     9     1.09018460    -0.59367736  -109.91815824    -0.02217086    -0.00168065  0.15D-03  0.26D-03   297.53
    3    10    10     1.09014462    -0.59362955  -109.91811043    -0.02227242    -0.00170780  0.16D-03  0.26D-03   297.53
    3    11    11     1.09610023    -0.58978438  -109.89306786    -0.02671757    -0.00252288  0.15D-03  0.43D-03   297.53
    3    12    12     1.09614863    -0.58970208  -109.89298556    -0.02697698    -0.00254894  0.16D-03  0.43D-03   297.53
    3    13    13     1.09599202    -0.58963417  -109.89291765    -0.02691265    -0.00263876  0.16D-03  0.44D-03   297.53
    3    14    14     1.09602225    -0.58962422  -109.89290770    -0.02723335    -0.00265854  0.17D-03  0.44D-03   297.53
    3    15    15     1.09584890    -0.58959250  -109.89287598    -0.02732163    -0.00258558  0.16D-03  0.43D-03   297.53
    3    16    16     1.09582148    -0.58944506  -109.89272855    -0.02739629    -0.00270598  0.17D-03  0.45D-03   297.53
    3    17    17     1.09537577    -0.58906214  -109.89234562    -0.02703685    -0.00264999  0.17D-03  0.43D-03   297.53
    4     1     1     1.08873832    -0.58586576  -109.96454797    -0.00204996    -0.00024734  0.15D-04  0.41D-04   446.54
    4     2     2     1.08871921    -0.58585638  -109.96453860    -0.00211457    -0.00025291  0.15D-04  0.41D-04   446.54
    4     3     3     1.08868992    -0.58583028  -109.96451249    -0.00217167    -0.00026140  0.14D-04  0.42D-04   446.54
    4     4     4     1.08867516    -0.58582467  -109.96450688    -0.00220796    -0.00026388  0.15D-04  0.42D-04   446.54
    4     5     5     1.08863495    -0.58579687  -109.96447908    -0.00231919    -0.00027758  0.16D-04  0.44D-04   446.54
    4     6     6     1.08861127    -0.58578752  -109.96446973    -0.00236318    -0.00028169  0.17D-04  0.44D-04   446.54
    4     7     7     1.08859854    -0.58577641  -109.96445862    -0.00237755    -0.00028639  0.16D-04  0.45D-04   446.54
    4     8     8     1.09282505    -0.59597230  -109.92045318    -0.00221138    -0.00029396  0.27D-04  0.45D-04   446.54
    4     9     9     1.09276426    -0.59594861  -109.92042950    -0.00227126    -0.00030679  0.29D-04  0.47D-04   446.54
    4    10    10     1.09275220    -0.59594127  -109.92042215    -0.00231172    -0.00031209  0.29D-04  0.47D-04   446.54
    4    11    11     1.10323649    -0.59369768  -109.89698116    -0.00391330    -0.00058180  0.57D-04  0.81D-04   446.54
    4    12    12     1.10315719    -0.59367407  -109.89695756    -0.00397199    -0.00058659  0.58D-04  0.82D-04   446.54
    4    13    13     1.10306116    -0.59363311  -109.89691660    -0.00399895    -0.00059784  0.56D-04  0.85D-04   446.54
    4    14    14     1.10303624    -0.59360618  -109.89688966    -0.00398196    -0.00061703  0.60D-04  0.86D-04   446.54
    4    15    15     1.10296767    -0.59358940  -109.89687288    -0.00399690    -0.00061202  0.60D-04  0.85D-04   446.54
    4    16    16     1.10290614    -0.59356270  -109.89684618    -0.00411764    -0.00062230  0.57D-04  0.89D-04   446.54
    4    17    17     1.10236390    -0.59327257  -109.89655605    -0.00421043    -0.00072348  0.69D-04  0.98D-04   446.54
    5     1     1     1.09022280    -0.58618243  -109.96486464    -0.00031667    -0.00004695  0.28D-05  0.83D-05   594.89
    5     2     2     1.09020714    -0.58617978  -109.96486199    -0.00032340    -0.00004820  0.30D-05  0.84D-05   594.89
    5     3     3     1.09018957    -0.58616947  -109.96485168    -0.00033920    -0.00005192  0.29D-05  0.90D-05   594.89
    5     4     4     1.09018216    -0.58616775  -109.96484996    -0.00034308    -0.00005242  0.31D-05  0.90D-05   594.89
    5     5     5     1.09015818    -0.58615841  -109.96484063    -0.00036154    -0.00005612  0.34D-05  0.95D-05   594.89
    5     6     6     1.09014715    -0.58615544  -109.96483765    -0.00036792    -0.00005717  0.36D-05  0.95D-05   594.89
    5     7     7     1.09013746    -0.58615096  -109.96483317    -0.00037455    -0.00005916  0.35D-05  0.99D-05   594.89
    5     8     8     1.09444642    -0.59634661  -109.92082749    -0.00037431    -0.00005452  0.36D-05  0.94D-05   594.89
    5     9     9     1.09442602    -0.59633991  -109.92082079    -0.00039129    -0.00005731  0.38D-05  0.97D-05   594.89
    5    10    10     1.09441548    -0.59633788  -109.92081876    -0.00039661    -0.00005843  0.39D-05  0.99D-05   594.89
    5    11    11     1.10567532    -0.59447860  -109.89776208    -0.00078092    -0.00011832  0.52D-05  0.20D-04   594.89
    5    12    12     1.10566876    -0.59447594  -109.89775942    -0.00080187    -0.00011715  0.55D-05  0.18D-04   594.89
    5    13    13     1.10563954    -0.59445456  -109.89773804    -0.00082145    -0.00012985  0.56D-05  0.22D-04   594.89
    5    14    14     1.10558600    -0.59445187  -109.89773536    -0.00084569    -0.00012855  0.60D-05  0.20D-04   594.89
    5    15    15     1.10559326    -0.59444417  -109.89772765    -0.00085476    -0.00013070  0.61D-05  0.20D-04   594.89
    5    16    16     1.10560081    -0.59443022  -109.89771370    -0.00086752    -0.00014116  0.63D-05  0.23D-04   594.89
    5    17    17     1.10536508    -0.59433216  -109.89761564    -0.00105959    -0.00017765  0.87D-05  0.26D-04   594.89
    6     1     1     1.09026587    -0.58624946  -109.96493168    -0.00006703    -0.00001290  0.75D-06  0.21D-05   742.72
    6     2     2     1.09025503    -0.58624891  -109.96493112    -0.00006913    -0.00001309  0.77D-06  0.21D-05   742.72
    6     3     3     1.09022678    -0.58624534  -109.96492755    -0.00007586    -0.00001469  0.84D-06  0.23D-05   742.72
    6     4     4     1.09021982    -0.58624513  -109.96492734    -0.00007738    -0.00001457  0.84D-06  0.22D-05   742.72
    6     5     5     1.09019384    -0.58624199  -109.96492420    -0.00008357    -0.00001584  0.93D-06  0.23D-05   742.72
    6     6     6     1.09018219    -0.58624129  -109.96492350    -0.00008586    -0.00001606  0.95D-06  0.24D-05   742.72
    6     7     7     1.09017406    -0.58623931  -109.96492152    -0.00008835    -0.00001728  0.10D-05  0.26D-05   742.72
    6     8     8     1.09449944    -0.59642747  -109.92090835    -0.00008086    -0.00001569  0.16D-05  0.23D-05   742.72
    6     9     9     1.09447772    -0.59642554  -109.92090642    -0.00008563    -0.00001664  0.18D-05  0.24D-05   742.72
    6    10    10     1.09447194    -0.59642469  -109.92090557    -0.00008681    -0.00001722  0.18D-05  0.25D-05   742.72
    6    11    11     1.10573043    -0.59464117  -109.89792465    -0.00016257    -0.00003267  0.33D-05  0.46D-05   742.72
    6    12    12     1.10574133    -0.59463855  -109.89792203    -0.00016261    -0.00003530  0.32D-05  0.54D-05   742.72
    6    13    13     1.10564165    -0.59463221  -109.89791570    -0.00017765    -0.00003765  0.38D-05  0.54D-05   742.72
    6    14    14     1.10562666    -0.59462938  -109.89791286    -0.00017751    -0.00003902  0.38D-05  0.56D-05   742.72
    6    15    15     1.10566791    -0.59462823  -109.89791171    -0.00018406    -0.00004124  0.36D-05  0.64D-05   742.72
    6    16    16     1.10560565    -0.59461731  -109.89790079    -0.00018709    -0.00004740  0.42D-05  0.77D-05   742.72
    6    17    17     1.10527491    -0.59458791  -109.89787139    -0.00025574    -0.00005561  0.64D-05  0.70D-05   742.72
    7     1     1     1.09041730    -0.58626476  -109.96494698    -0.00001530    -0.00000371  0.30D-06  0.65D-06   892.01
    7     2     2     1.09041784    -0.58626469  -109.96494690    -0.00001578    -0.00000370  0.32D-06  0.63D-06   892.01
    7     3     3     1.09040200    -0.58626333  -109.96494554    -0.00001799    -0.00000439  0.36D-06  0.75D-06   892.01
    7     4     4     1.09040628    -0.58626332  -109.96494553    -0.00001819    -0.00000435  0.38D-06  0.73D-06   892.01
    7     5     5     1.09039674    -0.58626215  -109.96494436    -0.00002016    -0.00000481  0.45D-06  0.77D-06   892.01
    7     6     6     1.09039656    -0.58626198  -109.96494419    -0.00002068    -0.00000489  0.47D-06  0.76D-06   892.01
    7     7     7     1.09038019    -0.58626109  -109.96494330    -0.00002177    -0.00000540  0.49D-06  0.88D-06   892.01
    7     8     8     1.09472395    -0.59644717  -109.92092805    -0.00001970    -0.00000468  0.70D-06  0.72D-06   892.01
    7     9     9     1.09471565    -0.59644659  -109.92092748    -0.00002106    -0.00000499  0.80D-06  0.74D-06   892.01
    7    10    10     1.09470691    -0.59644620  -109.92092708    -0.00002151    -0.00000523  0.80D-06  0.79D-06   892.01
    7    11    11     1.10639266    -0.59468053  -109.89796402    -0.00003937    -0.00000914  0.12D-05  0.13D-05   892.01
    7    12    12     1.10636094    -0.59467919  -109.89796267    -0.00004064    -0.00000982  0.11D-05  0.15D-05   892.01
    7    13    13     1.10633875    -0.59467698  -109.89796047    -0.00004477    -0.00001096  0.13D-05  0.16D-05   892.01
    7    14    14     1.10630309    -0.59467533  -109.89795882    -0.00004595    -0.00001187  0.12D-05  0.19D-05   892.01
    7    15    15     1.10627055    -0.59467461  -109.89795809    -0.00004638    -0.00001203  0.11D-05  0.20D-05   892.01
    7    16    16     1.10622187    -0.59467025  -109.89795373    -0.00005293    -0.00001396  0.12D-05  0.22D-05   892.01
    7    17    17     1.10617177    -0.59465805  -109.89794153    -0.00007015    -0.00001907  0.27D-05  0.24D-05   892.01
    8     1     1     1.09054290    -0.58626916  -109.96495137    -0.00000440    -0.00000105  0.86D-07  0.18D-06  1041.17
    8     2     2     1.09054228    -0.58626913  -109.96495134    -0.00000444    -0.00000107  0.93D-07  0.18D-06  1041.17
    8     3     3     1.09053554    -0.58626863  -109.96495084    -0.00000530    -0.00000131  0.10D-06  0.22D-06  1041.17
    8     4     4     1.09053622    -0.58626860  -109.96495081    -0.00000528    -0.00000132  0.10D-06  0.23D-06  1041.17
    8     5     5     1.09053268    -0.58626811  -109.96495032    -0.00000596    -0.00000152  0.13D-06  0.25D-06  1041.17
    8     6     6     1.09053090    -0.58626805  -109.96495026    -0.00000607    -0.00000156  0.13D-06  0.26D-06  1041.17
    8     7     7     1.09052501    -0.58626771  -109.96494992    -0.00000662    -0.00000171  0.14D-06  0.28D-06  1041.17
    8     8     8     1.09485497    -0.59645277  -109.92093366    -0.00000560    -0.00000142  0.16D-06  0.22D-06  1041.17
    8     9     9     1.09484968    -0.59645258  -109.92093347    -0.00000599    -0.00000152  0.18D-06  0.24D-06  1041.17
    8    10    10     1.09484739    -0.59645242  -109.92093330    -0.00000622    -0.00000159  0.18D-06  0.25D-06  1041.17
    8    11    11     1.10656596    -0.59469184  -109.89797532    -0.00001130    -0.00000257  0.20D-06  0.40D-06  1041.17
    8    12    12     1.10656758    -0.59469134  -109.89797483    -0.00001216    -0.00000277  0.22D-06  0.42D-06  1041.17
    8    13    13     1.10653745    -0.59469050  -109.89797398    -0.00001352    -0.00000323  0.25D-06  0.50D-06  1041.17
    8    14    14     1.10653337    -0.59468978  -109.89797326    -0.00001445    -0.00000361  0.26D-06  0.57D-06  1041.17
    8    15    15     1.10654268    -0.59468973  -109.89797321    -0.00001512    -0.00000357  0.27D-06  0.55D-06  1041.17
    8    16    16     1.10651777    -0.59468812  -109.89797160    -0.00001788    -0.00000435  0.33D-06  0.68D-06  1041.17
    8    17    17     1.10641159    -0.59468315  -109.89796663    -0.00002510    -0.00000656  0.55D-06  0.88D-06  1041.17
    9     1     1     1.09055815    -0.58627053  -109.96495274    -0.00000137    -0.00000034  0.22D-07  0.55D-07  1189.12
    9     2     2     1.09055729    -0.58627051  -109.96495273    -0.00000138    -0.00000034  0.23D-07  0.56D-07  1189.12
    9     3     3     1.09054899    -0.58627033  -109.96495255    -0.00000171    -0.00000043  0.29D-07  0.69D-07  1189.12
    9     4     4     1.09054830    -0.58627032  -109.96495253    -0.00000172    -0.00000043  0.30D-07  0.69D-07  1189.12
    9     5     5     1.09054329    -0.58627012  -109.96495233    -0.00000201    -0.00000052  0.38D-07  0.78D-07  1189.12
    9     6     6     1.09054112    -0.58627010  -109.96495231    -0.00000205    -0.00000053  0.40D-07  0.79D-07  1189.12
    9     7     7     1.09053715    -0.58626997  -109.96495218    -0.00000226    -0.00000060  0.42D-07  0.93D-07  1189.12
    9     8     8     1.09486455    -0.59645463  -109.92093551    -0.00000185    -0.00000048  0.49D-07  0.75D-07  1189.12
    9     9     9     1.09486005    -0.59645457  -109.92093545    -0.00000198    -0.00000052  0.54D-07  0.80D-07  1189.12
    9    10    10     1.09485876    -0.59645451  -109.92093538    -0.00000208    -0.00000055  0.57D-07  0.85D-07  1189.12
    9    11    11     1.10664396    -0.59469526  -109.89797875    -0.00000343    -0.00000084  0.74D-07  0.13D-06  1189.12
    9    12    12     1.10664048    -0.59469506  -109.89797855    -0.00000372    -0.00000095  0.80D-07  0.15D-06  1189.12
    9    13    13     1.10661708    -0.59469479  -109.89797827    -0.00000429    -0.00000108  0.10D-06  0.16D-06  1189.12
    9    14    14     1.10660030    -0.59469449  -109.89797797    -0.00000471    -0.00000126  0.13D-06  0.19D-06  1189.12
    9    15    15     1.10661078    -0.59469449  -109.89797797    -0.00000476    -0.00000129  0.10D-06  0.21D-06  1189.12
    9    16    16     1.10659072    -0.59469379  -109.89797727    -0.00000566    -0.00000172  0.11D-06  0.31D-06  1189.12
    9    17    17     1.10650553    -0.59469202  -109.89797550    -0.00000887    -0.00000232  0.23D-06  0.30D-06  1189.12
   10     1     1     1.09057617    -0.58627093  -109.96495314    -0.00000040    -0.00000011  0.52D-08  0.22D-07  1337.87
   10     2     2     1.09057603    -0.58627093  -109.96495314    -0.00000041    -0.00000011  0.60D-08  0.21D-07  1337.87
   10     3     3     1.09057075    -0.58627086  -109.96495307    -0.00000053    -0.00000015  0.77D-08  0.27D-07  1337.87
   10     4     4     1.09057092    -0.58627086  -109.96495307    -0.00000054    -0.00000015  0.89D-08  0.26D-07  1337.87
   10     5     5     1.09056858    -0.58627077  -109.96495299    -0.00000066    -0.00000018  0.12D-07  0.31D-07  1337.87
   10     6     6     1.09056784    -0.58627077  -109.96495298    -0.00000067    -0.00000018  0.13D-07  0.30D-07  1337.87
   10     7     7     1.09056347    -0.58627071  -109.96495292    -0.00000075    -0.00000022  0.14D-07  0.37D-07  1337.87
   10     8     8     1.09489144    -0.59645523  -109.92093612    -0.00000061    -0.00000016  0.20D-07  0.27D-07  1337.87
   10     9     9     1.09488905    -0.59645522  -109.92093610    -0.00000065    -0.00000017  0.23D-07  0.28D-07  1337.87
   10    10    10     1.09488754    -0.59645519  -109.92093607    -0.00000069    -0.00000019  0.24D-07  0.31D-07  1337.87
   10    11    11     1.10674318    -0.59469626  -109.89797974    -0.00000100    -0.00000027  0.34D-07  0.41D-07  1337.87
   10    12    12     1.10673867    -0.59469617  -109.89797965    -0.00000110    -0.00000031  0.35D-07  0.52D-07  1337.87
   10    13    13     1.10673182    -0.59469609  -109.89797957    -0.00000130    -0.00000035  0.47D-07  0.53D-07  1337.87
   10    14    14     1.10672133    -0.59469597  -109.89797945    -0.00000148    -0.00000042  0.47D-07  0.67D-07  1337.87
   10    15    15     1.10671406    -0.59469592  -109.89797941    -0.00000144    -0.00000046  0.31D-07  0.88D-07  1337.87
   10    16    16     1.10669270    -0.59469559  -109.89797907    -0.00000181    -0.00000062  0.35D-07  0.12D-06  1337.87
   10    17    17     1.10668379    -0.59469494  -109.89797842    -0.00000292    -0.00000088  0.13D-06  0.11D-06  1337.87
   11     1     1     1.09059140    -0.58627106  -109.96495327    -0.00000013    -0.00000004  0.30D-08  0.71D-08  1489.77
   11     2     2     1.09059157    -0.58627106  -109.96495327    -0.00000013    -0.00000004  0.35D-08  0.68D-08  1489.77
   11     3     3     1.09058893    -0.58627103  -109.96495324    -0.00000017    -0.00000005  0.41D-08  0.92D-08  1489.77
   11     4     4     1.09058923    -0.58627103  -109.96495324    -0.00000018    -0.00000005  0.46D-08  0.90D-08  1489.77
   11     5     5     1.09058779    -0.58627100  -109.96495321    -0.00000022    -0.00000007  0.69D-08  0.11D-07  1489.77
   11     6     6     1.09058828    -0.58627100  -109.96495321    -0.00000023    -0.00000007  0.64D-08  0.11D-07  1489.77
   11     7     7     1.09058538    -0.58627097  -109.96495318    -0.00000026    -0.00000008  0.72D-08  0.13D-07  1489.77
   11     8     8     1.09490914    -0.59645543  -109.92093631    -0.00000020    -0.00000006  0.85D-08  0.87D-08  1489.77
   11     9     9     1.09490765    -0.59645542  -109.92093631    -0.00000021    -0.00000006  0.10D-07  0.89D-08  1489.77
   11    10    10     1.09490696    -0.59645541  -109.92093629    -0.00000022    -0.00000007  0.98D-08  0.10D-07  1489.77
   11    11    11     1.10676062    -0.59469657  -109.89798006    -0.00000031    -0.00000008  0.73D-08  0.13D-07  1489.77
   11    12    12     1.10675931    -0.59469654  -109.89798002    -0.00000037    -0.00000010  0.85D-08  0.16D-07  1489.77
   11    13    13     1.10675190    -0.59469651  -109.89797999    -0.00000042    -0.00000012  0.99D-08  0.18D-07  1489.77
   11    14    14     1.10674953    -0.59469646  -109.89797994    -0.00000049    -0.00000015  0.88D-08  0.27D-07  1489.77
   11    15    15     1.10675253    -0.59469643  -109.89797991    -0.00000051    -0.00000016  0.10D-07  0.27D-07  1489.77
   11    16    16     1.10674489    -0.59469630  -109.89797978    -0.00000070    -0.00000022  0.16D-07  0.38D-07  1489.77
   11    17    17     1.10671052    -0.59469605  -109.89797953    -0.00000111    -0.00000033  0.34D-07  0.44D-07  1489.77
   12     1     1     1.09059648    -0.58627110  -109.96495331    -0.00000005    -0.00000001  0.66D-09  0.24D-08  1637.96
   12     2     2     1.09059646    -0.58627110  -109.96495331    -0.00000005    -0.00000001  0.72D-09  0.24D-08  1637.96
   12     3     3     1.09059431    -0.58627109  -109.96495330    -0.00000006    -0.00000002  0.96D-09  0.33D-08  1637.96
   12     4     4     1.09059427    -0.58627109  -109.96495330    -0.00000006    -0.00000002  0.10D-08  0.34D-08  1637.96
   12     5     5     1.09059276    -0.58627108  -109.96495329    -0.00000008    -0.00000003  0.17D-08  0.41D-08  1637.96
   12     6     6     1.09059312    -0.58627108  -109.96495329    -0.00000008    -0.00000003  0.16D-08  0.42D-08  1637.96
   12     7     7     1.09059129    -0.58627107  -109.96495328    -0.00000010    -0.00000003  0.17D-08  0.53D-08  1637.96
   12     8     8     1.09491389    -0.59645550  -109.92093638    -0.00000007    -0.00000002  0.18D-08  0.36D-08  1637.96
   12     9     9     1.09491298    -0.59645550  -109.92093638    -0.00000007    -0.00000002  0.20D-08  0.36D-08  1637.96
   12    10    10     1.09491250    -0.59645550  -109.92093638    -0.00000008    -0.00000002  0.21D-08  0.42D-08  1637.96
   12    11    11     1.10677800    -0.59469668  -109.89798016    -0.00000011    -0.00000003  0.22D-08  0.47D-08  1637.96
   12    12    12     1.10677541    -0.59469667  -109.89798015    -0.00000013    -0.00000004  0.29D-08  0.60D-08  1637.96
   12    13    13     1.10677183    -0.59469666  -109.89798014    -0.00000015    -0.00000004  0.33D-08  0.66D-08  1637.96
   12    14    14     1.10676411    -0.59469663  -109.89798011    -0.00000017    -0.00000006  0.42D-08  0.11D-07  1637.96
   12    15    15     1.10676443    -0.59469663  -109.89798011    -0.00000019    -0.00000006  0.49D-08  0.11D-07  1637.96
   12    16    16     1.10675902    -0.59469656  -109.89798004    -0.00000027    -0.00000010  0.49D-08  0.20D-07  1637.96
   12    17    17     1.10674279    -0.59469648  -109.89797996    -0.00000043    -0.00000012  0.11D-07  0.17D-07  1637.96
   13     1     1     1.09059650    -0.58627110  -109.96495331    -0.00000000    -0.00000001  0.67D-09  0.24D-08  1676.83
   13     2     2     1.09059646    -0.58627110  -109.96495331    -0.00000000    -0.00000001  0.72D-09  0.24D-08  1676.83
   13     3     3     1.09059431    -0.58627109  -109.96495330    -0.00000000    -0.00000002  0.95D-09  0.33D-08  1676.83
   13     4     4     1.09059427    -0.58627109  -109.96495330    -0.00000000    -0.00000002  0.10D-08  0.34D-08  1676.83
   13     5     5     1.09059276    -0.58627108  -109.96495329    -0.00000000    -0.00000003  0.17D-08  0.41D-08  1676.83
   13     6     6     1.09059312    -0.58627108  -109.96495329    -0.00000000    -0.00000003  0.16D-08  0.42D-08  1676.83
   13     7     7     1.09059129    -0.58627107  -109.96495328    -0.00000000    -0.00000003  0.17D-08  0.53D-08  1676.83
   13     8     8     1.09491389    -0.59645550  -109.92093638     0.00000000    -0.00000002  0.18D-08  0.36D-08  1676.83
   13     9     9     1.09491298    -0.59645550  -109.92093638    -0.00000000    -0.00000002  0.20D-08  0.36D-08  1676.83
   13    10    10     1.09491250    -0.59645550  -109.92093638    -0.00000000    -0.00000002  0.21D-08  0.42D-08  1676.83
   13    11    11     1.10680172    -0.59469672  -109.89798021    -0.00000004    -0.00000001  0.38D-09  0.21D-08  1676.83
   13    12    12     1.10680231    -0.59469672  -109.89798020    -0.00000006    -0.00000001  0.48D-09  0.19D-08  1676.83
   13    13    13     1.10679835    -0.59469672  -109.89798020    -0.00000006    -0.00000002  0.87D-09  0.25D-08  1676.83
   13    14    14     1.10679984    -0.59469671  -109.89798019    -0.00000008    -0.00000002  0.11D-08  0.39D-08  1676.83
   13    15    15     1.10677801    -0.59469668  -109.89798016    -0.00000006    -0.00000003  0.22D-08  0.47D-08  1676.83
   13    16    16     1.10677540    -0.59469667  -109.89798015    -0.00000010    -0.00000004  0.29D-08  0.60D-08  1676.83
   13    17    17     1.10677184    -0.59469666  -109.89798014    -0.00000018    -0.00000004  0.33D-08  0.66D-08  1676.83


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   3.4%  83.2%

 Initialization:   0.0%
 Other:           13.1%

 Total CPU:     1676.8 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222//222           0.9575642   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000  -0.0000000  -0.0003494   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2//222/222          -0.0000000   0.9512751   0.0000000  -0.0000000   0.0000000   0.0000000   0.1095672  -0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0002833  -0.0000000  -0.0002046  -0.0000000
 22///22222           0.0003120  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000   0.9502994  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 22//22/222          -0.0000000  -0.0000000  -0.0274185  -0.0000000   0.8560340   0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.4272138  -0.0000000   0.0000000   0.0002686   0.0000000   0.0000000   0.0000000   0.0001597
 22/2/2/222          -0.0000000  -0.0000000  -0.0000000  -0.0364450   0.0000000   0.8556972  -0.0000000  -0.0000000  -0.4272141
                     -0.0000000  -0.0001342   0.0000000  -0.0000000   0.0000000  -0.0002822   0.0000000   0.0000000
 22/22//222          -0.0000000   0.0489998   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4254237   0.8544249  -0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000915  -0.0000000  -0.0001268   0.0000000
 222//2/222           0.0000000  -0.0979998   0.0000000   0.0000000  -0.0000000   0.0000000   0.8508485   0.4272143  -0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000   0.0001829  -0.0000000   0.0002531   0.0000000
 222/2//222          -0.0000000  -0.0000000   0.0000000   0.8376358  -0.0000000  -0.1786364  -0.0000000   0.0000000  -0.4272123
                     -0.0000000  -0.0002397  -0.0000000  -0.0000000   0.0000000   0.0002006   0.0000000   0.0000000
 2222///222           0.0000000   0.0000000   0.8219962   0.0000000   0.2405562   0.0000000   0.0000000  -0.0000000   0.0000000
                      0.4272134   0.0000000  -0.0000000  -0.0000875  -0.0000000   0.0000000   0.0000000   0.0003002
 2///222222          -0.0000000  -0.0000000  -0.0002673  -0.0000000  -0.0000778  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0001957   0.0000000   0.0000000  -0.2378847   0.0000000   0.0000000  -0.0000000   0.8160166
 222///2222           0.0000000  -0.0003097  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000355   0.0000000  -0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000   0.7704926   0.0000000  -0.5562558  -0.0000000
 2/2/2/2222          -0.0000000   0.0000000   0.0000000  -0.0000116  -0.0000000   0.0002790   0.0000000  -0.0000000   0.0001959
                      0.0000000   0.3649760  -0.0000000   0.0000000   0.0000000   0.7676297   0.0000000   0.0000000
 2/2/22/222           0.0000000  -0.0000000  -0.0000000   0.4625679  -0.0000000   0.3909008   0.0000000   0.0000000   0.7399544
                      0.0000000  -0.0002159  -0.0000000   0.0000000  -0.0000000  -0.0000471  -0.0000000  -0.0000000
 2/22/2/222           0.0000000   0.0000000  -0.4904096  -0.0000000   0.3553460   0.0000000   0.0000000   0.0000000  -0.0000000
                      0.7399542   0.0000000  -0.0000000   0.0002056  -0.0000000  -0.0000000   0.0000000  -0.0000811
 2/22//2222           0.0000000   0.0000000   0.0000089  -0.0000000  -0.0002790   0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0001959  -0.0000000   0.0000000   0.7306257  -0.0000000  -0.0000000   0.0000000   0.4343386
 2//22/2222           0.0000000   0.0000318  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0002775   0.0001959  -0.0000000
                      0.0000000  -0.0000000  -0.0000000  -0.0000000   0.4975286   0.0000000   0.6891674   0.0000000
 2//2/22222          -0.0000000   0.0000000   0.0000000   0.0002728  -0.0000000  -0.0000578   0.0000000  -0.0000000   0.0001958
                      0.0000000   0.6520100  -0.0000000   0.0000000   0.0000000  -0.5453010   0.0000000   0.0000000
 22/2//2222           0.0000000  -0.0000000  -0.0000000   0.0001503  -0.0000000   0.0001263  -0.0000000   0.0000000  -0.0003392
                      0.0000000   0.5871497  -0.0000000  -0.0000000  -0.0000000   0.1283754  -0.0000000  -0.0000000
 22//2/2222           0.0000000  -0.0000000   0.0001599   0.0000000  -0.0001148   0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0003388  -0.0000000   0.0000000   0.5591681  -0.0000000  -0.0000000   0.0000000  -0.2203647
 2/2//22222           0.0000000  -0.0000161   0.0000000   0.0000000   0.0000000   0.0000000   0.0001380   0.0003918  -0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2487514  -0.0000000  -0.3445557  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957564    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000310    0.000000   -0.000000
 2           0.000000    0.852893    0.000000   -0.000000   -0.435318    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000309    0.000000   -0.000000    0.000000   -0.000000   -0.000024   -0.000000
 3          -0.045409    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956487    0.000000    0.000000    0.000000
            -0.000000   -0.000044    0.000000   -0.000000   -0.000000   -0.000000   -0.000306
 4          -0.000000   -0.000000    0.804425    0.519452    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000005    0.000310    0.000000    0.000000   -0.000000
 5           0.956488    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.045409   -0.000000   -0.000000   -0.000000
             0.000000   -0.000306    0.000000   -0.000000   -0.000000   -0.000000    0.000045
 6           0.000000    0.000000   -0.519452    0.804426    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000310    0.000005   -0.000000    0.000000   -0.000000
 7           0.000000    0.435319    0.000000   -0.000000    0.852895   -0.000000    0.000000    0.000000    0.000001    0.000000
             0.000025   -0.000000   -0.000000    0.000000   -0.000000   -0.000309    0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000002   -0.000000   -0.000000    0.000000    0.955627   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000001   -0.000001   -0.000000   -0.000000    0.000000    0.955627   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 10         -0.000001   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000000    0.955627
             0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 11          0.000000    0.000000   -0.000171   -0.000305    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.429909    0.847721    0.000000   -0.000000    0.000000
 12          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000349   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.950500   -0.000000   -0.000000
 13          0.000303   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000174    0.000000    0.000000   -0.000000
             0.000000    0.719000    0.000000    0.000000   -0.000000   -0.000000   -0.621685
 14         -0.000000    0.000337   -0.000000    0.000000    0.000092    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.649477   -0.000000    0.000000    0.000000   -0.000000    0.693998    0.000000
 15         -0.000000   -0.000000    0.000305   -0.000171    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.847730   -0.429913    0.000000    0.000000    0.000000
 16          0.000000   -0.000093    0.000000    0.000000    0.000337   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.694007    0.000000    0.000000   -0.000000    0.000000    0.649483   -0.000000
 17          0.000174   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000303   -0.000000    0.000000   -0.000000
            -0.000000    0.621693   -0.000000    0.000000    0.000000    0.000000    0.719009

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957564   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000021    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.957564    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000016   -0.000000   -0.000014   -0.000000
 3          -0.000000    0.000000    0.957565    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000011   -0.000000    0.000000   -0.000000    0.000018
 4          -0.000000   -0.000000    0.000000    0.957565   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000019   -0.000000   -0.000000    0.000000    0.000010    0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.957565    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000018    0.000000    0.000000    0.000000    0.000011
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957565   -0.000000   -0.000000   -0.000001    0.000000
            -0.000010   -0.000000    0.000000    0.000000   -0.000019    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.957566    0.000001    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000014   -0.000000    0.000015    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000001    0.955627    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000001    0.000000    0.000000    0.955627    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.955627
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 11         -0.000000    0.000000   -0.000000   -0.000019   -0.000000   -0.000010    0.000000   -0.000000    0.000000    0.000000
             0.950501    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 12         -0.000021   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.950501    0.000000   -0.000000    0.000000    0.000000    0.000000
 13          0.000000   -0.000000   -0.000011   -0.000000    0.000018    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.950502   -0.000000   -0.000000    0.000000    0.000000
 14          0.000000    0.000016   -0.000000    0.000000    0.000000    0.000000    0.000014   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.950502    0.000000   -0.000001   -0.000000
 15         -0.000000   -0.000000    0.000000    0.000010    0.000000   -0.000019   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.950511    0.000000   -0.000000
 16         -0.000000   -0.000014   -0.000000    0.000000    0.000000    0.000000    0.000015   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000001    0.000000    0.950512   -0.000000
 17         -0.000000   -0.000000    0.000018    0.000000    0.000011    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.950514


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95756361 (fixed)   0.95756431 (relaxed)   0.95756366 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685357
 Singles      0.01526572   -0.07712233   -0.07892601
 Pairs        0.07533091    0.00000000   -0.04049152
 Total        1.09059798   -0.07712233   -0.58627110
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55101294
 One electron energy                 -193.35713566
 Two electron energy                   83.39218234
 Virial quotient                       -2.64650476
 Correlation energy                    -0.58627111
 !MRCI STATE 1.1 Energy              -109.964953314538

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806829 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806743 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806829 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357468 (Pople, fixed reference)
 Cluster corrected energies          -110.01357383 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357468 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.85289310 (fixed)   0.95756433 (relaxed)   0.95756368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685345
 Singles      0.01526590   -0.07712249   -0.07892606
 Pairs        0.07533068    0.00000000   -0.04049159
 Total        1.09059793   -0.07712249   -0.58627110
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55098314
 One electron energy                 -193.35710110
 Two electron energy                   83.39214779
 Virial quotient                       -2.64650665
 Correlation energy                    -0.58627111
 !MRCI STATE 2.1 Energy              -109.964953314305

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806826 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806740 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806826 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357465 (Pople, fixed reference)
 Cluster corrected energies          -110.01357380 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357465 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95648730 (fixed)   0.95756527 (relaxed)   0.95756462 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46695562
 Singles      0.01526545   -0.07712166   -0.07892596
 Pairs        0.07532898    0.00010961   -0.04038952
 Total        1.09059578   -0.07701206   -0.58627109
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55100447
 One electron energy                 -193.35713122
 Two electron energy                   83.39217792
 Virial quotient                       -2.64650529
 Correlation energy                    -0.58627110
 !MRCI STATE 3.1 Energy              -109.964953303863

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806699 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806613 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806699 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357341 (Pople, fixed reference)
 Cluster corrected energies          -110.01357256 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357341 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.80442515 (fixed)   0.95756529 (relaxed)   0.95756464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685517
 Singles      0.01526554   -0.07712163   -0.07892597
 Pairs        0.07532885    0.00000000   -0.04048996
 Total        1.09059574   -0.07712163   -0.58627109
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55098078
 One electron energy                 -193.35710395
 Two electron energy                   83.39215064
 Virial quotient                       -2.64650680
 Correlation energy                    -0.58627110
 !MRCI STATE 4.1 Energy              -109.964953303664

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806697 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806610 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806697 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357338 (Pople, fixed reference)
 Cluster corrected energies          -110.01357254 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357338 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95648798 (fixed)   0.95756595 (relaxed)   0.95756530 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46684195
 Singles      0.01526558   -0.07712099   -0.07892593
 Pairs        0.07532730   -0.00001574   -0.04050319
 Total        1.09059424   -0.07713673   -0.58627108
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55091346
 One electron energy                 -193.35703276
 Two electron energy                   83.39207947
 Virial quotient                       -2.64651109
 Correlation energy                    -0.58627108
 !MRCI STATE 5.1 Energy              -109.964953288943

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806607 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806521 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806607 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357251 (Pople, fixed reference)
 Cluster corrected energies          -110.01357166 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357251 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.80442559 (fixed)   0.95756579 (relaxed)   0.95756514 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685636
 Singles      0.01526542   -0.07712084   -0.07892586
 Pairs        0.07532782   -0.00000000   -0.04048886
 Total        1.09059460   -0.07712085   -0.58627108
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55093440
 One electron energy                 -193.35705818
 Two electron energy                   83.39210490
 Virial quotient                       -2.64650976
 Correlation energy                    -0.58627109
 !MRCI STATE 6.1 Energy              -109.964953288096

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806628 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806542 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806628 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357271 (Pople, fixed reference)
 Cluster corrected energies          -110.01357187 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357271 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85289519 (fixed)   0.95756659 (relaxed)   0.95756595 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685758
 Singles      0.01526506   -0.07712036   -0.07892582
 Pairs        0.07532636    0.00000000   -0.04048767
 Total        1.09059277   -0.07712036   -0.58627107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55096828
 One electron energy                 -193.35710332
 Two electron energy                   83.39215004
 Virial quotient                       -2.64650760
 Correlation energy                    -0.58627108
 !MRCI STATE 7.1 Energy              -109.964953278522

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806520 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806433 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806520 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357165 (Pople, fixed reference)
 Cluster corrected energies          -110.01357081 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357165 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95562668 (fixed)   0.95567454 (relaxed)   0.95562668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010017    0.00000000   -0.46883734
 Singles      0.01885454   -0.08312731   -0.08618753
 Pairs        0.07606886   -0.00000000   -0.04143064
 Total        1.09502356   -0.08312731   -0.59645550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32448088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53023006
 One electron energy                 -193.30182508
 Two electron energy                   83.38088870
 Virial quotient                       -2.64676926
 Correlation energy                    -0.59645550
 !MRCI STATE 8.1 Energy              -109.920936382681

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97761371 (Davidson, fixed reference)
 Cluster corrected energies          -109.97754829 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97761371 (Davidson, rotated reference)

 Cluster corrected energies          -109.97298825 (Pople, fixed reference)
 Cluster corrected energies          -109.97292397 (Pople, relaxed reference)
 Cluster corrected energies          -109.97298825 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95562708 (fixed)   0.95567494 (relaxed)   0.95562708 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010016    0.00000000   -0.46883745
 Singles      0.01885479   -0.08312762   -0.08618771
 Pairs        0.07606769   -0.00000000   -0.04143034
 Total        1.09502265   -0.08312762   -0.59645550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32448088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53019898
 One electron energy                 -193.30179304
 Two electron energy                   83.38085666
 Virial quotient                       -2.64677124
 Correlation energy                    -0.59645550
 !MRCI STATE 9.1 Energy              -109.920936381222

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97761316 (Davidson, fixed reference)
 Cluster corrected energies          -109.97754775 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97761316 (Davidson, rotated reference)

 Cluster corrected energies          -109.97298771 (Pople, fixed reference)
 Cluster corrected energies          -109.97292343 (Pople, relaxed reference)
 Cluster corrected energies          -109.97298771 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95562729 (fixed)   0.95567515 (relaxed)   0.95562729 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010016   -0.00000000   -0.46883850
 Singles      0.01885428   -0.08312700   -0.08618748
 Pairs        0.07606772    0.00000031   -0.04142951
 Total        1.09502216   -0.08312669   -0.59645550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32448088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53024727
 One electron energy                 -193.30185543
 Two electron energy                   83.38091906
 Virial quotient                       -2.64676817
 Correlation energy                    -0.59645550
 !MRCI STATE 10.1 Energy             -109.920936375231

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97761287 (Davidson, fixed reference)
 Cluster corrected energies          -109.97754745 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97761287 (Davidson, rotated reference)

 Cluster corrected energies          -109.97298742 (Pople, fixed reference)
 Cluster corrected energies          -109.97292314 (Pople, relaxed reference)
 Cluster corrected energies          -109.97298742 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.84772060 (fixed)   0.95052838 (relaxed)   0.95050079 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42171056
 Singles      0.03285895   -0.12795418   -0.13325797
 Pairs        0.07394897   -0.00000000   -0.03972820
 Total        1.10686596   -0.12795418   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36064503
 One electron energy                 -190.59001858
 Two electron energy                   80.69203838
 Virial quotient                       -2.72289950
 Correlation energy                    -0.59469671
 !MRCI STATE 11.1 Energy             -109.897980205419

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153304 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149483 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153304 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685949 (Pople, fixed reference)
 Cluster corrected energies          -109.95682130 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685949 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95050047 (fixed)   0.95052812 (relaxed)   0.95050053 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42171002
 Singles      0.03285774   -0.12795452   -0.13325754
 Pairs        0.07395078    0.00000000   -0.03972916
 Total        1.10686657   -0.12795452   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36061680
 One electron energy                 -190.58994940
 Two electron energy                   80.69196920
 Virial quotient                       -2.72290141
 Correlation energy                    -0.59469671
 !MRCI STATE 12.1 Energy             -109.897980204848

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153340 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149519 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153340 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685985 (Pople, fixed reference)
 Cluster corrected energies          -109.95682165 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685985 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.71900044 (fixed)   0.95052983 (relaxed)   0.95050224 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005804   -0.00000000   -0.69751927
 Singles      0.03285770   -0.12795189   -0.13325771
 Pairs        0.07394685    0.30527864    0.23608027
 Total        1.10686259    0.17732675   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36061379
 One electron energy                 -190.58998166
 Two electron energy                   80.69200146
 Virial quotient                       -2.72290161
 Correlation energy                    -0.59469671
 !MRCI STATE 13.1 Energy             -109.897980202386

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153103 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149283 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153103 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685748 (Pople, fixed reference)
 Cluster corrected energies          -109.95681929 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685748 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.69399769 (fixed)   0.95052919 (relaxed)   0.95050160 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42171216
 Singles      0.03285688   -0.12795319   -0.13325747
 Pairs        0.07394915   -0.00000000   -0.03972709
 Total        1.10686408   -0.12795319   -0.59469671
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36053825
 One electron energy                 -190.58988767
 Two electron energy                   80.69190747
 Virial quotient                       -2.72290670
 Correlation energy                    -0.59469670
 !MRCI STATE 14.1 Energy             -109.897980194904

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153191 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149371 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153191 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685836 (Pople, fixed reference)
 Cluster corrected energies          -109.95682017 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685836 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.84772983 (fixed)   0.95053856 (relaxed)   0.95051097 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005804   -0.00000000   -0.42172220
 Singles      0.03285668   -0.12795125   -0.13326022
 Pairs        0.07392754   -0.00000000   -0.03971426
 Total        1.10684226   -0.12795125   -0.59469668
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36057773
 One electron energy                 -190.58991353
 Two electron energy                   80.69193336
 Virial quotient                       -2.72290404
 Correlation energy                    -0.59469667
 !MRCI STATE 15.1 Energy             -109.897980163278

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96151890 (Davidson, fixed reference)
 Cluster corrected energies          -109.96148069 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96151890 (Davidson, rotated reference)

 Cluster corrected energies          -109.95684535 (Pople, fixed reference)
 Cluster corrected energies          -109.95680716 (Pople, relaxed reference)
 Cluster corrected energies          -109.95684535 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.69400662 (fixed)   0.95053968 (relaxed)   0.95051210 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005804   -0.00000000   -0.42172360
 Singles      0.03285590   -0.12795079   -0.13326028
 Pairs        0.07392569    0.00000000   -0.03971279
 Total        1.10683964   -0.12795079   -0.59469667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36054223
 One electron energy                 -190.58986647
 Two electron energy                   80.69188632
 Virial quotient                       -2.72290643
 Correlation energy                    -0.59469666
 !MRCI STATE 16.1 Energy             -109.897980147566

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96151732 (Davidson, fixed reference)
 Cluster corrected energies          -109.96147912 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96151732 (Davidson, rotated reference)

 Cluster corrected energies          -109.95684378 (Pople, fixed reference)
 Cluster corrected energies          -109.95680559 (Pople, relaxed reference)
 Cluster corrected energies          -109.95684378 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Coefficient of reference function:   C(0) = 0.71900896 (fixed)   0.95054121 (relaxed)   0.95051362 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005804   -0.00000000   -0.10273708
 Singles      0.03285588   -0.12794958   -0.13326054
 Pairs        0.07392216   -0.35306849   -0.35869904
 Total        1.10683608   -0.48101807   -0.59469666
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36055508
 One electron energy                 -190.58988594
 Two electron energy                   80.69190580
 Virial quotient                       -2.72290557
 Correlation energy                    -0.59469665
 !MRCI STATE 17.1 Energy             -109.897980139893

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96151520 (Davidson, fixed reference)
 Cluster corrected energies          -109.96147700 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96151520 (Davidson, rotated reference)

 Cluster corrected energies          -109.95684165 (Pople, fixed reference)
 Cluster corrected energies          -109.95680347 (Pople, relaxed reference)
 Cluster corrected energies          -109.95684165 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      401.07       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *      1735.03   1731.39      2.90      0.52
 REAL TIME  *      1845.63 SEC
 DISK USED  *       433.24 MB (local),        5.13 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01806829  AU                              
 SETTING HLSDIAG(2)     =      -110.01806826  AU                              
 SETTING HLSDIAG(3)     =      -110.01806699  AU                              
 SETTING HLSDIAG(4)     =      -110.01806697  AU                              
 SETTING HLSDIAG(5)     =      -110.01806607  AU                              
 SETTING HLSDIAG(6)     =      -110.01806628  AU                              
 SETTING HLSDIAG(7)     =      -110.01806520  AU                              
 SETTING HLSDIAG(8)     =      -109.97761371  AU                              
 SETTING HLSDIAG(9)     =      -109.97761316  AU                              
 SETTING HLSDIAG(10)    =      -109.97761287  AU                              
 SETTING HLSDIAG(11)    =      -109.96153304  AU                              
 SETTING HLSDIAG(12)    =      -109.96153340  AU                              
 SETTING HLSDIAG(13)    =      -109.96153103  AU                              
 SETTING HLSDIAG(14)    =      -109.96153191  AU                              
 SETTING HLSDIAG(15)    =      -109.96151890  AU                              
 SETTING HLSDIAG(16)    =      -109.96151732  AU                              
 SETTING HLSDIAG(17)    =      -109.96151520  AU                              


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
     1      -109.34875563
     2      -109.34875563
     3      -109.34875563
     4      -109.34875562
     5      -109.34875562
     6      -109.34875562
     7      -109.34875562
     8      -109.33009136
     9      -109.33009136
    10      -109.33009136
    11      -109.33009136
    12      -109.33009136
    13      -109.30501088
    14      -109.30501088
    15      -109.30501087

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.86D-05
 Number of N-2 electron functions:    1500
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2849760
 Total number of contracted configurations:      2928991
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:    993258 words, CPU-Time:      0.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    553837 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.34875563     0.00000000    -0.68842049  0.37D-01  0.99D-01     1.17
    1     2     2     1.00000000     0.00000000  -109.34875563     0.00000000    -0.68820464  0.37D-01  0.99D-01     1.17
    1     3     3     1.00000000     0.00000000  -109.34875563     0.00000000    -0.68845812  0.37D-01  0.99D-01     1.17
    1     4     4     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68846633  0.36D-01  0.99D-01     1.17
    1     5     5     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68912805  0.37D-01  0.99D-01     1.17
    1     6     6     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68920046  0.37D-01  0.99D-01     1.17
    1     7     7     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68790960  0.37D-01  0.99D-01     1.17
    1     8     8     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69150345  0.36D-01  0.10D+00     1.17
    1     9     9     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69071443  0.37D-01  0.10D+00     1.17
    1    10    10     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69157082  0.37D-01  0.10D+00     1.17
    1    11    11     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69091391  0.37D-01  0.10D+00     1.17
    1    12    12     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69194528  0.36D-01  0.10D+00     1.17
    1    13    13     1.00000000     0.00000000  -109.30501088     0.00000000    -0.69933482  0.48D-01  0.10D+00     1.17
    1    14    14     1.00000000     0.00000000  -109.30501088     0.00000000    -0.69965866  0.48D-01  0.10D+00     1.17
    1    15    15     1.00000000     0.00000000  -109.30501087     0.00000000    -0.69883523  0.48D-01  0.10D+00     1.17
    2     1     1     1.09226545    -0.56816809  -109.91692371    -0.56816809    -0.01970117  0.28D-02  0.23D-02   186.70
    2     2     2     1.09218595    -0.56810734  -109.91686296    -0.56810734    -0.01968773  0.28D-02  0.23D-02   186.70
    2     3     3     1.09215237    -0.56799339  -109.91674901    -0.56799339    -0.01975387  0.27D-02  0.23D-02   186.70
    2     4     4     1.09251662    -0.56793850  -109.91669413    -0.56793850    -0.01996509  0.30D-02  0.23D-02   186.70
    2     5     5     1.09221504    -0.56792527  -109.91668089    -0.56792527    -0.01982620  0.28D-02  0.23D-02   186.70
    2     6     6     1.09222013    -0.56789257  -109.91664819    -0.56789257    -0.01984312  0.28D-02  0.23D-02   186.70
    2     7     7     1.09243920    -0.56765192  -109.91640754    -0.56765192    -0.02008051  0.30D-02  0.23D-02   186.70
    2     8     8     1.09367197    -0.57125129  -109.90134265    -0.57125129    -0.01838532  0.29D-02  0.20D-02   186.70
    2     9     9     1.09375391    -0.57094986  -109.90104123    -0.57094986    -0.01865642  0.31D-02  0.20D-02   186.70
    2    10    10     1.09376421    -0.57046454  -109.90055590    -0.57046454    -0.01903375  0.32D-02  0.21D-02   186.70
    2    11    11     1.09367405    -0.57043152  -109.90052289    -0.57043152    -0.01900533  0.31D-02  0.21D-02   186.70
    2    12    12     1.09364763    -0.57042581  -109.90051717    -0.57042581    -0.01900991  0.31D-02  0.21D-02   186.70
    2    13    13     1.09978862    -0.57512460  -109.88013548    -0.57512460    -0.02076349  0.40D-02  0.23D-02   186.70
    2    14    14     1.10000069    -0.57504648  -109.88005735    -0.57504648    -0.02086832  0.42D-02  0.23D-02   186.70
    2    15    15     1.09995384    -0.57488387  -109.87989474    -0.57488387    -0.02094600  0.42D-02  0.23D-02   186.70
    3     1     1     1.08827274    -0.58818115  -109.93693678    -0.02001306    -0.00134358  0.88D-04  0.24D-03   373.91
    3     2     2     1.08829590    -0.58817528  -109.93693090    -0.02006794    -0.00136209  0.90D-04  0.25D-03   373.91
    3     3     3     1.08823986    -0.58816829  -109.93692391    -0.02017490    -0.00134726  0.89D-04  0.24D-03   373.91
    3     4     4     1.08822457    -0.58814735  -109.93690298    -0.02020885    -0.00136603  0.90D-04  0.25D-03   373.91
    3     5     5     1.08818648    -0.58812947  -109.93688510    -0.02020420    -0.00136978  0.89D-04  0.25D-03   373.91
    3     6     6     1.08818705    -0.58812401  -109.93687964    -0.02023144    -0.00137195  0.89D-04  0.25D-03   373.91
    3     7     7     1.08819377    -0.58809757  -109.93685320    -0.02044565    -0.00139794  0.93D-04  0.25D-03   373.91
    3     8     8     1.08918280    -0.58948712  -109.91957848    -0.01823583    -0.00114807  0.12D-03  0.19D-03   373.91
    3     9     9     1.08915481    -0.58943527  -109.91952663    -0.01848540    -0.00117378  0.12D-03  0.19D-03   373.91
    3    10    10     1.08904509    -0.58934988  -109.91944125    -0.01888535    -0.00122198  0.12D-03  0.20D-03   373.91
    3    11    11     1.08899588    -0.58934113  -109.91943249    -0.01890961    -0.00122523  0.13D-03  0.20D-03   373.91
    3    12    12     1.08900153    -0.58934066  -109.91943202    -0.01891485    -0.00122260  0.13D-03  0.20D-03   373.91
    3    13    13     1.09323683    -0.59544385  -109.90045473    -0.02031925    -0.00143061  0.13D-03  0.26D-03   373.91
    3    14    14     1.09325516    -0.59543564  -109.90044651    -0.02038916    -0.00143992  0.13D-03  0.26D-03   373.91
    3    15    15     1.09319765    -0.59539503  -109.90040590    -0.02051116    -0.00146409  0.13D-03  0.27D-03   373.91
    4     1     1     1.09106319    -0.59001719  -109.93877282    -0.00183604    -0.00027611  0.15D-04  0.51D-04   561.11
    4     2     2     1.09107426    -0.59001705  -109.93877268    -0.00184178    -0.00027553  0.14D-04  0.51D-04   561.11
    4     3     3     1.09104061    -0.59001476  -109.93877039    -0.00184648    -0.00028109  0.14D-04  0.53D-04   561.11
    4     4     4     1.09106150    -0.59001400  -109.93876963    -0.00186665    -0.00028009  0.13D-04  0.52D-04   561.11
    4     5     5     1.09106407    -0.59001330  -109.93876893    -0.00188383    -0.00027894  0.14D-04  0.51D-04   561.11
    4     6     6     1.09105672    -0.59001131  -109.93876694    -0.00188730    -0.00027902  0.15D-04  0.51D-04   561.11
    4     7     7     1.09102940    -0.59000737  -109.93876300    -0.00190980    -0.00028193  0.15D-04  0.51D-04   561.11
    4     8     8     1.09151184    -0.59101292  -109.92110429    -0.00152581    -0.00029275  0.11D-04  0.51D-04   561.11
    4     9     9     1.09148196    -0.59100148  -109.92109285    -0.00156622    -0.00029655  0.12D-04  0.51D-04   561.11
    4    10    10     1.09143213    -0.59098753  -109.92107889    -0.00163764    -0.00030225  0.13D-04  0.51D-04   561.11
    4    11    11     1.09143241    -0.59098671  -109.92107808    -0.00164558    -0.00030263  0.14D-04  0.51D-04   561.11
    4    12    12     1.09142013    -0.59098132  -109.92107268    -0.00164066    -0.00030842  0.12D-04  0.53D-04   561.11
    4    13    13     1.09593515    -0.59733489  -109.90234577    -0.00189104    -0.00033933  0.15D-04  0.65D-04   561.11
    4    14    14     1.09589690    -0.59732675  -109.90233762    -0.00189111    -0.00034710  0.16D-04  0.67D-04   561.11
    4    15    15     1.09588950    -0.59732561  -109.90233649    -0.00193058    -0.00034757  0.17D-04  0.66D-04   561.11
    5     1     1     1.09259389    -0.59036100  -109.93911663    -0.00034381    -0.00005782  0.17D-05  0.12D-04   749.54
    5     2     2     1.09259726    -0.59035945  -109.93911508    -0.00034240    -0.00005932  0.17D-05  0.12D-04   749.54
    5     3     3     1.09258627    -0.59035899  -109.93911462    -0.00034423    -0.00005971  0.17D-05  0.12D-04   749.54
    5     4     4     1.09258184    -0.59035860  -109.93911422    -0.00034460    -0.00005931  0.18D-05  0.12D-04   749.54
    5     5     5     1.09258825    -0.59035825  -109.93911388    -0.00034495    -0.00005985  0.17D-05  0.12D-04   749.54
    5     6     6     1.09258424    -0.59035768  -109.93911331    -0.00034637    -0.00006123  0.16D-05  0.13D-04   749.54
    5     7     7     1.09257092    -0.59035739  -109.93911301    -0.00035002    -0.00006240  0.17D-05  0.13D-04   749.54
    5     8     8     1.09329217    -0.59142217  -109.92151354    -0.00040925    -0.00008727  0.38D-05  0.16D-04   749.54
    5     9     9     1.09329052    -0.59141961  -109.92151097    -0.00041813    -0.00008868  0.37D-05  0.16D-04   749.54
    5    10    10     1.09328827    -0.59141789  -109.92150925    -0.00043036    -0.00008598  0.39D-05  0.15D-04   749.54
    5    11    11     1.09328621    -0.59141777  -109.92150913    -0.00043106    -0.00008585  0.39D-05  0.15D-04   749.54
    5    12    12     1.09325701    -0.59141198  -109.92150334    -0.00043066    -0.00009224  0.37D-05  0.17D-04   749.54
    5    13    13     1.09786555    -0.59777718  -109.90278805    -0.00044228    -0.00008418  0.28D-05  0.17D-04   749.54
    5    14    14     1.09784011    -0.59777344  -109.90278432    -0.00044669    -0.00008858  0.29D-05  0.19D-04   749.54
    5    15    15     1.09783570    -0.59777110  -109.90278197    -0.00044548    -0.00009119  0.30D-05  0.19D-04   749.54
    6     1     1     1.09263205    -0.59043245  -109.93918808    -0.00007145    -0.00001904  0.15D-05  0.39D-05   935.53
    6     2     2     1.09262576    -0.59043176  -109.93918739    -0.00007231    -0.00001950  0.15D-05  0.40D-05   935.53
    6     3     3     1.09263294    -0.59043115  -109.93918677    -0.00007215    -0.00001996  0.15D-05  0.42D-05   935.53
    6     4     4     1.09262947    -0.59043097  -109.93918659    -0.00007237    -0.00002037  0.15D-05  0.44D-05   935.53
    6     5     5     1.09262984    -0.59043034  -109.93918597    -0.00007209    -0.00002100  0.14D-05  0.47D-05   935.53
    6     6     6     1.09263497    -0.59042993  -109.93918556    -0.00007225    -0.00002072  0.16D-05  0.44D-05   935.53
    6     7     7     1.09263946    -0.59042925  -109.93918488    -0.00007186    -0.00002142  0.16D-05  0.47D-05   935.53
    6     8     8     1.09324662    -0.59153027  -109.92162163    -0.00010809    -0.00003430  0.45D-05  0.56D-05   935.53
    6     9     9     1.09324748    -0.59153020  -109.92162156    -0.00011059    -0.00003423  0.46D-05  0.55D-05   935.53
    6    10    10     1.09327930    -0.59152939  -109.92162076    -0.00011151    -0.00003478  0.47D-05  0.58D-05   935.53
    6    11    11     1.09327171    -0.59152757  -109.92161893    -0.00010980    -0.00003659  0.46D-05  0.65D-05   935.53
    6    12    12     1.09325094    -0.59152492  -109.92161628    -0.00011294    -0.00003723  0.50D-05  0.63D-05   935.53
    6    13    13     1.09784704    -0.59787433  -109.90288521    -0.00009716    -0.00002848  0.31D-05  0.54D-05   935.53
    6    14    14     1.09784238    -0.59787210  -109.90288298    -0.00009866    -0.00003018  0.31D-05  0.59D-05   935.53
    6    15    15     1.09784775    -0.59787058  -109.90288146    -0.00009949    -0.00003081  0.32D-05  0.61D-05   935.53
    7     1     1     1.09273235    -0.59045280  -109.93920843    -0.00002035    -0.00000604  0.29D-06  0.14D-05  1122.43
    7     2     2     1.09272774    -0.59045269  -109.93920832    -0.00002093    -0.00000604  0.32D-06  0.13D-05  1122.43
    7     3     3     1.09272434    -0.59045221  -109.93920783    -0.00002106    -0.00000639  0.28D-06  0.14D-05  1122.43
    7     4     4     1.09271908    -0.59045205  -109.93920768    -0.00002108    -0.00000656  0.24D-06  0.15D-05  1122.43
    7     5     5     1.09271799    -0.59045181  -109.93920743    -0.00002147    -0.00000665  0.25D-06  0.15D-05  1122.43
    7     6     6     1.09271389    -0.59045169  -109.93920731    -0.00002175    -0.00000673  0.24D-06  0.16D-05  1122.43
    7     7     7     1.09271469    -0.59045154  -109.93920717    -0.00002229    -0.00000683  0.26D-06  0.16D-05  1122.43
    7     8     8     1.09333198    -0.59156800  -109.92165936    -0.00003773    -0.00001166  0.55D-06  0.20D-05  1122.43
    7     9     9     1.09333411    -0.59156797  -109.92165934    -0.00003777    -0.00001163  0.56D-06  0.20D-05  1122.43
    7    10    10     1.09333694    -0.59156747  -109.92165884    -0.00003808    -0.00001194  0.39D-06  0.22D-05  1122.43
    7    11    11     1.09332058    -0.59156642  -109.92165778    -0.00003884    -0.00001248  0.42D-06  0.23D-05  1122.43
    7    12    12     1.09331244    -0.59156590  -109.92165726    -0.00004098    -0.00001254  0.49D-06  0.22D-05  1122.43
    7    13    13     1.09796956    -0.59790764  -109.90291851    -0.00003330    -0.00000919  0.57D-06  0.18D-05  1122.43
    7    14    14     1.09795099    -0.59790678  -109.90291766    -0.00003468    -0.00000972  0.57D-06  0.19D-05  1122.43
    7    15    15     1.09794582    -0.59790616  -109.90291703    -0.00003558    -0.00001009  0.56D-06  0.20D-05  1122.43
    8     1     1     1.09287317    -0.59045914  -109.93921477    -0.00000634    -0.00000205  0.79D-07  0.48D-06  1310.05
    8     2     2     1.09287285    -0.59045912  -109.93921475    -0.00000643    -0.00000207  0.78D-07  0.49D-06  1310.05
    8     3     3     1.09286775    -0.59045889  -109.93921451    -0.00000668    -0.00000220  0.83D-07  0.51D-06  1310.05
    8     4     4     1.09286253    -0.59045880  -109.93921442    -0.00000675    -0.00000226  0.84D-07  0.53D-06  1310.05
    8     5     5     1.09285971    -0.59045869  -109.93921432    -0.00000689    -0.00000235  0.84D-07  0.55D-06  1310.05
    8     6     6     1.09286120    -0.59045867  -109.93921430    -0.00000699    -0.00000231  0.85D-07  0.54D-06  1310.05
    8     7     7     1.09285549    -0.59045856  -109.93921418    -0.00000701    -0.00000246  0.84D-07  0.60D-06  1310.05
    8     8     8     1.09352323    -0.59158231  -109.92167368    -0.00001432    -0.00000473  0.31D-06  0.85D-06  1310.05
    8     9     9     1.09352426    -0.59158230  -109.92167366    -0.00001432    -0.00000472  0.31D-06  0.84D-06  1310.05
    8    10    10     1.09350934    -0.59158162  -109.92167299    -0.00001415    -0.00000525  0.29D-06  0.10D-05  1310.05
    8    11    11     1.09350417    -0.59158122  -109.92167258    -0.00001480    -0.00000542  0.30D-06  0.10D-05  1310.05
    8    12    12     1.09350336    -0.59158114  -109.92167251    -0.00001524    -0.00000551  0.29D-06  0.11D-05  1310.05
    8    13    13     1.09817164    -0.59791822  -109.90292910    -0.00001059    -0.00000341  0.15D-06  0.78D-06  1310.05
    8    14    14     1.09816238    -0.59791789  -109.90292877    -0.00001111    -0.00000364  0.16D-06  0.84D-06  1310.05
    8    15    15     1.09815407    -0.59791755  -109.90292843    -0.00001139    -0.00000387  0.16D-06  0.91D-06  1310.05
    9     1     1     1.09291495    -0.59046128  -109.93921691    -0.00000214    -0.00000076  0.40D-07  0.17D-06  1498.32
    9     2     2     1.09291546    -0.59046127  -109.93921689    -0.00000215    -0.00000075  0.41D-07  0.17D-06  1498.32
    9     3     3     1.09291332    -0.59046118  -109.93921680    -0.00000229    -0.00000081  0.43D-07  0.18D-06  1498.32
    9     4     4     1.09291163    -0.59046114  -109.93921676    -0.00000234    -0.00000084  0.40D-07  0.19D-06  1498.32
    9     5     5     1.09291141    -0.59046109  -109.93921671    -0.00000240    -0.00000086  0.44D-07  0.19D-06  1498.32
    9     6     6     1.09291048    -0.59046109  -109.93921671    -0.00000241    -0.00000088  0.38D-07  0.21D-06  1498.32
    9     7     7     1.09291050    -0.59046102  -109.93921664    -0.00000246    -0.00000092  0.44D-07  0.22D-06  1498.32
    9     8     8     1.09357371    -0.59158770  -109.92167907    -0.00000539    -0.00000224  0.23D-06  0.41D-06  1498.32
    9     9     9     1.09357457    -0.59158770  -109.92167906    -0.00000540    -0.00000224  0.23D-06  0.41D-06  1498.32
    9    10    10     1.09357464    -0.59158725  -109.92167861    -0.00000563    -0.00000243  0.25D-06  0.45D-06  1498.32
    9    11    11     1.09356862    -0.59158712  -109.92167848    -0.00000590    -0.00000252  0.24D-06  0.46D-06  1498.32
    9    12    12     1.09356965    -0.59158700  -109.92167836    -0.00000586    -0.00000260  0.24D-06  0.50D-06  1498.32
    9    13    13     1.09822303    -0.59792172  -109.90293260    -0.00000350    -0.00000132  0.75D-07  0.29D-06  1498.32
    9    14    14     1.09821984    -0.59792160  -109.90293247    -0.00000370    -0.00000140  0.77D-07  0.31D-06  1498.32
    9    15    15     1.09821716    -0.59792144  -109.90293231    -0.00000388    -0.00000149  0.82D-07  0.33D-06  1498.32
   10     1     1     1.09292859    -0.59046209  -109.93921771    -0.00000081    -0.00000029  0.88D-08  0.68D-07  1686.14
   10     2     2     1.09292914    -0.59046208  -109.93921771    -0.00000081    -0.00000030  0.75D-08  0.72D-07  1686.14
   10     3     3     1.09292711    -0.59046204  -109.93921766    -0.00000086    -0.00000033  0.69D-08  0.82D-07  1686.14
   10     4     4     1.09292613    -0.59046201  -109.93921764    -0.00000087    -0.00000035  0.52D-08  0.93D-07  1686.14
   10     5     5     1.09292589    -0.59046200  -109.93921762    -0.00000091    -0.00000035  0.53D-08  0.93D-07  1686.14
   10     6     6     1.09292474    -0.59046198  -109.93921761    -0.00000090    -0.00000037  0.49D-08  0.10D-06  1686.14
   10     7     7     1.09292482    -0.59046196  -109.93921758    -0.00000094    -0.00000038  0.49D-08  0.10D-06  1686.14
   10     8     8     1.09359855    -0.59159013  -109.92168149    -0.00000242    -0.00000095  0.33D-07  0.18D-06  1686.14
   10     9     9     1.09359931    -0.59159012  -109.92168148    -0.00000242    -0.00000095  0.34D-07  0.18D-06  1686.14
   10    10    10     1.09360019    -0.59158988  -109.92168124    -0.00000263    -0.00000108  0.28D-07  0.22D-06  1686.14
   10    11    11     1.09359346    -0.59158984  -109.92168120    -0.00000272    -0.00000110  0.32D-07  0.22D-06  1686.14
   10    12    12     1.09359397    -0.59158974  -109.92168110    -0.00000274    -0.00000116  0.32D-07  0.25D-06  1686.14
   10    13    13     1.09824576    -0.59792315  -109.90293403    -0.00000144    -0.00000052  0.21D-07  0.12D-06  1686.14
   10    14    14     1.09824215    -0.59792310  -109.90293398    -0.00000150    -0.00000056  0.20D-07  0.13D-06  1686.14
   10    15    15     1.09823999    -0.59792303  -109.90293390    -0.00000159    -0.00000061  0.19D-07  0.14D-06  1686.14
   11     1     1     1.09294819    -0.59046237  -109.93921799    -0.00000028    -0.00000012  0.18D-08  0.32D-07  1874.36
   11     2     2     1.09294776    -0.59046236  -109.93921799    -0.00000028    -0.00000012  0.20D-08  0.35D-07  1874.36
   11     3     3     1.09294577    -0.59046234  -109.93921797    -0.00000030    -0.00000014  0.24D-08  0.38D-07  1874.36
   11     4     4     1.09294419    -0.59046233  -109.93921795    -0.00000031    -0.00000014  0.27D-08  0.41D-07  1874.36
   11     5     5     1.09294386    -0.59046232  -109.93921795    -0.00000032    -0.00000015  0.27D-08  0.42D-07  1874.36
   11     6     6     1.09294307    -0.59046231  -109.93921794    -0.00000033    -0.00000015  0.27D-08  0.43D-07  1874.36
   11     7     7     1.09294235    -0.59046230  -109.93921793    -0.00000035    -0.00000016  0.29D-08  0.45D-07  1874.36
   11     8     8     1.09363213    -0.59159115  -109.92168251    -0.00000102    -0.00000045  0.21D-07  0.94D-07  1874.36
   11     9     9     1.09363264    -0.59159115  -109.92168251    -0.00000103    -0.00000045  0.22D-07  0.93D-07  1874.36
   11    10    10     1.09362750    -0.59159099  -109.92168235    -0.00000111    -0.00000054  0.18D-07  0.12D-06  1874.36
   11    11    11     1.09362495    -0.59159098  -109.92168234    -0.00000114    -0.00000054  0.19D-07  0.12D-06  1874.36
   11    12    12     1.09362314    -0.59159090  -109.92168226    -0.00000116    -0.00000059  0.18D-07  0.14D-06  1874.36
   11    13    13     1.09827897    -0.59792370  -109.90293457    -0.00000054    -0.00000021  0.37D-08  0.53D-07  1874.36
   11    14    14     1.09827574    -0.59792367  -109.90293454    -0.00000057    -0.00000024  0.38D-08  0.60D-07  1874.36
   11    15    15     1.09827296    -0.59792363  -109.90293451    -0.00000061    -0.00000026  0.43D-08  0.65D-07  1874.36
   12     1     1     1.09295993    -0.59046248  -109.93921810    -0.00000011    -0.00000005  0.17D-08  0.13D-07  2061.13
   12     2     2     1.09295962    -0.59046247  -109.93921810    -0.00000011    -0.00000005  0.16D-08  0.13D-07  2061.13
   12     3     3     1.09295854    -0.59046247  -109.93921809    -0.00000012    -0.00000006  0.17D-08  0.15D-07  2061.13
   12     4     4     1.09295747    -0.59046246  -109.93921808    -0.00000013    -0.00000006  0.13D-08  0.16D-07  2061.13
   12     5     5     1.09295743    -0.59046246  -109.93921808    -0.00000014    -0.00000006  0.14D-08  0.17D-07  2061.13
   12     6     6     1.09295683    -0.59046245  -109.93921808    -0.00000014    -0.00000007  0.13D-08  0.18D-07  2061.13
   12     7     7     1.09295649    -0.59046245  -109.93921807    -0.00000015    -0.00000007  0.14D-08  0.19D-07  2061.13
   12     8     8     1.09365250    -0.59159162  -109.92168299    -0.00000047    -0.00000023  0.17D-07  0.46D-07  2061.13
   12     9     9     1.09365213    -0.59159162  -109.92168299    -0.00000047    -0.00000023  0.17D-07  0.46D-07  2061.13
   12    10    10     1.09364833    -0.59159154  -109.92168290    -0.00000054    -0.00000027  0.19D-07  0.55D-07  2061.13
   12    11    11     1.09364914    -0.59159153  -109.92168289    -0.00000055    -0.00000028  0.19D-07  0.61D-07  2061.13
   12    12    12     1.09364613    -0.59159148  -109.92168284    -0.00000058    -0.00000031  0.19D-07  0.69D-07  2061.13
   12    13    13     1.09829689    -0.59792391  -109.90293479    -0.00000021    -0.00000009  0.38D-08  0.21D-07  2061.13
   12    14    14     1.09829522    -0.59792390  -109.90293477    -0.00000023    -0.00000010  0.40D-08  0.23D-07  2061.13
   12    15    15     1.09829372    -0.59792388  -109.90293476    -0.00000025    -0.00000011  0.41D-08  0.26D-07  2061.13
   13     1     1     1.09296456    -0.59046253  -109.93921815    -0.00000005    -0.00000002  0.12D-09  0.58D-08  2249.00
   13     2     2     1.09296445    -0.59046252  -109.93921815    -0.00000005    -0.00000002  0.11D-09  0.62D-08  2249.00
   13     3     3     1.09296376    -0.59046252  -109.93921815    -0.00000005    -0.00000003  0.12D-09  0.70D-08  2249.00
   13     4     4     1.09296321    -0.59046252  -109.93921814    -0.00000006    -0.00000003  0.17D-09  0.78D-08  2249.00
   13     5     5     1.09296325    -0.59046252  -109.93921814    -0.00000006    -0.00000003  0.15D-09  0.78D-08  2249.00
   13     6     6     1.09296274    -0.59046251  -109.93921814    -0.00000006    -0.00000003  0.19D-09  0.85D-08  2249.00
   13     7     7     1.09296264    -0.59046251  -109.93921813    -0.00000006    -0.00000003  0.21D-09  0.91D-08  2249.00
   13     8     8     1.09366028    -0.59159186  -109.92168322    -0.00000023    -0.00000011  0.24D-08  0.26D-07  2249.00
   13     9     9     1.09366001    -0.59159186  -109.92168322    -0.00000023    -0.00000011  0.24D-08  0.26D-07  2249.00
   13    10    10     1.09365798    -0.59159181  -109.92168317    -0.00000027    -0.00000014  0.24D-08  0.32D-07  2249.00
   13    11    11     1.09365918    -0.59159180  -109.92168316    -0.00000027    -0.00000014  0.30D-08  0.34D-07  2249.00
   13    12    12     1.09365658    -0.59159177  -109.92168313    -0.00000029    -0.00000016  0.36D-08  0.38D-07  2249.00
   13    13    13     1.09830371    -0.59792400  -109.90293488    -0.00000009    -0.00000004  0.39D-09  0.10D-07  2249.00
   13    14    14     1.09830262    -0.59792399  -109.90293487    -0.00000010    -0.00000004  0.35D-09  0.11D-07  2249.00
   13    15    15     1.09830172    -0.59792399  -109.90293486    -0.00000011    -0.00000005  0.28D-09  0.13D-07  2249.00
   14     1     1     1.09296461    -0.59046253  -109.93921815    -0.00000000    -0.00000002  0.11D-09  0.57D-08  2354.84
   14     2     2     1.09296448    -0.59046252  -109.93921815    -0.00000000    -0.00000002  0.11D-09  0.61D-08  2354.84
   14     3     3     1.09296377    -0.59046252  -109.93921815    -0.00000000    -0.00000003  0.12D-09  0.69D-08  2354.84
   14     4     4     1.09296324    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.16D-09  0.78D-08  2354.84
   14     5     5     1.09296325    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.15D-09  0.78D-08  2354.84
   14     6     6     1.09296275    -0.59046251  -109.93921814    -0.00000000    -0.00000003  0.18D-09  0.85D-08  2354.84
   14     7     7     1.09296271    -0.59046251  -109.93921814    -0.00000000    -0.00000003  0.20D-09  0.90D-08  2354.84
   14     8     8     1.09367867    -0.59159204  -109.92168341    -0.00000019    -0.00000005  0.30D-08  0.10D-07  2354.84
   14     9     9     1.09367717    -0.59159204  -109.92168340    -0.00000019    -0.00000005  0.29D-08  0.11D-07  2354.84
   14    10    10     1.09367885    -0.59159204  -109.92168340    -0.00000023    -0.00000006  0.31D-08  0.13D-07  2354.84
   14    11    11     1.09367880    -0.59159203  -109.92168340    -0.00000023    -0.00000006  0.34D-08  0.13D-07  2354.84
   14    12    12     1.09366567    -0.59159197  -109.92168333    -0.00000020    -0.00000006  0.16D-08  0.13D-07  2354.84
   14    13    13     1.09831859    -0.59792406  -109.90293494    -0.00000006    -0.00000001  0.81D-09  0.27D-08  2354.84
   14    14    14     1.09831803    -0.59792406  -109.90293493    -0.00000006    -0.00000001  0.82D-09  0.33D-08  2354.84
   14    15    15     1.09831852    -0.59792406  -109.90293493    -0.00000007    -0.00000001  0.84D-09  0.31D-08  2354.84
   15     1     1     1.09296461    -0.59046253  -109.93921815    -0.00000000    -0.00000002  0.12D-09  0.56D-08  2425.16
   15     2     2     1.09296448    -0.59046252  -109.93921815    -0.00000000    -0.00000002  0.11D-09  0.61D-08  2425.16
   15     3     3     1.09296377    -0.59046252  -109.93921815    -0.00000000    -0.00000003  0.12D-09  0.69D-08  2425.16
   15     4     4     1.09296324    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.17D-09  0.77D-08  2425.16
   15     5     5     1.09296325    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.15D-09  0.78D-08  2425.16
   15     6     6     1.09296275    -0.59046251  -109.93921814    -0.00000000    -0.00000003  0.18D-09  0.85D-08  2425.16
   15     7     7     1.09296270    -0.59046251  -109.93921814    -0.00000000    -0.00000003  0.20D-09  0.90D-08  2425.16
   15     8     8     1.09368053    -0.59159208  -109.92168344    -0.00000003    -0.00000000  0.19D-09  0.11D-08  2425.16
   15     9     9     1.09367990    -0.59159208  -109.92168344    -0.00000003    -0.00000001  0.22D-09  0.12D-08  2425.16
   15    10    10     1.09368018    -0.59159208  -109.92168344    -0.00000004    -0.00000001  0.19D-09  0.14D-08  2425.16
   15    11    11     1.09368021    -0.59159208  -109.92168344    -0.00000004    -0.00000001  0.20D-09  0.14D-08  2425.16
   15    12    12     1.09367988    -0.59159207  -109.92168343    -0.00000010    -0.00000002  0.12D-08  0.49D-08  2425.16
   15    13    13     1.09831860    -0.59792406  -109.90293494    -0.00000000    -0.00000001  0.81D-09  0.26D-08  2425.16
   15    14    14     1.09831804    -0.59792406  -109.90293493    -0.00000000    -0.00000001  0.82D-09  0.33D-08  2425.16
   15    15    15     1.09831853    -0.59792406  -109.90293493    -0.00000000    -0.00000001  0.84D-09  0.31D-08  2425.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   2.8%  87.9%

 Initialization:   0.0%
 Other:            9.0%

 Total CPU:     2425.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222/\222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9530980   0.0000000   0.0000000
                     -0.0000000   0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000000
 2//222\222           0.9379092   0.0000000  -0.0000000  -0.0000000  -0.1694715   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 222//2\222           0.1515800   0.0000000  -0.0000000   0.0000000   0.8388922  -0.0000000  -0.0000000  -0.0000002  -0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000   0.3967107   0.0000000
 22/22/\222          -0.0757897   0.0000000  -0.0000000   0.0000000  -0.4194460  -0.0000000  -0.0000000  -0.0000003  -0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000   0.7934214   0.0000000
 2222//\222          -0.0000000   0.7565493  -0.0000000  -0.3928732   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.3967104  -0.0000000  -0.0000000
 22/2/2\222          -0.0000000   0.0000000   0.6986269   0.0000000  -0.0000000   0.4885046  -0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000   0.0000002   0.0000000   0.0000000  -0.3967106
 2/\222/222           0.0000007  -0.0000000  -0.0000000  -0.0000000  -0.0000006  -0.0000000  -0.0000000   0.6889704  -0.0000000
                      0.0000000   0.0000000   0.0000000   0.0000000  -0.0000013   0.0000000
 2/2/22\222          -0.0000000  -0.0000000   0.0294323  -0.0000000   0.0000000   0.6020728   0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000   0.6871227
 2/22/2\222          -0.0000000  -0.1079727  -0.0000000   0.5930426   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000001
                      0.0000000  -0.0000000  -0.0000000   0.6871226  -0.0000000  -0.0000000
 222/2/\222           0.0000000   0.0000000  -0.6476490   0.0000000  -0.0000000   0.5543171  -0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.0000002  -0.0000000   0.0000000  -0.3967105
 22//22\222           0.0000000   0.5695345   0.0000000   0.6343080  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.0000000  -0.3967104   0.0000000   0.0000000
 2222/\/222          -0.0000000   0.0000001  -0.0000000  -0.0000026   0.0000000   0.0000000  -0.0000000  -0.0000000   0.5966676
                      0.0000000  -0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000
 22/\22/222           0.0000000  -0.0000009  -0.0000000  -0.0000019   0.0000000   0.0000000  -0.0000000  -0.0000000   0.5966674
                      0.0000000  -0.0000000  -0.0000000  -0.0000011   0.0000000  -0.0000000
 222/\2/222          -0.0000003  -0.0000000   0.0000000   0.0000000  -0.0000006  -0.0000000  -0.0000000  -0.5966658   0.0000000
                     -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000012  -0.0000000
 222/2\/222          -0.0000000   0.0000000   0.0000014   0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000   0.0000000
                      0.0000000  -0.0000000   0.5966615   0.0000000   0.0000000  -0.0000018
 22/2\2/222          -0.0000000  -0.0000000   0.0000008   0.0000000   0.0000000  -0.0000028  -0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.5966612  -0.0000000  -0.0000000   0.0000009
 2/222\/222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000014  -0.0000000  -0.0000000
                      0.3674194   0.5828283  -0.0000000   0.0000000   0.0000000  -0.0000000
 222022/222          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000016   0.0000000  -0.0000000
                     -0.0189368  -0.4868105  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 222202/222          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000008  -0.0000000  -0.0000000
                      0.4310580   0.2270052  -0.0000000  -0.0000000   0.0000000  -0.0000000
 202222/222          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000009   0.0000000  -0.0000000
                      0.4121216  -0.2598055  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 222220/222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000010  -0.0000000   0.0000000
                     -0.4121214   0.2598053   0.0000000   0.0000000  -0.0000000   0.0000000
 220222/222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000008  -0.0000000   0.0000000
                     -0.4121213   0.2598056   0.0000000   0.0000000   0.0000000   0.0000000
 2/22\2/222          -0.0000000  -0.0000006  -0.0000000  -0.0000012   0.0000000   0.0000000  -0.0000000  -0.0000000   0.3444862
                      0.0000000  -0.0000000  -0.0000000  -0.0000007   0.0000000  -0.0000000
 2/2\22/222           0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.3444827  -0.0000000   0.0000000   0.0000005
 222/220222           0.0000000  -0.0000000  -0.0000008   0.0000000   0.0000000  -0.0000077  -0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000   0.2476065   0.0000000   0.0000000   0.0000068
 22/2220222          -0.0000020  -0.0000000  -0.0000000   0.0000000   0.0000003  -0.0000000  -0.0000000   0.2475785   0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000064  -0.0000000
 2222/20222          -0.0000000  -0.0000018   0.0000000  -0.0000133  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2475704
                     -0.0000000   0.0000000   0.0000000  -0.0000043   0.0000000  -0.0000000
 2/22220222           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000071  -0.0000000  -0.0000000
                      0.2094204  -0.1320173  -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222/0222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000077   0.0000000   0.0000000
                      0.1320221   0.2094174   0.0000000  -0.0000000  -0.0000000   0.0000000
 2/\22/2222           0.0078702   0.0000000   0.0000000  -0.0000000   0.0435546  -0.0000000   0.0000000  -0.0000003   0.0000000
                      0.0000000   0.0000000   0.0000000  -0.0000000  -0.2049403  -0.0000000
 222/\/2222           0.0045436  -0.0000000  -0.0000000   0.0000000   0.0251462   0.0000000  -0.0000000   0.0000004  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000   0.0000000   0.1774835   0.0000000
 2/22/\2222           0.0000000  -0.0397503   0.0000000  -0.0072377  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0554423
                     -0.0000000   0.0000000   0.0000000  -0.1479034   0.0000000   0.0000000
 2/2/2\2222           0.0000000  -0.0000000   0.0403559  -0.0000000   0.0000000  -0.0019730  -0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000   0.0554415   0.0000000  -0.0000000   0.1479028
 202/222222          -0.0000000  -0.0000000  -0.0021611   0.0000000   0.0000000  -0.0442084   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0008594  -0.0000000  -0.0000000  -0.1255006
 222/202222           0.0000000  -0.0000000   0.0288960   0.0000000  -0.0000000   0.0059730  -0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0000000  -0.0531295  -0.0000000  -0.0000000   0.1255004
 2022/22222           0.0000000   0.0079281   0.0000000  -0.0435450  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0008586
                     -0.0000000   0.0000000   0.0000000  -0.1255004   0.0000000   0.0000000
 2202/22222          -0.0000000  -0.0294293  -0.0000000   0.0021402   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0531302
                      0.0000000  -0.0000000  -0.0000000   0.1255003  -0.0000000  -0.0000000
 2222/02222          -0.0000000   0.0267867  -0.0000000   0.0123751   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0531302
                      0.0000000  -0.0000000  -0.0000000   0.1255003  -0.0000000  -0.0000000
 220/222222          -0.0000000   0.0000000  -0.0281757  -0.0000000   0.0000000   0.0087631  -0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0531293  -0.0000000   0.0000000   0.1255002
 222/022222           0.0000000   0.0000000   0.0014409  -0.0000000   0.0000000   0.0294716   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0531298  -0.0000000   0.0000000  -0.1255001
 2220/22222           0.0000000  -0.0052853   0.0000000   0.0290293  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0531301
                     -0.0000000   0.0000000   0.0000000  -0.1255001   0.0000000  -0.0000000
 22/2022222          -0.0197428   0.0000000  -0.0000000  -0.0000000   0.0219289   0.0000000  -0.0000000  -0.0531301   0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000   0.1255001   0.0000000
 22/0222222          -0.0261685  -0.0000000   0.0000000   0.0000000  -0.0136330  -0.0000000  -0.0000000  -0.0531303   0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1255001  -0.0000000
 2//\222222           0.0000000   0.0226784   0.0000000  -0.0117770  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.1183226  -0.0000000  -0.0000000
 2//22\2222           0.0045439  -0.0000000  -0.0000000   0.0000000   0.0251462  -0.0000000  -0.0000000  -0.0000002   0.0000000
                     -0.0000000   0.0000000   0.0000000   0.0000000  -0.1183223   0.0000000
 2//2\22222           0.0000000  -0.0000000   0.0194138  -0.0000000  -0.0000000  -0.0166159   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000  -0.1183222
 2/\/222222          -0.0000000  -0.0328067  -0.0000000  -0.0151562   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0640194
                      0.0000000  -0.0000000  -0.0000000   0.1024701  -0.0000000  -0.0000000
 2/\2/22222          -0.0000000   0.0000000  -0.0353906  -0.0000000  -0.0000000  -0.0073151  -0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000   0.0640182   0.0000000  -0.0000000   0.1024700
 22/\2/2222          -0.0000000   0.0282838  -0.0000000  -0.0425673   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0554423
                      0.0000000  -0.0000000  -0.0000000   0.0887419  -0.0000000  -0.0000000
 22/2\/2222           0.0000000   0.0000000  -0.0178854   0.0000000   0.0000000   0.0478755   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.0554410   0.0000000  -0.0000000  -0.0887418
 20/2222222          -0.0000003   0.0000000   0.0000000  -0.0000000   0.0000002   0.0000000   0.0000000  -0.0792660  -0.0000000
                      0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22202/2222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0233278   0.0000000  -0.0000000
                      0.0099609  -0.0690861  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20222/2222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001   0.0000000  -0.0000000
                     -0.0422715  -0.0670542  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2/22202222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000   0.0000000
                     -0.0670540   0.0422715   0.0000000   0.0000000   0.0000000   0.0000000
 2/02222222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000004   0.0000000   0.0000000
                     -0.0670540   0.0422715  -0.0000000   0.0000000   0.0000000   0.0000000
 22220/2222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0233277  -0.0000000   0.0000000
                     -0.0666279  -0.0208035   0.0000000   0.0000000  -0.0000000   0.0000000
 222//\2222          -0.0000006  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0640194   0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 22//\22222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000002  -0.0000000  -0.0000000
                      0.0298306  -0.0566452  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22/\/22222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000002   0.0000000   0.0000000
                     -0.0566450  -0.0298306   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/2/\22222          -0.0441520   0.0000000  -0.0000000  -0.0000000   0.0339452   0.0000000  -0.0000000   0.0554423  -0.0000000
                      0.0000000   0.0000000  -0.0000000   0.0000000   0.0295805   0.0000000
 2/2\2/2222          -0.0000000   0.0000000  -0.0008819  -0.0000000   0.0000000  -0.0180481   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.0320090   0.0000000   0.0000000  -0.0512354
 2/2\/22222           0.0359843   0.0000000  -0.0000000   0.0000000   0.0384749   0.0000000  -0.0000000  -0.0320096   0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0512353  -0.0000000
 2/22\/2222          -0.0000000  -0.0032367  -0.0000000   0.0177770   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0320097
                      0.0000000  -0.0000000  -0.0000000   0.0512353  -0.0000000  -0.0000000
 22/2/\2222          -0.0000000  -0.0000000  -0.0362726   0.0000000   0.0000000  -0.0253632  -0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0000000  -0.0320087  -0.0000000  -0.0000000   0.0512350
 22//2\2222          -0.0000000   0.0295704   0.0000000   0.0329332  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0320096
                     -0.0000000   0.0000000   0.0000000  -0.0512350   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.954818    0.000000   -0.000000   -0.057117    0.000000   -0.000000    0.000000   -0.000000    0.000001
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.640972    0.000000    0.000000   -0.000000    0.000000    0.000000    0.709996    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000   -0.903404    0.314325    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.709997   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.640972    0.000000   -0.000001    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.057117    0.000000   -0.000000    0.954818   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.314325    0.903405    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000001    0.000000   -0.000000   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956525   -0.000000   -0.000001   -0.000000   -0.000000
             0.000000    0.000001   -0.000000    0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.951775
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.951776   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.449923    0.000000    0.000000
             0.000000    0.838718    0.000000    0.000000    0.000000
 11          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.838719   -0.000000    0.000000
            -0.000000    0.449923   -0.000000   -0.000000   -0.000000
 12          0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.951772   -0.000000   -0.000000   -0.000000   -0.000000
 13         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000001    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.954081
 14         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000001
             0.000000    0.000000    0.954082   -0.000000   -0.000000
 15          0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000001   -0.000000    0.000000    0.954081   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956525    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.956525   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.956525    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.956525    0.000000   -0.000000    0.000000   -0.000000   -0.000001   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.956525    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956525    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956525    0.000000   -0.000000    0.000000
             0.000001    0.000000   -0.000000   -0.000000    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.951775   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.000000   -0.000000   -0.000000    0.951776   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.951777
            -0.000000   -0.000000    0.000000    0.000000   -0.000000
 11          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000001   -0.000000    0.000000   -0.000000
             0.951777   -0.000000    0.000000    0.000000   -0.000000
 12         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.951772   -0.000000   -0.000000   -0.000000
 13         -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.954081   -0.000000    0.000000
 14          0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.954082    0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.954081

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00821600    -1.71682132       2212220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00821450    -1.71666211       2222120222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00587708    -1.22832129       2122220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00587661    -1.22827171       2222210222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00822116    -1.71736431       2221220222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95481769 (fixed)   0.95652638 (relaxed)   0.95652450 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785300
 Singles      0.01652075   -0.07911607   -0.08131197
 Pairs        0.07644423    0.00000000   -0.04129756
 Total        1.09296889   -0.07911607   -0.59046253
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875563
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56231914
 One electron energy                 -193.30229947
 Two electron energy                   83.36308132
 Virial quotient                       -2.64516563
 Correlation energy                    -0.59046253
 !MRCI STATE 1.1 Energy              -109.939218152313

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411280 (Davidson, fixed reference)
 Cluster corrected energies          -109.99411027 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411280 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079489 (Pople, fixed reference)
 Cluster corrected energies          -109.99079234 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079489 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.70999627 (fixed)   0.95652643 (relaxed)   0.95652456 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785290
 Singles      0.01652073   -0.07911613   -0.08131201
 Pairs        0.07644412   -0.00000010   -0.04129761
 Total        1.09296876   -0.07911623   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56234034
 One electron energy                 -193.30232363
 Two electron energy                   83.36310548
 Virial quotient                       -2.64516428
 Correlation energy                    -0.59046253
 !MRCI STATE 2.1 Energy              -109.939218149651

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411272 (Davidson, fixed reference)
 Cluster corrected energies          -109.99411019 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411272 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079481 (Pople, fixed reference)
 Cluster corrected energies          -109.99079226 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079481 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.90340441 (fixed)   0.95652674 (relaxed)   0.95652487 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785319
 Singles      0.01652078   -0.07911625   -0.08131213
 Pairs        0.07644335    0.00000000   -0.04129720
 Total        1.09296805   -0.07911625   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875563
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56235642
 One electron energy                 -193.30234291
 Two electron energy                   83.36312476
 Virial quotient                       -2.64516326
 Correlation energy                    -0.59046252
 !MRCI STATE 3.1 Energy              -109.939218145520

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411230 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410977 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411230 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079438 (Pople, fixed reference)
 Cluster corrected energies          -109.99079183 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079438 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.70999671 (fixed)   0.95652698 (relaxed)   0.95652510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785339
 Singles      0.01652080   -0.07911639   -0.08131223
 Pairs        0.07644280    0.00000012   -0.04129690
 Total        1.09296752   -0.07911627   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56238664
 One electron energy                 -193.30237756
 Two electron energy                   83.36315942
 Virial quotient                       -2.64516134
 Correlation energy                    -0.59046252
 !MRCI STATE 4.1 Energy              -109.939218141863

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411198 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410945 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411198 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079406 (Pople, fixed reference)
 Cluster corrected energies          -109.99079151 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079406 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95481828 (fixed)   0.95652697 (relaxed)   0.95652510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392   -0.00000000   -0.46785316
 Singles      0.01652087   -0.07911651   -0.08131226
 Pairs        0.07644274   -0.00000000   -0.04129709
 Total        1.09296753   -0.07911651   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56238619
 One electron energy                 -193.30237695
 Two electron energy                   83.36315881
 Virial quotient                       -2.64516136
 Correlation energy                    -0.59046252
 !MRCI STATE 5.1 Energy              -109.939218140600

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411198 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410945 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411198 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079406 (Pople, fixed reference)
 Cluster corrected energies          -109.99079151 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079406 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.90340482 (fixed)   0.95652719 (relaxed)   0.95652532 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785341
 Singles      0.01652085   -0.07911647   -0.08131232
 Pairs        0.07644227    0.00000000   -0.04129679
 Total        1.09296703   -0.07911647   -0.59046251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56239550
 One electron energy                 -193.30238828
 Two electron energy                   83.36317014
 Virial quotient                       -2.64516077
 Correlation energy                    -0.59046251
 !MRCI STATE 6.1 Energy              -109.939218138417

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411169 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410916 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411169 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079377 (Pople, fixed reference)
 Cluster corrected energies          -109.99079122 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079377 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95652534 (fixed)   0.95652721 (relaxed)   0.95652534 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785307
 Singles      0.01652105   -0.07911687   -0.08131245
 Pairs        0.07644201    0.00000000   -0.04129699
 Total        1.09296698   -0.07911687   -0.59046251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56240385
 One electron energy                 -193.30239638
 Two electron energy                   83.36317825
 Virial quotient                       -2.64516024
 Correlation energy                    -0.59046251
 !MRCI STATE 7.1 Energy              -109.939218135516

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411165 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410912 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411165 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079373 (Pople, fixed reference)
 Cluster corrected energies          -109.99079118 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079373 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95177486 (fixed)   0.95621326 (relaxed)   0.95177486 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934831   -0.00000000   -0.47156447
 Singles      0.01758724   -0.07656027   -0.07878036
 Pairs        0.07696905    0.00000000   -0.04124724
 Total        1.10390459   -0.07656027   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57105712
 One electron energy                 -193.43023417
 Two electron energy                   83.50855073
 Virial quotient                       -2.64418783
 Correlation energy                    -0.59159208
 !MRCI STATE 8.1 Energy              -109.921683439756

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315257 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710410 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315257 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993380 (Pople, fixed reference)
 Cluster corrected energies          -109.97378335 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993380 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95177595 (fixed)   0.95621353 (relaxed)   0.95177595 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934658   -0.00000000   -0.47156443
 Singles      0.01758718   -0.07656053   -0.07878051
 Pairs        0.07696830    0.00000004   -0.04124713
 Total        1.10390206   -0.07656049   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57105114
 One electron energy                 -193.43021486
 Two electron energy                   83.50853142
 Virial quotient                       -2.64418821
 Correlation energy                    -0.59159208
 !MRCI STATE 9.1 Energy              -109.921683439244

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315108 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710372 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315108 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993226 (Pople, fixed reference)
 Cluster corrected energies          -109.97378297 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993226 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.83871796 (fixed)   0.95621341 (relaxed)   0.95177670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934472   -0.00000000   -0.47156457
 Singles      0.01758687   -0.07656006   -0.07878032
 Pairs        0.07696873   -0.00000000   -0.04124718
 Total        1.10390032   -0.07656006   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57103928
 One electron energy                 -193.43020063
 Two electron energy                   83.50851719
 Virial quotient                       -2.64418897
 Correlation energy                    -0.59159208
 !MRCI STATE 10.1 Energy             -109.921683438908

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315005 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710389 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315005 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993121 (Pople, fixed reference)
 Cluster corrected energies          -109.97378314 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993121 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.83871857 (fixed)   0.95621339 (relaxed)   0.95177720 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934365   -0.00000000   -0.47156461
 Singles      0.01758671   -0.07655992   -0.07878028
 Pairs        0.07696882    0.00000000   -0.04124719
 Total        1.10389917   -0.07655992   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57103799
 One electron energy                 -193.43019522
 Two electron energy                   83.50851178
 Virial quotient                       -2.64418905
 Correlation energy                    -0.59159208
 !MRCI STATE 11.1 Energy             -109.921683438535

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98314937 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710391 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98314937 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993051 (Pople, fixed reference)
 Cluster corrected energies          -109.97378316 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993051 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95177236 (fixed)   0.95621354 (relaxed)   0.95177236 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00935422   -0.00000000   -0.47156147
 Singles      0.01759011   -0.07656434   -0.07878195
 Pairs        0.07696607    0.00000000   -0.04124865
 Total        1.10391039   -0.07656434   -0.59159207
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57099501
 One electron energy                 -193.43014497
 Two electron energy                   83.50846154
 Virial quotient                       -2.64419178
 Correlation energy                    -0.59159207
 !MRCI STATE 12.1 Energy             -109.921683430227

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315600 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710370 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315600 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993730 (Pople, fixed reference)
 Cluster corrected energies          -109.97378295 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993730 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95408138 (fixed)   0.95419213 (relaxed)   0.95408138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023218    0.00000000   -0.00012636
 Singles      0.02164265   -0.08848678   -0.09232809
 Pairs        0.07669878   -0.50943728   -0.50546960
 Total        1.09857361   -0.59792406   -0.59792406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30501087
 Nuclear energy                         0.00000000
 Kinetic energy                        41.35621254
 One electron energy                 -192.88925725
 Two electron energy                   82.98632232
 Virial quotient                       -2.65747099
 Correlation energy                    -0.59792406
 !MRCI STATE 13.1 Energy             -109.902934935074

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96187447 (Davidson, fixed reference)
 Cluster corrected energies          -109.96172199 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96187447 (Davidson, rotated reference)

 Cluster corrected energies          -109.95855530 (Pople, fixed reference)
 Cluster corrected energies          -109.95840034 (Pople, relaxed reference)
 Cluster corrected energies          -109.95855530 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95408161 (fixed)   0.95419237 (relaxed)   0.95408161 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023220   -0.00000000   -0.46385261
 Singles      0.02164289   -0.08848691   -0.09232823
 Pairs        0.07669798    0.00000000   -0.04174321
 Total        1.09857308   -0.08848691   -0.59792406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30501088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.35621320
 One electron energy                 -192.88925414
 Two electron energy                   82.98631921
 Virial quotient                       -2.65747094
 Correlation energy                    -0.59792406
 !MRCI STATE 14.1 Energy             -109.902934934948

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96187415 (Davidson, fixed reference)
 Cluster corrected energies          -109.96172166 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96187415 (Davidson, rotated reference)

 Cluster corrected energies          -109.95855498 (Pople, fixed reference)
 Cluster corrected energies          -109.95840000 (Pople, relaxed reference)
 Cluster corrected energies          -109.95855498 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95408140 (fixed)   0.95419216 (relaxed)   0.95408140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023219    0.00000000   -0.46385251
 Singles      0.02164261   -0.08848680   -0.09232809
 Pairs        0.07669875    0.00000000   -0.04174347
 Total        1.09857355   -0.08848680   -0.59792406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30501088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.35620938
 One electron energy                 -192.88925604
 Two electron energy                   82.98632110
 Virial quotient                       -2.65747119
 Correlation energy                    -0.59792406
 !MRCI STATE 15.1 Energy             -109.902934934669

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96187443 (Davidson, fixed reference)
 Cluster corrected energies          -109.96172195 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96187443 (Davidson, rotated reference)

 Cluster corrected energies          -109.95855526 (Pople, fixed reference)
 Cluster corrected energies          -109.95840030 (Pople, relaxed reference)
 Cluster corrected energies          -109.95855526 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      741.16       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      4208.04   2473.00   1731.39      2.90      0.52
 REAL TIME  *      4438.76 SEC
 DISK USED  *       773.33 MB (local),        9.12 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =      -109.99411280  AU                              
 SETTING HLSDIAG(19)    =      -109.99411272  AU                              
 SETTING HLSDIAG(20)    =      -109.99411230  AU                              
 SETTING HLSDIAG(21)    =      -109.99411198  AU                              
 SETTING HLSDIAG(22)    =      -109.99411198  AU                              
 SETTING HLSDIAG(23)    =      -109.99411169  AU                              
 SETTING HLSDIAG(24)    =      -109.99411165  AU                              
 SETTING HLSDIAG(25)    =      -109.98315257  AU                              
 SETTING HLSDIAG(26)    =      -109.98315108  AU                              
 SETTING HLSDIAG(27)    =      -109.98315005  AU                              
 SETTING HLSDIAG(28)    =      -109.98314937  AU                              
 SETTING HLSDIAG(29)    =      -109.98315600  AU                              
 SETTING HLSDIAG(30)    =      -109.96187447  AU                              
 SETTING HLSDIAG(31)    =      -109.96187415  AU                              
 SETTING HLSDIAG(32)    =      -109.96187443  AU                              


         HLSDIAG
    -110.0180683
    -110.0180683
    -110.0180670
    -110.0180670
    -110.0180661
    -110.0180663
    -110.0180652
    -109.9776137
    -109.9776132
    -109.9776129
    -109.9615330
    -109.9615334
    -109.9615310
    -109.9615319
    -109.9615189
    -109.9615173
    -109.9615152
    -109.9941128
    -109.9941127
    -109.9941123
    -109.9941120
    -109.9941120
    -109.9941117
    -109.9941117
    -109.9831526
    -109.9831511
    -109.9831500
    -109.9831494
    -109.9831560
    -109.9618745
    -109.9618741
    -109.9618744
                                                  
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
 SETTING HLSDIAG(18)    =      -109.96004400                                  
 SETTING HLSDIAG(19)    =      -109.96004400                                  
 SETTING HLSDIAG(20)    =      -109.96004400                                  
 SETTING HLSDIAG(21)    =      -109.96004400                                  
 SETTING HLSDIAG(22)    =      -109.96004400                                  
 SETTING HLSDIAG(23)    =      -109.96004400                                  
 SETTING HLSDIAG(24)    =      -109.96004400                                  
 SETTING HLSDIAG(25)    =      -109.99513600                                  
 SETTING HLSDIAG(26)    =      -109.99513600                                  
 SETTING HLSDIAG(27)    =      -109.99513600                                  
 SETTING HLSDIAG(28)    =      -109.99513600                                  
 SETTING HLSDIAG(29)    =      -109.99513600                                  
 SETTING HLSDIAG(30)    =      -109.95829600                                  
 SETTING HLSDIAG(31)    =      -109.95829600                                  
 SETTING HLSDIAG(32)    =      -109.95829600                                  


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
    -109.960044
    -109.960044
    -109.960044
    -109.960044
    -109.960044
    -109.960044
    -109.960044
    -109.995136
    -109.995136
    -109.995136
    -109.995136
    -109.995136
    -109.958296
    -109.958296
    -109.958296
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:   -109.964953   -109.964953   -109.964953   -109.964953   -109.964953   -109.964953   -109.964953   -109.920936
                      -109.920936   -109.920936   -109.897980   -109.897980   -109.897980   -109.897980   -109.897980   -109.897980
                      -109.897980
 Replaced energies:   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -109.975123
                      -109.975123   -109.975123   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822
                      -109.991822

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  15

 Original energies:   -109.939218   -109.939218   -109.939218   -109.939218   -109.939218   -109.939218   -109.939218   -109.921683
                      -109.921683   -109.921683   -109.921683   -109.921683   -109.902935   -109.902935   -109.902935
 Replaced energies:   -109.960044   -109.960044   -109.960044   -109.960044   -109.960044   -109.960044   -109.960044   -109.995136
                      -109.995136   -109.995136   -109.995136   -109.995136   -109.958296   -109.958296   -109.958296



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01650700

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1026.75       0.00       0.00       0.00      -0.00     118.26       0.00       0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1026.75       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     267.52      -0.00    -964.88       0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -267.52       0.00   -1041.90      -0.00      -0.00       0.00      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    1041.90       0.00    -763.15       0.00      -0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     964.88       0.00     763.15       0.00       0.00      -0.00       0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -118.26       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -527.31

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     527.31       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.66       0.00      -1.75       0.00      -0.00      -0.00      -0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.19       0.00      -0.00       0.00      -0.00       0.37       0.00       0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -2.28       0.00       0.38       0.00      -0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.60      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       3.03      -0.00       3.60       0.00       0.00      -0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.87       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -2.44      -0.00       3.79       0.00      -0.00       0.00       0.00

   18   1.1  1.5  0.5      -0.00      -0.00    -596.41      -0.00     -19.10       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -596.17       0.00     -25.39      -0.00      -0.00      -0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00      -0.00     187.51       0.00     633.73      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00     -98.78      -0.00     519.87      -0.00       0.00      -0.00       0.00      -0.00

   20   3.1  1.5  0.5     596.41       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      98.78      -0.00      -0.00       0.00      -0.00     607.09      -0.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00    -187.51       0.00      -0.00      -0.00      -0.00     540.29       0.00       0.00      -0.00
                          596.17       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   22   5.1  1.5  0.5      19.10      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00    -519.87      -0.00      -0.00      -0.00       0.00    -491.52      -0.00      -0.00       0.00

   23   6.1  1.5  0.5      -0.00    -633.73      -0.00       0.00      -0.00       0.00     401.84       0.00       0.00       0.00
                           25.39       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00      -0.00    -540.29       0.00    -401.84      -0.00       0.00       0.00       0.00
                            0.00      -0.00    -607.09       0.00     491.52       0.00       0.00      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -304.44       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     304.44

   26   9.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     304.44      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -304.44      -0.00       0.00

   28  11.1  1.5  0.5      -0.00      -1.43      -0.00       0.00       0.00       0.00       2.06       0.00      -0.00       0.00
                            1.67      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   29  12.1  1.5  0.5       0.00      -0.00      -1.85       0.00      -0.06      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -1.85      -0.00      -0.08       0.00      -0.00       0.00       0.00

   30  13.1  1.5  0.5       0.95       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       1.52      -0.00       0.00       0.00       0.00       2.30       0.00      -0.00       0.00

   31  14.1  1.5  0.5      -0.00      -0.00       0.00       0.70      -0.00      -0.61       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       1.50       0.00      -2.22       0.00      -0.00      -0.00      -0.00       0.00

   32  15.1  1.5  0.5      -0.00      -1.46      -0.00       0.00       0.00       0.00       0.32      -0.00       0.00       0.00
                           -0.79       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00      -0.00       1.63      -0.00       2.24       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       1.18      -0.00      -0.04       0.00      -0.00      -0.00      -0.00       0.00

   34  17.1  1.5  0.5      -1.59       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.61       0.00      -0.00      -0.00      -0.00      -0.76       0.00       0.00      -0.00

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

   69   1.1  0.5  0.5       0.00      -0.00       0.00     -15.94      -0.00    -336.66      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     185.45       0.00    -439.21      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5    -304.79       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00     197.82      -0.00      -0.00       0.00      -0.00     -67.67      -0.00       0.00      -0.00

   71   3.1  0.5  0.5       0.00     267.41       0.00       0.00       0.00      -0.00       6.14       0.00       0.00       0.00
                          234.73       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5     273.67      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00     304.67       0.00      -0.00      -0.00      -0.00     531.92      -0.00       0.00      -0.00

   73   5.1  0.5  0.5      -0.00      -0.00       0.00     392.27      -0.00     389.89       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     379.32      -0.00    -219.77      -0.00       0.00       0.00      -0.00      -0.00

   74   6.1  0.5  0.5      -0.00     366.50       0.00       0.00       0.00       0.00    -462.19       0.00      -0.00       0.00
                         -335.70      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   75   7.1  0.5  0.5      -0.00       0.00     409.42       0.00      13.11      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00     409.25       0.00      17.43       0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      -0.00      -0.00      -0.00     546.79      -0.00    -387.47       0.00      -0.00     723.11      -0.00
                            0.00       0.00    -516.40      -0.00    -427.14       0.00      -0.00      -0.00       0.00     723.11

   77   9.1  0.5  0.5    -529.81       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00    -573.29       0.00      -0.00       0.00      -0.00     347.07     723.11      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00    -266.88       0.00     620.71      -0.00       0.00       0.00       0.00     738.79
                           -0.00      -0.00      -0.00     530.11       0.00      -5.08       0.00       0.00     -32.46       0.00

   79  11.1  0.5  0.5       0.00      -0.00     457.94       0.00     346.05      -0.00      -0.00      -0.00       0.00     389.07
                            0.00       0.00      -0.00       9.65      -0.00    -710.51      -0.00      -0.00    -834.35       0.00

   80  12.1  0.5  0.5       0.00     479.37       0.00       0.00      -0.00      -0.00     468.31     723.10       0.00      -0.00
                         -529.80       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     195.86      -0.00       0.00

   82  14.1  0.5  0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00     195.86       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -195.87

   83  15.1  0.5  0.5       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -195.87       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

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

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     596.41
                            0.00      -0.00      -0.00      -2.60       0.00       1.87      -0.00      -0.00       0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -3.19       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     -98.78

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -596.41      -0.00      -0.00
                           -0.66      -0.00       0.00      -0.00      -3.03       0.00       0.00       0.00      98.78       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     187.51      -0.00
                           -0.00       0.00       2.28      -0.00       0.00      -0.00       2.44     596.17       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -19.10       0.00       0.00
                            1.75      -0.00      -0.00       0.00      -3.60       0.00       0.00      -0.00    -519.87      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     633.73       0.00
                           -0.00       0.00      -0.38      -0.00      -0.00       0.00      -3.79      25.39       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.37      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -607.09

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   11  11.1  1.5  1.5    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.43       0.00
                            0.00      -0.00     622.89      -0.00      -0.00       0.00     129.57       1.67      -0.00      -0.00

   12  12.1  1.5  1.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       1.85
                            0.00      -0.00      -0.00    -883.06      -0.00     637.52       0.00       0.00      -0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00      -0.95      -0.00      -0.00
                         -622.89       0.00      -0.00       0.00     476.96      -0.00      -0.00      -0.00       1.52      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00     883.06      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       1.50

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       1.46       0.00
                            0.00       0.00    -476.96       0.00       0.00       0.00   -1527.51      -0.79       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00      -0.00      -0.00       0.00
                           -0.00    -637.52       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       1.18

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       1.59      -0.00       0.00
                         -129.57      -0.00       0.00      -0.00    1527.51      -0.00      -0.00       0.00       0.61       0.00

   18   1.1  1.5  0.5       0.00      -0.00      -0.95       0.00       0.00      -0.00       1.59       0.00       0.00       0.00
                           -1.67      -0.00       0.00       0.00       0.79       0.00      -0.00       0.00     342.25       0.00

   19   2.1  1.5  0.5       1.43       0.00      -0.00       0.00       1.46      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -1.52      -0.00      -0.00       0.00      -0.61    -342.25       0.00      -0.00

   20   3.1  1.5  0.5       0.00       1.85      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -1.50      -0.00      -1.18      -0.00      -0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00      -0.00       0.00      -0.70      -0.00      -1.63       0.00       0.00       0.00       0.00
                            0.00       1.85      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     -89.17

   22   5.1  1.5  0.5      -0.00       0.06      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       2.22       0.00       0.04       0.00      -0.00      -0.00       0.00

   23   6.1  1.5  0.5      -0.00       0.00       0.00       0.61      -0.00      -2.24       0.00       0.00       0.00       0.00
                           -0.00       0.08      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     321.63

   24   7.1  1.5  0.5      -2.06       0.00       0.00      -0.00      -0.32      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.30       0.00       0.00       0.00       0.76     -39.42       0.00      -0.00

   25   8.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   27  10.1  1.5  0.5      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5      -0.00      -0.00       0.00    -113.31       0.00    -846.14      -0.00       0.00       0.00       0.00
                            0.00     567.89      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.22

   29  12.1  1.5  0.5       0.00      -0.00    -321.32       0.00       0.00      -0.00     540.52       0.00       0.00       0.00
                         -567.89       0.00      -0.00       0.00     270.01       0.00      -0.00       0.00       1.06       0.00

   30  13.1  1.5  0.5      -0.00     321.32       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -908.86      -0.00    -227.57       0.00       0.00      -0.00      -0.00

   31  14.1  1.5  0.5     113.31      -0.00      -0.00      -0.00    -294.81       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     908.86       0.00      -0.00       0.00     -22.59       0.87      -0.00       0.00

   32  15.1  1.5  0.5      -0.00      -0.00       0.00     294.81       0.00    -415.70      -0.00       0.00       0.00       0.00
                           -0.00    -270.01       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       1.01

   33  16.1  1.5  0.5     846.14       0.00       0.00      -0.00     415.70       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     227.57      -0.00      -0.00       0.00    -331.95      -0.62       0.00      -0.00

   34  17.1  1.5  0.5       0.00    -540.52       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      22.59      -0.00     331.95      -0.00       0.00      -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -688.67
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -114.06

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     688.67       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     114.06      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -216.52       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     688.40       0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.06      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -600.29      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -731.77      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      29.32       0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -701.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.65      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.93      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.09       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.76      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.73

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.69      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.92       0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.37

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.83       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.70       0.00

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

   69   1.1  0.5  0.5      13.24      -0.00       0.00       0.00      22.40      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -36.29      -0.00       0.00      -0.00      -6.19    -465.46      -0.00      -0.00

   70   2.1  0.5  0.5      -0.00      23.53       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       7.76      -0.00     -14.16      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00      15.57      -0.00     -13.57       0.00       0.00       0.00       0.00
                           -0.00     -18.12      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     425.15

   72   4.1  0.5  0.5       0.00     -21.13       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      45.06      -0.00      14.47      -0.00      -0.00       0.00       0.00

   73   5.1  0.5  0.5     -40.84      -0.00       0.00      -0.00     -12.45       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00     -30.06       0.00      -0.00      -0.00      15.55      84.10      -0.00       0.00

   74   6.1  0.5  0.5      -0.00      -0.00      -0.00      -3.17      -0.00     -45.43      -0.00       0.00       0.00       0.00
                           -0.00      25.92       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     170.95

   75   7.1  0.5  0.5      -0.00      -0.00     -16.16       0.00       0.00       0.00      27.18       0.00       0.00       0.00
                          -28.56      -0.00       0.00       0.00      13.58       0.00       0.00      -0.00     469.89      -0.00

   76   8.1  0.5  0.5      75.55      -0.00       0.00       0.00    -149.51       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      20.51       0.00       0.00      -0.00     166.26     611.77       0.00       0.00

   77   9.1  0.5  0.5      -0.00    -132.43       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      47.33      -0.00    -160.69      -0.00      -0.00       0.00      -0.00

   78  10.1  0.5  0.5      -0.00      -0.00    -166.67      -0.00       0.00       0.00     -27.29       0.00       0.00       0.00
                          116.55      -0.00       0.00       0.00     -63.06      -0.00       0.00       0.00    -244.66      -0.00

   79  11.1  0.5  0.5       0.00       0.00     -11.29       0.00      -0.00       0.00    -143.03       0.00       0.00       0.00
                          -80.89       0.00      -0.00      -0.00    -158.13      -0.00       0.00       0.00    -564.21       0.00

   80  12.1  0.5  0.5       0.00       0.00      -0.00    -167.42      -0.00      -5.65       0.00       0.00       0.00       0.00
                           -0.00    -132.43      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00    -626.62

   81  13.1  0.5  0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01       0.00      -0.02       0.00       0.00      -0.00      -0.00

   82  14.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83  15.1  0.5  0.5      -0.00      -0.00       0.00       0.01      -0.00       0.01      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     107.07

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -175.97       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     114.21      -0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     154.39       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     135.52       0.00       0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     158.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     175.90       0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     219.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     211.60       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -193.82      -0.00      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     236.38
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -298.14

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -305.89       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -330.99       0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -154.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     264.39
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     276.76       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -305.88       0.00      -0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00      19.10      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.95
                         -596.17       0.00     -25.39      -0.00      -0.00      -0.00       0.00      -1.67      -0.00       0.00

    2   2.1  1.5  1.5    -187.51      -0.00    -633.73       0.00       0.00       0.00       0.00      -1.43      -0.00       0.00
                           -0.00     519.87      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -1.52

    3   3.1  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -1.85       0.00
                           -0.00       0.00      -0.00     607.09      -0.00       0.00      -0.00       0.00      -0.00       0.00

    4   4.1  1.5  1.5      -0.00       0.00       0.00    -540.29      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       1.85      -0.00

    5   5.1  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.06       0.00
                           -0.00       0.00       0.00    -491.52      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    6   6.1  1.5  1.5      -0.00       0.00       0.00    -401.84      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.08      -0.00

    7   7.1  1.5  1.5     540.29      -0.00     401.84      -0.00      -0.00      -0.00      -0.00       2.06      -0.00      -0.00
                            0.00     491.52       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -2.30

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00     304.44      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00     304.44      -0.00       0.00      -0.00

    9   9.1  1.5  1.5       0.00      -0.00       0.00       0.00    -304.44      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   10  10.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00    -304.44      -0.00      -0.00       0.00      -0.00      -0.00

   11  11.1  1.5  1.5      -0.00      -0.00      -0.00      -2.06      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     567.89      -0.00

   12  12.1  1.5  1.5      -0.00       0.06       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     321.32
                           -1.85      -0.00      -0.08       0.00      -0.00       0.00       0.00    -567.89      -0.00      -0.00

   13  13.1  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -321.32       0.00
                            0.00       0.00       0.00       2.30       0.00      -0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.70       0.00       0.61      -0.00      -0.00       0.00       0.00    -113.31       0.00       0.00
                            0.00      -2.22       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     908.86

   15  15.1  1.5  1.5      -0.00      -0.00      -0.00      -0.32       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -270.01       0.00

   16  16.1  1.5  1.5      -1.63       0.00      -2.24      -0.00      -0.00       0.00       0.00    -846.14      -0.00      -0.00
                           -0.00      -0.04       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     227.57

   17  17.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     540.52      -0.00
                           -0.00      -0.00      -0.00      -0.76       0.00       0.00      -0.00       0.00       0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      39.42       0.00       0.00      -0.00       0.00      -0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -1.06       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           89.17      -0.00    -321.63       0.00      -0.00       0.00       0.00      -0.22      -0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -347.30      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.76

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          347.30       0.00    -254.38       0.00      -0.00       0.00      -0.00       0.58      -0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     254.38       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.13

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.12      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    9082.74       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00    -175.77       0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00     175.77       0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                            0.00      -0.58       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     207.63

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00
                           -0.00       0.00      -0.00       0.12       0.00       0.00      -0.00       0.00      -0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73
                           -0.76       0.00       0.13       0.00      -0.00       0.00       0.00    -207.63       0.00      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     294.35      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.20       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -158.99

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00    -212.51       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.81      -0.00       1.26       0.00      -0.00       0.00       0.00     -43.19      -0.00       0.00

   35   1.1  1.5 -0.5      -0.00     -22.06       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -1.09
                         -688.40       0.00     -29.32      -0.00      -0.00      -0.00       0.00      -1.93      -0.00       0.00

   36   2.1  1.5 -0.5     216.52       0.00     731.77      -0.00      -0.00      -0.00      -0.00       1.65       0.00      -0.00
                           -0.00     600.29      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -1.76

   37   3.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       2.14      -0.00
                           -0.00       0.00      -0.00     701.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   38   4.1  1.5 -0.5      -0.00      -0.00      -0.00     623.88       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       2.14      -0.00

   39   5.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.07      -0.00
                           -0.00      -0.00       0.00    -567.56      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.00      -0.00       0.00     464.01       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.09      -0.00

   41   7.1  1.5 -0.5    -623.88       0.00    -464.01      -0.00       0.00       0.00       0.00      -2.38       0.00       0.00
                            0.00     567.56       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -2.65

   42   8.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00    -351.54       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00     351.54      -0.00       0.00      -0.00

   43   9.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00     351.54      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -351.54      -0.00       0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       2.38       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     655.75      -0.00

   46  12.1  1.5 -0.5       0.00      -0.07      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00    -371.03
                           -2.14      -0.00      -0.09       0.00      -0.00       0.00       0.00    -655.75       0.00      -0.00

   47  13.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     371.03       0.00
                            0.00       0.00       0.00       2.65       0.00      -0.00       0.00       0.00       0.00      -0.00

   48  14.1  1.5 -0.5       0.81      -0.00      -0.71       0.00       0.00      -0.00      -0.00     130.84      -0.00      -0.00
                            0.00      -2.56       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    1049.46

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.37      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -311.78       0.00

   50  16.1  1.5 -0.5       1.88      -0.00       2.59       0.00       0.00      -0.00      -0.00     977.04       0.00       0.00
                           -0.00      -0.05       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     262.78

   51  17.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -624.14       0.00
                           -0.00      -0.00      -0.00      -0.88       0.00       0.00      -0.00       0.00       0.00      -0.00

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
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      35.94       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          418.18       0.00    -560.48       0.00      -0.00      -0.00      -0.00      -8.31       0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     567.06      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      19.23

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          259.74      -0.00      53.11       0.00       0.00       0.00       0.00     -19.65      -0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -6.49       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -166.65       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -17.95

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      54.12      -0.00       0.00      -0.00       0.00       0.00      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     152.92       0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          591.05       0.00     499.48       0.00      -0.00    -834.98      -0.00     188.96      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -727.10     815.61      -0.00      -0.00       0.00       0.00      -0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     375.62    -514.17      -0.00       0.00      -0.00       0.00       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     454.04      -0.00       0.00      -0.00       0.00    -834.97      -0.00      -0.00    -179.96

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     226.17      -0.00      -0.00       0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -226.16      -0.00       0.00       0.00

   84   1.1  0.5 -0.5      -9.20      -0.00    -194.37      -0.00      -0.00       0.00      -0.00       7.64      -0.00       0.00
                            0.00    -253.58      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -20.95

   85   2.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      13.59       0.00
                           -0.00       0.00      -0.00     -39.07      -0.00       0.00      -0.00       0.00       0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00      -0.00       3.55       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -10.46      -0.00

   87   4.1  0.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     -12.20       0.00
                           -0.00      -0.00      -0.00     307.11      -0.00       0.00      -0.00       0.00       0.00      -0.00

   88   5.1  0.5 -0.5     226.48      -0.00     225.10       0.00      -0.00       0.00      -0.00     -23.58      -0.00       0.00
                           -0.00    -126.88      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     -17.36

   89   6.1  0.5 -0.5       0.00       0.00       0.00    -266.84       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      14.96       0.00

   90   7.1  0.5 -0.5       0.00       7.57      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -9.33
                          236.28       0.00      10.06       0.00      -0.00      -0.00      -0.00     -16.49      -0.00       0.00

   91   8.1  0.5 -0.5     315.69      -0.00    -223.71       0.00      -0.00     417.49      -0.00      43.62      -0.00       0.00
                           -0.00    -246.61       0.00      -0.00      -0.00       0.00     417.49       0.00       0.00      11.84

   92   9.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -76.46       0.00
                           -0.00       0.00      -0.00     200.38     417.49      -0.00      -0.00      -0.00      -0.00       0.00

   93  10.1  0.5 -0.5       0.00     358.37      -0.00       0.00       0.00       0.00     426.54      -0.00      -0.00     -96.23
                          306.06       0.00      -2.93       0.00       0.00     -18.74       0.00      67.29      -0.00       0.00

   94  11.1  0.5 -0.5       0.00     199.79      -0.00      -0.00      -0.00       0.00     224.63       0.00       0.00      -6.52
                            5.57      -0.00    -410.22      -0.00      -0.00    -481.71       0.00     -46.70       0.00      -0.00

   95  12.1  0.5 -0.5       0.00      -0.00      -0.00     270.38     417.48       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -76.46      -0.00

   96  13.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     113.08      -0.00       0.00      -0.00      -0.00      -0.00

   97  14.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00     113.08       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00    -113.08      -0.00       0.00      -0.00

   98  15.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00    -113.08       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00      -0.00       0.00      -1.59       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.79       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -0.00      -1.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.61       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.50      -0.00      -1.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.70       0.00       1.63      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.22       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.61       0.00       2.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.76       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5     113.31      -0.00     846.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00      -0.00       0.00    -540.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     270.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -908.86      -0.00    -227.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00     294.81      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -22.59       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5    -294.81       0.00     415.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00    -415.70       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -331.95       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.59      -0.00     331.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     688.67       0.00      22.06      -0.00
                           -0.87       0.00       0.62      -0.00      -0.00       0.00      -0.00    -688.40       0.00     -29.32

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -216.52      -0.00    -731.77
                            0.00       0.00      -0.00       0.00      -0.00      -0.00    -114.06      -0.00     600.29      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00    -688.67      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -1.01       0.00       0.00       0.00     114.06       0.00      -0.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     216.52      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.81     688.40       0.00       0.00      -0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00     -22.06       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -1.20       0.00       0.00      -0.00    -600.29      -0.00      -0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     731.77       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -1.26      29.32       0.00       0.00      -0.00      -0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     623.88      -0.00     464.01
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00    -701.00       0.00     567.56       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       1.65       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      43.19       1.93      -0.00      -0.00      -0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       2.14      -0.00       0.07       0.00
                         -294.35      -0.00     212.51       0.00       0.00      -0.00       0.00      -2.14      -0.00      -0.09

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00      -1.09      -0.00      -0.00       0.00      -0.00       0.00
                            0.00     158.99      -0.00      -0.00      -0.00       1.76      -0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5    5417.73       0.00       0.00       0.00       0.00       0.00      -0.00      -0.81       0.00       0.71
                            0.00      -0.00       0.00       0.00      -0.00       0.00       1.73       0.00      -2.56       0.00

   32  15.1  1.5  0.5       0.00    5417.73       0.00       0.00       0.00       1.69       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -509.17      -0.92       0.00       0.00       0.00      -0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00    5417.73       0.00      -0.00      -0.00       0.00      -1.88       0.00      -2.59
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       1.37      -0.00      -0.05       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00    5417.73       1.83      -0.00       0.00       0.00       0.00       0.00
                           -0.00     509.17      -0.00      -0.00       0.00       0.70       0.00      -0.00      -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00      -0.00       1.83       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.92       0.00      -0.00      -0.00    -342.25      -0.00      -0.00      -0.00       0.00

   36   2.1  1.5 -0.5       0.00       1.69      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.70     342.25      -0.00       0.00      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.73      -0.00      -1.37      -0.00       0.00      -0.00      -0.00     -89.17       0.00     321.63

   38   4.1  1.5 -0.5      -0.81      -0.00      -1.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      89.17      -0.00     347.30       0.00

   39   5.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.56       0.00       0.05       0.00       0.00       0.00      -0.00    -347.30      -0.00     254.38

   40   6.1  1.5 -0.5       0.71      -0.00      -2.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00    -321.63      -0.00    -254.38      -0.00

   41   7.1  1.5 -0.5      -0.00      -0.37      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.88      39.42      -0.00       0.00      -0.00       0.00       0.00

   42   8.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   45  11.1  1.5 -0.5    -130.84       0.00    -977.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.22      -0.00       0.58      -0.00

   46  12.1  1.5 -0.5       0.00       0.00      -0.00     624.14       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     311.78       0.00      -0.00      -0.00      -1.06      -0.00       0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1049.46      -0.00    -262.78       0.00      -0.00       0.00       0.00       0.76      -0.00      -0.13

   48  14.1  1.5 -0.5      -0.00    -340.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -26.09      -0.87       0.00      -0.00      -0.00       0.00      -0.00

   49  15.1  1.5 -0.5     340.42       0.00    -480.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -1.01       0.00      -1.20      -0.00

   50  16.1  1.5 -0.5      -0.00     480.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -383.30       0.62      -0.00       0.00      -0.00       0.00       0.00

   51  17.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.09      -0.00     383.30      -0.00      -0.00       0.00       0.00       0.81       0.00      -1.26

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -596.41      -0.00     -19.10       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -596.17       0.00     -25.39

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     187.51       0.00     633.73
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -98.78      -0.00     519.87      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00     596.41       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      98.78      -0.00      -0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -187.51       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     596.17       0.00       0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00      19.10      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -519.87      -0.00      -0.00      -0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -633.73      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      25.39       0.00       0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -540.29       0.00    -401.84
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -607.09       0.00     491.52       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -1.43      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       1.67      -0.00      -0.00      -0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -1.85       0.00      -0.06      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -1.85      -0.00      -0.08

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.95       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       1.52      -0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.70      -0.00      -0.61
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.50       0.00      -2.22       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -1.46      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.79       0.00       0.00       0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.63      -0.00       2.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.18      -0.00      -0.04       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00      -1.59       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.61       0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -9.20      -0.00    -194.37
                            0.00       0.00      -0.00       0.00      -0.00      -0.00    -107.07      -0.00     253.58       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00    -175.97       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      53.35       0.00      -0.00       0.00    -114.21       0.00       0.00      -0.00       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00     154.39       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      51.23    -135.52      -0.00      -0.00      -0.00      -0.00       0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00     158.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       5.75       0.00       0.00      -0.00    -175.90      -0.00       0.00       0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     226.48      -0.00     225.10
                            0.00      -0.00      -0.00       0.00       0.00       0.00    -219.00       0.00     126.88       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     211.60       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       4.20     193.82       0.00       0.00       0.00       0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     236.38       0.00       7.57      -0.00
                           29.61      -0.00     -21.38       0.00       0.00       0.00      -0.00    -236.28      -0.00     -10.06

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     315.69      -0.00    -223.71
                            0.00      -0.00       0.00       0.00      -0.00      -0.00     298.14       0.00     246.61      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00    -305.89       0.00       0.00      -0.00      -0.00       0.00
                            0.00      41.31      -0.00       0.00       0.00     330.99      -0.00       0.00      -0.00       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -154.08       0.00     358.37      -0.00
                          167.71      -0.00      92.98       0.00       0.00       0.00       0.00    -306.06      -0.00       2.93

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     264.39       0.00     199.79      -0.00
                           40.84      -0.00    -164.43      -0.00      -0.00      -0.00       0.00      -5.57       0.00     410.22

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00     276.76       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      70.92     305.88      -0.00       0.00       0.00       0.00       0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.01      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   84   1.1  0.5 -0.5       0.00      12.93      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -3.57    -465.46      -0.00      -0.00       0.00      -0.00      -0.00

   85   2.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.48      -0.00      -8.17      -0.00      -0.00      -0.00      -0.00     418.18       0.00    -560.48

   86   3.1  0.5 -0.5       8.99      -0.00      -7.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00     425.15      -0.00     567.06      -0.00

   87   4.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.02      -0.00       8.35      -0.00      -0.00       0.00       0.00     259.74      -0.00      53.11

   88   5.1  0.5 -0.5      -0.00      -7.19       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       8.98      84.10      -0.00       0.00       0.00      -0.00       0.00

   89   6.1  0.5 -0.5      -1.83      -0.00     -26.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00     170.95       0.00    -166.65       0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00      15.70       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       7.84       0.00       0.00      -0.00     469.89      -0.00       0.00       0.00      -0.00

   91   8.1  0.5 -0.5       0.00     -86.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      95.99     611.77       0.00       0.00      -0.00       0.00      -0.00

   92   9.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           27.33      -0.00     -92.78      -0.00      -0.00       0.00      -0.00     591.05       0.00     499.48

   93  10.1  0.5 -0.5      -0.00       0.00       0.00     -15.76       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -36.41      -0.00       0.00       0.00    -244.66      -0.00       0.00       0.00       0.00

   94  11.1  0.5 -0.5       0.00      -0.00       0.00     -82.58       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -91.30      -0.00       0.00       0.00    -564.21       0.00      -0.00      -0.00      -0.00

   95  12.1  0.5 -0.5     -96.66      -0.00      -3.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00    -626.62      -0.00     454.04      -0.00

   96  13.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   97  14.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   98  15.1  0.5 -0.5       0.00      -0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00


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

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       1.09      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -1.93      -0.00       0.00       0.00       0.92       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -1.65      -0.00       0.00      -0.00      -1.69       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -1.76      -0.00      -0.00       0.00

   20   3.1  1.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00      -2.14       0.00       0.00      -0.00      -0.00
                          701.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -1.73      -0.00      -1.37

   21   4.1  1.5  0.5    -623.88      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.81       0.00       1.88
                           -0.00       0.00       0.00      -0.00       0.00       2.14      -0.00      -0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00      -0.00       0.00       0.00       0.00      -0.07       0.00      -0.00       0.00      -0.00
                         -567.56      -0.00      -0.00       0.00      -0.00       0.00      -0.00       2.56       0.00       0.05

   23   6.1  1.5  0.5    -464.01      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.71       0.00       2.59
                           -0.00      -0.00       0.00      -0.00      -0.00       0.09      -0.00      -0.00       0.00      -0.00

   24   7.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00       2.38      -0.00      -0.00       0.00       0.37       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -2.65       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00     351.54      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00     351.54      -0.00       0.00      -0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00    -351.54      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00    -351.54      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5      -2.38      -0.00       0.00      -0.00      -0.00       0.00      -0.00     130.84      -0.00     977.04
                           -0.00       0.00      -0.00      -0.00      -0.00     655.75      -0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00     371.03      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00    -655.75      -0.00      -0.00       0.00     311.78       0.00

   30  13.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00    -371.03       0.00      -0.00       0.00       0.00
                            2.65       0.00      -0.00       0.00       0.00       0.00       0.00   -1049.46      -0.00    -262.78

   31  14.1  1.5  0.5      -0.00      -0.00       0.00       0.00    -130.84       0.00       0.00      -0.00     340.42      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    1049.46      -0.00      -0.00       0.00

   32  15.1  1.5  0.5      -0.37       0.00      -0.00      -0.00       0.00       0.00      -0.00    -340.42       0.00     480.01
                           -0.00      -0.00       0.00      -0.00      -0.00    -311.78       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.00      -0.00       0.00       0.00    -977.04      -0.00      -0.00       0.00    -480.01       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     262.78      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00     624.14      -0.00       0.00      -0.00       0.00
                           -0.88       0.00       0.00      -0.00       0.00       0.00      -0.00      26.09      -0.00     383.30

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -39.42      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.87      -0.00      -0.62

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       1.06      -0.00      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.22       0.00      -0.00       0.00       1.01      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.76       0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.58       0.00       0.00      -0.00       1.20      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.13       0.00       0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.12       0.00      -0.00       0.00       0.00

   42   8.1  1.5 -0.5       0.00    9082.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00    9082.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     175.77      -0.00       0.00       0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    9082.74       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -175.77      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00    -207.63       0.00       0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                           -0.12      -0.00      -0.00       0.00      -0.00       0.00       0.00     294.35       0.00    -212.51

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     207.63      -0.00       0.00      -0.00    -158.99       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00    -294.35       0.00      -0.00       0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00     158.99      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73
                           -0.00       0.00      -0.00       0.00       0.00     212.51      -0.00       0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      43.19       0.00      -0.00       0.00    -509.17       0.00

   52   1.1  1.5 -1.5      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.95       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -1.67      -0.00       0.00       0.00       0.79       0.00

   53   2.1  1.5 -1.5      -0.00      -0.00      -0.00      -0.00       1.43       0.00      -0.00       0.00       1.46      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -1.52      -0.00      -0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       1.85      -0.00      -0.00       0.00       0.00
                          607.09      -0.00       0.00      -0.00       0.00      -0.00       0.00      -1.50      -0.00      -1.18

   55   4.1  1.5 -1.5     540.29       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.70      -0.00      -1.63
                           -0.00       0.00       0.00      -0.00       0.00       1.85      -0.00      -0.00      -0.00       0.00

   56   5.1  1.5 -1.5      -0.00       0.00      -0.00      -0.00      -0.00       0.06      -0.00       0.00      -0.00       0.00
                         -491.52      -0.00      -0.00       0.00      -0.00       0.00      -0.00       2.22       0.00       0.04

   57   6.1  1.5 -1.5     401.84       0.00       0.00       0.00      -0.00       0.00       0.00       0.61      -0.00      -2.24
                           -0.00      -0.00       0.00      -0.00      -0.00       0.08      -0.00      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00      -2.06       0.00       0.00      -0.00      -0.32      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -2.30       0.00       0.00       0.00

   59   8.1  1.5 -1.5      -0.00       0.00    -304.44       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00     304.44      -0.00       0.00      -0.00       0.00       0.00       0.00

   60   9.1  1.5 -1.5      -0.00     304.44      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   61  10.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00    -304.44      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   62  11.1  1.5 -1.5       2.06       0.00      -0.00       0.00      -0.00      -0.00       0.00    -113.31       0.00    -846.14
                           -0.00       0.00      -0.00      -0.00       0.00     567.89      -0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5      -0.00       0.00       0.00      -0.00       0.00      -0.00    -321.32       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00    -567.89       0.00      -0.00       0.00     270.01       0.00

   64  13.1  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00     321.32       0.00       0.00      -0.00      -0.00
                            2.30       0.00      -0.00       0.00       0.00       0.00      -0.00    -908.86      -0.00    -227.57

   65  14.1  1.5 -1.5       0.00       0.00      -0.00      -0.00     113.31      -0.00      -0.00      -0.00    -294.81       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     908.86       0.00      -0.00       0.00

   66  15.1  1.5 -1.5       0.32      -0.00       0.00       0.00      -0.00      -0.00       0.00     294.81       0.00    -415.70
                           -0.00      -0.00       0.00      -0.00      -0.00    -270.01       0.00       0.00      -0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00      -0.00      -0.00     846.14       0.00       0.00      -0.00     415.70       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     227.57      -0.00      -0.00       0.00

   68  17.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.00    -540.52       0.00      -0.00       0.00      -0.00
                           -0.76       0.00       0.00      -0.00       0.00       0.00      -0.00      22.59      -0.00     331.95

   69   1.1  0.5  0.5      -0.00      -0.00       0.00      -0.00       7.64      -0.00       0.00       0.00      12.93      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      20.95       0.00      -0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00      13.59       0.00      -0.00       0.00      -0.00
                           39.07       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -4.48       0.00       8.17

   71   3.1  0.5  0.5       3.55       0.00       0.00       0.00       0.00       0.00       0.00       8.99      -0.00      -7.84
                            0.00       0.00       0.00       0.00       0.00      10.46       0.00       0.00      -0.00      -0.00

   72   4.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00       0.00     -12.20       0.00      -0.00      -0.00       0.00
                         -307.11       0.00      -0.00       0.00      -0.00      -0.00       0.00     -26.02       0.00      -8.35

   73   5.1  0.5  0.5       0.00      -0.00       0.00      -0.00     -23.58      -0.00       0.00      -0.00      -7.19       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      17.36      -0.00       0.00       0.00

   74   6.1  0.5  0.5    -266.84       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -1.83      -0.00     -26.23
                           -0.00       0.00       0.00      -0.00       0.00     -14.96      -0.00      -0.00      -0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      -9.33       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      16.49       0.00      -0.00      -0.00      -7.84      -0.00

   76   8.1  0.5  0.5       0.00      -0.00     417.49      -0.00      43.62      -0.00       0.00       0.00     -86.32       0.00
                            0.00       0.00      -0.00    -417.49      -0.00      -0.00     -11.84      -0.00      -0.00       0.00

   77   9.1  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00     -76.46       0.00      -0.00       0.00      -0.00
                         -200.38    -417.49       0.00       0.00       0.00       0.00      -0.00     -27.33       0.00      92.78

   78  10.1  0.5  0.5       0.00       0.00       0.00     426.54      -0.00      -0.00     -96.23      -0.00       0.00       0.00
                           -0.00      -0.00      18.74      -0.00     -67.29       0.00      -0.00      -0.00      36.41       0.00

   79  11.1  0.5  0.5      -0.00      -0.00       0.00     224.63       0.00       0.00      -6.52       0.00      -0.00       0.00
                            0.00       0.00     481.71      -0.00      46.70      -0.00       0.00       0.00      91.30       0.00

   80  12.1  0.5  0.5     270.38     417.48       0.00      -0.00       0.00       0.00      -0.00     -96.66      -0.00      -3.26
                            0.00       0.00       0.00      -0.00       0.00      76.46       0.00      -0.00       0.00       0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00    -113.08       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.01

   82  14.1  0.5  0.5       0.00       0.00     113.08       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00     113.08       0.00      -0.00       0.00      -0.00       0.00       0.00

   83  15.1  0.5  0.5      -0.00    -113.08       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.01
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      35.94       0.00       0.00       0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -8.31       0.00      -0.00      -0.00      53.35       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      19.23      -0.00      -0.00       0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -19.65      -0.00       0.00      -0.00       5.75       0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -6.49       0.00       0.00      -0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00     -17.95       0.00       0.00      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           54.12      -0.00       0.00      -0.00       0.00       0.00      -0.00      29.61      -0.00     -21.38

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00     152.92       0.00       0.00      -0.00       0.00

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -834.98      -0.00     188.96      -0.00      -0.00       0.00      41.31      -0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -727.10     815.61      -0.00      -0.00       0.00       0.00      -0.00     167.71      -0.00      92.98

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          375.62    -514.17      -0.00       0.00      -0.00       0.00       0.00      40.84      -0.00    -164.43

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -834.97      -0.00      -0.00    -179.96      -0.00      -0.00      -0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     226.17      -0.00      -0.00       0.00      -0.00      -0.00       0.01      -0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -226.16      -0.00       0.00       0.00      -0.00      -0.00      -0.00


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

   18   1.1  1.5  0.5      -1.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5    -624.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -383.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00     596.41       0.00      19.10      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00    -596.17       0.00     -25.39      -0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00      -0.00       0.00       0.00    -187.51      -0.00    -633.73       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -98.78      -0.00     519.87      -0.00       0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00    -596.41      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      98.78       0.00      -0.00       0.00      -0.00     607.09      -0.00       0.00

   38   4.1  1.5 -0.5       0.00      -0.00     187.51      -0.00      -0.00       0.00       0.00    -540.29      -0.00      -0.00
                           -0.81     596.17       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   39   5.1  1.5 -0.5       0.00     -19.10       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00    -519.87      -0.00      -0.00       0.00       0.00    -491.52      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00     633.73       0.00      -0.00       0.00       0.00    -401.84      -0.00      -0.00
                            1.26      25.39       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   41   7.1  1.5 -0.5       0.00      -0.00      -0.00       0.00     540.29      -0.00     401.84      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -607.09       0.00     491.52       0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     304.44
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -304.44      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -304.44      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       1.43       0.00      -0.00      -0.00      -0.00      -2.06      -0.00       0.00
                          -43.19       1.67      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   46  12.1  1.5 -0.5       0.00      -0.00       0.00       1.85      -0.00       0.06       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -1.85      -0.00      -0.08       0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00      -0.95      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       1.52      -0.00       0.00       0.00       0.00       2.30       0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.70       0.00       0.61      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       1.50       0.00      -2.22       0.00      -0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       1.46       0.00      -0.00      -0.00      -0.00      -0.32       0.00      -0.00
                          509.17      -0.79       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -1.63       0.00      -2.24      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       1.18      -0.00      -0.04       0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5    5417.73       1.59      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.61       0.00      -0.00      -0.00      -0.00      -0.76       0.00       0.00

   52   1.1  1.5 -1.5       1.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1026.75      -0.00      -0.00      -0.00       0.00    -118.26      -0.00      -0.00

   53   2.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.61    1026.75      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -267.52       0.00     964.88      -0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     267.52      -0.00    1041.90       0.00       0.00      -0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00   -1041.90      -0.00     763.15      -0.00       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -964.88      -0.00    -763.15      -0.00      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.76     118.26      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   61  10.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00    -527.31

   62  11.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.66      -0.00       1.75      -0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5     540.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -3.19      -0.00       0.00      -0.00       0.00      -0.37      -0.00      -0.00

   64  13.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       2.28      -0.00      -0.38      -0.00       0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.59      -2.60       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -3.03       0.00      -3.60      -0.00      -0.00       0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -331.95       1.87      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   68  17.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       2.44       0.00      -3.79      -0.00       0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.57      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.98      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      15.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -95.99      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5     -15.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5     -82.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81  13.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82  14.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83  15.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00      -0.00       0.00     -15.94      -0.00    -336.66      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -185.45      -0.00     439.21       0.00       0.00       0.00       0.00

   85   2.1  0.5 -0.5       0.00    -304.79       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00    -197.82       0.00       0.00      -0.00       0.00      67.67       0.00      -0.00

   86   3.1  0.5 -0.5       0.00       0.00     267.41       0.00       0.00       0.00      -0.00       6.14       0.00       0.00
                           51.23    -234.73      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   87   4.1  0.5 -0.5       0.00     273.67      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00    -304.67      -0.00       0.00       0.00       0.00    -531.92       0.00      -0.00

   88   5.1  0.5 -0.5       0.00      -0.00      -0.00       0.00     392.27      -0.00     389.89       0.00      -0.00       0.00
                            0.00       0.00       0.00    -379.32       0.00     219.77       0.00      -0.00      -0.00       0.00

   89   6.1  0.5 -0.5       0.00      -0.00     366.50       0.00       0.00       0.00       0.00    -462.19       0.00      -0.00
                            4.20     335.70       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   90   7.1  0.5 -0.5       0.00      -0.00       0.00     409.42       0.00      13.11      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00    -409.25      -0.00     -17.43      -0.00       0.00       0.00

   91   8.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00     546.79      -0.00    -387.47       0.00      -0.00     723.11
                            0.00      -0.00      -0.00     516.40       0.00     427.14      -0.00       0.00       0.00      -0.00

   92   9.1  0.5 -0.5       0.00    -529.81       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00     573.29      -0.00       0.00      -0.00       0.00    -347.07    -723.11       0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00    -266.88       0.00     620.71      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -530.11      -0.00       5.08      -0.00      -0.00      32.46

   94  11.1  0.5 -0.5       0.00       0.00      -0.00     457.94       0.00     346.05      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -9.65       0.00     710.51       0.00       0.00     834.35

   95  12.1  0.5 -0.5       0.00       0.00     479.37       0.00       0.00      -0.00      -0.00     468.31     723.10       0.00
                           70.92     529.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -195.86       0.00

   97  14.1  0.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00     195.86
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -195.87       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -304.79
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -197.82

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -185.45       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.94       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     439.21      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -336.66      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      67.67

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.24      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      23.53
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      36.29      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -7.76

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.40       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      14.16

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       6.19       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     465.46       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -418.18

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     560.48

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.31

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -35.94      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -53.35

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00       0.95      -0.00      -0.00       0.00      -1.59       0.00    -175.97
                            0.00      -1.67      -0.00       0.00       0.00       0.79       0.00      -0.00       0.00      -0.00

   36   2.1  1.5 -0.5       0.00      -1.43      -0.00       0.00      -0.00      -1.46       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -1.52      -0.00      -0.00       0.00      -0.61       0.00     114.21

   37   3.1  1.5 -0.5       0.00      -0.00      -1.85       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -1.50      -0.00      -1.18      -0.00     107.07      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.70       0.00       1.63      -0.00      -9.20       0.00
                           -0.00       0.00       1.85      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00      -0.06       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       2.22       0.00       0.04       0.00    -253.58       0.00

   40   6.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.61       0.00       2.24      -0.00    -194.37      -0.00
                           -0.00      -0.00       0.08      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   41   7.1  1.5 -0.5      -0.00       2.06      -0.00      -0.00       0.00       0.32       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -2.30       0.00       0.00       0.00       0.76      -0.00     -39.07

   42   8.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                          304.44      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00     113.31      -0.00     846.14       0.00       7.64      -0.00
                           -0.00      -0.00     567.89      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   46  12.1  1.5 -0.5       0.00      -0.00      -0.00     321.32      -0.00      -0.00       0.00    -540.52      -0.00      13.59
                            0.00    -567.89      -0.00      -0.00       0.00     270.01       0.00      -0.00       0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00    -321.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -908.86      -0.00    -227.57       0.00     -20.95       0.00

   48  14.1  1.5 -0.5       0.00    -113.31       0.00       0.00      -0.00     294.81      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00     908.86      -0.00      -0.00       0.00     -22.59      -0.00       4.48

   49  15.1  1.5 -0.5      -0.00       0.00       0.00      -0.00    -294.81       0.00     415.70       0.00      12.93       0.00
                           -0.00      -0.00    -270.01       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   50  16.1  1.5 -0.5       0.00    -846.14      -0.00      -0.00       0.00    -415.70       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00     227.57      -0.00      -0.00      -0.00    -331.95      -0.00      -8.17

   51  17.1  1.5 -0.5      -0.00      -0.00     540.52      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      22.59      -0.00     331.95       0.00      -3.57      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       2.60      -0.00      -1.87       0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       3.19      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.66       0.00      -0.00       0.00       3.03      -0.00      -0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -2.28       0.00      -0.00       0.00      -2.44       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.75       0.00       0.00      -0.00       3.60      -0.00      -0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.38       0.00       0.00      -0.00       3.79       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.37       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          527.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   61  10.1  1.5 -1.5    9082.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -622.89       0.00       0.00      -0.00    -129.57       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     883.06       0.00    -637.52      -0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     622.89      -0.00       0.00      -0.00    -476.96       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -883.06       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     476.96      -0.00      -0.00      -0.00    1527.51       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                            0.00       0.00     637.52      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                           -0.00     129.57       0.00      -0.00       0.00   -1527.51       0.00       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12392.20       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12392.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     993.92

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      11.70

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     661.60      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     312.59       0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     303.40      -0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      97.47

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   84   1.1  0.5 -0.5      -0.00      13.24      -0.00       0.00       0.00      22.40      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      36.29       0.00      -0.00       0.00       6.19      -0.00     278.68

   85   2.1  0.5 -0.5       0.00      -0.00      23.53       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -7.76       0.00      14.16       0.00    -278.68       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00      15.57      -0.00     -13.57       0.00    -423.05       0.00
                            0.00       0.00      18.12       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   87   4.1  0.5 -0.5      -0.00       0.00     -21.13       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00     -45.06       0.00     -14.47       0.00    -731.20      -0.00

   88   5.1  0.5 -0.5      -0.00     -40.84      -0.00       0.00      -0.00     -12.45       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      30.06      -0.00       0.00       0.00     -15.55       0.00    -200.23

   89   6.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00      -3.17      -0.00     -45.43      -0.00    -356.40      -0.00
                           -0.00       0.00     -25.92      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   90   7.1  0.5 -0.5       0.00      -0.00      -0.00     -16.16       0.00       0.00       0.00      27.18       0.00    -500.25
                            0.00      28.56       0.00      -0.00      -0.00     -13.58      -0.00      -0.00      -0.00       0.00

   91   8.1  0.5 -0.5      -0.00      75.55      -0.00       0.00       0.00    -149.51       0.00      -0.00      -0.00      -0.00
                         -723.11      -0.00      -0.00     -20.51      -0.00      -0.00       0.00    -166.26      -0.00    -542.75

   92   9.1  0.5 -0.5       0.00      -0.00    -132.43       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -47.33       0.00     160.69       0.00    -364.11       0.00

   93  10.1  0.5 -0.5     738.79      -0.00      -0.00    -166.67      -0.00       0.00       0.00     -27.29       0.00     192.04
                           -0.00    -116.55       0.00      -0.00      -0.00      63.06       0.00      -0.00      -0.00       0.00

   94  11.1  0.5 -0.5     389.07       0.00       0.00     -11.29       0.00      -0.00       0.00    -143.03      -0.00     462.92
                           -0.00      80.89      -0.00       0.00       0.00     158.13       0.00      -0.00       0.00      -0.00

   95  12.1  0.5 -0.5      -0.00       0.00       0.00      -0.00    -167.42      -0.00      -5.65       0.00     482.61       0.00
                           -0.00       0.00     132.43       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   96  13.1  0.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.01      -0.00       0.02      -0.00       0.00      -0.00

   97  14.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00       0.00
                          195.87       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   98  15.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.01      -0.00       0.01      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5       0.00     273.67      -0.00      -0.00      -0.00      -0.00    -529.81       0.00       0.00       0.00
                         -234.73      -0.00       0.00     335.70       0.00      -0.00       0.00       0.00      -0.00     529.80

    2   2.1  1.5  1.5     267.41      -0.00      -0.00     366.50       0.00      -0.00       0.00       0.00      -0.00     479.37
                           -0.00    -304.67       0.00       0.00       0.00      -0.00     573.29       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00     409.42      -0.00       0.00    -266.88     457.94       0.00
                           -0.00      -0.00    -379.32       0.00      -0.00     516.40      -0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00     392.27       0.00       0.00     546.79      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    -409.25       0.00       0.00    -530.11      -9.65       0.00

    5   5.1  1.5  1.5       0.00       0.00      -0.00       0.00      13.11      -0.00      -0.00     620.71     346.05      -0.00
                           -0.00       0.00     219.77       0.00      -0.00     427.14      -0.00      -0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00       0.00     389.89       0.00      -0.00    -387.47       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00     -17.43      -0.00       0.00       5.08     710.51       0.00

    7   7.1  1.5  1.5       6.14      -0.00       0.00    -462.19       0.00       0.00       0.00       0.00      -0.00     468.31
                            0.00    -531.92      -0.00      -0.00      -0.00       0.00    -347.07      -0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     723.10
                            0.00       0.00      -0.00       0.00       0.00       0.00    -723.11      -0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00      -0.00       0.00      -0.00      -0.00     723.11      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      32.46     834.35       0.00

   10  10.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     738.79     389.07      -0.00
                            0.00       0.00       0.00      -0.00       0.00    -723.11       0.00      -0.00      -0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00     -40.84      -0.00      -0.00      75.55      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      28.56      -0.00       0.00    -116.55      80.89       0.00

   12  12.1  1.5  1.5       0.00     -21.13      -0.00      -0.00      -0.00      -0.00    -132.43      -0.00       0.00       0.00
                           18.12      -0.00      -0.00     -25.92       0.00      -0.00       0.00       0.00      -0.00     132.43

   13  13.1  1.5  1.5       0.00       0.00       0.00      -0.00     -16.16       0.00       0.00    -166.67     -11.29      -0.00
                            0.00       0.00      30.06      -0.00      -0.00     -20.51      -0.00      -0.00       0.00       0.00

   14  14.1  1.5  1.5      15.57      -0.00      -0.00      -3.17       0.00       0.00      -0.00      -0.00       0.00    -167.42
                            0.00     -45.06      -0.00      -0.00      -0.00      -0.00     -47.33      -0.00       0.00      -0.00

   15  15.1  1.5  1.5      -0.00      -0.00     -12.45      -0.00       0.00    -149.51       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00     -13.58      -0.00       0.00      63.06     158.13       0.00

   16  16.1  1.5  1.5     -13.57       0.00       0.00     -45.43       0.00       0.00      -0.00       0.00       0.00      -5.65
                           -0.00     -14.47       0.00       0.00      -0.00       0.00     160.69       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00      -0.00      -0.00      27.18      -0.00      -0.00     -27.29    -143.03       0.00
                           -0.00       0.00     -15.55       0.00      -0.00    -166.26       0.00      -0.00      -0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -84.10       0.00       0.00    -611.77       0.00      -0.00      -0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -469.89      -0.00      -0.00     244.66     564.21      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -425.15      -0.00      -0.00    -170.95       0.00      -0.00       0.00       0.00      -0.00     626.62

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -259.74      -0.00      -0.00      -0.00       0.00    -591.05      -0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -567.06       0.00       0.00     166.65      -0.00      -0.00      -0.00      -0.00       0.00    -454.04

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -53.11      -0.00      -0.00       0.00       0.00    -499.48      -0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -54.12       0.00      -0.00     727.10    -375.62      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00    -815.61     514.17       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00     834.98       0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     834.97

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      19.65       0.00      -0.00      -0.00      -0.00    -188.96      -0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       6.49       0.00      -0.00    -152.92       0.00      -0.00      -0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.23      -0.00      -0.00      17.95       0.00      -0.00       0.00       0.00      -0.00     179.96

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -29.61      -0.00      -0.00    -167.71     -40.84       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.75       0.00      -0.00       0.00       0.00     -41.31       0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      21.38      -0.00       0.00     -92.98     164.43       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -51.23      -0.00      -0.00      -4.20      -0.00      -0.00      -0.00      -0.00       0.00     -70.92

   35   1.1  1.5 -0.5       0.00     158.00      -0.00      -0.00      -0.00      -0.00    -305.89       0.00       0.00       0.00
                          135.52       0.00      -0.00    -193.82      -0.00       0.00      -0.00      -0.00       0.00    -305.88

   36   2.1  1.5 -0.5     154.39      -0.00      -0.00     211.60       0.00      -0.00       0.00       0.00      -0.00     276.76
                            0.00     175.90      -0.00      -0.00      -0.00       0.00    -330.99      -0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00     236.38      -0.00       0.00    -154.08     264.39       0.00
                            0.00       0.00     219.00      -0.00       0.00    -298.14       0.00      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00      -0.00     226.48       0.00       0.00     315.69      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     236.28      -0.00      -0.00     306.06       5.57      -0.00

   39   5.1  1.5 -0.5       0.00       0.00      -0.00       0.00       7.57      -0.00      -0.00     358.37     199.79      -0.00
                            0.00      -0.00    -126.88      -0.00       0.00    -246.61       0.00       0.00      -0.00      -0.00

   40   6.1  1.5 -0.5      -0.00       0.00     225.10       0.00      -0.00    -223.71       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      10.06       0.00      -0.00      -2.93    -410.22      -0.00

   41   7.1  1.5 -0.5       3.55      -0.00       0.00    -266.84       0.00       0.00       0.00       0.00      -0.00     270.38
                           -0.00     307.11       0.00       0.00       0.00      -0.00     200.38       0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     417.48
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00     417.49       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00     417.49      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -18.74    -481.71      -0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     426.54     224.63      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     417.49      -0.00       0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00     -23.58      -0.00      -0.00      43.62      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -16.49       0.00      -0.00      67.29     -46.70      -0.00

   46  12.1  1.5 -0.5       0.00     -12.20      -0.00      -0.00      -0.00      -0.00     -76.46      -0.00       0.00       0.00
                          -10.46       0.00       0.00      14.96      -0.00       0.00      -0.00      -0.00       0.00     -76.46

   47  13.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -9.33       0.00       0.00     -96.23      -6.52      -0.00
                           -0.00      -0.00     -17.36       0.00       0.00      11.84       0.00       0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       8.99      -0.00      -0.00      -1.83       0.00       0.00      -0.00      -0.00       0.00     -96.66
                           -0.00      26.02       0.00       0.00       0.00       0.00      27.33       0.00      -0.00       0.00

   49  15.1  1.5 -0.5      -0.00      -0.00      -7.19      -0.00       0.00     -86.32       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       7.84       0.00      -0.00     -36.41     -91.30      -0.00

   50  16.1  1.5 -0.5      -7.84       0.00       0.00     -26.23       0.00       0.00      -0.00       0.00       0.00      -3.26
                            0.00       8.35      -0.00      -0.00       0.00      -0.00     -92.78      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      15.70      -0.00      -0.00     -15.76     -82.58       0.00
                            0.00      -0.00       8.98      -0.00       0.00      95.99      -0.00       0.00       0.00       0.00

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
                            0.00       0.00      -0.00      -0.00    -661.60       0.00       0.00    -312.59    -303.40       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -993.92      -0.00       0.00     -11.70       0.00      -0.00      -0.00      -0.00       0.00     -97.47

   71   3.1  0.5  0.5   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     164.27      -0.00       0.00       0.00       0.00      26.57      -0.00       0.00       0.00

   72   4.1  0.5  0.5       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -164.27      -0.00       0.00     339.15       0.00       0.00       0.00       0.00      -0.00     535.37

   73   5.1  0.5  0.5       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     119.55      -0.00       0.00    -439.69     367.62       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -339.15      -0.00      -0.00       0.00      -0.00     543.53       0.00      -0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -119.55      -0.00       0.00     430.21      -0.00       0.00       0.00       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00    -430.21      -0.00       0.00     -51.54     -81.75       0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00
                          -26.57      -0.00      -0.00    -543.53       0.00      -0.00      -0.00       0.00      -0.00     -48.32

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00
                            0.00      -0.00     439.69      -0.00      -0.00      51.54      -0.00       0.00       0.00      -0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00
                           -0.00       0.00    -367.62       0.00      -0.00      81.75       0.00      -0.00      -0.00       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                           -0.00    -535.37      -0.00       0.00      -0.00      -0.00      48.32       0.00      -0.00       0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -610.38

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     596.22    -375.87      -0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00    -610.38      -0.00       0.00       0.00

   84   1.1  0.5 -0.5     423.05       0.00      -0.00     356.40      -0.00       0.00      -0.00      -0.00       0.00    -482.61
                           -0.00     731.20      -0.00       0.00       0.00       0.00     364.11       0.00      -0.00      -0.00

   85   2.1  0.5 -0.5      -0.00       0.00       0.00       0.00     500.25       0.00      -0.00    -192.04    -462.92      -0.00
                           -0.00       0.00     200.23      -0.00      -0.00     542.75      -0.00      -0.00       0.00       0.00

   86   3.1  0.5 -0.5       0.00      -0.00     117.30      -0.00       0.00     519.63      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -385.26      -0.00      -0.00     264.73     463.09       0.00

   87   4.1  0.5 -0.5       0.00      -0.00      -0.00       0.00    -449.17      -0.00       0.00    -513.93      54.20       0.00
                            0.00       0.00    -691.10      -0.00      -0.00     -39.46      -0.00      -0.00      -0.00      -0.00

   88   5.1  0.5 -0.5    -117.30       0.00      -0.00    -900.15      -0.00       0.00      -0.00      -0.00       0.00    -251.43
                            0.00     691.10      -0.00      -0.00       0.00      -0.00    -404.43      -0.00       0.00       0.00

   89   6.1  0.5 -0.5       0.00      -0.00     900.15      -0.00      -0.00    -161.61       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00     550.98      -0.00       0.00    -339.45     344.21       0.00

   90   7.1  0.5 -0.5      -0.00     449.17       0.00       0.00       0.00       0.00     430.22       0.00      -0.00      -0.00
                          385.26       0.00      -0.00    -550.98       0.00       0.00       0.00      -0.00      -0.00     430.21

   91   8.1  0.5 -0.5    -519.63       0.00      -0.00     161.61      -0.00       0.00       0.00       0.00      -0.00      48.33
                            0.00      39.46       0.00       0.00      -0.00      -0.00     -48.32       0.00      -0.00      -0.00

   92   9.1  0.5 -0.5       0.00      -0.00       0.00      -0.00    -430.22      -0.00      -0.00     -45.03      85.50       0.00
                            0.00       0.00     404.43      -0.00      -0.00      48.32       0.00       0.00       0.00      -0.00

   93  10.1  0.5 -0.5      -0.00     513.93       0.00       0.00      -0.00      -0.00      45.03      -0.00      -0.00      -0.00
                         -264.73       0.00       0.00     339.45       0.00      -0.00      -0.00      -0.00       0.00     -96.57

   94  11.1  0.5 -0.5      -0.00     -54.20      -0.00       0.00       0.00       0.00     -85.50       0.00       0.00      -0.00
                         -463.09       0.00      -0.00    -344.21       0.00       0.00      -0.00      -0.00       0.00       3.76

   95  12.1  0.5 -0.5      -0.00      -0.00     251.43       0.00       0.00     -48.33      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -430.21       0.00       0.00      96.57      -3.76      -0.00

   96  13.1  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -623.62    -328.41       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -610.38       0.00       0.00      -0.00       0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -610.37
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00    -610.38       0.00      -0.00      -0.00

   98  15.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00    -610.38      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      27.40     704.28       0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

    1   1.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00    -195.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -195.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00     195.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     195.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00    -175.97       0.00     158.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00    -135.52      -0.00       0.00     193.82       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00     154.39      -0.00      -0.00     211.60       0.00
                            0.00       0.00      -0.00      -0.00    -114.21      -0.00    -175.90       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     236.38
                            0.00       0.00      -0.00    -107.07       0.00      -0.00      -0.00    -219.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00      -9.20       0.00       0.00      -0.00     226.48       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -236.28

   22   5.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       7.57
                           -0.00      -0.00       0.00     253.58      -0.00      -0.00       0.00     126.88       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00    -194.37      -0.00      -0.00       0.00     225.10       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.06

   24   7.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       3.55      -0.00       0.00    -266.84       0.00
                           -0.00      -0.00      -0.00       0.00      39.07       0.00    -307.11      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                         -226.17       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     226.16       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       7.64      -0.00       0.00       0.00     -23.58      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      16.49

   29  12.1  1.5  0.5       0.00       0.00       0.00      -0.00      13.59       0.00     -12.20      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      10.46      -0.00      -0.00     -14.96       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -9.33
                            0.00      -0.00      -0.00      20.95      -0.00       0.00       0.00      17.36      -0.00      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       8.99      -0.00      -0.00      -1.83       0.00
                            0.00      -0.00       0.00       0.00      -4.48       0.00     -26.02      -0.00      -0.00      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00      12.93       0.00      -0.00      -0.00      -7.19      -0.00       0.00
                           -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -7.84

   33  16.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -7.84       0.00       0.00     -26.23       0.00
                            0.00       0.00       0.00       0.00       8.17      -0.00      -8.35       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      15.70
                           -0.00      -0.00       0.00       3.57       0.00      -0.00       0.00      -8.98       0.00      -0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     465.46       0.00       0.00       0.00     -84.10       0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -469.89

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00    -425.15      -0.00      -0.00    -170.95       0.00

   38   4.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -418.18       0.00    -259.74      -0.00      -0.00      -0.00

   39   5.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -567.06       0.00       0.00     166.65      -0.00

   40   6.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     560.48       0.00     -53.11      -0.00      -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -54.12

   42   8.1  1.5 -0.5       0.00       0.00    -113.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          113.08       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00     113.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   44  10.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -113.08       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       8.31       0.00      19.65       0.00      -0.00      -0.00

   46  12.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -35.94      -0.00      -0.00       0.00       6.49       0.00      -0.00

   47  13.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -19.23      -0.00      -0.00      17.95       0.00

   48  14.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     -29.61

   49  15.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -53.35       0.00      -5.75       0.00      -0.00       0.00

   50  16.1  1.5 -0.5      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      21.38

   51  17.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00     -51.23      -0.00      -0.00      -4.20      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00    -304.79       0.00     273.67      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     234.73       0.00      -0.00    -335.70      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00     267.41      -0.00      -0.00     366.50       0.00
                            0.00       0.00       0.00       0.00     197.82       0.00     304.67      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     409.42
                            0.00       0.00       0.00     185.45      -0.00       0.00       0.00     379.32      -0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00     -15.94       0.00       0.00      -0.00     392.27       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     409.25

   56   5.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      13.11
                            0.00       0.00       0.00    -439.21       0.00       0.00      -0.00    -219.77      -0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00    -336.66      -0.00      -0.00       0.00     389.89       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      17.43

   58   7.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       6.14      -0.00       0.00    -462.19       0.00
                            0.00       0.00       0.00      -0.00     -67.67      -0.00     531.92       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00      13.24      -0.00       0.00       0.00     -40.84      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -28.56

   63  12.1  1.5 -1.5       0.00       0.00       0.00      -0.00      23.53       0.00     -21.13      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     -18.12       0.00       0.00      25.92      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -16.16
                            0.00       0.00       0.00     -36.29       0.00      -0.00      -0.00     -30.06       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      15.57      -0.00      -0.00      -3.17       0.00
                            0.00       0.00       0.00      -0.00       7.76      -0.00      45.06       0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00      22.40       0.00      -0.00      -0.00     -12.45      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      13.58

   67  16.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00     -13.57       0.00       0.00     -45.43       0.00
                            0.00       0.00       0.00      -0.00     -14.16       0.00      14.47      -0.00      -0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      27.18
                            0.00       0.00       0.00      -6.19      -0.00       0.00      -0.00      15.55      -0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00    -423.05      -0.00       0.00    -356.40       0.00
                           -0.00      -0.00       0.00       0.00     278.68      -0.00     731.20      -0.00       0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -500.25
                           -0.00      -0.00      -0.00    -278.68      -0.00      -0.00       0.00     200.23      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00     423.05      -0.00       0.00       0.00    -117.30       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -385.26

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     449.17
                            0.00       0.00      -0.00    -731.20      -0.00       0.00      -0.00    -691.10      -0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00     117.30      -0.00      -0.00     900.15       0.00
                            0.00       0.00       0.00       0.00    -200.23       0.00     691.10       0.00      -0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00     356.40       0.00      -0.00       0.00    -900.15      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     550.98

   75   7.1  0.5  0.5       0.00       0.00       0.00      -0.00     500.25       0.00    -449.17      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     385.26       0.00      -0.00    -550.98      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00     519.63      -0.00       0.00    -161.61       0.00
                            0.00      -0.00      -0.00      -0.00    -542.75       0.00      39.46       0.00       0.00      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     430.22
                            0.00       0.00     610.38    -364.11       0.00       0.00       0.00     404.43      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00      -0.00    -192.04       0.00    -513.93      -0.00      -0.00       0.00
                           -0.00    -596.22       0.00      -0.00       0.00    -264.73       0.00       0.00     339.45       0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00    -462.92       0.00      54.20       0.00      -0.00      -0.00
                            0.00     375.87      -0.00       0.00      -0.00    -463.09       0.00      -0.00    -344.21       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00    -482.61      -0.00       0.00       0.00    -251.43      -0.00      -0.00
                          610.38       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -430.21

   81  13.1  0.5  0.5   12775.84       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00     352.87       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   82  14.1  0.5  0.5       0.00   12775.84       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00   12775.84       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                         -352.87       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   84   1.1  0.5 -0.5      -0.00      -0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     661.60

   85   2.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     993.92       0.00      -0.00      11.70      -0.00

   86   3.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -993.92       0.00    -164.27       0.00      -0.00      -0.00

   87   4.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     164.27       0.00      -0.00    -339.15      -0.00

   88   5.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   12392.20       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00    -119.55

   89   6.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   12392.20       0.00
                            0.00       0.00       0.00      -0.00     -11.70       0.00     339.15       0.00       0.00      -0.00

   90   7.1  0.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   12392.20
                            0.00       0.00      -0.00    -661.60       0.00       0.00       0.00     119.55       0.00      -0.00

   91   8.1  0.5 -0.5      -0.00      -0.00     610.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          610.38       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     430.21

   92   9.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     610.38      -0.00       0.00      -0.00      26.57       0.00       0.00     543.53      -0.00

   93  10.1  0.5 -0.5     623.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -27.40    -312.59      -0.00      -0.00       0.00    -439.69       0.00       0.00

   94  11.1  0.5 -0.5     328.41      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -704.28    -303.40       0.00       0.00      -0.00     367.62      -0.00       0.00

   95  12.1  0.5 -0.5      -0.00     610.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -97.47       0.00     535.37       0.00      -0.00       0.00

   96  13.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -352.86      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   97  14.1  0.5 -0.5      -0.00       0.00    -352.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          352.86      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   98  15.1  0.5 -0.5      -0.00     352.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00


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

   18   1.1  1.5  0.5      -0.00    -305.89       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00     305.88       0.00       0.00      -0.00

   19   2.1  1.5  0.5      -0.00       0.00       0.00      -0.00     276.76       0.00      -0.00      -0.00
                           -0.00     330.99       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   20   3.1  1.5  0.5      -0.00       0.00    -154.08     264.39       0.00       0.00       0.00       0.00
                          298.14      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   21   4.1  1.5  0.5     315.69      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00    -306.06      -5.57       0.00       0.00      -0.00       0.00

   22   5.1  1.5  0.5      -0.00      -0.00     358.37     199.79      -0.00      -0.00       0.00      -0.00
                          246.61      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   23   6.1  1.5  0.5    -223.71       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       2.93     410.22       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00      -0.00     270.38       0.00       0.00      -0.00
                            0.00    -200.38      -0.00       0.00       0.00       0.00      -0.00       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00      -0.00     417.48       0.00       0.00    -113.08
                            0.00    -417.49      -0.00       0.00       0.00    -113.08      -0.00       0.00

   26   9.1  1.5  0.5     417.49      -0.00       0.00       0.00       0.00       0.00     113.08       0.00
                           -0.00       0.00      18.74     481.71       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00     426.54     224.63      -0.00      -0.00       0.00      -0.00
                         -417.49       0.00      -0.00      -0.00      -0.00      -0.00     113.08      -0.00

   28  11.1  1.5  0.5      43.62      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00     -67.29      46.70       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00     -76.46      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      76.46       0.00      -0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00     -96.23      -6.52      -0.00       0.00      -0.00       0.00
                          -11.84      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00      -0.00      -0.00       0.00     -96.66      -0.00      -0.00       0.00
                           -0.00     -27.33      -0.00       0.00      -0.00       0.00      -0.00       0.00

   32  15.1  1.5  0.5     -86.32       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      36.41      91.30       0.00      -0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00      -0.00       0.00       0.00      -3.26      -0.00      -0.00       0.01
                            0.00      92.78       0.00       0.00       0.00       0.01       0.00      -0.00

   34  17.1  1.5  0.5      -0.00      -0.00     -15.76     -82.58       0.00      -0.00      -0.00      -0.00
                          -95.99       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -611.77       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     244.66     564.21      -0.00       0.00       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     626.62       0.00       0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -591.05      -0.00       0.00       0.00       0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -454.04      -0.00      -0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -499.48      -0.00       0.00       0.00       0.00      -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     727.10    -375.62      -0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -815.61     514.17       0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     834.98       0.00       0.00      -0.00    -226.17       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     834.97       0.00       0.00     226.16

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -188.96      -0.00       0.00       0.00       0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -152.92       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     179.96       0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -167.71     -40.84       0.00       0.00      -0.00       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -41.31       0.00       0.00       0.00      -0.01      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -92.98     164.43       0.00       0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -70.92      -0.00      -0.00       0.00

   52   1.1  1.5 -1.5      -0.00    -529.81       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00    -529.80      -0.00      -0.00       0.00

   53   2.1  1.5 -1.5      -0.00       0.00       0.00      -0.00     479.37       0.00      -0.00      -0.00
                            0.00    -573.29      -0.00       0.00       0.00       0.00      -0.00       0.00

   54   3.1  1.5 -1.5      -0.00       0.00    -266.88     457.94       0.00       0.00       0.00       0.00
                         -516.40       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   55   4.1  1.5 -1.5     546.79      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     530.11       9.65      -0.00      -0.00       0.00      -0.00

   56   5.1  1.5 -1.5      -0.00      -0.00     620.71     346.05      -0.00      -0.00       0.00      -0.00
                         -427.14       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   57   6.1  1.5 -1.5    -387.47       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -5.08    -710.51      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00      -0.00     468.31       0.00       0.00      -0.00
                           -0.00     347.07       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00      -0.00     723.10       0.00       0.00    -195.87
                           -0.00     723.11       0.00      -0.00      -0.00     195.86       0.00      -0.00

   60   9.1  1.5 -1.5     723.11      -0.00       0.00       0.00       0.00       0.00     195.86       0.00
                            0.00      -0.00     -32.46    -834.35      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5      -0.00       0.00     738.79     389.07      -0.00      -0.00       0.00      -0.00
                          723.11      -0.00       0.00       0.00       0.00       0.00    -195.87       0.00

   62  11.1  1.5 -1.5      75.55      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00     116.55     -80.89      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5      -0.00    -132.43      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00    -132.43      -0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00    -166.67     -11.29      -0.00       0.00      -0.00       0.00
                           20.51       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00      -0.00      -0.00       0.00    -167.42      -0.00      -0.00       0.01
                            0.00      47.33       0.00      -0.00       0.00      -0.01       0.00      -0.00

   66  15.1  1.5 -1.5    -149.51       0.00       0.00      -0.00      -0.00      -0.00       0.01      -0.00
                            0.00      -0.00     -63.06    -158.13      -0.00       0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00      -0.00       0.00       0.00      -5.65      -0.00      -0.00       0.01
                           -0.00    -160.69      -0.00      -0.00      -0.00      -0.02      -0.00       0.00

   68  17.1  1.5 -1.5      -0.00      -0.00     -27.29    -143.03       0.00      -0.00      -0.00      -0.00
                          166.26      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   69   1.1  0.5  0.5      -0.00       0.00       0.00      -0.00     482.61       0.00       0.00      -0.00
                            0.00     364.11       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   70   2.1  0.5  0.5      -0.00       0.00     192.04     462.92       0.00       0.00       0.00       0.00
                          542.75      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   71   3.1  0.5  0.5    -519.63       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     264.73     463.09       0.00       0.00       0.00      -0.00

   72   4.1  0.5  0.5       0.00      -0.00     513.93     -54.20      -0.00      -0.00       0.00      -0.00
                          -39.46      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00       0.00      -0.00     251.43       0.00       0.00      -0.00
                           -0.00    -404.43      -0.00       0.00       0.00       0.00      -0.00       0.00

   74   6.1  0.5  0.5     161.61      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00    -339.45     344.21       0.00       0.00       0.00       0.00

   75   7.1  0.5  0.5      -0.00    -430.22      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00     430.21       0.00       0.00      -0.00

   76   8.1  0.5  0.5       0.00      -0.00      -0.00       0.00     -48.33       0.00       0.00    -610.38
                            0.00     -48.32       0.00      -0.00      -0.00     610.38       0.00       0.00

   77   9.1  0.5  0.5       0.00      -0.00      45.03     -85.50      -0.00       0.00      -0.00      -0.00
                           48.32      -0.00       0.00       0.00      -0.00      -0.00     610.38      -0.00

   78  10.1  0.5  0.5       0.00     -45.03      -0.00       0.00       0.00    -623.62      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00     -96.57      -0.00      -0.00     -27.40

   79  11.1  0.5  0.5      -0.00      85.50      -0.00       0.00       0.00    -328.41       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       3.76       0.00       0.00    -704.28

   80  12.1  0.5  0.5      48.33       0.00      -0.00      -0.00       0.00       0.00    -610.37      -0.00
                            0.00       0.00      96.57      -3.76       0.00      -0.00       0.00      -0.00

   81  13.1  0.5  0.5      -0.00      -0.00     623.62     328.41      -0.00      -0.00      -0.00      -0.00
                         -610.38       0.00       0.00      -0.00       0.00      -0.00    -352.86      -0.00

   82  14.1  0.5  0.5      -0.00       0.00       0.00      -0.00     610.37       0.00       0.00     352.87
                           -0.00    -610.38       0.00      -0.00      -0.00     352.86       0.00      -0.00

   83  15.1  0.5  0.5     610.38       0.00       0.00       0.00       0.00       0.00    -352.87      -0.00
                           -0.00       0.00      27.40     704.28       0.00       0.00       0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     312.59     303.40      -0.00       0.00       0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      97.47       0.00       0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -26.57       0.00      -0.00      -0.00      -0.00       0.00       0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -535.37      -0.00      -0.00       0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     439.69    -367.62      -0.00      -0.00      -0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -543.53      -0.00       0.00       0.00      -0.00      -0.00       0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -430.21       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   8.1  0.5 -0.5    4690.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      51.54      81.75      -0.00      -0.00       0.00       0.00

   92   9.1  0.5 -0.5       0.00    4690.39       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      48.32      -0.00      -0.00    -610.38

   93  10.1  0.5 -0.5       0.00       0.00    4690.39       0.00       0.00       0.00       0.00       0.00
                          -51.54       0.00      -0.00      -0.00       0.00       0.00     596.22      -0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00    4690.39       0.00       0.00       0.00       0.00
                          -81.75      -0.00       0.00       0.00      -0.00      -0.00    -375.87       0.00

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00
                            0.00     -48.32      -0.00       0.00      -0.00    -610.38      -0.00       0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   12775.84       0.00       0.00
                            0.00       0.00      -0.00       0.00     610.38      -0.00      -0.00    -352.87

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12775.84       0.00
                           -0.00       0.00    -596.22     375.87       0.00       0.00      -0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12775.84
                           -0.00     610.38       0.00      -0.00      -0.00     352.87      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02357076    -0.00706376    -1550.32      0.00000000        0.00      0.0000
     2  -110.02357076    -0.00706376    -1550.32      0.00000000        0.00      0.0000
     3  -110.02357074    -0.00706374    -1550.31      0.00000001        0.00      0.0000
     4  -110.02357074    -0.00706374    -1550.31      0.00000001        0.00      0.0000
     5  -110.02357074    -0.00706374    -1550.31      0.00000002        0.00      0.0000
     6  -110.02357074    -0.00706374    -1550.31      0.00000002        0.00      0.0000
     7  -110.02357073    -0.00706373    -1550.31      0.00000003        0.01      0.0000
     8  -110.02357073    -0.00706373    -1550.31      0.00000003        0.01      0.0000
     9  -110.02357072    -0.00706372    -1550.31      0.00000004        0.01      0.0000
    10  -110.02357072    -0.00706372    -1550.31      0.00000004        0.01      0.0000
    11  -110.01680750    -0.00030050      -65.95      0.00676326     1484.36      0.1840
    12  -110.01680750    -0.00030050      -65.95      0.00676326     1484.36      0.1840
    13  -110.01680750    -0.00030050      -65.95      0.00676326     1484.36      0.1840
    14  -110.01680750    -0.00030050      -65.95      0.00676326     1484.36      0.1840
    15  -110.01680749    -0.00030049      -65.95      0.00676326     1484.37      0.1840
    16  -110.01680749    -0.00030049      -65.95      0.00676326     1484.37      0.1840
    17  -110.01680749    -0.00030049      -65.95      0.00676327     1484.37      0.1840
    18  -110.01680749    -0.00030049      -65.95      0.00676327     1484.37      0.1840
    19  -110.01246786     0.00403914      886.49      0.01110290     2436.80      0.3021
    20  -110.01246786     0.00403914      886.49      0.01110290     2436.80      0.3021
    21  -110.01246785     0.00403915      886.49      0.01110291     2436.81      0.3021
    22  -110.01246785     0.00403915      886.49      0.01110291     2436.81      0.3021
    23  -110.01246783     0.00403917      886.50      0.01110293     2436.81      0.3021
    24  -110.01246783     0.00403917      886.50      0.01110293     2436.81      0.3021
    25  -110.01039109     0.00611591     1342.29      0.01317967     2892.60      0.3586
    26  -110.01039109     0.00611591     1342.29      0.01317967     2892.60      0.3586
    27  -110.01039104     0.00611596     1342.30      0.01317972     2892.61      0.3586
    28  -110.01039104     0.00611596     1342.30      0.01317972     2892.61      0.3586
    29  -109.99926572     0.01724128     3784.02      0.02430504     5334.34      0.6614
    30  -109.99926572     0.01724128     3784.02      0.02430504     5334.34      0.6614
    31  -109.99926571     0.01724129     3784.03      0.02430505     5334.34      0.6614
    32  -109.99926571     0.01724129     3784.03      0.02430505     5334.34      0.6614
    33  -109.99926570     0.01724130     3784.03      0.02430506     5334.34      0.6614
    34  -109.99926570     0.01724130     3784.03      0.02430506     5334.34      0.6614
    35  -109.99926570     0.01724130     3784.03      0.02430506     5334.34      0.6614
    36  -109.99926570     0.01724130     3784.03      0.02430506     5334.34      0.6614
    37  -109.99926569     0.01724131     3784.03      0.02430507     5334.35      0.6614
    38  -109.99926569     0.01724131     3784.03      0.02430507     5334.35      0.6614
    39  -109.99723987     0.01926713     4228.65      0.02633089     5778.96      0.7165
    40  -109.99723987     0.01926713     4228.65      0.02633089     5778.96      0.7165
    41  -109.99723985     0.01926715     4228.65      0.02633091     5778.97      0.7165
    42  -109.99723985     0.01926715     4228.65      0.02633091     5778.97      0.7165
    43  -109.99723984     0.01926716     4228.65      0.02633092     5778.97      0.7165
    44  -109.99723984     0.01926716     4228.65      0.02633092     5778.97      0.7165
    45  -109.99293432     0.02357268     5173.61      0.03063644     6723.92      0.8337
    46  -109.99293432     0.02357268     5173.61      0.03063644     6723.92      0.8337
    47  -109.99293429     0.02357271     5173.61      0.03063647     6723.93      0.8337
    48  -109.99293429     0.02357271     5173.61      0.03063647     6723.93      0.8337
    49  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    50  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    51  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    52  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    53  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    54  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    55  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    56  -109.99182536     0.02468164     5416.99      0.03174540     6967.31      0.8638
    57  -109.98593584     0.03057116     6709.59      0.03763492     8259.91      1.0241
    58  -109.98593584     0.03057116     6709.59      0.03763492     8259.91      1.0241
    59  -109.98593584     0.03057116     6709.59      0.03763492     8259.91      1.0241
    60  -109.98593584     0.03057116     6709.59      0.03763492     8259.91      1.0241
    61  -109.98593583     0.03057117     6709.60      0.03763493     8259.91      1.0241
    62  -109.98593583     0.03057117     6709.60      0.03763493     8259.91      1.0241
    63  -109.98167480     0.03483220     7644.78      0.04189596     9195.10      1.1400
    64  -109.98167480     0.03483220     7644.78      0.04189596     9195.10      1.1400
    65  -109.98167479     0.03483221     7644.79      0.04189597     9195.10      1.1400
    66  -109.98167479     0.03483221     7644.79      0.04189597     9195.10      1.1400
    67  -109.97544126     0.04106574     9012.89      0.04812950    10563.20      1.3097
    68  -109.97544126     0.04106574     9012.89      0.04812950    10563.20      1.3097
    69  -109.97544123     0.04106577     9012.89      0.04812953    10563.21      1.3097
    70  -109.97544123     0.04106577     9012.89      0.04812953    10563.21      1.3097
    71  -109.97544123     0.04106577     9012.90      0.04812953    10563.21      1.3097
    72  -109.97544123     0.04106577     9012.90      0.04812953    10563.21      1.3097
    73  -109.97318886     0.04331814     9507.23      0.05038190    11057.55      1.3710
    74  -109.97318886     0.04331814     9507.23      0.05038190    11057.55      1.3710
    75  -109.97318885     0.04331815     9507.23      0.05038191    11057.55      1.3710
    76  -109.97318885     0.04331815     9507.23      0.05038191    11057.55      1.3710
    77  -109.97118458     0.04532242     9947.12      0.05238618    11497.44      1.4255
    78  -109.97118458     0.04532242     9947.12      0.05238618    11497.44      1.4255
    79  -109.96433508     0.05217192    11450.41      0.05923567    13000.73      1.6119
    80  -109.96433508     0.05217192    11450.41      0.05923567    13000.73      1.6119
    81  -109.96433508     0.05217192    11450.41      0.05923568    13000.73      1.6119
    82  -109.96433508     0.05217192    11450.41      0.05923568    13000.73      1.6119
    83  -109.96433508     0.05217192    11450.41      0.05923568    13000.73      1.6119
    84  -109.96433508     0.05217192    11450.41      0.05923568    13000.73      1.6119
    85  -109.96433507     0.05217193    11450.41      0.05923569    13000.73      1.6119
    86  -109.96433507     0.05217193    11450.41      0.05923569    13000.73      1.6119
    87  -109.95869726     0.05780974    12687.77      0.06487349    14238.09      1.7653
    88  -109.95869726     0.05780974    12687.77      0.06487349    14238.09      1.7653
    89  -109.95869726     0.05780974    12687.77      0.06487350    14238.09      1.7653
    90  -109.95869726     0.05780974    12687.77      0.06487350    14238.09      1.7653
    91  -109.95501452     0.06149248    13496.04      0.06855624    15046.36      1.8655
    92  -109.95501452     0.06149248    13496.04      0.06855624    15046.36      1.8655
    93  -109.95298005     0.06352695    13942.55      0.07059071    15492.87      1.9209
    94  -109.95298005     0.06352695    13942.55      0.07059071    15492.87      1.9209
    95  -109.95298003     0.06352697    13942.56      0.07059072    15492.87      1.9209
    96  -109.95298003     0.06352697    13942.56      0.07059072    15492.87      1.9209
    97  -109.95298000     0.06352700    13942.56      0.07059076    15492.88      1.9209
    98  -109.95298000     0.06352700    13942.56      0.07059076    15492.88      1.9209


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.002307913  -0.074915290   0.025262967   0.003767569   0.000311673   0.063463490  -0.004077022  -0.202437875
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000001416  -0.000000062  -0.000000308   0.000002299   0.000000493  -0.000000054  -0.000000173  -0.000000006
                        -0.005191224   0.168505284  -0.125356794  -0.018693507  -0.000254780  -0.052044982  -0.003329751  -0.165330836

    3    3.1  1.5  1.5  -0.003472947  -0.000107133  -0.040793685   0.273607585  -0.086537488   0.000422306  -0.108199407   0.002178731
                         0.042326706   0.001303956   0.054705260  -0.366814467   0.053441985  -0.000262454   0.301341724  -0.006068964

    4    4.1  1.5  1.5  -0.110071576  -0.003390966  -0.055619650   0.372945714   0.006703245  -0.000032894   0.334576910  -0.006738338
                        -0.009031475  -0.000278602  -0.041474939   0.278180926   0.010854355  -0.000056788   0.120132749  -0.002418652

    5    5.1  1.5  1.5  -0.037171783  -0.001147508  -0.034222787   0.229538372  -0.031124288   0.000149999   0.080941562  -0.001629508
                         0.453033677   0.013956544   0.045894038  -0.307732653   0.019221061  -0.000094421  -0.225427115   0.004540081

    6    6.1  1.5  1.5   0.389316332   0.011993615   0.046473754  -0.311619781  -0.036724626   0.000180340   0.272174099  -0.005481536
                         0.031943723   0.000986194   0.034654256  -0.232437944  -0.059467354   0.000294430   0.097726516  -0.001967737

    7    7.1  1.5  1.5  -0.000000629  -0.000000035  -0.000000536   0.000003906   0.000000388   0.000000154   0.000000359  -0.000000009
                        -0.002888798   0.093770017  -0.071282860  -0.010627887   0.002330416   0.474409773  -0.000224137  -0.011134922

    8    8.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000007   0.000000000   0.000000000   0.000000001   0.000000155  -0.000000001  -0.000000072

    9    9.1  1.5  1.5  -0.000000196  -0.000000006  -0.000000032   0.000000214  -0.000000016   0.000000000  -0.000000017   0.000000000
                        -0.000000016  -0.000000000  -0.000000024   0.000000160  -0.000000025   0.000000000  -0.000000006   0.000000000

   10   10.1  1.5  1.5   0.000000005   0.000000000  -0.000000004   0.000000030  -0.000000012   0.000000000   0.000000005  -0.000000000
                        -0.000000060  -0.000000002   0.000000006  -0.000000040   0.000000008  -0.000000000  -0.000000015   0.000000000

   11   11.1  1.5  1.5   0.000076250   0.000002349  -0.000024744   0.000165918  -0.000010090   0.000000050   0.000381339  -0.000007680
                         0.000006256   0.000000193  -0.000018452   0.000123759  -0.000016339   0.000000078   0.000136923  -0.000002757

   12   12.1  1.5  1.5   0.000002084  -0.000067635   0.000022809   0.000003402   0.000000282   0.000057353  -0.000003680  -0.000182722
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5   0.000026544   0.000000819   0.000006193  -0.000041541  -0.000018381   0.000000091  -0.000113989   0.000002295
                        -0.000323505  -0.000009966  -0.000008306   0.000055693   0.000011351  -0.000000056   0.000317467  -0.000006394

   14   14.1  1.5  1.5   0.000000001   0.000000000   0.000000001  -0.000000004  -0.000000001  -0.000000000  -0.000000000   0.000000000
                         0.000005210  -0.000169109   0.000126734   0.000018898  -0.000001246  -0.000253580   0.000002352   0.000116811

   15   15.1  1.5  1.5   0.000356266   0.000010975   0.000060397  -0.000404978  -0.000032070   0.000000157   0.000075827  -0.000001527
                         0.000029232   0.000000902   0.000045037  -0.000302074  -0.000051931   0.000000258   0.000027226  -0.000000548

   16   16.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000001229   0.000039897  -0.000028667  -0.000004276  -0.000001705  -0.000347235  -0.000001873  -0.000092980

   17   17.1  1.5  1.5   0.000020647   0.000000637   0.000047524  -0.000318751   0.000080756  -0.000000393   0.000042867  -0.000000863
                        -0.000251642  -0.000007752  -0.000063731   0.000427336  -0.000049871   0.000000245  -0.000119388   0.000002404

   18    1.1  1.5  0.5  -0.001161520  -0.000035988   0.001379567  -0.009267082  -0.284288008   0.001396877  -0.160589938   0.003233644
                         0.014156231   0.000436100  -0.001852820   0.012423660   0.175564656  -0.000862171   0.447252534  -0.009007588

   19    2.1  1.5  0.5   0.019541978   0.000602020  -0.002325748   0.015594735   0.167999570  -0.000825045  -0.443349987   0.008929012
                         0.001603432   0.000049431  -0.001732057   0.011632492   0.272038051  -0.001335773  -0.159188703   0.003204865

   20    3.1  1.5  0.5  -0.009678071   0.314148933  -0.195996315  -0.029225944   0.001631936   0.332042536   0.004764756   0.236584876
                         0.000001705   0.000000082   0.000000736  -0.000005457  -0.000000810  -0.000000105  -0.000000007   0.000000018

   21    4.1  1.5  0.5  -0.000000862  -0.000000033   0.000000078  -0.000000575   0.000000120  -0.000000158  -0.000000195   0.000000006
                        -0.005870804   0.190565446  -0.100831897  -0.015038069  -0.002303337  -0.469064141  -0.000153443  -0.007615092

   22    5.1  1.5  0.5   0.008950059  -0.290517001   0.200205671   0.029853814  -0.001289718  -0.262381080   0.004554464   0.226149405
                        -0.000001934  -0.000000091  -0.000000740   0.000005381   0.000000724   0.000000060   0.000000365  -0.000000006

   23    6.1  1.5  0.5  -0.000001356  -0.000000055  -0.000000054   0.000000529   0.000000451  -0.000000150  -0.000000667  -0.000000009
                        -0.005850999   0.189921609  -0.122973581  -0.018339401  -0.001759080  -0.358346262   0.001498659   0.074422630

   24    7.1  1.5  0.5   0.569907135   0.017557039  -0.042768923   0.286778000  -0.052656451   0.000258589   0.027144963  -0.000546700
                         0.046761325   0.001443917  -0.031893261   0.213908134  -0.085265500   0.000416462   0.009746623  -0.000196119

   25    8.1  1.5  0.5   0.000000250   0.000000008   0.000000003  -0.000000023  -0.000000042   0.000000000  -0.000000011   0.000000000
                         0.000000021   0.000000001   0.000000003  -0.000000017  -0.000000068   0.000000000  -0.000000004   0.000000000

   26    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000022   0.000000027   0.000000004   0.000000000   0.000000024   0.000000001   0.000000030

   27   10.1  1.5  0.5  -0.000000003   0.000000085  -0.000000065  -0.000000010   0.000000000   0.000000038  -0.000000000  -0.000000007
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   28   11.1  1.5  0.5  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000007142   0.000231842  -0.000132134  -0.000019706  -0.000002577  -0.000524782   0.000000508   0.000025210

   29   12.1  1.5  0.5  -0.000001047  -0.000000032   0.000001245  -0.000008360  -0.000256657   0.000001261  -0.000144965   0.000002919
                         0.000012756   0.000000393  -0.000001671   0.000011208   0.000158501  -0.000000778   0.000403736  -0.000008131

   30   13.1  1.5  0.5  -0.000011493   0.000373072  -0.000247155  -0.000036855   0.000001771   0.000360408  -0.000001146  -0.000056899
                         0.000000002   0.000000000   0.000000001  -0.000000007  -0.000000001  -0.000000000  -0.000000000   0.000000000

   31   14.1  1.5  0.5  -0.000359207  -0.000011066   0.000027531  -0.000184601  -0.000079820   0.000000392   0.000278602  -0.000005611
                        -0.000029473  -0.000000910   0.000020528  -0.000137694  -0.000129251   0.000000636   0.000100035  -0.000002014

   32   15.1  1.5  0.5  -0.000000001  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000002188   0.000071018  -0.000055480  -0.000008274  -0.000000431  -0.000087852   0.000001258   0.000062476

   33   16.1  1.5  0.5  -0.000367321  -0.000011316   0.000027042  -0.000181327   0.000137014  -0.000000673  -0.000287210   0.000005784
                        -0.000030139  -0.000000931   0.000020167  -0.000135252   0.000221864  -0.000001088  -0.000103125   0.000002076

   34   17.1  1.5  0.5   0.000003004  -0.000097510   0.000051653   0.000007702  -0.000000613  -0.000124753  -0.000005823  -0.000289141
                        -0.000000000  -0.000000000  -0.000000000   0.000000002   0.000000000   0.000000000  -0.000000000  -0.000000000

   35    1.1  1.5 -0.5  -0.000437583   0.014203803  -0.015499225  -0.002310009   0.001641525   0.334129645   0.009570428   0.475209383
                         0.000000205   0.000000013   0.000000240  -0.000001962  -0.000000412  -0.000000107   0.000000574   0.000000025

   36    2.1  1.5 -0.5  -0.000000035  -0.000000007  -0.000000330   0.000002174  -0.000000107   0.000000114   0.000001106   0.000000017
                        -0.000604046   0.019607650  -0.019455345  -0.002899848   0.001570028   0.319732009  -0.009486749  -0.471062898

   37    3.1  1.5 -0.5   0.025689834   0.000793135  -0.017469626   0.117185501   0.282512227  -0.001388928   0.079950333  -0.001610186
                        -0.313096766  -0.009645517   0.023430068  -0.157105428  -0.174468008   0.000856793  -0.222666450   0.004484440

   38    4.1  1.5 -0.5  -0.189927191  -0.005851071   0.012053805  -0.080824432   0.246464462  -0.001210365   0.007167094  -0.000144350
                        -0.015583691  -0.000480951   0.008991623  -0.060286658   0.399094523  -0.001959688   0.002573402  -0.000052037

   39    5.1  1.5 -0.5  -0.023757294  -0.000733830   0.017845086  -0.119702250  -0.223242058   0.001097713   0.076423843  -0.001538770
                         0.289543984   0.008919924  -0.023933307   0.160479542   0.137865200  -0.000677052  -0.212844896   0.004286646

   40    6.1  1.5 -0.5  -0.189285512  -0.005831291   0.014700732  -0.098572588   0.188288977  -0.000924673  -0.070044305   0.001410718
                        -0.015531018  -0.000479825   0.010964582  -0.073525133   0.304892286  -0.001496444  -0.025150015   0.000505822

   41    7.1  1.5 -0.5  -0.000003332  -0.000000149  -0.000000865   0.000006397   0.000001190  -0.000000067  -0.000000168  -0.000000014
                        -0.017616314   0.571822318  -0.357768518  -0.053351296  -0.000490211  -0.100214301   0.000580812   0.028841734

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000008   0.000000251   0.000000029   0.000000004  -0.000000000  -0.000000080  -0.000000000  -0.000000012

   43    9.1  1.5 -0.5   0.000000022   0.000000001  -0.000000003   0.000000022  -0.000000013   0.000000000  -0.000000029   0.000000001
                         0.000000002   0.000000000  -0.000000002   0.000000016  -0.000000020   0.000000000  -0.000000010   0.000000000

   44   10.1  1.5 -0.5   0.000000007   0.000000000  -0.000000006   0.000000039   0.000000032  -0.000000000  -0.000000002   0.000000000
                        -0.000000085  -0.000000003   0.000000008  -0.000000052  -0.000000020   0.000000000   0.000000006  -0.000000000

   45   11.1  1.5 -0.5  -0.000231065  -0.000007118   0.000015796  -0.000105915   0.000275741  -0.000001354  -0.000023727   0.000000478
                        -0.000018959  -0.000000585   0.000011782  -0.000079002   0.000446501  -0.000002192  -0.000008519   0.000000171

   46   12.1  1.5 -0.5  -0.000000394   0.000012799  -0.000013982  -0.000002084   0.000001482   0.000301654   0.000008639   0.000428973
                         0.000000000   0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000000   0.000000001   0.000000000

   47   13.1  1.5 -0.5   0.000030508   0.000000942  -0.000022030   0.000147773   0.000306646  -0.000001508  -0.000019228   0.000000387
                        -0.000371823  -0.000011455   0.000029546  -0.000198113  -0.000189372   0.000000930   0.000053551  -0.000001079

   48   14.1  1.5 -0.5   0.000000002   0.000000000   0.000000001  -0.000000005  -0.000000001  -0.000000000  -0.000000001  -0.000000000
                         0.000011103  -0.000360414   0.000230298   0.000034342  -0.000000747  -0.000151911   0.000005962   0.000296017

   49   15.1  1.5 -0.5  -0.000070780  -0.000002180   0.000006632  -0.000044471   0.000046161  -0.000000227  -0.000058801   0.000001184
                        -0.000005808  -0.000000180   0.000004946  -0.000033171   0.000074747  -0.000000366  -0.000021113   0.000000425

   50   16.1  1.5 -0.5   0.000000002   0.000000000   0.000000000  -0.000000003  -0.000000001   0.000000000   0.000000001   0.000000000
                         0.000011354  -0.000368556   0.000226213   0.000033734   0.000001279   0.000260761  -0.000006146  -0.000305163

   51   17.1  1.5 -0.5  -0.000007974  -0.000000246   0.000004604  -0.000030883  -0.000106143   0.000000522  -0.000097711   0.000001968
                         0.000097184   0.000002994  -0.000006175   0.000041404   0.000065550  -0.000000322   0.000272131  -0.000005481

   52    1.1  1.5 -1.5   0.006126290   0.000188732  -0.002252605   0.015104561  -0.053996722   0.000265181   0.068410878  -0.001377769
                        -0.074664378  -0.002300183   0.003019991  -0.020250178   0.033346193  -0.000163765  -0.190528332   0.003837169

   53    2.1  1.5 -1.5   0.167940917   0.005173721  -0.014985634   0.100482764  -0.027346420   0.000134291  -0.155604321   0.003133801
                         0.013779665   0.000425930  -0.011174882   0.074950249  -0.044281528   0.000216516  -0.055871110   0.001125403

   54    3.1  1.5 -1.5   0.001308350  -0.042468947  -0.457617706  -0.068240678  -0.000497214  -0.101709297  -0.006448193  -0.320177992
                        -0.000000141  -0.000000003   0.000001212  -0.000008692  -0.000001409   0.000000063  -0.000000362   0.000000005

   55    4.1  1.5 -1.5  -0.000000369  -0.000000013   0.000001257  -0.000009323  -0.000001851   0.000000032   0.000000760   0.000000037
                        -0.003402391   0.110441475   0.465266734   0.069380948  -0.000065601  -0.012757378  -0.007159265  -0.355490627

   56    5.1  1.5 -1.5   0.014003639  -0.454556107  -0.383910471  -0.057249121  -0.000177236  -0.036581006   0.004823653   0.239518101
                        -0.000002352  -0.000000102   0.000001033  -0.000007592  -0.000001521   0.000000038   0.000000610   0.000000028

   57    6.1  1.5 -1.5   0.000002098   0.000000088  -0.000001169   0.000008345   0.000001266   0.000000004   0.000000430  -0.000000006
                         0.012034093  -0.390624638  -0.388759932  -0.057971779   0.000345268   0.069893241  -0.005824022  -0.289187158

   58    7.1  1.5 -1.5   0.093455957   0.002879071  -0.008521392   0.057138286   0.249273266  -0.001224161  -0.010479845   0.000211072
                         0.007668123   0.000236862  -0.006351213   0.042619990   0.403642751  -0.001982995  -0.003762890   0.000075406

   59    8.1  1.5 -1.5  -0.000000007  -0.000000000   0.000000000  -0.000000000   0.000000081  -0.000000000  -0.000000068   0.000000001
                        -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000132  -0.000000001  -0.000000024   0.000000000

   60    9.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000006   0.000000197   0.000000267   0.000000040   0.000000000   0.000000030   0.000000000   0.000000018

   61   10.1  1.5 -1.5  -0.000000002   0.000000060  -0.000000050  -0.000000007  -0.000000000  -0.000000015   0.000000000   0.000000016
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   62   11.1  1.5 -1.5   0.000000001   0.000000000   0.000000001  -0.000000004  -0.000000001   0.000000000   0.000000001   0.000000000
                         0.000002357  -0.000076506   0.000206990   0.000030867   0.000000093   0.000019203  -0.000008160  -0.000405176

   63   12.1  1.5 -1.5   0.000005531   0.000000170  -0.000002034   0.000013638  -0.000048798   0.000000240   0.000061748  -0.000001244
                        -0.000067409  -0.000002077   0.000002727  -0.000018284   0.000030136  -0.000000148  -0.000171972   0.000003463

   64   13.1  1.5 -1.5  -0.000010000   0.000324593   0.000069479   0.000010361  -0.000000107  -0.000021603  -0.000006793  -0.000337311
                         0.000000002   0.000000000  -0.000000000   0.000000002   0.000000000   0.000000000  -0.000000001  -0.000000000

   65   14.1  1.5 -1.5  -0.000168543  -0.000005192   0.000015150  -0.000101587  -0.000133241   0.000000654   0.000109939  -0.000002214
                        -0.000013829  -0.000000427   0.000011296  -0.000075774  -0.000215754   0.000001061   0.000039475  -0.000000795

   66   15.1  1.5 -1.5   0.000000002   0.000000000  -0.000000001   0.000000011   0.000000002  -0.000000000   0.000000000  -0.000000000
                         0.000011012  -0.000357463  -0.000505229  -0.000075340   0.000000303   0.000061035  -0.000001623  -0.000080567

   67   16.1  1.5 -1.5   0.000039763   0.000001225  -0.000003427   0.000022979  -0.000182451   0.000000896  -0.000087510   0.000001762
                         0.000003263   0.000000101  -0.000002558   0.000017140  -0.000295438   0.000001451  -0.000031421   0.000000633

   68   17.1  1.5 -1.5  -0.000007778   0.000252488   0.000533121   0.000079500   0.000000463   0.000094914   0.000002555   0.000126851
                         0.000000001   0.000000000  -0.000000001   0.000000010   0.000000002  -0.000000000  -0.000000000  -0.000000000

   69    1.1  0.5  0.5   0.000000026   0.000000001   0.000000004  -0.000000029   0.000000002  -0.000000000  -0.000000041   0.000000001
                         0.000000002   0.000000000   0.000000003  -0.000000022   0.000000003  -0.000000000  -0.000000015   0.000000000

   70    2.1  0.5  0.5  -0.000000000   0.000000002  -0.000000001  -0.000000000  -0.000000000  -0.000000052   0.000000001   0.000000044
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   71    3.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000022  -0.000000023  -0.000000003  -0.000000000  -0.000000011  -0.000000002  -0.000000076

   72    4.1  0.5  0.5   0.000000000  -0.000000016  -0.000000017  -0.000000003   0.000000000   0.000000005  -0.000000000  -0.000000004
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   73    5.1  0.5  0.5   0.000000026   0.000000001   0.000000011  -0.000000077  -0.000000000   0.000000000   0.000000006  -0.000000000
                         0.000000002   0.000000000   0.000000009  -0.000000057  -0.000000000   0.000000000   0.000000002  -0.000000000

   74    6.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000035   0.000000034   0.000000005  -0.000000000  -0.000000013   0.000000001   0.000000052

   75    7.1  0.5  0.5   0.000000005   0.000000000  -0.000000001   0.000000006   0.000000015  -0.000000000  -0.000000018   0.000000000
                        -0.000000061  -0.000000002   0.000000001  -0.000000008  -0.000000009   0.000000000   0.000000049  -0.000000001

   76    8.1  0.5  0.5   0.000000067   0.000000002   0.000000012  -0.000000078   0.000000042  -0.000000000   0.000000011  -0.000000000
                         0.000000006   0.000000000   0.000000009  -0.000000058   0.000000068  -0.000000000   0.000000004  -0.000000000

   77    9.1  0.5  0.5   0.000000001  -0.000000018  -0.000000028  -0.000000004   0.000000000   0.000000098  -0.000000000  -0.000000003
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   78   10.1  0.5  0.5   0.000000008   0.000000000  -0.000000002   0.000000014  -0.000000008   0.000000000  -0.000000001   0.000000000
                        -0.000000100  -0.000000003   0.000000003  -0.000000019   0.000000005  -0.000000000   0.000000003  -0.000000000

   79   11.1  0.5  0.5   0.000000001   0.000000000   0.000000008  -0.000000053  -0.000000011   0.000000000   0.000000017  -0.000000000
                        -0.000000007  -0.000000000  -0.000000011   0.000000071   0.000000007  -0.000000000  -0.000000048   0.000000001

   80   12.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000022  -0.000000050  -0.000000008  -0.000000000  -0.000000039  -0.000000001  -0.000000035

   81   13.1  0.5  0.5   0.000000000  -0.000000004   0.000000006   0.000000001   0.000000000   0.000000016   0.000000000   0.000000003
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   82   14.1  0.5  0.5   0.000000012   0.000000000   0.000000004  -0.000000024   0.000000005  -0.000000000   0.000000022  -0.000000000
                         0.000000001   0.000000000   0.000000003  -0.000000018   0.000000008  -0.000000000   0.000000008  -0.000000000

   83   15.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000004  -0.000000002  -0.000000000   0.000000000   0.000000010  -0.000000000  -0.000000005

   84    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000026  -0.000000036  -0.000000005  -0.000000000  -0.000000004   0.000000001   0.000000044

   85    2.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000044  -0.000000000  -0.000000015   0.000000000
                         0.000000002   0.000000000  -0.000000000   0.000000001  -0.000000027   0.000000000   0.000000042  -0.000000001

   86    3.1  0.5 -0.5   0.000000022   0.000000001  -0.000000003   0.000000018  -0.000000006   0.000000000  -0.000000071   0.000000001
                         0.000000002   0.000000000  -0.000000002   0.000000014  -0.000000009   0.000000000  -0.000000026   0.000000001

   87    4.1  0.5 -0.5   0.000000001   0.000000000   0.000000002  -0.000000010  -0.000000004   0.000000000   0.000000001  -0.000000000
                        -0.000000016  -0.000000000  -0.000000002   0.000000014   0.000000003  -0.000000000  -0.000000004   0.000000000

   88    5.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000001  -0.000000026  -0.000000096  -0.000000014   0.000000000   0.000000000  -0.000000000  -0.000000006

   89    6.1  0.5 -0.5  -0.000000034  -0.000000001   0.000000004  -0.000000027  -0.000000007   0.000000000   0.000000049  -0.000000001
                        -0.000000003  -0.000000000   0.000000003  -0.000000020  -0.000000011   0.000000000   0.000000018  -0.000000000

   90    7.1  0.5 -0.5  -0.000000002   0.000000061  -0.000000010  -0.000000002   0.000000000   0.000000018  -0.000000001  -0.000000052
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   91    8.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000002  -0.000000068  -0.000000098  -0.000000015  -0.000000000  -0.000000080  -0.000000000  -0.000000012

   92    9.1  0.5 -0.5   0.000000002   0.000000000   0.000000003  -0.000000017  -0.000000084   0.000000000   0.000000001  -0.000000000
                        -0.000000018  -0.000000001  -0.000000003   0.000000023   0.000000052  -0.000000000  -0.000000003   0.000000000

   93   10.1  0.5 -0.5  -0.000000003   0.000000100  -0.000000024  -0.000000004  -0.000000000  -0.000000010  -0.000000000  -0.000000003
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   94   11.1  0.5 -0.5  -0.000000000   0.000000007   0.000000089   0.000000013  -0.000000000  -0.000000013   0.000000001   0.000000051
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   95   12.1  0.5 -0.5  -0.000000022  -0.000000001  -0.000000006   0.000000040  -0.000000021   0.000000000  -0.000000033   0.000000001
                        -0.000000002  -0.000000000  -0.000000004   0.000000030  -0.000000033   0.000000000  -0.000000012   0.000000000

   96   13.1  0.5 -0.5   0.000000000   0.000000000  -0.000000001   0.000000004  -0.000000014   0.000000000  -0.000000001   0.000000000
                        -0.000000004  -0.000000000   0.000000001  -0.000000005   0.000000009  -0.000000000   0.000000003  -0.000000000

   97   14.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000012  -0.000000030  -0.000000004  -0.000000000  -0.000000009  -0.000000000  -0.000000023

   98   15.1  0.5 -0.5   0.000000004   0.000000000  -0.000000000   0.000000002   0.000000005  -0.000000000  -0.000000005   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000001   0.000000008  -0.000000000  -0.000000002   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.553033407   0.000854450  -0.146446853   0.001193527  -0.003852481  -0.157938640   0.000922936  -0.482718826
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000002   0.000000052  -0.000000004  -0.000000017   0.000000070   0.000000010  -0.000000001  -0.000000004
                         0.530135173   0.000819308   0.457351659  -0.003727393   0.002004620   0.082181720   0.000507227  -0.265287122

    3    3.1  1.5  1.5  -0.000218567   0.141254340  -0.001923195  -0.235974881  -0.008024622   0.000195790  -0.014488308  -0.000027590
                         0.000051139  -0.033134459   0.000891123   0.109341796   0.203905155  -0.004973735  -0.042362324  -0.000080975

    4    4.1  1.5  1.5   0.000029454  -0.019063324  -0.001050471  -0.128894091  -0.118145199   0.002881833   0.148752580   0.000284416
                         0.000125678  -0.081268093  -0.002267074  -0.278171467  -0.004649563   0.000113476  -0.050874695  -0.000097396

    5    5.1  1.5  1.5   0.000132402  -0.085814495   0.000686371   0.084216848   0.014369527  -0.000350661   0.002455668   0.000004686
                        -0.000031110   0.020129776  -0.000318035  -0.039022888  -0.365128832   0.008906370   0.007180092   0.000013707

    6    6.1  1.5  1.5   0.000036924  -0.023932329  -0.001235101  -0.151548815   0.130625556  -0.003186283   0.150636189   0.000288023
                         0.000158268  -0.102025078  -0.002665543  -0.327063529   0.005140730  -0.000125467  -0.051518906  -0.000098533

    7    7.1  1.5  1.5  -0.000000023  -0.000000048   0.000000002   0.000000011   0.000000311   0.000000031   0.000000178  -0.000000005
                         0.021563342   0.000033125  -0.193823912   0.001579649   0.013909311   0.570230637   0.000180859  -0.094615949

    8    8.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000065   0.000000000  -0.000000105   0.000000001  -0.000000001  -0.000000031  -0.000000000   0.000000033

    9    9.1  1.5  1.5  -0.000000000   0.000000002  -0.000000000  -0.000000021   0.000000025  -0.000000001  -0.000000004  -0.000000000
                        -0.000000000   0.000000010  -0.000000000  -0.000000045   0.000000001  -0.000000000   0.000000001   0.000000000

   10   10.1  1.5  1.5  -0.000000000   0.000000005  -0.000000001  -0.000000106  -0.000000001   0.000000000  -0.000000013  -0.000000000
                         0.000000000  -0.000000001   0.000000000   0.000000049   0.000000022  -0.000000001  -0.000000039  -0.000000000

   11   11.1  1.5  1.5   0.000000039  -0.000025278   0.000001398   0.000171588   0.000040294  -0.000000983  -0.000187498  -0.000000358
                         0.000000167  -0.000107761   0.000003018   0.000370311   0.000001586  -0.000000039   0.000064126   0.000000123

   12   12.1  1.5  1.5   0.000499177   0.000000771   0.000135931  -0.000001108   0.000003579   0.000146707  -0.000000857   0.000448214
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000207   0.000133732   0.000001498   0.000183800   0.000015256  -0.000000372   0.000009155   0.000000017
                         0.000000048  -0.000031370  -0.000000694  -0.000085166  -0.000387651   0.000009456   0.000026768   0.000000051

   14   14.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000365998  -0.000000566   0.000192251  -0.000001567   0.000010083   0.000413370   0.000000461  -0.000241167

   15   15.1  1.5  1.5   0.000000017  -0.000011024   0.000000558   0.000068463  -0.000158540   0.000003867  -0.000059095  -0.000000113
                         0.000000073  -0.000046997   0.000001204   0.000147753  -0.000006239   0.000000152   0.000020211   0.000000039

   16   16.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000307499   0.000000475  -0.000419291   0.000003417   0.000008284   0.000339619  -0.000000194   0.000101308

   17   17.1  1.5  1.5   0.000000102  -0.000065576  -0.000001162  -0.000142582   0.000000903  -0.000000022  -0.000010112  -0.000000019
                        -0.000000024   0.000015382   0.000000538   0.000066067  -0.000022935   0.000000559  -0.000029567  -0.000000057

   18    1.1  1.5  0.5  -0.000208278   0.134670487  -0.001623342  -0.199185158   0.018720313  -0.000456871  -0.029955930  -0.000057211
                         0.000048770  -0.031590092   0.000752186   0.092294836  -0.475682005   0.011603033  -0.087588196  -0.000167488

   19    2.1  1.5  0.5  -0.000064741   0.041928673   0.000472522   0.057979377  -0.253779864   0.006190299  -0.003332104  -0.000006370
                        -0.000276726   0.178744660   0.001019791   0.125127600  -0.009987423   0.000243777   0.001139617   0.000002001

   20    3.1  1.5  0.5  -0.245266678  -0.000378856   0.428121862  -0.003489165   0.000793973   0.032549848   0.000332489  -0.173912467
                         0.000000027  -0.000000024   0.000000003   0.000000014  -0.000000056  -0.000000005  -0.000000066  -0.000000005

   21    4.1  1.5  0.5   0.000000018   0.000000050  -0.000000003  -0.000000014   0.000000129   0.000000019  -0.000000037  -0.000000014
                        -0.283559953  -0.000437847   0.314225492  -0.002560931   0.005618997   0.230357799   0.000594562  -0.310952083

   22    5.1  1.5  0.5  -0.211755945  -0.000327152   0.050717927  -0.000413345  -0.005845122  -0.239629399   0.000830713  -0.434503986
                        -0.000000014  -0.000000023   0.000000001   0.000000004   0.000000021   0.000000006  -0.000000072  -0.000000011

   23    6.1  1.5  0.5   0.000000005   0.000000128   0.000000000   0.000000003  -0.000000064  -0.000000011   0.000000060   0.000000013
                         0.349296504   0.000540172   0.119165773  -0.000971178  -0.000339614  -0.013921757  -0.001041597   0.544761493

   24    7.1  1.5  0.5  -0.000026440   0.017121053  -0.000838063  -0.102831245  -0.166347291   0.004057603   0.088361441   0.000168938
                        -0.000112343   0.072988209  -0.001808671  -0.221924202  -0.006546542   0.000159751  -0.030220400  -0.000057808

   25    8.1  1.5  0.5   0.000000000  -0.000000018  -0.000000000  -0.000000030   0.000000042  -0.000000001  -0.000000117  -0.000000000
                         0.000000000  -0.000000078  -0.000000001  -0.000000066   0.000000002  -0.000000000   0.000000040   0.000000000

   26    9.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000098  -0.000000000   0.000000094  -0.000000001   0.000000001   0.000000058   0.000000000  -0.000000079

   27   10.1  1.5  0.5  -0.000000003  -0.000000000   0.000000081  -0.000000001  -0.000000000  -0.000000013   0.000000000  -0.000000001
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   28   11.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000078949  -0.000000122  -0.000309654   0.000002524  -0.000004464  -0.000182998  -0.000000036   0.000018822

   29   12.1  1.5  0.5  -0.000000188   0.000121578   0.000001507   0.000184937  -0.000017384   0.000000424   0.000027824   0.000000053
                         0.000000044  -0.000028519  -0.000000698  -0.000085693   0.000441731  -0.000010775   0.000081356   0.000000156

   30   13.1  1.5  0.5   0.000041783   0.000000065  -0.000174266   0.000001420  -0.000004971  -0.000203796   0.000000484  -0.000253112
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   31   14.1  1.5  0.5   0.000000059  -0.000038312  -0.000000201  -0.000024632  -0.000278164   0.000006785   0.000053027   0.000000101
                         0.000000252  -0.000163328  -0.000000433  -0.000053159  -0.000010947   0.000000267  -0.000018136  -0.000000035

   32   15.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000397444   0.000000614   0.000038554  -0.000000314   0.000002719   0.000111448   0.000001113  -0.000582116

   33   16.1  1.5  0.5  -0.000000022   0.000014061  -0.000000871  -0.000106820   0.000044786  -0.000001092   0.000062728   0.000000120
                        -0.000000093   0.000059942  -0.000001879  -0.000230533   0.000001763  -0.000000043  -0.000021453  -0.000000041

   34   17.1  1.5  0.5   0.000288703   0.000000446   0.000360368  -0.000002937  -0.000002300  -0.000094284   0.000000675  -0.000353257
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   35    1.1  1.5 -0.5   0.138325969   0.000213912   0.219529188  -0.001789140  -0.011612025  -0.476050227  -0.000176989   0.092569167
                         0.000000029  -0.000000084   0.000000002   0.000000008   0.000000238   0.000000027   0.000000068  -0.000000012

   36    2.1  1.5 -0.5   0.000000001  -0.000000167  -0.000000002  -0.000000010  -0.000000160  -0.000000012  -0.000000167  -0.000000007
                        -0.183596478  -0.000284199   0.137907668  -0.001123944  -0.006195097  -0.253976317  -0.000006674   0.003521601

   37    3.1  1.5 -0.5  -0.000368839   0.238785136   0.003165825   0.388447304   0.001280000  -0.000031278  -0.056279131  -0.000107533
                         0.000086545  -0.056012519  -0.001466908  -0.179991726  -0.032524669   0.000793356  -0.164554566  -0.000314619

   38    4.1  1.5 -0.5   0.000100041  -0.064757753  -0.001076658  -0.132107219  -0.230179622   0.005614646  -0.294220347  -0.000562558
                         0.000426265  -0.276066442  -0.002323613  -0.285105845  -0.009058651   0.000221092   0.100625962   0.000192439

   39    5.1  1.5 -0.5  -0.000318502   0.206159966   0.000375041   0.046017837  -0.009423236   0.000229876  -0.140608129  -0.000268756
                         0.000074735  -0.048359577  -0.000173776  -0.021322918   0.239444045  -0.005840600  -0.411124153  -0.000786038

   40    6.1  1.5 -0.5  -0.000123237   0.079770253  -0.000408307  -0.050099877   0.013910996  -0.000339349   0.515448921   0.000985532
                        -0.000525926   0.340065809  -0.000881177  -0.108122540   0.000547473  -0.000013419  -0.176288103  -0.000337124

   41    7.1  1.5 -0.5  -0.000000010   0.000000085   0.000000001   0.000000006  -0.000000066  -0.000000007  -0.000000028   0.000000001
                        -0.074969388  -0.000115413  -0.244590712   0.001993399  -0.004060747  -0.166476061   0.000178555  -0.093386382

   42    8.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000080   0.000000000  -0.000000072   0.000000001   0.000000001   0.000000042  -0.000000000   0.000000123

   43    9.1  1.5 -0.5   0.000000000  -0.000000022  -0.000000000  -0.000000040  -0.000000058   0.000000001  -0.000000075  -0.000000000
                         0.000000000  -0.000000095  -0.000000001  -0.000000086  -0.000000002   0.000000000   0.000000026   0.000000000

   44   10.1  1.5 -0.5  -0.000000000   0.000000003   0.000000001   0.000000073  -0.000000001   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000001  -0.000000000  -0.000000034   0.000000013  -0.000000000  -0.000000000  -0.000000000

   45   11.1  1.5 -0.5   0.000000028  -0.000018030   0.000001061   0.000130185   0.000182856  -0.000004460   0.000017809   0.000000034
                         0.000000118  -0.000076862   0.000002290   0.000280958   0.000007196  -0.000000176  -0.000006091  -0.000000012

   46   12.1  1.5 -0.5   0.000124878   0.000000193  -0.000203825   0.000001661   0.000010783   0.000442073   0.000000164  -0.000085983
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   47   13.1  1.5 -0.5   0.000000063  -0.000040679  -0.000001289  -0.000158117  -0.000008014   0.000000196  -0.000081909  -0.000000157
                        -0.000000015   0.000009542   0.000000597   0.000073265   0.000203639  -0.000004967  -0.000239493  -0.000000458

   48   14.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000167761   0.000000259  -0.000058589   0.000000477  -0.000006790  -0.000278380   0.000000107  -0.000056043

   49   15.1  1.5 -0.5  -0.000000140   0.000090766  -0.000000132  -0.000016209  -0.000111362   0.000002716  -0.000550794  -0.000001053
                        -0.000000598   0.000386941  -0.000000285  -0.000034981  -0.000004383   0.000000107   0.000188376   0.000000360

   50   16.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000061569  -0.000000096  -0.000254079   0.000002071   0.000001093   0.000044820   0.000000127  -0.000066295

   51   17.1  1.5 -0.5   0.000000434  -0.000281074   0.000002665   0.000326972  -0.000003708   0.000000090  -0.000114316  -0.000000218
                        -0.000000102   0.000065932  -0.000001235  -0.000151506   0.000094211  -0.000002298  -0.000334249  -0.000000639

   52    1.1  1.5 -1.5  -0.000831870   0.538418651   0.001082922   0.132875450   0.006210808  -0.000151496   0.156210733   0.000298668
                         0.000195134  -0.126298480  -0.000501785  -0.061569435  -0.157816471   0.003849501   0.456744647   0.000873275

   53    2.1  1.5 -1.5   0.000187058  -0.121069120   0.001567061   0.192280567   0.082118154  -0.002003066   0.251012528   0.000479934
                         0.000797669  -0.516125536   0.003381979   0.414968341   0.003231738  -0.000078899  -0.085848513  -0.000164143

   54    3.1  1.5 -1.5  -0.145088527  -0.000224470  -0.260076475   0.002119618  -0.004977587  -0.204062995   0.000085546  -0.044771391
                        -0.000000003   0.000000127  -0.000000002  -0.000000011   0.000000051   0.000000012  -0.000000098  -0.000000015

   55    4.1  1.5 -1.5   0.000000022  -0.000000026  -0.000000002  -0.000000005   0.000000062   0.000000003   0.000000117   0.000000010
                        -0.083474027  -0.000129083   0.306582863  -0.002498622   0.002884066   0.118236660  -0.000300630   0.157211844

   56    5.1  1.5 -1.5   0.088143833   0.000136007   0.092818442  -0.000756473   0.008913270   0.365411475  -0.000014486   0.007588411
                         0.000000012   0.000000051   0.000000000   0.000000003  -0.000000154  -0.000000020   0.000000002   0.000000013

   57    6.1  1.5 -1.5  -0.000000000  -0.000000196  -0.000000002  -0.000000009  -0.000000072  -0.000000010   0.000000025   0.000000010
                        -0.104794431  -0.000162518   0.360468577  -0.002937787  -0.003188752  -0.130726669  -0.000304411   0.159202573

   58    7.1  1.5 -1.5   0.000007612  -0.004924530  -0.000664109  -0.081487780   0.569789564  -0.013898540   0.089524840   0.000171185
                         0.000032238  -0.020993492  -0.001433266  -0.175862019   0.022423885  -0.000547283  -0.030618287  -0.000058359

   59    8.1  1.5 -1.5   0.000000000  -0.000000015  -0.000000000  -0.000000044  -0.000000031   0.000000001  -0.000000032  -0.000000000
                         0.000000000  -0.000000063  -0.000000001  -0.000000095  -0.000000001   0.000000000   0.000000011   0.000000000

   60    9.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000010   0.000000000   0.000000049  -0.000000000  -0.000000001  -0.000000025   0.000000000  -0.000000004

   61   10.1  1.5 -1.5  -0.000000005  -0.000000000  -0.000000117   0.000000001  -0.000000001  -0.000000022   0.000000000  -0.000000041
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   62   11.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000110686  -0.000000171  -0.000408133   0.000003326  -0.000000984  -0.000040325   0.000000379  -0.000198161

   63   12.1  1.5 -1.5  -0.000000751   0.000485985  -0.000001005  -0.000123334  -0.000005769   0.000000141  -0.000145045  -0.000000277
                         0.000000176  -0.000113999   0.000000466   0.000057148   0.000146594  -0.000003576  -0.000424096  -0.000000811

   64   13.1  1.5 -1.5  -0.000137362  -0.000000212   0.000202573  -0.000001651   0.000009463   0.000387951  -0.000000054   0.000028290
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   65   14.1  1.5 -1.5  -0.000000129   0.000083585   0.000000659   0.000080827   0.000413050  -0.000010075   0.000228191   0.000000436
                        -0.000000551   0.000356326   0.000001422   0.000174435   0.000016255  -0.000000397  -0.000078043  -0.000000149

   66   15.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000048273  -0.000000075  -0.000162843   0.000001327   0.000003870   0.000158662   0.000000119  -0.000062456

   67   16.1  1.5 -1.5   0.000000108  -0.000070225  -0.000001437  -0.000176279   0.000339356  -0.000008278  -0.000095857  -0.000000183
                         0.000000463  -0.000299373  -0.000003101  -0.000380435   0.000013355  -0.000000326   0.000032784   0.000000063

   68   17.1  1.5 -1.5   0.000067355   0.000000104  -0.000157145   0.000001281   0.000000560   0.000022953   0.000000060  -0.000031248
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   69    1.1  0.5  0.5  -0.000000000   0.000000004  -0.000039653  -0.004865564   0.045984762  -0.001121680   0.008183134   0.000015649
                        -0.000000000   0.000000016  -0.000085578  -0.010500567   0.001809716  -0.000044164  -0.002798703  -0.000005354

   70    2.1  0.5  0.5   0.000000031   0.000000000   0.011956914  -0.000097449  -0.000058809  -0.002411068   0.000102930  -0.053833597
                        -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000005  -0.000000001   0.000000005   0.000000001

   71    3.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000003  -0.000000000  -0.000000005  -0.000000000
                         0.000000102   0.000000000  -0.025171255   0.000205144   0.000232072   0.009514190  -0.000086419   0.045200449

   72    4.1  0.5  0.5  -0.000000047  -0.000000000   0.015760225  -0.000128445   0.001281941   0.052554911   0.000006252  -0.003270815
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000026  -0.000000003  -0.000000012   0.000000001

   73    5.1  0.5  0.5  -0.000000000   0.000000010   0.000174668   0.021432021   0.017425432  -0.000425047  -0.018134400  -0.000034672
                        -0.000000000   0.000000045   0.000376962   0.046253296   0.000685772  -0.000016733   0.006202126   0.000011860

   74    6.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000002   0.000000015   0.000000001   0.000000011  -0.000000000
                        -0.000000071  -0.000000000  -0.044379521   0.000361690   0.000503875   0.020656966   0.000032535  -0.017018105

   75    7.1  0.5  0.5  -0.000000000   0.000000006  -0.000000686  -0.000084312  -0.000162451   0.000003968  -0.002144654  -0.000004119
                         0.000000000  -0.000000001   0.000000318   0.000039067   0.004127886  -0.000100688  -0.006270759  -0.000011991

   76    8.1  0.5  0.5  -0.000000000   0.000000007   0.000000001   0.000000086   0.000000105  -0.000000003   0.000000068   0.000000000
                        -0.000000000   0.000000030   0.000000002   0.000000185   0.000000004  -0.000000000  -0.000000023  -0.000000000

   77    9.1  0.5  0.5   0.000000219   0.000000000  -0.000000254   0.000000002  -0.000000008  -0.000000318  -0.000000000   0.000000218
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   78   10.1  0.5  0.5  -0.000000000   0.000000036  -0.000000002  -0.000000211   0.000000000  -0.000000000  -0.000000074  -0.000000000
                         0.000000000  -0.000000008   0.000000001   0.000000098  -0.000000012   0.000000000  -0.000000217  -0.000000000

   79   11.1  0.5  0.5   0.000000000  -0.000000066  -0.000000000  -0.000000045   0.000000015  -0.000000000   0.000000004   0.000000000
                        -0.000000000   0.000000016   0.000000000   0.000000021  -0.000000391   0.000000010   0.000000013   0.000000000

   80   12.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000033   0.000000000  -0.000000006   0.000000000  -0.000000002  -0.000000065   0.000000000  -0.000000127

   81   13.1  0.5  0.5   0.000000016   0.000000000   0.000000033  -0.000000000  -0.000000001  -0.000000025   0.000000000  -0.000000019
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   82   14.1  0.5  0.5  -0.000000000   0.000000002   0.000000000   0.000000017   0.000000044  -0.000000001   0.000000008   0.000000000
                        -0.000000000   0.000000009   0.000000000   0.000000037   0.000000002  -0.000000000  -0.000000003  -0.000000000

   83   15.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000008   0.000000000   0.000000005  -0.000000000  -0.000000001  -0.000000050  -0.000000000   0.000000033

   84    1.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000020  -0.000000003   0.000000002   0.000000002
                         0.000000016   0.000000000   0.011573055  -0.000094318  -0.001122549  -0.046020358  -0.000016539   0.008648493

   85    2.1  0.5 -0.5  -0.000000000   0.000000030  -0.000088419  -0.010848852   0.000094812  -0.000002308   0.017420877   0.000033313
                         0.000000000  -0.000000007   0.000040969   0.005026946  -0.002409202   0.000058764   0.050936914   0.000097390

   86    3.1  0.5 -0.5   0.000000000  -0.000000023  -0.000086246  -0.010582542   0.009506831  -0.000231893  -0.042768299  -0.000081771
                         0.000000000  -0.000000099  -0.000186134  -0.022838605   0.000374138  -0.000009123   0.014627139   0.000027961

   87    4.1  0.5 -0.5   0.000000000  -0.000000046  -0.000116542  -0.014299707  -0.002066682   0.000050438   0.001058455   0.000002012
                        -0.000000000   0.000000011   0.000054001   0.006625941   0.052514260  -0.001280949   0.003094818   0.000005919

   88    5.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000005  -0.000000001  -0.000000002   0.000000000
                         0.000000046   0.000000000  -0.050977435   0.000415463  -0.000425376  -0.017438922   0.000036644  -0.019165668

   89    6.1  0.5 -0.5  -0.000000000   0.000000016  -0.000152061  -0.018658114   0.020640988  -0.000503484   0.016102393   0.000030788
                        -0.000000000   0.000000069  -0.000328173  -0.040266818   0.000812320  -0.000019829  -0.005507162  -0.000010518

   90    7.1  0.5 -0.5  -0.000000006  -0.000000000  -0.000092923   0.000000756  -0.000100767  -0.004131082   0.000012679  -0.006627364
                         0.000000000   0.000000000   0.000000000   0.000000001   0.000000006  -0.000000000   0.000000017   0.000000002

   91    8.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000031   0.000000000  -0.000000204   0.000000002  -0.000000003  -0.000000105  -0.000000000   0.000000072

   92    9.1  0.5 -0.5  -0.000000000   0.000000213   0.000000002   0.000000230   0.000000013  -0.000000000  -0.000000071  -0.000000000
                         0.000000000  -0.000000050  -0.000000001  -0.000000107  -0.000000318   0.000000008  -0.000000206  -0.000000000

   93   10.1  0.5 -0.5  -0.000000037  -0.000000000  -0.000000233   0.000000002   0.000000000   0.000000012   0.000000000  -0.000000229
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   94   11.1  0.5 -0.5   0.000000068   0.000000000  -0.000000049   0.000000000   0.000000010   0.000000391  -0.000000000   0.000000014
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   95   12.1  0.5 -0.5   0.000000000  -0.000000008  -0.000000000  -0.000000003  -0.000000065   0.000000002   0.000000120   0.000000000
                         0.000000000  -0.000000032  -0.000000000  -0.000000006  -0.000000003   0.000000000  -0.000000041  -0.000000000

   96   13.1  0.5 -0.5  -0.000000000   0.000000016  -0.000000000  -0.000000030   0.000000001  -0.000000000   0.000000006   0.000000000
                         0.000000000  -0.000000004   0.000000000   0.000000014  -0.000000025   0.000000001   0.000000018   0.000000000

   97   14.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000010   0.000000000  -0.000000040   0.000000000  -0.000000001  -0.000000044  -0.000000000   0.000000008

   98   15.1  0.5 -0.5   0.000000000  -0.000000002   0.000000000   0.000000002  -0.000000050   0.000000001  -0.000000031  -0.000000000
                         0.000000000  -0.000000008   0.000000000   0.000000005  -0.000000002   0.000000000   0.000000011   0.000000000


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.004150416  -0.068082440   0.004998976   0.362479248   0.167737138  -0.117993107   0.000000000  -0.153719221
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000126   0.000000018   0.000000000   0.000000000  -0.000000057  -0.000000083  -0.000000010   0.000000002
                         0.000940712   0.015430699  -0.005253377  -0.380928709  -0.168131933   0.118270757   0.000000063   0.101140713

    3    3.1  1.5  1.5   0.068709011  -0.004189467   0.283634737  -0.003912005   0.085881785   0.122087694  -0.116736230  -0.000000511
                         0.423079638  -0.025791699   0.012742621  -0.000175720  -0.165633156  -0.235461457  -0.010699575   0.000000016

    4    4.1  1.5  1.5   0.362819354  -0.022118127  -0.010962595   0.000151200  -0.005021461  -0.007138409  -0.033418329   0.000000018
                        -0.058922609   0.003592775   0.244013040  -0.003364868  -0.002603818  -0.003701204   0.364605886   0.000000523

    5    5.1  1.5  1.5  -0.030133966   0.001837417  -0.027965651   0.000386269  -0.058095417  -0.082585483  -0.353584453  -0.000000173
                        -0.185551620   0.011311564  -0.001256385   0.000017332   0.112042308   0.159277558  -0.032408143   0.000000027

    6    6.1  1.5  1.5   0.178315358  -0.010870432  -0.017721049   0.000244388   0.004210274   0.005985278   0.014337504  -0.000000025
                        -0.028958776   0.001765783   0.394447712  -0.005439237   0.002182060   0.003104058  -0.156427381  -0.000000134

    7    7.1  1.5  1.5   0.000000525  -0.000000090  -0.000000001  -0.000000004   0.000000498   0.000000720   0.000000089  -0.000000019
                        -0.019155645  -0.314222414   0.001921822   0.139376172  -0.006195898   0.004359002  -0.000000547   0.465319471

    8    8.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000034   0.000000049   0.000000006  -0.000000001
                         0.000000008   0.000000132   0.000170117   0.012336901   0.000886592  -0.000623627  -0.000000037   0.030541326

    9    9.1  1.5  1.5  -0.000000063   0.000000004  -0.001153681   0.000015912  -0.013931759  -0.019805163  -0.000859528  -0.000000000
                         0.000000010  -0.000000001   0.025679406  -0.000354038  -0.007223807  -0.010268984   0.009377748   0.000000052

   10   10.1  1.5  1.5  -0.000000018   0.000000001   0.006671254  -0.000091895  -0.010074843  -0.014321973   0.001342153   0.000000052
                        -0.000000111   0.000000007   0.000299717  -0.000004135   0.019430334   0.027621852   0.000123017   0.000000000

   11   11.1  1.5  1.5  -0.000375269   0.000022877  -0.000210985   0.000002910  -0.000029035  -0.000041275  -0.000268080   0.000000000
                         0.000060944  -0.000003716   0.004696261  -0.000064760  -0.000015062  -0.000021397   0.002924850   0.000000005

   12   12.1  1.5  1.5   0.000003853   0.000063196   0.000058666   0.004253907   0.001968403  -0.001384654  -0.000000000  -0.001803731
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000057925   0.000003532   0.002068527  -0.000028535   0.001117312   0.001588330   0.002760448  -0.000000002
                        -0.000356674   0.000021744   0.000092931  -0.000001282  -0.002154853  -0.003063304   0.000253012  -0.000000000

   14   14.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000003  -0.000000005  -0.000000001   0.000000000
                        -0.000011348  -0.000186146   0.000030329   0.002199034   0.001506501  -0.001059738   0.000000004  -0.004559616

   15   15.1  1.5  1.5   0.000011105  -0.000000677  -0.000123737   0.000001706   0.000071223   0.000101250   0.000332159  -0.000000000
                        -0.000001804   0.000000110   0.002754222  -0.000037979   0.000036920   0.000052505  -0.003623977  -0.000000004

   16   16.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000005  -0.000000007  -0.000000001   0.000000000
                        -0.000013727  -0.000225167  -0.000058245  -0.004223592  -0.001277231   0.000898451   0.000000005  -0.003232943

   17   17.1  1.5  1.5   0.000038707  -0.000002360  -0.002629571   0.000036265  -0.000482635  -0.000686114   0.003389097   0.000000006
                         0.000238339  -0.000014530  -0.000118137   0.000001629   0.000930828   0.001323251   0.000310631  -0.000000000

   18    1.1  1.5  0.5  -0.003765815   0.000229681   0.245683985  -0.003386930  -0.093553665  -0.132990846  -0.108305356   0.000000364
                        -0.023188258   0.001413604   0.011037675  -0.000152230   0.180426508   0.256491423  -0.009926832   0.000000020

   19    2.1  1.5  0.5   0.438431431  -0.026727569  -0.006580258   0.000090769  -0.174571457  -0.248167976  -0.022033669   0.000000009
                        -0.071202175   0.004341457   0.146467512  -0.002018878  -0.090517178  -0.128675526   0.240395177   0.000000773

   20    3.1  1.5  0.5  -0.014633380  -0.240040800  -0.002701954  -0.195998483   0.227186979  -0.159813614  -0.000000041  -0.281252197
                        -0.000000391   0.000000066   0.000000048   0.000000016   0.000000916   0.000001375   0.000000026  -0.000000015

   21    4.1  1.5  0.5  -0.000000549   0.000000086   0.000000053   0.000000019   0.000000956   0.000001436   0.000000019  -0.000000014
                         0.013783189   0.226093847   0.004219439   0.306037672  -0.200617010   0.141123269   0.000000103   0.215745190

   22    5.1  1.5  0.5  -0.022895994  -0.375577890  -0.001755006  -0.127330966   0.279738336  -0.196779993  -0.000000831   0.293333170
                        -0.000000601   0.000000098   0.000000069   0.000000029   0.000000560   0.000000879  -0.000000090   0.000000006

   23    6.1  1.5  0.5   0.000000594  -0.000000095  -0.000000065  -0.000000027  -0.000000490  -0.000000774   0.000000091  -0.000000007
                        -0.013855132  -0.227273772  -0.000370600  -0.026940706   0.301565417  -0.212133965  -0.000000825   0.277248619

   24    7.1  1.5  0.5   0.029410065  -0.001792892   0.013889189  -0.000191544  -0.114416599  -0.162652826   0.010095038   0.000000001
                        -0.004776253   0.000291236  -0.309155633   0.004263709  -0.059325652  -0.084336150  -0.110140435   0.000000089

   25    8.1  1.5  0.5   0.000000111  -0.000000007  -0.001479107   0.000020398   0.009523701   0.013538743  -0.001275660   0.000000000
                        -0.000000018   0.000000001   0.032923032  -0.000454044   0.004938082   0.007019900   0.013917903   0.000000000

   26    9.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000029  -0.000000043  -0.000000005   0.000000001
                        -0.000000006  -0.000000091  -0.000374577  -0.027162213  -0.008392778   0.005903787   0.000000032  -0.019462107

   27   10.1  1.5  0.5  -0.000000001  -0.000000010   0.000079924   0.005793928   0.006857512  -0.004823885   0.000000032  -0.033437584
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000029   0.000000043   0.000000005  -0.000000001

   28   11.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000007   0.000000011   0.000000001  -0.000000000
                        -0.000005304  -0.000087008   0.000041749   0.003027745  -0.000427158   0.000300489  -0.000000003   0.003759745

   29   12.1  1.5  0.5   0.000003503  -0.000000214   0.002883271  -0.000039748  -0.001097870  -0.001560673  -0.001270939   0.000000004
                         0.000021570  -0.000001315   0.000129535  -0.000001787   0.002117339   0.003009976  -0.000116489   0.000000000

   30   13.1  1.5  0.5  -0.000010605  -0.000173967   0.000000293   0.000021457  -0.001331982   0.000936970   0.000000008  -0.004678663
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000

   31   14.1  1.5  0.5   0.000319090  -0.000019452  -0.000052897   0.000000729   0.002418829   0.003438569   0.000111084  -0.000000000
                        -0.000051821   0.000003160   0.001177436  -0.000016248   0.001254184   0.001782907  -0.001211965  -0.000000007

   32   15.1  1.5  0.5  -0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000010  -0.000000016   0.000000001   0.000000000
                         0.000017356   0.000284701  -0.000027001  -0.001959000   0.004230307  -0.002975782  -0.000000009   0.001693364

   33   16.1  1.5  0.5  -0.000254252   0.000015500  -0.000172489   0.000002379  -0.000389849  -0.000554203  -0.000261951   0.000000000
                         0.000041291  -0.000002518   0.003839375  -0.000052942  -0.000202146  -0.000287352   0.002857975   0.000000005

   34   17.1  1.5  0.5  -0.000022896  -0.000375575   0.000037821   0.002743690  -0.004015488   0.002824673   0.000000006   0.000929419
                        -0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000013  -0.000000019   0.000000000   0.000000000

   35    1.1  1.5 -0.5  -0.001432142  -0.023492060   0.003390349   0.245931801  -0.288919392   0.203238808   0.000000364   0.108759331
                        -0.000000107   0.000000014  -0.000000068  -0.000000025  -0.000000996  -0.000001510   0.000000013   0.000000010

   36    2.1  1.5 -0.5  -0.000000825   0.000000136  -0.000000069  -0.000000028  -0.000000618  -0.000000963   0.000000079  -0.000000004
                         0.027077873   0.444175492  -0.002020918  -0.146615251   0.279543798  -0.196643213  -0.000000769   0.241402824

   37    3.1  1.5 -0.5   0.038479004  -0.002346149   0.195800983  -0.002699229  -0.073564607  -0.104575031  -0.280078214   0.000000039
                         0.236936600  -0.014444078   0.008796612  -0.000121315   0.141875437   0.201687843  -0.025670849   0.000000030

   38    4.1  1.5 -0.5  -0.223170009   0.013604857  -0.013735277   0.000189426  -0.125282876  -0.178100117   0.019691798  -0.000000029
                         0.036243256  -0.002210018   0.305729290  -0.004215185  -0.064961358  -0.092344643  -0.214844642   0.000000101

   39    5.1  1.5 -0.5   0.060205866  -0.003670871   0.127202659  -0.001753235  -0.090580064  -0.128765125   0.292108759   0.000000835
                         0.370720925  -0.022599807   0.005714762  -0.000078835   0.174692923   0.248340651   0.026773530  -0.000000013

   40    6.1  1.5 -0.5   0.224334677  -0.013675862   0.001209151  -0.000016698   0.188323608   0.267717820   0.025305436  -0.000000016
                        -0.036432392   0.002221595  -0.026913558   0.000370224   0.097647518   0.138812354  -0.276091347  -0.000000830

   41    7.1  1.5 -0.5  -0.000000066   0.000000012  -0.000000008  -0.000000003  -0.000000071  -0.000000111   0.000000009  -0.000000000
                         0.001816392   0.029795377   0.004268010   0.309467470   0.183217160  -0.128882470  -0.000000089  -0.110602103

   42    8.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000007   0.000000112  -0.000454502  -0.032956241  -0.015250461   0.010727793  -0.000000000   0.013976242

   43    9.1  1.5 -0.5   0.000000090  -0.000000005   0.001219065  -0.000016811  -0.005241163  -0.007450755  -0.001776373   0.000000002
                        -0.000000015   0.000000001  -0.027134842   0.000374199  -0.002717519  -0.003863284   0.019380870   0.000000033

   44   10.1  1.5 -0.5   0.000000002  -0.000000000  -0.005788090   0.000079843  -0.002220508  -0.003156538  -0.033298011  -0.000000033
                         0.000000010  -0.000000001  -0.000260037   0.000003587   0.004282431   0.006087836  -0.003051963   0.000000002

   45   11.1  1.5 -0.5   0.000085883  -0.000005236  -0.000135888   0.000001874  -0.000266757  -0.000379217   0.000343165  -0.000000000
                        -0.000013948   0.000000850   0.003024694  -0.000041707  -0.000138327  -0.000196618  -0.003744051  -0.000000004

   46   12.1  1.5 -0.5   0.000001332   0.000021853   0.000039788   0.002886179  -0.003390524   0.002385046   0.000000004   0.001276267
                         0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000012  -0.000000018   0.000000000   0.000000000

   47   13.1  1.5 -0.5   0.000027887  -0.000001700  -0.000021436   0.000000292   0.000431294   0.000613121  -0.004659133  -0.000000008
                         0.000171717  -0.000010468  -0.000000963   0.000000014  -0.000831804  -0.001182479  -0.000427038   0.000000000

   48   14.1  1.5 -0.5  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000006   0.000000009  -0.000000001   0.000000000
                         0.000019707   0.000323271  -0.000016265  -0.001178624  -0.003873308   0.002724649   0.000000007  -0.001217045

   49   15.1  1.5 -0.5  -0.000281019   0.000017131   0.000087922  -0.000001213   0.002641772   0.003755500   0.000154559  -0.000000000
                         0.000045638  -0.000002783  -0.001957026   0.000026973   0.001369788   0.001947232  -0.001686295  -0.000000009

   50   16.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000004  -0.000000007   0.000000001  -0.000000000
                        -0.000015703  -0.000257583  -0.000052995  -0.003843248   0.000624270  -0.000439142  -0.000000005   0.002869955

   51   17.1  1.5 -0.5   0.000060205  -0.000003671  -0.002740925   0.000037783   0.001300235   0.001848348   0.000925539  -0.000000006
                         0.000370718  -0.000022600  -0.000123140   0.000001698  -0.002507621  -0.003564794   0.000084831  -0.000000000

   52    1.1  1.5 -1.5  -0.010913765   0.000665321   0.362113993  -0.004993939   0.054313099   0.077210645   0.153077576  -0.000000000
                        -0.067201997   0.004096743   0.016268410  -0.000224359  -0.104749514  -0.148910255   0.014030487  -0.000000000

   53    2.1  1.5 -1.5   0.015231151  -0.000928526  -0.017096439   0.000235776   0.104996038   0.149260711  -0.009231466  -0.000000004
                        -0.002473557   0.000150923   0.380544864  -0.005248083   0.054440830   0.077392422   0.100718538  -0.000000064

   54    3.1  1.5 -1.5  -0.026129741  -0.428622572  -0.003915949  -0.283920831  -0.265231036   0.186574444   0.000000508  -0.117225544
                        -0.000000823   0.000000132  -0.000000031  -0.000000014  -0.000000126  -0.000000214   0.000000062  -0.000000007

   55    4.1  1.5 -1.5   0.000000729  -0.000000120   0.000000029   0.000000013   0.000000083   0.000000149  -0.000000065   0.000000008
                        -0.022408024  -0.367572792   0.003368263   0.244259170  -0.008040882   0.005656407   0.000000519  -0.366134179

   56    5.1  1.5 -1.5   0.011459825   0.187982607   0.000386657   0.027993859   0.179414889  -0.126208384   0.000000169  -0.355066548
                         0.000000387  -0.000000060   0.000000021   0.000000006   0.000000581   0.000000862   0.000000042  -0.000000013

   57    6.1  1.5 -1.5   0.000000394  -0.000000064   0.000000023   0.000000007   0.000000589   0.000000876   0.000000037  -0.000000012
                        -0.011012914  -0.180651538   0.005444724   0.394845582   0.006742309  -0.004742129  -0.000000131   0.157083066

   58    7.1  1.5 -1.5  -0.310158904   0.018907840   0.006255330  -0.000086252   0.003869414   0.005500697  -0.042471304   0.000000039
                         0.050370457  -0.003071211  -0.139235728   0.001919886   0.002007120   0.002851575   0.463377167   0.000000552

   59    8.1  1.5 -1.5   0.000000130  -0.000000008   0.000553691  -0.000007635  -0.000553654  -0.000787065  -0.002787612   0.000000003
                        -0.000000021   0.000000001  -0.012324469   0.000169946  -0.000287017  -0.000408135   0.030413842   0.000000038

   60    9.1  1.5 -1.5  -0.000000000   0.000000000   0.000000006   0.000000002   0.000000074   0.000000113  -0.000000004  -0.000000000
                         0.000000004   0.000000064   0.000354395   0.025705308  -0.022309113   0.015693224   0.000000052  -0.009417056

   61   10.1  1.5 -1.5   0.000000007   0.000000112  -0.000091988  -0.006677983   0.031114074  -0.021886991  -0.000000052   0.001347778
                         0.000000000  -0.000000000   0.000000006   0.000000002   0.000000074   0.000000113  -0.000000004  -0.000000000

   62   11.1  1.5 -1.5  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000004   0.000000006  -0.000000000   0.000000000
                         0.000023177   0.000380185   0.000064825   0.004700998  -0.000046491   0.000032709   0.000000005  -0.002937110

   63   12.1  1.5 -1.5   0.000010131  -0.000000618   0.004249620  -0.000058607   0.000637367   0.000906070   0.001796202  -0.000000000
                         0.000062379  -0.000003803   0.000190919  -0.000002633  -0.001229240  -0.001747468   0.000164633   0.000000000

   64   13.1  1.5 -1.5   0.000022029   0.000361347  -0.000028564  -0.002070613  -0.003450598   0.002427298   0.000000002   0.002772019
                         0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000007  -0.000000010  -0.000000000   0.000000000

   65   14.1  1.5 -1.5  -0.000183739   0.000011201   0.000098695  -0.000001361  -0.000940790  -0.001337413   0.000416172  -0.000000000
                         0.000029840  -0.000001819  -0.002196818   0.000030299  -0.000487810  -0.000693451  -0.004540584  -0.000000004

   66   15.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000006   0.000000008   0.000000001  -0.000000000
                        -0.000000686  -0.000011251   0.000038017   0.002757000   0.000114054  -0.000080224  -0.000000004   0.003639167

   67   16.1  1.5 -1.5  -0.000222255   0.000013549  -0.000189559   0.000002614   0.000797612   0.001133872   0.000295082  -0.000000000
                         0.000036095  -0.000002201   0.004219336  -0.000058186   0.000413557   0.000587923  -0.003219448  -0.000000005

   68   17.1  1.5 -1.5  -0.000014720  -0.000241461   0.000036301   0.002632223   0.001490552  -0.001048512  -0.000000006   0.003403302
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000002  -0.000000003  -0.000000001   0.000000000

   69    1.1  0.5  0.5   0.030287178  -0.001846362  -0.000337966   0.000004661  -0.004275697  -0.006078262   0.001561837  -0.000000002
                        -0.004918700   0.000299919   0.007522677  -0.000103709  -0.002217027  -0.003151566  -0.017040205  -0.000000009

   70    2.1  0.5  0.5   0.000914781   0.015005655   0.000144864   0.010508359  -0.013533985   0.009520400   0.000000031  -0.005944247
                         0.000000045  -0.000000007  -0.000000003  -0.000000001  -0.000000038  -0.000000058   0.000000003   0.000000000

   71    3.1  0.5  0.5  -0.000000029   0.000000005   0.000000003   0.000000001   0.000000041   0.000000063  -0.000000002  -0.000000000
                         0.001368185   0.022443252   0.000136098   0.009872987  -0.014507336   0.010205099   0.000000028  -0.002736321

   72    4.1  0.5  0.5  -0.000962307  -0.015785353  -0.000102998  -0.007467080  -0.008563568   0.006023983  -0.000000008   0.015943731
                        -0.000000024   0.000000004  -0.000000001  -0.000000000  -0.000000019  -0.000000029  -0.000000002   0.000000000

   73    5.1  0.5  0.5  -0.001514838   0.000092348   0.000823818  -0.000011361  -0.004138666  -0.005883463   0.000375638   0.000000000
                         0.000246012  -0.000015004  -0.018337132   0.000252882  -0.002145907  -0.003050610  -0.004098345   0.000000002

   74    6.1  0.5  0.5   0.000000040  -0.000000007  -0.000000000  -0.000000000   0.000000010   0.000000015   0.000000002  -0.000000000
                        -0.001473765  -0.024175129   0.000243008   0.017621038   0.007354241  -0.005173260  -0.000000015   0.005308292

   75    7.1  0.5  0.5  -0.009068021   0.000552915  -0.003321669   0.000045821  -0.002125745  -0.003021932   0.018472703   0.000000033
                        -0.055836856   0.003403916  -0.000149229   0.000002057   0.004099767   0.005828163   0.001693134  -0.000000001

   76    8.1  0.5  0.5   0.000000021  -0.000000001   0.002385399  -0.000032907   0.089922123   0.127831845   0.009996383  -0.000000004
                        -0.000000003   0.000000000  -0.053095636   0.000731729   0.046625556   0.066281054  -0.109064099  -0.000000375

   77    9.1  0.5  0.5  -0.000000002  -0.000000029   0.002293545   0.166315069   0.051391393  -0.036150589  -0.000000198   0.119168868
                        -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000180  -0.000000260  -0.000000032   0.000000007

   78   10.1  0.5  0.5   0.000000002  -0.000000000   0.084517788  -0.001165929   0.046204666   0.065682906   0.090282068  -0.000000093
                         0.000000010  -0.000000001   0.003797058  -0.000052363  -0.089110556  -0.126678146   0.008274896  -0.000000005

   79   11.1  0.5  0.5  -0.000000003   0.000000000  -0.193303191   0.002665321   0.024191372   0.034388618   0.004813679  -0.000000148
                        -0.000000019   0.000000001  -0.008684390   0.000119771  -0.046654709  -0.066323576   0.000441199  -0.000000008

   80   12.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000180  -0.000000260  -0.000000032   0.000000007
                        -0.000000011  -0.000000177   0.000489386   0.035477236   0.041988022  -0.029536279   0.000000198  -0.204740346

   81   13.1  0.5  0.5   0.000000001   0.000000014  -0.000000001  -0.000000081   0.000000227  -0.000000160  -0.000000000  -0.000000642
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   82   14.1  0.5  0.5   0.000000034  -0.000000002   0.000000005  -0.000000000  -0.000000065  -0.000000092   0.000000055   0.000000000
                        -0.000000005   0.000000000  -0.000000109   0.000000002  -0.000000034  -0.000000048  -0.000000602  -0.000000000

   83   15.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000001   0.000000013  -0.000000002  -0.000000181   0.000000182  -0.000000128  -0.000000000   0.000000138

   84    1.1  0.5 -0.5   0.000000064  -0.000000010   0.000000001   0.000000000   0.000000035   0.000000053   0.000000002  -0.000000001
                        -0.001870562  -0.030683982   0.000103814   0.007530265  -0.006846724   0.004816305  -0.000000009   0.017111631

   85    2.1  0.5 -0.5   0.002405432  -0.000146686   0.010497770  -0.000144718  -0.004382363  -0.006229760   0.005919435   0.000000031
                         0.014811602  -0.000902943   0.000471626  -0.000006505   0.008451800   0.012014943   0.000542552   0.000000000

   86    3.1  0.5 -0.5   0.022153016  -0.001350487   0.000443110  -0.000006112   0.009059645   0.012879046   0.000249754   0.000000000
                        -0.003597698   0.000219352  -0.009863038   0.000135961   0.004697539   0.006677797  -0.002724899  -0.000000028

   87    4.1  0.5 -0.5  -0.002530423   0.000154284  -0.007459556   0.000102894  -0.002772909  -0.003941856  -0.015877180  -0.000000008
                        -0.015581218   0.000949859  -0.000335129   0.000004622   0.005347836   0.007602398  -0.001455239   0.000000001

   88    5.1  0.5 -0.5  -0.000000006   0.000000001  -0.000000000  -0.000000000  -0.000000006  -0.000000010  -0.000000000   0.000000000
                         0.000093559   0.001534684  -0.000253137  -0.018355628  -0.006627319   0.004661918   0.000000002   0.004115524

   89    6.1  0.5 -0.5  -0.023862497   0.001454700   0.000790849  -0.000010906  -0.004592618  -0.006528793  -0.000484506   0.000000001
                         0.003875320  -0.000236287  -0.017603282   0.000242763  -0.002381277  -0.003385221   0.005286135   0.000000015

   90    7.1  0.5 -0.5   0.003448530   0.056568396   0.000045868   0.003325019   0.006565025  -0.004618104  -0.000000033   0.018550133
                         0.000000109  -0.000000018   0.000000001   0.000000001  -0.000000003  -0.000000002  -0.000000004   0.000000001

   91    8.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000033  -0.000000014  -0.000000300  -0.000000467   0.000000039  -0.000000002
                        -0.000000001  -0.000000022  -0.000732468  -0.053149192   0.143993607  -0.101291315  -0.000000373   0.109521255

   92    9.1  0.5 -0.5  -0.000000005   0.000000000   0.166147481  -0.002291234   0.016640152   0.023655998  -0.118671442  -0.000000200
                        -0.000000029   0.000000002   0.007464376  -0.000102936  -0.032093153  -0.045623120  -0.010876949   0.000000014

   93   10.1  0.5 -0.5  -0.000000001  -0.000000010  -0.001167104  -0.084603039  -0.142694067   0.100377100   0.000000094   0.090660497
                         0.000000000  -0.000000000  -0.000000018  -0.000000006  -0.000000256  -0.000000388   0.000000003   0.000000003

   94   11.1  0.5 -0.5   0.000000001   0.000000019   0.002668011   0.193498171  -0.074708726   0.052553633   0.000000148   0.004833856
                         0.000000000  -0.000000000  -0.000000028  -0.000000010  -0.000000406  -0.000000616   0.000000005   0.000000004

   95   12.1  0.5 -0.5  -0.000000175   0.000000011   0.001592253  -0.000021965  -0.026220995  -0.037275352   0.018687355  -0.000000014
                         0.000000028  -0.000000002  -0.035441487   0.000488893  -0.013595999  -0.019327237  -0.203885732  -0.000000200

   96   13.1  0.5 -0.5   0.000000002  -0.000000000  -0.000000081   0.000000001   0.000000074   0.000000105   0.000000640  -0.000000000
                         0.000000014  -0.000000001  -0.000000004   0.000000000  -0.000000142  -0.000000202   0.000000059   0.000000000

   97   14.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000002  -0.000000034  -0.000000002  -0.000000109  -0.000000104   0.000000073  -0.000000000   0.000000604

   98   15.1  0.5 -0.5   0.000000013  -0.000000001  -0.000000008   0.000000000  -0.000000114  -0.000000161  -0.000000013  -0.000000000
                        -0.000000002   0.000000000   0.000000181  -0.000000002  -0.000000059  -0.000000084   0.000000137   0.000000000


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.204006877  -0.013553413  -0.006729529  -0.272821270  -0.000011045  -0.000000000   0.000004870  -0.000535052
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000001  -0.000000008  -0.000000006   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.216601035   0.014390116   0.006427326   0.260569823  -0.000006063   0.000000000   0.000004378  -0.000480969

    3    3.1  1.5  1.5  -0.005887218   0.088616991   0.012860564  -0.000317333   0.000000003  -0.000213494  -0.000043642  -0.000000397
                         0.021148627  -0.318330778  -0.026973388   0.000665349  -0.000000000   0.000122105   0.000015578   0.000000142

    4    4.1  1.5  1.5   0.009601250  -0.144518902  -0.287368770   0.007088377  -0.000000000   0.000190538  -0.000016220  -0.000000148
                         0.002672643  -0.040231210  -0.137013746   0.003379761  -0.000000005   0.000333144  -0.000045443  -0.000000414

    5    5.1  1.5  1.5  -0.004206944   0.063326234   0.144306926  -0.003559688  -0.000000004   0.000246177   0.000013159   0.000000120
                         0.015112924  -0.227481059  -0.302665281   0.007465690   0.000000000  -0.000140798  -0.000004697  -0.000000043

    6    6.1  1.5  1.5  -0.024155311   0.363587655   0.098757460  -0.002436010  -0.000000000   0.000072345  -0.000003585  -0.000000033
                        -0.006724177   0.101215612   0.047086289  -0.001161593  -0.000000002   0.000126491  -0.000010045  -0.000000091

    7    7.1  1.5  1.5  -0.000000006   0.000000073   0.000000050  -0.000000001   0.000000001  -0.000000001   0.000000000   0.000000000
                        -0.097634120  -0.006486397   0.003010077   0.122030034  -0.000160547  -0.000000002   0.000000292  -0.000032108

    8    8.1  1.5  1.5  -0.000000001   0.000000012   0.000000009  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.020687258  -0.001374375   0.000383022   0.015527860  -0.000000021  -0.000000000  -0.000000004   0.000000441

    9    9.1  1.5  1.5  -0.000572736   0.008620855  -0.010801383   0.000266432   0.000000000  -0.000000047  -0.000000041  -0.000000000
                        -0.000159438   0.002399875  -0.005149961   0.000127031   0.000000000  -0.000000083  -0.000000116  -0.000000001

   10   10.1  1.5  1.5   0.000159431  -0.002399761   0.005150128  -0.000127035   0.000000000  -0.000000337   0.000000304   0.000000003
                        -0.000572708   0.008620444  -0.010801732   0.000266440  -0.000000000   0.000000193  -0.000000108  -0.000000001

   11   11.1  1.5  1.5  -0.000078351   0.001179336  -0.005810571   0.000143326   0.000000169  -0.224322207   0.017925277   0.000163144
                        -0.000021813   0.000328304  -0.002770406   0.000068337   0.000006410  -0.392214914   0.050219394   0.000456969

   12   12.1  1.5  1.5  -0.005701310  -0.000378773  -0.000188060  -0.007624140   0.011714882  -0.000000007  -0.005420490   0.595561458
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000004   0.000000000  -0.000000000

   13   13.1  1.5  1.5   0.000010533  -0.000158575  -0.003206024   0.000079083  -0.000005821   0.357044601   0.038879133   0.000353940
                        -0.000037844   0.000569635   0.006724225  -0.000165863   0.000000154  -0.204206970  -0.013877405  -0.000126309

   14   14.1  1.5  1.5   0.000000000  -0.000000001  -0.000000001   0.000000000   0.000000459  -0.000000770   0.000000020   0.000000012
                        -0.002631062  -0.000174798  -0.000189411  -0.007678887  -0.125652839  -0.000001433   0.003786422  -0.416016820

   15   15.1  1.5  1.5  -0.000722358   0.010872996   0.006195405  -0.000152819  -0.000000022   0.027679097  -0.004947914  -0.000045032
                        -0.000201084   0.003026827   0.002953890  -0.000072867  -0.000000781   0.048395351  -0.013862096  -0.000126218

   16   16.1  1.5  1.5   0.000000000  -0.000000002  -0.000000001   0.000000000   0.000000499  -0.000000882   0.000000026   0.000000018
                         0.006098624   0.000405168   0.000059022   0.002392843  -0.127157231  -0.000001643  -0.003030450   0.332971064

   17   17.1  1.5  1.5   0.000202005  -0.003040686  -0.002474338   0.000061038   0.000000840  -0.051970242  -0.032936923  -0.000299874
                        -0.000725666   0.010922781   0.005189606  -0.000128010  -0.000000021   0.029723678   0.011756451   0.000107002

   18    1.1  1.5  0.5   0.004851451  -0.073027010  -0.087966864   0.002169961   0.000000007  -0.000449429   0.000013547   0.000000123
                        -0.017428039   0.262328287   0.184499224  -0.004550952  -0.000000000   0.000257045  -0.000004836  -0.000000044

   19    2.1  1.5  0.5  -0.019317720   0.290771882   0.145482164  -0.003588540   0.000000000  -0.000152293  -0.000000738  -0.000000007
                        -0.005377502   0.080945143   0.069364030  -0.001711094   0.000000004  -0.000266276  -0.000002068  -0.000000019

   20    3.1  1.5  0.5  -0.041507555  -0.002757631  -0.008551644  -0.346690032  -0.000244878  -0.000000003  -0.000002692   0.000295747
                        -0.000000006   0.000000084   0.000000058  -0.000000001  -0.000000001   0.000000002  -0.000000000  -0.000000000

   21    4.1  1.5  0.5  -0.000000006   0.000000079   0.000000054  -0.000000001  -0.000000001   0.000000002  -0.000000000  -0.000000000
                        -0.302233538  -0.020079174  -0.003194956  -0.129527766   0.000231727   0.000000003  -0.000002486   0.000273116

   22    5.1  1.5  0.5   0.030079457   0.001998384   0.006196425   0.251207689  -0.000015617  -0.000000000  -0.000002086   0.000229196
                         0.000000005  -0.000000061  -0.000000042   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000

   23    6.1  1.5  0.5  -0.000000005   0.000000067   0.000000046  -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.255403757  -0.016967992  -0.002699972  -0.109460474  -0.000041635  -0.000000000   0.000002186  -0.000240221

   24    7.1  1.5  0.5   0.015408561  -0.231930662   0.349333458  -0.008616814   0.000000000  -0.000001579  -0.000043237  -0.000000394
                         0.004289457  -0.064564899   0.166557716  -0.004108401   0.000000000  -0.000002761  -0.000121133  -0.000001103

   25    8.1  1.5  0.5  -0.000330677   0.004977373  -0.006236854   0.000153841  -0.000000000   0.000000243  -0.000000226  -0.000000002
                        -0.000092054   0.001385602  -0.002973652   0.000073349  -0.000000000   0.000000424  -0.000000634  -0.000000006

   26    9.1  1.5  0.5  -0.000000001   0.000000007   0.000000005  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.001611485  -0.000107058   0.000561971   0.022782696  -0.000000029  -0.000000000  -0.000000000   0.000000032

   27   10.1  1.5  0.5  -0.022276299  -0.001479947  -0.000119674  -0.004851829   0.000000416   0.000000000   0.000000007  -0.000000732
                         0.000000001  -0.000000007  -0.000000005   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   28   11.1  1.5  0.5  -0.000000000   0.000000003   0.000000002  -0.000000000   0.000000745  -0.000001334   0.000000036   0.000000019
                        -0.010804929  -0.000717836  -0.000114223  -0.004630736  -0.204786896  -0.000002484   0.001298058  -0.142608158

   29   12.1  1.5  0.5   0.000135582  -0.002040860  -0.002458286   0.000060641  -0.000008125   0.499449794  -0.015538819  -0.000141235
                        -0.000487055   0.007331195   0.005155939  -0.000127179   0.000000214  -0.285653770   0.005546436   0.000050476

   30   13.1  1.5  0.5  -0.001332954  -0.000088557  -0.000274626  -0.011133537   0.131050584   0.000001577  -0.000356655   0.039178377
                        -0.000000000   0.000000003   0.000000002  -0.000000000   0.000000520  -0.000000848   0.000000028   0.000000028

   31   14.1  1.5  0.5   0.000108350  -0.001630899  -0.009587222   0.000236483   0.000000095  -0.125981250  -0.033055125  -0.000300855
                         0.000030159  -0.000454010  -0.004571065   0.000112755   0.000003601  -0.220271299  -0.092607524  -0.000842912

   32   15.1  1.5  0.5  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000592   0.000001027  -0.000000008   0.000000025
                        -0.002361974  -0.000156920  -0.000024965  -0.001012124   0.160323263   0.000001910  -0.003435708   0.377486488

   33   16.1  1.5  0.5  -0.000682210   0.010268676  -0.004469154   0.000110238  -0.000000084   0.112492792  -0.034876367  -0.000317428
                        -0.000189911   0.002858596  -0.002130835   0.000052558  -0.000003249   0.196687333  -0.097709663  -0.000889274

   34   17.1  1.5  0.5   0.000525393   0.000034905   0.000108254   0.004388711  -0.237239277  -0.000003051  -0.003755019   0.412581367
                         0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000938   0.000001640  -0.000000027   0.000000010

   35    1.1  1.5 -0.5  -0.272303276  -0.018090692   0.005041815   0.204396999  -0.000517743  -0.000000006  -0.000000131   0.000014384
                         0.000000012  -0.000000164  -0.000000113   0.000000002  -0.000000002   0.000000003  -0.000000000   0.000000000

   36    2.1  1.5 -0.5  -0.000000012   0.000000162   0.000000112  -0.000000002  -0.000000001   0.000000002  -0.000000000   0.000000000
                        -0.301828434  -0.020052227   0.003975609   0.161172048   0.000306751   0.000000004  -0.000000020   0.000002196

   37    3.1  1.5 -0.5  -0.000739629   0.011131597  -0.149205887   0.003680445  -0.000000004   0.000212567  -0.000278536  -0.000002535
                         0.002656592  -0.039987056   0.312940221  -0.007719128   0.000000000  -0.000121575   0.000099420   0.000000905

   38    4.1  1.5 -0.5   0.019343657  -0.291162148   0.116918411  -0.002883954  -0.000000000   0.000115046   0.000091812   0.000000836
                         0.005384809  -0.081053779   0.055745201  -0.001374972  -0.000000003   0.000201152   0.000257222   0.000002341

   39    5.1  1.5 -0.5   0.000535990  -0.008066782   0.108112903  -0.002666809  -0.000000000   0.000013556  -0.000215857  -0.000001965
                        -0.001925164   0.028977590  -0.226752956   0.005593193   0.000000000  -0.000007753   0.000077048   0.000000701

   40    6.1  1.5 -0.5   0.016346441  -0.246047831   0.098804643  -0.002437153   0.000000000  -0.000020670  -0.000080754  -0.000000735
                         0.004550456  -0.068494846   0.047108788  -0.001161952   0.000000001  -0.000036141  -0.000226241  -0.000002059

   41    7.1  1.5 -0.5  -0.000000001   0.000000019   0.000000013  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.240749784   0.015994474   0.009546122   0.387008188   0.000003181   0.000000000  -0.000001171   0.000128619

   42    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.005166637  -0.000343251  -0.000170432  -0.006909483  -0.000000489  -0.000000000  -0.000000006   0.000000673

   43    9.1  1.5 -0.5   0.000103138  -0.001552454  -0.020564831   0.000507262   0.000000000  -0.000000014   0.000000011   0.000000000
                         0.000028704  -0.000432173  -0.009805048   0.000241861   0.000000000  -0.000000025   0.000000030   0.000000000

   44   10.1  1.5 -0.5  -0.000396889   0.005974116  -0.002088094   0.000051500   0.000000000  -0.000000361   0.000000689   0.000000006
                         0.001425735  -0.021460276   0.004379510  -0.000108026  -0.000000000   0.000000207  -0.000000246  -0.000000002

   45   11.1  1.5 -0.5   0.000691541  -0.010409124   0.004179940  -0.000103104   0.000000075  -0.101670836  -0.047939973  -0.000436328
                         0.000192508  -0.002897694   0.001992942  -0.000049157   0.000002818  -0.177765897  -0.134308770  -0.001222527

   46   12.1  1.5 -0.5  -0.007609962  -0.000505574   0.000140896   0.005711994   0.575367859   0.000007160   0.000149985  -0.016499027
                         0.000000000  -0.000000005  -0.000000003   0.000000000   0.000002191  -0.000003848   0.000000060  -0.000000033

   47   13.1  1.5 -0.5  -0.000023752   0.000357475  -0.004791569   0.000118193   0.000001790  -0.113758843  -0.036898300  -0.000335908
                         0.000085313  -0.001284126   0.010049702  -0.000247891  -0.000000047   0.065062904   0.013170449   0.000119869

   48   14.1  1.5 -0.5   0.000000000  -0.000000004  -0.000000003   0.000000000  -0.000000935   0.000001705  -0.000000012   0.000000050
                         0.001692914   0.000112469  -0.000261988  -0.010621180   0.253753268   0.000003173  -0.000894994   0.098330029

   49   15.1  1.5 -0.5   0.000151172  -0.002275450   0.000913595  -0.000022535  -0.000000057   0.079595922   0.126897945   0.001154959
                         0.000042083  -0.000633440   0.000435590  -0.000010744  -0.000002168   0.139169097   0.355517876   0.003235763

   50   16.1  1.5 -0.5  -0.000000000   0.000000003   0.000000002  -0.000000000   0.000000904  -0.000001540   0.000000011  -0.000000038
                        -0.010659140  -0.000708150  -0.000122126  -0.004951141  -0.226584499  -0.000002862  -0.000944229   0.103747478

   51   17.1  1.5 -0.5   0.000009362  -0.000140901   0.001888781  -0.000046590  -0.000003462   0.205936248  -0.388570323  -0.003536479
                        -0.000033627   0.000506147  -0.003961476   0.000097716   0.000000091  -0.117782581   0.138695667   0.001262334

   52    1.1  1.5 -1.5   0.003634789  -0.054711092   0.117414797  -0.002896205   0.000000000  -0.000009588  -0.000503913  -0.000004586
                        -0.013056925   0.196533717  -0.246262484   0.006074419   0.000000000   0.000005484   0.000179866   0.000001637

   53    2.1  1.5 -1.5   0.013862981  -0.208666528   0.235203699  -0.005801637   0.000000000   0.000003010   0.000161685   0.000001472
                         0.003859170  -0.058088627   0.112142110  -0.002766140   0.000000000   0.000005263   0.000452978   0.000004123

   54    3.1  1.5 -1.5  -0.330435252  -0.021952762   0.000737149   0.029882399   0.000245946   0.000000003  -0.000000422   0.000046339
                         0.000000010  -0.000000136  -0.000000094   0.000000001   0.000000001  -0.000000002   0.000000000  -0.000000000

   55    4.1  1.5 -1.5  -0.000000011   0.000000149   0.000000103  -0.000000001  -0.000000001   0.000000003  -0.000000000   0.000000000
                        -0.150014210  -0.009966294   0.007852889   0.318360765   0.000383784   0.000000005   0.000000439  -0.000048251

   56    5.1  1.5 -1.5  -0.236130989  -0.015687538   0.008270908   0.335306966  -0.000283597  -0.000000004   0.000000127  -0.000013972
                         0.000000014  -0.000000187  -0.000000129   0.000000002  -0.000000001   0.000000002  -0.000000000   0.000000000

   57    6.1  1.5 -1.5   0.000000013  -0.000000177  -0.000000122   0.000000002  -0.000000001   0.000000001  -0.000000000   0.000000000
                         0.377413013   0.025073763  -0.002698785  -0.109408202   0.000145718   0.000000002   0.000000097  -0.000010666

   58    7.1  1.5 -1.5  -0.006248808   0.094057595   0.110150573  -0.002717028  -0.000000000   0.000079707   0.000010794   0.000000098
                        -0.001739469   0.026183776   0.052518381  -0.001295500  -0.000000002   0.000139363   0.000030239   0.000000275

   59    8.1  1.5 -1.5  -0.001324032   0.019929444   0.014016243  -0.000345732   0.000000000   0.000000010  -0.000000148  -0.000000001
                        -0.000368571   0.005547963   0.006682765  -0.000164850  -0.000000000   0.000000018  -0.000000415  -0.000000004

   60    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.008948661   0.000594514   0.000295166   0.011966285  -0.000000096  -0.000000000   0.000000001  -0.000000123

   61   10.1  1.5 -1.5   0.008948235   0.000594485   0.000295175   0.011966672   0.000000388   0.000000000   0.000000003  -0.000000323
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   62   11.1  1.5 -1.5  -0.000000000   0.000000001   0.000000001  -0.000000000   0.000001740  -0.000003036   0.000000032  -0.000000045
                         0.001224180   0.000081330   0.000158784   0.006437227  -0.451832924  -0.000005648  -0.000485219   0.053322633

   63   12.1  1.5 -1.5   0.000101580  -0.001528992   0.003281221  -0.000080936   0.000000008   0.010169161   0.560901507   0.005105033
                        -0.000364897   0.005492460  -0.006881940   0.000169753  -0.000000000  -0.005816064  -0.200207268  -0.001822182

   64   13.1  1.5 -1.5   0.000591295   0.000039282  -0.000183752  -0.007449415  -0.411316586  -0.000005129   0.000375803  -0.041281586
                        -0.000000000   0.000000002   0.000000002  -0.000000000  -0.000001553   0.000002756  -0.000000024   0.000000046

   65   14.1  1.5 -1.5  -0.000168394   0.002534681  -0.006931357   0.000170972  -0.000000043   0.062383042   0.139850551   0.001272846
                        -0.000046879   0.000705605  -0.003304782   0.000081518  -0.000001626   0.109073333   0.391805842   0.003566070

   66   15.1  1.5 -1.5   0.000000000  -0.000000006  -0.000000004   0.000000000  -0.000000221   0.000000368   0.000000018   0.000000000
                         0.011286440   0.000749824  -0.000169302  -0.006863564   0.055751614   0.000000689   0.000134010  -0.014718681

   67   16.1  1.5 -1.5   0.000390326  -0.005875220   0.002159903  -0.000053277  -0.000000050   0.063129960  -0.111933397  -0.001018757
                         0.000108657  -0.001635545   0.001029814  -0.000025401  -0.000001864   0.110379209  -0.313593118  -0.002854077

   68   17.1  1.5 -1.5   0.011338118   0.000753257  -0.000141817  -0.005749292   0.059869885   0.000000739  -0.000318392   0.034972204
                        -0.000000000   0.000000006   0.000000004  -0.000000000   0.000000210  -0.000000399   0.000000033  -0.000000000

   69    1.1  0.5  0.5  -0.000000001   0.000000012  -0.000000505   0.000000012   0.000000000   0.000000060  -0.000000076  -0.000000001
                        -0.000000000   0.000000003  -0.000000241   0.000000006  -0.000000000   0.000000106  -0.000000214  -0.000000002

   70    2.1  0.5  0.5  -0.000000174  -0.000000012   0.000000001   0.000000035   0.000000088   0.000000000   0.000000000  -0.000000033
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   71    3.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000264  -0.000000018   0.000000001   0.000000024   0.000000171   0.000000000   0.000000001  -0.000000062

   72    4.1  0.5  0.5   0.000000402   0.000000027   0.000000019   0.000000775   0.000000212   0.000000000   0.000000003  -0.000000349
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   73    5.1  0.5  0.5  -0.000000008   0.000000118  -0.000000300   0.000000007  -0.000000000   0.000000044  -0.000000084  -0.000000001
                        -0.000000002   0.000000033  -0.000000143   0.000000004  -0.000000000   0.000000077  -0.000000237  -0.000000002

   74    6.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000118  -0.000000008  -0.000000006  -0.000000227  -0.000000192  -0.000000000  -0.000000002   0.000000250

   75    7.1  0.5  0.5   0.000000009  -0.000000140   0.000000198  -0.000000005   0.000000000  -0.000000009   0.000000123   0.000000001
                        -0.000000033   0.000000503  -0.000000416   0.000000010   0.000000000   0.000000005  -0.000000044  -0.000000000

   76    8.1  0.5  0.5  -0.013768385   0.207242875   0.145754690  -0.003595260  -0.000000000   0.000000118   0.000000109   0.000000001
                        -0.003832712   0.057692320   0.069493967  -0.001714273  -0.000000000   0.000000206   0.000000306   0.000000003

   77    9.1  0.5  0.5  -0.247137052  -0.016418786  -0.002612566  -0.105916920   0.000000518   0.000000000  -0.000000002   0.000000170
                         0.000000005  -0.000000065  -0.000000045   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000

   78   10.1  0.5  0.5  -0.000385232   0.005797426  -0.115528233   0.002849726  -0.000000000   0.000001960  -0.000002484  -0.000000023
                         0.001383578  -0.020825590   0.242305660  -0.005976824   0.000000000  -0.000001121   0.000000887   0.000000008

   79   11.1  0.5  0.5   0.004773582  -0.071854042  -0.009320681   0.000229996  -0.000000000   0.000000347   0.000000524   0.000000005
                        -0.017148115   0.258114758   0.019548935  -0.000482212   0.000000000  -0.000000198  -0.000000187  -0.000000002

   80   12.1  0.5  0.5   0.000000005  -0.000000065  -0.000000045   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.032014514  -0.002126944  -0.006595619  -0.267391315   0.000000806   0.000000000   0.000000019  -0.000002141

   81   13.1  0.5  0.5  -0.017156638  -0.001139812   0.000991194   0.040183608   0.000000579   0.000000000  -0.000000002   0.000000267
                         0.000000001  -0.000000018  -0.000000013   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   82   14.1  0.5  0.5   0.001674052  -0.025197948   0.031572843  -0.000778790   0.000000000  -0.000000205  -0.000000035  -0.000000000
                         0.000466023  -0.007014609   0.015053527  -0.000371317   0.000000000  -0.000000359  -0.000000099  -0.000000001

   83   15.1  0.5  0.5  -0.000000001   0.000000018   0.000000013  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.043312689  -0.002877517   0.000128414   0.005205730   0.000000411   0.000000000   0.000000002  -0.000000216

   84    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000012   0.000000001   0.000000014   0.000000559   0.000000122   0.000000000   0.000000002  -0.000000228

   85    2.1  0.5 -0.5   0.000000003  -0.000000047  -0.000000015   0.000000000  -0.000000000   0.000000076  -0.000000031  -0.000000000
                        -0.000000011   0.000000168   0.000000031  -0.000000001   0.000000000  -0.000000044   0.000000011   0.000000000

   86    3.1  0.5 -0.5  -0.000000017   0.000000254   0.000000022  -0.000000001   0.000000000  -0.000000085   0.000000021   0.000000000
                        -0.000000005   0.000000071   0.000000010  -0.000000000   0.000000000  -0.000000148   0.000000059   0.000000001

   87    4.1  0.5 -0.5  -0.000000007   0.000000108  -0.000000334   0.000000008  -0.000000000   0.000000184  -0.000000329  -0.000000003
                         0.000000026  -0.000000388   0.000000700  -0.000000017   0.000000000  -0.000000105   0.000000117   0.000000001

   88    5.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000122   0.000000008   0.000000008   0.000000332   0.000000089   0.000000000   0.000000002  -0.000000251

   89    6.1  0.5 -0.5  -0.000000008   0.000000113  -0.000000205   0.000000005  -0.000000000   0.000000095  -0.000000084  -0.000000001
                        -0.000000002   0.000000032  -0.000000098   0.000000002  -0.000000000   0.000000167  -0.000000235  -0.000000002

   90    7.1  0.5 -0.5   0.000000522   0.000000035   0.000000011   0.000000460   0.000000010   0.000000000   0.000000001  -0.000000131
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   91    8.1  0.5 -0.5   0.000000010  -0.000000129  -0.000000089   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.215123250   0.014291890  -0.003983042  -0.161473964   0.000000238   0.000000000  -0.000000003   0.000000325

   92    9.1  0.5 -0.5   0.004403170  -0.066277859   0.045583740  -0.001124337  -0.000000000   0.000000449   0.000000160   0.000000001
                        -0.015817352   0.238083951  -0.095606049   0.002358255   0.000000000  -0.000000257  -0.000000057  -0.000000001

   93   10.1  0.5 -0.5  -0.021617478  -0.001436207  -0.006621432  -0.268437713  -0.000002258  -0.000000000  -0.000000024   0.000002638
                        -0.000000005   0.000000069   0.000000047  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000

   94   11.1  0.5 -0.5   0.267929527   0.017800138  -0.000534253  -0.021657238  -0.000000400  -0.000000000   0.000000005  -0.000000556
                        -0.000000008   0.000000109   0.000000075  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000

   95   12.1  0.5 -0.5  -0.002049012   0.030841762  -0.241361128   0.005953525  -0.000000000  -0.000000400   0.000000720   0.000000007
                        -0.000570471   0.008585730  -0.115077892   0.002838614   0.000000000  -0.000000700   0.000002016   0.000000018

   96   13.1  0.5 -0.5   0.000305660  -0.004601113  -0.017293923   0.000426594  -0.000000000   0.000000502   0.000000251   0.000000002
                        -0.001098064   0.016528158   0.036271787  -0.000894697   0.000000000  -0.000000287  -0.000000090  -0.000000001

   97   14.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.026156096  -0.001737708  -0.000862780  -0.034977894  -0.000000414  -0.000000000   0.000000001  -0.000000105

   98   15.1  0.5 -0.5  -0.002772113   0.041726063   0.004698959  -0.000115908   0.000000000  -0.000000204   0.000000072   0.000000001
                        -0.000771683   0.011615710   0.002240403  -0.000055277   0.000000000  -0.000000357   0.000000203   0.000000002


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.000028956  -0.000002384  -0.000001195  -0.000016327   0.000000650  -0.000027308  -0.047881423  -0.001105901
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000027
                        -0.000069014   0.000005682  -0.000003334  -0.000045552  -0.000005425   0.000227992   0.033605976   0.000776187

    3    3.1  1.5  1.5   0.000004052   0.000049220   0.000437227  -0.000031998  -0.000003560  -0.000000085   0.000087617  -0.003805634
                         0.000001024   0.000012432   0.000116972  -0.000008561  -0.000114454  -0.000002724  -0.000775953   0.033595500

    4    4.1  1.5  1.5  -0.000003575  -0.000043426  -0.000086522   0.000006332   0.000061186   0.000001456  -0.002528176   0.109460251
                         0.000014155   0.000171937   0.000323411  -0.000023668  -0.000001903  -0.000000045  -0.000286104   0.012399431

    5    5.1  1.5  1.5   0.000017108   0.000207802   0.000380839  -0.000027871   0.000007668   0.000000183   0.000245963  -0.010650376
                         0.000004321   0.000052485   0.000101886  -0.000007457   0.000246522   0.000005866  -0.002171553   0.094019942

    6    6.1  1.5  1.5  -0.000000966  -0.000011729   0.000132452  -0.000009694   0.000202897   0.000004828   0.000761872  -0.032985985
                         0.000003823   0.000046437  -0.000495092   0.000036232  -0.000006311  -0.000000150   0.000086299  -0.003736579

    7    7.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000003  -0.000000232
                         0.000392237  -0.000032293  -0.000005904  -0.000080673  -0.000001917   0.000080566   0.126689426   0.002926090

    8    8.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000322
                        -0.000000229   0.000000019  -0.000000001  -0.000000015  -0.000000005   0.000000227  -0.167955739  -0.003879199

    9    9.1  1.5  1.5  -0.000000003  -0.000000037   0.000000065  -0.000000005   0.000000326   0.000000008   0.001923550  -0.083282044
                         0.000000012   0.000000147  -0.000000242   0.000000018  -0.000000010  -0.000000000   0.000217177  -0.009434039

   10   10.1  1.5  1.5  -0.000000005  -0.000000057  -0.000000527   0.000000039   0.000000011   0.000000000   0.000084444  -0.003687208
                        -0.000000001  -0.000000014  -0.000000141   0.000000010   0.000000351   0.000000008  -0.000751806   0.032549877

   11   11.1  1.5  1.5   0.004018496   0.048808660   0.016181168  -0.001184239  -0.166558277  -0.003963472   0.000669270  -0.028976802
                        -0.015909774  -0.193246561  -0.060483590   0.004426361   0.005180768   0.000123347   0.000075725  -0.003282433

   12   12.1  1.5  1.5  -0.031583025   0.002600284   0.001335154   0.018243392  -0.000730958   0.030717419   0.017058423   0.000393993
                        -0.000000001   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5   0.013579998   0.164948182   0.095028410  -0.006954465   0.009329918   0.000222113   0.000057041  -0.002467653
                         0.003430039   0.041661257   0.025422975  -0.001860608   0.299951988   0.007137755  -0.000503140   0.021784092

   14   14.1  1.5  1.5   0.000000248  -0.000000144  -0.000000072  -0.000000011   0.000000109  -0.000000135   0.000000001  -0.000000049
                         0.236828062  -0.019497964  -0.007136164  -0.097511209  -0.005897415   0.247828653   0.039267194   0.000906938

   15   15.1  1.5  1.5  -0.000905779  -0.011001776  -0.175117801   0.012816165  -0.167633344  -0.003989059  -0.000660846   0.028612021
                         0.003586096   0.043558971   0.654572214  -0.047903447   0.005214158   0.000124120  -0.000074811   0.003241109

   16   16.1  1.5  1.5   0.000000498  -0.000000273  -0.000000036  -0.000000010  -0.000000022   0.000000010   0.000000001  -0.000000067
                         0.372698425  -0.030683956  -0.002345280  -0.032047795   0.002490197  -0.104646236   0.025253840   0.000583276

   17   17.1  1.5  1.5   0.014025918   0.170364815   0.636495554  -0.046580560   0.001245364   0.000029642   0.000073462  -0.003184474
                         0.003542664   0.043029384   0.170281749  -0.012462238   0.040038380   0.000952768  -0.000649298   0.028112045

   18    1.1  1.5  0.5   0.000010307   0.000125188   0.000062647  -0.000004585   0.000000110   0.000000003   0.000036465  -0.001565748
                         0.000002603   0.000031619   0.000016760  -0.000001227   0.000003545   0.000000084  -0.000319247   0.013822306

   19    2.1  1.5  0.5   0.000008372   0.000101692  -0.000040068   0.000002932   0.000000611   0.000000015  -0.001868717   0.080908012
                        -0.000033148  -0.000402627   0.000149769  -0.000010961  -0.000000019  -0.000000000  -0.000211211   0.009165103

   20    3.1  1.5  0.5   0.000249569  -0.000020547  -0.000004677  -0.000063910  -0.000006862   0.000288356  -0.065905277  -0.001522210
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000009   0.000000122

   21    4.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000010   0.000000158
                        -0.000340640   0.000028045   0.000000500   0.000006832  -0.000004583   0.000192600   0.045254406   0.001045247

   22    5.1  1.5  0.5  -0.000252273   0.000020769   0.000009889   0.000135130   0.000007529  -0.000316391   0.095487604   0.002205402
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000016   0.000000497

   23    6.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000015  -0.000000486
                        -0.000358878   0.000029546   0.000002518   0.000034406  -0.000005755   0.000241829   0.088849683   0.002052090

   24    7.1  1.5  0.5  -0.000001405  -0.000017061  -0.000026618   0.000001948   0.000595101   0.000014161   0.000774194  -0.033519792
                         0.000005561   0.000067550   0.000099494  -0.000007281  -0.000018510  -0.000000441   0.000087754  -0.003797049

   25    8.1  1.5  0.5  -0.000000005  -0.000000055  -0.000000002   0.000000000   0.000001105   0.000000026   0.002029501  -0.087869893
                         0.000000018   0.000000219   0.000000006  -0.000000000  -0.000000034  -0.000000001   0.000229898  -0.009953714

   26    9.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000004  -0.000000279
                        -0.000000126   0.000000010   0.000000003   0.000000042  -0.000000009   0.000000370   0.101238293   0.002338251

   27   10.1  1.5  0.5   0.000000034  -0.000000003   0.000000000   0.000000000   0.000000020  -0.000000861   0.189669642   0.004380720
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000279

   28   11.1  1.5  0.5   0.000000666  -0.000000361  -0.000000019  -0.000000007  -0.000000082   0.000000074   0.000000001   0.000000031
                         0.521058147  -0.042898360  -0.001798746  -0.024579392   0.007498134  -0.315096345  -0.029045477  -0.000670853

   29   12.1  1.5  0.5  -0.011406651  -0.138548968  -0.069778388   0.005106615  -0.000133784  -0.000003206  -0.000012992   0.000557852
                        -0.002881078  -0.034993596  -0.018667839   0.001366228  -0.004299860  -0.000102320   0.000113743  -0.004924673

   30   13.1  1.5  0.5  -0.385029224   0.031699226   0.012066276   0.164878836   0.011136216  -0.467980344   0.041300363   0.000953891
                         0.000000442  -0.000000259  -0.000000138  -0.000000026   0.000000190  -0.000000232  -0.000000003   0.000000126

   31   14.1  1.5  0.5   0.005808386   0.070548574  -0.052713501   0.003857883   0.445175617   0.010593542  -0.000305664   0.013233964
                        -0.022996246  -0.279320855   0.197037721  -0.014419731  -0.013847097  -0.000329670  -0.000034487   0.001499120

   32   15.1  1.5  0.5   0.000000253  -0.000000143  -0.000000034  -0.000000024  -0.000000051   0.000000054  -0.000000006   0.000000179
                         0.175798449  -0.014473295  -0.002225994  -0.030417433   0.003273777  -0.137574796  -0.020443365  -0.000472157

   33   16.1  1.5  0.5  -0.007402778  -0.089914135   0.008078524  -0.000591225   0.486026718   0.011565645   0.000652420  -0.028247258
                         0.029308656   0.355994063  -0.030196604   0.002209857  -0.015117726  -0.000359904   0.000073805  -0.003199792

   34   17.1  1.5  0.5   0.082615111  -0.006801609   0.001538214   0.021017989  -0.001918532   0.080623125  -0.001475661  -0.000034096
                        -0.000000131   0.000000068  -0.000000005  -0.000000015  -0.000000033   0.000000044  -0.000000006   0.000000132

   35    1.1  1.5 -0.5   0.000129120  -0.000010630   0.000004746   0.000064850  -0.000000084   0.000003547   0.013910705   0.000321323
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000014  -0.000000300

   36    2.1  1.5 -0.5   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000016  -0.000000471
                         0.000415270  -0.000034189  -0.000011346  -0.000155036  -0.000000015   0.000000612   0.081425460   0.001880615

   37    3.1  1.5 -0.5  -0.000019921  -0.000241970   0.000061738  -0.000004518  -0.000008965  -0.000000213   0.000171458  -0.007418158
                        -0.000005032  -0.000061115   0.000016517  -0.000001209  -0.000288216  -0.000006858  -0.001512523   0.065486460

   38    4.1  1.5 -0.5   0.000006868   0.000083417  -0.000001766   0.000000129  -0.000192507  -0.000004581   0.001038587  -0.044966822
                        -0.000027191  -0.000330268   0.000006599  -0.000000483   0.000005988   0.000000143   0.000117808  -0.005093736

   39    5.1  1.5 -0.5   0.000020137   0.000244592  -0.000130539   0.000009553   0.000009837   0.000000234  -0.000247742   0.010747910
                         0.000005086   0.000061777  -0.000034923   0.000002556   0.000316238   0.000007525   0.002191443  -0.094880794

   40    6.1  1.5 -0.5   0.000007236   0.000087883  -0.000008892   0.000000651  -0.000241713  -0.000005752   0.002039104  -0.088285055
                        -0.000028647  -0.000347952   0.000033237  -0.000002432   0.000007518   0.000000179   0.000230496  -0.010000758

   41    7.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000054
                        -0.000069672   0.000005736  -0.000007537  -0.000102993  -0.000014168   0.000595389  -0.033734167  -0.000779151

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000226   0.000000019  -0.000000000  -0.000000006  -0.000000026   0.000001105  -0.088431864  -0.002042481

   43    9.1  1.5 -0.5   0.000000003   0.000000031  -0.000000011   0.000000001  -0.000000370  -0.000000009   0.002323423  -0.100594939
                        -0.000000010  -0.000000122   0.000000040  -0.000000003   0.000000011   0.000000000   0.000262912  -0.011395184

   44   10.1  1.5 -0.5  -0.000000003  -0.000000033  -0.000000000   0.000000000   0.000000027   0.000000001  -0.000492808   0.021348839
                        -0.000000001  -0.000000008  -0.000000000   0.000000000   0.000000861   0.000000020   0.004352913  -0.188464320

   45   11.1  1.5 -0.5  -0.010505328  -0.127597706   0.006352328  -0.000464888   0.314944027   0.007494507  -0.000666594   0.028860898
                         0.041592155   0.505193447  -0.023744355   0.001737632  -0.009796205  -0.000233194  -0.000075479   0.003269300

   46   12.1  1.5 -0.5  -0.142899855   0.011764876  -0.005286217  -0.072232344   0.000102370  -0.004301941  -0.004956169  -0.000114482
                         0.000000191  -0.000000090   0.000000055   0.000000045   0.000000023  -0.000000039  -0.000000005   0.000000107

   47   13.1  1.5 -0.5   0.030734023   0.373306219  -0.159277409   0.011656313   0.014549424   0.000346407  -0.000107243   0.004648689
                         0.007762779   0.094286636  -0.042611465   0.003118553   0.467754121   0.011130827   0.000947843  -0.041037905

   48   14.1  1.5 -0.5   0.000000324  -0.000000204  -0.000000171  -0.000000056   0.000000165  -0.000000196   0.000000005  -0.000000137
                         0.288092419  -0.023718446  -0.014926885  -0.203967099  -0.010598670   0.445390919   0.013318602   0.000307603

   49   15.1  1.5 -0.5  -0.003544369  -0.043049884   0.007861133  -0.000575320   0.137508292   0.003272193  -0.000469177   0.020313450
                         0.014032596   0.170445893  -0.029384057   0.002150362  -0.004277162  -0.000101831  -0.000052967   0.002301071

   50   16.1  1.5 -0.5  -0.000000482   0.000000265   0.000000022   0.000000034   0.000000162  -0.000000177  -0.000000003   0.000000099
                        -0.367173425   0.030229099   0.002287578   0.031258558  -0.011571244   0.486261779  -0.028427914  -0.000656581

   51   17.1  1.5 -0.5  -0.006594505  -0.080099715  -0.020303942   0.001485955  -0.002506562  -0.000059679   0.000003969  -0.000166092
                        -0.001665649  -0.020230970  -0.005431923   0.000397543  -0.080584151  -0.001917604  -0.000033865   0.001466284

   52    1.1  1.5 -1.5   0.000002311   0.000028074  -0.000015772   0.000001154  -0.000000849  -0.000000020  -0.000124478   0.005389437
                         0.000000584   0.000007091  -0.000004220   0.000000309  -0.000027295  -0.000000650   0.001098873  -0.047577144

   53    2.1  1.5 -1.5  -0.000001391  -0.000016900  -0.000011772   0.000000862   0.000227882   0.000005423  -0.000771252   0.033392415
                         0.000005509   0.000066913   0.000044004  -0.000003220  -0.000007088  -0.000000169  -0.000087393   0.003782621

   54    3.1  1.5 -1.5  -0.000050766   0.000004179  -0.000033123  -0.000452604  -0.000002725   0.000114509  -0.033810360  -0.000780884
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000008  -0.000000280

   55    4.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000008   0.000000281
                         0.000177336  -0.000014600   0.000024501   0.000334784   0.000001457  -0.000061215  -0.110160304  -0.002544313

   56    5.1  1.5 -1.5  -0.000214328   0.000017645  -0.000028851  -0.000394232   0.000005869  -0.000246642  -0.094621245  -0.002185438
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000003  -0.000000025

   57    6.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000004
                         0.000047895  -0.000003943  -0.000037507  -0.000512504   0.000004831  -0.000202996   0.033196946   0.000766744

   58    7.1  1.5 -1.5   0.000007908   0.000096052  -0.000020849   0.000001526   0.000080527   0.000001916  -0.002907521   0.125884334
                        -0.000031309  -0.000380295   0.000077932  -0.000005703  -0.000002505  -0.000000060  -0.000329124   0.014259912

   59    8.1  1.5 -1.5  -0.000000005  -0.000000056  -0.000000004   0.000000000   0.000000227   0.000000005   0.003854583  -0.166888406
                         0.000000018   0.000000222   0.000000015  -0.000000001  -0.000000007  -0.000000000   0.000436315  -0.018904766

   60    9.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000027  -0.000000714
                         0.000000151  -0.000000012  -0.000000018  -0.000000250   0.000000008  -0.000000326   0.083814677   0.001935771

   61   10.1  1.5 -1.5   0.000000059  -0.000000005   0.000000040   0.000000546   0.000000008  -0.000000351  -0.032758052  -0.000756533
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000027  -0.000000714

   62   11.1  1.5 -1.5  -0.000000251   0.000000150  -0.000000054  -0.000000011   0.000000066  -0.000000079   0.000000003  -0.000000088
                        -0.199315123   0.016409425  -0.004582040  -0.062610661  -0.003965391   0.166638832   0.029162123   0.000673540

   63   12.1  1.5 -1.5  -0.002521114  -0.030621424   0.017623611  -0.001289795   0.000954984   0.000022725   0.000044347  -0.001920062
                        -0.000636759  -0.007734071   0.004714839  -0.000345059   0.030702571   0.000730605  -0.000391489   0.016950020

   64   13.1  1.5 -1.5  -0.170128079   0.014006481  -0.007199059  -0.098370352   0.007141210  -0.300097055  -0.021923412  -0.000506363
                         0.000000188  -0.000000126   0.000000079   0.000000049   0.000000097  -0.000000105  -0.000000002   0.000000046

   65   14.1  1.5 -1.5   0.004774814   0.057994851  -0.025200898   0.001844347   0.247708851   0.005894561  -0.000901180   0.039017657
                        -0.018904278  -0.229617351   0.094198463  -0.006893709  -0.007704960  -0.000183456  -0.000102035   0.004419837

   66   15.1  1.5 -1.5   0.000000058  -0.000000035   0.000000550   0.000000277   0.000000043  -0.000000031  -0.000000000   0.000000048
                         0.044926864  -0.003698719   0.049588247   0.677592080  -0.003990989   0.167714417  -0.028795009  -0.000665067

   67   16.1  1.5 -1.5   0.007514172   0.091267117  -0.008282472   0.000606151  -0.104595650  -0.002488993  -0.000579577   0.025093356
                        -0.029749662  -0.361350840   0.030959034  -0.002265595   0.003253391   0.000077441  -0.000065585   0.002842523

   68   17.1  1.5 -1.5  -0.175714822   0.014466404  -0.048218833  -0.658879703   0.000953229  -0.040057744  -0.028291836  -0.000653441
                         0.000000231  -0.000000125   0.000000535   0.000000269   0.000000007   0.000000003   0.000000002  -0.000000089

   69    1.1  0.5  0.5  -0.000000002  -0.000000019  -0.000000036   0.000000003   0.000000173   0.000000004   0.001463081  -0.063345741
                         0.000000006   0.000000075   0.000000135  -0.000000010  -0.000000005  -0.000000000   0.000165720  -0.007175668

   70    2.1  0.5  0.5  -0.000000053   0.000000004   0.000000010   0.000000132  -0.000000002   0.000000087  -0.035372761  -0.000816965
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000011  -0.000000295

   71    3.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000011   0.000000281
                        -0.000000039   0.000000003   0.000000009   0.000000125  -0.000000001   0.000000022  -0.022421700  -0.000517839

   72    4.1  0.5  0.5   0.000000203  -0.000000017   0.000000000   0.000000001   0.000000012  -0.000000496   0.064327067   0.001485741
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000031

   73    5.1  0.5  0.5  -0.000000002  -0.000000026  -0.000000014   0.000000001   0.000000399   0.000000010   0.000487533  -0.021108402
                         0.000000009   0.000000103   0.000000054  -0.000000004  -0.000000012  -0.000000000   0.000055229  -0.002391115

   74    6.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000097
                         0.000000049  -0.000000004   0.000000000   0.000000004  -0.000000009   0.000000375   0.018090558   0.000417826

   75    7.1  0.5  0.5  -0.000000005  -0.000000055   0.000000127  -0.000000009   0.000000004   0.000000000  -0.000202437   0.008775518
                        -0.000000001  -0.000000014   0.000000034  -0.000000002   0.000000116   0.000000003   0.001789283  -0.077468900

   76    8.1  0.5  0.5  -0.000000006  -0.000000073  -0.000000306   0.000000022  -0.000000472  -0.000000011  -0.009768106   0.422920033
                         0.000000024   0.000000290   0.000001144  -0.000000084   0.000000015   0.000000000  -0.001103876   0.047907566

   77    9.1  0.5  0.5  -0.000000301   0.000000025  -0.000000020  -0.000000278   0.000000031  -0.000001287  -0.349739762  -0.008077767
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000012  -0.000000962

   78   10.1  0.5  0.5   0.000000037   0.000000445   0.000000744  -0.000000054  -0.000000106  -0.000000003   0.000689293  -0.029805385
                         0.000000009   0.000000112   0.000000199  -0.000000015  -0.000003413  -0.000000081  -0.006077138   0.263117821

   79   11.1  0.5  0.5  -0.000000085  -0.000001038   0.000000787  -0.000000058   0.000000052   0.000000001  -0.000196351   0.008562292
                        -0.000000022  -0.000000262   0.000000211  -0.000000015   0.000001658   0.000000039   0.001745794  -0.075586066

   80   12.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000012  -0.000000962
                         0.000000884  -0.000000073  -0.000000008  -0.000000112   0.000000065  -0.000002723   0.655240725   0.015133820

   81   13.1  0.5  0.5  -0.000001238   0.000000102   0.000000007   0.000000090  -0.000000015   0.000000631   0.000000309   0.000000007
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   82   14.1  0.5  0.5   0.000000001   0.000000017   0.000000137  -0.000000010   0.000000094   0.000000002  -0.000000015   0.000000652
                        -0.000000006  -0.000000069  -0.000000512   0.000000037  -0.000000003  -0.000000000  -0.000000002   0.000000074

   83   15.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000747   0.000000062   0.000000011   0.000000151   0.000000016  -0.000000655  -0.000000168  -0.000000004

   84    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000014
                         0.000000078  -0.000000006   0.000000010   0.000000140   0.000000004  -0.000000173   0.063750867   0.001472436

   85    2.1  0.5 -0.5  -0.000000004  -0.000000051   0.000000127  -0.000000009   0.000000003   0.000000000  -0.000091662   0.003981498
                        -0.000000001  -0.000000013   0.000000034  -0.000000002   0.000000087   0.000000002   0.000811807  -0.035147971

   86    3.1  0.5 -0.5  -0.000000001  -0.000000009   0.000000032  -0.000000002   0.000000022   0.000000001   0.000514580  -0.022279212
                         0.000000003   0.000000037  -0.000000121   0.000000009  -0.000000001  -0.000000000   0.000058008  -0.002523752

   87    4.1  0.5 -0.5   0.000000016   0.000000197   0.000000001  -0.000000000  -0.000000015  -0.000000000   0.000167202  -0.007240525
                         0.000000004   0.000000050   0.000000000  -0.000000000  -0.000000496  -0.000000012  -0.001476303   0.063918278

   88    5.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000003
                         0.000000107  -0.000000009   0.000000004   0.000000056   0.000000010  -0.000000400   0.021243401   0.000490651

   89    6.1  0.5 -0.5   0.000000001   0.000000012   0.000000001  -0.000000000   0.000000375   0.000000009  -0.000415181   0.017975595
                        -0.000000004  -0.000000047  -0.000000003   0.000000000  -0.000000012  -0.000000000  -0.000046933   0.002036239

   90    7.1  0.5 -0.5   0.000000056  -0.000000005  -0.000000010  -0.000000132   0.000000003  -0.000000116   0.077964352   0.001800698
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000006   0.000000248

   91    8.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000087   0.000002618
                         0.000000300  -0.000000025   0.000000087   0.000001185  -0.000000011   0.000000473  -0.425624822  -0.009830281

   92    9.1  0.5 -0.5  -0.000000024  -0.000000291  -0.000000269   0.000000020  -0.000000040  -0.000000001  -0.000908261   0.039366021
                        -0.000000006  -0.000000074  -0.000000072   0.000000005  -0.000001287  -0.000000031   0.008026543  -0.347517219

   93   10.1  0.5 -0.5  -0.000000459   0.000000038  -0.000000056  -0.000000770  -0.000000081   0.000003415  -0.264800583  -0.006116104
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000040   0.000000883

   94   11.1  0.5 -0.5   0.000001070  -0.000000088  -0.000000060  -0.000000815   0.000000039  -0.000001659   0.076069483   0.001756801
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000063   0.000001400

   95   12.1  0.5 -0.5   0.000000018   0.000000216  -0.000000029   0.000000002  -0.000002722  -0.000000065  -0.015037755   0.651076771
                        -0.000000071  -0.000000857   0.000000108  -0.000000008   0.000000085   0.000000002  -0.001702476   0.073752599

   96   13.1  0.5 -0.5  -0.000000099  -0.000001200   0.000000087  -0.000000006   0.000000020   0.000000000   0.000000001  -0.000000035
                        -0.000000025  -0.000000303   0.000000023  -0.000000002   0.000000631   0.000000015  -0.000000007   0.000000307

   97   14.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000071   0.000000006  -0.000000039  -0.000000530   0.000000002  -0.000000094  -0.000000656  -0.000000015

   98   15.1  0.5 -0.5  -0.000000015  -0.000000183   0.000000039  -0.000000003  -0.000000655  -0.000000016   0.000000004  -0.000000167
                         0.000000060   0.000000724  -0.000000146   0.000000011   0.000000020   0.000000000   0.000000000  -0.000000019


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.073390725  -0.001399347  -0.090614239   0.003014702   0.091071869  -0.000273689  -0.133608768   0.004956006
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000001  -0.000000051   0.000000002   0.000000027  -0.000000004  -0.000000001  -0.000000002   0.000000005
                        -0.072874680   0.001389572   0.097419537  -0.003241067  -0.097315309   0.000292444   0.128074117  -0.004750706

    3    3.1  1.5  1.5  -0.001470857  -0.077141706   0.002059166   0.061888569   0.000439080   0.146142920  -0.000166791  -0.004494533
                        -0.001144735  -0.060036638  -0.001313705  -0.039486481   0.000177106   0.058953850   0.000203428   0.005485351

    4    4.1  1.5  1.5   0.000166038   0.008708664   0.001026614   0.030857500   0.000087681   0.029199295   0.004235409   0.114183470
                        -0.000213316  -0.011189886   0.001608941   0.048364111  -0.000217407  -0.072383128   0.003470449   0.093557510

    5    5.1  1.5  1.5   0.001069440   0.056125332   0.000278537   0.008388913   0.000332383   0.110652511  -0.003615926  -0.097478869
                         0.000832869   0.043680353  -0.000178056  -0.005352300   0.000134058   0.044637112   0.004412921   0.118969328

    6    6.1  1.5  1.5   0.000136708   0.007170501   0.002065521   0.062084689  -0.000204083  -0.067936976  -0.001255603  -0.033851241
                        -0.000176380  -0.009213493   0.003236820   0.097307657   0.000505969   0.168411503  -0.001028935  -0.027736446

    7    7.1  1.5  1.5  -0.000000007   0.000000440  -0.000000019  -0.000000235   0.000000034   0.000000009   0.000000022  -0.000000046
                        -0.008691452   0.000165161  -0.053884347   0.001792324   0.048979630  -0.000147127   0.055720881  -0.002066886

    8    8.1  1.5  1.5   0.000000010  -0.000000610   0.000000027   0.000000326  -0.000000049  -0.000000013  -0.000000031   0.000000066
                         0.000407399  -0.000006993   0.089032166  -0.002961530  -0.085989389   0.000258319  -0.058531816   0.002171156

    9    9.1  1.5  1.5   0.001565913   0.082123622  -0.002816821  -0.084667565   0.000038019   0.012651022  -0.001423477  -0.038375462
                        -0.002010559  -0.105521393  -0.004413437  -0.132702765  -0.000094246  -0.031361132  -0.001166341  -0.031443347

   10   10.1  1.5  1.5  -0.003188077  -0.167277994  -0.001703514  -0.051249418   0.000094247   0.031361279   0.001166343   0.031443400
                        -0.002482333  -0.130186562   0.001087822   0.032698284   0.000038019   0.012651082  -0.001423480  -0.038375527

   11   11.1  1.5  1.5  -0.000075076  -0.003937726  -0.000667194  -0.020054233   0.000005784   0.001922402  -0.001021083  -0.027527473
                         0.000096577   0.005059642  -0.001045592  -0.031431749  -0.000014334  -0.004765541  -0.000836648  -0.022554937

   12   12.1  1.5  1.5  -0.026143483   0.000498480   0.032277595  -0.001073864  -0.029452661   0.000088511   0.043211066  -0.001602846
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5   0.000603029   0.031637952  -0.000311204  -0.009348036   0.000014164   0.004720536  -0.000956532  -0.025786693
                         0.000469489   0.024622693   0.000198435   0.005964297   0.000005710   0.001904269   0.001167385   0.031471708

   14   14.1  1.5  1.5  -0.000000002   0.000000092  -0.000000004  -0.000000049   0.000000006   0.000000002   0.000000004  -0.000000009
                        -0.021257838   0.000405208   0.012685125  -0.000422111  -0.012558645   0.000037754   0.042740717  -0.001585401

   15   15.1  1.5  1.5  -0.000015402  -0.000807885  -0.000479503  -0.014412730   0.000071608   0.023839217   0.000999334   0.026941607
                         0.000020022   0.001038067  -0.000751388  -0.022589612  -0.000177537  -0.059095910   0.000818874   0.022074923

   16   16.1  1.5  1.5  -0.000000002   0.000000128  -0.000000006  -0.000000068   0.000000009   0.000000002   0.000000006  -0.000000012
                         0.015215891  -0.000290285  -0.037573104   0.001249930   0.032927352  -0.000098936  -0.014616405   0.000542171

   17   17.1  1.5  1.5  -0.000236529  -0.012398146   0.000671549   0.020186848   0.000177551   0.059099709  -0.000674953  -0.018195006
                        -0.000183980  -0.009649033  -0.000428502  -0.012879715   0.000071614   0.023840748   0.000823686   0.022206311

   18    1.1  1.5  0.5   0.001408825   0.073942323   0.002331921   0.070121690  -0.000372491  -0.123992476   0.002139642   0.057680125
                         0.001097279   0.057546717  -0.001488436  -0.044739319  -0.000150240  -0.050018417  -0.002611193  -0.070396418

   19    2.1  1.5  0.5  -0.000999555  -0.052421606   0.000787634   0.023674750  -0.000164972  -0.054920248  -0.002005544  -0.054068732
                         0.001283800   0.067357022   0.001233859   0.037106396   0.000409009   0.136143825  -0.001643396  -0.044301859

   20    3.1  1.5  0.5   0.078300808  -0.001492167   0.072262042  -0.002403359   0.012312158  -0.000037076  -0.165128296   0.006125182
                        -0.000000041   0.000000654  -0.000000056  -0.000000466   0.000000039   0.000000010   0.000000025  -0.000000053

   21    4.1  1.5  0.5  -0.000000045   0.000000673  -0.000000060  -0.000000487   0.000000037   0.000000010   0.000000023  -0.000000050
                        -0.063935109   0.001218234  -0.100088779   0.003329108   0.140785965  -0.000423017  -0.067826921   0.002515924

   22    5.1  1.5  0.5   0.084811114  -0.001616787   0.036988407  -0.001230074  -0.008921162   0.000026865   0.119650532  -0.004438254
                        -0.000000046   0.000000280  -0.000000050  -0.000000310  -0.000000028  -0.000000008  -0.000000018   0.000000038

   23    6.1  1.5  0.5   0.000000043  -0.000000231   0.000000045   0.000000274   0.000000031   0.000000008   0.000000020  -0.000000042
                         0.096037296  -0.001830898   0.010144816  -0.000337056   0.118973857  -0.000357479  -0.057318339   0.002126126

   24    7.1  1.5  0.5  -0.000888941  -0.046621596  -0.001369222  -0.041155246   0.000119276   0.039687090  -0.005408237  -0.145800596
                         0.001142148   0.059904592  -0.002146103  -0.064504106  -0.000295672  -0.098381960  -0.004431312  -0.119463292

   25    8.1  1.5  0.5  -0.001587281  -0.083247182  -0.002994715  -0.090013477   0.000021950   0.007304055  -0.000821850  -0.022156232
                         0.002039515   0.106965220  -0.004693726  -0.141081403  -0.000054413  -0.018106317  -0.000673392  -0.018153947

   26    9.1  1.5  0.5  -0.000000009   0.000000528  -0.000000023  -0.000000282  -0.000000028  -0.000000008  -0.000000018   0.000000038
                         0.067417860  -0.001286134  -0.160779505   0.005348609  -0.010597642   0.000031793  -0.091080896   0.003378508

   27   10.1  1.5  0.5  -0.068124038   0.001298256   0.006571380  -0.000219093  -0.088694335   0.000266488   0.023492443  -0.000871409
                         0.000000009  -0.000000528   0.000000023   0.000000282   0.000000028   0.000000008   0.000000018  -0.000000038

   28   11.1  1.5  0.5   0.000000007  -0.000000174   0.000000011   0.000000108  -0.000000015  -0.000000004  -0.000000010   0.000000020
                         0.004143422  -0.000078786   0.029825982  -0.000992121  -0.058237342   0.000174985   0.028058616  -0.001040787

   29   12.1  1.5  0.5  -0.000501842  -0.026339243  -0.000830615  -0.024976873   0.000120452   0.040095339  -0.000691931  -0.018652965
                        -0.000390866  -0.020498909   0.000530171   0.015935844   0.000048583   0.016174412   0.000844424   0.022765241

   30   13.1  1.5  0.5   0.010450037  -0.000199311  -0.002751598   0.000091552  -0.004574533   0.000013776   0.061360422  -0.002276071
                        -0.000000006  -0.000000041  -0.000000004  -0.000000004  -0.000000015  -0.000000004  -0.000000009   0.000000020

   31   14.1  1.5  0.5  -0.000476418  -0.024985965  -0.000121650  -0.003656340  -0.000013386  -0.004460856  -0.001658334  -0.044707326
                         0.000611997   0.032104719  -0.000190849  -0.005730686   0.000033198   0.011058144  -0.001358809  -0.036631444

   32   15.1  1.5  0.5  -0.000000021   0.000000185  -0.000000024  -0.000000168  -0.000000003  -0.000000001  -0.000000002   0.000000004
                        -0.040887964   0.000779398  -0.019859246   0.000660431  -0.012735414   0.000038266   0.006133507  -0.000227512

   33   16.1  1.5  0.5   0.000006259   0.000327935  -0.000549322  -0.016511317   0.000064458   0.021453645  -0.000854404  -0.023033573
                        -0.000007929  -0.000421351  -0.000860841  -0.025878810  -0.000159798  -0.053182271  -0.000700040  -0.018872793

   34   17.1  1.5  0.5   0.039765270  -0.000757907   0.028786732  -0.000957393   0.001800496  -0.000005422  -0.024181754   0.000896985
                        -0.000000021   0.000000250  -0.000000026  -0.000000199   0.000000006   0.000000002   0.000000004  -0.000000008

   35    1.1  1.5 -0.5  -0.093696808   0.001785724  -0.083178472   0.002766460   0.133701070  -0.000401649   0.091009079  -0.003375855
                         0.000000053  -0.000000664   0.000000067   0.000000516  -0.000000077  -0.000000020  -0.000000048   0.000000103

   36    2.1  1.5 -0.5   0.000000047  -0.000000332   0.000000052   0.000000337   0.000000076   0.000000020   0.000000048  -0.000000102
                         0.085352171  -0.001627038   0.044015661  -0.001463822   0.146803864  -0.000441026   0.069900519  -0.002592866

   37    3.1  1.5 -0.5   0.001177166   0.061792327   0.002025845   0.060918845   0.000034380   0.011418138   0.003882082   0.104655671
                         0.000916975   0.048090797  -0.001293092  -0.038867686   0.000013880   0.004606014  -0.004737858  -0.127728402

   38    4.1  1.5 -0.5  -0.000748746  -0.039267680   0.001791045   0.053834907   0.000158244   0.052668880  -0.001946125  -0.052464829
                         0.000960975   0.050455401   0.002806264   0.084377523  -0.000392304  -0.130562923  -0.001594514  -0.042987591

   39    5.1  1.5 -0.5   0.001275741   0.066930038   0.001036818   0.031182233  -0.000024911  -0.008273372  -0.002812923  -0.075832592
                         0.000993219   0.052089299  -0.000661883  -0.019894989  -0.000010057  -0.003337432   0.003433010   0.092550893

   40    6.1  1.5 -0.5   0.001124682   0.058984190  -0.000181524  -0.005456575   0.000133727   0.044508839  -0.001644607  -0.044336331
                        -0.001444741  -0.075789364  -0.000284000  -0.008552373  -0.000331524  -0.110334682  -0.001347472  -0.036327424

   41    7.1  1.5 -0.5   0.000000005  -0.000000038   0.000000006   0.000000039   0.000000009   0.000000002   0.000000006  -0.000000012
                         0.075908717  -0.001447314  -0.076514927   0.002545688  -0.106085226   0.000318824   0.188492154  -0.006991821

   42    8.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.135542066  -0.002584392  -0.167351093   0.005567709  -0.019524035   0.000058673   0.028643750  -0.001062495

   43    9.1  1.5 -0.5   0.000789500   0.041406672   0.002877105   0.086478784  -0.000011887  -0.003964666  -0.002613287  -0.070451989
                        -0.001015298  -0.053203903   0.004508867   0.135541393   0.000029487   0.009828094  -0.002141274  -0.057725617

   44   10.1  1.5 -0.5  -0.001024215  -0.053761184   0.000184853   0.005539835  -0.000247140  -0.082253876  -0.000552255  -0.014889118
                        -0.000797779  -0.041840407  -0.000117606  -0.003534581  -0.000099688  -0.033181091   0.000674068   0.018171655

   45   11.1  1.5 -0.5   0.000048526   0.002544811  -0.000533725  -0.016042553  -0.000065459  -0.021786941   0.000805072   0.021703631
                        -0.000062069  -0.003269844  -0.000836326  -0.025144098   0.000162280   0.054008491   0.000659618   0.017783091

   46   12.1  1.5 -0.5   0.033376055  -0.000636099   0.029627610  -0.000985394  -0.043234799   0.000129881  -0.029431095   0.001091705
                        -0.000000019   0.000000236  -0.000000024  -0.000000184   0.000000025   0.000000007   0.000000016  -0.000000033

   47   13.1  1.5 -0.5   0.000157315   0.008246812  -0.000077183  -0.002319668  -0.000012774  -0.004242363  -0.001442552  -0.038889253
                         0.000122380   0.006418205   0.000049240   0.001480011  -0.000005157  -0.001711346   0.001760552   0.047462905

   48   14.1  1.5 -0.5   0.000000014  -0.000000096   0.000000015   0.000000098   0.000000020   0.000000005   0.000000013  -0.000000027
                         0.040681832  -0.000775574  -0.006797763   0.000226323   0.011924000  -0.000035795   0.057797990  -0.002143930

   49   15.1  1.5 -0.5  -0.000478836  -0.025112573   0.000355369   0.010681713  -0.000014315  -0.004764395   0.000175986   0.004744332
                         0.000614961   0.032267387   0.000556671   0.016741883   0.000035488   0.011810644   0.000144190   0.003887316

   50   16.1  1.5 -0.5  -0.000000010   0.000000070  -0.000000011  -0.000000071  -0.000000015  -0.000000004  -0.000000009   0.000000019
                        -0.000533927   0.000010101  -0.030697498   0.001021176  -0.057346429   0.000172309   0.029777975  -0.001104564

   51   17.1  1.5 -0.5   0.000597961   0.031381395   0.000807001   0.024267992   0.000005028   0.001669757   0.000568501   0.015326009
                         0.000465689   0.024423037  -0.000515123  -0.015483557   0.000002030   0.000673571  -0.000693822  -0.018704831

   52    1.1  1.5 -1.5  -0.001104318  -0.057917481   0.002541474   0.076390203  -0.000253815  -0.084458779  -0.003141037  -0.084679083
                        -0.000859451  -0.045075092  -0.001621524  -0.048738867  -0.000102388  -0.034070514   0.003833521   0.103347742

   53    2.1  1.5 -1.5   0.000853407   0.044758146   0.001743302   0.052399245   0.000109404   0.036406225  -0.003674723  -0.099066635
                        -0.001096635  -0.057510236   0.002732291   0.082127250  -0.000271209  -0.090248857  -0.003010917  -0.081171309

   54    3.1  1.5 -1.5  -0.097750912   0.001863824   0.073412377  -0.002442537   0.157585879  -0.000473453   0.007091538  -0.000263063
                         0.000000019  -0.000000016   0.000000017   0.000000080  -0.000000064  -0.000000017  -0.000000040   0.000000085

   55    4.1  1.5 -1.5  -0.000000017  -0.000000017  -0.000000015  -0.000000058   0.000000070   0.000000019   0.000000044  -0.000000094
                         0.014179364  -0.000270319  -0.057369613   0.001908567   0.078050727  -0.000234422   0.147617318  -0.005475647

   56    5.1  1.5 -1.5   0.071119801  -0.001355497   0.009950929  -0.000330585   0.119316595  -0.000358399   0.153804522  -0.005705155
                        -0.000000021   0.000000444  -0.000000032  -0.000000289  -0.000000088  -0.000000023  -0.000000055   0.000000117

   57    6.1  1.5 -1.5  -0.000000022   0.000000444  -0.000000033  -0.000000294  -0.000000083  -0.000000022  -0.000000052   0.000000111
                         0.011674954  -0.000223157  -0.115426551   0.003839711  -0.181598092   0.000545577  -0.043763192   0.001623345

   58    7.1  1.5 -1.5   0.000101786   0.005338119  -0.000964239  -0.028982868  -0.000055033  -0.018323595  -0.001598728  -0.043100655
                        -0.000130069  -0.006858996  -0.001510851  -0.045425942   0.000136447   0.045423012  -0.001309994  -0.035315013

   59    8.1  1.5 -1.5  -0.000004776  -0.000250224   0.001593199   0.047887892   0.000096627   0.032169175   0.001679370   0.045274935
                         0.000005144   0.000321499   0.002496473   0.075056488  -0.000239566  -0.079745340   0.001376095   0.037096545

   60    9.1  1.5 -1.5   0.000000093  -0.000000921   0.000000110   0.000000790  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.133712579  -0.002548417   0.157412263  -0.005235733   0.033816696  -0.000101626  -0.049612097   0.001840282

   61   10.1  1.5 -1.5  -0.211968083   0.004040522  -0.060792111   0.002021217   0.033816855  -0.000101626  -0.049612181   0.001840286
                         0.000000093  -0.000000921   0.000000110   0.000000790   0.000000000  -0.000000000   0.000000000   0.000000000

   62   11.1  1.5 -1.5   0.000000009  -0.000000068   0.000000010   0.000000067  -0.000000007  -0.000000002  -0.000000005   0.000000010
                        -0.006411370   0.000122325   0.037284409  -0.001240326   0.005138678  -0.000015457  -0.035587736   0.001320073

   63   12.1  1.5 -1.5   0.000393384   0.020631554  -0.000905295  -0.027210867   0.000082084   0.027313986   0.001015858   0.027386477
                         0.000306156   0.016056796   0.000577601   0.017361216   0.000033112   0.011018411  -0.001239818  -0.033424200

   64   13.1  1.5 -1.5   0.040090361  -0.000764241  -0.011088671   0.000369085   0.005090157  -0.000015272   0.040686876  -0.001509218
                        -0.000000010   0.000000136  -0.000000013  -0.000000102  -0.000000013  -0.000000003  -0.000000008   0.000000017

   65   14.1  1.5 -1.5   0.000248943   0.013056133   0.000227000   0.006822978   0.000014125   0.004698256  -0.001226318  -0.033060377
                        -0.000319719  -0.016775967   0.000355877   0.010693894  -0.000035012  -0.011646714  -0.001004808  -0.027088380

   66   15.1  1.5 -1.5   0.000000004  -0.000000143   0.000000008   0.000000083   0.000000034   0.000000009   0.000000022  -0.000000046
                        -0.001315394   0.000025260   0.026795846  -0.000891351   0.063723110  -0.000191434   0.034830337  -0.001291984

   67   16.1  1.5 -1.5  -0.000178186  -0.009345289  -0.000672360  -0.020209518  -0.000037010  -0.012318322   0.000419382   0.011305942
                         0.000229162   0.012007868  -0.001053688  -0.031675125   0.000091752   0.030536363   0.000343610   0.009263638

   68   17.1  1.5 -1.5  -0.015710438   0.000299658   0.023945686  -0.000796613   0.063727206  -0.000191449   0.028708510  -0.001064904
                         0.000000002   0.000000080  -0.000000001  -0.000000031  -0.000000033  -0.000000009  -0.000000021   0.000000044

   69    1.1  0.5  0.5  -0.000429579  -0.022529290   0.000758168   0.022788925  -0.000000000  -0.000000062  -0.000000010  -0.000000263
                         0.000551331   0.028948101   0.001187825   0.035717966   0.000000000   0.000000153  -0.000000008  -0.000000216

   70    2.1  0.5  0.5  -0.060666174   0.001156334  -0.047680242   0.001585812  -0.000000077   0.000000000  -0.000000028   0.000000001
                         0.000000036  -0.000000334   0.000000042   0.000000295  -0.000000000   0.000000000  -0.000000000  -0.000000000

   71    3.1  0.5  0.5  -0.000000037   0.000000375  -0.000000044  -0.000000319  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.066981330   0.001276693  -0.047074090   0.001565606  -0.000000069   0.000000000  -0.000000043   0.000000002

   72    4.1  0.5  0.5  -0.052163370   0.000994329   0.018625394  -0.000619890   0.000000350  -0.000000001  -0.000000518   0.000000019
                         0.000000009  -0.000000221   0.000000015   0.000000139   0.000000000   0.000000000   0.000000000   0.000000000

   73    5.1  0.5  0.5  -0.000510441  -0.026770905  -0.001246488  -0.037466320   0.000000000   0.000000034  -0.000000003  -0.000000073
                         0.000655987   0.034398236  -0.001953580  -0.058722338  -0.000000000  -0.000000084  -0.000000002  -0.000000060

   74    6.1  0.5  0.5  -0.000000001   0.000000139  -0.000000005  -0.000000068   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.043565367  -0.000830843  -0.070554802   0.002347219   0.000000013  -0.000000000   0.000000254  -0.000000009

   75    7.1  0.5  0.5   0.000421708   0.022108169  -0.000518929  -0.015597874   0.000000000   0.000000147   0.000000007   0.000000192
                         0.000328075   0.017206007   0.000331095   0.009951844   0.000000000   0.000000059  -0.000000009  -0.000000235

   76    8.1  0.5  0.5  -0.006048579  -0.317217974   0.003457666   0.103931358   0.000508945   0.169439277   0.008845577   0.238472177
                         0.007768883   0.407596435   0.005415836   0.162895944  -0.001261828  -0.420029197   0.007248168   0.195394953

   77    9.1  0.5  0.5  -0.232902853   0.004443098   0.555430022  -0.018477343  -0.493635281   0.001483218   0.237820335  -0.008821542
                        -0.000000031   0.000001824  -0.000000081  -0.000000975   0.000000130   0.000000034   0.000000082  -0.000000174

   78   10.1  0.5  0.5   0.009312966   0.488592124  -0.005007885  -0.150435524  -0.000054428  -0.018033057  -0.012866459  -0.346862014
                         0.007250425   0.380253869   0.003193352   0.095981876  -0.000021996  -0.007274352   0.015702753   0.423332338

   79   11.1  0.5  0.5   0.003331011   0.174954371   0.018388319   0.552846523   0.001525944   0.507893109  -0.000457088  -0.012315761
                         0.002596338   0.136161008  -0.011735070  -0.352729589   0.000615500   0.204883372   0.000557395   0.015030719

   80   12.1  0.5  0.5  -0.000000031   0.000001824  -0.000000081  -0.000000975   0.000000130   0.000000034   0.000000082  -0.000000174
                        -0.235343624   0.004484998   0.022702166  -0.000756900  -0.040719244   0.000122621   0.546121523  -0.020257545

   81   13.1  0.5  0.5  -0.000000433   0.000000008   0.000000015  -0.000000000  -0.060193244   0.000180782  -0.124770007   0.004628159
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000057   0.000000015   0.000000036  -0.000000076

   82   14.1  0.5  0.5   0.000000002   0.000000121   0.000000003   0.000000085  -0.000087728  -0.029192111   0.003284619   0.088549894
                        -0.000000003  -0.000000156   0.000000004   0.000000133   0.000217472   0.072365508   0.002691288   0.072554308

   83   15.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000057  -0.000000015  -0.000000036   0.000000076
                        -0.000000189   0.000000004  -0.000000110   0.000000004  -0.138224748   0.000415282  -0.010292116   0.000381782

   84    1.1  0.5 -0.5  -0.000000019   0.000000392  -0.000000028  -0.000000257  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.036681896   0.000698931  -0.042368718   0.001409165  -0.000000165   0.000000000  -0.000000340   0.000000013

   85    2.1  0.5 -0.5   0.000912335   0.047875674   0.001336723   0.040195729   0.000000000   0.000000071  -0.000000001  -0.000000018
                         0.000710460   0.037259960  -0.000853213  -0.025645834   0.000000000   0.000000029   0.000000001   0.000000022

   86    3.1  0.5 -0.5   0.000784415   0.041138601  -0.000842365  -0.025319800   0.000000000   0.000000026   0.000000001   0.000000033
                        -0.001007293  -0.052859381  -0.001319676  -0.039684728  -0.000000000  -0.000000064   0.000000001   0.000000027

   87    4.1  0.5 -0.5   0.000784555   0.041165564  -0.000522659  -0.015701692  -0.000000001  -0.000000325  -0.000000012  -0.000000328
                         0.000610871   0.032037689   0.000333304   0.010018092  -0.000000000  -0.000000131   0.000000015   0.000000400

   88    5.1  0.5 -0.5   0.000000003  -0.000000071   0.000000005   0.000000047  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.043588072   0.000831185   0.069656572  -0.002317371   0.000000091  -0.000000000  -0.000000095   0.000000004

   89    6.1  0.5 -0.5  -0.000510177  -0.026756962  -0.001262561  -0.037949453  -0.000000000  -0.000000005  -0.000000007  -0.000000197
                         0.000655759   0.034380317  -0.001978731  -0.059479569   0.000000000   0.000000012  -0.000000006  -0.000000161

   90    7.1  0.5 -0.5   0.028014600  -0.000534295  -0.018502240   0.000615558   0.000000159  -0.000000000  -0.000000303   0.000000011
                        -0.000000011  -0.000000098  -0.000000007   0.000000004   0.000000000   0.000000000   0.000000000   0.000000000

   91    8.1  0.5 -0.5  -0.000000263   0.000001844  -0.000000290  -0.000001877   0.000000260   0.000000069   0.000000164  -0.000000347
                        -0.516490171   0.009845855  -0.193227369   0.006425475   0.452917427  -0.001360601   0.308298827  -0.011435916

   92    9.1  0.5 -0.5   0.003507464   0.183799083  -0.015576365  -0.468242260   0.001375528   0.457790416   0.005590816   0.150726631
                         0.002727421   0.143044173   0.009939268   0.298750222   0.000554848   0.184671942  -0.006823662  -0.183956502

   93   10.1  0.5 -0.5   0.619124598  -0.011802541  -0.178447099   0.005939394  -0.019444982   0.000058704   0.547287424  -0.020300794
                        -0.000000157   0.000001956  -0.000000197  -0.000001521  -0.000000139  -0.000000037  -0.000000087   0.000000185

   94   11.1  0.5 -0.5   0.221695403  -0.004223340   0.655787649  -0.021813806   0.547661033  -0.001645402   0.019431945  -0.000720846
                        -0.000000248   0.000003103  -0.000000313  -0.000002412  -0.000000220  -0.000000058  -0.000000139   0.000000294

   95   12.1  0.5 -0.5   0.002756034   0.144543295   0.000406294   0.012210929   0.000045905   0.015233185  -0.015669307  -0.422430505
                        -0.003538289  -0.185725220   0.000638611   0.019138484  -0.000113704  -0.037762506  -0.012839040  -0.346123080

   96   13.1  0.5 -0.5   0.000000007   0.000000341  -0.000000000  -0.000000012   0.000167660   0.055822352  -0.002933311  -0.079077247
                         0.000000005   0.000000266   0.000000000   0.000000008   0.000067618   0.022518694   0.003579880   0.096510848

   97   14.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000197  -0.000000004  -0.000000158   0.000000005  -0.078031699   0.000234500   0.114477995  -0.004246381

   98   15.1  0.5 -0.5   0.000000002   0.000000116  -0.000000002  -0.000000059   0.000155345   0.051710733   0.000295264   0.007961034
                        -0.000000003  -0.000000149  -0.000000003  -0.000000092  -0.000385132  -0.128187679   0.000242026   0.006523005


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.000404351  -0.000023367  -0.000513931   0.000007924  -0.000019137  -0.000658806   0.000081908  -0.000131356
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000648572   0.000037480   0.000090277  -0.000001392  -0.000019744  -0.000679702   0.000026701  -0.000042820

    3    3.1  1.5  1.5  -0.000021409  -0.000370459  -0.000005620  -0.000364514  -0.000064301   0.000001868   0.000250873   0.000156433
                         0.000027417   0.000474426   0.000000149   0.000009676   0.000031872  -0.000000926   0.000491741   0.000306629

    4    4.1  1.5  1.5  -0.000023192  -0.000401315  -0.000000040  -0.000002608   0.000011221  -0.000000326   0.000569647   0.000355208
                        -0.000018109  -0.000313370  -0.000001514  -0.000098226   0.000022637  -0.000000658  -0.000290618  -0.000181216

    5    5.1  1.5  1.5   0.000021030   0.000363913  -0.000002033  -0.000131868   0.000214757  -0.000006238  -0.000139007  -0.000086678
                        -0.000026932  -0.000466043   0.000000054   0.000003500  -0.000106449   0.000003092  -0.000272471  -0.000169901

    6    6.1  1.5  1.5  -0.000012109  -0.000209530  -0.000000206  -0.000013347   0.000097866  -0.000002843   0.000392760   0.000244909
                        -0.000009455  -0.000163613  -0.000007753  -0.000502814   0.000197442  -0.000005736  -0.000200375  -0.000124945

    7    7.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000474650   0.000027429  -0.001004721   0.000015492   0.000011632   0.000400447  -0.000146712   0.000235282

    8    8.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000053  -0.000000003   0.000000987  -0.000000015  -0.000000032  -0.000001104   0.000000177  -0.000000284

    9    9.1  1.5  1.5  -0.000000010  -0.000000167  -0.000000000  -0.000000009   0.000000100  -0.000000003   0.000000426   0.000000265
                        -0.000000008  -0.000000131  -0.000000006  -0.000000357   0.000000201  -0.000000006  -0.000000217  -0.000000135

   10   10.1  1.5  1.5   0.000000010   0.000000173  -0.000000005  -0.000000316   0.000000277  -0.000000008  -0.000000157  -0.000000098
                        -0.000000013  -0.000000222   0.000000000   0.000000008  -0.000000137   0.000000004  -0.000000308  -0.000000192

   11   11.1  1.5  1.5  -0.014853310  -0.257025677  -0.000074793  -0.004850916   0.031618253  -0.000918435   0.389799039   0.243062232
                        -0.011598329  -0.200700609  -0.002817562  -0.182739989   0.063788697  -0.001853126  -0.198864611  -0.124003022

   12   12.1  1.5  1.5   0.229541471  -0.013265021  -0.291656194   0.004496975  -0.010864699  -0.374021290   0.046488835  -0.074554133
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.016598401  -0.287223573  -0.000752478  -0.048806895  -0.122011491   0.003544295   0.143171800   0.089275446
                         0.021256646   0.367830853   0.000019979   0.001295662   0.060477513  -0.001756758   0.280634034   0.174991531

   14   14.1  1.5  1.5   0.000000312   0.000000043   0.000000079   0.000000007   0.000000033   0.000000109   0.000000017   0.000000105
                         0.453331362  -0.026197603   0.346582924  -0.005343995   0.003829890   0.131843449   0.044872415  -0.071961999

   15   15.1  1.5  1.5   0.000076089   0.001316687  -0.000092090  -0.005972108   0.045660896  -0.001326365   0.046235999   0.028830818
                         0.000059372   0.001028192  -0.003468918  -0.224979533   0.092119435  -0.002675956  -0.023588351  -0.014708600

   16   16.1  1.5  1.5   0.000000065   0.000000093  -0.000000232   0.000000027  -0.000000029   0.000000193  -0.000000049   0.000000099
                        -0.049263929   0.002846999   0.455047705  -0.007016286  -0.012422028  -0.427631331   0.071583453  -0.114798418

   17   17.1  1.5  1.5   0.003816282   0.066037277   0.003292264   0.213523108  -0.034003286   0.000987716  -0.077305536  -0.048204271
                        -0.004887247  -0.084570272  -0.000087403  -0.005668012   0.016854411  -0.000489595  -0.151528299  -0.094486649

   18    1.1  1.5  0.5   0.000012142   0.000210111  -0.000011163  -0.000724006   0.000372864  -0.000010831  -0.000101859  -0.000063514
                        -0.000015550  -0.000269077   0.000000296   0.000019219  -0.000184818   0.000005369  -0.000199655  -0.000124496

   19    2.1  1.5  0.5  -0.000006096  -0.000105489   0.000000264   0.000017138  -0.000095863   0.000002785   0.000474905   0.000296131
                        -0.000004760  -0.000082372   0.000009955   0.000645638  -0.000193400   0.000005618  -0.000242283  -0.000151077

   20    3.1  1.5  0.5  -0.000539758   0.000031192   0.000040291  -0.000000621  -0.000017912  -0.000616635  -0.000222773   0.000357262
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001

   21    4.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001
                        -0.000674648   0.000038987  -0.000095215   0.000001468  -0.000013696  -0.000471478   0.000263296  -0.000422248

   22    5.1  1.5  0.5   0.000285528  -0.000016500  -0.000400911   0.000006182  -0.000025490  -0.000877514  -0.000240462   0.000385630
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001

   23    6.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001
                        -0.000137728   0.000007959   0.000525554  -0.000008103   0.000016973   0.000584320  -0.000373289   0.000598644

   24    7.1  1.5  0.5  -0.000023346  -0.000403978  -0.000000059  -0.000003857  -0.000017188   0.000000499   0.000101065   0.000063020
                        -0.000018230  -0.000315450  -0.000002240  -0.000145299  -0.000034676   0.000001007  -0.000051561  -0.000032151

   25    8.1  1.5  0.5  -0.000000020  -0.000000342  -0.000000000  -0.000000004   0.000000135  -0.000000004  -0.000000010  -0.000000006
                        -0.000000015  -0.000000267  -0.000000002  -0.000000151   0.000000272  -0.000000008   0.000000005   0.000000003

   26    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000001   0.000000000   0.000000797  -0.000000012   0.000000000   0.000000002  -0.000000041   0.000000066

   27   10.1  1.5  0.5   0.000000075  -0.000000004   0.000000925  -0.000000014  -0.000000023  -0.000000794   0.000000199  -0.000000319
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   28   11.1  1.5  0.5  -0.000000141   0.000000013  -0.000000135   0.000000007  -0.000000018  -0.000000010  -0.000000030   0.000000125
                        -0.374958836   0.021668572   0.092135218  -0.001420551  -0.002379738  -0.081922303   0.033225359  -0.053283569

   29   12.1  1.5  0.5   0.006890606   0.119238653  -0.006346792  -0.411624457   0.212134157  -0.006162216  -0.057609473  -0.035922593
                        -0.008824523  -0.152701999   0.000168490   0.010926587  -0.105148655   0.003054377  -0.112921432  -0.070413036

   30   13.1  1.5  0.5  -0.301171300   0.017404448   0.203694427  -0.003140692   0.006728803   0.231641032   0.046826577  -0.075095948
                         0.000000043  -0.000000003   0.000000047  -0.000000003  -0.000000010   0.000000040   0.000000012  -0.000000240

   31   14.1  1.5  0.5   0.011476533   0.198593037  -0.000088243  -0.005722162   0.046917337  -0.001362876  -0.237880740  -0.148332392
                         0.008961476   0.155073079  -0.003323819  -0.215565420   0.094654379  -0.002749480   0.121360078   0.075674736

   32   15.1  1.5  0.5   0.000000095  -0.000000006   0.000000106  -0.000000008  -0.000000030   0.000000109   0.000000026  -0.000000643
                         0.109888382  -0.006350354   0.288960319  -0.004455458   0.012137505   0.417839674  -0.257044153   0.412222126

   33   16.1  1.5  0.5   0.007440178   0.128746887   0.000126224   0.008185588  -0.029752609   0.000864263   0.139452825   0.086956892
                         0.005809773   0.100532918   0.004754590   0.308364125  -0.060024990   0.001743621  -0.071144965  -0.044362825

   34   17.1  1.5  0.5   0.170844728  -0.009872986   0.103058366  -0.001589104   0.016344863   0.562672995   0.180027733  -0.288710981
                        -0.000000211   0.000000022  -0.000000180   0.000000007  -0.000000090   0.000000138  -0.000000034  -0.000000651

   35    1.1  1.5 -0.5   0.000341393  -0.000019729   0.000724261  -0.000011167  -0.000012089  -0.000416155  -0.000139762   0.000224137
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001

   36    2.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001
                         0.000133840  -0.000007734   0.000645865  -0.000009959  -0.000006270  -0.000215855   0.000332442  -0.000533138

   37    3.1  1.5 -0.5   0.000019197   0.000332195   0.000000621   0.000040277  -0.000552489   0.000016049   0.000162357   0.000101238
                        -0.000024585  -0.000425423  -0.000000016  -0.000001069   0.000273852  -0.000007955   0.000318240   0.000198441

   38    4.1  1.5 -0.5  -0.000030729  -0.000531740   0.000000039   0.000002526   0.000209387  -0.000006082  -0.000376127  -0.000234537
                        -0.000023995  -0.000415214   0.000001468   0.000095181   0.000422432  -0.000012271   0.000191890   0.000119654

   39    5.1  1.5 -0.5  -0.000010155  -0.000175729  -0.000006179  -0.000400769  -0.000786229   0.000022839   0.000175249   0.000109277
                         0.000013005   0.000225046   0.000000164   0.000010638   0.000389710  -0.000011320   0.000343509   0.000214197

   40    6.1  1.5 -0.5  -0.000006273  -0.000108553  -0.000000215  -0.000013946  -0.000259500   0.000007538   0.000533256   0.000332516
                        -0.000004898  -0.000084765  -0.000008101  -0.000525369  -0.000523535   0.000015208  -0.000272052  -0.000169640

   41    7.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000512550  -0.000029620  -0.000145350   0.000002241  -0.000001124  -0.000038702   0.000070747  -0.000113458

   42    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000434  -0.000000025  -0.000000151   0.000000002   0.000000009   0.000000304  -0.000000007   0.000000011

   43    9.1  1.5 -0.5  -0.000000000  -0.000000001  -0.000000000  -0.000000021  -0.000000001   0.000000000   0.000000059   0.000000037
                        -0.000000000  -0.000000001  -0.000000012  -0.000000796  -0.000000002   0.000000000  -0.000000030  -0.000000019

   44   10.1  1.5 -0.5  -0.000000003  -0.000000046   0.000000014   0.000000925  -0.000000712   0.000000021  -0.000000145  -0.000000090
                         0.000000003   0.000000059  -0.000000000  -0.000000025   0.000000353  -0.000000010  -0.000000284  -0.000000177

   45   11.1  1.5 -0.5  -0.017078607  -0.295532905  -0.000037701  -0.002444985   0.036382248  -0.001056842  -0.047463572  -0.029596279
                        -0.013335971  -0.230769212  -0.001420048  -0.092102771   0.073400254  -0.002132191   0.024214629   0.015099165

   46   12.1  1.5 -0.5   0.193741462  -0.011196097   0.411769457  -0.006349028  -0.006877656  -0.236763887  -0.079047004   0.126767911
                        -0.000000141  -0.000000071   0.000000101  -0.000000016   0.000000038  -0.000000225   0.000000019   0.000000318

   47   13.1  1.5 -0.5   0.010711601   0.185356465   0.003139585   0.203622704   0.207544284  -0.006028836  -0.034127282  -0.021280171
                        -0.013717740  -0.237375516  -0.000083343  -0.005405168  -0.102873386   0.002988298  -0.066893422  -0.041711901

   48   14.1  1.5 -0.5  -0.000000199  -0.000000047   0.000000021  -0.000000013  -0.000000037  -0.000000051   0.000000006  -0.000000419
                        -0.251965975   0.014560866  -0.215641361   0.003324988   0.003068727   0.105644164  -0.166520761   0.267049645

   49   15.1  1.5 -0.5   0.005005183   0.086611155  -0.000118222  -0.007667580  -0.185565340   0.005390379   0.367196535   0.228968280
                         0.003908343   0.067631076  -0.004453890  -0.288858584  -0.374373464   0.010874872  -0.187333361  -0.116812766

   50   16.1  1.5 -0.5   0.000000025   0.000000045  -0.000000125   0.000000015   0.000000002   0.000000050  -0.000000028   0.000000288
                        -0.163348185   0.009439797   0.308472753  -0.004756266  -0.001946065  -0.066994151   0.097619470  -0.156552531

   51   17.1  1.5 -0.5  -0.006076364  -0.105146859   0.001588548   0.103022086   0.504140240  -0.014644613  -0.131204186  -0.081812890
                         0.007781622   0.134655319  -0.000042164  -0.002734519  -0.249887024   0.007258783  -0.257175987  -0.160364072

   52    1.1  1.5 -1.5   0.000014381   0.000248859   0.000007921   0.000513750   0.000590273  -0.000017146   0.000059694   0.000037223
                        -0.000018417  -0.000318699  -0.000000210  -0.000013637  -0.000292580   0.000008499   0.000117009   0.000072962

   53    2.1  1.5 -1.5   0.000029541   0.000511188   0.000000037   0.000002396  -0.000301860   0.000008769   0.000038143   0.000023784
                         0.000023067   0.000399165   0.000001391   0.000090246  -0.000608995   0.000017690  -0.000019459  -0.000012134

   54    3.1  1.5 -1.5   0.000601930  -0.000034785  -0.000364642   0.000005622  -0.000002085  -0.000071766  -0.000344227   0.000552038
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001

   55    4.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001
                        -0.000509170   0.000029425   0.000098261  -0.000001515  -0.000000734  -0.000025266  -0.000398763   0.000639497

   56    5.1  1.5 -1.5  -0.000591295   0.000034170  -0.000131915   0.000002034   0.000006963   0.000239691   0.000190734  -0.000305881
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001

   57    6.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001
                        -0.000265843   0.000015363   0.000502991  -0.000007755  -0.000006401  -0.000220366  -0.000274939   0.000440920

   58    7.1  1.5 -1.5   0.000021619   0.000374107  -0.000000411  -0.000026661   0.000177842  -0.000005166  -0.000209583  -0.000130687
                         0.000016881   0.000292125  -0.000015486  -0.001004367   0.000358790  -0.000010422   0.000106923   0.000066673

   59    8.1  1.5 -1.5  -0.000000002  -0.000000042   0.000000000   0.000000026  -0.000000490   0.000000014   0.000000253   0.000000158
                        -0.000000002  -0.000000033   0.000000015   0.000000986  -0.000000990   0.000000029  -0.000000129  -0.000000080

   60    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000212   0.000000012   0.000000357  -0.000000006  -0.000000007  -0.000000224  -0.000000298   0.000000478

   61   10.1  1.5 -1.5  -0.000000282   0.000000016  -0.000000316   0.000000005   0.000000009   0.000000309   0.000000216  -0.000000346
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   62   11.1  1.5 -1.5  -0.000000180   0.000000011  -0.000000124   0.000000002  -0.000000089   0.000000138  -0.000000021  -0.000000763
                        -0.326102644   0.018845214   0.182804356  -0.002818558  -0.002068234  -0.071194870  -0.272866265   0.437596191

   63   12.1  1.5 -1.5   0.008163980   0.141271723   0.004495391   0.291553503   0.335113289  -0.009734486   0.033880846   0.021126675
                        -0.010455151  -0.180918740  -0.000119331  -0.007739224  -0.166105391   0.004825088   0.066410897   0.041411052

   64   13.1  1.5 -1.5   0.466687170  -0.026969463  -0.048824089   0.000752745  -0.003955784  -0.136177588  -0.196448825   0.315045435
                        -0.000000124  -0.000000005  -0.000000092   0.000000005   0.000000033  -0.000000142  -0.000000024   0.000000669

   65   14.1  1.5 -1.5  -0.020648310  -0.357304027   0.000141814   0.009196653   0.058552474  -0.001700852   0.064101844   0.039971198
                        -0.016123331  -0.279003861   0.005342117   0.346460884   0.118128338  -0.003431498  -0.032702954  -0.020392085

   66   15.1  1.5 -1.5   0.000000037   0.000000035  -0.000000073   0.000000009  -0.000000021   0.000000101  -0.000000014  -0.000000121
                         0.001670579  -0.000096510   0.225058785  -0.003470140  -0.002986635  -0.102814915  -0.032366017   0.051905475

   67   16.1  1.5 -1.5   0.002243873   0.038828604   0.000186205   0.012075128  -0.189914159   0.005516679   0.102259428   0.063764671
                         0.001752260   0.030319517   0.007013813   0.454887456  -0.383146412   0.011129823  -0.052169805  -0.032530875

   68   17.1  1.5 -1.5  -0.107298897   0.006200743   0.213598326  -0.003293424  -0.001102401  -0.037951210   0.106072515  -0.170108702
                        -0.000000031  -0.000000032   0.000000084  -0.000000011  -0.000000012  -0.000000019   0.000000020  -0.000000312

   69    1.1  0.5  0.5  -0.000173120  -0.002995716   0.000001448   0.000093935  -0.001382988   0.000040173  -0.004291816  -0.002676195
                        -0.000135181  -0.002339228   0.000054563   0.003538696  -0.002790135   0.000081050   0.002189567   0.001365314

   70    2.1  0.5  0.5   0.000811168  -0.000046877   0.002563114  -0.000039521   0.000195271   0.006722273  -0.002150346   0.003448513
                        -0.000000001   0.000000000  -0.000000002   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000004

   71    3.1  0.5  0.5  -0.000000002   0.000000000  -0.000000002   0.000000000  -0.000000001   0.000000001  -0.000000000  -0.000000005
                        -0.001239534   0.000071632  -0.002236450   0.000034484  -0.000223170  -0.007682673  -0.000969341   0.001554537

   72    4.1  0.5  0.5   0.007017013  -0.000405507   0.003922044  -0.000060475  -0.000043838  -0.001509170   0.000730834  -0.001172039
                        -0.000000004  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000000  -0.000000001

   73    5.1  0.5  0.5  -0.000317418  -0.005492685  -0.000001648  -0.000106879   0.000158584  -0.000004606   0.001491314   0.000929920
                        -0.000247858  -0.004289006  -0.000062079  -0.004026279   0.000319937  -0.000009295  -0.000760826  -0.000474417

   74    6.1  0.5  0.5   0.000000001   0.000000001  -0.000000003   0.000000000  -0.000000000   0.000000002  -0.000000001   0.000000001
                        -0.002410817   0.000139320   0.007601041  -0.000117199  -0.000060078  -0.002068191   0.000548194  -0.000879139

   75    7.1  0.5  0.5   0.000007533   0.000130371  -0.000041347  -0.002681546   0.000104355  -0.000003030   0.003029473   0.001889043
                        -0.000009648  -0.000166955   0.000001098   0.000071182  -0.000051725   0.000001503   0.005938137   0.003702772

   76    8.1  0.5  0.5  -0.000000011  -0.000000192   0.000000003   0.000000203  -0.000002620   0.000000076   0.000000522   0.000000325
                        -0.000000009  -0.000000150   0.000000118   0.000007642  -0.000005286   0.000000154  -0.000000266  -0.000000166

   77    9.1  0.5  0.5   0.000000907  -0.000000052   0.000003347  -0.000000052  -0.000000142  -0.000004887   0.000001059  -0.000001699
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   78   10.1  0.5  0.5  -0.000000064  -0.000001116  -0.000000049  -0.000003198   0.000001862  -0.000000054   0.000000522   0.000000326
                         0.000000083   0.000001429   0.000000001   0.000000085  -0.000000923   0.000000027   0.000001024   0.000000639

   79   11.1  0.5  0.5   0.000000046   0.000000791  -0.000000079  -0.000005151   0.000003785  -0.000000110   0.000001001   0.000000624
                        -0.000000059  -0.000001014   0.000000002   0.000000137  -0.000001876   0.000000055   0.000001961   0.000001223

   80   12.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000812  -0.000000047  -0.000002097   0.000000032   0.000000043   0.000001472  -0.000000019   0.000000031

   81   13.1  0.5  0.5  -0.000000438   0.000000025   0.000000642  -0.000000010   0.000000007   0.000000225  -0.000000310   0.000000497
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   82   14.1  0.5  0.5   0.000000002   0.000000027   0.000000000   0.000000005   0.000000226  -0.000000007  -0.000000271  -0.000000169
                         0.000000001   0.000000021   0.000000003   0.000000203   0.000000456  -0.000000013   0.000000138   0.000000086

   83   15.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000216  -0.000000012   0.000000041  -0.000000001  -0.000000016  -0.000000546   0.000000101  -0.000000162

   84    1.1  0.5 -0.5  -0.000000001  -0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000003   0.000000000   0.000000010
                        -0.003800829   0.000219646  -0.003539943   0.000054582   0.000090460   0.003114082   0.003004348  -0.004818080

   85    2.1  0.5 -0.5   0.000028851   0.000499235  -0.000039507  -0.002562212  -0.006022981   0.000174958  -0.001567168  -0.000977217
                        -0.000036947  -0.000639341   0.000001049   0.000068012   0.002985407  -0.000086721  -0.003071844  -0.001915473

   86    3.1  0.5 -0.5   0.000056458   0.000976967  -0.000000915  -0.000059343  -0.003411928   0.000099111  -0.001384739  -0.000863465
                         0.000044086   0.000762875  -0.000034472  -0.002235663  -0.006883473   0.000199955   0.000706458   0.000440513

   87    4.1  0.5 -0.5   0.000249569   0.004318637  -0.000060453  -0.003920663   0.001352176  -0.000039278   0.000532629   0.000332125
                        -0.000319611  -0.005530629   0.000001605   0.000104073  -0.000670235   0.000019469   0.001044022   0.000651008

   88    5.1  0.5 -0.5  -0.000000002   0.000000000  -0.000000003   0.000000000  -0.000000001   0.000000001  -0.000000001  -0.000000002
                        -0.006968871   0.000402726   0.004027697  -0.000062101  -0.000010374  -0.000357083  -0.001043946   0.001674178

   89    6.1  0.5 -0.5   0.000109808   0.001900145   0.000003110   0.000201700  -0.000918500   0.000026681   0.000783114   0.000488317
                         0.000085746   0.001483741   0.000117157   0.007598364  -0.001853045   0.000053828  -0.000399523  -0.000249125

   90    7.1  0.5 -0.5  -0.000211827   0.000012241  -0.002682491   0.000041361   0.000003382   0.000116471  -0.004156802   0.006666272
                         0.000000002   0.000000001  -0.000000001   0.000000000   0.000000001  -0.000000001  -0.000000000   0.000000012

   91    8.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000244   0.000000014  -0.000007645   0.000000118   0.000000171   0.000005900  -0.000000365   0.000000585

   92    9.1  0.5 -0.5   0.000000032   0.000000558  -0.000000052  -0.000003346   0.000004379  -0.000000127   0.000000772   0.000000481
                        -0.000000041  -0.000000715   0.000000001   0.000000089  -0.000002170   0.000000063   0.000001513   0.000000944

   93   10.1  0.5 -0.5   0.000001813  -0.000000105  -0.000003199   0.000000049   0.000000060   0.000002079  -0.000000717   0.000001150
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   94   11.1  0.5 -0.5  -0.000001286   0.000000074  -0.000005153   0.000000079   0.000000123   0.000004225  -0.000001373   0.000002202
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   95   12.1  0.5 -0.5  -0.000000037  -0.000000640  -0.000000001  -0.000000056   0.000000654  -0.000000019  -0.000000027  -0.000000017
                        -0.000000029  -0.000000500  -0.000000032  -0.000002096   0.000001319  -0.000000038   0.000000014   0.000000009

   96   13.1  0.5 -0.5  -0.000000016  -0.000000269  -0.000000010  -0.000000642  -0.000000202   0.000000006  -0.000000226  -0.000000141
                         0.000000020   0.000000345   0.000000000   0.000000017   0.000000100  -0.000000003  -0.000000443  -0.000000276

   97   14.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000035  -0.000000002  -0.000000203   0.000000003  -0.000000015  -0.000000509   0.000000190  -0.000000304

   98   15.1  0.5 -0.5  -0.000000010  -0.000000170   0.000000000   0.000000001  -0.000000242   0.000000007   0.000000144   0.000000090
                        -0.000000008  -0.000000133   0.000000001   0.000000041  -0.000000489   0.000000014  -0.000000073  -0.000000046


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5  -0.000086385   0.000024994  -0.005509776   0.000836387   0.003978308   0.000332767   0.012799549   0.000107986
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000005   0.000000005  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000895040  -0.000258963   0.005367254  -0.000814752  -0.004083696  -0.000341582  -0.012504136  -0.000105494

    3    3.1  1.5  1.5  -0.000530496  -0.001833615  -0.000453641  -0.002988395  -0.000084046   0.001004784   0.000014904  -0.001766998
                         0.000987285   0.003412261   0.000675629   0.004450768   0.000079087  -0.000945506  -0.000021721   0.002574586

    4    4.1  1.5  1.5   0.001030369   0.003561168  -0.000377611  -0.002487546  -0.000251097   0.003001925   0.000069276  -0.008211222
                         0.000553645   0.001913632  -0.000253540  -0.001670222  -0.000266839   0.003190133   0.000047550  -0.005635538

    5    5.1  1.5  1.5  -0.000560985  -0.001939005   0.000405782   0.002673121  -0.000007323   0.000087558  -0.000045298   0.005368498
                         0.001044031   0.003608386  -0.000604351  -0.003981214   0.000006891  -0.000082392   0.000065993  -0.007822135

    6    6.1  1.5  1.5  -0.000994535  -0.003437317  -0.000197403  -0.001300412  -0.000280262   0.003350600   0.000005264  -0.000623959
                        -0.000534390  -0.001847078  -0.000132543  -0.000873139  -0.000297832   0.003560668   0.000003608  -0.000428240

    7    7.1  1.5  1.5  -0.000000040  -0.000000042   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000002
                        -0.007015002   0.002029655   0.001557274  -0.000236395   0.000684410   0.000057247  -0.003302412  -0.000027863

    8    8.1  1.5  1.5   0.000000212   0.000000225  -0.000000002  -0.000000002   0.000000001   0.000000001  -0.000000008   0.000000010
                         0.037665178  -0.010897688  -0.004969394   0.000754356  -0.006110940  -0.000511148   0.011711968   0.000098818

    9    9.1  1.5  1.5  -0.002120188  -0.007327808  -0.001736891  -0.011441896   0.002510249  -0.030010674  -0.000145545   0.017251374
                        -0.001139236  -0.003937677  -0.001166218  -0.007682475   0.002667620  -0.031892219  -0.000099891   0.011839994

   10   10.1  1.5  1.5  -0.001188127  -0.004106654  -0.003089909  -0.020354962   0.001667737  -0.019938394   0.000099888  -0.011839670
                         0.002211172   0.007642269   0.004601941   0.030315673  -0.001569357   0.018762085  -0.000145541   0.017250903

   11   11.1  1.5  1.5   0.029952911   0.103523435  -0.028615126  -0.188504846  -0.023703799   0.283384616   0.001771062  -0.209922958
                         0.016094483   0.055629460  -0.019213090  -0.126568461  -0.025189869   0.301151617   0.001215555  -0.144074671

   12   12.1  1.5  1.5  -0.005809026   0.001680756  -0.370014419   0.056168402   0.267157976   0.022346538   0.355858465   0.003002277
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5   0.012575403   0.043466121  -0.039362392  -0.259302932  -0.002623519   0.031363590   0.001284402  -0.152231857
                        -0.023403738  -0.080888113   0.058624341   0.386192976   0.002468686  -0.029513283  -0.001871337   0.221808355

   14   14.1  1.5  1.5   0.000001565   0.000001662  -0.000000014  -0.000000018   0.000000007   0.000000009  -0.000000021   0.000000026
                         0.273249146  -0.079059313  -0.336677041   0.051107765   0.171509723   0.014346031   0.318631508   0.002688224

   15   15.1  1.5  1.5  -0.091393242  -0.315873789   0.000134091   0.000883239  -0.008756215   0.104682850  -0.000770915   0.091375258
                        -0.049108041  -0.169738142   0.000090018   0.000593063  -0.009305161   0.111245995  -0.000529262   0.062712696

   16   16.1  1.5  1.5   0.000002168   0.000002302  -0.000000020  -0.000000025   0.000000009   0.000000013  -0.000000029   0.000000036
                         0.388417347  -0.112381035   0.165785234  -0.025166300  -0.218846769  -0.018305486  -0.166596459  -0.001405500

   17   17.1  1.5  1.5   0.050304811   0.173874629   0.011007005   0.072509309   0.005022071  -0.060040030   0.000328635  -0.038933411
                        -0.093620477  -0.323571582  -0.016393218  -0.107991817  -0.004725783   0.056497896  -0.000478604   0.056727821

   18    1.1  1.5  0.5  -0.000198105  -0.000684735   0.000327188   0.002155370  -0.000329364   0.003937660   0.000019753  -0.002340784
                         0.000368686   0.001274255  -0.000487296  -0.003210100   0.000309935  -0.003705350  -0.000028775   0.003410627

   19    2.1  1.5  0.5   0.000966085   0.003338989   0.000325980   0.002147418  -0.000282543   0.003377871  -0.000014918   0.001768185
                         0.000519104   0.001794241   0.000218876   0.001441848  -0.000300256   0.003589650  -0.000010243   0.001213541

   20    3.1  1.5  0.5   0.003856666  -0.001115851  -0.003966996   0.000602193  -0.003756647  -0.000314224   0.013472742   0.000113667
                        -0.000000022  -0.000000023   0.000000001  -0.000000001   0.000000001  -0.000000001   0.000000001  -0.000000002

   21    4.1  1.5  0.5  -0.000000020  -0.000000021   0.000000001  -0.000000001   0.000000001  -0.000000001   0.000000001  -0.000000002
                        -0.003527672   0.001020664   0.002601366  -0.000394890   0.005214334   0.000436153   0.008711126   0.000073492

   22    5.1  1.5  0.5  -0.004592769   0.001328828  -0.002448328   0.000371659  -0.004809183  -0.000402264  -0.009762109  -0.000082361
                         0.000000026   0.000000027   0.000000000  -0.000000002   0.000000001  -0.000000001  -0.000000001   0.000000001

   23    6.1  1.5  0.5  -0.000000028  -0.000000029  -0.000000000   0.000000001  -0.000000001   0.000000001   0.000000001  -0.000000001
                        -0.004887669   0.001414152  -0.003444466   0.000522873  -0.003578222  -0.000299300   0.007361397   0.000062105

   24    7.1  1.5  0.5   0.000131109   0.000453141   0.000662769   0.004366048   0.000172770  -0.002065505  -0.000121961   0.014455990
                         0.000070449   0.000243500   0.000445005   0.002931511   0.000183602  -0.002195002  -0.000083705   0.009921461

   25    8.1  1.5  0.5   0.000157652   0.000544877   0.004962399   0.032690254   0.001629680  -0.019483196  -0.000084033   0.009960386
                         0.000084715   0.000292791   0.003331921   0.021949332   0.001731854  -0.020704706  -0.000057674   0.006836030

   26    9.1  1.5  0.5  -0.000000184  -0.000000195   0.000000002   0.000000002  -0.000000001  -0.000000001  -0.000000005   0.000000006
                        -0.032928499   0.009527223  -0.015383943   0.002335292   0.019507563   0.001631715   0.030922071   0.000260885

   27   10.1  1.5  0.5  -0.032310135   0.009348309   0.023991335  -0.003641898  -0.008922000  -0.000746288  -0.017397688  -0.000146775
                         0.000000184   0.000000195  -0.000000002  -0.000000002   0.000000001   0.000000001   0.000000005  -0.000000006

   28   11.1  1.5  0.5  -0.000002036  -0.000002171   0.000000026   0.000000001   0.000000008  -0.000000031   0.000000050  -0.000000061
                        -0.362856176   0.104985394   0.046315630  -0.007030762   0.197214178   0.016495978   0.309767658   0.002613375

   29   12.1  1.5  0.5  -0.013300824  -0.045973370   0.021973503   0.144751653  -0.022118765   0.264437092   0.000549187  -0.065080026
                         0.024753760   0.085554039  -0.032726112  -0.215585920   0.020813934  -0.248836093  -0.000800013   0.094824505

   30   13.1  1.5  0.5   0.399335162  -0.115539874  -0.004818316   0.000731370   0.136402018   0.011409371   0.430347930   0.003630768
                        -0.000002256  -0.000002380   0.000000008   0.000000064  -0.000000038   0.000000020   0.000000048  -0.000000058

   31   14.1  1.5  0.5  -0.053846031  -0.186102956  -0.046176138  -0.304189288   0.006189124  -0.073992832   0.002592567  -0.307295193
                        -0.028932963  -0.100004393  -0.031004306  -0.204242898   0.006577080  -0.078631934   0.001779433  -0.210903308

   32   15.1  1.5  0.5  -0.000001015  -0.000001035  -0.000000024   0.000000113  -0.000000080   0.000000081   0.000000011  -0.000000013
                        -0.179433504   0.051915606  -0.286146311   0.043437304  -0.376103876  -0.031459183   0.067722020   0.000571341

   33   16.1  1.5  0.5   0.037240196   0.128709786  -0.018106462  -0.119278083  -0.021362059   0.255388602   0.002224370  -0.263653922
                         0.020010146   0.069163607  -0.012157213  -0.080087292  -0.022701309   0.271400384   0.001526563  -0.180951489

   34   17.1  1.5  0.5  -0.052257548   0.015119701   0.312999350  -0.047513601   0.386446543   0.032324284  -0.169594572  -0.001430839
                         0.000000291   0.000000349  -0.000000035   0.000000093  -0.000000071   0.000000085  -0.000000019   0.000000023

   35    1.1  1.5 -0.5  -0.001446578   0.000418539   0.003866570  -0.000586949   0.005406920   0.000452261  -0.004136622  -0.000034902
                         0.000000008   0.000000009  -0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000003   0.000000004

   36    2.1  1.5 -0.5  -0.000000021  -0.000000022  -0.000000000   0.000000002  -0.000000001   0.000000001   0.000000003  -0.000000004
                        -0.003790534   0.001096717  -0.002586567   0.000392644  -0.004929056  -0.000412291  -0.002144565  -0.000018096

   37    3.1  1.5 -0.5  -0.000528160  -0.001825545   0.000335685   0.002211351  -0.000228837   0.002735827   0.000064322  -0.007623806
                         0.000982940   0.003397243  -0.000499952  -0.003293476   0.000215338  -0.002574422  -0.000093717   0.011108211

   38    4.1  1.5 -0.5  -0.000899090  -0.003107440   0.000327845   0.002159704  -0.000298895   0.003573372  -0.000060595   0.007182280
                        -0.000483105  -0.001669816   0.000220127   0.001450098  -0.000317633   0.003797407  -0.000041585   0.004929357

   39    5.1  1.5 -0.5   0.000628968   0.002173977   0.000207178   0.001364789  -0.000292953   0.003502350  -0.000046607   0.005524074
                        -0.001170549  -0.004045658  -0.000308558  -0.002032649   0.000275671  -0.003295722   0.000067906  -0.008048812

   40    6.1  1.5 -0.5  -0.001245709  -0.004305428  -0.000434099  -0.002859662   0.000205110  -0.002452147  -0.000051206   0.006069436
                        -0.000669354  -0.002313568  -0.000291470  -0.001920073   0.000217969  -0.002605887  -0.000035142   0.004165587

   41    7.1  1.5 -0.5  -0.000000002  -0.000000003  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000514421   0.000148838  -0.005258910   0.000798306   0.003014025   0.000252110  -0.017533141  -0.000147922

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000618561   0.000178971  -0.039375448   0.005977216   0.028430261   0.002378061  -0.012080588  -0.000101921

   43    9.1  1.5 -0.5  -0.008392416  -0.029005912  -0.001938803  -0.012772047  -0.001118211   0.013368491  -0.000215095   0.025495101
                        -0.004509472  -0.015586634  -0.001301780  -0.008575578  -0.001188317   0.014206635  -0.000147632   0.017497838

   44   10.1  1.5 -0.5   0.004424784   0.015293936  -0.002030127  -0.013373659  -0.000543495   0.006497562  -0.000083051   0.009844816
                        -0.008234814  -0.028461208   0.003023575   0.019918066   0.000511429  -0.006114227   0.000121019  -0.014344307

   45   11.1  1.5 -0.5  -0.092480377  -0.319631146   0.005837074   0.038452113  -0.011304680   0.135150441  -0.002154750   0.255401907
                        -0.049692181  -0.171757198   0.003919206   0.025818069  -0.012013388   0.143623780  -0.001478778   0.175287955

   46   12.1  1.5 -0.5  -0.097123861   0.028100900   0.259673505  -0.039418692   0.363106565   0.030372021  -0.115009115  -0.000970375
                         0.000000542   0.000000611  -0.000000033   0.000000078  -0.000000061   0.000000076  -0.000000081   0.000000099

   47   13.1  1.5 -0.5  -0.054687886  -0.189024462   0.000407640   0.002685914   0.008309009  -0.099336559   0.002054587  -0.243520513
                         0.101777687   0.351764587  -0.000607234  -0.004000253  -0.007818832   0.093475978  -0.002993518   0.354819814

   48   14.1  1.5 -0.5   0.000001176   0.000001220   0.000000012  -0.000000082   0.000000056  -0.000000052  -0.000000065   0.000000080
                         0.211270417  -0.061127011   0.366396347  -0.055619265   0.107971852   0.009031238   0.372707044   0.003144485

   49   15.1  1.5 -0.5  -0.045731818  -0.158058589  -0.036062421  -0.237564159   0.021558968  -0.257743107  -0.000471076   0.055836472
                        -0.024572973  -0.084934474  -0.024213655  -0.159508568   0.022910501  -0.273902564  -0.000323293   0.038321800

   50   16.1  1.5 -0.5  -0.000000849  -0.000000881  -0.000000009   0.000000059  -0.000000041   0.000000038   0.000000047  -0.000000058
                        -0.146115753   0.042275739   0.143670582  -0.021809213  -0.372668091  -0.031171894   0.319776222   0.002697817

   51   17.1  1.5 -0.5   0.007156496   0.024735997  -0.026485918  -0.174477455   0.023540520  -0.281434739  -0.000809686   0.095968295
                        -0.013318781  -0.046032399   0.039446653   0.259858062  -0.022151823   0.264830922   0.001179707  -0.139829915

   52    1.1  1.5 -1.5  -0.000011831  -0.000040890  -0.000466233  -0.003071353  -0.000242342   0.002897255  -0.000061106   0.007242868
                         0.000022017   0.000076095   0.000694385   0.004574322   0.000228045  -0.002726326   0.000089034  -0.010553166

   53    2.1  1.5 -1.5  -0.000228117  -0.000788419  -0.000676423  -0.004455997  -0.000234086   0.002798548  -0.000086979   0.010309600
                        -0.000122574  -0.000423665  -0.000454173  -0.002991906  -0.000248762   0.002974004  -0.000059695   0.007075703

   54    3.1  1.5 -1.5   0.003873715  -0.001120785   0.005360955  -0.000813797  -0.001379700  -0.000115406   0.003122623   0.000026342
                        -0.000000021  -0.000000023   0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000002   0.000000003

   55    4.1  1.5 -1.5   0.000000023   0.000000024  -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000003  -0.000000003
                         0.004042760  -0.001169694  -0.002996252   0.000454832   0.004380468   0.000366405  -0.009959089  -0.000084024

   56    5.1  1.5 -1.5   0.004096363  -0.001185203  -0.004795377   0.000727941  -0.000120229  -0.000010055  -0.009487179  -0.000080044
                        -0.000000023  -0.000000025   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000004

   57    6.1  1.5 -1.5  -0.000000022  -0.000000023   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000003   0.000000004
                        -0.003902159   0.001129014  -0.001566347   0.000237772   0.004889262   0.000408963  -0.000756779  -0.000006382

   58    7.1  1.5 -1.5   0.001787898   0.006179344  -0.000196260  -0.001292879   0.000039231  -0.000469025  -0.000022972   0.002722823
                         0.000960686   0.003320536  -0.000131775  -0.000868082   0.000041691  -0.000498431  -0.000015768   0.001868731

   59    8.1  1.5 -1.5  -0.009599643  -0.033178335   0.000626283   0.004125686  -0.000350290   0.004187815   0.000081469  -0.009656466
                        -0.005158145  -0.017828732   0.000420504   0.002770126  -0.000372249   0.004450371   0.000055927  -0.006627433

   60    9.1  1.5 -1.5  -0.000000048  -0.000000048  -0.000000003   0.000000010  -0.000000007   0.000000007   0.000000000  -0.000000000
                        -0.008318778   0.002406876  -0.013781778   0.002092093  -0.043792170  -0.003662997   0.020923559   0.000176526

   61   10.1  1.5 -1.5   0.008675764  -0.002510165   0.036515263  -0.005543049   0.027378009   0.002290028   0.020922988   0.000176521
                        -0.000000048  -0.000000048  -0.000000003   0.000000010  -0.000000007   0.000000007   0.000000000  -0.000000000

   62   11.1  1.5 -1.5   0.000000695   0.000000719   0.000000009  -0.000000053   0.000000037  -0.000000035   0.000000024  -0.000000030
                         0.117523352  -0.034003077  -0.227054296   0.034466915   0.413520418   0.034589009  -0.254607854  -0.002148077

   63   12.1  1.5 -1.5  -0.000795574  -0.002749661  -0.031310346  -0.206259733  -0.016274156   0.194561251  -0.001698896   0.201369273
                         0.001480542   0.005117044   0.046632088   0.307193085   0.015314035  -0.183082780   0.002475363  -0.293403584

   64   13.1  1.5 -1.5  -0.091826958   0.026568322   0.465169889  -0.070613110  -0.043066326  -0.003602396   0.269023205   0.002269712
                         0.000000543   0.000000595  -0.000000019   0.000000037  -0.000000030   0.000000040   0.000000042  -0.000000051

   65   14.1  1.5 -1.5  -0.069642415  -0.240698486   0.042430660   0.279515745   0.009831298  -0.117535236   0.002216413  -0.262710150
                        -0.037420703  -0.129341930   0.028489345   0.187676257   0.010447689  -0.124904179   0.001521204  -0.180303675

   66   15.1  1.5 -1.5  -0.000002012  -0.000002140   0.000000022   0.000000013  -0.000000001  -0.000000020  -0.000000112   0.000000137
                        -0.358590697   0.103751261   0.001063877  -0.000161504   0.152755263   0.012777219   0.110825628   0.000935109

   67   16.1  1.5 -1.5  -0.098995098  -0.342147363  -0.020893532  -0.137638100  -0.012544719   0.149975222  -0.001158848   0.137357958
                        -0.053192741  -0.183856514  -0.014028647  -0.092414810  -0.013331198   0.159377984  -0.000795299   0.094271795

   68   17.1  1.5 -1.5  -0.367329492   0.106279667  -0.130076256   0.019745677   0.082442812   0.006895957   0.068803024   0.000580571
                         0.000002058   0.000002178  -0.000000013  -0.000000041   0.000000021  -0.000000003   0.000000106  -0.000000131

   69    1.1  0.5  0.5  -0.000829523  -0.002867001   0.000256836   0.001691926  -0.000086003   0.001028195  -0.000000001   0.000000067
                        -0.000445725  -0.001540614   0.000172448   0.001136016  -0.000091395   0.001092658  -0.000000000   0.000000046

   70    2.1  0.5  0.5   0.001198045  -0.000346631   0.001793515  -0.000272258   0.003613622   0.000302261   0.000000123   0.000000001
                        -0.000000007  -0.000000007  -0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000000   0.000000000

   71    3.1  0.5  0.5   0.000000004   0.000000004   0.000000000  -0.000000001   0.000000001  -0.000000001  -0.000000000  -0.000000000
                         0.000690250  -0.000199710   0.002261477  -0.000343295   0.003487468   0.000291709  -0.000000188  -0.000000002

   72    4.1  0.5  0.5  -0.002081183   0.000602150   0.003465171  -0.000526015  -0.001004696  -0.000084039   0.000000107   0.000000001
                         0.000000012   0.000000013  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   73    5.1  0.5  0.5   0.000163756   0.000565974   0.000390237   0.002570722   0.000158933  -0.001900077  -0.000000000   0.000000058
                         0.000087991   0.000304132   0.000262018   0.001726069   0.000168897  -0.002019204  -0.000000000   0.000000040

   74    6.1  0.5  0.5  -0.000000013  -0.000000014   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.002386203   0.000690402  -0.002592912   0.000393606   0.002216331   0.000185386  -0.000000048  -0.000000000

   75    7.1  0.5  0.5   0.000544396   0.001881661   0.000041703   0.000274720  -0.000047897   0.000572627   0.000000000  -0.000000001
                        -0.001013155  -0.003501672  -0.000062110  -0.000409154   0.000045072  -0.000538843  -0.000000000   0.000000001

   76    8.1  0.5  0.5   0.008890250   0.030726533   0.003645493   0.024014985  -0.002379814   0.028451287   0.000169315  -0.020068687
                         0.004776974   0.016511231   0.002447723   0.016124468  -0.002529005   0.030235069   0.000116230  -0.013773557

   77    9.1  0.5  0.5   0.048528368  -0.014040743   0.022672255  -0.003441662  -0.028748455  -0.002404671  -0.053052586  -0.000447582
                        -0.000000271  -0.000000287   0.000000002   0.000000003  -0.000000001  -0.000000002   0.000000009  -0.000000011

   78   10.1  0.5  0.5  -0.000871902  -0.003013689   0.005189002   0.034182963   0.000267729  -0.003200597  -0.000366140   0.043396716
                         0.001622679   0.005608310  -0.007728234  -0.050910417  -0.000251926   0.003011779   0.000533462  -0.063230875

   79   11.1  0.5  0.5  -0.001585815  -0.005481244   0.000256791   0.001691545  -0.003720158   0.044475591   0.000093421  -0.011075859
                         0.002951306   0.010200313  -0.000382436  -0.002519297   0.003500693  -0.041851669  -0.000136150   0.016137972

   80   12.1  0.5  0.5  -0.000000271  -0.000000287   0.000000002   0.000000003  -0.000000001  -0.000000002   0.000000009  -0.000000011
                        -0.047617774   0.013777276   0.035357457  -0.005367282  -0.013149990  -0.001099942  -0.077393224  -0.000652953

   81   13.1  0.5  0.5  -0.000001460   0.000000423   0.000000087  -0.000000013  -0.000000502  -0.000000042   0.023889978   0.000201559
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000006  -0.000000007

   82   14.1  0.5  0.5   0.000000144   0.000000497  -0.000000010  -0.000000068  -0.000000039   0.000000468   0.000213077  -0.025255886
                         0.000000077   0.000000267  -0.000000007  -0.000000046  -0.000000042   0.000000497   0.000146239  -0.017333665

   83   15.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000006   0.000000007
                        -0.000001343   0.000000389  -0.000000354   0.000000054   0.000001189   0.000000099  -0.006743212  -0.000056885

   84    1.1  0.5 -0.5  -0.000000018  -0.000000020   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.003254718   0.000941689   0.002037927  -0.000309359   0.001500362   0.000125497   0.000000081   0.000000001

   85    2.1  0.5 -0.5   0.000164069   0.000567092   0.000151767   0.000999772  -0.000220125   0.002631667  -0.000000001   0.000000070
                        -0.000305343  -0.001055329  -0.000226033  -0.001489010   0.000207140  -0.002476407   0.000000001  -0.000000101

   86    3.1  0.5 -0.5  -0.000175922  -0.000608024  -0.000285009  -0.001877522   0.000199908  -0.002389954  -0.000000001   0.000000155
                        -0.000094528  -0.000326728  -0.000191366  -0.001260631   0.000212440  -0.002539794  -0.000000001   0.000000106

   87    4.1  0.5 -0.5  -0.000285012  -0.000985124   0.000293220   0.001931615   0.000061202  -0.000731683  -0.000000001   0.000000061
                         0.000530427   0.001833263  -0.000436708  -0.002876852  -0.000057591   0.000688516   0.000000001  -0.000000088

   88    5.1  0.5 -0.5   0.000000003   0.000000004  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000642513  -0.000185899   0.003096437  -0.000470041  -0.002772630  -0.000231918   0.000000070   0.000000001

   89    6.1  0.5 -0.5   0.000608166   0.002101948   0.000326779   0.002152686   0.000127044  -0.001518847  -0.000000000   0.000000039
                         0.000326784   0.001129504   0.000219411   0.001445385   0.000135010  -0.001614072  -0.000000000   0.000000027

   90    7.1  0.5 -0.5  -0.003975218   0.001150152  -0.000492826   0.000074812  -0.000786291  -0.000065769   0.000000002   0.000000000
                         0.000000022   0.000000024  -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000

   91    8.1  0.5 -0.5   0.000000197   0.000000204   0.000000002  -0.000000014   0.000000009  -0.000000009   0.000000017  -0.000000021
                         0.034881809  -0.010092375   0.028926077  -0.004391010   0.041516685   0.003472661  -0.024340564  -0.000205370

   92    9.1  0.5 -0.5   0.006645833   0.022970798   0.001918512   0.012638352   0.001751232  -0.020936434   0.000253264  -0.030020820
                        -0.012368321  -0.042747455  -0.002857332  -0.018822944  -0.001647917   0.019701255  -0.000369035   0.043741595

   93   10.1  0.5 -0.5   0.006366747  -0.001842091  -0.061321656   0.009308670   0.004394841   0.000367621  -0.076690407  -0.000647024
                        -0.000000039  -0.000000044   0.000000002  -0.000000006   0.000000004  -0.000000005  -0.000000009   0.000000011

   94   11.1  0.5 -0.5   0.011579742  -0.003350375  -0.003034498   0.000460651  -0.061070782  -0.005108270   0.019573165   0.000165120
                        -0.000000062  -0.000000070   0.000000004  -0.000000009   0.000000007  -0.000000009  -0.000000014   0.000000018

   95   12.1  0.5 -0.5   0.012136239   0.041945333  -0.004456022  -0.029354439  -0.000753786   0.009011659  -0.000538350   0.063810344
                         0.006521123   0.022539775  -0.002991919  -0.019709557  -0.000801048   0.009576651  -0.000369494   0.043794419

   96   13.1  0.5 -0.5  -0.000000200  -0.000000691   0.000000007   0.000000049   0.000000031  -0.000000366  -0.000114062   0.013518593
                         0.000000372   0.000001287  -0.000000011  -0.000000072  -0.000000029   0.000000344   0.000166180  -0.019697174

   97   14.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000564  -0.000000163  -0.000000083   0.000000013   0.000000683   0.000000057  -0.030631940  -0.000258433

   98   15.1  0.5 -0.5   0.000000342   0.000001183   0.000000045   0.000000294   0.000000068  -0.000000815  -0.000046906   0.005559742
                         0.000000184   0.000000636   0.000000030   0.000000197   0.000000072  -0.000000866  -0.000032183   0.003815779


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5  -0.004135667  -0.000099379   0.007914789   0.000000000   0.005464579   0.000659273  -0.011201261  -0.001153280
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000  -0.000000001
                         0.004763442   0.000114465  -0.006301268   0.000000000  -0.005676570  -0.000684852   0.012098153   0.001245623

    3    3.1  1.5  1.5  -0.000274099   0.011406194  -0.000000012  -0.000035850   0.001270412  -0.010530180  -0.000256205   0.002488324
                         0.000136182  -0.005667220  -0.000000000   0.000806638   0.000213249  -0.001767605   0.001023505  -0.009940836

    4    4.1  1.5  1.5   0.000103534  -0.004308563  -0.000000000   0.013211771   0.000046120  -0.000382301  -0.000594287   0.005772017
                         0.000208391  -0.008671673   0.000000011   0.000587180  -0.000274769   0.002277477  -0.000148751   0.001444816

    5    5.1  1.5  1.5  -0.000282344   0.011749107   0.000000004  -0.000565584  -0.000668816   0.005543956  -0.000021347   0.000207517
                         0.000140277  -0.005837600  -0.000000001   0.012725859  -0.000112272   0.000930614   0.000085355  -0.000829015

    6    6.1  1.5  1.5  -0.000165841   0.006901445   0.000000001  -0.002946658  -0.000005808   0.000048124  -0.001378973   0.013393310
                        -0.000333794   0.013890270   0.000000005  -0.000130961   0.000034622  -0.000286707  -0.000345157   0.003352531

    7    7.1  1.5  1.5   0.000000004  -0.000000002  -0.000000000   0.000000005  -0.000000001  -0.000000006  -0.000000002   0.000000012
                        -0.005211972  -0.000125248  -0.014463037  -0.000000001   0.001526893   0.000184245  -0.007143821  -0.000735522

    8    8.1  1.5  1.5  -0.000000026   0.000000015  -0.000000004   0.000000173  -0.000000024  -0.000000226  -0.000000076   0.000000461
                         0.036230734   0.000870651  -0.504693413  -0.000000033   0.080113876   0.009666558  -0.313644265  -0.032292595

    9    9.1  1.5  1.5   0.000072292  -0.003008434   0.000000056   0.175552319   0.010667653  -0.088424813  -0.041626585   0.404298195
                         0.000145499  -0.006054968   0.000001079   0.007802178  -0.063550723   0.526773111  -0.010418116   0.101201697

   10   10.1  1.5  1.5  -0.000145467   0.006053637   0.000001079  -0.002264597  -0.082175810   0.681152674  -0.002396026   0.023286914
                         0.000072276  -0.003007773  -0.000000056   0.050953931  -0.013794071   0.114339056   0.009578426  -0.093029520

   11   11.1  1.5  1.5   0.000389383  -0.016203987   0.000000000   0.011268893   0.000041632  -0.000345114  -0.001279740   0.012429495
                         0.000783799  -0.032613016   0.000000014   0.000500831  -0.000248024   0.002055933  -0.000320320   0.003111276

   12   12.1  1.5  1.5  -0.114980236  -0.002762944   0.008657609   0.000000000   0.005977396   0.000721142  -0.012252193  -0.001261483
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   13   13.1  1.5  1.5   0.002514007  -0.104612373  -0.000000011   0.000500289   0.001364532  -0.011310577  -0.000131164   0.001273716
                        -0.001249007   0.051977204   0.000000001  -0.011256684   0.000229053  -0.001898604   0.000523910  -0.005088500

   14   14.1  1.5  1.5  -0.000000066   0.000000039   0.000000000  -0.000000003   0.000000000   0.000000004   0.000000001  -0.000000008
                        -0.000094574  -0.000002180   0.015757200   0.000000001   0.003459399   0.000417337  -0.004503951  -0.000463729

   15   15.1  1.5  1.5  -0.005421543   0.225617176   0.000000001  -0.009604598  -0.000029190   0.000241948  -0.001029647   0.010000483
                        -0.010912214   0.454090864  -0.000000001  -0.000426864   0.000173927  -0.001441372  -0.000257720   0.002503260

   16   16.1  1.5  1.5  -0.000000091   0.000000055   0.000000000  -0.000000004   0.000000001   0.000000005   0.000000002  -0.000000011
                         0.196302222   0.004717217   0.007035392   0.000000001  -0.005420171  -0.000653945   0.014693374   0.001512823

   17   17.1  1.5  1.5   0.010647561  -0.443078364   0.000000008   0.000366043  -0.000777318   0.006442870   0.000248776  -0.002416279
                        -0.005290061   0.220145554   0.000000001  -0.008236104  -0.000130476   0.001081505  -0.000993870   0.009653008

   18    1.1  1.5  0.5   0.000275388  -0.011459734   0.000000020  -0.000170006  -0.001372456   0.011376397  -0.000208146   0.002021984
                        -0.000136822   0.005693823  -0.000000002   0.003825181  -0.000230383   0.001909656   0.000831688  -0.008077773

   19    2.1  1.5  0.5  -0.000142713   0.005939002   0.000000001   0.007104078   0.000249737  -0.002070080  -0.000313517   0.003045014
                        -0.000287246   0.011953198   0.000000023   0.000315731  -0.001487781   0.012332094  -0.000078451   0.000762215

   20    3.1  1.5  0.5   0.002885168   0.000069336   0.009383209   0.000000002   0.008230616   0.000992933   0.007722086   0.000795058
                         0.000000005  -0.000000003  -0.000000000  -0.000000012  -0.000000006  -0.000000004  -0.000000006   0.000000031

   21    4.1  1.5  0.5   0.000000004  -0.000000003  -0.000000000  -0.000000014  -0.000000006  -0.000000004  -0.000000007   0.000000032
                        -0.009642029  -0.000231701  -0.006501740  -0.000000002  -0.007630295  -0.000920507  -0.010990151  -0.001131537

   22    5.1  1.5  0.5  -0.002090376  -0.000050236  -0.008700174   0.000000002   0.012704472   0.001532710   0.002218546   0.000228418
                        -0.000000003   0.000000002  -0.000000000  -0.000000024  -0.000000007   0.000000003  -0.000000006   0.000000025

   23    6.1  1.5  0.5   0.000000004  -0.000000002   0.000000000   0.000000023   0.000000007  -0.000000003   0.000000006  -0.000000022
                        -0.008147966  -0.000195799  -0.007509787   0.000000001   0.013343872   0.001609854  -0.001003242  -0.000103296

   24    7.1  1.5  0.5   0.000043281  -0.001801141   0.000000000  -0.006301043   0.000127027  -0.001052907   0.000971153  -0.009432353
                         0.000087108  -0.003625094   0.000000003  -0.000280042  -0.000756743   0.006272506   0.000243096  -0.002361045

   25    8.1  1.5  0.5   0.000041740  -0.001737022  -0.000000000   0.392326574  -0.005415137   0.044884969  -0.055509191   0.539134623
                         0.000084009  -0.003496042  -0.000000000   0.017436444   0.032259729  -0.267394344  -0.013894705   0.134952730

   26    9.1  1.5  0.5  -0.000000015   0.000000009   0.000000004  -0.000000150   0.000000021   0.000000196   0.000000066  -0.000000400
                         0.013112358   0.000315107   0.240716210   0.000000028  -0.204950231  -0.024727245   0.549508627   0.056577162

   27   10.1  1.5  0.5   0.028724675   0.000690267   0.633434901   0.000000029   0.066185578   0.007983872  -0.006260631  -0.000644727
                         0.000000015  -0.000000009  -0.000000004   0.000000150  -0.000000021  -0.000000196  -0.000000066   0.000000400

   28   11.1  1.5  0.5   0.000000155  -0.000000093  -0.000000000  -0.000000002  -0.000000003  -0.000000005  -0.000000004   0.000000020
                        -0.342863253  -0.008239129  -0.010126636  -0.000000001  -0.000555552  -0.000066985  -0.011139706  -0.001146937

   29   12.1  1.5  0.5   0.007656459  -0.318608352   0.000000022  -0.000185963  -0.001501219   0.012443721  -0.000227673   0.002211675
                        -0.003803973   0.158302062  -0.000000002   0.004184223  -0.000251998   0.002088819   0.000909712  -0.008835582

   30   13.1  1.5  0.5   0.092155018   0.002214669   0.013544849  -0.000000000  -0.006866050  -0.000828364   0.002501295   0.000257532
                         0.000000148  -0.000000089   0.000000000   0.000000015   0.000000003  -0.000000005   0.000000002  -0.000000005

   31   14.1  1.5  0.5   0.002118749  -0.088171397  -0.000000001  -0.001091359  -0.000295424   0.002448761  -0.000463025   0.004497169
                         0.004264604  -0.177458970  -0.000000021  -0.000048504   0.001759950  -0.014588025  -0.000115926   0.001125697

   32   15.1  1.5  0.5   0.000000034  -0.000000020   0.000000000   0.000000029   0.000000010  -0.000000001   0.000000009  -0.000000038
                        -0.074956969  -0.001801243  -0.003937461   0.000000003   0.016804820   0.002027375   0.004649450   0.000478700

   33   16.1  1.5  0.5  -0.003563918   0.148312460   0.000000000   0.010329489   0.000081588  -0.000676304  -0.001015779   0.009865762
                        -0.007173169   0.298502868   0.000000015   0.000459080  -0.000486056   0.004028933  -0.000254246   0.002469539

   34   17.1  1.5  0.5  -0.036317648  -0.000872785  -0.003527991  -0.000000003  -0.015067592  -0.001817772  -0.008425292  -0.000867458
                        -0.000000058   0.000000035   0.000000000   0.000000025   0.000000010   0.000000002   0.000000009  -0.000000043

   35    1.1  1.5 -0.5  -0.012796293  -0.000307504  -0.003828957  -0.000000002  -0.011535562  -0.001391658  -0.008326994  -0.000857339
                        -0.000000009   0.000000005   0.000000000   0.000000020   0.000000008   0.000000002   0.000000008  -0.000000036

   36    2.1  1.5 -0.5   0.000000009  -0.000000005   0.000000000   0.000000023   0.000000007  -0.000000002   0.000000006  -0.000000026
                        -0.013347310  -0.000320745  -0.007111091   0.000000002   0.012504630   0.001508596   0.003138961   0.000323183

   37    3.1  1.5 -0.5   0.000062095  -0.002583814   0.000000013  -0.000416614  -0.000979233   0.008117052  -0.000193028   0.001875098
                        -0.000030849   0.001283783  -0.000000002   0.009373955  -0.000164379   0.001362539   0.000771270  -0.007490969

   38    4.1  1.5 -0.5   0.000103095  -0.004290303   0.000000002  -0.006495329   0.000152388  -0.001263160  -0.001097679   0.010661224
                         0.000207502  -0.008634931   0.000000014  -0.000288677  -0.000907805   0.007525014  -0.000274731   0.002668656

   39    5.1  1.5 -0.5  -0.000044990   0.001872038   0.000000024   0.000386286  -0.001511562   0.012529179  -0.000055441   0.000538717
                         0.000022351  -0.000930133  -0.000000001  -0.008691594  -0.000253729   0.002103162   0.000221587  -0.002152145

   40    6.1  1.5 -0.5   0.000087120  -0.003625507  -0.000000000  -0.007502381  -0.000266499   0.002209011  -0.000100199   0.000973217
                         0.000175349  -0.007296920  -0.000000023  -0.000333433   0.001587642  -0.013159756  -0.000025104   0.000243604

   41    7.1  1.5 -0.5   0.000000001  -0.000000001   0.000000000   0.000000003   0.000000001  -0.000000000   0.000000001  -0.000000003
                         0.004047890   0.000097268   0.006307263   0.000000000   0.006360263   0.000767330  -0.009723364  -0.001001116

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.003903788   0.000093807  -0.392713853  -0.000000000  -0.271135382  -0.032711065   0.555768280   0.057221789

   43    9.1  1.5 -0.5  -0.000140202   0.005834464  -0.000000035   0.240478825   0.004093266  -0.033928361   0.054883954  -0.533062300
                        -0.000282199   0.011742784   0.000000148   0.010687772  -0.024386099   0.202122398   0.013737788  -0.133432812

   44   10.1  1.5 -0.5   0.000618173  -0.025724416  -0.000000148  -0.028124430  -0.007873681   0.065272368   0.000156942  -0.001520155
                        -0.000307132   0.012781291  -0.000000035   0.632810232  -0.001321879   0.010956679  -0.000625334   0.006073272

   45   11.1  1.5 -0.5   0.003665984  -0.152559933   0.000000001  -0.010116649   0.000011094  -0.000091971  -0.001112615   0.010806303
                         0.007378605  -0.307051587   0.000000002  -0.000449621  -0.000066060   0.000547886  -0.000278482   0.002704969

   46   12.1  1.5 -0.5  -0.355767937  -0.008549361  -0.004188353  -0.000000003  -0.012617819  -0.001522222  -0.009108184  -0.000937769
                        -0.000000251   0.000000151   0.000000000   0.000000022   0.000000008   0.000000002   0.000000009  -0.000000039

   47   13.1  1.5 -0.5   0.001983389  -0.082529487  -0.000000015  -0.000601389   0.000816935  -0.006771314  -0.000062539   0.000607368
                        -0.000985355   0.041005257  -0.000000000   0.013531492   0.000137126  -0.001136640   0.000249823  -0.002426434

   48   14.1  1.5 -0.5  -0.000000203   0.000000122  -0.000000000  -0.000000021  -0.000000006   0.000000002  -0.000000006   0.000000023
                         0.198156205   0.004761927   0.001092436  -0.000000002  -0.014792123  -0.001784572   0.004635916   0.000477316

   49   15.1  1.5 -0.5   0.000801460  -0.033352743  -0.000000001  -0.003933578  -0.000335619   0.002781955   0.000464382  -0.004510294
                         0.001613115  -0.067127801  -0.000000029  -0.000174822   0.001999402  -0.016572951   0.000116202  -0.001128997

   50   16.1  1.5 -0.5   0.000000147  -0.000000088   0.000000000   0.000000015   0.000000005  -0.000000002   0.000000004  -0.000000017
                        -0.333317488  -0.008009735  -0.010339685   0.000000001   0.004085301   0.000492856   0.010170146   0.001047114

   51   17.1  1.5 -0.5  -0.000781640   0.032524293  -0.000000026   0.000156643   0.001792690  -0.014859693   0.000210596  -0.002045855
                         0.000388322  -0.016159885   0.000000002  -0.003524512   0.000300924  -0.002494366  -0.000841506   0.008173128

   52    1.1  1.5 -1.5   0.000088999  -0.003703702   0.000000000   0.000351416   0.000650176  -0.005389181  -0.000280042   0.002719912
                        -0.000044219   0.001840199   0.000000000  -0.007906984   0.000109139  -0.000904631   0.001118763  -0.010866017

   53    2.1  1.5 -1.5   0.000050932  -0.002119533   0.000000000   0.006295054  -0.000113373   0.000939725  -0.001208343   0.011736066
                         0.000102509  -0.004265907  -0.000000001   0.000279775   0.000675403  -0.005598246  -0.000302463   0.002937697

   54    3.1  1.5 -1.5  -0.012736509  -0.000306065   0.000807434  -0.000000001  -0.010677505  -0.001288185   0.010247535   0.001055085
                        -0.000000007   0.000000004   0.000000000   0.000000012   0.000000003  -0.000000003   0.000000002  -0.000000008

   55    4.1  1.5 -1.5   0.000000008  -0.000000005  -0.000000000  -0.000000011  -0.000000003   0.000000003  -0.000000002   0.000000007
                        -0.009683059  -0.000232693   0.013224812  -0.000000000  -0.002309341  -0.000278612  -0.005950098  -0.000612621

   56    5.1  1.5 -1.5  -0.013119416  -0.000315271   0.012738421   0.000000001   0.005621520   0.000678174   0.000854593   0.000087984
                        -0.000000010   0.000000006  -0.000000000  -0.000000004  -0.000000003  -0.000000004  -0.000000004   0.000000018

   57    6.1  1.5 -1.5  -0.000000010   0.000000006  -0.000000000  -0.000000005  -0.000000003  -0.000000004  -0.000000004   0.000000018
                         0.015510304   0.000372722  -0.002949566  -0.000000001   0.000290718   0.000035106  -0.013806528  -0.001421513

   58    7.1  1.5 -1.5  -0.000055728   0.002319113  -0.000000001   0.014448774   0.000030495  -0.000252768   0.000713512  -0.006930012
                        -0.000112167   0.004667587   0.000000005   0.000642157  -0.000181704   0.001505825   0.000178589  -0.001734678

   59    8.1  1.5 -1.5   0.000387389  -0.016121183  -0.000000041   0.504195704   0.001600022  -0.013262387   0.031326218  -0.304257149
                         0.000779719  -0.032446472   0.000000171   0.022408326  -0.009533219   0.079008495   0.007840903  -0.076159781

   60    9.1  1.5 -1.5   0.000000000   0.000000000  -0.000000016  -0.000001075  -0.000000371   0.000000007  -0.000000350   0.000001537
                        -0.006761163  -0.000162469   0.175725612  -0.000000104  -0.534143107  -0.064439842  -0.416771896  -0.042910485

   61   10.1  1.5 -1.5  -0.006759676  -0.000162433   0.051004230   0.000000104   0.690682550   0.083325507   0.095899801   0.009873560
                         0.000000000  -0.000000000  -0.000000016  -0.000001075  -0.000000371   0.000000007  -0.000000350   0.000001537

   62   11.1  1.5 -1.5   0.000000076  -0.000000045  -0.000000000  -0.000000014  -0.000000004   0.000000001  -0.000000004   0.000000016
                        -0.036416727  -0.000875191   0.011280017  -0.000000001  -0.002084698  -0.000251494  -0.012812977  -0.001319219

   63   12.1  1.5 -1.5   0.002474358  -0.102970708  -0.000000000   0.000384397   0.000711191  -0.005894922  -0.000306316   0.002975101
                        -0.001229394   0.051161392   0.000000000  -0.008649071   0.000119381  -0.000989525   0.001223728  -0.011885495

   64   13.1  1.5 -1.5   0.116813434   0.002807179  -0.011267796  -0.000000001  -0.011468820  -0.001383623   0.005245492   0.000540079
                         0.000000130  -0.000000078   0.000000000   0.000000011   0.000000004   0.000000002   0.000000005  -0.000000021

   65   14.1  1.5 -1.5  -0.000001005   0.000042023   0.000000001  -0.015741661   0.000069092  -0.000572685   0.000449848  -0.004369152
                        -0.000001935   0.000084726  -0.000000003  -0.000699618  -0.000411578   0.003411667   0.000112611  -0.001093657

   66   15.1  1.5 -1.5  -0.000000347   0.000000208  -0.000000000   0.000000001  -0.000000002  -0.000000005  -0.000000003   0.000000015
                         0.507051894   0.012184808  -0.009614079  -0.000000001   0.001461538   0.000176360  -0.010309023  -0.001061411

   67   16.1  1.5 -1.5   0.002098915  -0.087346352   0.000000001  -0.007028454  -0.000108252   0.000897279  -0.001467548   0.014253613
                         0.004224535  -0.175798684  -0.000000004  -0.000312371   0.000644923  -0.005345385  -0.000367336   0.003567875

   68   17.1  1.5 -1.5   0.494754991   0.011889294  -0.008244235  -0.000000000   0.006533011   0.000788193  -0.009950828  -0.001024533
                         0.000000330  -0.000000198   0.000000000  -0.000000009  -0.000000001   0.000000005   0.000000000  -0.000000003

   69    1.1  0.5  0.5  -0.000000001   0.000000034   0.000000005  -0.040927106   0.000314296  -0.002605207  -0.002458329   0.023876583
                        -0.000000002   0.000000069   0.000000020  -0.001818953  -0.001872259   0.015519986  -0.000615270   0.005976650

   70    2.1  0.5  0.5  -0.000000160  -0.000000004   0.012925626  -0.000000007  -0.043219869  -0.005214134  -0.021785639  -0.002243027
                        -0.000000000   0.000000000   0.000000001   0.000000081   0.000000027  -0.000000003   0.000000025  -0.000000110

   71    3.1  0.5  0.5   0.000000000   0.000000000  -0.000000001  -0.000000080  -0.000000028   0.000000000  -0.000000026   0.000000116
                         0.000000005   0.000000000   0.004555987  -0.000000008  -0.045000695  -0.005428966  -0.021486686  -0.002212245

   72    4.1  0.5  0.5   0.000000039   0.000000001  -0.044851197  -0.000000003  -0.019346848  -0.002334014   0.012199759   0.001256096
                         0.000000000  -0.000000000   0.000000000   0.000000006   0.000000006   0.000000011   0.000000008  -0.000000043

   73    5.1  0.5  0.5   0.000000001  -0.000000052  -0.000000001  -0.019932878   0.000320411  -0.002655810   0.004310817  -0.041868936
                         0.000000003  -0.000000105  -0.000000004  -0.000885891  -0.001908812   0.015821537   0.001079041  -0.010480367

   74    6.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000012   0.000000000  -0.000000011  -0.000000002   0.000000017
                         0.000000048   0.000000001  -0.002707425  -0.000000001   0.021280996   0.002567494  -0.045313017  -0.004665412

   75    7.1  0.5  0.5  -0.000000001   0.000000039   0.000000046   0.001802189  -0.002964251   0.024569708   0.000404533  -0.003928934
                         0.000000000  -0.000000019   0.000000001  -0.040549927  -0.000497563   0.004124295  -0.001616057   0.015696065

   76    8.1  0.5  0.5   0.000805076  -0.033503169   0.000000011   0.099449642   0.004121938  -0.034166811  -0.003144036   0.030536103
                         0.001620419  -0.067430514   0.000000368   0.004419905  -0.024555953   0.203542113  -0.000786569   0.007643703

   77    9.1  0.5  0.5   0.058721268   0.001411094   0.087923602   0.000000010  -0.074858797  -0.009031714   0.200711146   0.020665130
                         0.000000027  -0.000000016  -0.000000001   0.000000055  -0.000000008  -0.000000072  -0.000000024   0.000000146

   78   10.1  0.5  0.5  -0.000421146   0.017524219   0.000000168  -0.006088700  -0.020119433   0.166769144   0.001975897  -0.019187948
                         0.000209229  -0.008707007  -0.000000013   0.136997976  -0.003377278   0.027994030  -0.007892458   0.076655905

   79   11.1  0.5  0.5  -0.001650037   0.068663607   0.000000266   0.000684150  -0.012779905   0.105935195  -0.005107408   0.049610622
                         0.000819797  -0.034115827  -0.000000020  -0.015393740  -0.002145271   0.017782447   0.020405985  -0.198193446

   80   12.1  0.5  0.5   0.000000027  -0.000000016  -0.000000001   0.000000055  -0.000000008  -0.000000072  -0.000000024   0.000000146
                        -0.016573063  -0.000398284  -0.231363213  -0.000000010  -0.024174666  -0.002916155   0.002286726   0.000235490

   81   13.1  0.5  0.5   0.021571777   0.000518390  -0.000001004  -0.000000000  -0.000000427  -0.000000052   0.000000234   0.000000024
                         0.000000019  -0.000000011   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   82   14.1  0.5  0.5  -0.000105816   0.004403544  -0.000000000   0.000001417   0.000000009  -0.000000073  -0.000000032   0.000000315
                        -0.000212972   0.008862855   0.000000000   0.000000063  -0.000000052   0.000000435  -0.000000008   0.000000079

   83   15.1  0.5  0.5  -0.000000019   0.000000011  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.031469775   0.000756237  -0.000000475   0.000000000  -0.000000368  -0.000000044  -0.000000330  -0.000000034

   84    1.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000001  -0.000000019  -0.000000013  -0.000000017  -0.000000016   0.000000081
                         0.000000077   0.000000002  -0.040967506  -0.000000006  -0.015737124  -0.001898456  -0.024613240  -0.002534155

   85    2.1  0.5 -0.5   0.000000003  -0.000000144   0.000000081   0.000573895  -0.005142192   0.042623531  -0.000544550   0.005290055
                        -0.000000002   0.000000071  -0.000000004  -0.012912879  -0.000863169   0.007154838   0.002175921  -0.021133608

   86    3.1  0.5 -0.5   0.000000000  -0.000000002  -0.000000004  -0.004551495  -0.000898735   0.007449645   0.002146062  -0.020843602
                         0.000000000  -0.000000004  -0.000000080  -0.000202284   0.005354059  -0.044379785   0.000537069  -0.005217464

   87    4.1  0.5 -0.5  -0.000000001   0.000000035   0.000000006  -0.001991388  -0.002301808   0.019079906   0.000305049  -0.002962361
                         0.000000000  -0.000000017  -0.000000003   0.044806966  -0.000386394   0.003202770  -0.001218491   0.011834633

   88    5.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000004   0.000000002   0.000000003   0.000000003  -0.000000015
                        -0.000000118  -0.000000003  -0.019952555   0.000000001  -0.016042891  -0.001935517   0.043160699   0.004443813

   89    6.1  0.5 -0.5   0.000000001  -0.000000021  -0.000000002   0.002704755   0.000425024  -0.003522952   0.004525785  -0.043956838
                         0.000000001  -0.000000043   0.000000012   0.000120209  -0.002532071   0.020987368   0.001132848  -0.011002997

   90    7.1  0.5 -0.5  -0.000000043  -0.000000001  -0.040589955   0.000000001   0.024913458   0.003005720  -0.016180327  -0.001665919
                        -0.000000000  -0.000000000  -0.000000000  -0.000000046  -0.000000009   0.000000018  -0.000000005   0.000000012

   91    8.1  0.5 -0.5   0.000000053  -0.000000032  -0.000000004  -0.000000367  -0.000000113   0.000000038  -0.000000099   0.000000413
                        -0.075294997  -0.001809393   0.099547812  -0.000000028  -0.206389832  -0.024899502  -0.031478243  -0.003240934

   92    9.1  0.5 -0.5  -0.001263714   0.052587901   0.000000054   0.003903798  -0.008907109   0.073825921   0.005017805  -0.048737092
                         0.000627863  -0.026128530   0.000000013  -0.087836895  -0.001495080   0.012392454  -0.020046676   0.194704032

   93   10.1  0.5 -0.5  -0.019568092  -0.000470256   0.137133211   0.000000020   0.169102375   0.020400921  -0.079020916  -0.008136035
                        -0.000000028   0.000000017  -0.000000003  -0.000000167  -0.000000065  -0.000000018  -0.000000065   0.000000298

   94   11.1  0.5 -0.5  -0.076671902  -0.001842468  -0.015408935   0.000000032   0.107417321   0.012958710   0.204308238   0.021035443
                        -0.000000045   0.000000027  -0.000000005  -0.000000265  -0.000000103  -0.000000028  -0.000000104   0.000000473

   95   12.1  0.5 -0.5  -0.000177205   0.007374343  -0.000000013   0.231135052  -0.000482824   0.004001990  -0.000228406   0.002218292
                        -0.000356691   0.014842018   0.000000054   0.010272498   0.002875907  -0.023841110  -0.000057324   0.000555244

   96   13.1  0.5 -0.5  -0.000464250   0.019318626   0.000000000  -0.000000045  -0.000000051   0.000000421   0.000000006  -0.000000057
                         0.000230652  -0.009598555  -0.000000000   0.000001003  -0.000000009   0.000000071  -0.000000023   0.000000227

   97   14.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.009896535   0.000237811   0.000001418   0.000000000  -0.000000441  -0.000000053  -0.000000325  -0.000000033

   98   15.1  0.5 -0.5   0.000336484  -0.014002749   0.000000000   0.000000475  -0.000000007   0.000000061   0.000000033  -0.000000320
                         0.000677254  -0.028182792  -0.000000000   0.000000021   0.000000044  -0.000000363   0.000000008  -0.000000080


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5  -0.005979882   0.000000000   0.010248519   0.000214577  -0.000000000   0.000000002  -0.000000000   0.007100201
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000004  -0.000000000  -0.000000003   0.000000000   0.000000000  -0.000000003   0.000000011
                         0.005416057  -0.000000002  -0.010487208  -0.000219575   0.000000000  -0.000000032  -0.000000021   0.000828694

    3    3.1  1.5  1.5   0.000000073  -0.002534667   0.000036349  -0.001734060  -0.000000054  -0.000000000   0.023394146   0.000000029
                        -0.000000001  -0.004817358  -0.000210659   0.010061353  -0.000000163  -0.000000002   0.015709047  -0.000000065

    4    4.1  1.5  1.5  -0.000000002  -0.010837382  -0.000010454   0.000499274  -0.000000144  -0.000000002   0.014326994  -0.000000062
                        -0.000000080   0.005702125  -0.000001848   0.000086051   0.000000048   0.000000000  -0.021335958  -0.000000052

    5    5.1  1.5  1.5   0.000000100  -0.006499493   0.000010881  -0.000516916  -0.000000101  -0.000000001  -0.005000331   0.000000003
                        -0.000000002  -0.012352851  -0.000062797   0.002999241  -0.000000301  -0.000000003  -0.003357693   0.000000009

    6    6.1  1.5  1.5   0.000000002   0.007638666   0.000219575  -0.010487177  -0.000000117  -0.000000001   0.003599340  -0.000000012
                         0.000000094  -0.004019108   0.000037898  -0.001807451   0.000000039   0.000000000  -0.005360184  -0.000000018

    7    7.1  1.5  1.5   0.000000002  -0.000000035   0.000000001   0.000000022   0.000000000   0.000000000   0.000000117  -0.000000016
                         0.005238375   0.000000017   0.001483622   0.000031067   0.000000000  -0.000000016   0.000000001   0.037200750

    8    8.1  1.5  1.5   0.000000281  -0.000005033   0.000000096   0.000003228   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.659800645   0.000002524   0.384826265   0.008057884   0.000000002  -0.000000177   0.000000000  -0.000000956

    9    9.1  1.5  1.5  -0.000000000  -0.196666191   0.007858232  -0.375320296  -0.473284359  -0.005362847  -0.000000304   0.000000000
                        -0.000000000   0.103476654   0.001354354  -0.064685890   0.157962884   0.001410016   0.000000452   0.000000000

   10   10.1  1.5  1.5   0.000000000  -0.103477158  -0.001354351   0.064685712  -0.157962898  -0.001410017   0.000000113  -0.000000000
                        -0.000000000  -0.196667149   0.007858211  -0.375319261  -0.473284400  -0.005362847   0.000000076  -0.000000000

   11   11.1  1.5  1.5  -0.000000001  -0.005863292   0.000091117  -0.004351898   0.000000035   0.000000000  -0.002102656   0.000000009
                        -0.000000026   0.003084992   0.000015689  -0.000750043  -0.000000012  -0.000000000   0.003131304   0.000000008

   12   12.1  1.5  1.5  -0.005834042   0.000000000   0.009998516   0.000209343  -0.000000000   0.000000040   0.000000000  -0.001040456
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000044   0.004013043   0.000010141  -0.000485573  -0.000000002  -0.000000000  -0.002462796  -0.000000002
                         0.000000001   0.007627135  -0.000058988   0.002817393  -0.000000005  -0.000000000  -0.001653755   0.000000006

   14   14.1  1.5  1.5  -0.000000001   0.000000020  -0.000000000  -0.000000013  -0.000000000  -0.000000000   0.000000011  -0.000000000
                        -0.007347926  -0.000000010   0.006579930   0.000137764  -0.000000001   0.000000046  -0.000000002   0.003765647

   15   15.1  1.5  1.5   0.000000002   0.011530439   0.000194142  -0.009272438   0.000000316   0.000000004   0.000515129  -0.000000003
                         0.000000118  -0.006066777   0.000033529  -0.001598093  -0.000000105  -0.000000001  -0.000767138  -0.000000001

   16   16.1  1.5  1.5  -0.000000002   0.000000028  -0.000000001  -0.000000018  -0.000000000  -0.000000000   0.000000013  -0.000000003
                        -0.000210963  -0.000000014  -0.007967344  -0.000166819  -0.000000000   0.000000026   0.000000002   0.003944302

   17   17.1  1.5  1.5  -0.000000112   0.005497093  -0.000035602   0.001697282   0.000000043   0.000000000   0.002494827   0.000000004
                         0.000000002   0.010447704   0.000206192  -0.009847955   0.000000128   0.000000001   0.001675264  -0.000000007

   18    1.1  1.5  0.5  -0.000000087   0.004773108  -0.000021312   0.001015436   0.000000010   0.000000000   0.009126831   0.000000022
                         0.000000002   0.009071708   0.000123359  -0.005891750   0.000000031   0.000000000   0.006128622  -0.000000035

   19    2.1  1.5  0.5   0.000000002   0.008199678   0.000155014  -0.007403638  -0.000000036  -0.000000000   0.021358113  -0.000000096
                         0.000000087  -0.004314286   0.000026767  -0.001276007   0.000000012   0.000000000  -0.031806809  -0.000000060

   20    3.1  1.5  0.5  -0.010554449  -0.000000020   0.006029114   0.000126229  -0.000000000   0.000000011  -0.000000017   0.017316883
                         0.000000002  -0.000000040   0.000000001   0.000000026   0.000000000   0.000000000  -0.000000044  -0.000000001

   21    4.1  1.5  0.5   0.000000002  -0.000000038   0.000000001   0.000000024   0.000000000   0.000000000  -0.000000029   0.000000016
                        -0.000051551   0.000000019   0.011463088   0.000240012   0.000000001  -0.000000113  -0.000000019  -0.009762170

   22    5.1  1.5  0.5   0.007647660   0.000000015  -0.004368441  -0.000091460  -0.000000002   0.000000167  -0.000000004   0.025784716
                        -0.000000002   0.000000029  -0.000000001  -0.000000019   0.000000000   0.000000000  -0.000000051   0.000000007

   23    6.1  1.5  0.5   0.000000002  -0.000000032   0.000000001   0.000000020   0.000000000   0.000000000   0.000000044  -0.000000011
                        -0.000043493   0.000000016   0.009687117   0.000202827   0.000000001  -0.000000131   0.000000005   0.009837528

   24    7.1  1.5  0.5   0.000000000   0.008091597  -0.000267728   0.012787057  -0.000000037  -0.000000000   0.001953033  -0.000000010
                         0.000000010  -0.004257423  -0.000046137   0.002203830   0.000000013   0.000000000  -0.002908478  -0.000000017

   25    8.1  1.5  0.5  -0.000000000  -0.113547438   0.004536987  -0.216692907   0.546500492   0.006192469  -0.000000390   0.000000000
                        -0.000000000   0.059743410   0.000781943  -0.037346697  -0.182399423  -0.001628143   0.000000581   0.000000000

   26    9.1  1.5  0.5   0.000000162  -0.000002906   0.000000056   0.000001864   0.000207990   0.000004698   0.000000000  -0.000000000
                         0.637543509   0.000001457  -0.217593330  -0.004555481   0.003194699  -0.288067624  -0.000000000   0.000000669

   27   10.1  1.5  0.5   0.124332434   0.000001457   0.661949172   0.013859855  -0.003194701   0.288067802  -0.000000000   0.000000439
                        -0.000000162   0.000002906  -0.000000056  -0.000001863   0.000207991   0.000004698  -0.000000000   0.000000000

   28   11.1  1.5  0.5   0.000000003  -0.000000047   0.000000001   0.000000030  -0.000000000  -0.000000000   0.000000001  -0.000000001
                        -0.000064388   0.000000024   0.014304053   0.000299496  -0.000000000   0.000000041   0.000000002   0.000590756

   29   12.1  1.5  0.5  -0.000000085   0.004656653  -0.000020792   0.000990661   0.000000009   0.000000000  -0.001337430  -0.000000003
                         0.000000002   0.008850375   0.000120349  -0.005748004   0.000000028   0.000000000  -0.000898078   0.000000005

   30   13.1  1.5  0.5  -0.011830336  -0.000000023   0.006758031   0.000141490  -0.000000001   0.000000053   0.000000001   0.001818715
                         0.000000003  -0.000000045   0.000000001   0.000000029   0.000000000   0.000000000  -0.000000003   0.000000001

   31   14.1  1.5  0.5  -0.000000001  -0.011230477   0.000064435  -0.003077522   0.000000110   0.000000001   0.002504350  -0.000000011
                        -0.000000069   0.005908954   0.000011065  -0.000530405  -0.000000037  -0.000000000  -0.003729513  -0.000000008

   32   15.1  1.5  0.5   0.000000001  -0.000000010   0.000000000   0.000000007  -0.000000000  -0.000000000  -0.000000008   0.000000003
                        -0.000014255   0.000000005   0.003127389   0.000065481  -0.000000002   0.000000156  -0.000000002  -0.001943189

   33   16.1  1.5  0.5   0.000000001  -0.000435756   0.000294867  -0.014083225   0.000000321   0.000000004  -0.001899052   0.000000008
                         0.000000050   0.000229277   0.000050849  -0.002427224  -0.000000107  -0.000000001   0.002828096   0.000000004

   34   17.1  1.5  0.5   0.004662105   0.000000009  -0.002663426  -0.000055763   0.000000001  -0.000000107  -0.000000002   0.004172556
                        -0.000000001   0.000000018  -0.000000000  -0.000000011  -0.000000000  -0.000000000  -0.000000010   0.000000000

   35    1.1  1.5 -0.5   0.010250777   0.000000039   0.005978614   0.000125186  -0.000000000   0.000000033  -0.000000001  -0.010993591
                        -0.000000004   0.000000078  -0.000000001  -0.000000050   0.000000000   0.000000000   0.000000041  -0.000000004

   36    2.1  1.5 -0.5   0.000000004  -0.000000078   0.000000001   0.000000050   0.000000000   0.000000000  -0.000000113   0.000000019
                         0.009265408   0.000000039   0.007512792   0.000157308   0.000000000  -0.000000038  -0.000000004  -0.038312427

   37    3.1  1.5 -0.5  -0.000000045   0.004914510   0.000021414  -0.001024011  -0.000000004  -0.000000000   0.014376395   0.000000039
                         0.000000001   0.009340449  -0.000124399   0.005941516  -0.000000011  -0.000000000   0.009653689  -0.000000027

   38    4.1  1.5 -0.5  -0.000000001   0.000045621  -0.000236521   0.011296539   0.000000108   0.000000001  -0.005442129   0.000000035
                        -0.000000042  -0.000024006  -0.000040789   0.001946942  -0.000000036  -0.000000000   0.008104516   0.000000001

   39    5.1  1.5 -0.5   0.000000032  -0.003561010  -0.000015516   0.000741955  -0.000000053  -0.000000000   0.021406355   0.000000032
                        -0.000000001  -0.006768007   0.000090135  -0.004304971  -0.000000159  -0.000000002   0.014374267  -0.000000040

   40    6.1  1.5 -0.5  -0.000000001   0.000038490  -0.000199877   0.009546372   0.000000124   0.000000001   0.005484143  -0.000000039
                        -0.000000036  -0.000020253  -0.000034469   0.001645304  -0.000000041  -0.000000000  -0.008167076  -0.000000021

   41    7.1  1.5 -0.5   0.000000000  -0.000000009   0.000000000   0.000000006   0.000000000   0.000000000  -0.000000018  -0.000000002
                         0.009143281   0.000000004  -0.012975581  -0.000271674   0.000000000  -0.000000040   0.000000009  -0.003503367

   42    8.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000415981  -0.000009395   0.000000000  -0.000000000
                        -0.128305478   0.000000000   0.219887680   0.004603877  -0.006389403   0.576135693  -0.000000000   0.000000700

   43    9.1  1.5 -0.5  -0.000000064  -0.564211619   0.004489610  -0.214431900   0.273250035   0.003096232   0.000000373  -0.000000000
                        -0.000003250   0.296861878   0.000771886  -0.036956961  -0.091199641  -0.000814071  -0.000000556  -0.000000000

   44   10.1  1.5 -0.5   0.000003250  -0.057893282   0.002355856  -0.112428433  -0.091199697  -0.000814071   0.000000364   0.000000000
                        -0.000000064  -0.110031457  -0.013658167   0.652331629  -0.273250204  -0.003096234   0.000000245  -0.000000000

   45   11.1  1.5 -0.5  -0.000000001   0.000056981  -0.000295139   0.014096228  -0.000000039  -0.000000000   0.000329329  -0.000000002
                        -0.000000053  -0.000029984  -0.000050897   0.002429465   0.000000013   0.000000000  -0.000490444   0.000000001

   46   12.1  1.5 -0.5   0.010000678   0.000000038   0.005832749   0.000122132  -0.000000000   0.000000030   0.000000000   0.001610982
                        -0.000000004   0.000000076  -0.000000001  -0.000000049   0.000000000   0.000000000  -0.000000006   0.000000001

   47   13.1  1.5 -0.5  -0.000000050   0.005508606   0.000024003  -0.001147813  -0.000000017  -0.000000000   0.001509889   0.000000001
                         0.000000001   0.010469580  -0.000139439   0.006659843  -0.000000051  -0.000000001   0.001013883  -0.000000003

   48   14.1  1.5 -0.5  -0.000000003   0.000000062  -0.000000001  -0.000000040  -0.000000000  -0.000000000  -0.000000014   0.000000002
                        -0.012690128  -0.000000031   0.003122895   0.000065378  -0.000000001   0.000000116   0.000000000  -0.004492331

   49   15.1  1.5 -0.5  -0.000000000   0.000012615  -0.000064528   0.003081951  -0.000000148  -0.000000002  -0.001083273   0.000000007
                        -0.000000012  -0.000006638  -0.000011128   0.000531170   0.000000049   0.000000000   0.001613228   0.000000003

   50   16.1  1.5 -0.5   0.000000002  -0.000000045   0.000000001   0.000000029  -0.000000000  -0.000000000   0.000000009  -0.000000002
                        -0.000492393   0.000000022   0.014290859   0.000299219  -0.000000004   0.000000339   0.000000001   0.003406541

   51   17.1  1.5 -0.5   0.000000020  -0.002170834  -0.000009460   0.000452368   0.000000034   0.000000000   0.003464036   0.000000007
                        -0.000000000  -0.004125857   0.000054955  -0.002624729   0.000000102   0.000000001   0.002326085  -0.000000007

   52    1.1  1.5 -1.5   0.000000000  -0.002784437  -0.000036445   0.001740654   0.000000001   0.000000000  -0.005894554   0.000000000
                         0.000000000  -0.005292060   0.000211460  -0.010099617   0.000000002   0.000000000  -0.003958168  -0.000000000

   53    2.1  1.5 -1.5  -0.000000000   0.004793088  -0.000216385   0.010334838  -0.000000030  -0.000000000  -0.000461984  -0.000000014
                        -0.000000004  -0.002521901  -0.000037296   0.001781194   0.000000010   0.000000000   0.000687972   0.000000016

   54    3.1  1.5 -1.5   0.005443480   0.000000033   0.010209691   0.000213772  -0.000000002   0.000000172   0.000000012   0.028179075
                        -0.000000004   0.000000065  -0.000000001  -0.000000042   0.000000000   0.000000000  -0.000000070   0.000000019

   55    4.1  1.5 -1.5   0.000000004  -0.000000071   0.000000001   0.000000046  -0.000000000  -0.000000000   0.000000080  -0.000000009
                         0.012245942   0.000000036   0.000506635   0.000010616  -0.000000002   0.000000152  -0.000000009   0.025699919

   56    5.1  1.5 -1.5   0.013958379   0.000000045   0.003043460   0.000063733  -0.000000004   0.000000318  -0.000000008  -0.006023073
                        -0.000000005   0.000000090  -0.000000002  -0.000000057   0.000000000   0.000000000   0.000000006  -0.000000007

   57    6.1  1.5 -1.5  -0.000000005   0.000000084  -0.000000002  -0.000000054  -0.000000000  -0.000000000   0.000000020  -0.000000001
                        -0.008631480  -0.000000042  -0.010641793  -0.000222822  -0.000000001   0.000000124  -0.000000008   0.006456534

   58    7.1  1.5 -1.5   0.000000001   0.004635844   0.000030612  -0.001462066  -0.000000016  -0.000000000  -0.020738386   0.000000097
                         0.000000039  -0.002439165   0.000005299  -0.000251986   0.000000005   0.000000000   0.030883898   0.000000065

   59    8.1  1.5 -1.5   0.000000110   0.583908734   0.007940261  -0.379235066  -0.000000168  -0.000000002   0.000000533  -0.000000000
                         0.000005629  -0.307225455   0.001371768  -0.065360691   0.000000056   0.000000001  -0.000000793  -0.000000000

   60    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000360251  -0.000008136  -0.000000000   0.000000000
                         0.222227380  -0.000000000  -0.380853763  -0.007974089  -0.005533398   0.498949253   0.000000000  -0.000000545

   61   10.1  1.5 -1.5   0.222228463  -0.000000000  -0.380852714  -0.007974067  -0.005533398   0.498949296   0.000000000   0.000000136
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000360251   0.000008136   0.000000000  -0.000000000

   62   11.1  1.5 -1.5   0.000000001  -0.000000023   0.000000000   0.000000015   0.000000000   0.000000000  -0.000000012   0.000000001
                         0.006625358   0.000000012  -0.004416059  -0.000092458   0.000000000  -0.000000037   0.000000002  -0.003771767

   63   12.1  1.5 -1.5   0.000000000  -0.002716529  -0.000035556   0.001698192   0.000000013   0.000000000   0.000863782  -0.000000000
                         0.000000000  -0.005162995   0.000206301  -0.009853247   0.000000038   0.000000000   0.000580026   0.000000000

   64   13.1  1.5 -1.5  -0.008618452  -0.000000020   0.002858931   0.000059854  -0.000000000   0.000000006  -0.000000002  -0.002966525
                         0.000000002  -0.000000040   0.000000001   0.000000025   0.000000000   0.000000000   0.000000006  -0.000000002

   65   14.1  1.5 -1.5  -0.000000000  -0.006502748   0.000135765  -0.006484329   0.000000043   0.000000000  -0.002099245   0.000000008
                        -0.000000022   0.003421444   0.000023386  -0.001117564  -0.000000014  -0.000000000   0.003126223   0.000000008

   66   15.1  1.5 -1.5  -0.000000006   0.000000105  -0.000000002  -0.000000068   0.000000000   0.000000000   0.000000003  -0.000000001
                        -0.013029075  -0.000000053  -0.009409145  -0.000197016   0.000000004  -0.000000333   0.000000001   0.000924045

   67   16.1  1.5 -1.5  -0.000000001  -0.000186698  -0.000164392   0.007851585   0.000000024   0.000000000  -0.002198838   0.000000012
                        -0.000000031   0.000098230  -0.000028351   0.001353209  -0.000000008  -0.000000000   0.003274543   0.000000005

   68   17.1  1.5 -1.5  -0.011805615  -0.000000050  -0.009993147  -0.000209243   0.000000002  -0.000000135   0.000000001   0.003005108
                         0.000000006  -0.000000100   0.000000002   0.000000064  -0.000000000  -0.000000000  -0.000000008   0.000000002

   69    1.1  0.5  0.5   0.000000000   0.000000243  -0.000000013   0.000000633   0.000000107   0.000000001  -0.100130204   0.000000289
                        -0.000000000  -0.000000128  -0.000000002   0.000000109  -0.000000036  -0.000000000   0.149115405   0.000000131

   70    2.1  0.5  0.5  -0.000000344  -0.000000000  -0.000000145  -0.000000003  -0.000000003   0.000000233   0.000000215   0.113450186
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000611   0.000000222

   71    3.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000545   0.000000027
                        -0.000000164  -0.000000000  -0.000000401  -0.000000008   0.000000004  -0.000000319  -0.000000239   0.298183300

   72    4.1  0.5  0.5  -0.000000699  -0.000000000  -0.000000321  -0.000000007  -0.000000002   0.000000169   0.000000191  -0.388769899
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000001334  -0.000000072

   73    5.1  0.5  0.5   0.000000000   0.000000483  -0.000000010   0.000000467   0.000000308   0.000000003   0.001571809  -0.000000013
                         0.000000000  -0.000000254  -0.000000002   0.000000080  -0.000000103  -0.000000001  -0.002340560  -0.000000365

   74    6.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000001261   0.000000279
                        -0.000000544  -0.000000000  -0.000000285  -0.000000006   0.000000003  -0.000000276  -0.000000206  -0.453623465

   75    7.1  0.5  0.5  -0.000000000   0.000000094  -0.000000000   0.000000003   0.000000071   0.000000001   0.588901844   0.000001095
                        -0.000000000   0.000000179   0.000000000  -0.000000019   0.000000212   0.000000002   0.395444635  -0.000001705

   76    8.1  0.5  0.5  -0.000000014  -0.073489797  -0.000999335   0.047729266  -0.000000000  -0.000000000  -0.000000053   0.000000000
                        -0.000000708   0.038666893  -0.000172646   0.008226079   0.000000000  -0.000000000   0.000000078  -0.000000000

   77    9.1  0.5  0.5   0.000432815  -0.000000159  -0.096117000  -0.002012479  -0.000000002   0.000000146  -0.000000000   0.000000452
                         0.000000018  -0.000000317   0.000000006   0.000000203   0.000000000   0.000000000  -0.000000000   0.000000000

   78   10.1  0.5  0.5   0.000000378  -0.039702764  -0.000157684   0.007541752  -0.000000094  -0.000000001   0.000000060  -0.000000000
                        -0.000000007  -0.075458524   0.000916191  -0.043758772  -0.000000282  -0.000000003   0.000000040  -0.000000000

   79   11.1  0.5  0.5   0.000000599  -0.020680338   0.000303496  -0.014478710  -0.000000005  -0.000000000   0.000000037   0.000000000
                        -0.000000012  -0.039304807  -0.001758922   0.084008270  -0.000000015  -0.000000000   0.000000025  -0.000000000

   80   12.1  0.5  0.5   0.000000018  -0.000000317   0.000000006   0.000000203  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.083473085   0.000000159  -0.047682581  -0.000998310  -0.000000000   0.000000025   0.000000000  -0.000000098

   81   13.1  0.5  0.5   0.040653631   0.000000116   0.000182834   0.000003857   0.000408852  -0.036866414   0.000000000  -0.000000012
                        -0.000000013   0.000000232  -0.000000004  -0.000000149  -0.000026618  -0.000000601   0.000000000   0.000000000

   82   14.1  0.5  0.5   0.000000000   0.018129076  -0.000724385   0.034597628   0.034970069   0.000396250  -0.000000331   0.000000000
                         0.000000000  -0.009538681  -0.000124847   0.005962849  -0.011671573  -0.000104183   0.000000493   0.000000000

   83   15.1  0.5  0.5   0.000000013  -0.000000232   0.000000004   0.000000149  -0.000026618  -0.000000601  -0.000000000   0.000000000
                         0.020168221   0.000000116   0.035290569   0.000738921  -0.000408852   0.036866389  -0.000000000  -0.000000525

   84    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000313   0.000000134
                        -0.000000275   0.000000000   0.000000642   0.000000013   0.000000001  -0.000000113  -0.000000052  -0.179614763

   85    2.1  0.5 -0.5   0.000000000  -0.000000160   0.000000001  -0.000000025   0.000000074   0.000000001  -0.094185939  -0.000000162
                        -0.000000000  -0.000000305  -0.000000003   0.000000143   0.000000221   0.000000003  -0.063245184   0.000000627

   86    3.1  0.5 -0.5  -0.000000000  -0.000000145  -0.000000008   0.000000395  -0.000000302  -0.000000003  -0.166229049   0.000000319
                        -0.000000000   0.000000076  -0.000000001   0.000000068   0.000000101   0.000000001   0.247550367   0.000000503

   87    4.1  0.5 -0.5   0.000000000  -0.000000325   0.000000001  -0.000000055   0.000000053   0.000000000   0.322755005   0.000000903
                        -0.000000000  -0.000000618  -0.000000007   0.000000316   0.000000160   0.000000002   0.216728506  -0.000001001

   88    5.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000214   0.000000116
                        -0.000000546  -0.000000000   0.000000474   0.000000010   0.000000004  -0.000000325  -0.000000296   0.002819357

   89    6.1  0.5 -0.5  -0.000000000  -0.000000481  -0.000000006   0.000000281  -0.000000261  -0.000000003   0.252882424  -0.000001162
                        -0.000000000   0.000000253  -0.000000001   0.000000048   0.000000087   0.000000001  -0.376596237  -0.000000532

   90    7.1  0.5 -0.5  -0.000000202  -0.000000000  -0.000000019  -0.000000000   0.000000002  -0.000000223   0.000000041   0.709353116
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000002026   0.000000358

   91    8.1  0.5 -0.5   0.000000035  -0.000000633   0.000000012   0.000000406  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.083041429   0.000000318   0.048432955   0.001014139  -0.000000000   0.000000000  -0.000000000  -0.000000094

   92    9.1  0.5 -0.5   0.000000354   0.000201549   0.000342009  -0.016324943   0.000000046   0.000000000  -0.000000375  -0.000000000
                        -0.000000007   0.000383024  -0.001983205   0.094720504   0.000000138   0.000000002  -0.000000252   0.000000000

   93   10.1  0.5 -0.5   0.085266044   0.000000169  -0.044403921  -0.000929661  -0.000000003   0.000000297   0.000000000   0.000000073
                        -0.000000019   0.000000338  -0.000000006  -0.000000217   0.000000000   0.000000000   0.000000000   0.000000000

   94   11.1  0.5 -0.5   0.044413334   0.000000269   0.085246833   0.001784913  -0.000000000   0.000000016  -0.000000000   0.000000045
                        -0.000000030   0.000000536  -0.000000010  -0.000000344   0.000000000   0.000000000  -0.000000000  -0.000000000

   95   12.1  0.5 -0.5   0.000000007   0.073871795  -0.000983840   0.046989797   0.000000023   0.000000000   0.000000055  -0.000000000
                         0.000000354  -0.038867902  -0.000169357   0.008098615  -0.000000008  -0.000000000  -0.000000081  -0.000000000

   96   13.1  0.5 -0.5  -0.000000259   0.018929707  -0.000000802   0.000031058  -0.011671578  -0.000104183   0.000000010   0.000000000
                         0.000000005   0.035977547   0.000003775  -0.000180177  -0.034970084  -0.000396251   0.000000007  -0.000000000

   97   14.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000026618   0.000000601  -0.000000000   0.000000000
                        -0.020485356   0.000000000   0.035107712   0.000735064   0.000408852  -0.036866398  -0.000000000  -0.000000594

   98   15.1  0.5 -0.5   0.000000005   0.017848424   0.000728160  -0.034777827   0.034970060   0.000396250   0.000000292  -0.000000000
                         0.000000259  -0.009391001   0.000125648  -0.005993911  -0.011671570  -0.000104183  -0.000000436   0.000000000


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5   0.001018495  -0.027139531  -0.001326973   0.000000000   0.001019817  -0.029068704   0.000013757  -0.005621658
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000021  -0.000000003   0.000000189  -0.000000384   0.000000002  -0.000000002  -0.000000004  -0.000000001
                         0.000176432  -0.004701424   0.039806859  -0.000000063   0.000229036  -0.006528295  -0.000012739   0.005204887

    3    3.1  1.5  1.5   0.016482766   0.000618565   0.000000127   0.019219687  -0.003128901  -0.000109768   0.001665128   0.000004002
                        -0.012945949  -0.000485858   0.000000169  -0.009362234   0.001413840   0.000049597  -0.002825816  -0.000006932

    4    4.1  1.5  1.5   0.003808679   0.000142929  -0.000000137   0.008183749   0.009176488   0.000321933  -0.008176986  -0.000020030
                         0.004849201   0.000181970   0.000000090   0.016800413   0.020308050   0.000712460  -0.004818307  -0.000011711

    5    5.1  1.5  1.5  -0.021322375  -0.000800180  -0.000000066  -0.011069523   0.009083623   0.000318676   0.005374335   0.000013052
                         0.016747089   0.000628494  -0.000000087   0.005392149  -0.004104564  -0.000144001  -0.009120598  -0.000022344

    6    6.1  1.5  1.5  -0.004591471  -0.000172304  -0.000000153   0.008391143   0.011020230   0.000386622   0.004930248   0.000012088
                        -0.005845860  -0.000219385   0.000000103   0.017226162   0.024388356   0.000855608   0.002905170   0.000007015

    7    7.1  1.5  1.5  -0.000000001   0.000000002  -0.000000009   0.000000067  -0.000000011  -0.000000006   0.000000038   0.000000008
                        -0.001133322   0.030199996  -0.003606086   0.000000013   0.000702804  -0.020032625  -0.000009632   0.003940888

    8    8.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000550  -0.000000111
                         0.000000038  -0.000001004   0.000000092  -0.000000000  -0.000000033   0.000000940   0.000116214  -0.047558494

    9    9.1  1.5  1.5   0.000000183   0.000000007  -0.000000000   0.000000144  -0.000000067  -0.000000002   0.017917234   0.000043847
                         0.000000233   0.000000009   0.000000000   0.000000296  -0.000000148  -0.000000005   0.010557730   0.000025837

   10   10.1  1.5  1.5  -0.000000165  -0.000000006  -0.000000000  -0.000000253  -0.000000082  -0.000000003  -0.010557820  -0.000025837
                         0.000000129   0.000000005  -0.000000000   0.000000123   0.000000037   0.000000001   0.017917388   0.000043848

   11   11.1  1.5  1.5  -0.000178855  -0.000006712   0.000000028  -0.001634991  -0.001943713  -0.000068191  -0.002573037  -0.000006300
                        -0.000227717  -0.000008544  -0.000000019  -0.003356471  -0.004301539  -0.000150909  -0.001516165  -0.000003697

   12   12.1  1.5  1.5  -0.000149253   0.003977103   0.000194527  -0.000000000  -0.000149446   0.004259790   0.000007188  -0.002937224
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.003933487  -0.000147615  -0.000000018  -0.002883092   0.001368674   0.000048016  -0.001898330  -0.000004622
                         0.003089452   0.000115944  -0.000000024   0.001404402  -0.000618455  -0.000021697   0.003221595   0.000007889

   14   14.1  1.5  1.5   0.000000002  -0.000000000   0.000000020  -0.000000035  -0.000000001  -0.000000001  -0.000000012  -0.000000002
                        -0.000092892   0.002475313   0.003951738  -0.000000006   0.000094237  -0.002686102   0.000008306  -0.003395589

   15   15.1  1.5  1.5   0.000855688   0.000032111   0.000000010  -0.000526494  -0.000799060  -0.000028034   0.004274744   0.000010476
                         0.001089461   0.000040885  -0.000000007  -0.001080837  -0.001768363  -0.000062039   0.002518907   0.000006101

   16   16.1  1.5  1.5  -0.000000002   0.000000000  -0.000000020   0.000000045  -0.000000001  -0.000000000  -0.000000016  -0.000000003
                        -0.000140094   0.003733142  -0.004323726   0.000000008   0.000053428  -0.001522927  -0.000000777   0.000315506

   17   17.1  1.5  1.5   0.000353781   0.000013277   0.000000010   0.001500515   0.000330044   0.000011579  -0.002244730  -0.000005433
                        -0.000277868  -0.000010430   0.000000014  -0.000730926  -0.000149135  -0.000005233   0.003809447   0.000009337

   18    1.1  1.5  0.5  -0.023211984  -0.000871090   0.000000043   0.005425552   0.022421609   0.000786609  -0.003768159  -0.000009134
                         0.018231230   0.000684176   0.000000065  -0.002642877  -0.010131523  -0.000355449   0.006394806   0.000015670

   19    2.1  1.5  0.5   0.006211389   0.000233082   0.000000072  -0.003030638  -0.000874980  -0.000030705   0.005609291   0.000013748
                         0.007908333   0.000296772  -0.000000057  -0.006221567  -0.001936388  -0.000067935   0.003305294   0.000008002

   20    3.1  1.5  0.5   0.000334640  -0.008916964   0.034182653  -0.000000049  -0.000160001   0.004560860   0.000021493  -0.008788090
                        -0.000000014   0.000000003  -0.000000167   0.000000324  -0.000000001   0.000000004   0.000000044   0.000000009

   21    4.1  1.5  0.5   0.000000023  -0.000000001   0.000000157  -0.000000323   0.000000001  -0.000000001   0.000000042   0.000000008
                        -0.000278496   0.007420868   0.033573401  -0.000000057   0.000742882  -0.021175037   0.000002749  -0.001118070

   22    5.1  1.5  0.5   0.001370018  -0.036506319   0.009406849  -0.000000011   0.000443699  -0.012646936  -0.000015573   0.006367769
                        -0.000000000   0.000000002  -0.000000056   0.000000098  -0.000000000   0.000000002  -0.000000032  -0.000000006

   23    6.1  1.5  0.5  -0.000000009  -0.000000001  -0.000000027   0.000000066  -0.000000000  -0.000000001   0.000000035   0.000000007
                        -0.000496018   0.013217384  -0.005395638   0.000000016  -0.001483159   0.042275900   0.000002323  -0.000944836

   24    7.1  1.5  0.5   0.007923989   0.000297378  -0.000000131   0.007627095   0.003660597   0.000128423   0.007187117   0.000017591
                         0.010088811   0.000378607   0.000000092   0.015657646   0.008101092   0.000284209   0.004235011   0.000010354

   25    8.1  1.5  0.5  -0.000000036  -0.000000001   0.000000000  -0.000000350  -0.000000069  -0.000000002   0.010344223   0.000025315
                        -0.000000046  -0.000000002  -0.000000000  -0.000000718  -0.000000153  -0.000000005   0.006095333   0.000014917

   26    9.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000318  -0.000000064
                        -0.000000028   0.000000752   0.000000399  -0.000000000  -0.000000004   0.000000107   0.000125863  -0.051471646

   27   10.1  1.5  0.5   0.000000011  -0.000000281  -0.000000264  -0.000000000   0.000000004  -0.000000109   0.000008327  -0.003443250
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000318   0.000000064

   28   11.1  1.5  0.5  -0.000000002   0.000000000  -0.000000018   0.000000037  -0.000000000   0.000000000   0.000000028   0.000000006
                         0.000070059  -0.001866844  -0.003979757   0.000000006   0.000005360  -0.000152781   0.000001837  -0.000747054

   29   12.1  1.5  0.5   0.003401635   0.000127655  -0.000000006  -0.000795100  -0.003285791  -0.000115274  -0.001968796  -0.000004772
                        -0.002671723  -0.000100264  -0.000000010   0.000387306   0.001484731   0.000052089   0.003341173   0.000008187

   30   13.1  1.5  0.5   0.000142809  -0.003805390  -0.001534337   0.000000003   0.000067421  -0.001921751   0.000012901  -0.005275164
                         0.000000001  -0.000000000   0.000000006  -0.000000013   0.000000000  -0.000000000   0.000000026   0.000000005

   31   14.1  1.5  0.5   0.001455212   0.000054610  -0.000000005   0.000425676   0.000267009   0.000009366  -0.004696438  -0.000011502
                         0.001852774   0.000069529   0.000000003   0.000873872   0.000590903   0.000020730  -0.002767384  -0.000006735

   32   15.1  1.5  0.5   0.000000003   0.000000000   0.000000014  -0.000000031   0.000000000   0.000000000   0.000000006   0.000000001
                         0.000045184  -0.001204037   0.002998820  -0.000000006   0.000243033  -0.006927394   0.000000405  -0.000164693

   33   16.1  1.5  0.5   0.000243854   0.000009154  -0.000000021   0.001124917   0.000482649   0.000016933  -0.000797629  -0.000001946
                         0.000310475   0.000011652   0.000000016   0.002309337   0.001068128   0.000037473  -0.000469997  -0.000001177

   34   17.1  1.5  0.5   0.000149397  -0.003980928   0.004963713  -0.000000007   0.000015239  -0.000434316  -0.000005084   0.002078975
                        -0.000000002   0.000000001  -0.000000025   0.000000048  -0.000000000   0.000000001  -0.000000010  -0.000000002

   35    1.1  1.5 -0.5   0.001107653  -0.029515656   0.006035016  -0.000000010  -0.000863190   0.024604396  -0.000018137   0.007422437
                         0.000000001   0.000000003  -0.000000027   0.000000077  -0.000000007  -0.000000002  -0.000000086  -0.000000017

   36    2.1  1.5 -0.5   0.000000008  -0.000000000   0.000000023  -0.000000089   0.000000007   0.000000005   0.000000085   0.000000017
                         0.000377361  -0.010055997   0.006920452  -0.000000020  -0.000074552   0.002124897  -0.000015906   0.006510693

   37    3.1  1.5 -0.5   0.007012566   0.000263180  -0.000000186  -0.030730626  -0.004156240  -0.000145806  -0.004461452  -0.000010873
                        -0.005507828  -0.000206689  -0.000000270   0.014969383   0.001878061   0.000065885   0.007571392   0.000018539

   38    4.1  1.5 -0.5   0.004583723   0.000172039  -0.000000266   0.014702584  -0.008719393  -0.000305901   0.000963280   0.000002347
                         0.005835989   0.000219003   0.000000193   0.030182897  -0.019296486  -0.000676977   0.000567603   0.000001431

   39    5.1  1.5 -0.5   0.028709648   0.001077423  -0.000000053  -0.008456877   0.011524960   0.000404336   0.003232727   0.000007879
                        -0.022549223  -0.000846233  -0.000000084   0.004119470  -0.005207716  -0.000182705  -0.005486161  -0.000013433

   40    6.1  1.5 -0.5   0.008164115   0.000306373   0.000000052  -0.002362876   0.017408245   0.000610731   0.000814029   0.000001984
                         0.010394540   0.000390089  -0.000000043  -0.004850745   0.038525377   0.001351580   0.000479658   0.000001210

   41    7.1  1.5 -0.5  -0.000000009   0.000000001  -0.000000082   0.000000158   0.000000000   0.000000002   0.000000010   0.000000002
                         0.000481432  -0.012828629  -0.017416499   0.000000025   0.000311877  -0.008889750  -0.000020412   0.008342060

   42    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000002   0.000000058   0.000000799  -0.000000000  -0.000000006   0.000000168  -0.000029382   0.012006500

   43    9.1  1.5 -0.5   0.000000465   0.000000017  -0.000000000   0.000000175   0.000000044   0.000000002   0.044345464   0.000108599
                         0.000000592   0.000000022   0.000000000   0.000000359   0.000000097   0.000000003   0.026130637   0.000063623

   44   10.1  1.5 -0.5   0.000000221   0.000000008   0.000000000   0.000000238   0.000000099   0.000000003  -0.001748088  -0.000003954
                        -0.000000173  -0.000000007   0.000000000  -0.000000116  -0.000000045  -0.000000002   0.002966506   0.000007336

   45   11.1  1.5 -0.5  -0.001153112  -0.000043276   0.000000031  -0.001742829  -0.000062912  -0.000002207   0.000643628   0.000001568
                        -0.001468141  -0.000055095  -0.000000022  -0.003577850  -0.000139227  -0.000004884   0.000379252   0.000000956

   46   12.1  1.5 -0.5  -0.000162323   0.004325416  -0.000884415   0.000000001   0.000126497  -0.003605669  -0.000009476   0.003878091
                        -0.000000000  -0.000000000   0.000000004  -0.000000011   0.000000001   0.000000000  -0.000000045  -0.000000009

   47   13.1  1.5 -0.5   0.002992671   0.000112309   0.000000008   0.001379387   0.001751262   0.000061440  -0.002678044  -0.000006527
                        -0.002350513  -0.000088211   0.000000011  -0.000671923  -0.000791333  -0.000027762   0.004544825   0.000011128

   48   14.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000006   0.000000006   0.000000001   0.000000001  -0.000000036  -0.000000007
                         0.000088411  -0.002355932  -0.000972035   0.000000000   0.000022748  -0.000648429   0.000013329  -0.005451141

   49   15.1  1.5 -0.5  -0.000743710  -0.000027907  -0.000000025   0.001313254  -0.002852542  -0.000100075   0.000141892   0.000000346
                        -0.000946890  -0.000035536   0.000000019   0.002695976  -0.006312827  -0.000221472   0.000083609   0.000000211

   50   16.1  1.5 -0.5  -0.000000002   0.000000000  -0.000000011   0.000000026  -0.000000001  -0.000000000   0.000000026   0.000000005
                         0.000014818  -0.000394790  -0.002568750   0.000000005   0.000041121  -0.001172112   0.000002274  -0.000925802

   51   17.1  1.5 -0.5   0.003130720   0.000117492  -0.000000027  -0.004462439   0.000395786   0.000013887   0.001055434   0.000002572
                        -0.002458939  -0.000092278  -0.000000040   0.002173725  -0.000178841  -0.000006275  -0.001791144  -0.000004386

   52    1.1  1.5 -1.5  -0.021343328  -0.000800974   0.000000000  -0.001192963  -0.026489863  -0.000929343   0.002853944   0.000006984
                         0.016763547   0.000629104  -0.000000000   0.000581119   0.011969825   0.000419937  -0.004843350  -0.000011853

   53    2.1  1.5 -1.5   0.002903974   0.000108962   0.000000317  -0.017432359   0.002688200   0.000094310   0.004484281   0.000010973
                         0.003697341   0.000138764  -0.000000225  -0.035786854   0.005949136   0.000208718   0.002642362   0.000006471

   54    3.1  1.5 -1.5   0.000786562  -0.020958988  -0.021378676   0.000000040  -0.000120453   0.003433506  -0.000008004   0.003279922
                         0.000000017  -0.000000000   0.000000091  -0.000000207   0.000000003   0.000000001  -0.000000071  -0.000000014

   55    4.1  1.5 -1.5   0.000000004  -0.000000002   0.000000094  -0.000000163  -0.000000002  -0.000000004   0.000000078   0.000000016
                        -0.000231391   0.006166100   0.018687634  -0.000000021  -0.000781819   0.022285081  -0.000023202   0.009491006

   56    5.1  1.5 -1.5  -0.001017493   0.027112887   0.012312986  -0.000000021   0.000349701  -0.009967931  -0.000025876   0.010586254
                        -0.000000011  -0.000000001  -0.000000055   0.000000107   0.000000002   0.000000001  -0.000000098  -0.000000020

   57    6.1  1.5 -1.5   0.000000005  -0.000000003   0.000000092  -0.000000183   0.000000003  -0.000000001  -0.000000093  -0.000000019
                         0.000278960  -0.007433417   0.019161209  -0.000000026  -0.000938905   0.026762612   0.000013975  -0.005722531

   58    7.1  1.5 -1.5  -0.018653934  -0.000700029  -0.000000054   0.001579197   0.008248970   0.000289408   0.003395276   0.000008318
                        -0.023750168  -0.000891279   0.000000041   0.003241912   0.018255426   0.000640450   0.002000675   0.000004857

   59    8.1  1.5 -1.5   0.000000620   0.000000023   0.000000000  -0.000000040  -0.000000387  -0.000000014  -0.040974056  -0.000100404
                         0.000000790   0.000000030  -0.000000000  -0.000000082  -0.000000856  -0.000000030  -0.024144089  -0.000058524

   60    9.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000011   0.000000297   0.000000329  -0.000000000   0.000000006  -0.000000162   0.000050893  -0.020796465

   61   10.1  1.5 -1.5  -0.000000008   0.000000209   0.000000282   0.000000000  -0.000000003   0.000000090   0.000050894  -0.020796643
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   62   11.1  1.5 -1.5  -0.000000001   0.000000001  -0.000000018   0.000000034   0.000000000   0.000000001   0.000000014   0.000000003
                         0.000010865  -0.000289559  -0.003733509   0.000000004   0.000165601  -0.004720302  -0.000007304   0.002986516

   63   12.1  1.5 -1.5   0.003127711   0.000117377  -0.000000000   0.000174882   0.003881881   0.000136188   0.001491139   0.000003649
                        -0.002456577  -0.000092191   0.000000000  -0.000085189  -0.001754084  -0.000061538  -0.002530571  -0.000006193

   64   13.1  1.5 -1.5  -0.000187705   0.005001703   0.003206955  -0.000000006   0.000052691  -0.001501917   0.000009144  -0.003739295
                        -0.000000003  -0.000000000  -0.000000014   0.000000030   0.000000000   0.000000000   0.000000023   0.000000005

   65   14.1  1.5 -1.5  -0.001528951  -0.000057379   0.000000029  -0.001730558   0.001106075   0.000038805  -0.002925475  -0.000007162
                        -0.001946659  -0.000073051  -0.000000020  -0.003552661   0.002447804   0.000085876  -0.001723839  -0.000004207

   66   15.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000005   0.000000013  -0.000000001  -0.000000000  -0.000000062  -0.000000012
                        -0.000051988   0.001385326  -0.001202250   0.000000002   0.000068079  -0.001940517   0.000012123  -0.004961686

   67   16.1  1.5 -1.5  -0.002305887  -0.000086532  -0.000000037   0.001893462   0.000627106   0.000022002   0.000271826   0.000000661
                        -0.002935853  -0.000110176   0.000000027   0.003887082   0.001387820   0.000048688   0.000160170   0.000000409

   68   17.1  1.5 -1.5   0.000016884  -0.000449857  -0.001669071   0.000000003   0.000012706  -0.000362175   0.000010802  -0.004421618
                         0.000000001  -0.000000000   0.000000007  -0.000000017   0.000000001   0.000000000   0.000000059   0.000000012

   69    1.1  0.5  0.5   0.352223606   0.013218368  -0.000000011   0.012149812  -0.188326674  -0.006607069   0.000001346   0.000000003
                         0.448450742   0.016829362   0.000000140   0.024942141  -0.416777043  -0.014621621   0.000000793   0.000000002

   70    2.1  0.5  0.5  -0.011437264   0.304768420  -0.369557028   0.000000676  -0.020007378   0.570287985  -0.000000001   0.000000303
                         0.000000263  -0.000000017   0.000001780  -0.000003788   0.000000032  -0.000000001  -0.000000000   0.000000000

   71    3.1  0.5  0.5   0.000000199  -0.000000049   0.000002320  -0.000004526   0.000000015  -0.000000046  -0.000000000  -0.000000000
                         0.016807184  -0.447855190   0.460505657  -0.000000691   0.009024650  -0.257234239  -0.000000000   0.000000189

   72    4.1  0.5  0.5   0.019952959  -0.531688095  -0.336423222   0.000000439  -0.005041290   0.143695461   0.000000004  -0.000001591
                         0.000000192  -0.000000004   0.000001657  -0.000002767  -0.000000114  -0.000000087   0.000000000  -0.000000000

   73    5.1  0.5  0.5   0.171248755   0.006426872  -0.000004533   0.257710212   0.156593135   0.005493740   0.000000128   0.000000000
                         0.218033626   0.008182229   0.000003183   0.529052625   0.346548905   0.012157878   0.000000075   0.000000000

   74    6.1  0.5  0.5   0.000000222  -0.000000046   0.000001888  -0.000004348   0.000000132   0.000000038   0.000000000  -0.000000000
                         0.003662574  -0.097603823   0.428535203  -0.000000739  -0.014419147   0.411002383  -0.000000001   0.000000317

   75    7.1  0.5  0.5   0.055844827   0.002095908   0.000000532   0.036072157  -0.219793247  -0.007710905  -0.000000712  -0.000000002
                        -0.043861790  -0.001646375   0.000000510  -0.017571545   0.099316813   0.003484193   0.000001208   0.000000003

   76    8.1  0.5  0.5   0.000000122   0.000000005  -0.000000000   0.000000051  -0.000000083  -0.000000003  -0.073987942  -0.000181302
                         0.000000156   0.000000006   0.000000000   0.000000104  -0.000000185  -0.000000006  -0.043597623  -0.000105678

   77    9.1  0.5  0.5   0.000000001  -0.000000023  -0.000000219   0.000000000  -0.000000003   0.000000076  -0.000032926   0.013391007
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000497   0.000000100

   78   10.1  0.5  0.5   0.000000095   0.000000004   0.000000000   0.000000333  -0.000000012  -0.000000000   0.051183702   0.000124716
                        -0.000000075  -0.000000003   0.000000000  -0.000000162   0.000000005   0.000000000  -0.086862253  -0.000212697

   79   11.1  0.5  0.5  -0.000000166  -0.000000006  -0.000000000  -0.000000245   0.000000155   0.000000005   0.019271224   0.000046303
                         0.000000130   0.000000005  -0.000000000   0.000000119  -0.000000070  -0.000000002  -0.032704335  -0.000080235

   80   12.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000497   0.000000100
                         0.000000006  -0.000000149  -0.000000190   0.000000000  -0.000000003   0.000000097  -0.000242774   0.099267824

   81   13.1  0.5  0.5  -0.000000002   0.000000063  -0.000000443   0.000000000   0.000000011  -0.000000306  -0.001944905   0.795560976
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000006407  -0.000001287

   82   14.1  0.5  0.5   0.000000372   0.000000014  -0.000000000   0.000000361  -0.000000077  -0.000000003   0.417069385   0.001020657
                         0.000000474   0.000000018   0.000000000   0.000000742  -0.000000171  -0.000000006   0.245758115   0.000601422

   83   15.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000006407   0.000001287
                        -0.000000029   0.000000770   0.000000814  -0.000000000   0.000000016  -0.000000454  -0.000760234   0.311470668

   84    1.1  0.5 -0.5   0.000000153   0.000000043   0.000000052  -0.000000071  -0.000000073  -0.000000007  -0.000000000  -0.000000000
                        -0.021399829   0.570236384   0.027743976  -0.000000121   0.016045097  -0.457351114   0.000000004  -0.000001562

   85    2.1  0.5 -0.5   0.239678884   0.008994765  -0.000002266  -0.332236303   0.519694678   0.018232429  -0.000000154  -0.000000000
                        -0.188249361  -0.007064363  -0.000003109   0.161837684  -0.234831490  -0.008238550   0.000000261   0.000000001

   86    3.1  0.5 -0.5   0.276631177   0.010381306   0.000003766  -0.201666128   0.105923109   0.003716130   0.000000163   0.000000000
                         0.352206566   0.013217789  -0.000002603  -0.414000278   0.234413628   0.008224031   0.000000096   0.000000000

   87    4.1  0.5 -0.5  -0.418135192  -0.015691476  -0.000001607  -0.302448619   0.130947500   0.004594003   0.000000808   0.000000002
                         0.328413137   0.012324696  -0.000002295   0.147327583  -0.059170410  -0.002075991  -0.000001370  -0.000000003

   88    5.1  0.5 -0.5   0.000000282  -0.000000049   0.000002737  -0.000005470   0.000000025  -0.000000040  -0.000000000   0.000000000
                        -0.010404497   0.277245017   0.588482143  -0.000000876  -0.013341483   0.380286146   0.000000000  -0.000000148

   89    6.1  0.5 -0.5   0.060287903   0.002262125   0.000003585  -0.187665768  -0.169241305  -0.005937594   0.000000273   0.000000001
                         0.076758551   0.002880493  -0.000002568  -0.385258331  -0.374540170  -0.013139893   0.000000161   0.000000000

   90    7.1  0.5 -0.5   0.002665217  -0.071010568  -0.040124299   0.000000255  -0.008461540   0.241190590   0.000000003  -0.000001402
                         0.000000157   0.000000021  -0.000000000  -0.000000691   0.000000082   0.000000076   0.000000000  -0.000000000

   91    8.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000994   0.000000200
                        -0.000000007   0.000000198   0.000000116  -0.000000000   0.000000007  -0.000000203  -0.000209850   0.085877635

   92    9.1  0.5 -0.5  -0.000000018  -0.000000001  -0.000000000  -0.000000197   0.000000069   0.000000002  -0.006798119  -0.000017144
                         0.000000014   0.000000001  -0.000000000   0.000000096  -0.000000031  -0.000000001   0.011537099   0.000028115

   93   10.1  0.5 -0.5   0.000000005  -0.000000121  -0.000000371   0.000000000  -0.000000000   0.000000013  -0.000246564   0.100820744
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000530  -0.000000106

   94   11.1  0.5 -0.5  -0.000000008   0.000000211   0.000000273  -0.000000000   0.000000006  -0.000000170  -0.000092633   0.037959894
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000841  -0.000000169

   95   12.1  0.5 -0.5   0.000000092   0.000000003  -0.000000000   0.000000083  -0.000000040  -0.000000001   0.085524336   0.000209415
                         0.000000117   0.000000004   0.000000000   0.000000171  -0.000000088  -0.000000003   0.050395327   0.000122821

   96   13.1  0.5 -0.5   0.000000050   0.000000002  -0.000000000  -0.000000398  -0.000000279  -0.000000010  -0.403883102  -0.000981849
                        -0.000000039  -0.000000001  -0.000000000   0.000000194   0.000000126   0.000000004   0.685416448   0.001678889

   97   14.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000023   0.000000602   0.000000825  -0.000000000   0.000000007  -0.000000188   0.001184673  -0.484090822

   98   15.1  0.5 -0.5  -0.000000476  -0.000000018   0.000000000  -0.000000356   0.000000187   0.000000007   0.268347505   0.000658233
                        -0.000000606  -0.000000023  -0.000000000  -0.000000732   0.000000414   0.000000015   0.158125248   0.000380427


   Nr   State  S   Sz       89            90            91            92            93            94            95            96

    1    1.1  1.5  1.5   0.007422143   0.000069459   0.000000020  -0.000000000   0.000001178   0.009537050  -0.002455482  -0.000012011
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000001  -0.000000003  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001
                        -0.007661077  -0.000071697  -0.000000002  -0.000000000  -0.000000707  -0.005719500   0.003173190   0.000015521

    3    3.1  1.5  1.5  -0.000059246   0.006324926  -0.000000000  -0.000000007   0.002187832  -0.000000274  -0.000016955   0.003468827
                         0.000052650  -0.005627379   0.000000000   0.000000017   0.009624149  -0.000001186  -0.000033952   0.006941562

    4    4.1  1.5  1.5   0.000009602  -0.001027599   0.000000000   0.000000080   0.024882884  -0.000003071  -0.000045553   0.009313174
                         0.000010869  -0.001154990   0.000000000   0.000000033  -0.005656561   0.000000702   0.000022752  -0.004653968

    5    5.1  1.5  1.5  -0.000025828   0.002751780  -0.000000000  -0.000000024   0.005516620  -0.000000679   0.000025983  -0.005312683
                         0.000022894  -0.002448286   0.000000000   0.000000059   0.024267290  -0.000002999   0.000051993  -0.010631346

    6    6.1  1.5  1.5  -0.000056603   0.006050240   0.000000000  -0.000000010  -0.012093585   0.000001495  -0.000067535   0.013808982
                        -0.000063710   0.006800207  -0.000000000  -0.000000004   0.002749204  -0.000000337   0.000033749  -0.006900609

    7    7.1  1.5  1.5   0.000000006   0.000000025  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002   0.000000009
                         0.001648335   0.000015443   0.000000079  -0.000000000  -0.000004161  -0.033691259  -0.006090778  -0.000029788

    8    8.1  1.5  1.5  -0.000000079  -0.000000358   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000006
                        -0.036019236  -0.000337330  -0.000000204   0.000000000  -0.000002631  -0.021306275  -0.004164147  -0.000020365

    9    9.1  1.5  1.5   0.000170792  -0.018250383   0.000000261   0.029556244   0.006118835  -0.000000752  -0.000111156   0.022727093
                         0.000191963  -0.020512578   0.000000193   0.012078654  -0.001390978   0.000000179   0.000055533  -0.011357155

   10   10.1  1.5  1.5  -0.000191967   0.020513084  -0.000000193  -0.012078745  -0.000327768   0.000000047   0.000052834  -0.010805222
                         0.000170797  -0.018250833   0.000000261   0.029556466  -0.001441835   0.000000174   0.000105753  -0.021622608

   11   11.1  1.5  1.5  -0.000009391   0.001003284  -0.000000000  -0.000000133  -0.000743927   0.000000092   0.000003270  -0.000668549
                        -0.000010542   0.001127641  -0.000000000  -0.000000054   0.000169115  -0.000000021  -0.000001634   0.000334087

   12   12.1  1.5  1.5   0.003877810   0.000036290   0.000000050  -0.000000000  -0.000000054  -0.000434133   0.000111807   0.000000547
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.000005289   0.000567088  -0.000000000   0.000000006   0.000158014  -0.000000019   0.000001412  -0.000288775
                         0.000004726  -0.000504552  -0.000000000  -0.000000015   0.000695094  -0.000000086   0.000002826  -0.000577875

   14   14.1  1.5  1.5  -0.000000002  -0.000000008  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.002376189   0.000022232   0.000000115  -0.000000000  -0.000000151  -0.001226342  -0.000080291  -0.000000393

   15   15.1  1.5  1.5  -0.000028486   0.003045102   0.000000000   0.000000579   0.001015997  -0.000000125   0.000001748  -0.000357465
                        -0.000032077   0.003422566   0.000000000   0.000000237  -0.000230964   0.000000028  -0.000000874   0.000178632

   16   16.1  1.5  1.5  -0.000000002  -0.000000011   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.003333198  -0.000031200  -0.000000079   0.000000000  -0.000000118  -0.000957100  -0.000302136  -0.000001478

   17   17.1  1.5  1.5   0.000033351  -0.003558878  -0.000000000  -0.000000101   0.000219075  -0.000000027  -0.000000014   0.000002916
                        -0.000029621   0.003166382   0.000000000   0.000000248   0.000963697  -0.000000119  -0.000000029   0.000005835

   18    1.1  1.5  0.5   0.000039370  -0.004199885  -0.000000000   0.000000004   0.001724401  -0.000000205   0.000067429  -0.013789288
                        -0.000034953   0.003736691  -0.000000000  -0.000000009   0.007585536  -0.000000941   0.000134957  -0.027594097

   19    2.1  1.5  0.5  -0.000041812   0.004469513   0.000000000   0.000000067   0.017110176  -0.000002108  -0.000114396   0.023389309
                        -0.000047078   0.005023543   0.000000000   0.000000027  -0.003889611   0.000000488   0.000057147  -0.011688075

   20    3.1  1.5  0.5   0.003704823   0.000034651  -0.000000029   0.000000000   0.000002488   0.020133316   0.024371667   0.000119193
                         0.000000006   0.000000029  -0.000000000  -0.000000000  -0.000000006   0.000000001  -0.000000014  -0.000000004

   21    4.1  1.5  0.5   0.000000006   0.000000027   0.000000000   0.000000000  -0.000000007   0.000000001  -0.000000015  -0.000000005
                         0.008925630   0.000083548   0.000000018   0.000000000  -0.000001957  -0.015828860  -0.026879940  -0.000131460

   22    5.1  1.5  0.5  -0.002684410  -0.000025107   0.000000079  -0.000000000  -0.000002630  -0.021319740   0.025381223   0.000124131
                        -0.000000005  -0.000000021   0.000000000   0.000000000  -0.000000009   0.000000001  -0.000000016  -0.000000018

   23    6.1  1.5  0.5   0.000000005   0.000000023  -0.000000000   0.000000000   0.000000008  -0.000000001   0.000000015   0.000000018
                         0.007542852   0.000070604   0.000000084  -0.000000000  -0.000002530  -0.020512985   0.022915857   0.000112073

   24    7.1  1.5  0.5   0.000057537  -0.006148069  -0.000000000  -0.000000004  -0.006402210   0.000000792  -0.000003503   0.000716373
                         0.000064659  -0.006910141   0.000000000  -0.000000002   0.001455398  -0.000000179   0.000001748  -0.000357983

   25    8.1  1.5  0.5   0.000098608  -0.010536966  -0.000000302  -0.034128792   0.008100949  -0.000001001  -0.000009359   0.001913370
                         0.000110831  -0.011843057  -0.000000223  -0.013947303  -0.001841568   0.000000228   0.000004677  -0.000956148

   26    9.1  1.5  0.5  -0.000000046  -0.000000207  -0.000000090  -0.000000046  -0.000000000  -0.000000000   0.000000001  -0.000000005
                         0.010908297   0.000101938   0.018434514  -0.000000182   0.000001765   0.014298217   0.004676065   0.000022870

   27   10.1  1.5  0.5  -0.052499939  -0.000491455  -0.018434175   0.000000182   0.000002792   0.022605606   0.002537079   0.000012407
                         0.000000046   0.000000207  -0.000000090  -0.000000046   0.000000000   0.000000000  -0.000000001   0.000000005

   28   11.1  1.5  0.5   0.000000004   0.000000018  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.005964482   0.000055830   0.000000055  -0.000000000   0.000000133   0.001073423   0.000594005   0.000002905

   29   12.1  1.5  0.5   0.000020569  -0.002194209  -0.000000000  -0.000000016  -0.000078503   0.000000009  -0.000003069   0.000627640
                        -0.000018261   0.001952216   0.000000000   0.000000040  -0.000345331   0.000000043  -0.000006143   0.001255987

   30   13.1  1.5  0.5   0.002224215   0.000020803   0.000000185  -0.000000000  -0.000000162  -0.001311107   0.000376584   0.000001842
                         0.000000004   0.000000017   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001

   31   14.1  1.5  0.5  -0.000004140   0.000441676   0.000000000   0.000000538   0.000378666  -0.000000047  -0.000003953   0.000808204
                        -0.000004617   0.000496415   0.000000000   0.000000220  -0.000086081   0.000000011   0.000001975  -0.000403875

   32   15.1  1.5  0.5   0.000000001   0.000000004  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000001
                         0.001304328   0.000012209   0.000000332  -0.000000000   0.000000060   0.000488587  -0.001493982  -0.000007307

   33   16.1  1.5  0.5  -0.000036935   0.003947304   0.000000000   0.000001187  -0.000740362   0.000000091   0.000003393  -0.000693755
                        -0.000041539   0.004436591   0.000000000   0.000000485   0.000168304  -0.000000021  -0.000001695   0.000346683

   34   17.1  1.5  0.5  -0.000876840  -0.000008201  -0.000000152   0.000000000   0.000000031   0.000249960   0.001556722   0.000007613
                        -0.000000002  -0.000000007  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000001

   35    1.1  1.5 -0.5   0.005621556   0.000052647  -0.000000010   0.000000000  -0.000000963  -0.007779069  -0.030847669  -0.000150865
                        -0.000000012  -0.000000056  -0.000000000   0.000000000   0.000000009  -0.000000001   0.000000018   0.000000010

   36    2.1  1.5 -0.5   0.000000012   0.000000056  -0.000000000   0.000000000   0.000000009  -0.000000001   0.000000016   0.000000017
                         0.006724026   0.000062964   0.000000072  -0.000000000  -0.000002164  -0.017546715   0.026147101   0.000127876

   37    3.1  1.5 -0.5  -0.000025869   0.002767877  -0.000000000  -0.000000011   0.004462989  -0.000000545   0.000053277  -0.010894436
                         0.000023054  -0.002462635   0.000000000   0.000000027   0.019632426  -0.000002428   0.000106623  -0.021801133

   38    4.1  1.5 -0.5   0.000055515  -0.005932944  -0.000000000  -0.000000017  -0.015435059   0.000001910  -0.000117597   0.024044853
                         0.000062437  -0.006668361   0.000000000  -0.000000007   0.003508813  -0.000000427   0.000058760  -0.012015665

   39    5.1  1.5 -0.5   0.000018744  -0.002005526   0.000000000   0.000000030  -0.004725984   0.000000592   0.000055472  -0.011345718
                        -0.000016704   0.001784356  -0.000000000  -0.000000073  -0.020789333   0.000002563   0.000111046  -0.022704210

   40    6.1  1.5 -0.5   0.000046914  -0.005013799  -0.000000000  -0.000000078  -0.020002649   0.000002466   0.000100260  -0.020498872
                         0.000052764  -0.005635284  -0.000000000  -0.000000032   0.004547149  -0.000000569  -0.000050082   0.010243669

   41    7.1  1.5 -0.5   0.000000001   0.000000006  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000002   0.000000002
                        -0.009249259  -0.000086553  -0.000000004  -0.000000000   0.000000812   0.006565552   0.000800838   0.000003915

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000181   0.000000092   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.015851992  -0.000148347  -0.036868709   0.000000364  -0.000001026  -0.008307632   0.002138972   0.000010463

   43    9.1  1.5 -0.5   0.000067913  -0.007250880  -0.000000151  -0.017064544   0.013942496  -0.000001722   0.000020455  -0.004182870
                         0.000076020  -0.008149582  -0.000000112  -0.006973712  -0.003169511   0.000000391  -0.000010228   0.002090260

   44   10.1  1.5 -0.5   0.000367304  -0.039222848  -0.000000112  -0.006973583   0.005011025  -0.000000619   0.000005551  -0.001134106
                        -0.000326520   0.034897161   0.000000151   0.017064230   0.022043209  -0.000002722   0.000011096  -0.002269488

   45   11.1  1.5 -0.5   0.000037097  -0.003964643  -0.000000000  -0.000000051   0.001046718  -0.000000129   0.000002599  -0.000531354
                         0.000041723  -0.004456080  -0.000000000  -0.000000021  -0.000237948   0.000000029  -0.000001299   0.000265527

   46   12.1  1.5 -0.5   0.002936954   0.000027505   0.000000043  -0.000000000   0.000000044   0.000354141   0.001404079   0.000006867
                        -0.000000006  -0.000000029   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000

   47   13.1  1.5 -0.5  -0.000015530   0.001661713   0.000000000   0.000000070  -0.000290635   0.000000036   0.000000823  -0.000168338
                         0.000013841  -0.001478459  -0.000000000  -0.000000171  -0.001278488   0.000000158   0.000001648  -0.000336865

   48   14.1  1.5 -0.5  -0.000000005  -0.000000024  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000001
                         0.000664458   0.000006202   0.000000581  -0.000000000  -0.000000048  -0.000388327   0.000903498   0.000004419

   49   15.1  1.5 -0.5   0.000008113  -0.000866998  -0.000000000  -0.000000308   0.000476432  -0.000000059  -0.000006536   0.001336408
                         0.000009124  -0.000974466  -0.000000000  -0.000000126  -0.000108306   0.000000014   0.000003265  -0.000667828

   50   16.1  1.5 -0.5   0.000000004   0.000000017  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.005938396   0.000055585   0.000001282  -0.000000000   0.000000094   0.000759251  -0.000775555  -0.000003793

   51   17.1  1.5 -0.5   0.000006122  -0.000655088  -0.000000000  -0.000000057   0.000055409  -0.000000006   0.000003403  -0.000695874
                        -0.000005456   0.000582845   0.000000000   0.000000140   0.000243741  -0.000000030   0.000006811  -0.001392531

   52    1.1  1.5 -1.5   0.000051893  -0.005545099   0.000000000  -0.000000008  -0.002114095   0.000000261   0.000005369  -0.001097632
                        -0.000046170   0.004933567   0.000000000   0.000000019  -0.009299781   0.000001149   0.000010744  -0.002196496

   53    2.1  1.5 -1.5   0.000047655  -0.005092388   0.000000000  -0.000000002   0.005577206  -0.000000689  -0.000013883   0.002838506
                         0.000053567  -0.005723607   0.000000000  -0.000000001  -0.001267852   0.000000157   0.000006939  -0.001418456

   54    3.1  1.5 -1.5   0.008465936   0.000079259  -0.000000018   0.000000000   0.000001217   0.009869694  -0.007760029  -0.000037950
                        -0.000000010  -0.000000046  -0.000000000  -0.000000000   0.000000004  -0.000000000   0.000000007   0.000000010

   55    4.1  1.5 -1.5   0.000000011   0.000000051   0.000000000   0.000000000  -0.000000004   0.000000000  -0.000000006  -0.000000010
                         0.001545950   0.000014503  -0.000000086   0.000000000   0.000003150   0.025517731  -0.010411274  -0.000050919

   56    5.1  1.5 -1.5   0.003683259   0.000034514  -0.000000064   0.000000000   0.000003074   0.024886431   0.011884869   0.000058123
                        -0.000000014  -0.000000064   0.000000000  -0.000000000  -0.000000003   0.000000000  -0.000000007   0.000000001

   57    6.1  1.5 -1.5  -0.000000013  -0.000000060   0.000000000  -0.000000000  -0.000000003   0.000000000  -0.000000007   0.000000000
                        -0.009102100  -0.000085222   0.000000010   0.000000000  -0.000001532  -0.012402134  -0.015437175  -0.000075499

   58    7.1  1.5 -1.5  -0.000010247   0.001095660   0.000000000   0.000000073   0.032853065  -0.000004057   0.000026642  -0.005448370
                        -0.000011554   0.001231479   0.000000000   0.000000030  -0.007468402   0.000000922  -0.000013323   0.002722654

   59    8.1  1.5 -1.5   0.000223959  -0.023942260  -0.000000000  -0.000000188   0.020776203  -0.000002566   0.000018215  -0.003724944
                         0.000252258  -0.026910101  -0.000000000  -0.000000077  -0.004723000   0.000000583  -0.000009109   0.001861426

   60    9.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000157   0.000000080  -0.000000008   0.000000001  -0.000000015  -0.000000012
                         0.027456189   0.000256943  -0.031929069   0.000000315   0.000000773   0.006274947  -0.025406805  -0.000124256

   61   10.1  1.5 -1.5   0.027456867   0.000256949  -0.031929309   0.000000315  -0.000000180  -0.001478621   0.024172092   0.000118216
                         0.000000000   0.000000000  -0.000000157  -0.000000080  -0.000000008   0.000000001  -0.000000015  -0.000000012

   62   11.1  1.5 -1.5   0.000000002   0.000000009  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.001509355  -0.000014119   0.000000143  -0.000000000  -0.000000094  -0.000762907   0.000747376   0.000003655

   63   12.1  1.5 -1.5   0.000027112  -0.002897120  -0.000000000  -0.000000019   0.000096235  -0.000000012  -0.000000244   0.000049979
                        -0.000024122   0.002577616   0.000000000   0.000000046   0.000423333  -0.000000052  -0.000000489   0.000100014

   64   13.1  1.5 -1.5   0.000759053   0.000007093   0.000000017  -0.000000000   0.000000088   0.000712828   0.000646011   0.000003159
                         0.000000003   0.000000015   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   65   14.1  1.5 -1.5  -0.000014783   0.001579476   0.000000000   0.000000106   0.001195832  -0.000000148   0.000000351  -0.000071823
                        -0.000016604   0.001775255   0.000000000   0.000000044  -0.000271845   0.000000034  -0.000000176   0.000035891

   66   15.1  1.5 -1.5  -0.000000009  -0.000000040   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.004581113  -0.000042900  -0.000000626   0.000000000   0.000000129   0.001041918   0.000399614   0.000001954

   67   16.1  1.5 -1.5   0.000020731  -0.002215606  -0.000000000  -0.000000073   0.000933288  -0.000000115   0.000001322  -0.000270269
                         0.000023317  -0.002490241  -0.000000000  -0.000000030  -0.000212162   0.000000026  -0.000000661   0.000135059

   68   17.1  1.5 -1.5  -0.004763569  -0.000044606  -0.000000268   0.000000000   0.000000122   0.000988284  -0.000006523  -0.000000032
                         0.000000009   0.000000038  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   69    1.1  0.5  0.5  -0.000000016   0.000001693   0.000000000   0.000001785   0.528313414  -0.000065285   0.001542935  -0.315491337
                        -0.000000018   0.000001903   0.000000000   0.000000729  -0.120100123   0.000014761  -0.000771062   0.157656958

   70    2.1  0.5  0.5  -0.000000175  -0.000000002   0.000001904  -0.000000000  -0.000023263  -0.188866979   0.618544507   0.003025083
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000195   0.000000021  -0.000000366  -0.000000320

   71    3.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000198  -0.000000022   0.000000377   0.000000303
                        -0.000000892  -0.000000008   0.000001400  -0.000000000  -0.000010998  -0.089567134   0.638395185   0.003122161

   72    4.1  0.5  0.5  -0.000000621  -0.000000006  -0.000001507   0.000000000   0.000059784   0.483960861   0.141043617   0.000689762
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000035   0.000000006  -0.000000090   0.000000039

   73    5.1  0.5  0.5  -0.000000008   0.000000816   0.000000000   0.000000224   0.096680078  -0.000011942  -0.000500770   0.102387052
                        -0.000000009   0.000000917   0.000000000   0.000000092  -0.021978028   0.000002729   0.000250249  -0.051164767

   74    6.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000010  -0.000000001   0.000000004  -0.000000110
                        -0.000000541  -0.000000005  -0.000001365   0.000000000   0.000024430   0.197929823   0.078415412   0.000383532

   75    7.1  0.5  0.5  -0.000000001   0.000000155  -0.000000000  -0.000001185   0.132219290  -0.000016402  -0.000327847   0.067085966
                         0.000000001  -0.000000138   0.000000000   0.000002900   0.581625004  -0.000071781  -0.000656680   0.134247515

   76    8.1  0.5  0.5   0.000404411  -0.043233468   0.000000000   0.000000213   0.052778687  -0.000006502  -0.000370061   0.075662211
                         0.000455512  -0.048592613   0.000000000   0.000000087  -0.011998038   0.000001508   0.000184865  -0.037809822

   77    9.1  0.5  0.5  -0.106890052  -0.001000535  -0.000000251   0.000000000   0.000007594   0.061500431   0.020112672   0.000098367
                         0.000000072   0.000000323  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000005   0.000000022

   78   10.1  0.5  0.5   0.000264981  -0.028358878  -0.000000000  -0.000000035   0.008787104  -0.000001072   0.000101945  -0.020848615
                        -0.000236219   0.025231469   0.000000000   0.000000087   0.038653951  -0.000004783   0.000204044  -0.041720705

   79   11.1  0.5  0.5  -0.000705521   0.075320499   0.000000000   0.000000052   0.001075123  -0.000000111   0.000194381  -0.039750374
                         0.000626982  -0.067013744  -0.000000000  -0.000000128   0.004729391  -0.000000596   0.000389044  -0.079545485

   80   12.1  0.5  0.5   0.000000072   0.000000323  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000005   0.000000022
                        -0.041847829  -0.000391397   0.000000183  -0.000000000  -0.000012008  -0.097232700  -0.010912512  -0.000053365

   81   13.1  0.5  0.5   0.099658500   0.000935562  -0.576172055   0.000005688  -0.000000000  -0.000000589   0.000001196   0.000000006
                        -0.000000924  -0.000004167  -0.000002827  -0.000001444  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   82   14.1  0.5  0.5   0.003975667  -0.424828486   0.000004718   0.533352901  -0.000002404   0.000000000   0.000000008  -0.000001628
                         0.004468464  -0.477487369   0.000003489   0.217963597   0.000000546  -0.000000000  -0.000000004   0.000000814

   83   15.1  0.5  0.5   0.000000924   0.000004166  -0.000002827  -0.000001444  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.738776730   0.006916614   0.576172212  -0.000005688   0.000000001   0.000004693   0.000000269   0.000000001

   84    1.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000078  -0.000000012   0.000000186  -0.000000025
                        -0.000002548  -0.000000024  -0.000001928   0.000000000   0.000066933   0.541792491   0.352690374   0.001724873

   85    2.1  0.5 -0.5  -0.000000001   0.000000131  -0.000000000  -0.000000720   0.041866461  -0.000005347  -0.001351965   0.276497007
                         0.000000001  -0.000000116   0.000000000   0.000001763   0.184168226  -0.000022641  -0.002706163   0.553305261

   86    3.1  0.5 -0.5   0.000000006  -0.000000593   0.000000000   0.000001296   0.087338829  -0.000010681  -0.002792995   0.571062244
                         0.000000006  -0.000000667   0.000000000   0.000000530  -0.019854486   0.000002631   0.001395375  -0.285370506

   87    4.1  0.5 -0.5  -0.000000004   0.000000464   0.000000000   0.000000570  -0.107280476   0.000013219  -0.000308367   0.063048228
                         0.000000004  -0.000000413  -0.000000000  -0.000001395  -0.471920559   0.000058305  -0.000616993   0.126167441

   88    5.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000014   0.000000002  -0.000000034   0.000000004
                        -0.000001227  -0.000000011  -0.000000242   0.000000000   0.000012250   0.099146715  -0.114459346  -0.000559817

   89    6.1  0.5 -0.5   0.000000003  -0.000000360  -0.000000000  -0.000001264  -0.193005593   0.000023820  -0.000343031   0.070144748
                         0.000000004  -0.000000405   0.000000000  -0.000000517   0.043875459  -0.000005426   0.000171542  -0.035052692

   90    7.1  0.5 -0.5   0.000000208   0.000000002  -0.000003133   0.000000000   0.000073631   0.596464236  -0.150076388  -0.000733971
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000082  -0.000000006   0.000000118   0.000000276

   91    8.1  0.5 -0.5   0.000000143   0.000000646   0.000000000   0.000000000  -0.000000029   0.000000003  -0.000000052  -0.000000056
                         0.065041331   0.000609130  -0.000000230   0.000000000   0.000006675   0.054125250  -0.084583407  -0.000413667

   92    9.1  0.5 -0.5  -0.000747717   0.079857835  -0.000000000   0.000000095  -0.013632911   0.000001683  -0.000043991   0.008990618
                         0.000664823  -0.071050753  -0.000000000  -0.000000232  -0.059970382   0.000007405  -0.000087983   0.017991341

   93   10.1  0.5 -0.5  -0.037958569  -0.000354985  -0.000000094   0.000000000   0.000004901   0.039640145   0.046639919   0.000228094
                        -0.000000076  -0.000000345   0.000000000  -0.000000000  -0.000000015   0.000000002  -0.000000031  -0.000000018

   94   11.1  0.5 -0.5   0.100816762   0.000943857   0.000000138  -0.000000000   0.000000606   0.004850055   0.088924554   0.000434901
                        -0.000000121  -0.000000547   0.000000000   0.000000000  -0.000000024   0.000000003  -0.000000049  -0.000000029

   95   12.1  0.5 -0.5   0.000260406  -0.027816693   0.000000000   0.000000170   0.094813680  -0.000011709   0.000047727  -0.009761544
                         0.000292198  -0.031264555   0.000000000   0.000000069  -0.021553747   0.000002662  -0.000023874   0.004878028

   96   13.1  0.5 -0.5   0.000701730  -0.074455692   0.000003489   0.217963856   0.000000131  -0.000000000  -0.000000003   0.000000535
                        -0.000618764   0.066243236  -0.000004718  -0.533353537   0.000000575  -0.000000000  -0.000000005   0.000001070

   97   14.1  0.5 -0.5  -0.000000000  -0.000000000   0.000002827   0.000001444   0.000000000   0.000000000   0.000000000   0.000000000
                         0.639119260   0.005981061  -0.576171369   0.000005688  -0.000000000  -0.000002465   0.000001820   0.000000009

   98   15.1  0.5 -0.5  -0.004594424   0.491071038   0.000004718   0.533353681  -0.000004576   0.000000001  -0.000000001   0.000000241
                        -0.005170186   0.551942291   0.000003489   0.217963915   0.000001040  -0.000000000   0.000000001  -0.000000120


   Nr   State  S   Sz       97            98

    1    1.1  1.5  1.5   0.000211089   0.030250512
                        -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000   0.000000000
                        -0.000217547  -0.031176047

    3    3.1  1.5  1.5  -0.005239350   0.000036562
                        -0.028973071   0.000202174

    4    4.1  1.5  1.5   0.015107776  -0.000105423
                        -0.002732018   0.000019062

    5    5.1  1.5  1.5   0.002089514  -0.000014582
                         0.011554799  -0.000080630

    6    6.1  1.5  1.5   0.022773875  -0.000158916
                        -0.004118319   0.000028736

    7    7.1  1.5  1.5  -0.000000001  -0.000000000
                         0.000043952   0.006298811

    8    8.1  1.5  1.5  -0.000000000  -0.000000000
                         0.000044513   0.006379080

    9    9.1  1.5  1.5   0.004303109  -0.000030028
                        -0.000778155   0.000005426

   10   10.1  1.5  1.5   0.001929225  -0.000013466
                         0.010668427  -0.000074444

   11   11.1  1.5  1.5  -0.001092398   0.000007623
                         0.000197544  -0.000001378

   12   12.1  1.5  1.5  -0.000009608  -0.001376872
                        -0.000000000   0.000000000

   13   13.1  1.5  1.5   0.000208499  -0.000001455
                         0.001152981  -0.000008046

   14   14.1  1.5  1.5  -0.000000000  -0.000000000
                        -0.000005964  -0.000854614

   15   15.1  1.5  1.5  -0.000594938   0.000004151
                         0.000107586  -0.000000751

   16   16.1  1.5  1.5  -0.000000000  -0.000000000
                         0.000008154   0.001168535

   17   17.1  1.5  1.5  -0.000149773   0.000001045
                        -0.000828231   0.000005779

   18    1.1  1.5  0.5   0.000009148  -0.000000068
                         0.000050597  -0.000000353

   19    2.1  1.5  0.5  -0.004162553   0.000029045
                         0.000752734  -0.000005257

   20    3.1  1.5  0.5   0.000004030   0.000577319
                         0.000000003  -0.000000001

   21    4.1  1.5  0.5   0.000000003  -0.000000001
                         0.000052152   0.007473845

   22    5.1  1.5  0.5   0.000036267   0.005197378
                         0.000000005  -0.000000002

   23    6.1  1.5  0.5  -0.000000004   0.000000001
                         0.000085616   0.012269478

   24    7.1  1.5  0.5  -0.027280464   0.000190364
                         0.004933268  -0.000034425

   25    8.1  1.5  0.5   0.025931350  -0.000180950
                        -0.004689301   0.000032722

   26    9.1  1.5  0.5   0.000000000   0.000000000
                        -0.000130491  -0.018700445

   27   10.1  1.5  0.5   0.000053391   0.007651250
                        -0.000000000  -0.000000000

   28   11.1  1.5  0.5  -0.000000000   0.000000000
                        -0.000003920  -0.000561780

   29   12.1  1.5  0.5  -0.000000414   0.000000003
                        -0.000002288   0.000000016

   30   13.1  1.5  0.5   0.000001292   0.000185228
                         0.000000000  -0.000000000

   31   14.1  1.5  0.5  -0.000977162   0.000006819
                         0.000176705  -0.000001233

   32   15.1  1.5  0.5   0.000000000  -0.000000000
                        -0.000002335  -0.000334681

   33   16.1  1.5  0.5  -0.000789258   0.000005507
                         0.000142726  -0.000000996

   34   17.1  1.5  0.5   0.000001043   0.000149477
                         0.000000000  -0.000000000

   35    1.1  1.5 -0.5  -0.000000360  -0.000051417
                        -0.000000004   0.000000002

   36    2.1  1.5 -0.5  -0.000000004   0.000000002
                         0.000029517   0.004230066

   37    3.1  1.5 -0.5   0.000102732  -0.000000720
                         0.000568106  -0.000003965

   38    4.1  1.5 -0.5   0.007354560  -0.000051320
                        -0.001329965   0.000009277

   39    5.1  1.5 -0.5   0.000924867  -0.000006458
                         0.005114427  -0.000035688

   40    6.1  1.5 -0.5   0.012073654  -0.000084249
                        -0.002183340   0.000015240

   41    7.1  1.5 -0.5  -0.000000001   0.000000000
                         0.000193451   0.027722930

   42    8.1  1.5 -0.5   0.000000000  -0.000000000
                        -0.000183884  -0.026351935

   43    9.1  1.5 -0.5  -0.018401981   0.000128409
                         0.003327726  -0.000023221

   44   10.1  1.5 -0.5   0.001361532  -0.000009501
                         0.007529133  -0.000052539

   45   11.1  1.5 -0.5  -0.000552813   0.000003858
                         0.000099968  -0.000000698

   46   12.1  1.5 -0.5   0.000000016   0.000002325
                         0.000000000  -0.000000000

   47   13.1  1.5 -0.5   0.000032961  -0.000000230
                         0.000182271  -0.000001272

   48   14.1  1.5 -0.5  -0.000000000   0.000000000
                         0.000006929   0.000993010

   49   15.1  1.5 -0.5  -0.000329340   0.000002298
                         0.000059556  -0.000000416

   50   16.1  1.5 -0.5   0.000000000  -0.000000000
                         0.000005597   0.000802060

   51   17.1  1.5 -0.5   0.000026599  -0.000000186
                         0.000147091  -0.000001026

   52    1.1  1.5 -1.5  -0.005383049   0.000037563
                        -0.029767705   0.000207720

   53    2.1  1.5 -1.5   0.030678469  -0.000214075
                        -0.005547747   0.000038712

   54    3.1  1.5 -1.5  -0.000205453  -0.029442990
                        -0.000000002   0.000000001

   55    4.1  1.5 -1.5   0.000000002  -0.000000001
                         0.000107133   0.015352811

   56    5.1  1.5 -1.5   0.000081938   0.011742208
                         0.000000001  -0.000000001

   57    6.1  1.5 -1.5   0.000000001  -0.000000001
                         0.000161493   0.023143248

   58    7.1  1.5 -1.5  -0.006198280   0.000043250
                         0.001120867  -0.000007822

   59    8.1  1.5 -1.5  -0.006277268   0.000043802
                         0.001135151  -0.000007921

   60    9.1  1.5 -1.5   0.000000004  -0.000000001
                         0.000030514   0.004372902

   61   10.1  1.5 -1.5   0.000075652   0.010841459
                         0.000000004  -0.000000001

   62   11.1  1.5 -1.5  -0.000000000   0.000000000
                        -0.000007746  -0.001110116

   63   12.1  1.5 -1.5   0.000245013  -0.000001710
                         0.001354897  -0.000009455

   64   13.1  1.5 -1.5   0.000008176   0.001171681
                         0.000000000  -0.000000000

   65   14.1  1.5 -1.5   0.000840974  -0.000005868
                        -0.000152078   0.000001061

   66   15.1  1.5 -1.5  -0.000000000   0.000000000
                        -0.000004219  -0.000604588

   67   16.1  1.5 -1.5  -0.001149885   0.000008024
                         0.000207940  -0.000001451

   68   17.1  1.5 -1.5  -0.000005873  -0.000841664
                        -0.000000000   0.000000000

   69    1.1  0.5  0.5  -0.020885447   0.000145722
                         0.003776843  -0.000026322

   70    2.1  0.5  0.5   0.000071626   0.010263938
                         0.000000096  -0.000000037

   71    3.1  0.5  0.5  -0.000000096   0.000000038
                         0.000369395   0.052935809

   72    4.1  0.5  0.5   0.002828159   0.405293279
                         0.000000011  -0.000000009

   73    5.1  0.5  0.5   0.618796579  -0.004317973
                        -0.111900201   0.000780836

   74    6.1  0.5  0.5   0.000000011   0.000000001
                        -0.004261944  -0.610768545

   75    7.1  0.5  0.5  -0.035629056   0.000248666
                        -0.197025080   0.001374820

   76    8.1  0.5  0.5  -0.023546778   0.000164307
                         0.004258081  -0.000029727

   77    9.1  0.5  0.5  -0.000561266  -0.080433834
                        -0.000000001  -0.000000001

   78   10.1  0.5  0.5   0.014792055  -0.000103227
                         0.081798562  -0.000570792

   79   11.1  0.5  0.5  -0.009289933   0.000064814
                        -0.051372345   0.000358477

   80   12.1  0.5  0.5  -0.000000001  -0.000000001
                        -0.000229646  -0.032909516

   81   13.1  0.5  0.5   0.000000006   0.000000926
                        -0.000000000  -0.000000000

   82   14.1  0.5  0.5   0.000000793  -0.000000006
                        -0.000000143   0.000000001

   83   15.1  0.5  0.5  -0.000000000   0.000000000
                         0.000000002   0.000000273

   84    1.1  0.5 -0.5  -0.000000029   0.000000019
                        -0.000148080  -0.021224194

   85    2.1  0.5 -0.5  -0.001826421   0.000012840
                        -0.010100129   0.000070466

   86    3.1  0.5 -0.5  -0.052090945   0.000363482
                         0.009419837  -0.000065827

   87    4.1  0.5 -0.5  -0.072121528   0.000503279
                        -0.398824683   0.002783019

   88    5.1  0.5 -0.5   0.000000005  -0.000000003
                         0.004388006   0.628832936

   89    6.1  0.5 -0.5   0.601020502  -0.004193920
                        -0.108685658   0.000758419

   90    7.1  0.5 -0.5  -0.001397127  -0.200220658
                        -0.000000049   0.000000012

   91    8.1  0.5 -0.5   0.000000015  -0.000000005
                        -0.000166974  -0.023928686

   92    9.1  0.5 -0.5   0.014313122  -0.000099878
                         0.079150087  -0.000552308

   93   10.1  0.5 -0.5   0.000580051   0.083125264
                         0.000000007  -0.000000003

   94   11.1  0.5 -0.5  -0.000364290  -0.052205562
                         0.000000011  -0.000000005

   95   12.1  0.5 -0.5   0.032384271  -0.000225981
                        -0.005856215   0.000040864

   96   13.1  0.5 -0.5  -0.000000165   0.000000001
                        -0.000000911   0.000000006

   97   14.1  0.5 -0.5   0.000000000  -0.000000000
                         0.000000006   0.000000806

   98   15.1  0.5 -0.5  -0.000000269   0.000000002
                         0.000000049  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.001%   0.561%   0.064%   0.001%   0.000%   0.403%   0.002%   4.098%  30.585%   0.000%
    2    2.1  1.5  1.5   0.003%   2.839%   1.571%   0.035%   0.000%   0.271%   0.001%   2.733%  28.104%   0.000%
    3    3.1  1.5  1.5   0.180%   0.000%   0.466%  20.941%   1.034%   0.000%  10.251%   0.004%   0.000%   2.105%
    4    4.1  1.5  1.5   1.220%   0.001%   0.481%  21.647%   0.016%   0.000%  12.637%   0.005%   0.000%   0.697%
    5    5.1  1.5  1.5  20.662%   0.020%   0.328%  14.739%   0.134%   0.000%   5.737%   0.002%   0.000%   0.777%
    6    6.1  1.5  1.5  15.259%   0.014%   0.336%  15.113%   0.489%   0.000%   8.363%   0.003%   0.000%   1.098%
    7    7.1  1.5  1.5   0.001%   0.879%   0.508%   0.011%   0.001%  22.506%   0.000%   0.012%   0.046%   0.000%
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
   18    1.1  1.5  0.5   0.020%   0.000%   0.001%   0.024%  11.164%   0.000%  22.582%   0.009%   0.000%   1.913%
   19    2.1  1.5  0.5   0.038%   0.000%   0.001%   0.038%  10.223%   0.000%  22.190%   0.009%   0.000%   3.371%
   20    3.1  1.5  0.5   0.009%   9.869%   3.841%   0.085%   0.000%  11.025%   0.002%   5.597%   6.016%   0.000%
   21    4.1  1.5  0.5   0.003%   3.632%   1.017%   0.023%   0.001%  22.002%   0.000%   0.006%   8.041%   0.000%
   22    5.1  1.5  0.5   0.008%   8.440%   4.008%   0.089%   0.000%   6.884%   0.002%   5.114%   4.484%   0.000%
   23    6.1  1.5  0.5   0.003%   3.607%   1.512%   0.034%   0.000%  12.841%   0.000%   0.554%  12.201%   0.000%
   24    7.1  1.5  0.5  32.698%   0.031%   0.285%  12.800%   1.004%   0.000%   0.083%   0.000%   0.000%   0.562%
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
   35    1.1  1.5 -0.5   0.000%   0.020%   0.024%   0.001%   0.000%  11.164%   0.009%  22.582%   1.913%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.038%   0.038%   0.001%   0.000%  10.223%   0.009%  22.190%   3.371%   0.000%
   37    3.1  1.5 -0.5   9.869%   0.009%   0.085%   3.841%  11.025%   0.000%   5.597%   0.002%   0.000%   6.016%
   38    4.1  1.5 -0.5   3.632%   0.003%   0.023%   1.017%  22.002%   0.001%   0.006%   0.000%   0.000%   8.041%
   39    5.1  1.5 -0.5   8.440%   0.008%   0.089%   4.008%   6.884%   0.000%   5.114%   0.002%   0.000%   4.484%
   40    6.1  1.5 -0.5   3.607%   0.003%   0.034%   1.512%  12.841%   0.000%   0.554%   0.000%   0.000%  12.201%
   41    7.1  1.5 -0.5   0.031%  32.698%  12.800%   0.285%   0.000%   1.004%   0.000%   0.083%   0.562%   0.000%
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
   52    1.1  1.5 -1.5   0.561%   0.001%   0.001%   0.064%   0.403%   0.000%   4.098%   0.002%   0.000%  30.585%
   53    2.1  1.5 -1.5   2.839%   0.003%   0.035%   1.571%   0.271%   0.000%   2.733%   0.001%   0.000%  28.104%
   54    3.1  1.5 -1.5   0.000%   0.180%  20.941%   0.466%   0.000%   1.034%   0.004%  10.251%   2.105%   0.000%
   55    4.1  1.5 -1.5   0.001%   1.220%  21.647%   0.481%   0.000%   0.016%   0.005%  12.637%   0.697%   0.000%
   56    5.1  1.5 -1.5   0.020%  20.662%  14.739%   0.328%   0.000%   0.134%   0.002%   5.737%   0.777%   0.000%
   57    6.1  1.5 -1.5   0.014%  15.259%  15.113%   0.336%   0.000%   0.489%   0.003%   8.363%   1.098%   0.000%
   58    7.1  1.5 -1.5   0.879%   0.001%   0.011%   0.508%  22.506%   0.001%   0.012%   0.000%   0.000%   0.046%
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

    1    1.1  1.5  1.5   2.145%   0.000%   0.001%   2.494%   0.000%  23.302%   0.002%   0.464%   0.002%  13.139%
    2    2.1  1.5  1.5  20.917%   0.001%   0.000%   0.675%   0.000%   7.038%   0.000%   0.024%   0.003%  14.511%
    3    3.1  1.5  1.5   0.000%   6.764%   4.164%   0.002%   0.200%   0.000%  18.372%   0.068%   8.061%   0.002%
    4    4.1  1.5  1.5   0.001%   9.399%   1.398%   0.001%   2.472%   0.000%  13.511%   0.050%   5.966%   0.001%
    5    5.1  1.5  1.5   0.000%   0.862%  13.353%   0.008%   0.006%   0.000%   3.534%   0.013%   0.078%   0.000%
    6    6.1  1.5  1.5   0.001%  12.994%   1.709%   0.001%   2.535%   0.000%   3.263%   0.012%  15.590%   0.003%
    7    7.1  1.5  1.5   3.757%   0.000%   0.019%  32.516%   0.000%   0.895%   0.037%   9.874%   0.000%   1.943%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.066%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   18    1.1  1.5  0.5   0.000%   4.819%  22.662%   0.013%   0.857%   0.000%   0.055%   0.000%   6.048%   0.001%
   19    2.1  1.5  0.5   0.000%   1.902%   6.450%   0.004%   0.001%   0.000%  19.729%   0.073%   2.150%   0.000%
   20    3.1  1.5  0.5  18.329%   0.001%   0.000%   0.106%   0.000%   3.025%   0.021%   5.762%   0.001%   3.842%
   21    4.1  1.5  0.5   9.874%   0.001%   0.003%   5.306%   0.000%   9.669%   0.019%   5.112%   0.002%   9.366%
   22    5.1  1.5  0.5   0.257%   0.000%   0.003%   5.742%   0.000%  18.879%   0.052%  14.106%   0.000%   1.621%
   23    6.1  1.5  0.5   1.420%   0.000%   0.000%   0.019%   0.000%  29.677%   0.019%   5.165%   0.000%   0.073%
   24    7.1  1.5  0.5   0.000%   5.982%   2.771%   0.002%   0.872%   0.000%   0.089%   0.000%   9.577%   0.002%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.109%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.074%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    1.1  1.5 -0.5   4.819%   0.000%   0.013%  22.662%   0.000%   0.857%   0.000%   0.055%   0.001%   6.048%
   36    2.1  1.5 -0.5   1.902%   0.000%   0.004%   6.450%   0.000%   0.001%   0.073%  19.729%   0.000%   2.150%
   37    3.1  1.5 -0.5   0.001%  18.329%   0.106%   0.000%   3.025%   0.000%   5.762%   0.021%   3.842%   0.001%
   38    4.1  1.5 -0.5   0.001%   9.874%   5.306%   0.003%   9.669%   0.000%   5.112%   0.019%   9.366%   0.002%
   39    5.1  1.5 -0.5   0.000%   0.257%   5.742%   0.003%  18.879%   0.000%  14.106%   0.052%   1.621%   0.000%
   40    6.1  1.5 -0.5   0.000%   1.420%   0.019%   0.000%  29.677%   0.000%   5.165%   0.019%   0.073%   0.000%
   41    7.1  1.5 -0.5   5.982%   0.000%   0.002%   2.771%   0.000%   0.872%   0.000%   0.089%   0.002%   9.577%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.109%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.074%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.1  1.5 -1.5   0.000%   2.145%   2.494%   0.001%  23.302%   0.000%   0.464%   0.002%  13.139%   0.002%
   53    2.1  1.5 -1.5   0.001%  20.917%   0.675%   0.000%   7.038%   0.000%   0.024%   0.000%  14.511%   0.003%
   54    3.1  1.5 -1.5   6.764%   0.000%   0.002%   4.164%   0.000%   0.200%   0.068%  18.372%   0.002%   8.061%
   55    4.1  1.5 -1.5   9.399%   0.001%   0.001%   1.398%   0.000%   2.472%   0.050%  13.511%   0.001%   5.966%
   56    5.1  1.5 -1.5   0.862%   0.000%   0.008%  13.353%   0.000%   0.006%   0.013%   3.534%   0.000%   0.078%
   57    6.1  1.5 -1.5  12.994%   0.001%   0.001%   1.709%   0.000%   2.535%   0.012%   3.263%   0.003%  15.590%
   58    7.1  1.5 -1.5   0.000%   3.757%  32.516%   0.019%   0.895%   0.000%   9.874%   0.037%   1.943%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.066%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   69    1.1  0.5  0.5   0.000%   0.013%   0.212%   0.000%   0.007%   0.000%   0.094%   0.000%   0.006%   0.000%
   70    2.1  0.5  0.5   0.014%   0.000%   0.000%   0.001%   0.000%   0.290%   0.000%   0.023%   0.000%   0.011%
   71    3.1  0.5  0.5   0.063%   0.000%   0.000%   0.009%   0.000%   0.204%   0.000%   0.050%   0.000%   0.010%
   72    4.1  0.5  0.5   0.025%   0.000%   0.000%   0.276%   0.000%   0.001%   0.000%   0.025%   0.000%   0.006%
   73    5.1  0.5  0.5   0.000%   0.260%   0.030%   0.000%   0.037%   0.000%   0.000%   0.000%   0.034%   0.000%
   74    6.1  0.5  0.5   0.197%   0.000%   0.000%   0.043%   0.000%   0.029%   0.000%   0.058%   0.000%   0.031%
   75    7.1  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.004%   0.000%   0.320%   0.001%   0.001%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.282%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.766%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.716%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.744%   0.001%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.126%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.013%   0.000%   0.000%   0.212%   0.000%   0.007%   0.000%   0.094%   0.000%   0.006%
   85    2.1  0.5 -0.5   0.000%   0.014%   0.001%   0.000%   0.290%   0.000%   0.023%   0.000%   0.011%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.063%   0.009%   0.000%   0.204%   0.000%   0.050%   0.000%   0.010%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.025%   0.276%   0.000%   0.001%   0.000%   0.025%   0.000%   0.006%   0.000%
   88    5.1  0.5 -0.5   0.260%   0.000%   0.000%   0.030%   0.000%   0.037%   0.000%   0.000%   0.000%   0.034%
   89    6.1  0.5 -0.5   0.000%   0.197%   0.043%   0.000%   0.029%   0.000%   0.058%   0.000%   0.031%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.004%   0.001%   0.320%   0.000%   0.001%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.282%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.766%   0.001%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.716%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   3.744%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.126%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   2.814%   1.392%   0.000%   2.363%   4.162%   0.018%   0.005%   7.443%   0.000%   0.000%
    2    2.1  1.5  1.5   2.827%   1.399%   0.000%   1.023%   4.692%   0.021%   0.004%   6.790%   0.000%   0.000%
    3    3.1  1.5  1.5   3.481%   7.035%   1.374%   0.000%   0.048%  10.919%   0.089%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.003%   0.006%  13.405%   0.000%   0.010%   2.250%  10.135%   0.006%   0.000%   0.000%
    5    5.1  1.5  1.5   1.593%   3.219%  12.607%   0.000%   0.025%   5.576%  11.243%   0.007%   0.000%   0.000%
    6    6.1  1.5  1.5   0.002%   0.005%   2.468%   0.000%   0.063%  14.244%   1.197%   0.001%   0.000%   0.000%
    7    7.1  1.5  1.5   0.004%   0.002%   0.000%  21.652%   0.953%   0.004%   0.001%   1.489%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.093%   0.043%   0.000%   0.000%   0.024%   0.000%   0.000%
    9    9.1  1.5  1.5   0.025%   0.050%   0.009%   0.000%   0.000%   0.008%   0.014%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.048%   0.097%   0.000%   0.000%   0.000%   0.008%   0.014%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%  20.415%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.006%   0.014%   0.000%
   13   13.1  1.5  1.5   0.001%   0.001%   0.001%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%  16.918%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.006%   1.579%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.013%   0.005%   0.000%   0.000%   0.311%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.004%   0.000%   0.000%   0.001%   1.617%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.013%   0.003%   0.000%   0.000%   0.358%
   18    1.1  1.5  0.5   4.131%   8.347%   1.183%   0.000%   0.033%   7.415%   4.178%   0.003%   0.000%   0.000%
   19    2.1  1.5  0.5   3.867%   7.814%   5.828%   0.000%   0.040%   9.110%   2.598%   0.002%   0.000%   0.000%
   20    3.1  1.5  0.5   5.161%   2.554%   0.000%   7.910%   0.172%   0.001%   0.007%  12.019%   0.000%   0.000%
   21    4.1  1.5  0.5   4.025%   1.992%   0.000%   4.655%   9.135%   0.040%   0.001%   1.678%   0.000%   0.000%
   22    5.1  1.5  0.5   7.825%   3.872%   0.000%   8.604%   0.090%   0.000%   0.004%   6.311%   0.000%   0.000%
   23    6.1  1.5  0.5   9.094%   4.500%   0.000%   7.687%   6.523%   0.029%   0.001%   1.198%   0.000%   0.000%
   24    7.1  1.5  0.5   1.661%   3.357%   1.223%   0.000%   0.026%   5.796%  14.978%   0.009%   0.000%   0.000%
   25    8.1  1.5  0.5   0.012%   0.023%   0.020%   0.000%   0.000%   0.003%   0.005%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.007%   0.003%   0.000%   0.038%   0.000%   0.000%   0.000%   0.052%   0.000%   0.000%
   27   10.1  1.5  0.5   0.005%   0.002%   0.000%   0.112%   0.050%   0.000%   0.000%   0.002%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.012%   0.000%   0.000%   0.002%   4.194%   0.000%
   29   12.1  1.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.006%   0.003%   0.000%   0.000%  33.105%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.012%   1.717%   0.000%
   31   14.1  1.5  0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   6.439%
   32   15.1  1.5  0.5   0.002%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   2.570%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.011%   0.002%   0.000%   0.000%   5.134%
   34   17.1  1.5  0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   5.628%   0.000%
   35    1.1  1.5 -0.5   8.347%   4.131%   0.000%   1.183%   7.415%   0.033%   0.003%   4.178%   0.000%   0.000%
   36    2.1  1.5 -0.5   7.814%   3.867%   0.000%   5.828%   9.110%   0.040%   0.002%   2.598%   0.000%   0.000%
   37    3.1  1.5 -0.5   2.554%   5.161%   7.910%   0.000%   0.001%   0.172%  12.019%   0.007%   0.000%   0.000%
   38    4.1  1.5 -0.5   1.992%   4.025%   4.655%   0.000%   0.040%   9.135%   1.678%   0.001%   0.000%   0.000%
   39    5.1  1.5 -0.5   3.872%   7.825%   8.604%   0.000%   0.000%   0.090%   6.311%   0.004%   0.000%   0.000%
   40    6.1  1.5 -0.5   4.500%   9.094%   7.687%   0.000%   0.029%   6.523%   1.198%   0.001%   0.000%   0.000%
   41    7.1  1.5 -0.5   3.357%   1.661%   0.000%   1.223%   5.796%   0.026%   0.009%  14.978%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.023%   0.012%   0.000%   0.020%   0.003%   0.000%   0.000%   0.005%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.003%   0.007%   0.038%   0.000%   0.000%   0.000%   0.052%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.002%   0.005%   0.112%   0.000%   0.000%   0.050%   0.002%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.012%   0.002%   0.000%   0.000%   4.194%
   46   12.1  1.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.006%   0.000%   0.000%   0.003%  33.105%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   1.717%
   48   14.1  1.5 -0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   6.439%   0.000%
   49   15.1  1.5 -0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   2.570%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.011%   0.000%   0.000%   0.002%   5.134%   0.000%
   51   17.1  1.5 -0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   5.628%
   52    1.1  1.5 -1.5   1.392%   2.814%   2.363%   0.000%   0.018%   4.162%   7.443%   0.005%   0.000%   0.000%
   53    2.1  1.5 -1.5   1.399%   2.827%   1.023%   0.000%   0.021%   4.692%   6.790%   0.004%   0.000%   0.000%
   54    3.1  1.5 -1.5   7.035%   3.481%   0.000%   1.374%  10.919%   0.048%   0.000%   0.089%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.006%   0.003%   0.000%  13.405%   2.250%   0.010%   0.006%  10.135%   0.000%   0.000%
   56    5.1  1.5 -1.5   3.219%   1.593%   0.000%  12.607%   5.576%   0.025%   0.007%  11.243%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.005%   0.002%   0.000%   2.468%  14.244%   0.063%   0.001%   1.197%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.002%   0.004%  21.652%   0.000%   0.004%   0.953%   1.489%   0.001%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.093%   0.000%   0.000%   0.043%   0.024%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.050%   0.025%   0.000%   0.009%   0.008%   0.000%   0.000%   0.014%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.097%   0.048%   0.000%   0.000%   0.008%   0.000%   0.000%   0.014%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.004%  20.415%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.006%   0.000%   0.000%   0.014%
   64   13.1  1.5 -1.5   0.001%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.006%  16.918%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.006%   0.000%   0.000%   1.579%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.013%   0.000%   0.000%   0.005%   0.311%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.001%   0.000%   0.000%   1.617%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.013%   0.000%   0.000%   0.003%   0.358%   0.000%
   69    1.1  0.5  0.5   0.002%   0.005%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.018%   0.009%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.021%   0.010%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.007%   0.004%   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.002%   0.004%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.005%   0.003%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.002%   0.004%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   1.026%   2.073%   1.199%   0.000%   0.020%   4.628%   2.607%   0.002%   0.000%   0.000%
   77    9.1  0.5  0.5   0.264%   0.131%   0.000%   1.420%   6.108%   0.027%   0.001%   1.122%   0.000%   0.000%
   78   10.1  0.5  0.5   1.008%   2.036%   0.822%   0.000%   0.000%   0.047%   7.206%   0.004%   0.000%   0.000%
   79   11.1  0.5  0.5   0.276%   0.558%   0.002%   0.000%   0.032%   7.179%   0.047%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.176%   0.087%   0.000%   4.192%   0.102%   0.000%   0.004%   7.150%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.029%   0.000%   0.000%   0.161%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.068%   0.122%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.188%   0.001%   0.000%   0.003%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.005%   0.002%   0.000%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.009%   0.018%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.010%   0.021%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.004%   0.007%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.004%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.003%   0.005%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.004%   0.002%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   2.073%   1.026%   0.000%   1.199%   4.628%   0.020%   0.002%   2.607%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.131%   0.264%   1.420%   0.000%   0.027%   6.108%   1.122%   0.001%   0.000%   0.000%
   93   10.1  0.5 -0.5   2.036%   1.008%   0.000%   0.822%   0.047%   0.000%   0.004%   7.206%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.558%   0.276%   0.000%   0.002%   7.179%   0.032%   0.000%   0.047%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.087%   0.176%   4.192%   0.000%   0.000%   0.102%   7.150%   0.004%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.161%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.068%   0.000%   0.000%   0.122%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.188%   0.003%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.229%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.113%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.114%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.214%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.895%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.110%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.605%   0.001%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.821%   0.002%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.702%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.107%
   11   11.1  1.5  1.5   0.284%   0.000%   0.027%   3.973%   0.392%   0.002%   2.777%   0.002%   0.000%   0.085%
   12   12.1  1.5  1.5   0.003%  35.469%   0.100%   0.001%   0.000%   0.033%   0.000%   0.094%   0.029%   0.000%
   13   13.1  1.5  1.5   0.170%   0.000%   0.020%   2.894%   0.968%   0.005%   9.006%   0.005%   0.000%   0.048%
   14   14.1  1.5  1.5   0.001%  17.307%   5.609%   0.038%   0.005%   0.951%   0.003%   6.142%   0.154%   0.000%
   15   15.1  1.5  1.5   0.022%   0.000%   0.001%   0.202%  45.913%   0.246%   2.813%   0.002%   0.000%   0.083%
   16   16.1  1.5  1.5   0.001%  11.087%  13.890%   0.094%   0.001%   0.103%   0.001%   1.095%   0.064%   0.000%
   17   17.1  1.5  1.5   0.122%   0.000%   0.021%   3.088%  43.412%   0.233%   0.160%   0.000%   0.000%   0.080%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.663%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.434%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.205%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.912%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.789%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.114%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.782%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.025%   0.001%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.597%   0.002%
   28   11.1  1.5  0.5   0.000%   2.034%  27.150%   0.184%   0.000%   0.060%   0.006%   9.929%   0.084%   0.000%
   29   12.1  1.5  0.5   0.027%   0.000%   0.014%   2.042%   0.522%   0.003%   0.002%   0.000%   0.000%   0.002%
   30   13.1  1.5  0.5   0.000%   0.153%  14.825%   0.100%   0.015%   2.719%   0.012%  21.901%   0.171%   0.000%
   31   14.1  1.5  0.5   0.967%   0.000%   0.056%   8.300%   4.160%   0.022%  19.837%   0.011%   0.000%   0.018%
   32   15.1  1.5  0.5   0.001%  14.250%   3.091%   0.021%   0.000%   0.093%   0.001%   1.893%   0.042%   0.000%
   33   16.1  1.5  0.5   1.076%   0.000%   0.091%  13.482%   0.098%   0.001%  23.645%   0.013%   0.000%   0.081%
   34   17.1  1.5  0.5   0.001%  17.022%   0.683%   0.005%   0.000%   0.044%   0.000%   0.650%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.663%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.434%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.205%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.912%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.789%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.114%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.782%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.025%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   3.597%
   45   11.1  1.5 -0.5   2.034%   0.000%   0.184%  27.150%   0.060%   0.000%   9.929%   0.006%   0.000%   0.084%
   46   12.1  1.5 -0.5   0.000%   0.027%   2.042%   0.014%   0.003%   0.522%   0.000%   0.002%   0.002%   0.000%
   47   13.1  1.5 -0.5   0.153%   0.000%   0.100%  14.825%   2.719%   0.015%  21.901%   0.012%   0.000%   0.171%
   48   14.1  1.5 -0.5   0.000%   0.967%   8.300%   0.056%   0.022%   4.160%   0.011%  19.837%   0.018%   0.000%
   49   15.1  1.5 -0.5  14.250%   0.001%   0.021%   3.091%   0.093%   0.000%   1.893%   0.001%   0.000%   0.042%
   50   16.1  1.5 -0.5   0.000%   1.076%  13.482%   0.091%   0.001%   0.098%   0.013%  23.645%   0.081%   0.000%
   51   17.1  1.5 -0.5  17.022%   0.001%   0.005%   0.683%   0.044%   0.000%   0.650%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.229%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.113%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.114%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.214%   0.001%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.895%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.110%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.605%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   2.821%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.702%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.107%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.284%   3.973%   0.027%   0.002%   0.392%   0.002%   2.777%   0.085%   0.000%
   63   12.1  1.5 -1.5  35.469%   0.003%   0.001%   0.100%   0.033%   0.000%   0.094%   0.000%   0.000%   0.029%
   64   13.1  1.5 -1.5   0.000%   0.170%   2.894%   0.020%   0.005%   0.968%   0.005%   9.006%   0.048%   0.000%
   65   14.1  1.5 -1.5  17.307%   0.001%   0.038%   5.609%   0.951%   0.005%   6.142%   0.003%   0.000%   0.154%
   66   15.1  1.5 -1.5   0.000%   0.022%   0.202%   0.001%   0.246%  45.913%   0.002%   2.813%   0.083%   0.000%
   67   16.1  1.5 -1.5  11.087%   0.001%   0.094%  13.890%   0.103%   0.001%   1.095%   0.001%   0.000%   0.064%
   68   17.1  1.5 -1.5   0.000%   0.122%   3.088%   0.021%   0.233%  43.412%   0.000%   0.160%   0.080%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.406%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.125%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.414%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.608%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%  18.116%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.232%   0.007%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   7.012%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.579%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  42.934%   0.023%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.406%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.125%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.414%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.608%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  18.116%   0.010%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%  12.232%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.012%   0.004%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.579%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%  42.934%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.539%   0.000%   0.821%   0.001%   0.829%   0.000%   1.785%   0.002%   0.000%   0.000%
    2    2.1  1.5  1.5   0.531%   0.000%   0.949%   0.001%   0.947%   0.000%   1.640%   0.002%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.956%   0.001%   0.539%   0.000%   2.483%   0.000%   0.005%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.020%   0.000%   0.329%   0.000%   0.609%   0.003%   2.179%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.506%   0.000%   0.010%   0.000%   1.424%   0.003%   2.366%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.014%   0.001%   1.332%   0.000%   3.298%   0.000%   0.192%   0.000%   0.000%
    7    7.1  1.5  1.5   0.008%   0.000%   0.290%   0.000%   0.240%   0.000%   0.310%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.793%   0.001%   0.739%   0.000%   0.343%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.001%   1.788%   0.003%   2.478%   0.000%   0.114%   0.000%   0.246%   0.000%   0.000%
   10   10.1  1.5  1.5   0.002%   4.493%   0.000%   0.370%   0.000%   0.114%   0.000%   0.246%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.004%   0.000%   0.139%   0.000%   0.003%   0.000%   0.127%   0.036%  10.634%
   12   12.1  1.5  1.5   0.068%   0.000%   0.104%   0.000%   0.087%   0.000%   0.187%   0.000%   5.269%   0.018%
   13   13.1  1.5  1.5   0.000%   0.161%   0.000%   0.012%   0.000%   0.003%   0.000%   0.166%   0.073%  21.780%
   14   14.1  1.5  1.5   0.045%   0.000%   0.016%   0.000%   0.016%   0.000%   0.183%   0.000%  20.551%   0.069%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.072%   0.000%   0.406%   0.000%   0.121%   0.000%   0.000%
   16   16.1  1.5  1.5   0.023%   0.000%   0.141%   0.000%   0.108%   0.000%   0.021%   0.000%   0.243%   0.001%
   17   17.1  1.5  1.5   0.000%   0.025%   0.000%   0.057%   0.000%   0.406%   0.000%   0.082%   0.004%   1.151%
   18    1.1  1.5  0.5   0.000%   0.878%   0.001%   0.692%   0.000%   1.788%   0.001%   0.828%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.728%   0.000%   0.194%   0.000%   2.155%   0.001%   0.489%   0.000%   0.000%
   20    3.1  1.5  0.5   0.613%   0.000%   0.522%   0.001%   0.015%   0.000%   2.727%   0.004%   0.000%   0.000%
   21    4.1  1.5  0.5   0.409%   0.000%   1.002%   0.001%   1.982%   0.000%   0.460%   0.001%   0.000%   0.000%
   22    5.1  1.5  0.5   0.719%   0.000%   0.137%   0.000%   0.008%   0.000%   1.432%   0.002%   0.000%   0.000%
   23    6.1  1.5  0.5   0.922%   0.000%   0.010%   0.000%   1.415%   0.000%   0.329%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.576%   0.001%   0.585%   0.000%   1.125%   0.005%   3.553%   0.000%   0.000%
   25    8.1  1.5  0.5   0.001%   1.837%   0.003%   2.801%   0.000%   0.038%   0.000%   0.082%   0.000%   0.000%
   26    9.1  1.5  0.5   0.455%   0.000%   2.585%   0.003%   0.011%   0.000%   0.830%   0.001%   0.000%   0.000%
   27   10.1  1.5  0.5   0.464%   0.000%   0.004%   0.000%   0.787%   0.000%   0.055%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.002%   0.000%   0.089%   0.000%   0.339%   0.000%   0.079%   0.000%  14.059%   0.047%
   29   12.1  1.5  0.5   0.000%   0.111%   0.000%   0.088%   0.000%   0.187%   0.000%   0.087%   0.013%   3.754%
   30   13.1  1.5  0.5   0.011%   0.000%   0.001%   0.000%   0.002%   0.000%   0.377%   0.001%   9.070%   0.030%
   31   14.1  1.5  0.5   0.000%   0.166%   0.000%   0.005%   0.000%   0.014%   0.000%   0.334%   0.021%   6.349%
   32   15.1  1.5  0.5   0.167%   0.000%   0.039%   0.000%   0.016%   0.000%   0.004%   0.000%   1.208%   0.004%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.094%   0.000%   0.329%   0.000%   0.089%   0.009%   2.668%
   34   17.1  1.5  0.5   0.158%   0.000%   0.083%   0.000%   0.000%   0.000%   0.058%   0.000%   2.919%   0.010%
   35    1.1  1.5 -0.5   0.878%   0.000%   0.692%   0.001%   1.788%   0.000%   0.828%   0.001%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.728%   0.000%   0.194%   0.000%   2.155%   0.000%   0.489%   0.001%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.613%   0.001%   0.522%   0.000%   0.015%   0.004%   2.727%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.409%   0.001%   1.002%   0.000%   1.982%   0.001%   0.460%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.719%   0.000%   0.137%   0.000%   0.008%   0.002%   1.432%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.922%   0.000%   0.010%   0.000%   1.415%   0.000%   0.329%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.576%   0.000%   0.585%   0.001%   1.125%   0.000%   3.553%   0.005%   0.000%   0.000%
   42    8.1  1.5 -0.5   1.837%   0.001%   2.801%   0.003%   0.038%   0.000%   0.082%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.455%   0.003%   2.585%   0.000%   0.011%   0.001%   0.830%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.464%   0.000%   0.004%   0.000%   0.787%   0.000%   0.055%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.002%   0.000%   0.089%   0.000%   0.339%   0.000%   0.079%   0.047%  14.059%
   46   12.1  1.5 -0.5   0.111%   0.000%   0.088%   0.000%   0.187%   0.000%   0.087%   0.000%   3.754%   0.013%
   47   13.1  1.5 -0.5   0.000%   0.011%   0.000%   0.001%   0.000%   0.002%   0.001%   0.377%   0.030%   9.070%
   48   14.1  1.5 -0.5   0.166%   0.000%   0.005%   0.000%   0.014%   0.000%   0.334%   0.000%   6.349%   0.021%
   49   15.1  1.5 -0.5   0.000%   0.167%   0.000%   0.039%   0.000%   0.016%   0.000%   0.004%   0.004%   1.208%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.094%   0.000%   0.329%   0.000%   0.089%   0.000%   2.668%   0.009%
   51   17.1  1.5 -0.5   0.000%   0.158%   0.000%   0.083%   0.000%   0.000%   0.000%   0.058%   0.010%   2.919%
   52    1.1  1.5 -1.5   0.000%   0.539%   0.001%   0.821%   0.000%   0.829%   0.002%   1.785%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.531%   0.001%   0.949%   0.000%   0.947%   0.002%   1.640%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.956%   0.000%   0.539%   0.001%   2.483%   0.000%   0.005%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.020%   0.000%   0.329%   0.000%   0.609%   0.000%   2.179%   0.003%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.506%   0.000%   0.010%   0.000%   1.424%   0.000%   2.366%   0.003%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.014%   0.000%   1.332%   0.001%   3.298%   0.000%   0.192%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.008%   0.000%   0.290%   0.000%   0.240%   0.000%   0.310%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.001%   0.793%   0.000%   0.739%   0.000%   0.343%   0.000%   0.000%
   60    9.1  1.5 -1.5   1.788%   0.001%   2.478%   0.003%   0.114%   0.000%   0.246%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   4.493%   0.002%   0.370%   0.000%   0.114%   0.000%   0.246%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.004%   0.000%   0.139%   0.000%   0.003%   0.000%   0.127%   0.000%  10.634%   0.036%
   63   12.1  1.5 -1.5   0.000%   0.068%   0.000%   0.104%   0.000%   0.087%   0.000%   0.187%   0.018%   5.269%
   64   13.1  1.5 -1.5   0.161%   0.000%   0.012%   0.000%   0.003%   0.000%   0.166%   0.000%  21.780%   0.073%
   65   14.1  1.5 -1.5   0.000%   0.045%   0.000%   0.016%   0.000%   0.016%   0.000%   0.183%   0.069%  20.551%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.072%   0.000%   0.406%   0.000%   0.121%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.023%   0.000%   0.141%   0.000%   0.108%   0.000%   0.021%   0.001%   0.243%
   68   17.1  1.5 -1.5   0.025%   0.000%   0.057%   0.000%   0.406%   0.000%   0.082%   0.000%   1.151%   0.004%
   69    1.1  0.5  0.5   0.000%   0.135%   0.000%   0.180%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   70    2.1  0.5  0.5   0.368%   0.000%   0.227%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.449%   0.000%   0.222%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.272%   0.000%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%
   73    5.1  0.5  0.5   0.000%   0.190%   0.001%   0.485%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   74    6.1  0.5  0.5   0.190%   0.000%   0.498%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   75    7.1  0.5  0.5   0.000%   0.078%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.010%  26.676%   0.004%   3.734%   0.000%  20.513%   0.013%   9.505%   0.000%   0.000%
   77    9.1  0.5  0.5   5.424%   0.002%  30.850%   0.034%  24.368%   0.000%   5.656%   0.008%   0.000%   0.000%
   78   10.1  0.5  0.5   0.014%  38.332%   0.004%   3.184%   0.000%   0.038%   0.041%  29.952%   0.000%   0.000%
   79   11.1  0.5  0.5   0.002%   4.915%   0.048%  43.006%   0.000%  29.993%   0.000%   0.038%   0.000%   0.000%
   80   12.1  0.5  0.5   5.539%   0.002%   0.052%   0.000%   0.166%   0.000%  29.825%   0.041%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.362%   0.000%   1.557%   0.002%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.609%   0.002%   1.311%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.911%   0.000%   0.011%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.135%   0.000%   0.180%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.368%   0.000%   0.227%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.449%   0.000%   0.222%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.272%   0.000%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   88    5.1  0.5 -0.5   0.190%   0.000%   0.485%   0.001%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.190%   0.001%   0.498%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   90    7.1  0.5 -0.5   0.078%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5  26.676%   0.010%   3.734%   0.004%  20.513%   0.000%   9.505%   0.013%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.002%   5.424%   0.034%  30.850%   0.000%  24.368%   0.008%   5.656%   0.000%   0.000%
   93   10.1  0.5 -0.5  38.332%   0.014%   3.184%   0.004%   0.038%   0.000%  29.952%   0.041%   0.000%   0.000%
   94   11.1  0.5 -0.5   4.915%   0.002%  43.006%   0.048%  29.993%   0.000%   0.038%   0.000%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.002%   5.539%   0.000%   0.052%   0.000%   0.166%   0.041%  29.825%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.362%   0.002%   1.557%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.609%   0.000%   1.311%   0.002%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   1.911%   0.000%   0.011%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.142%   0.012%   0.002%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.007%   0.000%   0.019%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.008%   0.003%   0.133%
   11   11.1  1.5  1.5   0.001%   3.342%   0.507%   0.000%  19.149%   7.446%   0.116%   1.381%   0.119%   5.155%
   12   12.1  1.5  1.5   8.506%   0.002%   0.012%  13.989%   0.216%   0.556%   0.003%   0.000%  13.691%   0.315%
   13   13.1  1.5  1.5   0.000%   0.238%   1.854%   0.002%   9.925%   3.859%   0.071%   0.843%   0.499%  21.638%
   14   14.1  1.5  1.5  12.012%   0.003%   0.001%   1.738%   0.201%   0.518%   7.467%   0.625%  11.335%   0.261%
   15   15.1  1.5  1.5   0.001%   5.065%   1.057%   0.001%   0.269%   0.105%   1.076%  12.859%   0.000%   0.000%
   16   16.1  1.5  1.5  20.707%   0.005%   0.015%  18.287%   0.512%   1.318%  15.087%   1.263%   2.748%   0.063%
   17   17.1  1.5  1.5   0.001%   4.562%   0.144%   0.000%   2.894%   1.125%   1.130%  13.493%   0.039%   1.692%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.155%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.108%   0.009%   0.024%   0.001%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   0.009%   0.058%   0.001%
   28   11.1  1.5  0.5   0.849%   0.000%   0.001%   0.671%   0.110%   0.284%  13.166%   1.102%   0.215%   0.005%
   29   12.1  1.5  0.5   0.004%  16.955%   5.606%   0.005%   1.607%   0.625%   0.079%   0.943%   0.155%   6.743%
   30   13.1  1.5  0.5   4.149%   0.001%   0.005%   5.366%   0.219%   0.564%  15.947%   1.335%   0.002%   0.000%
   31   14.1  1.5  0.5   0.001%   4.650%   1.116%   0.001%   7.132%   2.773%   0.374%   4.464%   0.309%  13.425%
   32   15.1  1.5  0.5   8.350%   0.002%   0.015%  17.459%   6.607%  16.993%   3.220%   0.270%   8.188%   0.189%
   33   16.1  1.5  0.5   0.002%   9.516%   0.449%   0.000%   2.451%   0.953%   0.179%   2.135%   0.048%   2.064%
   34   17.1  1.5  0.5   1.062%   0.000%   0.027%  31.660%   3.241%   8.335%   0.273%   0.023%   9.797%   0.226%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.155%   0.004%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.108%   0.001%   0.024%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.104%   0.001%   0.058%
   45   11.1  1.5 -0.5   0.000%   0.849%   0.671%   0.001%   0.284%   0.110%   1.102%  13.166%   0.005%   0.215%
   46   12.1  1.5 -0.5  16.955%   0.004%   0.005%   5.606%   0.625%   1.607%   0.943%   0.079%   6.743%   0.155%
   47   13.1  1.5 -0.5   0.001%   4.149%   5.366%   0.005%   0.564%   0.219%   1.335%  15.947%   0.000%   0.002%
   48   14.1  1.5 -0.5   4.650%   0.001%   0.001%   1.116%   2.773%   7.132%   4.464%   0.374%  13.425%   0.309%
   49   15.1  1.5 -0.5   0.002%   8.350%  17.459%   0.015%  16.993%   6.607%   0.270%   3.220%   0.189%   8.188%
   50   16.1  1.5 -0.5   9.516%   0.002%   0.000%   0.449%   0.953%   2.451%   2.135%   0.179%   2.064%   0.048%
   51   17.1  1.5 -0.5   0.000%   1.062%  31.660%   0.027%   8.335%   3.241%   0.023%   0.273%   0.226%   9.797%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.142%   0.000%   0.002%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.001%   0.019%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.001%   0.133%   0.003%
   62   11.1  1.5 -1.5   3.342%   0.001%   0.000%   0.507%   7.446%  19.149%   1.381%   0.116%   5.155%   0.119%
   63   12.1  1.5 -1.5   0.002%   8.506%  13.989%   0.012%   0.556%   0.216%   0.000%   0.003%   0.315%  13.691%
   64   13.1  1.5 -1.5   0.238%   0.000%   0.002%   1.854%   3.859%   9.925%   0.843%   0.071%  21.638%   0.499%
   65   14.1  1.5 -1.5   0.003%  12.012%   1.738%   0.001%   0.518%   0.201%   0.625%   7.467%   0.261%  11.335%
   66   15.1  1.5 -1.5   5.065%   0.001%   0.001%   1.057%   0.105%   0.269%  12.859%   1.076%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.005%  20.707%  18.287%   0.015%   1.318%   0.512%   1.263%  15.087%   0.063%   2.748%
   68   17.1  1.5 -1.5   4.562%   0.001%   0.000%   0.144%   1.125%   2.894%  13.493%   1.130%   1.692%   0.039%
   69    1.1  0.5  0.5   0.000%   0.001%   0.001%   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%   0.000%
   70    2.1  0.5  0.5   0.001%   0.000%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.001%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   72    4.1  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   73    5.1  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   74    6.1  0.5  0.5   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   75    7.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.004%   0.002%   0.000%   0.002%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.122%   0.002%   0.084%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.236%   0.020%   0.051%   0.001%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.009%   0.376%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.013%   0.000%   0.001%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.227%   0.019%   0.125%   0.003%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.001%   0.002%   0.001%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.001%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.001%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   87    4.1  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   88    5.1  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   90    7.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.004%   0.002%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.122%   0.010%   0.084%   0.002%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.236%   0.001%   0.051%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.376%   0.009%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.001%   0.001%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.227%   0.003%   0.125%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.002%   0.000%   0.016%   0.000%   0.002%   0.000%   0.006%   0.000%   0.003%   0.000%
    2    2.1  1.5  1.5   0.002%   0.000%   0.016%   0.000%   0.002%   0.000%   0.004%   0.000%   0.003%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.016%   0.000%   0.000%   0.000%   0.011%
    4    4.1  1.5  1.5   0.000%   0.002%   0.000%   0.010%   0.000%   0.009%   0.000%   0.017%   0.000%   0.001%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.009%   0.000%   0.017%   0.000%   0.016%   0.000%   0.003%
    6    6.1  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.024%   0.000%   0.001%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.021%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.004%   0.000%   0.014%   0.000%   0.131%   0.000%  25.472%   0.000%   0.642%   0.009%
    9    9.1  1.5  1.5   0.001%   0.192%   0.000%   0.044%   0.000%   0.005%   0.000%   3.088%   0.415%  28.531%
   10   10.1  1.5  1.5   0.001%   0.075%   0.000%   0.044%   0.000%   0.005%   0.000%   0.260%   0.694%  47.704%
   11   11.1  1.5  1.5   0.120%  17.100%   0.000%   6.483%   0.000%   0.133%   0.000%   0.013%   0.000%   0.000%
   12   12.1  1.5  1.5   7.137%   0.050%  12.664%   0.001%   1.322%   0.001%   0.007%   0.000%   0.004%   0.000%
   13   13.1  1.5  1.5   0.001%   0.185%   0.001%   7.237%   0.001%   1.365%   0.000%   0.013%   0.000%   0.013%
   14   14.1  1.5  1.5   2.942%   0.021%  10.153%   0.001%   0.000%   0.000%   0.025%   0.000%   0.001%   0.000%
   15   15.1  1.5  1.5   0.016%   2.333%   0.000%   1.228%   0.015%  25.710%   0.000%   0.009%   0.000%   0.000%
   16   16.1  1.5  1.5   4.789%   0.034%   2.775%   0.000%   3.853%   0.002%   0.005%   0.000%   0.003%   0.000%
   17   17.1  1.5  1.5   0.005%   0.680%   0.000%   0.473%   0.014%  24.478%   0.000%   0.007%   0.000%   0.004%
   18    1.1  1.5  0.5   0.000%   0.003%   0.000%   0.002%   0.000%   0.016%   0.000%   0.001%   0.000%   0.013%
   19    2.1  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.018%   0.000%   0.005%   0.000%   0.016%
   20    3.1  1.5  0.5   0.001%   0.000%   0.018%   0.000%   0.001%   0.000%   0.009%   0.000%   0.007%   0.000%
   21    4.1  1.5  0.5   0.003%   0.000%   0.008%   0.000%   0.009%   0.000%   0.004%   0.000%   0.006%   0.000%
   22    5.1  1.5  0.5   0.002%   0.000%   0.010%   0.000%   0.000%   0.000%   0.008%   0.000%   0.016%   0.000%
   23    6.1  1.5  0.5   0.001%   0.000%   0.005%   0.000%   0.007%   0.000%   0.006%   0.000%   0.018%   0.000%
   24    7.1  1.5  0.5   0.000%   0.001%   0.000%   0.031%   0.000%   0.002%   0.000%   0.004%   0.000%   0.004%
   25    8.1  1.5  0.5   0.001%   0.081%   0.000%   0.015%   0.000%   0.002%   0.000%  15.422%   0.107%   7.351%
   26    9.1  1.5  0.5   0.038%   0.000%   0.096%   0.000%   0.017%   0.000%   5.794%   0.000%   4.200%   0.061%
   27   10.1  1.5  0.5   0.008%   0.000%   0.030%   0.000%   0.083%   0.000%  40.124%   0.000%   0.438%   0.006%
   28   11.1  1.5  0.5   3.889%   0.027%   9.596%   0.001%  11.756%   0.007%   0.010%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.092%  13.185%   0.000%   1.323%   0.007%  12.657%   0.000%   0.002%   0.000%   0.016%
   30   13.1  1.5  0.5   1.861%   0.013%  18.520%   0.001%   0.849%   0.000%   0.018%   0.000%   0.005%   0.000%
   31   14.1  1.5  0.5   0.008%   1.166%   0.001%  13.891%   0.002%   3.927%   0.000%   0.000%   0.000%   0.022%
   32   15.1  1.5  0.5  14.145%   0.099%   0.459%   0.000%   0.562%   0.000%   0.002%   0.000%   0.028%   0.000%
   33   16.1  1.5  0.5   0.097%  13.888%   0.001%  10.226%   0.006%  11.110%   0.000%   0.011%   0.000%   0.002%
   34   17.1  1.5  0.5  14.934%   0.104%   2.876%   0.000%   0.132%   0.000%   0.001%   0.000%   0.023%   0.000%
   35    1.1  1.5 -0.5   0.003%   0.000%   0.002%   0.000%   0.016%   0.000%   0.001%   0.000%   0.013%   0.000%
   36    2.1  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.018%   0.000%   0.005%   0.000%   0.016%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.001%   0.000%   0.018%   0.000%   0.001%   0.000%   0.009%   0.000%   0.007%
   38    4.1  1.5 -0.5   0.000%   0.003%   0.000%   0.008%   0.000%   0.009%   0.000%   0.004%   0.000%   0.006%
   39    5.1  1.5 -0.5   0.000%   0.002%   0.000%   0.010%   0.000%   0.000%   0.000%   0.008%   0.000%   0.016%
   40    6.1  1.5 -0.5   0.000%   0.001%   0.000%   0.005%   0.000%   0.007%   0.000%   0.006%   0.000%   0.018%
   41    7.1  1.5 -0.5   0.001%   0.000%   0.031%   0.000%   0.002%   0.000%   0.004%   0.000%   0.004%   0.000%
   42    8.1  1.5 -0.5   0.081%   0.001%   0.015%   0.000%   0.002%   0.000%  15.422%   0.000%   7.351%   0.107%
   43    9.1  1.5 -0.5   0.000%   0.038%   0.000%   0.096%   0.000%   0.017%   0.000%   5.794%   0.061%   4.200%
   44   10.1  1.5 -0.5   0.000%   0.008%   0.000%   0.030%   0.000%   0.083%   0.000%  40.124%   0.006%   0.438%
   45   11.1  1.5 -0.5   0.027%   3.889%   0.001%   9.596%   0.007%  11.756%   0.000%   0.010%   0.000%   0.000%
   46   12.1  1.5 -0.5  13.185%   0.092%   1.323%   0.000%  12.657%   0.007%   0.002%   0.000%   0.016%   0.000%
   47   13.1  1.5 -0.5   0.013%   1.861%   0.001%  18.520%   0.000%   0.849%   0.000%   0.018%   0.000%   0.005%
   48   14.1  1.5 -0.5   1.166%   0.008%  13.891%   0.001%   3.927%   0.002%   0.000%   0.000%   0.022%   0.000%
   49   15.1  1.5 -0.5   0.099%  14.145%   0.000%   0.459%   0.000%   0.562%   0.000%   0.002%   0.000%   0.028%
   50   16.1  1.5 -0.5  13.888%   0.097%  10.226%   0.001%  11.110%   0.006%   0.011%   0.000%   0.002%   0.000%
   51   17.1  1.5 -0.5   0.104%  14.934%   0.000%   2.876%   0.000%   0.132%   0.000%   0.001%   0.000%   0.023%
   52    1.1  1.5 -1.5   0.000%   0.002%   0.000%   0.016%   0.000%   0.002%   0.000%   0.006%   0.000%   0.003%
   53    2.1  1.5 -1.5   0.000%   0.002%   0.000%   0.016%   0.000%   0.002%   0.000%   0.004%   0.000%   0.003%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.016%   0.000%   0.000%   0.000%   0.011%   0.000%
   55    4.1  1.5 -1.5   0.002%   0.000%   0.010%   0.000%   0.009%   0.000%   0.017%   0.000%   0.001%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.009%   0.000%   0.017%   0.000%   0.016%   0.000%   0.003%   0.000%
   57    6.1  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.024%   0.000%   0.001%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.021%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.004%   0.000%   0.014%   0.000%   0.131%   0.000%  25.472%   0.009%   0.642%
   60    9.1  1.5 -1.5   0.192%   0.001%   0.044%   0.000%   0.005%   0.000%   3.088%   0.000%  28.531%   0.415%
   61   10.1  1.5 -1.5   0.075%   0.001%   0.044%   0.000%   0.005%   0.000%   0.260%   0.000%  47.704%   0.694%
   62   11.1  1.5 -1.5  17.100%   0.120%   6.483%   0.000%   0.133%   0.000%   0.013%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.050%   7.137%   0.001%  12.664%   0.001%   1.322%   0.000%   0.007%   0.000%   0.004%
   64   13.1  1.5 -1.5   0.185%   0.001%   7.237%   0.001%   1.365%   0.001%   0.013%   0.000%   0.013%   0.000%
   65   14.1  1.5 -1.5   0.021%   2.942%   0.001%  10.153%   0.000%   0.000%   0.000%   0.025%   0.000%   0.001%
   66   15.1  1.5 -1.5   2.333%   0.016%   1.228%   0.000%  25.710%   0.015%   0.009%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.034%   4.789%   0.000%   2.775%   0.002%   3.853%   0.000%   0.005%   0.000%   0.003%
   68   17.1  1.5 -1.5   0.680%   0.005%   0.473%   0.000%  24.478%   0.014%   0.007%   0.000%   0.004%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.168%   0.000%   0.025%
   70    2.1  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.187%   0.003%
   71    3.1  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.203%   0.003%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.201%   0.000%   0.037%   0.001%
   73    5.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%   0.026%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.045%   0.001%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.165%   0.001%   0.062%
   76    8.1  0.5  0.5   0.001%   0.172%   0.000%   0.059%   0.000%   0.567%   0.000%   0.991%   0.062%   4.260%
   77    9.1  0.5  0.5   0.083%   0.001%   0.281%   0.000%   0.345%   0.000%   0.773%   0.000%   0.560%   0.008%
   78   10.1  0.5  0.5   0.000%   0.002%   0.000%   0.588%   0.000%   0.038%   0.000%   1.881%   0.042%   2.860%
   79   11.1  0.5  0.5   0.003%   0.373%   0.000%   0.038%   0.000%   0.588%   0.000%   0.024%   0.017%   1.154%
   80   12.1  0.5  0.5   0.017%   0.000%   0.599%   0.000%   0.027%   0.000%   5.353%   0.000%   0.058%   0.001%
   81   13.1  0.5  0.5   0.000%   0.000%   0.057%   0.000%   0.047%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.094%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.005%   0.000%   0.099%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.168%   0.000%   0.025%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.003%   0.187%
   86    3.1  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.003%   0.203%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.201%   0.001%   0.037%
   88    5.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%   0.026%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.045%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.165%   0.000%   0.062%   0.001%
   91    8.1  0.5 -0.5   0.172%   0.001%   0.059%   0.000%   0.567%   0.000%   0.991%   0.000%   4.260%   0.062%
   92    9.1  0.5 -0.5   0.001%   0.083%   0.000%   0.281%   0.000%   0.345%   0.000%   0.773%   0.008%   0.560%
   93   10.1  0.5 -0.5   0.002%   0.000%   0.588%   0.000%   0.038%   0.000%   1.881%   0.000%   2.860%   0.042%
   94   11.1  0.5 -0.5   0.373%   0.003%   0.038%   0.000%   0.588%   0.000%   0.024%   0.000%   1.154%   0.017%
   95   12.1  0.5 -0.5   0.000%   0.017%   0.000%   0.599%   0.000%   0.027%   0.000%   5.353%   0.001%   0.058%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.057%   0.000%   0.047%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.094%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.099%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  1.5  1.5   0.013%   0.000%   0.004%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.005%
    2    2.1  1.5  1.5   0.015%   0.000%   0.003%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.011%   0.000%   0.003%   0.000%   0.010%   0.000%   0.000%   0.079%   0.000%
    4    4.1  1.5  1.5   0.000%   0.004%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.066%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.019%   0.000%   0.001%   0.000%   0.000%   0.004%   0.000%
    6    6.1  1.5  1.5   0.000%   0.019%   0.000%   0.007%   0.000%   0.011%   0.000%   0.000%   0.004%   0.000%
    7    7.1  1.5  1.5   0.005%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.138%
    8    8.1  1.5  1.5   9.837%   0.104%  43.534%   0.000%  14.809%   0.006%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.184%  17.370%   0.000%   4.939%   0.006%  14.505%  24.895%   0.003%   0.000%   0.000%
   10   10.1  1.5  1.5   0.010%   0.920%   0.000%   4.939%   0.006%  14.505%  24.895%   0.003%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.016%   0.000%   0.004%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%
   12   12.1  1.5  1.5   0.015%   0.000%   0.003%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.003%   0.000%   0.007%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   14   14.1  1.5  1.5   0.002%   0.000%   0.005%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.001%
   15   15.1  1.5  1.5   0.000%   0.011%   0.000%   0.017%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.022%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.002%
   17   17.1  1.5  1.5   0.000%   0.010%   0.000%   0.014%   0.000%   0.010%   0.000%   0.000%   0.001%   0.000%
   18    1.1  1.5  0.5   0.000%   0.007%   0.000%   0.011%   0.000%   0.004%   0.000%   0.000%   0.012%   0.000%
   19    2.1  1.5  0.5   0.000%   0.001%   0.000%   0.009%   0.000%   0.006%   0.000%   0.000%   0.147%   0.000%
   20    3.1  1.5  0.5   0.006%   0.000%   0.011%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.030%
   21    4.1  1.5  0.5   0.012%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.010%
   22    5.1  1.5  0.5   0.000%   0.000%   0.006%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.066%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.010%
   24    7.1  1.5  0.5   0.000%   0.009%   0.000%   0.008%   0.000%   0.017%   0.000%   0.000%   0.001%   0.000%
   25    8.1  1.5  0.5   0.327%  30.888%   0.000%   1.646%   0.002%   4.835%  33.193%   0.004%   0.000%   0.000%
   26    9.1  1.5  0.5  30.196%   0.320%  40.646%   0.000%   4.735%   0.002%   0.001%   8.298%   0.000%   0.000%
   27   10.1  1.5  0.5   0.004%   0.000%   1.546%   0.000%  43.818%   0.019%   0.001%   8.298%   0.000%   0.000%
   28   11.1  1.5  0.5   0.012%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.008%   0.000%   0.010%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.001%   0.000%   0.014%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.002%   0.000%   0.016%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%
   32   15.1  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.010%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.001%   0.000%
   34   17.1  1.5  0.5   0.007%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%
   35    1.1  1.5 -0.5   0.007%   0.000%   0.011%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.012%
   36    2.1  1.5 -0.5   0.001%   0.000%   0.009%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.147%
   37    3.1  1.5 -0.5   0.000%   0.006%   0.000%   0.011%   0.000%   0.004%   0.000%   0.000%   0.030%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.010%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.002%   0.000%   0.000%   0.066%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.010%   0.000%
   41    7.1  1.5 -0.5   0.009%   0.000%   0.008%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%   0.001%
   42    8.1  1.5 -0.5  30.888%   0.327%   1.646%   0.000%   4.835%   0.002%   0.004%  33.193%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.320%  30.196%   0.000%  40.646%   0.002%   4.735%   8.298%   0.001%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.004%   0.000%   1.546%   0.019%  43.818%   8.298%   0.001%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.008%   0.000%   0.010%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.001%   0.000%   0.014%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.002%   0.000%   0.016%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%
   49   15.1  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.010%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.001%
   51   17.1  1.5 -0.5   0.000%   0.007%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.013%   0.000%   0.004%   0.000%   0.011%   0.000%   0.000%   0.005%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.015%   0.000%   0.003%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.011%   0.000%   0.003%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.079%
   55    4.1  1.5 -1.5   0.004%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.066%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.019%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.004%
   57    6.1  1.5 -1.5   0.019%   0.000%   0.007%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.004%
   58    7.1  1.5 -1.5   0.000%   0.005%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.138%   0.000%
   59    8.1  1.5 -1.5   0.104%   9.837%   0.000%  43.534%   0.006%  14.809%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5  17.370%   0.184%   4.939%   0.000%  14.505%   0.006%   0.003%  24.895%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.920%   0.010%   4.939%   0.000%  14.505%   0.006%   0.003%  24.895%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.016%   0.000%   0.004%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%
   63   12.1  1.5 -1.5   0.000%   0.015%   0.000%   0.003%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.003%   0.000%   0.007%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   65   14.1  1.5 -1.5   0.000%   0.002%   0.000%   0.005%   0.000%   0.004%   0.000%   0.000%   0.001%   0.000%
   66   15.1  1.5 -1.5   0.011%   0.000%   0.017%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.022%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.002%   0.000%
   68   17.1  1.5 -1.5   0.010%   0.000%   0.014%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.001%
   69    1.1  0.5  0.5   0.001%   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.226%   0.000%
   70    2.1  0.5  0.5   0.047%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.287%
   71    3.1  0.5  0.5   0.046%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.891%
   72    4.1  0.5  0.5   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.114%
   73    5.1  0.5  0.5   0.002%   0.186%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   74    6.1  0.5  0.5   0.205%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.577%
   75    7.1  0.5  0.5   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  50.318%   0.000%
   76    8.1  0.5  0.5   0.001%   0.099%   0.000%   0.690%   0.000%   0.235%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   4.028%   0.043%   0.000%   0.000%   0.924%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.007%   0.624%   0.000%   0.727%   0.000%   0.197%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.044%   4.174%   0.000%   0.197%   0.000%   0.727%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.001%   0.000%   0.697%   0.000%   0.227%   0.000%   0.000%   0.000%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.165%   0.000%   0.000%   0.000%   0.000%   0.136%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.042%   0.000%   0.123%   0.136%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.041%   0.000%   0.125%   0.000%   0.000%   0.136%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.061%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.226%
   85    2.1  0.5 -0.5   0.001%   0.047%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.287%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.046%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.891%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.114%   0.000%
   88    5.1  0.5 -0.5   0.186%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   89    6.1  0.5 -0.5   0.002%   0.205%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.577%   0.000%
   90    7.1  0.5 -0.5   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  50.318%
   91    8.1  0.5 -0.5   0.099%   0.001%   0.690%   0.000%   0.235%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.043%   4.028%   0.000%   0.000%   0.000%   0.924%   0.000%   0.000%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.624%   0.007%   0.727%   0.000%   0.197%   0.000%   0.000%   0.000%   0.000%   0.000%
   94   11.1  0.5 -0.5   4.174%   0.044%   0.197%   0.000%   0.727%   0.000%   0.000%   0.000%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.001%   0.000%   0.697%   0.000%   0.227%   0.000%   0.000%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.165%   0.000%   0.000%   0.136%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.042%   0.000%   0.123%   0.000%   0.000%   0.136%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.041%   0.000%   0.125%   0.136%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  1.5  1.5   0.000%   0.074%   0.000%   0.000%   0.000%   0.084%   0.000%   0.003%   0.006%   0.000%
    2    2.1  1.5  1.5   0.000%   0.002%   0.158%   0.000%   0.000%   0.004%   0.000%   0.003%   0.006%   0.000%
    3    3.1  1.5  1.5   0.044%   0.000%   0.000%   0.046%   0.001%   0.000%   0.001%   0.000%   0.000%   0.007%
    4    4.1  1.5  1.5   0.004%   0.000%   0.000%   0.035%   0.050%   0.000%   0.009%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.074%   0.000%   0.000%   0.015%   0.010%   0.000%   0.011%   0.000%   0.000%   0.001%
    6    6.1  1.5  1.5   0.006%   0.000%   0.000%   0.037%   0.072%   0.000%   0.003%   0.000%   0.000%   0.008%
    7    7.1  1.5  1.5   0.000%   0.091%   0.001%   0.000%   0.000%   0.040%   0.000%   0.002%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.226%   0.130%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%   0.075%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%   0.075%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.002%   0.000%
   13   13.1  1.5  1.5   0.003%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%
   16   16.1  1.5  1.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%
   18    1.1  1.5  0.5   0.087%   0.000%   0.000%   0.004%   0.061%   0.000%   0.006%   0.000%   0.000%   0.003%
   19    2.1  1.5  0.5   0.010%   0.000%   0.000%   0.005%   0.000%   0.000%   0.004%   0.000%   0.000%   0.005%
   20    3.1  1.5  0.5   0.000%   0.008%   0.117%   0.000%   0.000%   0.002%   0.000%   0.008%   0.001%   0.000%
   21    4.1  1.5  0.5   0.000%   0.006%   0.113%   0.000%   0.000%   0.045%   0.000%   0.000%   0.008%   0.000%
   22    5.1  1.5  0.5   0.000%   0.133%   0.009%   0.000%   0.000%   0.016%   0.000%   0.004%   0.001%   0.000%
   23    6.1  1.5  0.5   0.000%   0.017%   0.003%   0.000%   0.000%   0.179%   0.000%   0.000%   0.006%   0.000%
   24    7.1  1.5  0.5   0.016%   0.000%   0.000%   0.030%   0.008%   0.000%   0.007%   0.000%   0.000%   0.009%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.025%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.265%   0.012%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.276%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   29   12.1  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.001%
   30   13.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   31   14.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   34   17.1  1.5  0.5   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.087%   0.004%   0.000%   0.000%   0.061%   0.000%   0.006%   0.003%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.010%   0.005%   0.000%   0.000%   0.000%   0.000%   0.004%   0.005%   0.000%
   37    3.1  1.5 -0.5   0.008%   0.000%   0.000%   0.117%   0.002%   0.000%   0.008%   0.000%   0.000%   0.001%
   38    4.1  1.5 -0.5   0.006%   0.000%   0.000%   0.113%   0.045%   0.000%   0.000%   0.000%   0.000%   0.008%
   39    5.1  1.5 -0.5   0.133%   0.000%   0.000%   0.009%   0.016%   0.000%   0.004%   0.000%   0.000%   0.001%
   40    6.1  1.5 -0.5   0.017%   0.000%   0.000%   0.003%   0.179%   0.000%   0.000%   0.000%   0.000%   0.006%
   41    7.1  1.5 -0.5   0.000%   0.016%   0.030%   0.000%   0.000%   0.008%   0.000%   0.007%   0.009%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.025%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.265%   0.000%   0.000%   0.012%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.276%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   46   12.1  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.001%   0.000%
   47   13.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   51   17.1  1.5 -0.5   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.074%   0.000%   0.000%   0.000%   0.084%   0.000%   0.003%   0.000%   0.000%   0.006%
   53    2.1  1.5 -1.5   0.002%   0.000%   0.000%   0.158%   0.004%   0.000%   0.003%   0.000%   0.000%   0.006%
   54    3.1  1.5 -1.5   0.000%   0.044%   0.046%   0.000%   0.000%   0.001%   0.000%   0.001%   0.007%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.004%   0.035%   0.000%   0.000%   0.050%   0.000%   0.009%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.074%   0.015%   0.000%   0.000%   0.010%   0.000%   0.011%   0.001%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.006%   0.037%   0.000%   0.000%   0.072%   0.000%   0.003%   0.008%   0.000%
   58    7.1  1.5 -1.5   0.091%   0.000%   0.000%   0.001%   0.040%   0.000%   0.002%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.226%   0.000%   0.000%   0.130%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.075%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.075%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.002%
   64   13.1  1.5 -1.5   0.000%   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.001%   0.000%   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%
   67   16.1  1.5 -1.5   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%
   69    1.1  0.5  0.5  32.517%   0.046%   0.000%   0.077%  20.917%   0.026%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.013%   9.288%  13.657%   0.000%   0.040%  32.523%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.028%  20.057%  21.207%   0.000%   0.008%   6.617%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.040%  28.269%  11.318%   0.000%   0.003%   2.065%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   7.686%   0.011%   0.000%  34.631%  14.462%   0.018%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.001%   0.953%  18.364%   0.000%   0.021%  16.892%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.504%   0.001%   0.000%   0.161%   5.817%   0.007%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.737%   0.000%   0.000%   0.423%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   1.143%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.016%   0.000%   0.000%   0.144%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.144%   0.000%   0.000%   1.016%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.985%   0.175%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  63.292%   0.993%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.434%   0.000%   0.004%  40.847%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.701%  54.579%   0.005%
   84    1.1  0.5 -0.5   0.046%  32.517%   0.077%   0.000%   0.026%  20.917%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   9.288%   0.013%   0.000%  13.657%  32.523%   0.040%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5  20.057%   0.028%   0.000%  21.207%   6.617%   0.008%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5  28.269%   0.040%   0.000%  11.318%   2.065%   0.003%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.011%   7.686%  34.631%   0.000%   0.018%  14.462%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.953%   0.001%   0.000%  18.364%  16.892%   0.021%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.001%   0.504%   0.161%   0.000%   0.007%   5.817%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.737%   0.423%   0.000%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   1.143%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.016%   0.144%   0.000%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.144%   1.016%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.985%   0.000%   0.000%   0.175%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  63.292%   0.000%   0.000%   0.993%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.434%  40.847%   0.004%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.701%   0.000%   0.005%  54.579%

   Nr   State  S   Sz      91       92       93       94       95       96       97       98

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.009%   0.001%   0.000%   0.000%   0.092%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%   0.000%   0.097%
    3    3.1  1.5  1.5   0.000%   0.000%   0.010%   0.000%   0.000%   0.006%   0.087%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.065%   0.000%   0.000%   0.011%   0.024%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.062%   0.000%   0.000%   0.014%   0.014%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.015%   0.000%   0.000%   0.024%   0.054%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.114%   0.004%   0.000%   0.000%   0.004%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.045%   0.002%   0.000%   0.000%   0.004%
    9    9.1  1.5  1.5   0.000%   0.102%   0.004%   0.000%   0.000%   0.065%   0.002%   0.000%
   10   10.1  1.5  1.5   0.000%   0.102%   0.000%   0.000%   0.000%   0.058%   0.012%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.006%   0.000%   0.000%   0.095%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.031%   0.000%   0.000%   0.068%   0.002%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.041%   0.059%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.025%   0.072%   0.000%   0.000%   0.006%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.045%   0.064%   0.000%   0.000%   0.003%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.042%   0.053%   0.000%   0.000%   0.015%
   24    7.1  1.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.077%   0.000%
   25    8.1  1.5  0.5   0.000%   0.136%   0.007%   0.000%   0.000%   0.000%   0.069%   0.000%
   26    9.1  1.5  0.5   0.034%   0.000%   0.000%   0.020%   0.002%   0.000%   0.000%   0.035%
   27   10.1  1.5  0.5   0.034%   0.000%   0.000%   0.051%   0.001%   0.000%   0.000%   0.006%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.006%   0.095%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.031%   0.068%   0.000%   0.000%   0.002%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.041%   0.000%   0.000%   0.059%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.025%   0.000%   0.000%   0.072%   0.006%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.045%   0.000%   0.000%   0.064%   0.003%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.042%   0.000%   0.000%   0.053%   0.015%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.077%
   42    8.1  1.5 -0.5   0.136%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.069%
   43    9.1  1.5 -0.5   0.000%   0.034%   0.020%   0.000%   0.000%   0.002%   0.035%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.034%   0.051%   0.000%   0.000%   0.001%   0.006%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.009%   0.000%   0.000%   0.001%   0.092%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.001%   0.097%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.010%   0.006%   0.000%   0.000%   0.087%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.065%   0.011%   0.000%   0.000%   0.024%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.062%   0.014%   0.000%   0.000%   0.014%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.015%   0.024%   0.000%   0.000%   0.054%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.114%   0.000%   0.000%   0.004%   0.004%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.045%   0.000%   0.000%   0.002%   0.004%   0.000%
   60    9.1  1.5 -1.5   0.102%   0.000%   0.000%   0.004%   0.065%   0.000%   0.000%   0.002%
   61   10.1  1.5 -1.5   0.102%   0.000%   0.000%   0.000%   0.058%   0.000%   0.000%   0.012%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%  29.354%   0.000%   0.000%  12.439%   0.045%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   3.567%  38.260%   0.001%   0.000%   0.011%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.802%  40.755%   0.001%   0.000%   0.280%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%  23.422%   1.989%   0.000%   0.001%  16.426%
   73    5.1  0.5  0.5   0.000%   0.000%   0.983%   0.000%   0.000%   1.310%  39.543%   0.002%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   3.918%   0.615%   0.000%   0.002%  37.304%
   75    7.1  0.5  0.5   0.000%   0.000%  35.577%   0.000%   0.000%   2.252%   4.009%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.293%   0.000%   0.000%   0.715%   0.057%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.378%   0.040%   0.000%   0.000%   0.647%
   78   10.1  0.5  0.5   0.000%   0.000%   0.157%   0.000%   0.000%   0.218%   0.691%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.791%   0.273%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.945%   0.012%   0.000%   0.000%   0.108%
   81   13.1  0.5  0.5  33.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%  33.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5  33.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%  29.354%  12.439%   0.000%   0.000%   0.045%
   85    2.1  0.5 -0.5   0.000%   0.000%   3.567%   0.000%   0.001%  38.260%   0.011%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.802%   0.000%   0.001%  40.755%   0.280%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%  23.422%   0.000%   0.000%   1.989%  16.426%   0.001%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.983%   1.310%   0.000%   0.002%  39.543%
   89    6.1  0.5 -0.5   0.000%   0.000%   3.918%   0.000%   0.000%   0.615%  37.304%   0.002%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%  35.577%   2.252%   0.000%   0.000%   4.009%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.293%   0.715%   0.000%   0.000%   0.057%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.378%   0.000%   0.000%   0.040%   0.647%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.157%   0.218%   0.000%   0.000%   0.691%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.791%   0.000%   0.000%   0.273%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.945%   0.000%   0.000%   0.012%   0.108%   0.000%
   96   13.1  0.5 -0.5   0.000%  33.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5  33.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%  33.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%


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

              2       6      741.16       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     25773.97  21565.92   2473.00   1731.39      2.90      0.52
 REAL TIME  *     26578.83 SEC
 DISK USED  *       773.33 MB (local),        9.12 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.952980003783

              CI              CI           MULTI
   -109.90293493   -109.89798014   -109.33009136
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
