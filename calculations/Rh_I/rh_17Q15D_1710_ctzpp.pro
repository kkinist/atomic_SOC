
 Working directory              : /wrk/irikura/molpro.TYMmM0mrtX/
 Global scratch directory       : /wrk/irikura/molpro.TYMmM0mrtX/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.TYMmM0mrtX/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! 4F,4P,4F + 2F,2D,2P
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
 LABEL *   Rh atom, (17/10) active space                                                                                                                                 
  (32 PROC) 64 bit mpp version                                                           DATE: 14-Feb-24          TIME: 10:13:38  
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

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.70      0.49
 REAL TIME  *         1.50 SEC
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.326D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.321D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.469D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 6 4 2 5 3 2   6 4 5 3 1 7 9111514  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.210D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.188D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.436D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   1 2 7 9 5 4 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 4 5 1
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
   1    4    8    0   -109.30997365    -109.33689836   -0.02692471    0.24076082 0.00025543 0.00000000  0.17E+00      0.27
   2    3    6    0   -109.33599848    -109.33606179   -0.00006331    0.01246715 0.00003398 0.00000000  0.86E-02      0.48
   3   20   40    0   -109.33606192    -109.33606192   -0.00000000    0.00003340 0.00000087 0.00000000  0.28E-04      1.59
   4   20   40    0   -109.33606192    -109.33606192   -0.00000000    0.00000009 0.00000012 0.00000000  0.75E-07      2.69

 CONVERGENCE REACHED!  Final gradient:    0.00000010 ( 0.10E-06)
                       Final energy:   -109.33606192
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.378682212572
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792212
 One electron energy                          -194.10072924
 Two electron energy                            84.72204703
 Virial ratio                                    3.64404584
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.378682212481
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792212
 One electron energy                          -194.10072925
 Two electron energy                            84.72204703
 Virial ratio                                    3.64404584
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.378682212009
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792213
 One electron energy                          -194.10072925
 Two electron energy                            84.72204704
 Virial ratio                                    3.64404584
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.378682211749
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792213
 One electron energy                          -194.10072926
 Two electron energy                            84.72204705
 Virial ratio                                    3.64404584
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.378682210956
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792215
 One electron energy                          -194.10072928
 Two electron energy                            84.72204707
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.378682210740
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792217
 One electron energy                          -194.10072931
 Two electron energy                            84.72204710
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.378682210592
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36792216
 One electron energy                          -194.10072931
 Two electron energy                            84.72204709
 Virial ratio                                    3.64404583
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.324480883118
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36876879
 One electron energy                          -194.09096124
 Two electron energy                            84.76648036
 Virial ratio                                    3.64268152
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.324480880512
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36876886
 One electron energy                          -194.09096133
 Two electron energy                            84.76648045
 Virial ratio                                    3.64268152
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.324480879365
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36876889
 One electron energy                          -194.09096137
 Two electron energy                            84.76648049
 Virial ratio                                    3.64268152
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.303283482227
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300388
 One electron energy                          -189.61138119
 Two electron energy                            80.30809771
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.303283482121
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300386
 One electron energy                          -189.61138119
 Two electron energy                            80.30809771
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.303283482107
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300387
 One electron energy                          -189.61138120
 Two electron energy                            80.30809771
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.303283481938
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300386
 One electron energy                          -189.61138118
 Two electron energy                            80.30809769
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.303283481338
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300384
 One electron energy                          -189.61138115
 Two electron energy                            80.30809767
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.303283481117
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300383
 One electron energy                          -189.61138113
 Two electron energy                            80.30809765
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.303283480721
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.92300382
 One electron energy                          -189.61138112
 Two electron energy                            80.30809764
 Virial ratio                                    3.80819240
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.348755625846
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766053
 One electron energy                          -194.06559456
 Two electron energy                            84.71683893
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.348755625704
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766053
 One electron energy                          -194.06559456
 Two electron energy                            84.71683894
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.348755625287
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766054
 One electron energy                          -194.06559456
 Two electron energy                            84.71683894
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.348755624900
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766055
 One electron energy                          -194.06559458
 Two electron energy                            84.71683895
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.348755623964
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766057
 One electron energy                          -194.06559460
 Two electron energy                            84.71683897
 Virial ratio                                    3.64461772
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.348755623482
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766059
 One electron energy                          -194.06559463
 Two electron energy                            84.71683900
 Virial ratio                                    3.64461771
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.348755623404
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.34766058
 One electron energy                          -194.06559462
 Two electron energy                            84.71683900
 Virial ratio                                    3.64461771
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.330091363851
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184052
 One electron energy                          -194.10693513
 Two electron energy                            84.77684376
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.330091363353
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184054
 One electron energy                          -194.10693515
 Two electron energy                            84.77684379
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.330091363267
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184054
 One electron energy                          -194.10693515
 Two electron energy                            84.77684379
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.330091362565
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184056
 One electron energy                          -194.10693519
 Two electron energy                            84.77684382
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.330091362392
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38184057
 One electron energy                          -194.10693519
 Two electron energy                            84.77684383
 Virial ratio                                    3.64198233
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Doublet
 ==============================
 !MCSCF STATE 13.1 Doublet Energy             -109.305010878454
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03254610
 One electron energy                          -193.46147066
 Two electron energy                            84.15645979
 Virial ratio                                    3.66386128
 
 !MCSCF STATE 13.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Doublet
 ==============================
 !MCSCF STATE 14.1 Doublet Energy             -109.305010875531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03254613
 One electron energy                          -193.46147070
 Two electron energy                            84.15645982
 Virial ratio                                    3.66386128
 
 !MCSCF STATE 14.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Doublet
 ==============================
 !MCSCF STATE 15.1 Doublet Energy             -109.305010874364
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03254615
 One electron energy                          -193.46147071
 Two electron energy                            84.15645984
 Virial ratio                                    3.66386128
 
 !MCSCF STATE 15.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.219267359671
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     2.363381652060
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     4.842633579390
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.999999999703
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     1.636518989972
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     6.780678941389
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     5.157526724626
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     1.000000000000
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.000000083242
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.999999905931
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     3.936682519430
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     3.257831718835
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     4.781026027385
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     4.000000116425
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     0.063269847804
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     6.742574920075
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     5.219052572384
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.493327875186
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     2.549433361245
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     4.550653299581
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     4.000000142339
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     1.450717080843
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     6.506512440164
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     5.449466629655
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     2.232841173815
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000291533937
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.999718132805
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000000000016
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.767008194038
 !MCSCF expec    <13.1 Doublet|LXLX|13.1 Doublet>     0.999999999999
 !MCSCF expec    <14.1 Doublet|LXLX|14.1 Doublet>     0.000000006928
 !MCSCF expec    <15.1 Doublet|LXLX|15.1 Doublet>     0.999999985663
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     0.488580886134
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     1.009787992247
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     3.202703139265
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.000000000137
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     8.990225216268
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     3.511439378485
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     6.797153537618
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     1.000000000000
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.999999916760
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.000000094098
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     3.064846270986
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     4.781228681683
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     0.093786646965
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     3.999999904386
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     6.934820198310
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     5.218320244246
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     3.906204139652
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     0.394469054028
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     1.001311022783
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     3.468944289847
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     3.999999874504
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     8.998695399658
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     3.605583435804
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     6.530944198168
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     3.603852259334
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     3.999708448716
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000281865934
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     1.000000000023
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     0.396238366802
 !MCSCF expec    <13.1 Doublet|LYLY|13.1 Doublet>     0.999999999981
 !MCSCF expec    <14.1 Doublet|LYLY|14.1 Doublet>     0.999999993076
 !MCSCF expec    <15.1 Doublet|LYLY|15.1 Doublet>     0.000000014337
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     8.292151754195
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     8.626830355693
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     3.954663281345
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000000160
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     1.373255793759
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     1.707881680126
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     0.045319737756
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>    -0.000000000000
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999999998
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.999999999971
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     4.998471209584
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     3.960939599482
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     7.125187325650
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     3.999999979189
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     5.001909953886
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     0.039104835679
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     2.874743287965
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     8.112203070786
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     8.449255615971
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     3.980402410572
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     3.999999983157
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     1.550587519498
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     1.887904124032
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     0.019589172177
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     0.163306566851
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000017347
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000001261
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     3.999999999961
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.836753439159
 !MCSCF expec    <13.1 Doublet|LZLZ|13.1 Doublet>     0.000000000019
 !MCSCF expec    <14.1 Doublet|LZLZ|14.1 Doublet>     0.999999999996
 !MCSCF expec    <15.1 Doublet|LZLZ|15.1 Doublet>     1.000000000000
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 2 4 5 6 1 1 2 3   4 6 5 1 3 2 4 6 5 2   4 3 6 5 1 9 71211 8  14151310 2 4 6 5 3 1
                                        912 711 815141310 4   2 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 3 1 2 3   1 2 4 6 8 7 9 510 3   1 2 4 6 5 810 7 9 3   1 2 4 610 5 8 7 9 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99989    -3.75648     1  1  s    1.00114
    2.1     1.55365    -0.32032     1  1  d2-  1.00403
    3.1     1.55365    -0.32032     1  1  d0   1.00403
    4.1     1.55365    -0.32032     1  1  d1+  1.00403
    5.1     1.55365    -0.32032     1  1  d2+  1.00403
    6.1     1.55365    -0.32032     1  1  d1-  1.00403
    7.1     1.23328    -0.13509     1  2  s    0.97538
    1.2     1.99953    -2.38281     1  1  py   0.99975
    2.2     1.99953    -2.38281     1  1  pz   0.99975
    3.2     1.99953    -2.38281     1  1  px   0.99975
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a2a2a 222      0.00005280      0.00006857      0.00000000      0.99999877     -0.00002814     -0.00000212     -0.00000045
 2a2a2a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222aaa2 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2aa222a 222     -0.00000333     -0.00000125      0.99431555     -0.00000005      0.00000344      0.00002184     -0.10646197
 2a22a2a 222     -0.00000576     -0.00000182      0.04761125      0.00000020     -0.00001437     -0.00009123      0.44467146
 2aa2a22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 222a2aa 222     -0.00001152     -0.00000363      0.09522248      0.00000040     -0.00002874     -0.00018247      0.88934282
 22a2aa2 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2aaa222 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22aaa22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a222aa 222      0.83802192      0.00127811      0.00000393     -0.00004500     -0.00001005     -0.31259509     -0.00005370
 2aa22a2 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2222aaa 222     -0.00123242      0.80871155      0.00000135     -0.00006614     -0.38207612      0.00001495     -0.00000920
 22aa22a 222      0.18812834      0.00029297      0.00000088     -0.00001123     -0.00001033     -0.60382664     -0.00012154
 22a22aa 222      0.00021167     -0.13659556     -0.00000023      0.00002673      0.61752782     -0.00001090      0.00001942
 222aa2a 222      0.51217402      0.00077067      0.00000240     -0.00002554      0.00000784      0.73326340      0.00015682
 2a2a22a 222     -0.00086579      0.57212107      0.00000095     -0.00001984      0.68751348     -0.00000393      0.00002444
 2a22aa2 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2aa22 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 22aa2a2 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:       -109.37868221   -109.37868221   -109.37868221   -109.37868221   -109.37868221   -109.37868221   -109.37868221

 State:                8               9              10              11              12              13              14
 22a2a2a 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2a2a2 222      0.00000000      0.00000000      0.00000000      0.00012772      0.00002384      0.00008726      0.99956328
 222aaa2 222      0.00000000     -0.00000000     -0.00000000     -0.00037799      0.99467084     -0.00000002     -0.00002344
 2aa222a 222     -0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2a22a2a 222      0.89375384      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2aa2a22 222     -0.00009891     -0.00000000     -0.00000000     -0.00003267      0.08834737      0.00000101     -0.00000426
 222a2aa 222     -0.44687696     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 22a2aa2 222      0.00000000     -0.00009890      0.00000003     -0.11248297     -0.00004273      0.00000527      0.00002645
 2aaa222 222      0.00000000     -0.00009890      0.00000003      0.88688924      0.00033694      0.00000173     -0.00011487
 22aaa22 222     -0.00000000     -0.00000003     -0.00009890     -0.00000962     -0.00000009      0.88349366     -0.00008792
 2a222aa 222     -0.00000000     -0.00012893     -0.44687688      0.00000000      0.00000000      0.00000000      0.00000000
 2aa22a2 222     -0.00000000     -0.00000003     -0.00009890     -0.00004207      0.00000000     -0.35342192     -0.00003389
 2222aaa 222     -0.00000000      0.44687689     -0.00012893     -0.00000000     -0.00000000      0.00000000      0.00000000
 22aa22a 222      0.00000000      0.00022331      0.77401353     -0.00000000      0.00000000     -0.00000000      0.00000000
 22a22aa 222     -0.00000000      0.77401352     -0.00022331     -0.00000001     -0.00000000      0.00000000      0.00000000
 222aa2a 222      0.00000000      0.00012893      0.44687690     -0.00000000      0.00000000     -0.00000000      0.00000000
 2a2a22a 222      0.00000000     -0.44687690      0.00012893      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22aa2 222     -0.00000000     -0.00000005     -0.00017131      0.00002984      0.00000005     -0.30603705      0.00007032
 2a2aa22 222      0.00000000     -0.00017131      0.00000005     -0.44710367     -0.00016986     -0.00000404      0.00005105
 22aa2a2 222     -0.00019780      0.00000000      0.00000000      0.00001633     -0.04417369     -0.00000050      0.00000213
 
 Energy:       -109.32448088   -109.32448088   -109.32448088   -109.30328348   -109.30328348   -109.30328348   -109.30328348

 State:               15              16              17
 22a2a2a 222     -0.00000000      0.00000000      0.00000000
 2a2a2a2 222     -0.00001361      0.00000242      0.00007881
 222aaa2 222      0.00000324     -0.09877537      0.00000001
 2aa222a 222     -0.00000000      0.00000000     -0.00000000
 2a22a2a 222     -0.00000000      0.00000001     -0.00000000
 2aa2a22 222     -0.00002925      0.88966070     -0.00000000
 222a2aa 222      0.00000000     -0.00000000     -0.00000000
 22a2aa2 222      0.88693235      0.00002927     -0.00007674
 2aaa222 222     -0.11282191     -0.00000460      0.00005549
 22aaa22 222      0.00000538     -0.00000099      0.13689551
 2a222aa 222      0.00000000      0.00000000      0.00000000
 2aa22a2 222      0.00006782      0.00000040      0.82121518
 2222aaa 222     -0.00000000      0.00000000     -0.00000000
 22aa22a 222     -0.00000000      0.00000000     -0.00000000
 22a22aa 222     -0.00000001      0.00000000     -0.00000000
 222aa2a 222     -0.00000000      0.00000000     -0.00000000
 2a2a22a 222      0.00000000     -0.00000000      0.00000000
 2a22aa2 222     -0.00004226      0.00000034     -0.55316546
 2a2aa22 222     -0.44693288     -0.00001424      0.00001227
 22aa2a2 222      0.00001462     -0.44483036      0.00000000
 
 Energy:       -109.30328348   -109.30328348   -109.30328348
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a2a2b 222     -0.00011029      0.00000888      0.00000127      0.81355783      0.00002711      0.00012760      0.00000889
 2aa222b 222      0.00001978     -0.00000896      0.81156243     -0.00000064      0.00000009     -0.00000612     -0.05694555
 222a2ab 222      0.00000349      0.00000276      0.05093364     -0.00000802      0.00001379      0.00004218      0.72588348
 2a222ab 222      0.69085614      0.00108700     -0.00001776      0.00012948      0.00005602     -0.22851196      0.00001120
 2a22a2b 222      0.00000175      0.00000138      0.02546683     -0.00000401      0.00000689      0.00002109      0.36294179
 2222aab 222     -0.00104935      0.67203398      0.00000763      0.00000183     -0.27905257     -0.00004412      0.00000221
 222aa2b 222      0.39396956      0.00058334     -0.00000757     -0.00004255     -0.00017338      0.61179140     -0.00003691
 22aa22b 222      0.17140751      0.00029079     -0.00000588      0.00009932      0.00013244     -0.48514933      0.00002778
 22a22ab 222      0.00021540     -0.13500429     -0.00000217     -0.00001506      0.49651214      0.00013073     -0.00000877
 2a2a22b 222     -0.00067628      0.43819965      0.00000388     -0.00002426      0.58093173      0.00018230     -0.00001298
 2ab222a 222     -0.00000989      0.00000448     -0.40578120      0.00000032     -0.00000005      0.00000306      0.02847278
 2ba222a 222     -0.00000989      0.00000448     -0.40578123      0.00000032     -0.00000005      0.00000306      0.02847277
 22b2a2a 222      0.00005514     -0.00000444     -0.00000063     -0.40677890     -0.00001355     -0.00006380     -0.00000445
 202222a 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 222202a 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a2b2a 222      0.00005514     -0.00000444     -0.00000063     -0.40677892     -0.00001355     -0.00006380     -0.00000445
 220222a 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 222022a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222b2aa 222     -0.00000175     -0.00000138     -0.02546681      0.00000401     -0.00000689     -0.00002109     -0.36294174
 222a2ba 222     -0.00000175     -0.00000138     -0.02546683      0.00000401     -0.00000689     -0.00002109     -0.36294174
 2a222ba 222     -0.34542806     -0.00054350      0.00000888     -0.00006474     -0.00002801      0.11425597     -0.00000560
 2b222aa 222     -0.34542807     -0.00054350      0.00000888     -0.00006474     -0.00002801      0.11425599     -0.00000560
 2222baa 222      0.00052468     -0.33601699     -0.00000382     -0.00000091      0.13952629      0.00002206     -0.00000111
 2222aba 222      0.00052468     -0.33601699     -0.00000382     -0.00000091      0.13952628      0.00002206     -0.00000111
 222ba2a 222     -0.19698478     -0.00029167      0.00000378      0.00002127      0.00008669     -0.30589569      0.00001846
 2a2b22a 222      0.00033814     -0.21909982     -0.00000194      0.00001213     -0.29046586     -0.00009115      0.00000649
 222ab2a 222     -0.19698478     -0.00029167      0.00000378      0.00002127      0.00008669     -0.30589571      0.00001846
 2b2a22a 222      0.00033814     -0.21909983     -0.00000194      0.00001213     -0.29046588     -0.00009115      0.00000649
 222220a 222      0.00000000      0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000
 2b22a2a 222     -0.00000087     -0.00000069     -0.01273342      0.00000201     -0.00000345     -0.00001055     -0.18147090
 2a22b2a 222     -0.00000087     -0.00000069     -0.01273342      0.00000201     -0.00000345     -0.00001055     -0.18147089
 22ba22a 222     -0.08570376     -0.00014539      0.00000294     -0.00004966     -0.00006622      0.24257467     -0.00001389
 22b22aa 222     -0.00010770      0.06750215      0.00000108      0.00000753     -0.24825607     -0.00006536      0.00000439
 22a22ba 222     -0.00010770      0.06750215      0.00000108      0.00000753     -0.24825607     -0.00006536      0.00000439
 22ab22a 222     -0.08570375     -0.00014539      0.00000294     -0.00004966     -0.00006622      0.24257466     -0.00001389
 2ab2a22 222     -0.00000021     -0.00000017     -0.00305631      0.00000048     -0.00000083     -0.00000253     -0.04355718
 2a22220 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22222a0 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 222a220 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2222a20 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a2220 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 220a222 222     -0.01542815     -0.00002617      0.00000053     -0.00000894     -0.00001192      0.04366762     -0.00000250
 222a022 222      0.03075865      0.00004776     -0.00000075      0.00000375     -0.00000106      0.00268091     -0.00000025
 22022a2 222     -0.00001939      0.01215155      0.00000020      0.00000136     -0.04469037     -0.00001177      0.00000079
 22202a2 222      0.00001293     -0.00810104     -0.00000013     -0.00000090      0.02979358      0.00000784     -0.00000053
 202a222 222     -0.02561594     -0.00003904      0.00000057     -0.00000077      0.00000504     -0.01723678      0.00000108
 222a202 222      0.01028544      0.00001745     -0.00000035      0.00000596      0.00000795     -0.02911175      0.00000167
 2a20222 222      0.00000050     -0.00000034      0.02302578      0.00000019     -0.00000036     -0.00000128     -0.02056934
 222baa2 222     -0.00000009     -0.00000007     -0.00132342      0.00000021     -0.00000036     -0.00000110     -0.01886081
 22220a2 222     -0.00004161      0.02682222      0.00000027     -0.00000081      0.01529219      0.00000555     -0.00000041
 222aab2 222      0.00000009      0.00000007      0.00132342     -0.00000021      0.00000036      0.00000110      0.01886080
 20222a2 222      0.00004807     -0.03087273     -0.00000033      0.00000036     -0.00039541     -0.00000163      0.00000015
 2a22202 222      0.00000068     -0.00000020      0.02567262     -0.00000023      0.00000036      0.00000091      0.01715228
 22aab22 222     -0.03254788     -0.00005012      0.00000076     -0.00000261      0.00000352     -0.01149948      0.00000077
 2baa222 222     -0.00005177      0.03331019      0.00000035     -0.00000067      0.00905724      0.00000415     -0.00000032
 2ba22a2 222      0.03254788      0.00005012     -0.00000076      0.00000261     -0.00000352      0.01149948     -0.00000077
 22a2ba2 222      0.00005177     -0.03331019     -0.00000035      0.00000067     -0.00905724     -0.00000415      0.00000032
 22aba22 222      0.02072766      0.00003261     -0.00000053      0.00000388      0.00000168     -0.00685601      0.00000034
 2aab222 222      0.00003148     -0.02016295     -0.00000023     -0.00000005      0.00837237      0.00000132     -0.00000007
 2aa22b2 222     -0.01182022     -0.00001750      0.00000023      0.00000128      0.00000520     -0.01835549      0.00000111
 22a2ab2 222     -0.00002029      0.01314725      0.00000012     -0.00000073      0.01742962      0.00000547     -0.00000039
 2ba2a22 222      0.00000010      0.00000008      0.00152816     -0.00000024      0.00000041      0.00000127      0.02177859
 2aa2b22 222      0.00000010      0.00000008      0.00152816     -0.00000024      0.00000041      0.00000127      0.02177859
 2a2ba22 222      0.00001939     -0.01215155     -0.00000020     -0.00000136      0.04469037      0.00001177     -0.00000079
 2a22ab2 222      0.01542815      0.00002617     -0.00000053      0.00000894      0.00001192     -0.04366762      0.00000250
 2a02222 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2202a22 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a2022 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 20a2222 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2220a22 222      0.00000331     -0.00000027     -0.00000004     -0.02440907     -0.00000081     -0.00000383     -0.00000027
 2222a02 222      0.00000331     -0.00000027     -0.00000004     -0.02440907     -0.00000081     -0.00000383     -0.00000027
 222aba2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2b2a2a2 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2a2b2a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 22ba2a2 222     -0.00000021     -0.00000017     -0.00305631      0.00000048     -0.00000083     -0.00000253     -0.04355718
 
 Energy:       -109.34875563   -109.34875563   -109.34875563   -109.34875562   -109.34875562   -109.34875562   -109.34875562

 State:                8               9              10              11              12              13              14
 22a2a2b 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000
 2aa222b 222      0.00000000      0.00000000     -0.00000000     -0.00000002      0.00000000     -0.00000001     -0.00000000
 222a2ab 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.33779109     -0.00000026
 2a222ab 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000146      0.00002811
 2a22a2b 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.67558208      0.00000052
 2222aab 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000026      0.33779103
 222aa2b 222     -0.00000000      0.00000001      0.00000000      0.00000000      0.00000000      0.00000146     -0.00002811
 22aa22b 222      0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000000      0.00000254     -0.00004868
 22a22ab 222      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000045      0.58507128
 2a2a22b 222      0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000      0.00000026     -0.33779104
 2ab222a 222      0.00000016     -0.00000170      0.00000038      0.52003088      0.00000082      0.00000001      0.00000000
 2ba222a 222     -0.00000016      0.00000170     -0.00000038     -0.52003087     -0.00000082      0.00000000     -0.00000000
 22b2a2a 222     -0.10507537      0.00004584     -0.00004929      0.00000084     -0.50930470      0.00000000      0.00000000
 202222a 222      0.50930470     -0.00002832     -0.00007117      0.00000001     -0.10507536      0.00000000      0.00000000
 222202a 222      0.50930469     -0.00002832     -0.00007117      0.00000001     -0.10507537      0.00000000      0.00000000
 22a2b2a 222      0.10507537     -0.00004584      0.00004929     -0.00000084      0.50930469     -0.00000000      0.00000000
 220222a 222     -0.50930466      0.00002832      0.00007117     -0.00000001      0.10507536     -0.00000000     -0.00000000
 222022a 222     -0.16365441     -0.00002554      0.00007827     -0.00000073      0.49360846     -0.00000000      0.00000000
 222b2aa 222      0.00000014     -0.00000147      0.00000033      0.45035993      0.00000071      0.16889554      0.00000013
 222a2ba 222     -0.00000014      0.00000147     -0.00000033     -0.45035992     -0.00000071      0.16889555      0.00000013
 2a222ba 222      0.00003255      0.45033807      0.00443970      0.00000147      0.00003339      0.00000073     -0.00001405
 2b222aa 222     -0.00003255     -0.45033806     -0.00443970     -0.00000147     -0.00003339      0.00000073     -0.00001405
 2222baa 222     -0.00005142      0.00443970     -0.45033806      0.00000034      0.00005459      0.00000013     -0.16889551
 2222aba 222      0.00005142     -0.00443970      0.45033806     -0.00000034     -0.00005459      0.00000013     -0.16889552
 222ba2a 222     -0.00003255     -0.45033806     -0.00443970     -0.00000147     -0.00003339     -0.00000073      0.00001405
 2a2b22a 222     -0.00005142      0.00443970     -0.45033805      0.00000034      0.00005459     -0.00000013      0.16889552
 222ab2a 222      0.00003255      0.45033805      0.00443970      0.00000147      0.00003339     -0.00000073      0.00001405
 2b2a22a 222      0.00005142     -0.00443970      0.45033805     -0.00000034     -0.00005459     -0.00000013      0.16889552
 222220a 222     -0.34565029      0.00005386     -0.00000710      0.00000072     -0.38853310      0.00000000      0.00000000
 2b22a2a 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.33779104     -0.00000026
 2a22b2a 222     -0.00000000      0.00000000      0.00000000      0.00000001     -0.00000000     -0.33779104     -0.00000026
 22ba22a 222     -0.00001879     -0.26000277     -0.00256326     -0.00000085     -0.00001928     -0.00000127      0.00002434
 22b22aa 222      0.00002969     -0.00256326      0.26000277     -0.00000020     -0.00003152      0.00000022     -0.29253564
 22a22ba 222     -0.00002969      0.00256326     -0.26000278      0.00000020      0.00003152      0.00000022     -0.29253563
 22ab22a 222      0.00001879      0.26000279      0.00256326      0.00000085      0.00001928     -0.00000127      0.00002434
 2ab2a22 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.20834498     -0.00000016
 2a22220 222      0.00000005     -0.00000054      0.00000012      0.16488803      0.00000026      0.00000000     -0.00000000
 22222a0 222      0.00001883     -0.00162548      0.16488001     -0.00000013     -0.00001999     -0.00000000     -0.00000000
 222a220 222     -0.00001192     -0.16488000     -0.00162548     -0.00000054     -0.00001222     -0.00000000      0.00000000
 2222a20 222      0.03331662     -0.00001453      0.00001563     -0.00000027      0.16148704     -0.00000000      0.00000000
 22a2220 222     -0.16148703      0.00000898      0.00002257     -0.00000000      0.03331662     -0.00000000      0.00000000
 220a222 222      0.00000001      0.00012135      0.00000120      0.00000000      0.00000001     -0.00000059      0.00001126
 222a022 222      0.00000412      0.05696799      0.00056162      0.00000019      0.00000422      0.00000059     -0.00001126
 22022a2 222     -0.00000001      0.00000120     -0.00012135      0.00000000      0.00000001      0.00000010     -0.13532404
 22202a2 222     -0.00000650      0.00056162     -0.05696799      0.00000004      0.00000691      0.00000010     -0.13532404
 202a222 222      0.00000412      0.05696799      0.00056162      0.00000019      0.00000422      0.00000059     -0.00001126
 222a202 222      0.00000412      0.05696799      0.00056162      0.00000019      0.00000422     -0.00000059      0.00001126
 2a20222 222     -0.00000002      0.00000019     -0.00000004     -0.05697076     -0.00000009      0.13532404      0.00000010
 222baa2 222      0.00000001     -0.00000009      0.00000002      0.02842470      0.00000004      0.13532404      0.00000010
 22220a2 222     -0.00000650      0.00056162     -0.05696799      0.00000004      0.00000691     -0.00000010      0.13532404
 222aab2 222      0.00000001     -0.00000009      0.00000002      0.02842470      0.00000004     -0.13532404     -0.00000010
 20222a2 222     -0.00000650      0.00056162     -0.05696799      0.00000004      0.00000691     -0.00000010      0.13532404
 2a22202 222     -0.00000002      0.00000019     -0.00000004     -0.05697076     -0.00000009     -0.13532404     -0.00000010
 22aab22 222      0.00000356      0.04923063      0.00048534      0.00000016      0.00000365     -0.00000056      0.00001084
 2baa222 222     -0.00000562      0.00048534     -0.04923063      0.00000004      0.00000597      0.00000010     -0.13021562
 2ba22a2 222      0.00000356      0.04923063      0.00048534      0.00000016      0.00000365     -0.00000056      0.00001084
 22a2ba2 222     -0.00000562      0.00048534     -0.04923063      0.00000004      0.00000597      0.00000010     -0.13021562
 22aba22 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000045     -0.00000867
 2aab222 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000008      0.10417250
 2aa22b2 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000045     -0.00000867
 22a2ab2 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000008      0.10417249
 2ba2a22 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.10417249      0.00000008
 2aa2b22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.10417249      0.00000008
 2a2ba22 222      0.00000649     -0.00056043      0.05684664     -0.00000004     -0.00000689      0.00000007     -0.09021603
 2a22ab2 222     -0.00000411     -0.05684664     -0.00056043     -0.00000019     -0.00000421     -0.00000039      0.00000751
 2a02222 222     -0.00000003      0.00000028     -0.00000006     -0.08539546     -0.00000013     -0.00000000     -0.00000000
 2202a22 222     -0.01725467      0.00000753     -0.00000809      0.00000014     -0.08363409      0.00000000      0.00000000
 22a2022 222      0.08363409     -0.00000465     -0.00001169      0.00000000     -0.01725467     -0.00000000      0.00000000
 20a2222 222      0.08363409     -0.00000465     -0.00001169      0.00000000     -0.01725467     -0.00000000      0.00000000
 2220a22 222      0.03670626      0.00000234     -0.00001214      0.00000009     -0.06574351      0.00000000     -0.00000000
 2222a02 222     -0.05972883      0.00000770      0.00000134      0.00000009     -0.04584785      0.00000000     -0.00000000
 222aba2 222     -0.00000002      0.00000019     -0.00000004     -0.05684940     -0.00000009     -0.00000000      0.00000000
 2b2a2a2 222     -0.01148676      0.00000501     -0.00000539      0.00000009     -0.05567682      0.00000000     -0.00000000
 2a2b2a2 222      0.05396093     -0.00000519     -0.00000404     -0.00000005      0.01789058      0.00000000     -0.00000000
 22ba2a2 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.05208625      0.00000004
 
 Energy:       -109.33009136   -109.33009136   -109.33009136   -109.33009136   -109.33009136   -109.30501088   -109.30501088

 State:               15
 22a2a2b 222      0.00000000
 2aa222b 222     -0.00000000
 222a2ab 222      0.00000146
 2a222ab 222     -0.33779102
 2a22a2b 222     -0.00000293
 2222aab 222      0.00002811
 222aa2b 222      0.33779104
 22aa22b 222      0.58507128
 22a22ab 222      0.00004868
 2a2a22b 222     -0.00002811
 2ab222a 222     -0.00000000
 2ba222a 222      0.00000000
 22b2a2a 222     -0.00000000
 202222a 222      0.00000000
 222202a 222     -0.00000000
 22a2b2a 222     -0.00000000
 220222a 222     -0.00000000
 222022a 222      0.00000000
 222b2aa 222     -0.00000073
 222a2ba 222     -0.00000073
 2a222ba 222      0.16889551
 2b222aa 222      0.16889551
 2222baa 222     -0.00001405
 2222aba 222     -0.00001405
 222ba2a 222     -0.16889552
 2a2b22a 222      0.00001405
 222ab2a 222     -0.16889552
 2b2a22a 222      0.00001405
 222220a 222      0.00000000
 2b22a2a 222      0.00000146
 2a22b2a 222      0.00000146
 22ba22a 222     -0.29253565
 22b22aa 222     -0.00002434
 22a22ba 222     -0.00002434
 22ab22a 222     -0.29253563
 2ab2a22 222      0.00000090
 2a22220 222      0.00000000
 22222a0 222     -0.00000000
 222a220 222     -0.00000000
 2222a20 222     -0.00000000
 22a2220 222     -0.00000000
 220a222 222     -0.13532405
 222a022 222      0.13532404
 22022a2 222     -0.00001126
 22202a2 222     -0.00001126
 202a222 222      0.13532404
 222a202 222     -0.13532404
 2a20222 222     -0.00000059
 222baa2 222     -0.00000059
 22220a2 222      0.00001126
 222aab2 222      0.00000059
 20222a2 222      0.00001126
 2a22202 222      0.00000059
 22aab22 222     -0.13021562
 2baa222 222     -0.00001084
 2ba22a2 222     -0.13021562
 22a2ba2 222     -0.00001084
 22aba22 222      0.10417250
 2aab222 222      0.00000867
 2aa22b2 222      0.10417249
 22a2ab2 222      0.00000867
 2ba2a22 222     -0.00000045
 2aa2b22 222     -0.00000045
 2a2ba22 222     -0.00000751
 2a22ab2 222     -0.09021602
 2a02222 222      0.00000000
 2202a22 222      0.00000000
 22a2022 222      0.00000000
 20a2222 222      0.00000000
 2220a22 222     -0.00000000
 2222a02 222      0.00000000
 222aba2 222      0.00000000
 2b2a2a2 222     -0.00000000
 2a2b2a2 222      0.00000000
 22ba2a2 222     -0.00000023
 
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
 CPU TIMES  *         3.47      2.77      0.49
 REAL TIME  *         4.47 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
 SF USED    *        12.10 MB
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
 Smallest eigenvalue of S: -0.6855619E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.7649157E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.3211156E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.5408052E-15. Vector removed

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

 Number of blocks in overlap matrix:    70   Smallest eigenvalue:  0.12D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    871132 words, CPU-Time:      0.33 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    564595 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.37868221     0.00000000    -0.67898576  0.30D-01  0.99D-01     1.22
    1     2     2     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.67988712  0.30D-01  0.10D+00     1.22
    1     3     3     1.00000000     0.00000000  -109.37868221     0.00000000    -0.68122551  0.30D-01  0.10D+00     1.22
    1     4     4     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.68204364  0.30D-01  0.10D+00     1.22
    1     5     5     1.00000000     0.00000000  -109.37868221    -0.00000000    -0.67947183  0.30D-01  0.10D+00     1.22
    1     6     6     1.00000000     0.00000000  -109.37868221     0.00000000    -0.67997770  0.30D-01  0.10D+00     1.22
    1     7     7     1.00000000     0.00000000  -109.37868221     0.00000000    -0.67869786  0.30D-01  0.99D-01     1.22
    1     8     8     1.00000000     0.00000000  -109.32448088     0.00000000    -0.69272370  0.37D-01  0.10D+00     1.22
    1     9     9     1.00000000     0.00000000  -109.32448088     0.00000000    -0.69265386  0.38D-01  0.10D+00     1.22
    1    10    10     1.00000000     0.00000000  -109.32448088     0.00000000    -0.69255528  0.38D-01  0.10D+00     1.22
    1    11    11     1.00000000     0.00000000  -109.30328348     0.00000000    -0.68410413  0.71D-01  0.87D-01     1.22
    1    12    12     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68531401  0.72D-01  0.87D-01     1.22
    1    13    13     1.00000000     0.00000000  -109.30328348     0.00000000    -0.68198882  0.71D-01  0.86D-01     1.22
    1    14    14     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68381755  0.72D-01  0.86D-01     1.22
    1    15    15     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68246548  0.71D-01  0.86D-01     1.22
    1    16    16     1.00000000     0.00000000  -109.30328348     0.00000000    -0.68190730  0.70D-01  0.86D-01     1.22
    1    17    17     1.00000000     0.00000000  -109.30328348    -0.00000000    -0.68347704  0.70D-01  0.86D-01     1.22
    2     1     1     1.08864780    -0.56229916  -109.94098138    -0.56229916    -0.02062574  0.21D-02  0.26D-02   152.80
    2     2     2     1.08859443    -0.56206720  -109.94074942    -0.56206720    -0.02072671  0.21D-02  0.26D-02   152.80
    2     3     3     1.08846049    -0.56179631  -109.94047852    -0.56179631    -0.02070892  0.20D-02  0.26D-02   152.80
    2     4     4     1.08842582    -0.56176430  -109.94044651    -0.56176430    -0.02068237  0.20D-02  0.26D-02   152.80
    2     5     5     1.08837617    -0.56148290  -109.94016511    -0.56148290    -0.02079115  0.20D-02  0.26D-02   152.80
    2     6     6     1.08837188    -0.56141612  -109.94009833    -0.56141612    -0.02082555  0.21D-02  0.26D-02   152.80
    2     7     7     1.08833686    -0.56132690  -109.94000911    -0.56132690    -0.02082210  0.20D-02  0.26D-02   152.80
    2     8     8     1.09495360    -0.57167322  -109.89615410    -0.57167322    -0.02130060  0.28D-02  0.27D-02   152.80
    2     9     9     1.09501135    -0.57151430  -109.89599518    -0.57151430    -0.02146462  0.29D-02  0.27D-02   152.80
    2    10    10     1.09498067    -0.57147962  -109.89596050    -0.57147962    -0.02144920  0.29D-02  0.27D-02   152.80
    2    11    11     1.10655767    -0.56297509  -109.86625857    -0.56297509    -0.02656048  0.37D-02  0.33D-02   152.80
    2    12    12     1.10646012    -0.56285518  -109.86613867    -0.56285518    -0.02657981  0.37D-02  0.33D-02   152.80
    2    13    13     1.10708209    -0.56262982  -109.86591331    -0.56262982    -0.02697451  0.39D-02  0.33D-02   152.80
    2    14    14     1.10637176    -0.56235865  -109.86564213    -0.56235865    -0.02676229  0.37D-02  0.33D-02   152.80
    2    15    15     1.10636769    -0.56233934  -109.86562282    -0.56233934    -0.02677565  0.37D-02  0.33D-02   152.80
    2    16    16     1.10626271    -0.56201007  -109.86529355    -0.56201007    -0.02681069  0.37D-02  0.33D-02   152.80
    2    17    17     1.10657361    -0.56191088  -109.86519436    -0.56191088    -0.02693279  0.39D-02  0.32D-02   152.80
    3     1     1     1.08578688    -0.58380246  -109.96248467    -0.02150329    -0.00147416  0.91D-04  0.24D-03   305.84
    3     2     2     1.08573408    -0.58375327  -109.96243548    -0.02168606    -0.00150663  0.93D-04  0.24D-03   305.84
    3     3     3     1.08557490    -0.58361029  -109.96229250    -0.02181398    -0.00155848  0.92D-04  0.25D-03   305.84
    3     4     4     1.08553985    -0.58357647  -109.96225868    -0.02181217    -0.00156499  0.92D-04  0.24D-03   305.84
    3     5     5     1.08546440    -0.58348466  -109.96216687    -0.02200176    -0.00161166  0.95D-04  0.25D-03   305.84
    3     6     6     1.08545550    -0.58347191  -109.96215412    -0.02205579    -0.00162311  0.97D-04  0.25D-03   305.84
    3     7     7     1.08540542    -0.58341305  -109.96209526    -0.02208614    -0.00164047  0.96D-04  0.25D-03   305.84
    3     8     8     1.09020360    -0.59372665  -109.91820753    -0.02205343    -0.00164959  0.15D-03  0.25D-03   305.84
    3     9     9     1.09020480    -0.59369238  -109.91817326    -0.02217807    -0.00167885  0.16D-03  0.26D-03   305.84
    3    10    10     1.09016939    -0.59365907  -109.91813994    -0.02217945    -0.00168662  0.16D-03  0.26D-03   305.84
    3    11    11     1.09630471    -0.58988542  -109.89316890    -0.02691033    -0.00255181  0.16D-03  0.44D-03   305.84
    3    12    12     1.09615537    -0.58980100  -109.89308448    -0.02694582    -0.00257034  0.16D-03  0.44D-03   305.84
    3    13    13     1.09608386    -0.58967498  -109.89295846    -0.02704515    -0.00262893  0.16D-03  0.44D-03   305.84
    3    14    14     1.09608676    -0.58963443  -109.89291791    -0.02727578    -0.00258598  0.16D-03  0.44D-03   305.84
    3    15    15     1.09583452    -0.58952756  -109.89281104    -0.02718822    -0.00262453  0.16D-03  0.44D-03   305.84
    3    16    16     1.09566284    -0.58933264  -109.89261612    -0.02732257    -0.00270024  0.17D-03  0.44D-03   305.84
    3    17    17     1.09536198    -0.58903689  -109.89232037    -0.02712601    -0.00267234  0.17D-03  0.44D-03   305.84
    4     1     1     1.08873273    -0.58586146  -109.96454367    -0.00205900    -0.00024930  0.15D-04  0.41D-04   458.92
    4     2     2     1.08872844    -0.58586037  -109.96454259    -0.00210711    -0.00025244  0.15D-04  0.41D-04   458.92
    4     3     3     1.08868345    -0.58582756  -109.96450977    -0.00221727    -0.00026367  0.15D-04  0.42D-04   458.92
    4     4     4     1.08866248    -0.58581488  -109.96449709    -0.00223842    -0.00026847  0.15D-04  0.43D-04   458.92
    4     5     5     1.08863569    -0.58579776  -109.96447997    -0.00231310    -0.00027660  0.16D-04  0.44D-04   458.92
    4     6     6     1.08863234    -0.58579756  -109.96447977    -0.00232565    -0.00027725  0.16D-04  0.44D-04   458.92
    4     7     7     1.08860317    -0.58577848  -109.96446069    -0.00236543    -0.00028480  0.16D-04  0.45D-04   458.92
    4     8     8     1.09281448    -0.59596588  -109.92044677    -0.00223923    -0.00029726  0.27D-04  0.45D-04   458.92
    4     9     9     1.09277829    -0.59595588  -109.92043676    -0.00226351    -0.00030448  0.28D-04  0.46D-04   458.92
    4    10    10     1.09275275    -0.59594089  -109.92042177    -0.00228182    -0.00031011  0.29D-04  0.47D-04   458.92
    4    11    11     1.10332990    -0.59375114  -109.89703462    -0.00386572    -0.00055668  0.55D-04  0.78D-04   458.92
    4    12    12     1.10322067    -0.59370898  -109.89699246    -0.00390798    -0.00057688  0.56D-04  0.81D-04   458.92
    4    13    13     1.10324181    -0.59370254  -109.89698602    -0.00402757    -0.00058371  0.56D-04  0.82D-04   458.92
    4    14    14     1.10295969    -0.59356996  -109.89685344    -0.00393553    -0.00061870  0.59D-04  0.86D-04   458.92
    4    15    15     1.10289859    -0.59355232  -109.89683580    -0.00402476    -0.00062537  0.58D-04  0.89D-04   458.92
    4    16    16     1.10288117    -0.59352258  -109.89680606    -0.00418994    -0.00064033  0.62D-04  0.88D-04   458.92
    4    17    17     1.10236938    -0.59327629  -109.89655977    -0.00423939    -0.00072244  0.69D-04  0.97D-04   458.92
    5     1     1     1.09020752    -0.58618127  -109.96486348    -0.00031981    -0.00004811  0.28D-05  0.85D-05   612.19
    5     2     2     1.09021924    -0.58618074  -109.96486295    -0.00032036    -0.00004766  0.28D-05  0.84D-05   612.19
    5     3     3     1.09018671    -0.58616977  -109.96485198    -0.00034221    -0.00005144  0.31D-05  0.88D-05   612.19
    5     4     4     1.09017527    -0.58616487  -109.96484708    -0.00034998    -0.00005357  0.32D-05  0.91D-05   612.19
    5     5     5     1.09016024    -0.58615865  -109.96484087    -0.00036089    -0.00005581  0.33D-05  0.94D-05   612.19
    5     6     6     1.09015801    -0.58615833  -109.96484054    -0.00036078    -0.00005610  0.34D-05  0.95D-05   612.19
    5     7     7     1.09014230    -0.58615171  -109.96483392    -0.00037323    -0.00005868  0.35D-05  0.98D-05   612.19
    5     8     8     1.09443986    -0.59634459  -109.92082547    -0.00037870    -0.00005533  0.37D-05  0.94D-05   612.19
    5     9     9     1.09443270    -0.59634310  -109.92082398    -0.00038722    -0.00005612  0.38D-05  0.95D-05   612.19
    5    10    10     1.09441945    -0.59633663  -109.92081751    -0.00039575    -0.00005866  0.39D-05  0.10D-04   612.19
    5    11    11     1.10575921    -0.59450304  -109.89778652    -0.00075191    -0.00010525  0.50D-05  0.17D-04   612.19
    5    12    12     1.10570503    -0.59448533  -109.89776882    -0.00077635    -0.00011747  0.52D-05  0.20D-04   612.19
    5    13    13     1.10566641    -0.59447643  -109.89775991    -0.00077388    -0.00012380  0.51D-05  0.22D-04   612.19
    5    14    14     1.10557570    -0.59443399  -109.89771747    -0.00086403    -0.00013519  0.61D-05  0.21D-04   612.19
    5    15    15     1.10560119    -0.59442953  -109.89771301    -0.00087721    -0.00013895  0.64D-05  0.22D-04   612.19
    5    16    16     1.10551478    -0.59441892  -109.89770240    -0.00089634    -0.00014071  0.65D-05  0.22D-04   612.19
    5    17    17     1.10535191    -0.59433196  -109.89761544    -0.00105567    -0.00017727  0.86D-05  0.26D-04   612.19
    6     1     1     1.09026232    -0.58624890  -109.96493111    -0.00006763    -0.00001348  0.76D-06  0.22D-05   764.06
    6     2     2     1.09026356    -0.58624868  -109.96493089    -0.00006794    -0.00001332  0.77D-06  0.22D-05   764.06
    6     3     3     1.09022360    -0.58624621  -109.96492842    -0.00007644    -0.00001381  0.83D-06  0.21D-05   764.06
    6     4     4     1.09020996    -0.58624446  -109.96492668    -0.00007960    -0.00001478  0.88D-06  0.22D-05   764.06
    6     5     5     1.09019370    -0.58624214  -109.96492435    -0.00008349    -0.00001566  0.92D-06  0.23D-05   764.06
    6     6     6     1.09019405    -0.58624167  -109.96492388    -0.00008334    -0.00001608  0.91D-06  0.24D-05   764.06
    6     7     7     1.09017470    -0.58623986  -109.96492207    -0.00008815    -0.00001685  0.99D-06  0.25D-05   764.06
    6     8     8     1.09449203    -0.59642688  -109.92090776    -0.00008229    -0.00001596  0.16D-05  0.24D-05   764.06
    6     9     9     1.09448632    -0.59642674  -109.92090762    -0.00008364    -0.00001606  0.17D-05  0.24D-05   764.06
    6    10    10     1.09447128    -0.59642403  -109.92090491    -0.00008740    -0.00001745  0.18D-05  0.26D-05   764.06
    6    11    11     1.10583093    -0.59465015  -109.89793363    -0.00014711    -0.00002816  0.28D-05  0.40D-05   764.06
    6    12    12     1.10577073    -0.59463896  -109.89792245    -0.00015363    -0.00003711  0.29D-05  0.62D-05   764.06
    6    13    13     1.10573118    -0.59463337  -109.89791685    -0.00015695    -0.00003990  0.31D-05  0.67D-05   764.06
    6    14    14     1.10559373    -0.59462498  -109.89790846    -0.00019099    -0.00004066  0.41D-05  0.57D-05   764.06
    6    15    15     1.10553905    -0.59462122  -109.89790470    -0.00019169    -0.00004203  0.44D-05  0.57D-05   764.06
    6    16    16     1.10560222    -0.59462027  -109.89790375    -0.00020136    -0.00004458  0.43D-05  0.69D-05   764.06
    6    17    17     1.10527409    -0.59458793  -109.89787141    -0.00025597    -0.00005581  0.64D-05  0.70D-05   764.06
    7     1     1     1.09040934    -0.58626455  -109.96494676    -0.00001565    -0.00000382  0.30D-06  0.68D-06   916.27
    7     2     2     1.09041260    -0.58626438  -109.96494659    -0.00001570    -0.00000390  0.31D-06  0.70D-06   916.27
    7     3     3     1.09041866    -0.58626387  -109.96494609    -0.00001766    -0.00000400  0.38D-06  0.64D-06   916.27
    7     4     4     1.09040626    -0.58626320  -109.96494541    -0.00001874    -0.00000438  0.40D-06  0.71D-06   916.27
    7     5     5     1.09040043    -0.58626223  -109.96494444    -0.00002008    -0.00000476  0.45D-06  0.75D-06   916.27
    7     6     6     1.09039287    -0.58626187  -109.96494408    -0.00002020    -0.00000498  0.44D-06  0.81D-06   916.27
    7     7     7     1.09038719    -0.58626142  -109.96494363    -0.00002156    -0.00000520  0.49D-06  0.82D-06   916.27
    7     8     8     1.09472185    -0.59644706  -109.92092795    -0.00002019    -0.00000475  0.76D-06  0.70D-06   916.27
    7     9     9     1.09472182    -0.59644700  -109.92092788    -0.00002026    -0.00000476  0.72D-06  0.71D-06   916.27
    7    10    10     1.09470513    -0.59644589  -109.92092677    -0.00002185    -0.00000538  0.82D-06  0.82D-06   916.27
    7    11    11     1.10644210    -0.59468391  -109.89796740    -0.00003376    -0.00000749  0.98D-06  0.11D-05   916.27
    7    12    12     1.10630766    -0.59467885  -109.89796233    -0.00003989    -0.00001033  0.78D-06  0.18D-05   916.27
    7    13    13     1.10630252    -0.59467723  -109.89796072    -0.00004386    -0.00001079  0.10D-05  0.17D-05   916.27
    7    14    14     1.10629796    -0.59467365  -109.89795713    -0.00004867    -0.00001241  0.14D-05  0.18D-05   916.27
    7    15    15     1.10629822    -0.59467270  -109.89795618    -0.00005148    -0.00001276  0.16D-05  0.18D-05   916.27
    7    16    16     1.10626413    -0.59467194  -109.89795542    -0.00005167    -0.00001313  0.14D-05  0.20D-05   916.27
    7    17    17     1.10617164    -0.59465811  -109.89794159    -0.00007018    -0.00001904  0.27D-05  0.24D-05   916.27
    8     1     1     1.09054049    -0.58626909  -109.96495130    -0.00000454    -0.00000108  0.89D-07  0.18D-06  1069.34
    8     2     2     1.09054165    -0.58626899  -109.96495121    -0.00000461    -0.00000113  0.88D-07  0.19D-06  1069.34
    8     3     3     1.09054047    -0.58626881  -109.96495103    -0.00000494    -0.00000121  0.10D-06  0.21D-06  1069.34
    8     4     4     1.09053526    -0.58626857  -109.96495078    -0.00000537    -0.00000134  0.11D-06  0.23D-06  1069.34
    8     5     5     1.09053324    -0.58626814  -109.96495035    -0.00000591    -0.00000151  0.13D-06  0.25D-06  1069.34
    8     6     6     1.09053167    -0.58626798  -109.96495019    -0.00000611    -0.00000158  0.13D-06  0.26D-06  1069.34
    8     7     7     1.09052663    -0.58626783  -109.96495004    -0.00000642    -0.00000166  0.14D-06  0.28D-06  1069.34
    8     8     8     1.09485242    -0.59645276  -109.92093364    -0.00000570    -0.00000143  0.18D-06  0.22D-06  1069.34
    8     9     9     1.09485358    -0.59645272  -109.92093360    -0.00000572    -0.00000144  0.17D-06  0.23D-06  1069.34
    8    10    10     1.09484684    -0.59645229  -109.92093317    -0.00000641    -0.00000165  0.19D-06  0.26D-06  1069.34
    8    11    11     1.10659627    -0.59469306  -109.89797654    -0.00000915    -0.00000199  0.15D-06  0.32D-06  1069.34
    8    12    12     1.10657558    -0.59469137  -109.89797485    -0.00001251    -0.00000283  0.22D-06  0.45D-06  1069.34
    8    13    13     1.10655968    -0.59469079  -109.89797427    -0.00001355    -0.00000307  0.23D-06  0.49D-06  1069.34
    8    14    14     1.10652162    -0.59468918  -109.89797267    -0.00001553    -0.00000384  0.28D-06  0.58D-06  1069.34
    8    15    15     1.10650409    -0.59468886  -109.89797234    -0.00001616    -0.00000395  0.31D-06  0.59D-06  1069.34
    8    16    16     1.10651748    -0.59468879  -109.89797227    -0.00001685    -0.00000406  0.31D-06  0.62D-06  1069.34
    8    17    17     1.10641144    -0.59468310  -109.89796658    -0.00002499    -0.00000656  0.55D-06  0.89D-06  1069.34
    9     1     1     1.09055803    -0.58627050  -109.96495271    -0.00000141    -0.00000036  0.21D-07  0.61D-07  1221.95
    9     2     2     1.09055719    -0.58627046  -109.96495267    -0.00000147    -0.00000037  0.24D-07  0.61D-07  1221.95
    9     3     3     1.09055127    -0.58627039  -109.96495260    -0.00000158    -0.00000039  0.28D-07  0.62D-07  1221.95
    9     4     4     1.09054685    -0.58627031  -109.96495252    -0.00000174    -0.00000044  0.31D-07  0.68D-07  1221.95
    9     5     5     1.09054341    -0.58627013  -109.96495234    -0.00000199    -0.00000051  0.38D-07  0.77D-07  1221.95
    9     6     6     1.09054262    -0.58627007  -109.96495228    -0.00000209    -0.00000054  0.39D-07  0.81D-07  1221.95
    9     7     7     1.09053794    -0.58627001  -109.96495222    -0.00000218    -0.00000058  0.41D-07  0.89D-07  1221.95
    9     8     8     1.09486304    -0.59645463  -109.92093551    -0.00000187    -0.00000048  0.50D-07  0.75D-07  1221.95
    9     9     9     1.09486319    -0.59645461  -109.92093549    -0.00000189    -0.00000049  0.50D-07  0.75D-07  1221.95
    9    10    10     1.09485708    -0.59645446  -109.92093533    -0.00000216    -0.00000057  0.59D-07  0.89D-07  1221.95
    9    11    11     1.10666996    -0.59469568  -109.89797917    -0.00000262    -0.00000062  0.53D-07  0.95D-07  1221.95
    9    12    12     1.10663413    -0.59469509  -109.89797857    -0.00000372    -0.00000099  0.84D-07  0.17D-06  1221.95
    9    13    13     1.10663149    -0.59469482  -109.89797830    -0.00000403    -0.00000115  0.75D-07  0.20D-06  1221.95
    9    14    14     1.10659662    -0.59469430  -109.89797778    -0.00000511    -0.00000133  0.13D-06  0.20D-06  1221.95
    9    15    15     1.10659219    -0.59469419  -109.89797767    -0.00000533    -0.00000137  0.12D-06  0.20D-06  1221.95
    9    16    16     1.10659897    -0.59469408  -109.89797756    -0.00000529    -0.00000154  0.10D-06  0.27D-06  1221.95
    9    17    17     1.10650537    -0.59469199  -109.89797547    -0.00000889    -0.00000234  0.23D-06  0.30D-06  1221.95
   10     1     1     1.09057504    -0.58627091  -109.96495313    -0.00000041    -0.00000012  0.52D-08  0.24D-07  1374.51
   10     2     2     1.09057485    -0.58627090  -109.96495311    -0.00000044    -0.00000013  0.59D-08  0.25D-07  1374.51
   10     3     3     1.09057392    -0.58627088  -109.96495310    -0.00000049    -0.00000013  0.88D-08  0.22D-07  1374.51
   10     4     4     1.09057079    -0.58627086  -109.96495307    -0.00000055    -0.00000015  0.97D-08  0.25D-07  1374.51
   10     5     5     1.09056913    -0.58627078  -109.96495299    -0.00000065    -0.00000018  0.12D-07  0.29D-07  1374.51
   10     6     6     1.09056782    -0.58627075  -109.96495296    -0.00000068    -0.00000020  0.12D-07  0.33D-07  1374.51
   10     7     7     1.09056468    -0.58627073  -109.96495294    -0.00000072    -0.00000021  0.14D-07  0.34D-07  1374.51
   10     8     8     1.09489113    -0.59645524  -109.92093612    -0.00000061    -0.00000016  0.21D-07  0.25D-07  1374.51
   10     9     9     1.09489096    -0.59645523  -109.92093611    -0.00000062    -0.00000017  0.20D-07  0.27D-07  1374.51
   10    10    10     1.09488645    -0.59645517  -109.92093605    -0.00000072    -0.00000020  0.26D-07  0.32D-07  1374.51
   10    11    11     1.10675426    -0.59469641  -109.89797990    -0.00000073    -0.00000018  0.24D-07  0.29D-07  1374.51
   10    12    12     1.10672514    -0.59469617  -109.89797965    -0.00000108    -0.00000034  0.18D-07  0.69D-07  1374.51
   10    13    13     1.10672479    -0.59469605  -109.89797954    -0.00000124    -0.00000038  0.35D-07  0.67D-07  1374.51
   10    14    14     1.10672083    -0.59469589  -109.89797937    -0.00000159    -0.00000045  0.55D-07  0.70D-07  1374.51
   10    15    15     1.10671998    -0.59469585  -109.89797933    -0.00000166    -0.00000047  0.62D-07  0.69D-07  1374.51
   10    16    16     1.10670152    -0.59469574  -109.89797922    -0.00000166    -0.00000054  0.39D-07  0.10D-06  1374.51
   10    17    17     1.10668421    -0.59469493  -109.89797841    -0.00000294    -0.00000088  0.14D-06  0.11D-06  1374.51
   11     1     1     1.09059097    -0.58627105  -109.96495326    -0.00000013    -0.00000004  0.33D-08  0.75D-08  1527.87
   11     2     2     1.09059087    -0.58627104  -109.96495326    -0.00000014    -0.00000005  0.33D-08  0.82D-08  1527.87
   11     3     3     1.09059092    -0.58627104  -109.96495325    -0.00000016    -0.00000005  0.46D-08  0.75D-08  1527.87
   11     4     4     1.09058923    -0.58627103  -109.96495324    -0.00000018    -0.00000005  0.49D-08  0.86D-08  1527.87
   11     5     5     1.09058844    -0.58627100  -109.96495321    -0.00000022    -0.00000007  0.65D-08  0.11D-07  1527.87
   11     6     6     1.09058750    -0.58627098  -109.96495320    -0.00000023    -0.00000007  0.62D-08  0.13D-07  1527.87
   11     7     7     1.09058614    -0.58627098  -109.96495319    -0.00000025    -0.00000007  0.75D-08  0.12D-07  1527.87
   11     8     8     1.09490874    -0.59645543  -109.92093632    -0.00000019    -0.00000006  0.95D-08  0.80D-08  1527.87
   11     9     9     1.09490877    -0.59645543  -109.92093631    -0.00000020    -0.00000006  0.90D-08  0.87D-08  1527.87
   11    10    10     1.09490641    -0.59645541  -109.92093629    -0.00000023    -0.00000007  0.10D-07  0.11D-07  1527.87
   11    11    11     1.10676873    -0.59469663  -109.89798011    -0.00000022    -0.00000005  0.47D-08  0.89D-08  1527.87
   11    12    12     1.10676195    -0.59469653  -109.89798001    -0.00000036    -0.00000011  0.74D-08  0.21D-07  1527.87
   11    13    13     1.10675483    -0.59469649  -109.89797998    -0.00000044    -0.00000012  0.10D-07  0.20D-07  1527.87
   11    14    14     1.10674594    -0.59469643  -109.89797991    -0.00000054    -0.00000016  0.11D-07  0.26D-07  1527.87
   11    15    15     1.10674222    -0.59469642  -109.89797990    -0.00000057    -0.00000016  0.14D-07  0.24D-07  1527.87
   11    16    16     1.10674685    -0.59469637  -109.89797985    -0.00000062    -0.00000019  0.14D-07  0.32D-07  1527.87
   11    17    17     1.10671048    -0.59469605  -109.89797953    -0.00000112    -0.00000033  0.34D-07  0.45D-07  1527.87
   12     1     1     1.09059638    -0.58627110  -109.96495331    -0.00000005    -0.00000002  0.64D-09  0.28D-08  1679.85
   12     2     2     1.09059530    -0.58627110  -109.96495331    -0.00000005    -0.00000002  0.10D-08  0.26D-08  1679.85
   12     3     3     1.09059610    -0.58627110  -109.96495331    -0.00000005    -0.00000002  0.73D-09  0.30D-08  1679.85
   12     4     4     1.09059413    -0.58627109  -109.96495330    -0.00000006    -0.00000002  0.11D-08  0.32D-08  1679.85
   12     5     5     1.09059323    -0.58627108  -109.96495329    -0.00000008    -0.00000002  0.16D-08  0.40D-08  1679.85
   12     6     6     1.09059276    -0.58627107  -109.96495328    -0.00000009    -0.00000003  0.16D-08  0.46D-08  1679.85
   12     7     7     1.09059173    -0.58627107  -109.96495328    -0.00000009    -0.00000003  0.17D-08  0.47D-08  1679.85
   12     8     8     1.09491381    -0.59645550  -109.92093638    -0.00000007    -0.00000002  0.19D-08  0.32D-08  1679.85
   12     9     9     1.09491365    -0.59645550  -109.92093638    -0.00000007    -0.00000002  0.19D-08  0.35D-08  1679.85
   12    10    10     1.09491195    -0.59645549  -109.92093637    -0.00000009    -0.00000003  0.22D-08  0.45D-08  1679.85
   12    11    11     1.10678395    -0.59469670  -109.89798018    -0.00000007    -0.00000002  0.13D-08  0.31D-08  1679.85
   12    12    12     1.10677072    -0.59469666  -109.89798014    -0.00000013    -0.00000004  0.35D-08  0.81D-08  1679.85
   12    13    13     1.10677137    -0.59469665  -109.89798013    -0.00000016    -0.00000005  0.32D-08  0.80D-08  1679.85
   12    14    14     1.10676504    -0.59469662  -109.89798011    -0.00000019    -0.00000006  0.46D-08  0.91D-08  1679.85
   12    15    15     1.10676408    -0.59469662  -109.89798011    -0.00000020    -0.00000006  0.45D-08  0.11D-07  1679.85
   12    16    16     1.10676397    -0.59469659  -109.89798007    -0.00000023    -0.00000008  0.33D-08  0.17D-07  1679.85
   12    17    17     1.10674256    -0.59469648  -109.89797996    -0.00000043    -0.00000012  0.11D-07  0.17D-07  1679.85
   13     1     1     1.09059639    -0.58627110  -109.96495331    -0.00000000    -0.00000001  0.64D-09  0.28D-08  1737.35
   13     2     2     1.09059611    -0.58627110  -109.96495331    -0.00000000    -0.00000002  0.73D-09  0.30D-08  1737.35
   13     3     3     1.09059530    -0.58627110  -109.96495331    -0.00000000    -0.00000002  0.10D-08  0.26D-08  1737.35
   13     4     4     1.09059413    -0.58627109  -109.96495330    -0.00000000    -0.00000002  0.11D-08  0.31D-08  1737.35
   13     5     5     1.09059323    -0.58627108  -109.96495329    -0.00000000    -0.00000002  0.16D-08  0.40D-08  1737.35
   13     6     6     1.09059277    -0.58627107  -109.96495328    -0.00000000    -0.00000003  0.17D-08  0.46D-08  1737.35
   13     7     7     1.09059174    -0.58627107  -109.96495328    -0.00000000    -0.00000003  0.17D-08  0.47D-08  1737.35
   13     8     8     1.09491381    -0.59645550  -109.92093638    -0.00000000    -0.00000002  0.19D-08  0.32D-08  1737.35
   13     9     9     1.09491365    -0.59645550  -109.92093638    -0.00000000    -0.00000002  0.19D-08  0.35D-08  1737.35
   13    10    10     1.09491196    -0.59645549  -109.92093637    -0.00000000    -0.00000003  0.22D-08  0.45D-08  1737.35
   13    11    11     1.10680300    -0.59469673  -109.89798021    -0.00000003    -0.00000000  0.11D-09  0.97D-09  1737.35
   13    12    12     1.10680194    -0.59469673  -109.89798021    -0.00000007    -0.00000001  0.24D-09  0.16D-08  1737.35
   13    13    13     1.10680158    -0.59469672  -109.89798021    -0.00000008    -0.00000001  0.35D-09  0.16D-08  1737.35
   13    14    14     1.10680198    -0.59469672  -109.89798020    -0.00000010    -0.00000001  0.40D-09  0.25D-08  1737.35
   13    15    15     1.10680006    -0.59469672  -109.89798020    -0.00000010    -0.00000001  0.48D-09  0.26D-08  1737.35
   13    16    16     1.10680102    -0.59469672  -109.89798020    -0.00000013    -0.00000002  0.10D-08  0.27D-08  1737.35
   13    17    17     1.10678396    -0.59469670  -109.89798018    -0.00000022    -0.00000002  0.13D-08  0.31D-08  1737.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   3.4%  83.5%

 Initialization:   0.1%
 Other:           12.9%

 Total CPU:     1737.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2/222           0.0000000   0.9575643   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0003494   0.0000000  -0.0000004  -0.0000000
 2//222/222           0.9540335  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0821546   0.0000000  -0.0000002
                     -0.0000000  -0.0003121   0.0000000   0.0000000   0.0000002  -0.0000000   0.0001570   0.0000000
 2/2/2/2222          -0.0000000  -0.0003119  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.0000000  -0.0000014  -0.0000000  -0.0000000   0.9502988  -0.0000000  -0.0011418   0.0000000
 2/222//222          -0.0000000  -0.0000000   0.0000920   0.0440421  -0.0000000   0.8553398  -0.0000000   0.0000000  -0.0000000
                     -0.4272137  -0.0000000   0.0001263   0.0002858   0.0000000   0.0000011  -0.0000000   0.0000000
 2/22/2/222          -0.0367406   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.4266573  -0.0000000   0.8544252
                     -0.0000000   0.0000703   0.0000000   0.0000000   0.0000002   0.0000000   0.0001397  -0.0000000
 222/2//222          -0.0734812  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8533155   0.0000000  -0.4272140
                      0.0000000   0.0001405  -0.0000000  -0.0000000   0.0000003  -0.0000000   0.0002791   0.0000000
 2222///222           0.0000000   0.0000000   0.8514035  -0.0005859   0.0930369  -0.0000614   0.0000000   0.4272127   0.0000000
                      0.0000000  -0.0000000  -0.0000005   0.0000011  -0.0000000  -0.0002332   0.0000000   0.0002080
 222///2222           0.0003108  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000268  -0.0000000  -0.0000001
                     -0.0000000   0.8489331   0.0000000   0.0000000  -0.0005118  -0.0000000  -0.4270611   0.0000000
 2/2/22/222          -0.0000000  -0.0000000   0.1227678  -0.0000845   0.8476284  -0.0000088  -0.0000000  -0.4272142  -0.0000000
                     -0.0000000  -0.0000000   0.0000003  -0.0000007  -0.0000000   0.0001431  -0.0000000   0.0002778
 222//2/222           0.0000000  -0.0000000   0.0005899   0.8391891  -0.0000000   0.1711909   0.0000000  -0.0000000   0.0000000
                      0.4272135   0.0000000  -0.0002452   0.0001938   0.0000000   0.0000015   0.0000000   0.0000000
 22///22222           0.0000000  -0.0000000  -0.0000000  -0.0000142   0.0000000  -0.0002792   0.0000000  -0.0000000  -0.0000000
                     -0.0001959  -0.0000000   0.3434662   0.7774793  -0.0000000   0.0029376   0.0000000   0.0000270
 2//2/22222           0.0000241   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0002777  -0.0000000  -0.0001961
                     -0.0000000   0.3819760  -0.0000000  -0.0000000   0.0009129   0.0000000   0.7593147  -0.0000000
 22/2//2222           0.0000000   0.0000000  -0.0000399   0.0000000  -0.0002766   0.0000000   0.0000000  -0.0001961  -0.0000000
                      0.0000000  -0.0000000   0.0008997  -0.0018942  -0.0000000   0.3892049   0.0000000   0.7556325
 22//22/222           0.0000000   0.0000000  -0.0002874  -0.4590780  -0.0000000   0.3949934   0.0000000  -0.0000000   0.0000000
                      0.7399545   0.0000000   0.0002146   0.0000533   0.0000000  -0.0000002   0.0000000  -0.0000000
 22/22//222           0.0000000   0.0000000  -0.4206779   0.0002895   0.4356628   0.0000304   0.0000000   0.7399537   0.0000000
                      0.0000000   0.0000000   0.0000005  -0.0000010  -0.0000000   0.0002173   0.0000000   0.0000404
 2//22/2222           0.0000000  -0.0000000   0.0000002   0.0002733  -0.0000000   0.0000550   0.0000000   0.0000000   0.0000000
                     -0.0001957   0.0000000   0.6669317  -0.5269215   0.0000000  -0.0039709  -0.0000000  -0.0000697
 2///222222           0.0000000   0.0000000   0.0002773  -0.0000002   0.0000295  -0.0000000   0.0000000  -0.0001961  -0.0000000
                      0.0000000  -0.0000000   0.0013636  -0.0029795  -0.0000000   0.6343223   0.0000000  -0.5657619
 2/2//22222          -0.0000000   0.0000000  -0.0001367   0.0000001   0.0001405   0.0000000   0.0000000  -0.0003395   0.0000000
                     -0.0000000   0.0000000  -0.0013067   0.0028138  -0.0000000  -0.5909321   0.0000000  -0.1096215
 2/22//2222           0.0000000   0.0000000  -0.0000001  -0.0001494  -0.0000000   0.0001275   0.0000000   0.0000000   0.0000000
                     -0.0003392   0.0000000  -0.5833506  -0.1446676   0.0000000   0.0005965   0.0000000   0.0000246
 22//2/2222          -0.0000115   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0001389   0.0000000  -0.0003918
                      0.0000000  -0.1909849  -0.0000000  -0.0000000  -0.0004564  -0.0000000  -0.3796428  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.939865    0.000000    0.000000   -0.000000   -0.183254   -0.000000    0.000000    0.000000
             0.000000    0.000310    0.000000   -0.000000    0.000000   -0.000004   -0.000000
 2          -0.000000    0.000000   -0.000000    0.957564   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000310    0.000000    0.000000   -0.000000
 3           0.000325    0.816242   -0.000000    0.000000   -0.500677    0.000577    0.000000    0.000000    0.000000    0.000000
             0.000310   -0.000000   -0.000000   -0.000000   -0.000005    0.000000    0.000000
 4           0.380324   -0.000562   -0.000000    0.000000    0.000345    0.878796    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000063    0.000000    0.000000   -0.000000    0.000303
 5          -0.000000    0.500678    0.000000    0.000000    0.816243    0.000000   -0.000000   -0.000000   -0.000001   -0.000000
            -0.000005   -0.000000    0.000000   -0.000000   -0.000309   -0.000000   -0.000000
 6           0.878797   -0.000059    0.000000    0.000000    0.000036   -0.380325    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000303    0.000000    0.000000    0.000000   -0.000063
 7           0.000000    0.000000    0.183254    0.000000   -0.000000   -0.000000    0.939867   -0.000000    0.000000    0.000000
             0.000000   -0.000004    0.000000    0.000000    0.000000   -0.000310   -0.000000
 8           0.000000   -0.000001    0.000000    0.000000   -0.000001   -0.000000    0.000000   -0.000000    0.955627   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000001    0.955627    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000000    0.000000    0.955628
             0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 11         -0.000000   -0.000000   -0.000294   -0.000000    0.000000    0.000000    0.000189    0.000000    0.000000    0.000000
            -0.000000    0.887199   -0.000000   -0.000001   -0.000000    0.341068   -0.000000
 12          0.000021   -0.000000    0.000000   -0.000000    0.000001   -0.000349   -0.000000    0.000000    0.000000    0.000000
             0.001693    0.000000    0.246403   -0.000000    0.001229   -0.000000    0.918005
 13          0.000349    0.000001    0.000000   -0.000000   -0.000002    0.000021    0.000000    0.000000   -0.000000    0.000000
            -0.003690    0.000000    0.917999   -0.000000   -0.002603   -0.000000   -0.246392
 14          0.000000   -0.000000    0.000000    0.000349   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000408   -0.000000    0.950500   -0.000000    0.001066    0.000000
 15          0.000002   -0.000136   -0.000000    0.000000    0.000322    0.000001    0.000000    0.000000    0.000000   -0.000000
             0.783471    0.000000    0.003819   -0.000000    0.538146    0.000000   -0.003191
 16          0.000000    0.000000    0.000189   -0.000000   -0.000000   -0.000000    0.000294    0.000000    0.000000    0.000000
            -0.000000   -0.341069    0.000000   -0.001142   -0.000000    0.887199   -0.000000
 17          0.000000    0.000322    0.000000   -0.000000    0.000136    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.538158    0.000000    0.000041    0.000000    0.783487   -0.000000   -0.000067

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957564    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000019   -0.000000    0.000000    0.000000    0.000000    0.000008    0.000000
 2           0.000000    0.957564    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000021    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.957564    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000017    0.000000    0.000012
 4          -0.000000    0.000000    0.000000    0.957565    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000019    0.000009    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.957565   -0.000000   -0.000000   -0.000001   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000012   -0.000000    0.000017
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957565    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000009    0.000019    0.000000    0.000000    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957566    0.000000   -0.000001    0.000000
             0.000008   -0.000000    0.000000    0.000000    0.000000    0.000020   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000001    0.000000    0.000000    0.955627    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000001    0.000000    0.955627    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 10         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.955628
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 11         -0.000019   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000008   -0.000000   -0.000000   -0.000000
             0.950500   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000019    0.000000    0.000009   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.950501   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 13          0.000000   -0.000000    0.000000    0.000009   -0.000000    0.000019    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.950501   -0.000000   -0.000000    0.000000   -0.000000
 14          0.000000    0.000021   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.950501   -0.000000    0.000000    0.000000
 15          0.000000    0.000000   -0.000017    0.000000    0.000012    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.950502   -0.000000   -0.000000
 16          0.000008   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000020   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.950501   -0.000000
 17          0.000000    0.000000    0.000012   -0.000000    0.000017   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.950508


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.93986496 (fixed)   0.95756436 (relaxed)   0.95756371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685341
 Singles      0.01526578   -0.07712256   -0.07892607
 Pairs        0.07533073    0.00000000   -0.04049162
 Total        1.09059786   -0.07712257   -0.58627110
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55101400
 One electron energy                 -193.35713642
 Two electron energy                   83.39218311
 Virial quotient                       -2.64650469
 Correlation energy                    -0.58627111
 !MRCI STATE 1.1 Energy              -109.964953311915

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806822 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806736 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806822 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357461 (Pople, fixed reference)
 Cluster corrected energies          -110.01357376 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357461 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95756378 (fixed)   0.95756448 (relaxed)   0.95756383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685404
 Singles      0.01526551   -0.07712201   -0.07892594
 Pairs        0.07533072    0.00000000   -0.04049112
 Total        1.09059758   -0.07712201   -0.58627110
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55102954
 One electron energy                 -193.35715796
 Two electron energy                   83.39220465
 Virial quotient                       -2.64650370
 Correlation energy                    -0.58627111
 !MRCI STATE 2.1 Energy              -109.964953309186

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806805 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806719 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806805 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357444 (Pople, fixed reference)
 Cluster corrected energies          -110.01357360 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357444 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.81624185 (fixed)   0.95756484 (relaxed)   0.95756419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685404
 Singles      0.01526605   -0.07712231   -0.07892610
 Pairs        0.07532937   -0.00000007   -0.04049096
 Total        1.09059677   -0.07712239   -0.58627110
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55092953
 One electron energy                 -193.35703812
 Two electron energy                   83.39208481
 Virial quotient                       -2.64651007
 Correlation energy                    -0.58627111
 !MRCI STATE 3.1 Energy              -109.964953309141

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806758 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806671 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806758 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357398 (Pople, fixed reference)
 Cluster corrected energies          -110.01357313 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357398 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.87879645 (fixed)   0.95756535 (relaxed)   0.95756470 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46675534
 Singles      0.01526580   -0.07712191   -0.07892606
 Pairs        0.07532845   -0.00010865   -0.04058969
 Total        1.09059560   -0.07723056   -0.58627109
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55094918
 One electron energy                 -193.35706556
 Two electron energy                   83.39211225
 Virial quotient                       -2.64650882
 Correlation energy                    -0.58627110
 !MRCI STATE 4.1 Energy              -109.964953304334

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806689 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806602 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806689 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357331 (Pople, fixed reference)
 Cluster corrected energies          -110.01357246 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357331 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.81624295 (fixed)   0.95756574 (relaxed)   0.95756510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685609
 Singles      0.01526557   -0.07712109   -0.07892592
 Pairs        0.07532778    0.00000000   -0.04048907
 Total        1.09059471   -0.07712109   -0.58627108
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55092403
 One electron energy                 -193.35704349
 Two electron energy                   83.39209020
 Virial quotient                       -2.64651042
 Correlation energy                    -0.58627109
 !MRCI STATE 5.1 Energy              -109.964953289423

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806635 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806548 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806635 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357278 (Pople, fixed reference)
 Cluster corrected energies          -110.01357193 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357278 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.87879709 (fixed)   0.95756595 (relaxed)   0.95756530 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46687819
 Singles      0.01526498   -0.07712015   -0.07892569
 Pairs        0.07532791    0.00002295   -0.04046719
 Total        1.09059424   -0.07709720   -0.58627107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55096966
 One electron energy                 -193.35710449
 Two electron energy                   83.39215121
 Virial quotient                       -2.64650751
 Correlation energy                    -0.58627108
 !MRCI STATE 6.1 Energy              -109.964953283312

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806607 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806520 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806607 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357250 (Pople, fixed reference)
 Cluster corrected energies          -110.01357166 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357250 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.93986698 (fixed)   0.95756640 (relaxed)   0.95756575 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000135   -0.00000000   -0.46685713
 Singles      0.01526534   -0.07712065   -0.07892589
 Pairs        0.07532653    0.00000000   -0.04048806
 Total        1.09059321   -0.07712065   -0.58627107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37868220
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55093475
 One electron energy                 -193.35706147
 Two electron energy                   83.39210818
 Virial quotient                       -2.64650973
 Correlation energy                    -0.58627108
 !MRCI STATE 7.1 Energy              -109.964953283012

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01806546 (Davidson, fixed reference)
 Cluster corrected energies          -110.01806460 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01806546 (Davidson, rotated reference)

 Cluster corrected energies          -110.01357191 (Pople, fixed reference)
 Cluster corrected energies          -110.01357107 (Pople, relaxed reference)
 Cluster corrected energies          -110.01357191 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95562672 (fixed)   0.95567458 (relaxed)   0.95562672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010016    0.00000000   -0.46883689
 Singles      0.01885497   -0.08312784   -0.08618775
 Pairs        0.07606834    0.00000000   -0.04143086
 Total        1.09502348   -0.08312784   -0.59645550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32448088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53018870
 One electron energy                 -193.30177765
 Two electron energy                   83.38084127
 Virial quotient                       -2.64677190
 Correlation energy                    -0.59645550
 !MRCI STATE 8.1 Energy              -109.920936384558

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97761366 (Davidson, fixed reference)
 Cluster corrected energies          -109.97754825 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97761366 (Davidson, rotated reference)

 Cluster corrected energies          -109.97298820 (Pople, fixed reference)
 Cluster corrected energies          -109.97292392 (Pople, relaxed reference)
 Cluster corrected energies          -109.97298820 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95562679 (fixed)   0.95567465 (relaxed)   0.95562679 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010017   -0.00000000   -0.46883739
 Singles      0.01885463   -0.08312738   -0.08618758
 Pairs        0.07606852    0.00000000   -0.04143054
 Total        1.09502332   -0.08312738   -0.59645550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32448088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53021157
 One electron energy                 -193.30180396
 Two electron energy                   83.38086757
 Virial quotient                       -2.64677044
 Correlation energy                    -0.59645550
 !MRCI STATE 9.1 Energy              -109.920936383175

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97761357 (Davidson, fixed reference)
 Cluster corrected energies          -109.97754815 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97761357 (Davidson, rotated reference)

 Cluster corrected energies          -109.97298811 (Pople, fixed reference)
 Cluster corrected energies          -109.97292383 (Pople, relaxed reference)
 Cluster corrected energies          -109.97298811 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95562753 (fixed)   0.95567539 (relaxed)   0.95562753 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010016   -0.00000000   -0.46883825
 Singles      0.01885419   -0.08312687   -0.08618748
 Pairs        0.07606727   -0.00000035   -0.04142977
 Total        1.09502162   -0.08312721   -0.59645549
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32448088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53025118
 One electron energy                 -193.30186196
 Two electron energy                   83.38092559
 Virial quotient                       -2.64676792
 Correlation energy                    -0.59645549
 !MRCI STATE 10.1 Energy             -109.920936372364

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97761254 (Davidson, fixed reference)
 Cluster corrected energies          -109.97754713 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97761254 (Davidson, rotated reference)

 Cluster corrected energies          -109.97298710 (Pople, fixed reference)
 Cluster corrected energies          -109.97292283 (Pople, relaxed reference)
 Cluster corrected energies          -109.97298710 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.88719946 (fixed)   0.95052783 (relaxed)   0.95050024 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42170863
 Singles      0.03285917   -0.12795578   -0.13325815
 Pairs        0.07395003    0.00000000   -0.03972994
 Total        1.10686726   -0.12795578   -0.59469673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36066063
 One electron energy                 -190.59001539
 Two electron energy                   80.69203518
 Virial quotient                       -2.72289845
 Correlation energy                    -0.59469672
 !MRCI STATE 11.1 Energy             -109.897980210617

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153382 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149561 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153382 (Davidson, rotated reference)

 Cluster corrected energies          -109.95686027 (Pople, fixed reference)
 Cluster corrected energies          -109.95682207 (Pople, relaxed reference)
 Cluster corrected energies          -109.95686027 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.91800462 (fixed)   0.95052828 (relaxed)   0.95050070 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.01444769
 Singles      0.03285886   -0.12795488   -0.13325804
 Pairs        0.07394928   -0.45078472   -0.44699100
 Total        1.10686619   -0.57873959   -0.59469673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36065065
 One electron energy                 -190.59000859
 Two electron energy                   80.69202838
 Virial quotient                       -2.72289912
 Correlation energy                    -0.59469672
 !MRCI STATE 12.1 Energy             -109.897980209788

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153318 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149497 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153318 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685963 (Pople, fixed reference)
 Cluster corrected energies          -109.95682143 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685963 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.91799915 (fixed)   0.95052844 (relaxed)   0.95050085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.53101912
 Singles      0.03285869   -0.12795469   -0.13325802
 Pairs        0.07394909    0.12099036    0.06958041
 Total        1.10686582   -0.00696433   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36063059
 One electron energy                 -190.58999239
 Two electron energy                   80.69201219
 Virial quotient                       -2.72290047
 Correlation energy                    -0.59469672
 !MRCI STATE 13.1 Energy             -109.897980206843

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153296 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149475 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153296 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685941 (Pople, fixed reference)
 Cluster corrected energies          -109.95682121 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685941 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95049993 (fixed)   0.95052827 (relaxed)   0.95050068 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42171036
 Singles      0.03285780   -0.12795429   -0.13325756
 Pairs        0.07395038    0.00000000   -0.03972880
 Total        1.10686623   -0.12795429   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36062109
 One electron energy                 -190.58995755
 Two electron energy                   80.69197735
 Virial quotient                       -2.72290112
 Correlation energy                    -0.59469671
 !MRCI STATE 14.1 Energy             -109.897980203498

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153320 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149499 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153320 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685965 (Pople, fixed reference)
 Cluster corrected energies          -109.95682145 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685965 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.78347110 (fixed)   0.95052909 (relaxed)   0.95050151 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42312771
 Singles      0.03285864   -0.12795299   -0.13325791
 Pairs        0.07394762    0.00156671   -0.03831110
 Total        1.10686430   -0.12638628   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36065760
 One electron energy                 -190.59002979
 Two electron energy                   80.69204959
 Virial quotient                       -2.72289865
 Correlation energy                    -0.59469671
 !MRCI STATE 15.1 Energy             -109.897980203270

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153205 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149385 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153205 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685850 (Pople, fixed reference)
 Cluster corrected energies          -109.95682031 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685850 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.88719949 (fixed)   0.95052868 (relaxed)   0.95050109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42171084
 Singles      0.03285712   -0.12795416   -0.13325753
 Pairs        0.07395010    0.00000000   -0.03972835
 Total        1.10686527   -0.12795416   -0.59469672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36053984
 One electron energy                 -190.58988410
 Two electron energy                   80.69190390
 Virial quotient                       -2.72290660
 Correlation energy                    -0.59469671
 !MRCI STATE 16.1 Energy             -109.897980198317

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96153262 (Davidson, fixed reference)
 Cluster corrected energies          -109.96149441 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96153262 (Davidson, rotated reference)

 Cluster corrected energies          -109.95685907 (Pople, fixed reference)
 Cluster corrected energies          -109.95682088 (Pople, relaxed reference)
 Cluster corrected energies          -109.95685907 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.78348715 (fixed)   0.95053601 (relaxed)   0.95050842 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005805   -0.00000000   -0.42174813
 Singles      0.03285780   -0.12795304   -0.13326006
 Pairs        0.07393235    0.00003298   -0.03968851
 Total        1.10684820   -0.12792006   -0.59469670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30328349
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36061509
 One electron energy                 -190.58995971
 Two electron energy                   80.69197953
 Virial quotient                       -2.72290152
 Correlation energy                    -0.59469669
 !MRCI STATE 17.1 Energy             -109.897980183376

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96152246 (Davidson, fixed reference)
 Cluster corrected energies          -109.96148425 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96152246 (Davidson, rotated reference)

 Cluster corrected energies          -109.95684891 (Pople, fixed reference)
 Cluster corrected energies          -109.95681071 (Pople, relaxed reference)
 Cluster corrected energies          -109.95684891 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      401.92       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *      1795.24   1791.76      2.77      0.49
 REAL TIME  *      1902.81 SEC
 DISK USED  *       434.09 MB (local),        5.14 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01806822  AU                              
 SETTING HLSDIAG(2)     =      -110.01806805  AU                              
 SETTING HLSDIAG(3)     =      -110.01806758  AU                              
 SETTING HLSDIAG(4)     =      -110.01806689  AU                              
 SETTING HLSDIAG(5)     =      -110.01806635  AU                              
 SETTING HLSDIAG(6)     =      -110.01806607  AU                              
 SETTING HLSDIAG(7)     =      -110.01806546  AU                              
 SETTING HLSDIAG(8)     =      -109.97761366  AU                              
 SETTING HLSDIAG(9)     =      -109.97761357  AU                              
 SETTING HLSDIAG(10)    =      -109.97761254  AU                              
 SETTING HLSDIAG(11)    =      -109.96153382  AU                              
 SETTING HLSDIAG(12)    =      -109.96153318  AU                              
 SETTING HLSDIAG(13)    =      -109.96153296  AU                              
 SETTING HLSDIAG(14)    =      -109.96153320  AU                              
 SETTING HLSDIAG(15)    =      -109.96153205  AU                              
 SETTING HLSDIAG(16)    =      -109.96153262  AU                              
 SETTING HLSDIAG(17)    =      -109.96152246  AU                              


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

 Diagonal Coupling coefficients finished.               Storage:    993258 words, CPU-Time:      0.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    553837 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.34875563     0.00000000    -0.68871819  0.37D-01  0.99D-01     1.18
    1     2     2     1.00000000     0.00000000  -109.34875563     0.00000000    -0.68849783  0.37D-01  0.99D-01     1.18
    1     3     3     1.00000000     0.00000000  -109.34875563     0.00000000    -0.68810243  0.37D-01  0.99D-01     1.18
    1     4     4     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68899264  0.37D-01  0.99D-01     1.18
    1     5     5     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68843522  0.36D-01  0.99D-01     1.18
    1     6     6     1.00000000     0.00000000  -109.34875562     0.00000000    -0.68781118  0.36D-01  0.99D-01     1.18
    1     7     7     1.00000000     0.00000000  -109.34875562    -0.00000000    -0.68892429  0.37D-01  0.99D-01     1.18
    1     8     8     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69157401  0.36D-01  0.10D+00     1.18
    1     9     9     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69078848  0.37D-01  0.10D+00     1.18
    1    10    10     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69092140  0.37D-01  0.10D+00     1.18
    1    11    11     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69148240  0.37D-01  0.10D+00     1.18
    1    12    12     1.00000000     0.00000000  -109.33009136     0.00000000    -0.69208071  0.37D-01  0.10D+00     1.18
    1    13    13     1.00000000     0.00000000  -109.30501088    -0.00000000    -0.69896942  0.48D-01  0.10D+00     1.18
    1    14    14     1.00000000     0.00000000  -109.30501088     0.00000000    -0.69968993  0.48D-01  0.10D+00     1.18
    1    15    15     1.00000000     0.00000000  -109.30501087     0.00000000    -0.69924077  0.48D-01  0.10D+00     1.18
    2     1     1     1.09219252    -0.56809890  -109.91685453    -0.56809890    -0.01969504  0.28D-02  0.23D-02   192.92
    2     2     2     1.09225441    -0.56807809  -109.91683371    -0.56807809    -0.01973903  0.28D-02  0.23D-02   192.92
    2     3     3     1.09220067    -0.56799731  -109.91675294    -0.56799731    -0.01977105  0.28D-02  0.23D-02   192.92
    2     4     4     1.09250176    -0.56789112  -109.91664674    -0.56789112    -0.01998559  0.30D-02  0.23D-02   192.92
    2     5     5     1.09218217    -0.56786907  -109.91662469    -0.56786907    -0.01984324  0.28D-02  0.23D-02   192.92
    2     6     6     1.09222258    -0.56786010  -109.91661572    -0.56786010    -0.01986591  0.28D-02  0.23D-02   192.92
    2     7     7     1.09243456    -0.56766062  -109.91641624    -0.56766062    -0.02007870  0.30D-02  0.23D-02   192.92
    2     8     8     1.09367920    -0.57125110  -109.90134246    -0.57125110    -0.01838217  0.29D-02  0.20D-02   192.92
    2     9     9     1.09376359    -0.57090020  -109.90099156    -0.57090020    -0.01868850  0.31D-02  0.20D-02   192.92
    2    10    10     1.09375660    -0.57044361  -109.90053498    -0.57044361    -0.01904933  0.32D-02  0.21D-02   192.92
    2    11    11     1.09367123    -0.57043315  -109.90052452    -0.57043315    -0.01900556  0.31D-02  0.21D-02   192.92
    2    12    12     1.09365465    -0.57042806  -109.90051943    -0.57042806    -0.01901046  0.31D-02  0.21D-02   192.92
    2    13    13     1.09976796    -0.57503282  -109.88004370    -0.57503282    -0.02080770  0.40D-02  0.23D-02   192.92
    2    14    14     1.10001508    -0.57502401  -109.88003488    -0.57502401    -0.02089165  0.42D-02  0.23D-02   192.92
    2    15    15     1.09997396    -0.57494410  -109.87995497    -0.57494410    -0.02092339  0.42D-02  0.23D-02   192.92
    3     1     1     1.08824290    -0.58816882  -109.93692445    -0.02006992    -0.00134804  0.89D-04  0.24D-03   382.14
    3     2     2     1.08828012    -0.58816496  -109.93692059    -0.02008688    -0.00136688  0.91D-04  0.25D-03   382.14
    3     3     3     1.08824536    -0.58816164  -109.93691727    -0.02016433    -0.00135265  0.88D-04  0.24D-03   382.14
    3     4     4     1.08823365    -0.58814980  -109.93690542    -0.02025868    -0.00136423  0.90D-04  0.25D-03   382.14
    3     5     5     1.08818253    -0.58811911  -109.93687474    -0.02025004    -0.00137561  0.89D-04  0.25D-03   382.14
    3     6     6     1.08816982    -0.58811622  -109.93687184    -0.02025612    -0.00137551  0.89D-04  0.25D-03   382.14
    3     7     7     1.08819972    -0.58810128  -109.93685690    -0.02044066    -0.00139649  0.93D-04  0.25D-03   382.14
    3     8     8     1.08918309    -0.58948446  -109.91957583    -0.01823336    -0.00115047  0.12D-03  0.19D-03   382.14
    3     9     9     1.08914175    -0.58943004  -109.91952140    -0.01852984    -0.00117300  0.12D-03  0.19D-03   382.14
    3    10    10     1.08904020    -0.58934693  -109.91943829    -0.01890332    -0.00122445  0.12D-03  0.20D-03   382.14
    3    11    11     1.08899889    -0.58934148  -109.91943284    -0.01890833    -0.00122483  0.13D-03  0.20D-03   382.14
    3    12    12     1.08900190    -0.58934145  -109.91943281    -0.01891338    -0.00122316  0.13D-03  0.20D-03   382.14
    3    13    13     1.09325488    -0.59543170  -109.90044258    -0.02039889    -0.00144209  0.13D-03  0.26D-03   382.14
    3    14    14     1.09320690    -0.59541738  -109.90042826    -0.02039337    -0.00144506  0.13D-03  0.26D-03   382.14
    3    15    15     1.09322158    -0.59541055  -109.90042142    -0.02046645    -0.00145471  0.13D-03  0.26D-03   382.14
    4     1     1     1.09107128    -0.59001783  -109.93877346    -0.00184901    -0.00027537  0.14D-04  0.51D-04   569.59
    4     2     2     1.09106303    -0.59001661  -109.93877224    -0.00185165    -0.00027693  0.15D-04  0.51D-04   569.59
    4     3     3     1.09106522    -0.59001484  -109.93877047    -0.00185320    -0.00027804  0.14D-04  0.51D-04   569.59
    4     4     4     1.09104104    -0.59001454  -109.93877016    -0.00186474    -0.00028044  0.14D-04  0.52D-04   569.59
    4     5     5     1.09106579    -0.59001238  -109.93876800    -0.00189326    -0.00027884  0.14D-04  0.51D-04   569.59
    4     6     6     1.09106344    -0.59001235  -109.93876797    -0.00189613    -0.00027882  0.14D-04  0.51D-04   569.59
    4     7     7     1.09103196    -0.59000790  -109.93876352    -0.00190662    -0.00028144  0.15D-04  0.51D-04   569.59
    4     8     8     1.09151021    -0.59101291  -109.92110427    -0.00152844    -0.00029336  0.11D-04  0.51D-04   569.59
    4     9     9     1.09148598    -0.59100142  -109.92109278    -0.00157138    -0.00029569  0.13D-04  0.51D-04   569.59
    4    10    10     1.09143085    -0.59098717  -109.92107853    -0.00164024    -0.00030278  0.13D-04  0.51D-04   569.59
    4    11    11     1.09143107    -0.59098659  -109.92107795    -0.00164511    -0.00030326  0.13D-04  0.51D-04   569.59
    4    12    12     1.09142074    -0.59098173  -109.92107309    -0.00164029    -0.00030810  0.13D-04  0.53D-04   569.59
    4    13    13     1.09592888    -0.59733201  -109.90234289    -0.00190031    -0.00034121  0.16D-04  0.65D-04   569.59
    4    14    14     1.09589372    -0.59732634  -109.90233721    -0.00190896    -0.00034719  0.16D-04  0.66D-04   569.59
    4    15    15     1.09589550    -0.59732593  -109.90233681    -0.00191539    -0.00034728  0.16D-04  0.67D-04   569.59
    5     1     1     1.09259164    -0.59036038  -109.93911601    -0.00034255    -0.00005844  0.17D-05  0.12D-04   760.05
    5     2     2     1.09259685    -0.59036027  -109.93911589    -0.00034365    -0.00005852  0.17D-05  0.12D-04   760.05
    5     3     3     1.09258749    -0.59035931  -109.93911494    -0.00034447    -0.00005928  0.17D-05  0.12D-04   760.05
    5     4     4     1.09258966    -0.59035897  -109.93911459    -0.00034443    -0.00005947  0.17D-05  0.12D-04   760.05
    5     5     5     1.09258663    -0.59035873  -109.93911436    -0.00034636    -0.00005922  0.18D-05  0.12D-04   760.05
    5     6     6     1.09258884    -0.59035834  -109.93911397    -0.00034599    -0.00006016  0.17D-05  0.12D-04   760.05
    5     7     7     1.09257340    -0.59035772  -109.93911335    -0.00034982    -0.00006186  0.17D-05  0.13D-04   760.05
    5     8     8     1.09329269    -0.59142220  -109.92151356    -0.00040930    -0.00008693  0.38D-05  0.16D-04   760.05
    5     9     9     1.09329772    -0.59142112  -109.92151249    -0.00041970    -0.00008685  0.38D-05  0.16D-04   760.05
    5    10    10     1.09328388    -0.59141734  -109.92150871    -0.00043017    -0.00008645  0.38D-05  0.15D-04   760.05
    5    11    11     1.09328329    -0.59141720  -109.92150856    -0.00043061    -0.00008675  0.38D-05  0.15D-04   760.05
    5    12    12     1.09325773    -0.59141235  -109.92150371    -0.00043061    -0.00009191  0.37D-05  0.17D-04   760.05
    5    13    13     1.09786478    -0.59777767  -109.90278855    -0.00044566    -0.00008340  0.28D-05  0.17D-04   760.05
    5    14    14     1.09784100    -0.59777306  -109.90278393    -0.00044672    -0.00008909  0.30D-05  0.19D-04   760.05
    5    15    15     1.09783691    -0.59777129  -109.90278217    -0.00044536    -0.00009079  0.30D-05  0.19D-04   760.05
    6     1     1     1.09262642    -0.59043203  -109.93918766    -0.00007165    -0.00001928  0.15D-05  0.40D-05   947.34
    6     2     2     1.09263065    -0.59043177  -109.93918740    -0.00007151    -0.00001973  0.14D-05  0.42D-05   947.34
    6     3     3     1.09263436    -0.59043160  -109.93918723    -0.00007229    -0.00001967  0.15D-05  0.42D-05   947.34
    6     4     4     1.09263045    -0.59043114  -109.93918676    -0.00007217    -0.00002009  0.15D-05  0.43D-05   947.34
    6     5     5     1.09263284    -0.59043102  -109.93918665    -0.00007229    -0.00002012  0.15D-05  0.43D-05   947.34
    6     6     6     1.09262978    -0.59043032  -109.93918594    -0.00007197    -0.00002099  0.14D-05  0.47D-05   947.34
    6     7     7     1.09263829    -0.59042947  -109.93918509    -0.00007174    -0.00002138  0.16D-05  0.47D-05   947.34
    6     8     8     1.09327160    -0.59153000  -109.92162136    -0.00010780    -0.00003476  0.45D-05  0.59D-05   947.34
    6     9     9     1.09324793    -0.59152972  -109.92162109    -0.00010860    -0.00003455  0.46D-05  0.56D-05   947.34
    6    10    10     1.09324757    -0.59152957  -109.92162093    -0.00011223    -0.00003469  0.46D-05  0.56D-05   947.34
    6    11    11     1.09327568    -0.59152905  -109.92162041    -0.00011185    -0.00003513  0.46D-05  0.60D-05   947.34
    6    12    12     1.09325077    -0.59152507  -109.92161643    -0.00011272    -0.00003726  0.49D-05  0.63D-05   947.34
    6    13    13     1.09784201    -0.59787500  -109.90288588    -0.00009733    -0.00002811  0.31D-05  0.53D-05   947.34
    6    14    14     1.09784517    -0.59787184  -109.90288271    -0.00009878    -0.00003022  0.32D-05  0.59D-05   947.34
    6    15    15     1.09784709    -0.59787082  -109.90288169    -0.00009952    -0.00003065  0.32D-05  0.60D-05   947.34
    7     1     1     1.09273014    -0.59045278  -109.93920840    -0.00002074    -0.00000602  0.32D-06  0.13D-05  1136.25
    7     2     2     1.09272609    -0.59045238  -109.93920800    -0.00002060    -0.00000633  0.27D-06  0.15D-05  1136.25
    7     3     3     1.09272703    -0.59045232  -109.93920795    -0.00002072    -0.00000635  0.27D-06  0.15D-05  1136.25
    7     4     4     1.09272235    -0.59045215  -109.93920778    -0.00002102    -0.00000646  0.25D-06  0.15D-05  1136.25
    7     5     5     1.09272135    -0.59045215  -109.93920777    -0.00002113    -0.00000649  0.25D-06  0.15D-05  1136.25
    7     6     6     1.09271391    -0.59045172  -109.93920735    -0.00002141    -0.00000670  0.24D-06  0.16D-05  1136.25
    7     7     7     1.09271475    -0.59045157  -109.93920719    -0.00002210    -0.00000681  0.26D-06  0.16D-05  1136.25
    7     8     8     1.09333162    -0.59156781  -109.92165917    -0.00003781    -0.00001169  0.56D-06  0.20D-05  1136.25
    7     9     9     1.09332948    -0.59156777  -109.92165913    -0.00003804    -0.00001172  0.55D-06  0.20D-05  1136.25
    7    10    10     1.09333705    -0.59156770  -109.92165907    -0.00003813    -0.00001181  0.41D-06  0.21D-05  1136.25
    7    11    11     1.09332901    -0.59156719  -109.92165856    -0.00003815    -0.00001212  0.42D-06  0.22D-05  1136.25
    7    12    12     1.09331257    -0.59156591  -109.92165727    -0.00004084    -0.00001255  0.49D-06  0.22D-05  1136.25
    7    13    13     1.09797268    -0.59790797  -109.90291885    -0.00003296    -0.00000899  0.59D-06  0.17D-05  1136.25
    7    14    14     1.09795094    -0.59790670  -109.90291757    -0.00003486    -0.00000977  0.57D-06  0.19D-05  1136.25
    7    15    15     1.09794737    -0.59790628  -109.90291715    -0.00003546    -0.00001001  0.56D-06  0.20D-05  1136.25
    8     1     1     1.09287323    -0.59045915  -109.93921477    -0.00000637    -0.00000206  0.80D-07  0.48D-06  1324.17
    8     2     2     1.09286841    -0.59045893  -109.93921456    -0.00000656    -0.00000217  0.83D-07  0.51D-06  1324.17
    8     3     3     1.09286864    -0.59045890  -109.93921452    -0.00000658    -0.00000219  0.83D-07  0.52D-06  1324.17
    8     4     4     1.09286434    -0.59045885  -109.93921447    -0.00000669    -0.00000223  0.83D-07  0.52D-06  1324.17
    8     5     5     1.09286443    -0.59045883  -109.93921446    -0.00000668    -0.00000224  0.83D-07  0.53D-06  1324.17
    8     6     6     1.09286147    -0.59045870  -109.93921432    -0.00000698    -0.00000229  0.84D-07  0.53D-06  1324.17
    8     7     7     1.09285703    -0.59045858  -109.93921421    -0.00000702    -0.00000242  0.85D-07  0.58D-06  1324.17
    8     8     8     1.09352272    -0.59158223  -109.92167360    -0.00001442    -0.00000476  0.31D-06  0.85D-06  1324.17
    8     9     9     1.09352144    -0.59158222  -109.92167359    -0.00001446    -0.00000478  0.31D-06  0.86D-06  1324.17
    8    10    10     1.09351230    -0.59158182  -109.92167318    -0.00001411    -0.00000513  0.29D-06  0.10D-05  1324.17
    8    11    11     1.09350943    -0.59158155  -109.92167292    -0.00001436    -0.00000526  0.29D-06  0.10D-05  1324.17
    8    12    12     1.09350452    -0.59158122  -109.92167258    -0.00001531    -0.00000540  0.30D-06  0.10D-05  1324.17
    8    13    13     1.09817584    -0.59791842  -109.90292930    -0.00001045    -0.00000326  0.15D-06  0.74D-06  1324.17
    8    14    14     1.09816113    -0.59791786  -109.90292873    -0.00001116    -0.00000366  0.16D-06  0.84D-06  1324.17
    8    15    15     1.09815598    -0.59791763  -109.90292850    -0.00001135    -0.00000381  0.16D-06  0.89D-06  1324.17
    9     1     1     1.09291508    -0.59046128  -109.93921690    -0.00000213    -0.00000075  0.41D-07  0.17D-06  1513.61
    9     2     2     1.09291349    -0.59046120  -109.93921682    -0.00000226    -0.00000080  0.40D-07  0.18D-06  1513.61
    9     3     3     1.09291424    -0.59046118  -109.93921681    -0.00000228    -0.00000080  0.43D-07  0.18D-06  1513.61
    9     4     4     1.09291266    -0.59046116  -109.93921678    -0.00000231    -0.00000082  0.42D-07  0.18D-06  1513.61
    9     5     5     1.09291265    -0.59046116  -109.93921678    -0.00000232    -0.00000082  0.42D-07  0.19D-06  1513.61
    9     6     6     1.09291058    -0.59046110  -109.93921672    -0.00000240    -0.00000087  0.38D-07  0.20D-06  1513.61
    9     7     7     1.09291097    -0.59046104  -109.93921666    -0.00000245    -0.00000091  0.44D-07  0.21D-06  1513.61
    9     8     8     1.09357407    -0.59158766  -109.92167903    -0.00000543    -0.00000226  0.23D-06  0.41D-06  1513.61
    9     9     9     1.09357351    -0.59158766  -109.92167902    -0.00000543    -0.00000227  0.23D-06  0.42D-06  1513.61
    9    10    10     1.09357488    -0.59158736  -109.92167872    -0.00000554    -0.00000239  0.24D-06  0.45D-06  1513.61
    9    11    11     1.09357296    -0.59158723  -109.92167859    -0.00000567    -0.00000247  0.24D-06  0.46D-06  1513.61
    9    12    12     1.09356875    -0.59158712  -109.92167849    -0.00000591    -0.00000252  0.24D-06  0.47D-06  1513.61
    9    13    13     1.09822434    -0.59792183  -109.90293271    -0.00000341    -0.00000126  0.73D-07  0.28D-06  1513.61
    9    14    14     1.09821961    -0.59792158  -109.90293246    -0.00000373    -0.00000141  0.78D-07  0.31D-06  1513.61
    9    15    15     1.09821783    -0.59792148  -109.90293235    -0.00000385    -0.00000146  0.81D-07  0.33D-06  1513.61
   10     1     1     1.09292881    -0.59046209  -109.93921771    -0.00000081    -0.00000029  0.91D-08  0.69D-07  1701.07
   10     2     2     1.09292752    -0.59046204  -109.93921767    -0.00000085    -0.00000032  0.64D-08  0.84D-07  1701.07
   10     3     3     1.09292775    -0.59046204  -109.93921766    -0.00000086    -0.00000033  0.67D-08  0.84D-07  1701.07
   10     4     4     1.09292690    -0.59046203  -109.93921765    -0.00000087    -0.00000034  0.56D-08  0.88D-07  1701.07
   10     5     5     1.09292675    -0.59046203  -109.93921765    -0.00000087    -0.00000034  0.57D-08  0.89D-07  1701.07
   10     6     6     1.09292487    -0.59046199  -109.93921762    -0.00000089    -0.00000036  0.50D-08  0.98D-07  1701.07
   10     7     7     1.09292505    -0.59046197  -109.93921759    -0.00000093    -0.00000038  0.51D-08  0.10D-06  1701.07
   10     8     8     1.09359812    -0.59159010  -109.92168147    -0.00000244    -0.00000095  0.33D-07  0.18D-06  1701.07
   10     9     9     1.09359868    -0.59159010  -109.92168147    -0.00000245    -0.00000095  0.34D-07  0.18D-06  1701.07
   10    10    10     1.09359983    -0.59158994  -109.92168130    -0.00000258    -0.00000105  0.29D-07  0.22D-06  1701.07
   10    11    11     1.09359763    -0.59158987  -109.92168123    -0.00000264    -0.00000109  0.30D-07  0.23D-06  1701.07
   10    12    12     1.09359347    -0.59158983  -109.92168120    -0.00000271    -0.00000110  0.32D-07  0.23D-06  1701.07
   10    13    13     1.09824754    -0.59792321  -109.90293409    -0.00000138    -0.00000049  0.22D-07  0.11D-06  1701.07
   10    14    14     1.09824215    -0.59792310  -109.90293397    -0.00000151    -0.00000056  0.20D-07  0.13D-06  1701.07
   10    15    15     1.09824064    -0.59792305  -109.90293392    -0.00000157    -0.00000059  0.20D-07  0.14D-06  1701.07
   11     1     1     1.09294822    -0.59046237  -109.93921799    -0.00000028    -0.00000012  0.18D-08  0.33D-07  1889.57
   11     2     2     1.09294588    -0.59046234  -109.93921797    -0.00000030    -0.00000014  0.24D-08  0.39D-07  1889.57
   11     3     3     1.09294594    -0.59046234  -109.93921797    -0.00000030    -0.00000014  0.24D-08  0.39D-07  1889.57
   11     4     4     1.09294502    -0.59046233  -109.93921796    -0.00000031    -0.00000014  0.26D-08  0.39D-07  1889.57
   11     5     5     1.09294487    -0.59046233  -109.93921796    -0.00000031    -0.00000014  0.26D-08  0.40D-07  1889.57
   11     6     6     1.09294334    -0.59046232  -109.93921794    -0.00000033    -0.00000015  0.27D-08  0.42D-07  1889.57
   11     7     7     1.09294265    -0.59046231  -109.93921793    -0.00000034    -0.00000016  0.28D-08  0.44D-07  1889.57
   11     8     8     1.09363212    -0.59159114  -109.92168250    -0.00000104    -0.00000046  0.21D-07  0.94D-07  1889.57
   11     9     9     1.09363162    -0.59159114  -109.92168250    -0.00000104    -0.00000046  0.21D-07  0.95D-07  1889.57
   11    10    10     1.09362849    -0.59159103  -109.92168239    -0.00000109    -0.00000052  0.18D-07  0.12D-06  1889.57
   11    11    11     1.09362632    -0.59159098  -109.92168234    -0.00000111    -0.00000055  0.18D-07  0.12D-06  1889.57
   11    12    12     1.09362487    -0.59159097  -109.92168234    -0.00000114    -0.00000054  0.19D-07  0.12D-06  1889.57
   11    13    13     1.09828093    -0.59792372  -109.90293460    -0.00000051    -0.00000020  0.35D-08  0.49D-07  1889.57
   11    14    14     1.09827558    -0.59792367  -109.90293454    -0.00000057    -0.00000024  0.38D-08  0.60D-07  1889.57
   11    15    15     1.09827379    -0.59792364  -109.90293452    -0.00000060    -0.00000025  0.41D-08  0.64D-07  1889.57
   12     1     1     1.09295987    -0.59046248  -109.93921810    -0.00000011    -0.00000005  0.18D-08  0.13D-07  2080.40
   12     2     2     1.09295855    -0.59046247  -109.93921809    -0.00000012    -0.00000006  0.16D-08  0.15D-07  2080.40
   12     3     3     1.09295866    -0.59046247  -109.93921809    -0.00000013    -0.00000006  0.17D-08  0.15D-07  2080.40
   12     4     4     1.09295810    -0.59046246  -109.93921809    -0.00000013    -0.00000006  0.15D-08  0.16D-07  2080.40
   12     5     5     1.09295791    -0.59046246  -109.93921809    -0.00000013    -0.00000006  0.14D-08  0.16D-07  2080.40
   12     6     6     1.09295703    -0.59046246  -109.93921808    -0.00000014    -0.00000006  0.13D-08  0.17D-07  2080.40
   12     7     7     1.09295677    -0.59046245  -109.93921807    -0.00000014    -0.00000007  0.14D-08  0.18D-07  2080.40
   12     8     8     1.09365225    -0.59159162  -109.92168298    -0.00000048    -0.00000023  0.17D-07  0.47D-07  2080.40
   12     9     9     1.09365199    -0.59159162  -109.92168298    -0.00000048    -0.00000023  0.17D-07  0.47D-07  2080.40
   12    10    10     1.09364999    -0.59159155  -109.92168292    -0.00000052    -0.00000027  0.19D-07  0.58D-07  2080.40
   12    11    11     1.09364828    -0.59159153  -109.92168289    -0.00000055    -0.00000027  0.19D-07  0.56D-07  2080.40
   12    12    12     1.09364817    -0.59159152  -109.92168288    -0.00000055    -0.00000028  0.18D-07  0.62D-07  2080.40
   12    13    13     1.09829792    -0.59792392  -109.90293480    -0.00000020    -0.00000008  0.37D-08  0.19D-07  2080.40
   12    14    14     1.09829518    -0.59792390  -109.90293477    -0.00000023    -0.00000010  0.40D-08  0.23D-07  2080.40
   12    15    15     1.09829422    -0.59792389  -109.90293476    -0.00000024    -0.00000010  0.41D-08  0.25D-07  2080.40
   13     1     1     1.09296455    -0.59046253  -109.93921815    -0.00000005    -0.00000002  0.13D-09  0.59D-08  2267.89
   13     2     2     1.09296381    -0.59046252  -109.93921814    -0.00000005    -0.00000003  0.13D-09  0.72D-08  2267.89
   13     3     3     1.09296383    -0.59046252  -109.93921814    -0.00000005    -0.00000003  0.12D-09  0.72D-08  2267.89
   13     4     4     1.09296359    -0.59046252  -109.93921814    -0.00000006    -0.00000003  0.14D-09  0.74D-08  2267.89
   13     5     5     1.09296342    -0.59046252  -109.93921814    -0.00000006    -0.00000003  0.15D-09  0.75D-08  2267.89
   13     6     6     1.09296288    -0.59046252  -109.93921814    -0.00000006    -0.00000003  0.18D-09  0.83D-08  2267.89
   13     7     7     1.09296279    -0.59046251  -109.93921814    -0.00000006    -0.00000003  0.19D-09  0.89D-08  2267.89
   13     8     8     1.09365995    -0.59159185  -109.92168322    -0.00000023    -0.00000011  0.24D-08  0.26D-07  2267.89
   13     9     9     1.09366010    -0.59159185  -109.92168322    -0.00000023    -0.00000011  0.24D-08  0.27D-07  2267.89
   13    10    10     1.09365960    -0.59159181  -109.92168318    -0.00000026    -0.00000013  0.28D-08  0.32D-07  2267.89
   13    11    11     1.09365790    -0.59159181  -109.92168317    -0.00000027    -0.00000014  0.25D-08  0.33D-07  2267.89
   13    12    12     1.09365793    -0.59159180  -109.92168316    -0.00000027    -0.00000014  0.32D-08  0.34D-07  2267.89
   13    13    13     1.09830445    -0.59792401  -109.90293488    -0.00000008    -0.00000004  0.51D-09  0.89D-08  2267.89
   13    14    14     1.09830263    -0.59792399  -109.90293487    -0.00000010    -0.00000004  0.35D-09  0.11D-07  2267.89
   13    15    15     1.09830203    -0.59792399  -109.90293486    -0.00000010    -0.00000005  0.30D-09  0.12D-07  2267.89
   14     1     1     1.09296466    -0.59046253  -109.93921815    -0.00000000    -0.00000002  0.12D-09  0.57D-08  2361.53
   14     2     2     1.09296385    -0.59046252  -109.93921815    -0.00000000    -0.00000003  0.12D-09  0.71D-08  2361.53
   14     3     3     1.09296386    -0.59046252  -109.93921815    -0.00000000    -0.00000003  0.12D-09  0.72D-08  2361.53
   14     4     4     1.09296359    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.14D-09  0.74D-08  2361.53
   14     5     5     1.09296344    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.15D-09  0.75D-08  2361.53
   14     6     6     1.09296288    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.17D-09  0.82D-08  2361.53
   14     7     7     1.09296282    -0.59046251  -109.93921814    -0.00000000    -0.00000003  0.18D-09  0.88D-08  2361.53
   14     8     8     1.09367728    -0.59159204  -109.92168340    -0.00000019    -0.00000005  0.29D-08  0.11D-07  2361.53
   14     9     9     1.09367728    -0.59159204  -109.92168340    -0.00000019    -0.00000005  0.29D-08  0.11D-07  2361.53
   14    10    10     1.09367874    -0.59159204  -109.92168340    -0.00000023    -0.00000005  0.30D-08  0.10D-07  2361.53
   14    11    11     1.09367859    -0.59159204  -109.92168340    -0.00000023    -0.00000006  0.29D-08  0.13D-07  2361.53
   14    12    12     1.09367825    -0.59159204  -109.92168340    -0.00000024    -0.00000006  0.33D-08  0.12D-07  2361.53
   14    13    13     1.09831882    -0.59792406  -109.90293494    -0.00000005    -0.00000001  0.79D-09  0.24D-08  2361.53
   14    14    14     1.09831873    -0.59792406  -109.90293494    -0.00000007    -0.00000001  0.83D-09  0.27D-08  2361.53
   14    15    15     1.09830445    -0.59792401  -109.90293488    -0.00000002    -0.00000004  0.51D-09  0.89D-08  2361.53
   15     1     1     1.09296465    -0.59046253  -109.93921815    -0.00000000    -0.00000002  0.12D-09  0.57D-08  2432.37
   15     2     2     1.09296385    -0.59046252  -109.93921815    -0.00000000    -0.00000003  0.13D-09  0.71D-08  2432.37
   15     3     3     1.09296386    -0.59046252  -109.93921815    -0.00000000    -0.00000003  0.12D-09  0.71D-08  2432.37
   15     4     4     1.09296359    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.14D-09  0.74D-08  2432.37
   15     5     5     1.09296344    -0.59046252  -109.93921814    -0.00000000    -0.00000003  0.15D-09  0.75D-08  2432.37
   15     6     6     1.09296288    -0.59046252  -109.93921814     0.00000000    -0.00000003  0.17D-09  0.82D-08  2432.37
   15     7     7     1.09296282    -0.59046251  -109.93921814    -0.00000000    -0.00000003  0.18D-09  0.88D-08  2432.37
   15     8     8     1.09368008    -0.59159208  -109.92168344    -0.00000003    -0.00000001  0.20D-09  0.13D-08  2432.37
   15     9     9     1.09367997    -0.59159208  -109.92168344    -0.00000003    -0.00000001  0.22D-09  0.12D-08  2432.37
   15    10    10     1.09367996    -0.59159208  -109.92168344    -0.00000004    -0.00000001  0.21D-09  0.12D-08  2432.37
   15    11    11     1.09367999    -0.59159208  -109.92168344    -0.00000004    -0.00000001  0.21D-09  0.14D-08  2432.37
   15    12    12     1.09368058    -0.59159208  -109.92168344    -0.00000004    -0.00000000  0.18D-09  0.11D-08  2432.37
   15    13    13     1.09831883    -0.59792406  -109.90293494    -0.00000000    -0.00000001  0.79D-09  0.24D-08  2432.37
   15    14    14     1.09831874    -0.59792406  -109.90293494    -0.00000000    -0.00000001  0.83D-09  0.27D-08  2432.37
   15    15    15     1.09830445    -0.59792401  -109.90293488    -0.00000000    -0.00000004  0.51D-09  0.89D-08  2432.37


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   2.8%  88.0%

 Initialization:   0.0%
 Other:            8.9%

 Total CPU:     2432.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2\222          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9530979   0.0000000  -0.0000000
                      0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2//222\222           0.9454958   0.0000000  -0.0000000  -0.1201336   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000002
 222/2/\222           0.1074508   0.0000000   0.0000000   0.8456776   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.3967171
 2/22/2\222           0.0537252  -0.0000000  -0.0000000   0.4228388  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.7934343
 222//2\222           0.0000000   0.7658090   0.0000000   0.0000000  -0.3745037   0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.0000000   0.3967104  -0.0000000  -0.0000000
 2222//\222           0.0000000   0.0000000   0.7654990   0.0000000   0.0000000  -0.3751371  -0.0000000  -0.0000000   0.0000000
                     -0.0000001  -0.0000000  -0.0000000   0.0000000   0.3967104   0.0000000
 2/\222/222          -0.0000012  -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000  -0.0000000   0.6889704   0.0000000   0.0000000  -0.0000000
 22/22/\222           0.0000000   0.0000000  -0.1217626  -0.0000000   0.0000000   0.5903657  -0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.0000000   0.0000000   0.6871226  -0.0000000
 22//22\222           0.0000000  -0.1222509   0.0000000   0.0000000   0.5902647   0.0000000   0.0000000   0.0000000  -0.0000001
                      0.0000000   0.0000000  -0.0000000   0.6871224  -0.0000000  -0.0000000
 2/222/\222          -0.0000000   0.5540635  -0.0000000   0.0000000   0.6478655  -0.0000000  -0.0000000  -0.0000000  -0.0000001
                      0.0000000  -0.0000000   0.0000000  -0.3967104   0.0000000   0.0000000
 2/2/22\222          -0.0000000  -0.0000000   0.5545990  -0.0000000  -0.0000000   0.6474073   0.0000000   0.0000000  -0.0000000
                      0.0000001   0.0000000  -0.0000000  -0.0000000  -0.3967105  -0.0000000
 22/2\2/222          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000002   0.2588949  -0.0000000
                     -0.0000000   0.6384822   0.0000000  -0.0000000   0.0000000  -0.0000000
 222/\2/222           0.0000000  -0.0000010  -0.0000000   0.0000000  -0.0000034  -0.0000000   0.0000000   0.0000000   0.5966674
                      0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
 2222/\/222           0.0000000   0.0000000   0.0000014   0.0000000   0.0000000   0.0000007  -0.0000000   0.0000000   0.0000000
                      0.5966674  -0.0000000   0.0000000  -0.0000000   0.0000003   0.0000000
 2/2\22/222           0.0000000  -0.0000000   0.0000012   0.0000000   0.0000000  -0.0000031  -0.0000000   0.0000000   0.0000000
                     -0.5966672   0.0000000  -0.0000000  -0.0000000  -0.0000012  -0.0000000
 2/222\/222          -0.0000000  -0.0000002   0.0000000  -0.0000000  -0.0000014  -0.0000000  -0.0000000   0.0000000   0.5966671
                      0.0000000   0.0000000   0.0000000  -0.0000009  -0.0000000   0.0000000
 222/2\/222           0.0000019   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000  -0.5966657  -0.0000000  -0.0000000  -0.0000002
 222022/222          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000004  -0.0671972  -0.0000000
                     -0.0000000   0.4825218   0.0000000  -0.0000000   0.0000000  -0.0000000
 220222/222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000006  -0.4514748  -0.0000000
                      0.0000000   0.1830662  -0.0000000   0.0000000   0.0000000  -0.0000000
 202222/222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000003   0.4514747  -0.0000000
                     -0.0000000  -0.1830660  -0.0000000  -0.0000000   0.0000000   0.0000000
 222202/222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000002   0.4514746  -0.0000000
                     -0.0000000  -0.1830661   0.0000000   0.0000000  -0.0000000  -0.0000000
 222220/222           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000006  -0.3842772   0.0000000
                      0.0000000  -0.2994558  -0.0000000   0.0000000  -0.0000000   0.0000000
 22/22\/222           0.0000000  -0.0000000  -0.0000002   0.0000000   0.0000000  -0.0000001   0.0000000  -0.0000000   0.0000000
                     -0.3444863   0.0000000  -0.0000000  -0.0000000  -0.0000008  -0.0000000
 22/\22/222          -0.0000000  -0.0000018   0.0000000  -0.0000000  -0.0000010   0.0000000  -0.0000000   0.0000000   0.3444861
                      0.0000000   0.0000000   0.0000000  -0.0000004  -0.0000000   0.0000000
 2/22220222           0.0000068   0.0000000  -0.0000000   0.0000004  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.0000000   0.0000000   0.2475790   0.0000000  -0.0000000  -0.0000002
 222/220222           0.0000000  -0.0000043  -0.0000000  -0.0000000  -0.0000138  -0.0000000   0.0000000   0.0000000  -0.2475716
                      0.0000000  -0.0000000  -0.0000000  -0.0000024  -0.0000000  -0.0000000
 22222/0222           0.0000000  -0.0000000  -0.0000005   0.0000000  -0.0000000  -0.0000101  -0.0000000   0.0000000  -0.0000000
                      0.2475713   0.0000000   0.0000000   0.0000000  -0.0000044   0.0000000
 22/2220222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000029  -0.2294190  -0.0000000
                     -0.0000000   0.0930258   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222/20222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000009   0.0930239   0.0000000
                      0.0000000   0.2294161   0.0000000   0.0000000  -0.0000000   0.0000000
 2/\2/22222          -0.0055790  -0.0000000  -0.0000000  -0.0439069   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2049282
 222//\2222           0.0027889   0.0000000  -0.0000000   0.0219535   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000  -0.0000000   0.0320096  -0.0000000  -0.0000000  -0.1536960
 22//\22222           0.0000000  -0.0395644  -0.0000000   0.0000000  -0.0081947  -0.0000000  -0.0000000  -0.0000000   0.0554423
                      0.0000000  -0.0000000   0.0000000  -0.1479034  -0.0000000   0.0000000
 220/222222           0.0000000   0.0089767  -0.0000000   0.0000000  -0.0433412  -0.0000000  -0.0000000  -0.0000000   0.0008586
                     -0.0000000  -0.0000000   0.0000000  -0.1255007   0.0000000   0.0000000
 22022/2222          -0.0000000   0.0000000   0.0089409  -0.0000000   0.0000000  -0.0433488  -0.0000000   0.0000000  -0.0000000
                     -0.0008586   0.0000000   0.0000000  -0.0000000  -0.1255006  -0.0000000
 22220/2222           0.0000000  -0.0000000   0.0264906  -0.0000000  -0.0000000   0.0129959   0.0000000  -0.0000000   0.0000000
                     -0.0531301  -0.0000000  -0.0000000   0.0000000   0.1255005  -0.0000000
 202/222222          -0.0000000  -0.0294724   0.0000000  -0.0000000   0.0014293   0.0000000   0.0000000   0.0000000   0.0531301
                      0.0000000   0.0000000  -0.0000000   0.1255005  -0.0000000  -0.0000000
 222/022222          -0.0000000   0.0264801  -0.0000000  -0.0000000   0.0130176   0.0000000   0.0000000   0.0000000   0.0531302
                     -0.0000000   0.0000000  -0.0000000   0.1255005  -0.0000000  -0.0000000
 20222/2222           0.0000000   0.0000000  -0.0294713  -0.0000000  -0.0000000   0.0014537   0.0000000   0.0000000   0.0000000
                     -0.0531300  -0.0000000  -0.0000000   0.0000000   0.1255004  -0.0000000
 222/202222           0.0000000  -0.0059842  -0.0000000   0.0000000   0.0288935  -0.0000000  -0.0000000  -0.0000000   0.0531301
                     -0.0000000  -0.0000000   0.0000000  -0.1255001   0.0000000   0.0000000
 22202/2222          -0.0000000   0.0000000  -0.0059601  -0.0000000   0.0000000   0.0288985  -0.0000000  -0.0000000  -0.0000000
                     -0.0531301   0.0000000  -0.0000000  -0.0000000  -0.1255001  -0.0000000
 2/20222222           0.0208640  -0.0000000  -0.0000000  -0.0208651   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.0531302   0.0000000   0.0000000   0.1254932
 2/22202222           0.0254187   0.0000000   0.0000000   0.0149844   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0531302  -0.0000000  -0.0000000  -0.1254926
 22/2/\2222          -0.0000000  -0.0000000   0.0166242  -0.0000000   0.0000000   0.0194068   0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.0000000   0.0000000   0.1183228  -0.0000000
 2//22\2222          -0.0000000  -0.0229557   0.0000000  -0.0000000   0.0112262   0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0000000   0.0000000  -0.0000000   0.1183226  -0.0000000  -0.0000000
 2//\222222           0.0000000  -0.0000000  -0.0229466  -0.0000000   0.0000000   0.0112449  -0.0000000   0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0000000   0.0000000   0.1183223   0.0000000
 2//2\22222           0.0032211   0.0000000   0.0000000   0.0253496  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.1183155
 2/22/\2222           0.0000000  -0.0109934  -0.0000000   0.0000000   0.0530814  -0.0000000  -0.0000000  -0.0000000  -0.0640191
                      0.0000000  -0.0000000   0.0000000  -0.1024703   0.0000000   0.0000000
 2/\/222222          -0.0000000  -0.0000000  -0.0324451  -0.0000000  -0.0000000  -0.0159161   0.0000000   0.0000000   0.0000000
                      0.0640193  -0.0000000   0.0000000   0.0000000   0.1024703   0.0000000
 2/\22/2222          -0.0000000  -0.0324314  -0.0000000   0.0000000  -0.0159435   0.0000000   0.0000000   0.0000000  -0.0640193
                     -0.0000000   0.0000000  -0.0000000   0.1024701   0.0000000  -0.0000000
 22/2\/2222          -0.0000000  -0.0000000  -0.0360948  -0.0000000  -0.0000000   0.0017805   0.0000000   0.0000000  -0.0000000
                     -0.0640193   0.0000000  -0.0000000   0.0000000  -0.1024701  -0.0000000
 2/2\/22222          -0.0000000   0.0000000  -0.0292679   0.0000000  -0.0000000   0.0418968  -0.0000000  -0.0000000  -0.0000000
                      0.0554422   0.0000000   0.0000000  -0.0000000  -0.0887417   0.0000000
 222/\/2222           0.0016111   0.0000000   0.0000000   0.0126748   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0554425  -0.0000000  -0.0000000  -0.0887367
 2/02222222           0.0000001  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0792660  -0.0000000  -0.0000000   0.0000000
 2202/22222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000001  -0.0297858  -0.0000000
                      0.0000000  -0.0734571  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20/2222222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000002   0.0734569   0.0000000
                     -0.0000000  -0.0297856  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22/2022222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000001   0.0734569   0.0000000
                     -0.0000000  -0.0297856   0.0000000   0.0000000  -0.0000000   0.0000000
 2220/22222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0233276   0.0219864   0.0000000
                     -0.0000000  -0.0662470   0.0000000   0.0000000   0.0000000   0.0000000
 2222/02222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0233276  -0.0619159   0.0000000
                      0.0000000  -0.0322259  -0.0000000   0.0000000  -0.0000000  -0.0000000
 22//2\2222           0.0523103  -0.0000000   0.0000000   0.0191126   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000  -0.0000000   0.0554424   0.0000000   0.0000000  -0.0295791
 22/\/22222           0.0000000  -0.0036648  -0.0000000   0.0000000   0.0176935  -0.0000000   0.0000000   0.0000000   0.0320096
                     -0.0000000   0.0000000  -0.0000000   0.0512353  -0.0000000  -0.0000000
 2/2/\22222           0.0000000   0.0000000  -0.0287947   0.0000000   0.0000000  -0.0336134  -0.0000000   0.0000000   0.0000000
                     -0.0320095   0.0000000  -0.0000000   0.0000000   0.0512350  -0.0000000
 22/\2/2222          -0.0227631  -0.0000000  -0.0000000   0.0475084   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0320096   0.0000000   0.0000000  -0.0512321
 2/2\2/2222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000001   0.0504976  -0.0000000
                     -0.0000000   0.0393513   0.0000000  -0.0000000   0.0000000   0.0000000
 2/2/2\2222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0393512   0.0000000
                      0.0000000   0.0504975   0.0000000  -0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.955006   -0.000000    0.000000    0.000000    0.053869   -0.000000   -0.000000   -0.000000
            -0.000001   -0.000000   -0.000000    0.000000    0.000000
 2           0.818502    0.000000    0.000000    0.000000    0.000000    0.494969   -0.000000   -0.000000   -0.000001    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000    0.954682   -0.000000   -0.000000    0.059342    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.053869    0.000000   -0.000000   -0.000000    0.955007    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.494969    0.000000    0.000000   -0.000000    0.000000   -0.818502   -0.000000   -0.000000   -0.000001    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000   -0.059342   -0.000000   -0.000000    0.954683    0.000000    0.000000    0.000000   -0.000000    0.000001
             0.000000    0.000000    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.956525    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.936095    0.000000    0.000000
            -0.000000    0.172061   -0.000000   -0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.951776   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.951776
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 11          0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.172061    0.000000   -0.000000
            -0.000000    0.936095   -0.000000   -0.000000    0.000000
 12          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.951775    0.000000   -0.000000   -0.000000   -0.000000
 13         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.954081
 14         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001
             0.000000    0.000000   -0.000000    0.954081   -0.000000
 15          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.954087    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956524   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000001    0.000000    0.000000   -0.000000
 2          -0.000000    0.956525    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.956525   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.956525   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.956525    0.000000   -0.000000   -0.000000   -0.000001    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956525   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956525    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.951777    0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000   -0.000000   -0.000001   -0.000000    0.000000    0.000000    0.951776    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 10         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.951776
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 11         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.951777   -0.000000   -0.000000    0.000000   -0.000000
 12         -0.000001   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.951775   -0.000000    0.000000    0.000000
 13          0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.954081   -0.000000   -0.000000
 14          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.954081    0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.954087

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00705325    -1.47412431       2212220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00821473    -1.71668618       2221220222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00821466    -1.71667914       2222210222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00705276    -1.47407317       2222120222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00821610    -1.71683100       2122220222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95500642 (fixed)   0.95652636 (relaxed)   0.95652448 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392   -0.00000000   -0.46785300
 Singles      0.01652074   -0.07911604   -0.08131196
 Pairs        0.07644427   -0.00000000   -0.04129756
 Total        1.09296893   -0.07911604   -0.59046253
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875563
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56231628
 One electron energy                 -193.30229596
 Two electron energy                   83.36307780
 Virial quotient                       -2.64516581
 Correlation energy                    -0.59046253
 !MRCI STATE 1.1 Energy              -109.939218152160

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411282 (Davidson, fixed reference)
 Cluster corrected energies          -109.99411029 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411282 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079491 (Pople, fixed reference)
 Cluster corrected energies          -109.99079236 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079491 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.81850217 (fixed)   0.95652671 (relaxed)   0.95652483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785306
 Singles      0.01652078   -0.07911628   -0.08131213
 Pairs        0.07644344   -0.00000007   -0.04129733
 Total        1.09296813   -0.07911635   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875563
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56236098
 One electron energy                 -193.30234802
 Two electron energy                   83.36312987
 Virial quotient                       -2.64516297
 Correlation energy                    -0.59046252
 !MRCI STATE 2.1 Energy              -109.939218145424

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411234 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410982 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411234 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079443 (Pople, fixed reference)
 Cluster corrected energies          -109.99079188 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079443 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95468229 (fixed)   0.95652670 (relaxed)   0.95652483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785311
 Singles      0.01652079   -0.07911629   -0.08131214
 Pairs        0.07644343   -0.00000000   -0.04129728
 Total        1.09296814   -0.07911629   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875563
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56235948
 One electron energy                 -193.30234637
 Two electron energy                   83.36312822
 Virial quotient                       -2.64516306
 Correlation energy                    -0.59046252
 !MRCI STATE 3.1 Energy              -109.939218145169

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411235 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410982 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411235 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079443 (Pople, fixed reference)
 Cluster corrected energies          -109.99079188 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079443 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95500689 (fixed)   0.95652682 (relaxed)   0.95652495 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785319
 Singles      0.01652077   -0.07911633   -0.08131216
 Pairs        0.07644318    0.00000000   -0.04129717
 Total        1.09296787   -0.07911633   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56237721
 One electron energy                 -193.30236710
 Two electron energy                   83.36314896
 Virial quotient                       -2.64516194
 Correlation energy                    -0.59046252
 !MRCI STATE 4.1 Energy              -109.939218143105

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411218 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410966 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411218 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079427 (Pople, fixed reference)
 Cluster corrected energies          -109.99079172 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079427 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.81850235 (fixed)   0.95652689 (relaxed)   0.95652502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785335
 Singles      0.01652078   -0.07911631   -0.08131218
 Pairs        0.07644303    0.00000009   -0.04129699
 Total        1.09296772   -0.07911622   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56237783
 One electron energy                 -193.30236761
 Two electron energy                   83.36314947
 Virial quotient                       -2.64516190
 Correlation energy                    -0.59046252
 !MRCI STATE 5.1 Energy              -109.939218142921

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411210 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410957 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411210 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079418 (Pople, fixed reference)
 Cluster corrected energies          -109.99079163 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079418 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95468272 (fixed)   0.95652713 (relaxed)   0.95652526 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392   -0.00000000   -0.46785341
 Singles      0.01652082   -0.07911641   -0.08131228
 Pairs        0.07644242   -0.00000000   -0.04129682
 Total        1.09296716   -0.07911641   -0.59046252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56239211
 One electron energy                 -193.30238445
 Two electron energy                   83.36316631
 Virial quotient                       -2.64516099
 Correlation energy                    -0.59046252
 !MRCI STATE 6.1 Energy              -109.939218139231

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411176 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410923 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411176 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079384 (Pople, fixed reference)
 Cluster corrected energies          -109.99079129 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079384 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95652529 (fixed)   0.95652716 (relaxed)   0.95652529 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000392    0.00000000   -0.46785310
 Singles      0.01652101   -0.07911678   -0.08131241
 Pairs        0.07644217   -0.00000000   -0.04129701
 Total        1.09296710   -0.07911678   -0.59046251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34875562
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56239738
 One electron energy                 -193.30238940
 Two electron energy                   83.36317126
 Virial quotient                       -2.64516065
 Correlation energy                    -0.59046251
 !MRCI STATE 7.1 Energy              -109.939218136949

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99411172 (Davidson, fixed reference)
 Cluster corrected energies          -109.99410920 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99411172 (Davidson, rotated reference)

 Cluster corrected energies          -109.99079380 (Pople, fixed reference)
 Cluster corrected energies          -109.99079126 (Pople, relaxed reference)
 Cluster corrected energies          -109.99079380 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.93609510 (fixed)   0.95621345 (relaxed)   0.95177679 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934463   -0.00000000   -0.47156458
 Singles      0.01758687   -0.07656009   -0.07878034
 Pairs        0.07696862   -0.00000000   -0.04124716
 Total        1.10390012   -0.07656009   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57103850
 One electron energy                 -193.43019831
 Two electron energy                   83.50851487
 Virial quotient                       -2.64418902
 Correlation energy                    -0.59159208
 !MRCI STATE 8.1 Energy              -109.921683439293

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98314992 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710384 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98314992 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993108 (Pople, fixed reference)
 Cluster corrected energies          -109.97378308 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993108 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95177580 (fixed)   0.95621350 (relaxed)   0.95177580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934684   -0.00000000   -0.47156442
 Singles      0.01758720   -0.07656051   -0.07878049
 Pairs        0.07696838    0.00000002   -0.04124716
 Total        1.10390242   -0.07656049   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57105233
 One electron energy                 -193.43021778
 Two electron energy                   83.50853434
 Virial quotient                       -2.64418814
 Correlation energy                    -0.59159208
 !MRCI STATE 9.1 Energy              -109.921683439260

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315129 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710377 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315129 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993248 (Pople, fixed reference)
 Cluster corrected energies          -109.97378301 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993248 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95177584 (fixed)   0.95621350 (relaxed)   0.95177584 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934677   -0.00000000   -0.47156444
 Singles      0.01758718   -0.07656047   -0.07878048
 Pairs        0.07696839    0.00000000   -0.04124716
 Total        1.10390233   -0.07656047   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57105205
 One electron energy                 -193.43021749
 Two electron energy                   83.50853405
 Virial quotient                       -2.64418816
 Correlation energy                    -0.59159208
 !MRCI STATE 10.1 Energy             -109.921683439104

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315124 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710376 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315124 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993243 (Pople, fixed reference)
 Cluster corrected energies          -109.97378301 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993243 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93609538 (fixed)   0.95621349 (relaxed)   0.95177703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934422   -0.00000000   -0.47156455
 Singles      0.01758683   -0.07656014   -0.07878037
 Pairs        0.07696852   -0.00000000   -0.04124716
 Total        1.10389957   -0.07656014   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57103937
 One electron energy                 -193.43019673
 Two electron energy                   83.50851329
 Virial quotient                       -2.64418896
 Correlation energy                    -0.59159208
 !MRCI STATE 11.1 Energy             -109.921683438934

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98314960 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710378 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98314960 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993075 (Pople, fixed reference)
 Cluster corrected energies          -109.97378302 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993075 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95177479 (fixed)   0.95621323 (relaxed)   0.95177479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00934842   -0.00000000   -0.47156447
 Singles      0.01758724   -0.07656026   -0.07878035
 Pairs        0.07696910    0.00000000   -0.04124725
 Total        1.10390476   -0.07656026   -0.59159208
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33009136
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57105752
 One electron energy                 -193.43023545
 Two electron energy                   83.50855201
 Virial quotient                       -2.64418781
 Correlation energy                    -0.59159208
 !MRCI STATE 12.1 Energy             -109.921683438456

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98315267 (Davidson, fixed reference)
 Cluster corrected energies          -109.97710413 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98315267 (Davidson, rotated reference)

 Cluster corrected energies          -109.97993390 (Pople, fixed reference)
 Cluster corrected energies          -109.97378338 (Pople, relaxed reference)
 Cluster corrected energies          -109.97993390 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95408129 (fixed)   0.95419203 (relaxed)   0.95408129 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023217    0.00000000   -0.00012636
 Singles      0.02164269   -0.08848682   -0.09232809
 Pairs        0.07669896   -0.50943724   -0.50546961
 Total        1.09857382   -0.59792406   -0.59792406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30501087
 Nuclear energy                         0.00000000
 Kinetic energy                        41.35621249
 One electron energy                 -192.88925657
 Two electron energy                   82.98632164
 Virial quotient                       -2.65747099
 Correlation energy                    -0.59792406
 !MRCI STATE 13.1 Energy             -109.902934935555

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96187460 (Davidson, fixed reference)
 Cluster corrected energies          -109.96172213 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96187460 (Davidson, rotated reference)

 Cluster corrected energies          -109.95855543 (Pople, fixed reference)
 Cluster corrected energies          -109.95840047 (Pople, relaxed reference)
 Cluster corrected energies          -109.95855543 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95408132 (fixed)   0.95419207 (relaxed)   0.95408132 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023218    0.00000000   -0.46385240
 Singles      0.02164265   -0.08848681   -0.09232808
 Pairs        0.07669892    0.00000000   -0.04174357
 Total        1.09857375   -0.08848681   -0.59792406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30501088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.35620885
 One electron energy                 -192.88925409
 Two electron energy                   82.98631916
 Virial quotient                       -2.65747122
 Correlation energy                    -0.59792406
 !MRCI STATE 14.1 Energy             -109.902934935196

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96187455 (Davidson, fixed reference)
 Cluster corrected energies          -109.96172208 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96187455 (Davidson, rotated reference)

 Cluster corrected energies          -109.95855538 (Pople, fixed reference)
 Cluster corrected energies          -109.95840042 (Pople, relaxed reference)
 Cluster corrected energies          -109.95855538 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95408724 (fixed)   0.95419828 (relaxed)   0.95408724 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023279    0.00000000   -0.46385709
 Singles      0.02164365   -0.08848830   -0.09232982
 Pairs        0.07668368    0.00000000   -0.04173710
 Total        1.09856012   -0.08848829   -0.59792401
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30501088
 Nuclear energy                         0.00000000
 Kinetic energy                        41.35632033
 One electron energy                 -192.88939605
 Two electron energy                   82.98646117
 Virial quotient                       -2.65746406
 Correlation energy                    -0.59792401
 !MRCI STATE 15.1 Energy             -109.902934884205

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96186634 (Davidson, fixed reference)
 Cluster corrected energies          -109.96171347 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96186634 (Davidson, rotated reference)

 Cluster corrected energies          -109.95854704 (Pople, fixed reference)
 Cluster corrected energies          -109.95839168 (Pople, relaxed reference)
 Cluster corrected energies          -109.95854704 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      742.02       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      4275.81   2480.57   1791.76      2.77      0.49
 REAL TIME  *      4498.88 SEC
 DISK USED  *       774.19 MB (local),        9.13 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =      -109.99411282  AU                              
 SETTING HLSDIAG(19)    =      -109.99411234  AU                              
 SETTING HLSDIAG(20)    =      -109.99411235  AU                              
 SETTING HLSDIAG(21)    =      -109.99411218  AU                              
 SETTING HLSDIAG(22)    =      -109.99411210  AU                              
 SETTING HLSDIAG(23)    =      -109.99411176  AU                              
 SETTING HLSDIAG(24)    =      -109.99411172  AU                              
 SETTING HLSDIAG(25)    =      -109.98314992  AU                              
 SETTING HLSDIAG(26)    =      -109.98315129  AU                              
 SETTING HLSDIAG(27)    =      -109.98315124  AU                              
 SETTING HLSDIAG(28)    =      -109.98314960  AU                              
 SETTING HLSDIAG(29)    =      -109.98315267  AU                              
 SETTING HLSDIAG(30)    =      -109.96187460  AU                              
 SETTING HLSDIAG(31)    =      -109.96187455  AU                              
 SETTING HLSDIAG(32)    =      -109.96186634  AU                              


         HLSDIAG
    -110.0180682
    -110.0180681
    -110.0180676
    -110.0180669
    -110.0180663
    -110.0180661
    -110.0180655
    -109.9776137
    -109.9776136
    -109.9776125
    -109.9615338
    -109.9615332
    -109.9615330
    -109.9615332
    -109.9615321
    -109.9615326
    -109.9615225
    -109.9941128
    -109.9941123
    -109.9941123
    -109.9941122
    -109.9941121
    -109.9941118
    -109.9941117
    -109.9831499
    -109.9831513
    -109.9831512
    -109.9831496
    -109.9831527
    -109.9618746
    -109.9618745
    -109.9618663
                                                  


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
 Replaced energies:   -110.018068   -110.018068   -110.018068   -110.018067   -110.018066   -110.018066   -110.018065   -109.977614
                      -109.977614   -109.977613   -109.961534   -109.961533   -109.961533   -109.961533   -109.961532   -109.961533
                      -109.961522

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  15

 Original energies:   -109.939218   -109.939218   -109.939218   -109.939218   -109.939218   -109.939218   -109.939218   -109.921683
                      -109.921683   -109.921683   -109.921683   -109.921683   -109.902935   -109.902935   -109.902935
 Replaced energies:   -109.994113   -109.994112   -109.994112   -109.994112   -109.994112   -109.994112   -109.994112   -109.983150
                      -109.983151   -109.983151   -109.983150   -109.983153   -109.961875   -109.961875   -109.961866



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01806822

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1029.73       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1029.73      -0.00      -0.00       0.00      -0.00       0.00     -88.67       0.00       0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     455.27      -0.72    1079.52      -0.00       0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.29       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -455.27      -0.00    -984.16      -0.71      -0.00       0.00      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.41       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.72     984.16       0.00     573.86      -0.00      -0.00      -0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.47       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1079.52       0.71    -573.86       0.00      -0.00       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.61       0.00       0.00       0.00
                           -0.00      88.67       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8878.75       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -527.32

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8878.77       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8879.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     527.32       0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.87      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.25      -0.00      -1.92       0.00      -0.00       0.00      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       3.63       0.00       2.96      -0.01      -0.00       0.00      -0.00      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.20      -0.00       0.00       0.00      -0.00       0.00       0.28      -0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.02      -0.62       0.02       1.69      -0.00       0.00       0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.44       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -3.30       0.00      -3.39       0.00      -0.00      -0.00      -0.00

   18   1.1  1.5  0.5      -0.00      -0.00     108.14      -0.07    -636.10      -0.01       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.01      71.30       0.00    -541.62       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00      -0.41    -595.92      -0.00      30.69       0.00       0.00       0.00      -0.00
                            0.00       0.00     590.55      -0.41     -85.53      -0.04       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5    -108.14       0.41      -0.00      -0.00      -0.00       0.00     500.22      -0.00      -0.00       0.00
                           -0.01    -590.55       0.00      -0.00      -0.00      -0.00      -0.35      -0.00      -0.00      -0.00

   21   4.1  1.5  0.5       0.07     595.92       0.00       0.00       0.00       0.00      -0.34       0.00      -0.00       0.00
                          -71.30       0.41       0.00       0.00      -0.00       0.00    -562.18       0.00      -0.00      -0.00

   22   5.1  1.5  0.5     636.10       0.00       0.00      -0.00      -0.00      -0.00    -472.90      -0.00       0.00       0.00
                           -0.00      85.53       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.01     -30.69      -0.00      -0.00       0.00      -0.00      -0.04      -0.00       0.00      -0.00
                          541.62       0.04       0.00      -0.00       0.00      -0.00     525.06      -0.00      -0.00       0.00

   24   7.1  1.5  0.5      -0.00      -0.00    -500.22       0.34     472.90       0.04      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.35     562.18       0.00    -525.06       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00     304.44      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   26   9.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -304.44      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     304.44

   27  10.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00    -304.44      -0.00

   28  11.1  1.5  0.5       0.00      -0.00       0.89      -0.00      -2.38      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.44       0.00      -0.96      -0.00      -0.00      -0.00      -0.00

   29  12.1  1.5  0.5      -0.00       1.69       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.96      -0.00      -0.00       0.00       0.00      -0.00      -2.29      -0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.01      -0.75       0.00      -0.00       0.00      -0.00      -0.01      -0.00       0.00      -0.00
                           -1.40       0.01      -0.00       0.00       0.00       0.00      -0.67      -0.00      -0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.00       1.85      -0.00      -0.10      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -1.83      -0.00       0.27       0.00       0.00      -0.00       0.00      -0.00

   32  15.1  1.5  0.5      -1.42      -0.01       0.00      -0.00       0.00       0.00       2.12       0.00      -0.00       0.00
                           -0.00      -1.65       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   33  16.1  1.5  0.5      -0.00      -0.00       1.32      -0.00      -0.63       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -1.70      -0.00       2.14       0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5      -1.41      -0.00      -0.00       0.00      -0.00       0.00       0.29       0.00      -0.00       0.00
                           -0.00       0.85       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

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

   69   1.1  0.5  0.5       0.00      -0.00      -0.22       0.00     358.47       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.06    -129.16      -0.00     439.40       0.00       0.00       0.00      -0.00

   70   2.1  0.5  0.5      -0.00    -311.31       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                         -188.02       0.00       0.00       0.00       0.00       0.00      85.93      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5    -170.90       0.00       0.00      -0.00       0.00       0.00    -116.43       0.00       0.00      -0.00
                            0.00     311.09       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   72   4.1  0.5  0.5       0.00      -0.00     351.31      -0.24    -409.34      -0.03       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.23    -366.94      -0.00     274.01       0.00       0.00      -0.00       0.00

   73   5.1  0.5  0.5       0.00     266.24       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                         -324.48       0.00      -0.00       0.00      -0.00       0.00    -521.02      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5    -408.63       0.00      -0.00      -0.00      -0.00       0.00     457.97       0.00       0.00       0.00
                           -0.00    -266.49      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   75   7.1  0.5  0.5      -0.00      -0.00       0.28     409.08       0.00     -21.06       0.00      -0.00       0.00      -0.00
                           -0.00       0.00    -405.40       0.28      58.71       0.03       0.00       0.00       0.00      -0.00

   76   8.1  0.5  0.5       0.00      -0.00       0.35     519.01       0.00    -124.90      -0.00       0.00       0.00    -115.17
                            0.00      -0.00     241.93      -0.17    -601.57      -0.02      -0.00    -658.61       0.00      -0.00

   77   9.1  0.5  0.5      -0.00    -529.81       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                          563.07      -0.00       0.00       0.00       0.00       0.00    -363.42      -0.00     723.11      -0.00

   78  10.1  0.5  0.5    -492.65       0.00       0.00      -0.00       0.00       0.00    -454.33      -0.00     723.11      -0.00
                           -0.00    -529.81      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   79  11.1  0.5  0.5       0.00      -0.00       0.13     109.18      -0.00     699.34       0.00      -0.00      -0.00     827.00
                            0.00       0.00    -476.22       0.33    -372.51       0.03      -0.00    -513.24       0.00      -0.00

   80  12.1  0.5  0.5      -0.00      -0.00    -583.16       0.40    -330.21       0.04      -0.00     723.11       0.00       0.00
                            0.00      -0.00      -0.41    -550.21       0.00    -382.60      -0.00      -0.00       0.00     723.11

   81  13.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00     195.86       0.00

   82  14.1  0.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00    -195.86       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   83  15.1  0.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     195.87       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -195.87

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

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -108.14
                            0.00      -0.00      -0.00      -3.20       0.00       0.00       0.00      -0.00      -0.00       0.01

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.41
                           -2.87       0.00       0.00       0.00       0.00       1.44       0.00       0.00      -0.00     590.55

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     108.14      -0.41      -0.00
                            0.00      -0.25      -3.63      -0.00      -0.02      -0.00       0.00      -0.01    -590.55      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.07    -595.92      -0.00
                            0.00       0.00      -0.00      -0.00       0.62       0.00       3.30     -71.30       0.41       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -636.10      -0.00      -0.00
                            0.00       1.92      -2.96       0.00      -0.02      -0.00      -0.00      -0.00      85.53       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      30.69       0.00
                           -0.00      -0.00       0.01      -0.00      -1.69      -0.00       3.39     541.62       0.04       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     500.22
                            0.00       0.00       0.00      -0.28       0.00       0.00      -0.00      -0.00      -0.00       0.35

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   11  11.1  1.5  1.5   12407.87       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.89
                           -0.00       0.00       0.00    -972.97      -0.00       1.17       0.00      -0.00      -0.00      -0.00

   12  12.1  1.5  1.5       0.00   12408.01       0.00       0.00       0.00       0.00       0.00       0.00      -1.69      -0.00
                           -0.00       0.00      -2.99      -0.00     447.97      -0.00     483.02      -0.96      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00   12408.06       0.00       0.00       0.00       0.00      -0.01       0.75      -0.00
                           -0.00       2.99       0.00      -0.00     418.09       0.00   -1535.16      -1.40       0.01      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00   12408.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                          972.97       0.00       0.00      -0.00      -0.00    -489.46      -0.00      -0.00       0.00      -1.83

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   12408.25       0.00       0.00       1.42       0.01      -0.00
                            0.00    -447.97    -418.09       0.00      -0.00       0.00      -8.36      -0.00      -1.65       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   12408.13       0.00       0.00       0.00      -1.32
                           -1.17       0.00      -0.00     489.46      -0.00       0.00      -0.00       0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   12410.36       1.41       0.00       0.00
                           -0.00    -483.02    1535.16       0.00       8.36       0.00      -0.00      -0.00       0.85       0.00

   18   1.1  1.5  0.5      -0.00       0.00      -0.01       0.00       1.42       0.00       1.41       0.00       0.00       0.00
                            0.00       0.96       1.40       0.00       0.00      -0.00       0.00       0.00     343.24       0.00

   19   2.1  1.5  0.5       0.00      -1.69       0.75      -0.00       0.01       0.00       0.00       0.00       0.04       0.00
                            0.00       0.00      -0.01      -0.00       1.65       0.00      -0.85    -343.24      -0.00      -0.00

   20   3.1  1.5  0.5      -0.89      -0.00      -0.00      -0.00      -0.00      -1.32       0.00       0.00       0.00       0.14
                            0.00       0.00       0.00       1.83      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00      -1.85       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.44      -0.00      -0.00       0.00      -0.00       1.70       0.00      -0.00      -0.00    -151.76

   22   5.1  1.5  0.5       2.38       0.00      -0.00       0.00      -0.00       0.63       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.27       0.00       0.00      -0.00      -0.00       0.00       0.24

   23   6.1  1.5  0.5       0.00      -0.00       0.00       0.10      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.96       0.00      -0.00      -0.00      -0.00      -2.14      -0.00      -0.00      -0.00    -359.84

   24   7.1  1.5  0.5       0.00      -0.00       0.01       0.00      -2.12      -0.00      -0.29       0.00       0.00       0.00
                            0.00       2.29       0.67      -0.00      -0.00      -0.00      -0.00      -0.00      29.56       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   27  10.1  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       1.60      -3.42      -0.00     714.19      -0.00     482.35       0.00       0.00       0.00
                           -0.00      12.32     357.47      -0.00       1.67      -0.00       0.02      -0.00       0.96      -0.00

   29  12.1  1.5  0.5      -1.60      -0.00       0.00    -575.19       0.00      -0.38       0.00       0.00       0.00       0.00
                          -12.32      -0.00      -0.00       2.23       0.00     842.95       0.00       0.00      -0.00       0.08

   30  13.1  1.5  0.5       3.42      -0.00      -0.00     254.09       0.00       2.01       0.00       0.00       0.00       0.00
                         -357.47       0.00      -0.00      -2.17       0.00     387.33       0.00       0.00      -0.00       1.21

   31  14.1  1.5  0.5       0.00     575.19    -254.09      -0.00      -1.89       0.00      -0.15       0.00       0.00       0.00
                            0.00      -2.23       2.17      -0.00    -559.01       0.00     287.94       1.07      -0.00       0.00

   32  15.1  1.5  0.5    -714.19      -0.00      -0.00       1.89      -0.00    -488.35      -0.00       0.00       0.00       0.00
                           -1.67      -0.00      -0.00     559.01       0.00      -0.69      -0.00      -0.00      -0.00       0.01

   33  16.1  1.5  0.5       0.00       0.38      -2.01      -0.00     488.35       0.00     -85.41       0.00       0.00       0.00
                            0.00    -842.95    -387.33      -0.00       0.69      -0.00      -0.32      -0.00      -0.48       0.00

   34  17.1  1.5  0.5    -482.35      -0.00      -0.00       0.15       0.00      85.41       0.00       0.00       0.00       0.00
                           -0.02      -0.00      -0.00    -287.94       0.00       0.32       0.00      -0.00      -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     124.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     681.91

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -124.86       0.47      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01    -681.91       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.09     688.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -82.33       0.47       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     734.50       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      98.77       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     -35.43      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     625.41       0.05       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -577.60
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.40

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.96       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.10      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.86       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.62       0.01      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.12

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.64      -0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -1.90       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.52
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.63      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.98       0.00

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

   69   1.1  0.5  0.5      -0.00       0.04      -0.08      -0.00      16.08       0.00      22.52       0.00       0.00       0.00
                            0.00      24.19      25.79      -0.00       0.07       0.00       0.00       0.00     469.22       0.00

   70   2.1  0.5  0.5       0.00      -0.00       0.00     -24.03       0.00       0.03      -0.00       0.00       0.00       0.00
                           15.94       0.00      -0.00       0.00      -0.00       0.77       0.00      -0.00      -0.00    -466.46

   71   3.1  0.5  0.5       8.92      -0.00      -0.00      -0.02      -0.00     -13.24       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      24.02       0.00      -0.03       0.00      -0.00       0.00       0.33

   72   4.1  0.5  0.5      -0.00      -0.09       0.19       0.00     -40.43       0.00      -9.98       0.00       0.00       0.00
                            0.00      34.82       6.12       0.00      -0.05       0.00      -0.00      -0.00     -59.62       0.00

   73   5.1  0.5  0.5      -0.00      -0.00       0.00      20.56       0.00      -0.02      -0.00       0.00       0.00       0.00
                            8.33       0.00      -0.00      -0.06       0.00     -46.65       0.00      -0.00      -0.00    -264.37

   74   6.1  0.5  0.5      42.42       0.00      -0.00       0.03      -0.00      21.13       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -20.57       0.00       0.02       0.00       0.00       0.00       0.18

   75   7.1  0.5  0.5       0.00     -28.93      12.78      -0.00       0.12      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.06      -0.13       0.00      28.12      -0.00     -14.48    -471.25       0.00      -0.00

   76   8.1  0.5  0.5      -0.00     129.88     -30.58       0.00      -0.43      -0.00      -0.01       0.00       0.00       0.00
                            0.00       0.31      -0.65      -0.00     136.54      -0.00      87.32     294.30       0.00      -0.00

   77   9.1  0.5  0.5      -0.00      -0.00       0.00     132.43       0.00      -0.16      -0.00       0.00       0.00       0.00
                          164.40       0.00      -0.00       0.04      -0.00      32.12       0.00      -0.00      -0.00    -537.53

   78  10.1  0.5  0.5     -72.21      -0.00       0.00       0.18       0.00     151.15      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     132.43      -0.00      -0.16       0.00      -0.00      -0.00      -0.37

   79  11.1  0.5  0.5       0.00     -54.40    -168.35       0.00      -0.68      -0.00      -0.01       0.00       0.00       0.00
                            0.00      -0.09       0.19      -0.00     -42.85       0.00     144.93     538.39      -0.00      -0.00

   80  12.1  0.5  0.5      -0.00      -0.15       0.33       0.00     -70.76       0.00     151.84       0.00       0.00       0.00
                            0.00     -79.69     147.35       0.00       0.88       0.00       0.01       0.00     611.77      -0.00

   81  13.1  0.5  0.5       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.01      -0.00      -0.00       0.00       0.00

   82  14.1  0.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   83  15.1  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.03

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -179.73       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -108.55       0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -98.67       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     179.61       0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     202.83
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.13

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     153.71       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -187.34       0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -235.92       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -153.86      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -234.06

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     139.68

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -305.89       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     325.09      -0.00       0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -284.43       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -305.89      -0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.07
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -274.95

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -336.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.23

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.07     636.10       0.01      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.01
                           71.30       0.00    -541.62       0.00       0.00       0.00       0.00       0.00       0.96       1.40

    2   2.1  1.5  1.5     595.92       0.00     -30.69      -0.00      -0.00      -0.00       0.00      -0.00       1.69      -0.75
                           -0.41     -85.53      -0.04       0.00       0.00       0.00       0.00       0.00       0.00      -0.01

    3   3.1  1.5  1.5       0.00       0.00      -0.00    -500.22       0.00       0.00      -0.00       0.89       0.00       0.00
                           -0.00      -0.00      -0.00      -0.35      -0.00      -0.00      -0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00      -0.00       0.34      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00    -562.18       0.00      -0.00      -0.00       0.44      -0.00      -0.00

    5   5.1  1.5  1.5       0.00      -0.00       0.00     472.90       0.00      -0.00      -0.00      -2.38      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    6   6.1  1.5  1.5       0.00      -0.00      -0.00       0.04       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00     525.06      -0.00      -0.00       0.00       0.96       0.00      -0.00

    7   7.1  1.5  1.5      -0.34    -472.90      -0.04      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.01
                          562.18       0.00    -525.06      -0.00       0.00       0.00       0.00       0.00       2.29       0.67

    8   8.1  1.5  1.5       0.00      -0.00      -0.00      -0.00       0.00    -304.44       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00       0.00     304.44      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00     304.44       0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -304.44       0.00       0.00       0.00      -0.00

   11  11.1  1.5  1.5       0.00       2.38       0.00       0.00      -0.00       0.00      -0.00       0.00      -1.60       3.42
                           -0.44       0.00      -0.96      -0.00      -0.00      -0.00      -0.00       0.00      12.32     357.47

   12  12.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       1.60      -0.00      -0.00
                            0.00       0.00      -0.00      -2.29      -0.00       0.00      -0.00     -12.32       0.00      -0.00

   13  13.1  1.5  1.5       0.00      -0.00       0.00       0.01       0.00      -0.00       0.00      -3.42       0.00      -0.00
                            0.00       0.00       0.00      -0.67      -0.00      -0.00       0.00    -357.47       0.00       0.00

   14  14.1  1.5  1.5      -1.85       0.00       0.10       0.00      -0.00       0.00      -0.00      -0.00    -575.19     254.09
                           -0.00       0.27       0.00       0.00      -0.00       0.00      -0.00       0.00      -2.23       2.17

   15  15.1  1.5  1.5       0.00      -0.00      -0.00      -2.12      -0.00       0.00      -0.00     714.19       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.67      -0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.63      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.38       2.01
                           -1.70      -0.00       2.14       0.00       0.00       0.00      -0.00       0.00    -842.95    -387.33

   17  17.1  1.5  1.5      -0.00       0.00      -0.00      -0.29      -0.00       0.00      -0.00     482.35       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.02      -0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -29.56       0.00       0.00      -0.00      -0.96       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          151.76      -0.24     359.84      -0.00       0.00      -0.00       0.00       0.00      -0.08      -1.21

   21   4.1  1.5  0.5       0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -328.05      -0.24      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          328.05       0.00     191.29      -0.00      -0.00      -0.00      -0.00       0.00       0.64      -0.99

   23   6.1  1.5  0.5       0.00       0.00       0.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24    -191.29       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.61       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    8878.75       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00    -175.77      -0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    8878.77       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    8879.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     175.77       0.00      -0.00      -0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12407.87       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12408.01       0.00
                           -0.00      -0.64       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -1.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12408.06
                            0.00       0.99      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       1.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.09      -0.00       0.00       0.00     324.32       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21       0.01       0.56      -0.00       0.00       0.00      -0.00       0.00    -149.32    -139.36

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.39       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.10       0.00      -1.13       0.00      -0.00      -0.00      -0.00      -0.00    -161.01     511.72

   35   1.1  1.5 -0.5      -0.09    -734.50      -0.01       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.01
                           82.33       0.00    -625.41       0.00       0.00       0.00       0.00       0.00       1.10       1.62

   36   2.1  1.5 -0.5    -688.11      -0.00      35.43       0.00       0.00       0.00      -0.00       0.00      -1.96       0.86
                           -0.47     -98.77      -0.05       0.00       0.00       0.00       0.00       0.00       0.00      -0.01

   37   3.1  1.5 -0.5      -0.00      -0.00       0.00     577.60      -0.00      -0.00       0.00      -1.03      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.40      -0.00      -0.00      -0.00       0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00      -0.40       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -649.15       0.00      -0.00      -0.00       0.51      -0.00      -0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00    -546.06      -0.00       0.00       0.00       2.75       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   40   6.1  1.5 -0.5      -0.00       0.00      -0.00      -0.04      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00     606.29      -0.00      -0.00       0.00       1.11       0.00      -0.00

   41   7.1  1.5 -0.5       0.40     546.06       0.04      -0.00      -0.00       0.00       0.00       0.00      -0.01       0.01
                          649.15       0.00    -606.29       0.00       0.00       0.00       0.00       0.00       2.65       0.77

   42   8.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00     351.54      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00    -351.54      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00     351.54       0.00      -0.00       0.00

   44  10.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -351.54      -0.00       0.00       0.00      -0.00

   45  11.1  1.5 -0.5      -0.00      -2.75      -0.00      -0.00       0.00      -0.00       0.00       0.00       1.85      -3.95
                           -0.51       0.00      -1.11      -0.00      -0.00      -0.00      -0.00      -0.00      14.23     412.77

   46  12.1  1.5 -0.5      -0.00      -0.00       0.00       0.01      -0.00      -0.00       0.00      -1.85      -0.00       0.00
                            0.00       0.00      -0.00      -2.65      -0.00       0.00      -0.00     -14.23      -0.00      -0.00

   47  13.1  1.5 -0.5      -0.00       0.00      -0.00      -0.01      -0.00       0.00      -0.00       3.95      -0.00      -0.00
                            0.00       0.00       0.00      -0.77      -0.00      -0.00       0.00    -412.77       0.00      -0.00

   48  14.1  1.5 -0.5       2.14      -0.00      -0.11      -0.00       0.00      -0.00       0.00       0.00     664.17    -293.40
                           -0.00       0.31       0.00       0.00      -0.00       0.00      -0.00       0.00      -2.57       2.51

   49  15.1  1.5 -0.5      -0.00       0.00       0.00       2.44       0.00      -0.00       0.00    -824.67      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.93      -0.00      -0.00

   50  16.1  1.5 -0.5      -0.00      -0.73       0.00       0.00       0.00      -0.00      -0.00       0.00       0.44      -2.32
                           -1.96      -0.00       2.47       0.00       0.00       0.00      -0.00       0.00    -973.35    -447.25

   51  17.1  1.5 -0.5       0.00      -0.00       0.00       0.34       0.00      -0.00       0.00    -556.97      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.02      -0.00      -0.00

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
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.32    -517.09       0.03       0.00       0.00       0.00       0.00       0.00       0.01      -0.03

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          416.99      -0.00     557.89       0.00       0.00       0.00       0.00      -0.00      -9.33      52.96

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18      66.64       0.02       0.00       0.00       0.00      -0.00      -0.00       0.04      -0.09

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          269.05       0.00     -42.43       0.00       0.00      -0.00      -0.00       0.00     -20.02       6.44

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -40.58       0.00      -0.00      -0.00      32.62       0.00      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -738.10      -0.00    -893.49      -0.00     136.77      -0.00      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.37     556.68       0.04       0.00    -834.97       0.00      -0.00       0.00      -0.42       0.91

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -586.60      -0.00     504.71       0.00       0.00       0.00    -834.98      -0.00    -187.74     -46.56

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     355.93      -0.00     362.30       0.00      91.95       0.00       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     226.17       0.00       0.00      -0.00       0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00    -226.17      -0.00      -0.00       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00     206.96       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.02      -0.04
                          -74.57      -0.00     253.69       0.00       0.00       0.00      -0.00       0.00      13.97      14.89

   85   2.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      49.61      -0.00      -0.00      -0.00       9.20       0.00      -0.00

   86   3.1  0.5 -0.5      -0.00       0.00       0.00     -67.22       0.00       0.00      -0.00       5.15      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   87   4.1  0.5 -0.5      -0.14    -236.34      -0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.05       0.11
                         -211.85      -0.00     158.20       0.00       0.00      -0.00       0.00       0.00      20.11       3.53

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00    -300.81      -0.00      -0.00      -0.00       4.81       0.00      -0.00

   89   6.1  0.5 -0.5      -0.00      -0.00       0.00     264.41       0.00       0.00       0.00      24.49       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   90   7.1  0.5 -0.5     236.18       0.00     -12.16       0.00      -0.00       0.00      -0.00       0.00     -16.70       7.38
                            0.16      33.90       0.02       0.00       0.00       0.00      -0.00       0.00       0.04      -0.08

   91   8.1  0.5 -0.5     299.65       0.00     -72.11      -0.00       0.00       0.00     -66.49      -0.00      74.99     -17.66
                           -0.10    -347.32      -0.01      -0.00    -380.25       0.00      -0.00       0.00       0.18      -0.38

   92   9.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00    -209.82      -0.00     417.49      -0.00      94.92       0.00      -0.00

   93  10.1  0.5 -0.5      -0.00       0.00       0.00    -262.31      -0.00     417.49      -0.00     -41.69      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   94  11.1  0.5 -0.5      63.04      -0.00     403.76       0.00      -0.00      -0.00     477.47       0.00     -31.41     -97.20
                            0.19    -215.07       0.02      -0.00    -296.32       0.00      -0.00       0.00      -0.05       0.11

   95  12.1  0.5 -0.5       0.23    -190.65       0.02      -0.00     417.49       0.00       0.00      -0.00      -0.08       0.19
                         -317.67       0.00    -220.90      -0.00      -0.00       0.00     417.49       0.00     -46.01      85.07

   96  13.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     113.08       0.00       0.00      -0.00       0.00

   97  14.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00    -113.08       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   98  15.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00     113.08       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00    -113.08       0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00      -1.42      -0.00      -1.41       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.65       0.00      -0.85       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       1.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.83      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       1.85      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       1.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00      -0.63      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.27       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -2.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00       2.12       0.00       0.29       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00    -714.19       0.00    -482.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.67      -0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5     575.19      -0.00       0.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.23       0.00     842.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5    -254.09      -0.00      -2.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.17       0.00     387.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00       1.89      -0.00       0.15       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -559.01       0.00     287.94       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -1.89      -0.00     488.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          559.01      -0.00      -0.69      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00    -488.35       0.00      85.41       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.69       0.00      -0.32       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5      -0.15      -0.00     -85.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -287.94       0.00       0.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00    -124.86       0.09     734.50       0.01
                           -1.07       0.00       0.00       0.00      -0.00      -0.00       0.01      82.33       0.00    -625.41

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.47     688.11       0.00     -35.43
                            0.00       0.00       0.48       0.00       0.00      -0.00     681.91      -0.47     -98.77      -0.05

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00     124.86      -0.47      -0.00       0.00       0.00      -0.00
                           -0.00      -0.01      -0.00       0.00      -0.01    -681.91      -0.00      -0.00      -0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.09    -688.11      -0.00       0.00      -0.00      -0.00
                           -0.00       0.21       0.00       1.10     -82.33       0.47       0.00      -0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00    -734.50      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.01      -0.00      -0.00      -0.00      98.77       0.00       0.00      -0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.01      35.43       0.00       0.00      -0.00      -0.00
                           -0.00      -0.56      -0.00       1.13     625.41       0.05       0.00      -0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     577.60      -0.40    -546.06      -0.04
                           -0.09       0.00       0.00      -0.00      -0.00      -0.00       0.40     649.15       0.00    -606.29

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -1.03       0.00       2.75       0.00
                         -324.32      -0.00       0.39       0.00      -0.00      -0.00      -0.00      -0.51       0.00      -1.11

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -1.96      -0.00       0.00       0.00      -0.00
                           -0.00     149.32      -0.00     161.01      -1.10      -0.00      -0.00       0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.01       0.86      -0.00       0.00      -0.00       0.00
                           -0.00     139.36       0.00    -511.72      -1.62       0.01      -0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5   12408.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.14       0.00       0.11
                           -0.00      -0.00    -163.15      -0.00      -0.00       0.00      -2.12      -0.00       0.31       0.00

   32  15.1  1.5  0.5       0.00   12408.25       0.00       0.00       1.64       0.01      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -2.79      -0.01      -1.90       0.00       0.00      -0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00   12408.13       0.00       0.00       0.00      -1.52       0.00       0.73      -0.00
                          163.15      -0.00       0.00      -0.00       0.00      -0.00       0.00      -1.96      -0.00       2.47

   34  17.1  1.5  0.5       0.00       0.00       0.00   12410.36       1.63       0.00       0.00      -0.00       0.00      -0.00
                            0.00       2.79       0.00      -0.00      -0.00       0.98       0.00      -0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       1.64       0.00       1.63       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00       0.00      -0.00    -343.24      -0.00      -0.00      -0.00      -0.00

   36   2.1  1.5 -0.5      -0.00       0.01       0.00       0.00       0.00       0.04       0.00       0.00       0.00       0.00
                           -0.00       1.90       0.00      -0.98     343.24       0.00       0.00      -0.00       0.00      -0.00

   37   3.1  1.5 -0.5      -0.00      -0.00      -1.52       0.00       0.00       0.00       0.14       0.00       0.00       0.00
                            2.12      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -151.76       0.24    -359.84

   38   4.1  1.5 -0.5      -2.14       0.00       0.00      -0.00       0.00       0.00       0.00       0.29       0.00       0.00
                            0.00      -0.00       1.96       0.00       0.00       0.00     151.76       0.00     328.05       0.24

   39   5.1  1.5 -0.5       0.00      -0.00       0.73       0.00       0.00       0.00       0.00       0.00       0.41       0.00
                           -0.31       0.00       0.00      -0.00       0.00      -0.00      -0.24    -328.05      -0.00    -191.29

   40   6.1  1.5 -0.5       0.11      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.47
                           -0.00      -0.00      -2.47      -0.00       0.00       0.00     359.84      -0.24     191.29      -0.00

   41   7.1  1.5 -0.5       0.00      -2.44      -0.00      -0.34       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -29.56      -0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   45  11.1  1.5 -0.5      -0.00     824.67      -0.00     556.97       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.93      -0.00       0.02       0.00      -0.96       0.00       0.00       0.00      -0.00

   46  12.1  1.5 -0.5    -664.17       0.00      -0.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.57       0.00     973.35       0.00      -0.00       0.00      -0.08       0.00       0.64      -0.00

   47  13.1  1.5 -0.5     293.40       0.00       2.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.51       0.00     447.25       0.00      -0.00       0.00      -1.21      -0.00      -0.99       0.00

   48  14.1  1.5 -0.5      -0.00      -2.18       0.00      -0.17       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -645.49       0.00     332.48      -1.07       0.00      -0.00      -0.00       0.00      -0.00

   49  15.1  1.5 -0.5       2.18      -0.00    -563.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          645.49       0.00      -0.79      -0.00       0.00       0.00      -0.01       0.21      -0.01      -0.56

   50  16.1  1.5 -0.5      -0.00     563.90       0.00     -98.62       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.79      -0.00      -0.37       0.00       0.48      -0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.17       0.00      98.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -332.48       0.00       0.37       0.00       0.00       0.00       0.00       1.10      -0.00       1.13

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00     108.14      -0.07    -636.10      -0.01
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01      71.30       0.00    -541.62

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.41    -595.92      -0.00      30.69
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     590.55      -0.41     -85.53      -0.04

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00    -108.14       0.41      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.01    -590.55       0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.07     595.92       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -71.30       0.41       0.00       0.00      -0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00     636.10       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      85.53       0.00       0.00       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.01     -30.69      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     541.62       0.04       0.00      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -500.22       0.34     472.90       0.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.35     562.18       0.00    -525.06

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.89      -0.00      -2.38      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.44       0.00      -0.96

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       1.69       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.96      -0.00      -0.00       0.00       0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.01      -0.75       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -1.40       0.01      -0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       1.85      -0.00      -0.10
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -1.83      -0.00       0.27       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00      -1.42      -0.01       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -1.65       0.00       0.00      -0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       1.32      -0.00      -0.63       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -1.70      -0.00       2.14

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00      -1.41      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.85       0.00      -0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.12       0.00     206.96       0.00
                           36.23       0.00      -0.04       0.00       0.00      -0.00       0.03      74.57       0.00    -253.69

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00    -179.73       0.00      -0.00       0.00      -0.00
                            0.00       6.14       0.00     -53.42     108.55      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00     -98.67       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.27       0.00       0.00      -0.00    -179.61      -0.00       0.00      -0.00       0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     202.83      -0.14    -236.34      -0.01
                           -4.60       0.00       0.01       0.00       0.00      -0.00       0.13     211.85       0.00    -158.20

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00     153.71       0.00       0.00       0.00       0.00
                            0.00      19.61       0.00      -7.66     187.34      -0.00       0.00      -0.00       0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00    -235.92       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.07       0.00       0.00       0.00     153.86       0.00       0.00       0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.16     236.18       0.00     -12.16
                           -0.02      -0.00     -16.41       0.00       0.00      -0.00     234.06      -0.16     -33.90      -0.02

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.20     299.65       0.00     -72.11
                            0.17      -0.00     144.03       0.00      -0.00       0.00    -139.68       0.10     347.32       0.01

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00    -305.89       0.00      -0.00       0.00      -0.00
                            0.00    -190.18       0.00     -35.28    -325.09       0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00    -284.43       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.19      -0.00       0.01       0.00     305.89       0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.07      63.04      -0.00     403.76
                           -0.16      -0.00    -132.56      -0.00      -0.00      -0.00     274.95      -0.19     215.07      -0.02

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -336.69       0.23    -190.65       0.02
                         -152.92      -0.00       0.18      -0.00      -0.00       0.00       0.23     317.67      -0.00     220.90

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   84   1.1  0.5 -0.5      -0.00       9.29       0.00      13.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.04       0.00       0.00       0.00     469.22       0.00       0.00       0.00       0.00

   85   2.1  0.5 -0.5     -13.88       0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.45       0.00      -0.00      -0.00    -466.46       0.32    -517.09       0.03

   86   3.1  0.5 -0.5      -0.01      -0.00      -7.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.87       0.00      -0.02       0.00      -0.00       0.00       0.33     416.99      -0.00     557.89

   87   4.1  0.5 -0.5       0.00     -23.34       0.00      -5.76       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.03       0.00      -0.00      -0.00     -59.62       0.00      -0.00       0.00       0.00

   88   5.1  0.5 -0.5      11.87       0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00     -26.93       0.00      -0.00      -0.00    -264.37       0.18      66.64       0.02

   89   6.1  0.5 -0.5       0.01      -0.00      12.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.88       0.00       0.01       0.00       0.00       0.00       0.18     269.05       0.00     -42.43

   90   7.1  0.5 -0.5      -0.00       0.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      16.23      -0.00      -8.36    -471.25       0.00      -0.00      -0.00       0.00       0.00

   91   8.1  0.5 -0.5       0.00      -0.25      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      78.83      -0.00      50.41     294.30       0.00      -0.00       0.00       0.00      -0.00

   92   9.1  0.5 -0.5      76.46       0.00      -0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      18.55       0.00      -0.00      -0.00    -537.53       0.37     556.68       0.04

   93  10.1  0.5 -0.5       0.10       0.00      87.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           76.46      -0.00      -0.09       0.00      -0.00      -0.00      -0.37    -586.60      -0.00     504.71

   94  11.1  0.5 -0.5       0.00      -0.39      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -24.74       0.00      83.67     538.39      -0.00      -0.00       0.00       0.00      -0.00

   95  12.1  0.5 -0.5       0.00     -40.85       0.00      87.66       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.51       0.00       0.01       0.00     611.77      -0.00      -0.00       0.00       0.00

   96  13.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   97  14.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00


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

   18   1.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.01      -0.00      -1.64      -0.00
                            0.00       0.00       0.00       0.00       0.00       1.10       1.62       0.00       0.01      -0.00

   19   2.1  1.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00       1.96      -0.86       0.00      -0.01      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00       1.90       0.00

   20   3.1  1.5  0.5    -577.60       0.00       0.00      -0.00       1.03       0.00       0.00       0.00       0.00       1.52
                           -0.40      -0.00      -0.00      -0.00       0.00       0.00       0.00       2.12      -0.00      -0.00

   21   4.1  1.5  0.5       0.40      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       2.14      -0.00      -0.00
                         -649.15       0.00      -0.00      -0.00       0.51      -0.00      -0.00       0.00      -0.00       1.96

   22   5.1  1.5  0.5     546.06       0.00      -0.00      -0.00      -2.75      -0.00       0.00      -0.00       0.00      -0.73
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.31       0.00       0.00

   23   6.1  1.5  0.5       0.04       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.11       0.00       0.00
                          606.29      -0.00      -0.00       0.00       1.11       0.00      -0.00      -0.00      -0.00      -2.47

   24   7.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00       0.01      -0.01      -0.00       2.44       0.00
                           -0.00       0.00       0.00       0.00       0.00       2.65       0.77      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5      -0.00       0.00    -351.54       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00     351.54      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     351.54       0.00      -0.00       0.00      -0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00    -351.54       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00      -1.85       3.95       0.00    -824.67       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      14.23     412.77      -0.00       1.93      -0.00

   29  12.1  1.5  0.5      -0.01       0.00       0.00      -0.00       1.85      -0.00      -0.00     664.17      -0.00       0.44
                           -2.65      -0.00       0.00      -0.00     -14.23       0.00      -0.00       2.57       0.00     973.35

   30  13.1  1.5  0.5       0.01       0.00      -0.00       0.00      -3.95       0.00      -0.00    -293.40      -0.00      -2.32
                           -0.77      -0.00      -0.00       0.00    -412.77       0.00       0.00      -2.51       0.00     447.25

   31  14.1  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00    -664.17     293.40      -0.00       2.18      -0.00
                            0.00      -0.00       0.00      -0.00       0.00      -2.57       2.51       0.00    -645.49       0.00

   32  15.1  1.5  0.5      -2.44      -0.00       0.00      -0.00     824.67       0.00       0.00      -2.18      -0.00     563.90
                            0.00      -0.00      -0.00      -0.00      -1.93      -0.00      -0.00     645.49      -0.00      -0.79

   33  16.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.44       2.32       0.00    -563.90       0.00
                            0.00       0.00       0.00      -0.00       0.00    -973.35    -447.25      -0.00       0.79       0.00

   34  17.1  1.5  0.5      -0.34      -0.00       0.00      -0.00     556.97       0.00       0.00      -0.17      -0.00     -98.62
                            0.00      -0.00       0.00      -0.00      -0.02      -0.00      -0.00    -332.48       0.00       0.37

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       1.07      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.56      -0.00      -0.00       0.00       0.96      -0.00      -0.00      -0.00      -0.00      -0.48

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.08       1.21       0.00       0.01       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.21      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.64       0.99      -0.00       0.01       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.56       0.00

   41   7.1  1.5 -0.5       0.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.09      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00    8878.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     175.77       0.00       0.00       0.00      -0.00       0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00    8878.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    8879.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -175.77      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00   12407.87       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     324.32       0.00      -0.39

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   12408.01       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       1.00       0.00    -149.32       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12408.06       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -1.00      -0.00       0.00    -139.36      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12408.00       0.00       0.00
                           -0.09       0.00      -0.00      -0.00    -324.32      -0.00      -0.00       0.00       0.00     163.15

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12408.25       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     149.32     139.36      -0.00       0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12408.13
                            0.00       0.00      -0.00       0.00       0.39      -0.00       0.00    -163.15       0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     161.01    -511.72      -0.00      -2.79      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.01       0.00       1.42       0.00
                            0.00       0.00       0.00       0.00       0.00       0.96       1.40       0.00       0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -1.69       0.75      -0.00       0.01       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00       1.65       0.00

   54   3.1  1.5 -1.5     500.22      -0.00      -0.00       0.00      -0.89      -0.00      -0.00      -0.00      -0.00      -1.32
                           -0.35      -0.00      -0.00      -0.00       0.00       0.00       0.00       1.83      -0.00      -0.00

   55   4.1  1.5 -1.5      -0.34       0.00      -0.00       0.00       0.00       0.00       0.00      -1.85       0.00       0.00
                         -562.18       0.00      -0.00      -0.00       0.44      -0.00      -0.00       0.00      -0.00       1.70

   56   5.1  1.5 -1.5    -472.90      -0.00       0.00       0.00       2.38       0.00      -0.00       0.00      -0.00       0.63
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.27       0.00       0.00

   57   6.1  1.5 -1.5      -0.04      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.10      -0.00      -0.00
                          525.06      -0.00      -0.00       0.00       0.96       0.00      -0.00      -0.00      -0.00      -2.14

   58   7.1  1.5 -1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.01       0.00      -2.12      -0.00
                            0.00       0.00       0.00       0.00       0.00       2.29       0.67      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00     304.44      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   60   9.1  1.5 -1.5      -0.00    -304.44      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     304.44       0.00      -0.00       0.00      -0.00       0.00      -0.00

   61  10.1  1.5 -1.5      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00    -304.44      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5      -0.00       0.00      -0.00       0.00       0.00       1.60      -3.42      -0.00     714.19      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      12.32     357.47      -0.00       1.67      -0.00

   63  12.1  1.5 -1.5       0.00      -0.00      -0.00       0.00      -1.60      -0.00       0.00    -575.19       0.00      -0.38
                           -2.29      -0.00       0.00      -0.00     -12.32      -0.00      -0.00       2.23       0.00     842.95

   64  13.1  1.5 -1.5      -0.01      -0.00       0.00      -0.00       3.42      -0.00      -0.00     254.09       0.00       2.01
                           -0.67      -0.00      -0.00       0.00    -357.47       0.00      -0.00      -2.17       0.00     387.33

   65  14.1  1.5 -1.5      -0.00       0.00      -0.00       0.00       0.00     575.19    -254.09      -0.00      -1.89       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -2.23       2.17      -0.00    -559.01       0.00

   66  15.1  1.5 -1.5       2.12       0.00      -0.00       0.00    -714.19      -0.00      -0.00       1.89      -0.00    -488.35
                            0.00      -0.00      -0.00      -0.00      -1.67      -0.00      -0.00     559.01       0.00      -0.69

   67  16.1  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00       0.38      -2.01      -0.00     488.35       0.00
                            0.00       0.00       0.00      -0.00       0.00    -842.95    -387.33      -0.00       0.69      -0.00

   68  17.1  1.5 -1.5       0.29       0.00      -0.00       0.00    -482.35      -0.00      -0.00       0.15       0.00      85.41
                            0.00      -0.00       0.00      -0.00      -0.02      -0.00      -0.00    -287.94       0.00       0.32

   69   1.1  0.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.02      -0.04      -0.00       9.29       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     -13.97     -14.89       0.00      -0.04      -0.00

   70   2.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     -13.88       0.00       0.02
                          -49.61       0.00       0.00       0.00      -9.20      -0.00       0.00      -0.00       0.00      -0.45

   71   3.1  0.5  0.5     -67.22       0.00       0.00      -0.00       5.15      -0.00      -0.00      -0.01      -0.00      -7.65
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00     -13.87      -0.00       0.02

   72   4.1  0.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.05       0.11       0.00     -23.34       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     -20.11      -3.53      -0.00       0.03      -0.00

   73   5.1  0.5  0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      11.87       0.00      -0.01
                          300.81       0.00       0.00       0.00      -4.81      -0.00       0.00       0.03      -0.00      26.93

   74   6.1  0.5  0.5     264.41       0.00       0.00       0.00      24.49       0.00      -0.00       0.01      -0.00      12.20
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      11.88      -0.00      -0.01

   75   7.1  0.5  0.5       0.00      -0.00       0.00      -0.00       0.00     -16.70       7.38      -0.00       0.07      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.04       0.08      -0.00     -16.23       0.00

   76   8.1  0.5  0.5      -0.00       0.00       0.00     -66.49      -0.00      74.99     -17.66       0.00      -0.25      -0.00
                            0.00     380.25      -0.00       0.00      -0.00      -0.18       0.38       0.00     -78.83       0.00

   77   9.1  0.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      76.46       0.00      -0.09
                          209.82       0.00    -417.49       0.00     -94.92      -0.00       0.00      -0.02       0.00     -18.55

   78  10.1  0.5  0.5    -262.31      -0.00     417.49      -0.00     -41.69      -0.00       0.00       0.10       0.00      87.27
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00     -76.46       0.00       0.09

   79  11.1  0.5  0.5       0.00      -0.00      -0.00     477.47       0.00     -31.41     -97.20       0.00      -0.39      -0.00
                            0.00     296.32      -0.00       0.00      -0.00       0.05      -0.11       0.00      24.74      -0.00

   80  12.1  0.5  0.5      -0.00     417.49       0.00       0.00      -0.00      -0.08       0.19       0.00     -40.85       0.00
                            0.00       0.00      -0.00    -417.49      -0.00      46.01     -85.07      -0.00      -0.51      -0.00

   81  13.1  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -113.08      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   82  14.1  0.5  0.5      -0.00       0.00    -113.08       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   83  15.1  0.5  0.5      -0.00     113.08       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     113.08      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      36.23       0.00      -0.04

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.01      -0.03       0.00       6.14       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -9.33      52.96      -0.00       0.27       0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -4.60       0.00       0.01

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.04      -0.09       0.00      19.61       0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -20.02       6.44      -0.00       0.07       0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.58       0.00      -0.00      -0.00      32.62       0.00      -0.00      -0.02      -0.00     -16.41

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -738.10      -0.00    -893.49      -0.00     136.77      -0.00      -0.00       0.17      -0.00     144.03

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -834.97       0.00      -0.00       0.00      -0.42       0.91       0.00    -190.18       0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -834.98      -0.00    -187.74     -46.56       0.00       0.19      -0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          355.93      -0.00     362.30       0.00      91.95       0.00       0.00      -0.16      -0.00    -132.56

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00    -152.92      -0.00       0.18

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     226.17       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -226.17      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00


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

   18   1.1  1.5  0.5      -1.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5    -556.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          332.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      98.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00    -108.14       0.07     636.10       0.01      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.01      71.30       0.00    -541.62       0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00       0.00       0.41     595.92       0.00     -30.69      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     590.55      -0.41     -85.53      -0.04       0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00     108.14      -0.41      -0.00       0.00       0.00      -0.00    -500.22       0.00       0.00
                           -0.00      -0.01    -590.55      -0.00      -0.00      -0.00      -0.00      -0.35      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00      -0.07    -595.92      -0.00       0.00      -0.00      -0.00       0.34      -0.00       0.00
                           -1.10     -71.30       0.41       0.00      -0.00      -0.00       0.00    -562.18       0.00      -0.00

   39   5.1  1.5 -0.5       0.00    -636.10      -0.00      -0.00       0.00      -0.00       0.00     472.90       0.00      -0.00
                            0.00      -0.00      85.53       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   40   6.1  1.5 -0.5       0.00      -0.01      30.69       0.00       0.00      -0.00      -0.00       0.04       0.00      -0.00
                           -1.13     541.62       0.04       0.00      -0.00       0.00       0.00     525.06      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00     500.22      -0.34    -472.90      -0.04      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.35     562.18       0.00    -525.06      -0.00       0.00       0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00    -304.44
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     304.44      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00    -304.44

   45  11.1  1.5 -0.5       0.00      -0.00       0.00      -0.89       0.00       2.38       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.44       0.00      -0.96      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00      -1.69      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                         -161.01      -0.96      -0.00      -0.00       0.00       0.00      -0.00      -2.29      -0.00       0.00

   47  13.1  1.5 -0.5       0.00      -0.01       0.75      -0.00       0.00      -0.00       0.00       0.01       0.00      -0.00
                          511.72      -1.40       0.01      -0.00       0.00       0.00       0.00      -0.67      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -1.85       0.00       0.10       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -1.83      -0.00       0.27       0.00       0.00      -0.00       0.00

   49  15.1  1.5 -0.5       0.00       1.42       0.01      -0.00       0.00      -0.00      -0.00      -2.12      -0.00       0.00
                            2.79      -0.00      -1.65       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00      -1.32       0.00       0.63      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -1.70      -0.00       2.14       0.00       0.00       0.00

   51  17.1  1.5 -0.5   12410.36       1.41       0.00       0.00      -0.00       0.00      -0.00      -0.29      -0.00       0.00
                            0.00      -0.00       0.85       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   52   1.1  1.5 -1.5       1.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1029.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.85    1029.73       0.00       0.00      -0.00       0.00      -0.00      88.67      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -455.27       0.72   -1079.52       0.00      -0.00       0.00

   55   4.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.29       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     455.27       0.00     984.16       0.71       0.00      -0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.41       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.72    -984.16      -0.00    -573.86       0.00       0.00       0.00

   57   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.47       0.00       0.00       0.00
                           -0.00       0.00       0.00    1079.52      -0.71     573.86      -0.00       0.00      -0.00       0.00

   58   7.1  1.5 -1.5      -0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.61       0.00       0.00
                           -0.00       0.00     -88.67      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8878.75       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8878.77
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   61  10.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -527.32      -0.00

   62  11.1  1.5 -1.5     482.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00      -2.87       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.25       0.00       1.92      -0.00       0.00      -0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -3.63      -0.00      -2.96       0.01       0.00      -0.00       0.00

   65  14.1  1.5 -1.5      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          287.94      -3.20       0.00      -0.00      -0.00       0.00      -0.00      -0.28       0.00      -0.00

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.02       0.62      -0.02      -1.69       0.00      -0.00      -0.00

   67  16.1  1.5 -1.5     -85.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.32       0.00       1.44      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       3.30      -0.00       3.39      -0.00       0.00       0.00

   69   1.1  0.5  0.5      13.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5      -5.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.36      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -50.41      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -83.67      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5      87.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83  15.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00      -0.00      -0.22       0.00     358.47       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.06     129.16       0.00    -439.40      -0.00      -0.00      -0.00

   85   2.1  0.5 -0.5       0.00      -0.00    -311.31       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                          -53.42     188.02      -0.00      -0.00      -0.00      -0.00      -0.00     -85.93       0.00       0.00

   86   3.1  0.5 -0.5       0.00    -170.90       0.00       0.00      -0.00       0.00       0.00    -116.43       0.00       0.00
                            0.00      -0.00    -311.09      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   87   4.1  0.5 -0.5       0.00       0.00      -0.00     351.31      -0.24    -409.34      -0.03       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.23     366.94       0.00    -274.01      -0.00      -0.00       0.00

   88   5.1  0.5 -0.5       0.00       0.00     266.24       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -7.66     324.48      -0.00       0.00      -0.00       0.00      -0.00     521.02       0.00       0.00

   89   6.1  0.5 -0.5       0.00    -408.63       0.00      -0.00      -0.00      -0.00       0.00     457.97       0.00       0.00
                            0.00       0.00     266.49       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   90   7.1  0.5 -0.5       0.00      -0.00      -0.00       0.28     409.08       0.00     -21.06       0.00      -0.00       0.00
                            0.00       0.00      -0.00     405.40      -0.28     -58.71      -0.03      -0.00      -0.00      -0.00

   91   8.1  0.5 -0.5       0.00       0.00      -0.00       0.35     519.01       0.00    -124.90      -0.00       0.00       0.00
                            0.00      -0.00       0.00    -241.93       0.17     601.57       0.02       0.00     658.61      -0.00

   92   9.1  0.5 -0.5       0.00      -0.00    -529.81       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                          -35.28    -563.07       0.00      -0.00      -0.00      -0.00      -0.00     363.42       0.00    -723.11

   93  10.1  0.5 -0.5       0.00    -492.65       0.00       0.00      -0.00       0.00       0.00    -454.33      -0.00     723.11
                            0.01       0.00     529.81       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   94  11.1  0.5 -0.5       0.00       0.00      -0.00       0.13     109.18      -0.00     699.34       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     476.22      -0.33     372.51      -0.03       0.00     513.24      -0.00

   95  12.1  0.5 -0.5       0.00      -0.00      -0.00    -583.16       0.40    -330.21       0.04      -0.00     723.11       0.00
                           -0.00      -0.00       0.00       0.41     550.21      -0.00     382.60       0.00       0.00      -0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00    -195.86

   97  14.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00    -195.86
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   98  15.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     195.87       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     188.02

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -311.31
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.22       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.06      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     129.16      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     358.47       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -439.40      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -85.93

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -15.94

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -24.19      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.08       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.79       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -24.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.08       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.07       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.77

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.52      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -469.22       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     466.46

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.32

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     517.09

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.03

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.03

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -36.23      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -6.14

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      53.42

   35   1.1  1.5 -0.5       0.00       0.00      -0.00       0.01      -0.00      -1.42      -0.00      -1.41       0.00      -0.00
                            0.00       0.00       0.96       1.40       0.00       0.00      -0.00       0.00      -0.00    -108.55

   36   2.1  1.5 -0.5       0.00      -0.00       1.69      -0.75       0.00      -0.01      -0.00      -0.00      -0.00    -179.73
                            0.00       0.00       0.00      -0.01      -0.00       1.65       0.00      -0.85       0.00       0.00

   37   3.1  1.5 -0.5      -0.00       0.89       0.00       0.00       0.00       0.00       1.32      -0.00      -0.12       0.00
                           -0.00       0.00       0.00       0.00       1.83      -0.00      -0.00      -0.00      -0.03       0.00

   38   4.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       1.85      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.44      -0.00      -0.00       0.00      -0.00       1.70       0.00     -74.57       0.00

   39   5.1  1.5 -0.5      -0.00      -2.38      -0.00       0.00      -0.00       0.00      -0.63      -0.00     206.96       0.00
                            0.00      -0.00      -0.00      -0.00      -0.27       0.00       0.00      -0.00      -0.00       0.00

   40   6.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.10       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.96       0.00      -0.00      -0.00      -0.00      -2.14      -0.00     253.69       0.00

   41   7.1  1.5 -0.5      -0.00      -0.00       0.00      -0.01      -0.00       2.12       0.00       0.29       0.00      -0.00
                            0.00       0.00       2.29       0.67      -0.00      -0.00      -0.00      -0.00       0.00      49.61

   42   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                          304.44       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5      -0.00       0.00      -1.60       3.42       0.00    -714.19       0.00    -482.35      -0.00       0.00
                           -0.00       0.00      12.32     357.47      -0.00       1.67      -0.00       0.02       0.00       9.20

   46  12.1  1.5 -0.5      -0.00       1.60      -0.00      -0.00     575.19      -0.00       0.38      -0.00       0.02      -0.00
                           -0.00     -12.32       0.00      -0.00       2.23       0.00     842.95       0.00      13.97       0.00

   47  13.1  1.5 -0.5       0.00      -3.42       0.00      -0.00    -254.09      -0.00      -2.01      -0.00      -0.04       0.00
                            0.00    -357.47       0.00       0.00      -2.17       0.00     387.33       0.00      14.89      -0.00

   48  14.1  1.5 -0.5      -0.00      -0.00    -575.19     254.09      -0.00       1.89      -0.00       0.15      -0.00     -13.88
                           -0.00       0.00      -2.23       2.17       0.00    -559.01       0.00     287.94      -0.00       0.00

   49  15.1  1.5 -0.5      -0.00     714.19       0.00       0.00      -1.89      -0.00     488.35       0.00       9.29       0.00
                           -0.00      -1.67      -0.00      -0.00     559.01      -0.00      -0.69      -0.00       0.04      -0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.38       2.01       0.00    -488.35       0.00      85.41       0.00       0.02
                           -0.00       0.00    -842.95    -387.33      -0.00       0.69       0.00      -0.32       0.00       0.45

   51  17.1  1.5 -0.5      -0.00     482.35       0.00       0.00      -0.15      -0.00     -85.41       0.00      13.00      -0.00
                           -0.00      -0.02      -0.00      -0.00    -287.94       0.00       0.32      -0.00       0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       3.20      -0.00      -0.00      -0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.87      -0.00      -0.00      -0.00      -0.00      -1.44      -0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.25       3.63       0.00       0.02       0.00      -0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.62      -0.00      -3.30       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.92       2.96      -0.00       0.02       0.00       0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.01       0.00       1.69       0.00      -3.39       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.28      -0.00      -0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          527.32       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5    8879.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00   12407.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     972.97       0.00      -1.17      -0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00   12408.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       2.99       0.00    -447.97       0.00    -483.02       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00   12408.06       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -2.99      -0.00       0.00    -418.09      -0.00    1535.16       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00   12408.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -972.97      -0.00      -0.00       0.00       0.00     489.46       0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   12408.25       0.00       0.00       0.00       0.00
                            0.00      -0.00     447.97     418.09      -0.00       0.00      -0.00       8.36       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   12408.13       0.00       0.00       0.00
                            0.00       1.17      -0.00       0.00    -489.46       0.00      -0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12410.36       0.00       0.00
                            0.00       0.00     483.02   -1535.16      -0.00      -8.36      -0.00       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5257.60       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5257.71
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     953.39

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     266.25

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -666.95      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -92.95      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     110.37

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -422.84       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   84   1.1  0.5 -0.5      -0.00      -0.00       0.04      -0.08      -0.00      16.08       0.00      22.52       0.00       0.00
                            0.00      -0.00     -24.19     -25.79       0.00      -0.07      -0.00      -0.00       0.00    -271.95

   85   2.1  0.5 -0.5      -0.00       0.00      -0.00       0.00     -24.03       0.00       0.03      -0.00      -0.00       0.00
                            0.00     -15.94      -0.00       0.00      -0.00       0.00      -0.77      -0.00     271.95       0.00

   86   3.1  0.5 -0.5      -0.00       8.92      -0.00      -0.00      -0.02      -0.00     -13.24       0.00     314.46      -0.00
                           -0.00       0.00      -0.00       0.00     -24.02      -0.00       0.03      -0.00       0.00      -0.00

   87   4.1  0.5 -0.5      -0.00      -0.00      -0.09       0.19       0.00     -40.43       0.00      -9.98      -0.00       0.00
                           -0.00      -0.00     -34.82      -6.12      -0.00       0.05      -0.00       0.00      -0.00     202.89

   88   5.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00      20.56       0.00      -0.02      -0.00       0.00       0.00
                            0.00      -8.33      -0.00       0.00       0.06      -0.00      46.65      -0.00     700.78       0.00

   89   6.1  0.5 -0.5       0.00      42.42       0.00      -0.00       0.03      -0.00      21.13       0.00     497.25       0.00
                           -0.00      -0.00       0.00      -0.00      20.57      -0.00      -0.02      -0.00      -0.00      -0.00

   90   7.1  0.5 -0.5      -0.00       0.00     -28.93      12.78      -0.00       0.12      -0.00       0.00      -0.00    -510.95
                            0.00      -0.00      -0.06       0.13      -0.00     -28.12       0.00      14.48      -0.00       0.00

   91   8.1  0.5 -0.5    -115.17      -0.00     129.88     -30.58       0.00      -0.43      -0.00      -0.01       0.00     272.08
                            0.00      -0.00      -0.31       0.65       0.00    -136.54       0.00     -87.32      -0.00       0.00

   92   9.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00     132.43       0.00      -0.16      -0.00       0.00       0.00
                            0.00    -164.40      -0.00       0.00      -0.04       0.00     -32.12      -0.00     384.78       0.00

   93  10.1  0.5 -0.5      -0.00     -72.21      -0.00       0.00       0.18       0.00     151.15      -0.00    -468.79      -0.00
                            0.00       0.00      -0.00       0.00    -132.43       0.00       0.16      -0.00       0.00       0.00

   94  11.1  0.5 -0.5     827.00       0.00     -54.40    -168.35       0.00      -0.68      -0.00      -0.01       0.00     416.66
                            0.00      -0.00       0.09      -0.19       0.00      42.85      -0.00    -144.93       0.00       0.00

   95  12.1  0.5 -0.5       0.00      -0.00      -0.15       0.33       0.00     -70.76       0.00     151.84      -0.00       0.00
                         -723.11      -0.00      79.69    -147.35      -0.00      -0.88      -0.00      -0.01       0.00    -543.54

   96  13.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01       0.00       0.00      -0.00

   97  14.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   98  15.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                          195.87      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5    -170.90       0.00       0.00    -408.63      -0.00       0.00      -0.00    -492.65       0.00      -0.00
                           -0.00       0.00     324.48       0.00       0.00      -0.00    -563.07       0.00      -0.00      -0.00

    2   2.1  1.5  1.5       0.00      -0.00     266.24       0.00      -0.00      -0.00    -529.81       0.00      -0.00      -0.00
                         -311.09      -0.00      -0.00     266.49      -0.00       0.00       0.00     529.81      -0.00       0.00

    3   3.1  1.5  1.5       0.00     351.31       0.00      -0.00       0.28       0.35       0.00       0.00       0.13    -583.16
                           -0.00       0.23       0.00       0.00     405.40    -241.93      -0.00       0.00     476.22       0.41

    4   4.1  1.5  1.5      -0.00      -0.24       0.00      -0.00     409.08     519.01      -0.00      -0.00     109.18       0.40
                            0.00     366.94      -0.00       0.00      -0.28       0.17      -0.00      -0.00      -0.33     550.21

    5   5.1  1.5  1.5       0.00    -409.34       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -330.21
                           -0.00       0.00       0.00       0.00     -58.71     601.57      -0.00      -0.00     372.51      -0.00

    6   6.1  1.5  1.5       0.00      -0.03       0.00       0.00     -21.06    -124.90      -0.00       0.00     699.34       0.04
                            0.00    -274.01      -0.00       0.00      -0.03       0.02      -0.00      -0.00      -0.03     382.60

    7   7.1  1.5  1.5    -116.43       0.00       0.00     457.97       0.00      -0.00      -0.00    -454.33       0.00      -0.00
                           -0.00      -0.00     521.02       0.00      -0.00       0.00     363.42       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     723.11
                            0.00      -0.00       0.00      -0.00      -0.00     658.61       0.00      -0.00     513.24       0.00

    9   9.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     723.11      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00    -723.11       0.00      -0.00      -0.00

   10  10.1  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00    -115.17      -0.00      -0.00     827.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -723.11

   11  11.1  1.5  1.5       8.92      -0.00      -0.00      42.42       0.00      -0.00      -0.00     -72.21       0.00      -0.00
                            0.00      -0.00      -8.33      -0.00      -0.00      -0.00    -164.40       0.00      -0.00      -0.00

   12  12.1  1.5  1.5      -0.00      -0.09      -0.00       0.00     -28.93     129.88      -0.00      -0.00     -54.40      -0.15
                           -0.00     -34.82      -0.00       0.00      -0.06      -0.31      -0.00      -0.00       0.09      79.69

   13  13.1  1.5  1.5      -0.00       0.19       0.00      -0.00      12.78     -30.58       0.00       0.00    -168.35       0.33
                            0.00      -6.12       0.00      -0.00       0.13       0.65       0.00       0.00      -0.19    -147.35

   14  14.1  1.5  1.5      -0.02       0.00      20.56       0.03      -0.00       0.00     132.43       0.18       0.00       0.00
                          -24.02      -0.00       0.06      20.57      -0.00       0.00      -0.04    -132.43       0.00      -0.00

   15  15.1  1.5  1.5      -0.00     -40.43       0.00      -0.00       0.12      -0.43       0.00       0.00      -0.68     -70.76
                           -0.00       0.05      -0.00      -0.00     -28.12    -136.54       0.00       0.00      42.85      -0.88

   16  16.1  1.5  1.5     -13.24       0.00      -0.02      21.13      -0.00      -0.00      -0.16     151.15      -0.00       0.00
                            0.03      -0.00      46.65      -0.02       0.00       0.00     -32.12       0.16      -0.00      -0.00

   17  17.1  1.5  1.5       0.00      -9.98      -0.00       0.00       0.00      -0.01      -0.00      -0.00      -0.01     151.84
                           -0.00       0.00      -0.00      -0.00      14.48     -87.32      -0.00      -0.00    -144.93      -0.01

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     471.25    -294.30       0.00       0.00    -538.39      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      59.62       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -611.77

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.33      -0.00     264.37      -0.18       0.00       0.00     537.53       0.37       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -416.99       0.00      -0.18    -269.05       0.00      -0.00      -0.37     586.60      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -66.64      -0.00      -0.00      -0.00    -556.68       0.00      -0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -557.89      -0.00      -0.02      42.43      -0.00       0.00      -0.04    -504.71       0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      40.58     738.10      -0.00      -0.00    -355.93       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     834.97      -0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     893.49      -0.00      -0.00    -362.30      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     834.98      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     -32.62    -136.77      -0.00       0.00     -91.95      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.33       0.00      -0.04      20.02      -0.00       0.00       0.42     187.74      -0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.96      -0.00       0.09      -6.44       0.00       0.00      -0.91      46.56      -0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.60      -0.00       0.00       0.02      -0.17      -0.00      -0.00       0.16     152.92

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.27      -0.00     -19.61      -0.07       0.00       0.00     190.18      -0.19       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00      -0.00      16.41    -144.03      -0.00       0.00     132.56      -0.18

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       7.66      -0.00      -0.00      -0.00      35.28      -0.01       0.00       0.00

   35   1.1  1.5 -0.5     -98.67       0.00       0.00    -235.92      -0.00       0.00      -0.00    -284.43       0.00      -0.00
                            0.00      -0.00    -187.34      -0.00      -0.00       0.00     325.09      -0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00     153.71       0.00      -0.00      -0.00    -305.89       0.00      -0.00      -0.00
                          179.61       0.00       0.00    -153.86       0.00      -0.00      -0.00    -305.89       0.00      -0.00

   37   3.1  1.5 -0.5       0.00     202.83       0.00      -0.00       0.16       0.20       0.00       0.00       0.07    -336.69
                            0.00      -0.13      -0.00      -0.00    -234.06     139.68       0.00      -0.00    -274.95      -0.23

   38   4.1  1.5 -0.5      -0.00      -0.14       0.00      -0.00     236.18     299.65      -0.00      -0.00      63.04       0.23
                           -0.00    -211.85       0.00      -0.00       0.16      -0.10       0.00       0.00       0.19    -317.67

   39   5.1  1.5 -0.5       0.00    -236.34       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -190.65
                            0.00      -0.00      -0.00      -0.00      33.90    -347.32       0.00       0.00    -215.07       0.00

   40   6.1  1.5 -0.5       0.00      -0.01       0.00       0.00     -12.16     -72.11      -0.00       0.00     403.76       0.02
                           -0.00     158.20       0.00      -0.00       0.02      -0.01       0.00       0.00       0.02    -220.90

   41   7.1  1.5 -0.5     -67.22       0.00       0.00     264.41       0.00      -0.00      -0.00    -262.31       0.00      -0.00
                            0.00       0.00    -300.81      -0.00       0.00      -0.00    -209.82      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     417.49
                           -0.00       0.00      -0.00       0.00       0.00    -380.25      -0.00       0.00    -296.32      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     417.49      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     417.49      -0.00       0.00       0.00

   44  10.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00     -66.49      -0.00      -0.00     477.47       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     417.49

   45  11.1  1.5 -0.5       5.15      -0.00      -0.00      24.49       0.00      -0.00      -0.00     -41.69       0.00      -0.00
                           -0.00       0.00       4.81       0.00       0.00       0.00      94.92      -0.00       0.00       0.00

   46  12.1  1.5 -0.5      -0.00      -0.05      -0.00       0.00     -16.70      74.99      -0.00      -0.00     -31.41      -0.08
                            0.00      20.11       0.00      -0.00       0.04       0.18       0.00       0.00      -0.05     -46.01

   47  13.1  1.5 -0.5      -0.00       0.11       0.00      -0.00       7.38     -17.66       0.00       0.00     -97.20       0.19
                           -0.00       3.53      -0.00       0.00      -0.08      -0.38      -0.00      -0.00       0.11      85.07

   48  14.1  1.5 -0.5      -0.01       0.00      11.87       0.01      -0.00       0.00      76.46       0.10       0.00       0.00
                           13.87       0.00      -0.03     -11.88       0.00      -0.00       0.02      76.46      -0.00       0.00

   49  15.1  1.5 -0.5      -0.00     -23.34       0.00      -0.00       0.07      -0.25       0.00       0.00      -0.39     -40.85
                            0.00      -0.03       0.00       0.00      16.23      78.83      -0.00      -0.00     -24.74       0.51

   50  16.1  1.5 -0.5      -7.65       0.00      -0.01      12.20      -0.00      -0.00      -0.09      87.27      -0.00       0.00
                           -0.02       0.00     -26.93       0.01      -0.00      -0.00      18.55      -0.09       0.00       0.00

   51  17.1  1.5 -0.5       0.00      -5.76      -0.00       0.00       0.00      -0.01      -0.00      -0.00      -0.00      87.66
                            0.00      -0.00       0.00       0.00      -8.36      50.41       0.00       0.00      83.67       0.01

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
                           -0.00       0.00      -0.00      -0.00     666.95      92.95      -0.00      -0.00     422.84       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -953.39       0.00      -0.00    -266.25       0.00       0.00      -0.00    -110.37      -0.00       0.00

   71   3.1  0.5  0.5    5257.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     266.80      -0.00       0.00       0.00    -109.92      -0.00       0.00       0.00

   72   4.1  0.5  0.5       0.00    5257.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -84.74    -551.01       0.00       0.00     164.91      -0.00

   73   5.1  0.5  0.5       0.00       0.00    5257.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -266.80       0.00       0.00     281.08       0.00       0.00       0.00     532.87       0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00    5257.83       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -281.08       0.00      -0.00      -0.00     532.97      -0.00       0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5257.84       0.00       0.00       0.00       0.00       0.00
                           -0.00      84.74      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     430.21

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    7663.68       0.00       0.00       0.00       0.00
                           -0.00     551.01      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      36.31

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    7663.38       0.00       0.00       0.00
                          109.92      -0.00      -0.00    -532.97       0.00       0.00      -0.00     -48.32       0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7663.39       0.00       0.00
                            0.00      -0.00    -532.87       0.00       0.00       0.00      48.32       0.00       0.00      -0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7663.75       0.00
                           -0.00    -164.91      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      89.56

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7663.08
                           -0.00       0.00      -0.00      -0.00    -430.21     -36.31       0.00       0.00     -89.56      -0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -610.38      -0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00    -610.38       0.00      -0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -653.16       0.00       0.00     264.85       0.00

   84   1.1  0.5 -0.5    -314.46       0.00      -0.00    -497.25       0.00      -0.00      -0.00     468.79      -0.00       0.00
                           -0.00       0.00    -700.78       0.00       0.00       0.00    -384.78      -0.00      -0.00      -0.00

   85   2.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00     510.95    -272.08      -0.00       0.00    -416.66      -0.00
                            0.00    -202.89      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     543.54

   86   3.1  0.5 -0.5       0.00     127.71      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     543.52
                            0.00       0.00      -0.00       0.00    -510.58      95.37      -0.00      -0.00     488.53       0.00

   87   4.1  0.5 -0.5    -127.71       0.00       0.00     876.10      -0.00       0.00      -0.00     276.36      -0.00      -0.00
                           -0.00       0.00    -723.75      -0.00      -0.00      -0.00     384.81       0.00       0.00       0.00

   88   5.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00    -436.97     337.45       0.00      -0.00    -395.90      -0.00
                            0.00     723.75       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     -26.36

   89   6.1  0.5 -0.5      -0.00    -876.10       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -26.81
                           -0.00       0.00       0.00      -0.00     437.39     517.80      -0.00      -0.00      48.67       0.00

   90   7.1  0.5 -0.5      -0.00       0.00     436.97      -0.00       0.00       0.00     430.22       0.00      -0.00       0.00
                          510.58       0.00       0.00    -437.39       0.00       0.00       0.00     430.22      -0.00       0.00

   91   8.1  0.5 -0.5       0.00      -0.00    -337.45      -0.00      -0.00      -0.00     -95.71       0.00      -0.00      -0.00
                          -95.37       0.00      -0.00    -517.80      -0.00       0.00      -0.00      59.40       0.00       0.00

   92   9.1  0.5 -0.5       0.00       0.00      -0.00      -0.00    -430.22      95.71      -0.00       0.00      13.33      -0.00
                            0.00    -384.81      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      48.32

   93  10.1  0.5 -0.5       0.00    -276.36       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -48.32
                            0.00      -0.00      -0.00       0.00    -430.22     -59.40       0.00       0.00      76.23       0.00

   94  11.1  0.5 -0.5       0.00       0.00     395.90      -0.00       0.00       0.00     -13.33       0.00      -0.00      -0.00
                         -488.53      -0.00       0.00     -48.67       0.00      -0.00      -0.00     -76.23      -0.00      -0.00

   95  12.1  0.5 -0.5    -543.52       0.00       0.00      26.81      -0.00       0.00       0.00      48.32       0.00       0.00
                           -0.00      -0.00      26.36      -0.00      -0.00      -0.00     -48.32      -0.00       0.00      -0.00

   96  13.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00      97.22       0.00      -0.00    -698.07      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -610.38

   97  14.1  0.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -610.38
                           -0.00       0.00       0.00      -0.00      -0.00     555.94       0.00       0.00     433.23       0.00

   98  15.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -610.39       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00    -610.39      -0.00       0.00      -0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

    1   1.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00     195.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00    -195.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -195.86       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     195.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     -98.67       0.00       0.00    -235.92      -0.00
                            0.00      -0.00      -0.00       0.00     108.55      -0.00       0.00     187.34       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00      -0.00    -179.73       0.00      -0.00     153.71       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -179.61      -0.00      -0.00     153.86      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00      -0.12       0.00       0.00     202.83       0.00      -0.00       0.16
                           -0.00       0.00       0.00       0.03      -0.00      -0.00       0.13       0.00       0.00     234.06

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.14       0.00      -0.00     236.18
                            0.00       0.00       0.00      74.57      -0.00       0.00     211.85      -0.00       0.00      -0.16

   22   5.1  1.5  0.5       0.00       0.00       0.00     206.96       0.00       0.00    -236.34       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     -33.90

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.01       0.00       0.00     -12.16
                           -0.00      -0.00      -0.00    -253.69      -0.00       0.00    -158.20      -0.00       0.00      -0.02

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     -67.22       0.00       0.00     264.41       0.00
                            0.00      -0.00       0.00      -0.00     -49.61      -0.00      -0.00     300.81       0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                         -226.17       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00     226.17       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       5.15      -0.00      -0.00      24.49       0.00
                            0.00       0.00      -0.00      -0.00      -9.20       0.00      -0.00      -4.81      -0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.02      -0.00      -0.00      -0.05      -0.00       0.00     -16.70
                           -0.00       0.00       0.00     -13.97      -0.00      -0.00     -20.11      -0.00       0.00      -0.04

   30  13.1  1.5  0.5       0.00       0.00       0.00      -0.04       0.00      -0.00       0.11       0.00      -0.00       7.38
                            0.00      -0.00       0.00     -14.89       0.00       0.00      -3.53       0.00      -0.00       0.08

   31  14.1  1.5  0.5       0.00       0.00       0.00      -0.00     -13.88      -0.01       0.00      11.87       0.01      -0.00
                            0.00       0.00      -0.00       0.00      -0.00     -13.87      -0.00       0.03      11.88      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       9.29       0.00      -0.00     -23.34       0.00      -0.00       0.07
                           -0.00      -0.00       0.00      -0.04       0.00      -0.00       0.03      -0.00      -0.00     -16.23

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.02      -7.65       0.00      -0.01      12.20      -0.00
                           -0.00       0.00       0.00      -0.00      -0.45       0.02      -0.00      26.93      -0.01       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00      13.00      -0.00       0.00      -5.76      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       8.36

   35   1.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     471.25

   36   2.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -469.22       0.00      -0.00      59.62       0.00      -0.00      -0.00

   37   3.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     466.46      -0.33      -0.00     264.37      -0.18       0.00

   38   4.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.32    -416.99       0.00      -0.18    -269.05       0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     517.09       0.00      -0.00     -66.64      -0.00      -0.00

   40   6.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.03    -557.89      -0.00      -0.02      42.43      -0.00

   41   7.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      40.58

   42   8.1  1.5 -0.5       0.00       0.00     113.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5      -0.00    -113.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          113.08      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   44  10.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -113.08      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     -32.62

   46  12.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.01       9.33       0.00      -0.04      20.02      -0.00

   47  13.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.03     -52.96      -0.00       0.09      -6.44       0.00

   48  14.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -36.23      -0.00       0.00       4.60      -0.00       0.00       0.02

   49  15.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -6.14      -0.27      -0.00     -19.61      -0.07       0.00

   50  16.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.04      -0.00      -0.00      -0.01      -0.00      -0.00      16.41

   51  17.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      53.42      -0.00      -0.00       7.66      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -170.90       0.00       0.00    -408.63      -0.00
                            0.00       0.00       0.00      -0.00    -188.02       0.00      -0.00    -324.48      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00      -0.00    -311.31       0.00      -0.00     266.24       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     311.09       0.00       0.00    -266.49       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00      -0.22       0.00       0.00     351.31       0.00      -0.00       0.28
                            0.00       0.00       0.00      -0.06       0.00       0.00      -0.23      -0.00      -0.00    -405.40

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.24       0.00      -0.00     409.08
                            0.00       0.00       0.00    -129.16       0.00      -0.00    -366.94       0.00      -0.00       0.28

   56   5.1  1.5 -1.5       0.00       0.00       0.00     358.47       0.00       0.00    -409.34       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      58.71

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.03       0.00       0.00     -21.06
                            0.00       0.00       0.00     439.40       0.00      -0.00     274.01       0.00      -0.00       0.03

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -116.43       0.00       0.00     457.97       0.00
                            0.00       0.00       0.00       0.00      85.93       0.00       0.00    -521.02      -0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       8.92      -0.00      -0.00      42.42       0.00
                            0.00       0.00       0.00       0.00      15.94      -0.00       0.00       8.33       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.04      -0.00      -0.00      -0.09      -0.00       0.00     -28.93
                            0.00       0.00       0.00      24.19       0.00       0.00      34.82       0.00      -0.00       0.06

   64  13.1  1.5 -1.5       0.00       0.00       0.00      -0.08       0.00      -0.00       0.19       0.00      -0.00      12.78
                            0.00       0.00       0.00      25.79      -0.00      -0.00       6.12      -0.00       0.00      -0.13

   65  14.1  1.5 -1.5       0.00       0.00       0.00      -0.00     -24.03      -0.02       0.00      20.56       0.03      -0.00
                            0.00       0.00       0.00      -0.00       0.00      24.02       0.00      -0.06     -20.57       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00      16.08       0.00      -0.00     -40.43       0.00      -0.00       0.12
                            0.00       0.00       0.00       0.07      -0.00       0.00      -0.05       0.00       0.00      28.12

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.03     -13.24       0.00      -0.02      21.13      -0.00
                            0.00       0.00       0.00       0.00       0.77      -0.03       0.00     -46.65       0.02      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00      22.52      -0.00       0.00      -9.98      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -14.48

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     314.46      -0.00       0.00     497.25      -0.00
                           -0.00       0.00       0.00      -0.00    -271.95      -0.00       0.00    -700.78       0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -510.95
                            0.00      -0.00      -0.00     271.95      -0.00       0.00    -202.89      -0.00       0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00    -314.46       0.00       0.00    -127.71       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00    -510.58

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     127.71       0.00      -0.00    -876.10       0.00
                           -0.00      -0.00      -0.00      -0.00     202.89      -0.00      -0.00    -723.75      -0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     436.97
                           -0.00      -0.00       0.00     700.78       0.00       0.00     723.75      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00    -497.25      -0.00       0.00     876.10      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     437.39

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00     510.95       0.00      -0.00    -436.97       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     510.58       0.00       0.00    -437.39      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00      -0.00    -272.08      -0.00       0.00     337.45       0.00       0.00
                            0.00       0.00     653.16      -0.00       0.00     -95.37       0.00      -0.00    -517.80      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     430.22
                            0.00     610.38      -0.00     384.78       0.00       0.00    -384.81      -0.00       0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00     468.79       0.00      -0.00     276.36      -0.00       0.00       0.00
                          610.38      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -430.22

   79  11.1  0.5  0.5       0.00       0.00       0.00      -0.00    -416.66      -0.00      -0.00    -395.90       0.00      -0.00
                            0.00       0.00    -264.85       0.00       0.00    -488.53      -0.00       0.00     -48.67       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     543.52      -0.00      -0.00     -26.81       0.00
                            0.00       0.00      -0.00       0.00    -543.54      -0.00      -0.00      26.36      -0.00      -0.00

   81  13.1  0.5  0.5   12333.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00     352.86      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   82  14.1  0.5  0.5       0.00   12333.09       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                         -352.86       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00   12334.89       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   84   1.1  0.5 -0.5       0.00      -0.00       0.00    5257.60       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -666.95

   85   2.1  0.5 -0.5       0.00      -0.00       0.00       0.00    5257.71       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     953.39      -0.00       0.00     266.25      -0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    5257.71       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -953.39       0.00      -0.00    -266.80       0.00      -0.00

   87   4.1  0.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00    5257.74       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      84.74

   88   5.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    5257.76       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     266.80      -0.00      -0.00    -281.08      -0.00

   89   6.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5257.83       0.00
                            0.00       0.00      -0.00      -0.00    -266.25      -0.00       0.00     281.08      -0.00       0.00

   90   7.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5257.84
                           -0.00       0.00       0.00     666.95       0.00       0.00     -84.74       0.00      -0.00       0.00

   91   8.1  0.5 -0.5     -97.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -555.94       0.00      92.95       0.00       0.00    -551.01       0.00      -0.00      -0.00

   92   9.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     610.39      -0.00      -0.00    -109.92       0.00       0.00     532.97      -0.00

   93  10.1  0.5 -0.5       0.00      -0.00     610.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -110.37      -0.00       0.00     532.87      -0.00      -0.00

   94  11.1  0.5 -0.5     698.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -433.23      -0.00     422.84      -0.00       0.00     164.91       0.00       0.00      -0.00

   95  12.1  0.5 -0.5       0.00     610.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          610.38      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     430.21

   96  13.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -352.87      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   97  14.1  0.5 -0.5       0.00      -0.00     352.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   98  15.1  0.5 -0.5      -0.00    -352.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          352.87       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00


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

   18   1.1  1.5  0.5       0.00      -0.00    -284.43       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00    -325.09       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   19   2.1  1.5  0.5      -0.00    -305.89       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00     305.89      -0.00       0.00      -0.00       0.00       0.00

   20   3.1  1.5  0.5       0.20       0.00       0.00       0.07    -336.69      -0.00      -0.00      -0.00
                         -139.68      -0.00       0.00     274.95       0.23      -0.00       0.00       0.00

   21   4.1  1.5  0.5     299.65      -0.00      -0.00      63.04       0.23      -0.00       0.00       0.00
                            0.10      -0.00      -0.00      -0.19     317.67       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00      -0.00    -190.65      -0.00      -0.00      -0.00
                          347.32      -0.00      -0.00     215.07      -0.00      -0.00       0.00       0.00

   23   6.1  1.5  0.5     -72.11      -0.00       0.00     403.76       0.02      -0.00       0.00      -0.00
                            0.01      -0.00      -0.00      -0.02     220.90       0.00       0.00      -0.00

   24   7.1  1.5  0.5      -0.00      -0.00    -262.31       0.00      -0.00       0.00      -0.00      -0.00
                            0.00     209.82       0.00       0.00       0.00      -0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00      -0.00      -0.00      -0.00     417.49       0.00       0.00     113.08
                          380.25       0.00      -0.00     296.32       0.00      -0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00     417.49      -0.00       0.00      -0.00    -113.08       0.00
                           -0.00    -417.49       0.00      -0.00      -0.00    -113.08       0.00      -0.00

   27  10.1  1.5  0.5     -66.49      -0.00      -0.00     477.47       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -417.49      -0.00      -0.00     113.08

   28  11.1  1.5  0.5      -0.00      -0.00     -41.69       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00     -94.92       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   29  12.1  1.5  0.5      74.99      -0.00      -0.00     -31.41      -0.08      -0.00       0.00       0.00
                           -0.18      -0.00      -0.00       0.05      46.01       0.00       0.00       0.00

   30  13.1  1.5  0.5     -17.66       0.00       0.00     -97.20       0.19       0.00      -0.00      -0.00
                            0.38       0.00       0.00      -0.11     -85.07      -0.00      -0.00      -0.00

   31  14.1  1.5  0.5       0.00      76.46       0.10       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.02     -76.46       0.00      -0.00      -0.00       0.00      -0.00

   32  15.1  1.5  0.5      -0.25       0.00       0.00      -0.39     -40.85      -0.00      -0.00       0.00
                          -78.83       0.00       0.00      24.74      -0.51      -0.00      -0.00      -0.00

   33  16.1  1.5  0.5      -0.00      -0.09      87.27      -0.00       0.00      -0.00      -0.00       0.00
                            0.00     -18.55       0.09      -0.00      -0.00      -0.00      -0.00       0.00

   34  17.1  1.5  0.5      -0.01      -0.00      -0.00      -0.00      87.66       0.00       0.00      -0.00
                          -50.41      -0.00      -0.00     -83.67      -0.01       0.00      -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -294.30       0.00       0.00    -538.39      -0.00       0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    -611.77      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     537.53       0.37       0.00       0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.37     586.60      -0.00       0.00       0.00       0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -556.68       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.04    -504.71       0.00      -0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          738.10      -0.00      -0.00    -355.93       0.00       0.00      -0.00       0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     834.97      -0.00       0.00       0.00    -226.17       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          893.49      -0.00      -0.00    -362.30      -0.00      -0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     834.98      -0.00       0.00      -0.00     226.17       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -136.77      -0.00       0.00     -91.95      -0.00       0.00       0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.42     187.74      -0.00       0.00      -0.00       0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.91      46.56      -0.00       0.00       0.00      -0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17      -0.00      -0.00       0.16     152.92       0.00       0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     190.18      -0.19       0.00       0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -144.03      -0.00       0.00     132.56      -0.18      -0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      35.28      -0.01       0.00       0.00       0.00      -0.00       0.00

   52   1.1  1.5 -1.5       0.00      -0.00    -492.65       0.00      -0.00       0.00      -0.00      -0.00
                            0.00     563.07      -0.00       0.00       0.00      -0.00       0.00       0.00

   53   2.1  1.5 -1.5      -0.00    -529.81       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -529.81       0.00      -0.00       0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.35       0.00       0.00       0.13    -583.16      -0.00      -0.00      -0.00
                          241.93       0.00      -0.00    -476.22      -0.41       0.00      -0.00      -0.00

   55   4.1  1.5 -1.5     519.01      -0.00      -0.00     109.18       0.40      -0.00       0.00       0.00
                           -0.17       0.00       0.00       0.33    -550.21      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00      -0.00    -330.21      -0.00      -0.00      -0.00
                         -601.57       0.00       0.00    -372.51       0.00       0.00      -0.00      -0.00

   57   6.1  1.5 -1.5    -124.90      -0.00       0.00     699.34       0.04      -0.00       0.00      -0.00
                           -0.02       0.00       0.00       0.03    -382.60      -0.00      -0.00       0.00

   58   7.1  1.5 -1.5      -0.00      -0.00    -454.33       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00    -363.42      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00      -0.00      -0.00      -0.00     723.11       0.00       0.00     195.87
                         -658.61      -0.00       0.00    -513.24      -0.00       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00     723.11      -0.00       0.00      -0.00    -195.86       0.00
                            0.00     723.11      -0.00       0.00       0.00     195.86      -0.00       0.00

   61  10.1  1.5 -1.5    -115.17      -0.00      -0.00     827.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     723.11       0.00       0.00    -195.87

   62  11.1  1.5 -1.5      -0.00      -0.00     -72.21       0.00      -0.00       0.00      -0.00      -0.00
                            0.00     164.40      -0.00       0.00       0.00       0.00      -0.00       0.00

   63  12.1  1.5 -1.5     129.88      -0.00      -0.00     -54.40      -0.15      -0.00       0.00       0.00
                            0.31       0.00       0.00      -0.09     -79.69      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5     -30.58       0.00       0.00    -168.35       0.33       0.00      -0.00      -0.00
                           -0.65      -0.00      -0.00       0.19     147.35       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00     132.43       0.18       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.04     132.43      -0.00       0.00       0.00      -0.00       0.00

   66  15.1  1.5 -1.5      -0.43       0.00       0.00      -0.68     -70.76      -0.00      -0.00       0.00
                          136.54      -0.00      -0.00     -42.85       0.88       0.00       0.00       0.00

   67  16.1  1.5 -1.5      -0.00      -0.16     151.15      -0.00       0.00      -0.00      -0.01       0.00
                           -0.00      32.12      -0.16       0.00       0.00       0.01       0.00      -0.00

   68  17.1  1.5 -1.5      -0.01      -0.00      -0.00      -0.01     151.84       0.00       0.00      -0.00
                           87.32       0.00       0.00     144.93       0.01      -0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00    -468.79       0.00      -0.00      -0.00       0.00      -0.00
                            0.00    -384.78      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   70   2.1  0.5  0.5     272.08       0.00      -0.00     416.66       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     543.54       0.00       0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00    -543.52      -0.00      -0.00      -0.00
                           95.37      -0.00      -0.00     488.53       0.00      -0.00       0.00      -0.00

   72   4.1  0.5  0.5      -0.00       0.00    -276.36       0.00       0.00      -0.00      -0.00       0.00
                           -0.00     384.81       0.00       0.00       0.00      -0.00      -0.00       0.00

   73   5.1  0.5  0.5    -337.45      -0.00       0.00     395.90       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00     -26.36      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00      26.81       0.00      -0.00      -0.00
                          517.80      -0.00      -0.00      48.67       0.00       0.00       0.00      -0.00

   75   7.1  0.5  0.5      -0.00    -430.22      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00     430.22      -0.00       0.00      -0.00       0.00       0.00

   76   8.1  0.5  0.5      -0.00      95.71      -0.00       0.00       0.00      97.22       0.00      -0.00
                           -0.00      -0.00      59.40       0.00       0.00      -0.00    -555.94       0.00

   77   9.1  0.5  0.5     -95.71      -0.00      -0.00     -13.33       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      48.32      -0.00      -0.00     610.39

   78  10.1  0.5  0.5       0.00       0.00      -0.00       0.00      48.32      -0.00       0.00    -610.39
                          -59.40       0.00      -0.00      76.23       0.00      -0.00      -0.00       0.00

   79  11.1  0.5  0.5      -0.00      13.33      -0.00      -0.00       0.00    -698.07       0.00       0.00
                           -0.00      -0.00     -76.23       0.00      -0.00      -0.00    -433.23      -0.00

   80  12.1  0.5  0.5      -0.00      -0.00     -48.32      -0.00       0.00      -0.00    -610.38      -0.00
                           -0.00     -48.32      -0.00       0.00       0.00     610.38      -0.00       0.00

   81  13.1  0.5  0.5     -97.22      -0.00       0.00     698.07       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00    -610.38      -0.00      -0.00    -352.87

   82  14.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00     610.38      -0.00      -0.00    -352.87
                          555.94       0.00       0.00     433.23       0.00       0.00       0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00     610.39      -0.00       0.00       0.00     352.87       0.00
                           -0.00    -610.39      -0.00       0.00      -0.00     352.87       0.00       0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -92.95       0.00       0.00    -422.84      -0.00       0.00      -0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     110.37       0.00      -0.00      -0.00       0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     109.92       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          551.01      -0.00      -0.00    -164.91       0.00       0.00       0.00       0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -532.87      -0.00      -0.00       0.00       0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -532.97       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -430.21      -0.00      -0.00      -0.00

   91   8.1  0.5 -0.5    7663.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -36.31      -0.00      -0.00    -653.16

   92   9.1  0.5 -0.5       0.00    7663.38       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      48.32      -0.00       0.00      -0.00    -610.38       0.00

   93  10.1  0.5 -0.5       0.00       0.00    7663.39       0.00       0.00       0.00       0.00       0.00
                           -0.00     -48.32      -0.00      -0.00       0.00    -610.38       0.00       0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00    7663.75       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -89.56      -0.00      -0.00     264.85

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00    7663.08       0.00       0.00       0.00
                           36.31      -0.00      -0.00      89.56       0.00      -0.00      -0.00       0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   12333.08       0.00       0.00
                            0.00       0.00     610.38       0.00       0.00       0.00    -352.86       0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12333.09       0.00
                            0.00     610.38      -0.00       0.00       0.00     352.86      -0.00      -0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12334.89
                          653.16      -0.00      -0.00    -264.85      -0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02513138    -0.00706316    -1550.19      0.00000000        0.00      0.0000
     2  -110.02513138    -0.00706316    -1550.19      0.00000000        0.00      0.0000
     3  -110.02513118    -0.00706296    -1550.14      0.00000021        0.05      0.0000
     4  -110.02513118    -0.00706296    -1550.14      0.00000021        0.05      0.0000
     5  -110.02513051    -0.00706229    -1549.99      0.00000087        0.19      0.0000
     6  -110.02513051    -0.00706229    -1549.99      0.00000087        0.19      0.0000
     7  -110.02513045    -0.00706223    -1549.98      0.00000093        0.20      0.0000
     8  -110.02513045    -0.00706223    -1549.98      0.00000093        0.20      0.0000
     9  -110.02512982    -0.00706160    -1549.84      0.00000156        0.34      0.0000
    10  -110.02512982    -0.00706160    -1549.84      0.00000156        0.34      0.0000
    11  -110.01884582    -0.00077760     -170.66      0.00628556     1379.52      0.1710
    12  -110.01884582    -0.00077760     -170.66      0.00628556     1379.52      0.1710
    13  -110.01884542    -0.00077720     -170.58      0.00628596     1379.61      0.1710
    14  -110.01884542    -0.00077720     -170.58      0.00628596     1379.61      0.1710
    15  -110.01884523    -0.00077701     -170.53      0.00628615     1379.65      0.1711
    16  -110.01884523    -0.00077701     -170.53      0.00628615     1379.65      0.1711
    17  -110.01884510    -0.00077688     -170.51      0.00628628     1379.68      0.1711
    18  -110.01884510    -0.00077688     -170.51      0.00628628     1379.68      0.1711
    19  -110.01359788     0.00447034      981.13      0.01153350     2531.31      0.3138
    20  -110.01359788     0.00447034      981.13      0.01153350     2531.31      0.3138
    21  -110.01359765     0.00447057      981.18      0.01153374     2531.36      0.3138
    22  -110.01359765     0.00447057      981.18      0.01153374     2531.36      0.3138
    23  -110.01359709     0.00447113      981.30      0.01153429     2531.48      0.3139
    24  -110.01359709     0.00447113      981.30      0.01153429     2531.48      0.3139
    25  -110.01047081     0.00759741     1667.44      0.01466057     3217.62      0.3989
    26  -110.01047081     0.00759741     1667.44      0.01466057     3217.62      0.3989
    27  -110.01047049     0.00759773     1667.51      0.01466089     3217.69      0.3989
    28  -110.01047049     0.00759773     1667.51      0.01466089     3217.69      0.3989
    29  -109.99793146     0.02013676     4419.51      0.02719993     5969.69      0.7401
    30  -109.99793146     0.02013676     4419.51      0.02719993     5969.69      0.7401
    31  -109.99793135     0.02013687     4419.53      0.02720003     5969.72      0.7402
    32  -109.99793135     0.02013687     4419.53      0.02720003     5969.72      0.7402
    33  -109.99793110     0.02013712     4419.59      0.02720029     5969.77      0.7402
    34  -109.99793110     0.02013712     4419.59      0.02720029     5969.77      0.7402
    35  -109.99793090     0.02013732     4419.63      0.02720049     5969.82      0.7402
    36  -109.99793090     0.02013732     4419.63      0.02720049     5969.82      0.7402
    37  -109.99271611     0.02535211     5564.15      0.03241527     7114.33      0.8821
    38  -109.99271611     0.02535211     5564.15      0.03241527     7114.33      0.8821
    39  -109.99271572     0.02535250     5564.23      0.03241566     7114.42      0.8821
    40  -109.99271572     0.02535250     5564.23      0.03241566     7114.42      0.8821
    41  -109.99271552     0.02535270     5564.27      0.03241586     7114.46      0.8821
    42  -109.99271552     0.02535270     5564.27      0.03241586     7114.46      0.8821
    43  -109.98408304     0.03398518     7458.89      0.04104835     9009.07      1.1170
    44  -109.98408304     0.03398518     7458.89      0.04104835     9009.07      1.1170
    45  -109.98408300     0.03398522     7458.89      0.04104838     9009.08      1.1170
    46  -109.98408300     0.03398522     7458.89      0.04104838     9009.08      1.1170
    47  -109.98408280     0.03398542     7458.94      0.04104859     9009.12      1.1170
    48  -109.98408280     0.03398542     7458.94      0.04104859     9009.12      1.1170
    49  -109.98383503     0.03423319     7513.32      0.04129635     9063.50      1.1237
    50  -109.98383503     0.03423319     7513.32      0.04129635     9063.50      1.1237
    51  -109.98383420     0.03423402     7513.50      0.04129718     9063.68      1.1238
    52  -109.98383420     0.03423402     7513.50      0.04129718     9063.68      1.1238
    53  -109.97491680     0.04315143     9470.64      0.05021459    11020.83      1.3664
    54  -109.97491680     0.04315143     9470.64      0.05021459    11020.83      1.3664
    55  -109.97491627     0.04315196     9470.76      0.05021512    11020.94      1.3664
    56  -109.97491627     0.04315196     9470.76      0.05021512    11020.94      1.3664
    57  -109.97382276     0.04424546     9710.76      0.05130863    11260.94      1.3962
    58  -109.97382276     0.04424546     9710.76      0.05130863    11260.94      1.3962
    59  -109.97382235     0.04424587     9710.85      0.05130904    11261.03      1.3962
    60  -109.97382235     0.04424587     9710.85      0.05130904    11261.03      1.3962
    61  -109.97382201     0.04424621     9710.92      0.05130937    11261.11      1.3962
    62  -109.97382201     0.04424621     9710.92      0.05130937    11261.11      1.3962
    63  -109.97367958     0.04438864     9742.18      0.05145181    11292.37      1.4001
    64  -109.97367958     0.04438864     9742.18      0.05145181    11292.37      1.4001
    65  -109.96897681     0.04909141    10774.32      0.05615457    12324.50      1.5280
    66  -109.96897681     0.04909141    10774.32      0.05615457    12324.50      1.5280
    67  -109.96897661     0.04909161    10774.36      0.05615478    12324.55      1.5280
    68  -109.96897661     0.04909161    10774.36      0.05615478    12324.55      1.5280
    69  -109.96897638     0.04909184    10774.41      0.05615500    12324.60      1.5281
    70  -109.96897638     0.04909184    10774.41      0.05615500    12324.60      1.5281
    71  -109.96897473     0.04909349    10774.78      0.05615665    12324.96      1.5281
    72  -109.96897473     0.04909349    10774.78      0.05615665    12324.96      1.5281
    73  -109.96897144     0.04909678    10775.50      0.05615995    12325.68      1.5282
    74  -109.96897144     0.04909678    10775.50      0.05615995    12325.68      1.5282
    75  -109.96153057     0.05653765    12408.58      0.06360082    13958.77      1.7307
    76  -109.96153057     0.05653765    12408.58      0.06360082    13958.77      1.7307
    77  -109.96153012     0.05653810    12408.68      0.06360126    13958.86      1.7307
    78  -109.96153012     0.05653810    12408.68      0.06360126    13958.86      1.7307
    79  -109.96153006     0.05653816    12408.69      0.06360132    13958.88      1.7307
    80  -109.96153006     0.05653816    12408.69      0.06360132    13958.88      1.7307
    81  -109.96152566     0.05654256    12409.66      0.06360572    13959.84      1.7308
    82  -109.96152566     0.05654256    12409.66      0.06360572    13959.84      1.7308
    83  -109.96152500     0.05654322    12409.80      0.06360639    13959.99      1.7308
    84  -109.96152500     0.05654322    12409.80      0.06360639    13959.99      1.7308
    85  -109.96152063     0.05654759    12410.76      0.06361075    13960.95      1.7309
    86  -109.96152063     0.05654759    12410.76      0.06361075    13960.95      1.7309
    87  -109.95858559     0.05948263    13054.93      0.06654579    14605.11      1.8108
    88  -109.95858559     0.05948263    13054.93      0.06654579    14605.11      1.8108
    89  -109.95569043     0.06237779    13690.34      0.06944095    15240.53      1.8896
    90  -109.95569043     0.06237779    13690.34      0.06944095    15240.53      1.8896
    91  -109.95568864     0.06237959    13690.74      0.06944275    15240.92      1.8896
    92  -109.95568864     0.06237959    13690.74      0.06944275    15240.92      1.8896
    93  -109.95568776     0.06238046    13690.93      0.06944362    15241.11      1.8897
    94  -109.95568776     0.06238046    13690.93      0.06944362    15241.11      1.8897
    95  -109.95149316     0.06657506    14611.54      0.07363823    16161.72      2.0038
    96  -109.95149316     0.06657506    14611.54      0.07363823    16161.72      2.0038
    97  -109.95149042     0.06657780    14612.14      0.07364096    16162.32      2.0039
    98  -109.95149042     0.06657780    14612.14      0.07364096    16162.32      2.0039


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.551205269   0.000284522  -0.064254652   0.001080486  -0.111271980   0.004751196  -0.000328094  -0.000016735
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000002514  -0.000000001   0.000108552  -0.000001825  -0.000082657   0.000003530  -0.000201888  -0.000010290
                         0.584203620   0.000301556  -0.088340914   0.001485512   0.029748923  -0.001270249  -0.011321821  -0.000577509

    3    3.1  1.5  1.5   0.000004884  -0.009454966  -0.006358006  -0.378100846  -0.001082962  -0.025362858  -0.016664211   0.326699102
                        -0.000011363   0.022013458   0.001684948   0.100201334   0.012543349   0.293762411   0.010586294  -0.207534621

    4    4.1  1.5  1.5  -0.000033128   0.064176418   0.001166054   0.069343453  -0.014435153  -0.338068044  -0.011266575   0.220870891
                        -0.000014477   0.028045573   0.004403192   0.261851080  -0.001248405  -0.029237489  -0.017740728   0.347804053

    5    5.1  1.5  1.5  -0.000006428   0.012453028   0.004388158   0.260957026  -0.000545822  -0.012783135  -0.020511899   0.402132354
                         0.000014747  -0.028565879  -0.001157824  -0.068854079   0.006310780   0.147797031   0.013048996  -0.255813659

    6    6.1  1.5  1.5   0.000024865  -0.048172187  -0.001402777  -0.083421030  -0.011920079  -0.279165567  -0.009151927   0.179415177
                         0.000010853  -0.021018975  -0.005303275  -0.315377611  -0.001018568  -0.023854736  -0.014385646   0.282028224

    7    7.1  1.5  1.5   0.051956089   0.000026819   0.068251238  -0.001147688   0.366604308  -0.015653620  -0.277177723  -0.014138396
                         0.000079554   0.000000041   0.000231138  -0.000003887   0.000329054  -0.000014050   0.005636457   0.000287267

    8    8.1  1.5  1.5   0.000000000  -0.000000005  -0.000000008  -0.000000470  -0.000000000  -0.000000001   0.000000026  -0.000000502
                        -0.000000000   0.000000012   0.000000002   0.000000124   0.000000001   0.000000013  -0.000000016   0.000000319

    9    9.1  1.5  1.5   0.000000053   0.000000000   0.000000109  -0.000000002  -0.000000067   0.000000003   0.000000097   0.000000005
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000000

   10   10.1  1.5  1.5   0.000000000  -0.000000089   0.000000002   0.000000129   0.000000015   0.000000356  -0.000000003   0.000000056
                         0.000000000  -0.000000039   0.000000008   0.000000486   0.000000001   0.000000030  -0.000000004   0.000000088

   11   11.1  1.5  1.5   0.000192368   0.000000099  -0.000033180   0.000000558  -0.000093476   0.000003991   0.000040048   0.000002043
                        -0.000000011  -0.000000000  -0.000000034   0.000000001  -0.000000048   0.000000002  -0.000000817  -0.000000042

   12   12.1  1.5  1.5  -0.000000016   0.000030869   0.000000645   0.000038385  -0.000002934  -0.000068707  -0.000002320   0.000045477
                        -0.000000007   0.000013526   0.000002471   0.000146955  -0.000000248  -0.000005799  -0.000003647   0.000071499

   13   13.1  1.5  1.5  -0.000000003   0.000005545   0.000000299   0.000017779   0.000006687   0.000156597   0.000005173  -0.000101414
                        -0.000000001   0.000002331   0.000001069   0.000063601   0.000000560   0.000013120   0.000008126  -0.000159311

   14   14.1  1.5  1.5  -0.000000117  -0.000000000  -0.000000061   0.000000001  -0.000000108   0.000000005   0.000000199   0.000000010
                        -0.000228194  -0.000000118   0.000034515  -0.000000580  -0.000011627   0.000000496   0.000004403   0.000000225

   15   15.1  1.5  1.5   0.000000003  -0.000005879  -0.000003016  -0.000179344  -0.000000179  -0.000004190  -0.000000616   0.000012069
                        -0.000000007   0.000013439   0.000000797   0.000047385   0.000002561   0.000059966   0.000000458  -0.000008985

   16   16.1  1.5  1.5  -0.000098655  -0.000000051  -0.000015430   0.000000259  -0.000116744   0.000004985   0.000100515   0.000005127
                         0.000000245   0.000000000  -0.000000125   0.000000002  -0.000000105   0.000000004  -0.000002048  -0.000000104

   17   17.1  1.5  1.5   0.000000001  -0.000001802   0.000000047   0.000002795   0.000000417   0.000009759   0.000010280  -0.000201531
                        -0.000000002   0.000004082  -0.000000014  -0.000000803  -0.000004845  -0.000113468  -0.000006539   0.000128199

   18    1.1  1.5  0.5  -0.000012425   0.024065697   0.007138482   0.424514548   0.001025771   0.024023301  -0.011793819   0.231215799
                         0.000028450  -0.055115027  -0.001886638  -0.112195517  -0.012100341  -0.283387316   0.007506659  -0.147161233

   19    2.1  1.5  0.5  -0.000034211   0.066274332   0.002291763   0.136287721  -0.010150409  -0.237720341   0.002557617  -0.050139764
                        -0.000014894   0.028848493   0.008674729   0.515872807  -0.000869826  -0.020371145   0.004003574  -0.078489352

   20    3.1  1.5  0.5  -0.342077752  -0.000176575  -0.130424037   0.002193161  -0.363607734   0.015525669   0.173263913   0.008837919
                        -0.000312475  -0.000000161  -0.000348707   0.000005864  -0.000158285   0.000006760  -0.003581982  -0.000182563

   21    4.1  1.5  0.5   0.000124107   0.000000065  -0.000707819   0.000011902   0.000104248  -0.000004452  -0.004239459  -0.000216071
                        -0.271998891  -0.000140400   0.253143699  -0.004256774   0.196128289  -0.008374472  -0.202620729  -0.010335362

   22    5.1  1.5  0.5  -0.265477413  -0.000137035  -0.074964587   0.001260575   0.409358760  -0.017479190  -0.215557200  -0.010995232
                         0.000005777   0.000000003  -0.000417407   0.000007019   0.000314508  -0.000013429   0.004404268   0.000224468

   23    6.1  1.5  0.5   0.000033294   0.000000018  -0.000273422   0.000004598   0.000275590  -0.000011766   0.004924597   0.000250987
                        -0.259239170  -0.000133814   0.111270758  -0.001871090  -0.152552818   0.006513845   0.240492058   0.012267118

   24    7.1  1.5  0.5  -0.000015304   0.029648788  -0.000486461  -0.028929037  -0.000803098  -0.018808419  -0.002252971   0.044169160
                         0.000034865  -0.067543478   0.000129321   0.007690506   0.009377369   0.219615885   0.001431771  -0.028068535

   25    8.1  1.5  0.5  -0.000000034  -0.000000000   0.000000136  -0.000000002  -0.000000270   0.000000012   0.000000133   0.000000007
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000000

   26    9.1  1.5  0.5  -0.000000000   0.000000024   0.000000001   0.000000069   0.000000001   0.000000031   0.000000008  -0.000000163
                         0.000000000  -0.000000055  -0.000000000  -0.000000019  -0.000000015  -0.000000362  -0.000000005   0.000000104

   27   10.1  1.5  0.5  -0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000002   0.000000000
                        -0.000000079  -0.000000000  -0.000000130   0.000000002   0.000000362  -0.000000015   0.000000069   0.000000004

   28   11.1  1.5  0.5  -0.000000002   0.000004440   0.000002660   0.000158181   0.000000488   0.000011435  -0.000003951   0.000077454
                         0.000000005  -0.000010221  -0.000000703  -0.000041812  -0.000005746  -0.000134570   0.000002515  -0.000049303

   29   12.1  1.5  0.5  -0.000000138  -0.000000000  -0.000000279   0.000000005  -0.000000556   0.000000024  -0.000002076  -0.000000106
                        -0.000049166  -0.000000025   0.000068645  -0.000001154   0.000095206  -0.000004065  -0.000113006  -0.000005764

   30   13.1  1.5  0.5   0.000000238   0.000000000   0.000000351  -0.000000006   0.000000931  -0.000000040  -0.000001491  -0.000000076
                         0.000138172   0.000000071  -0.000083206   0.000001399   0.000018673  -0.000000797  -0.000048178  -0.000002457

   31   14.1  1.5  0.5   0.000000013  -0.000025898  -0.000000896  -0.000053308   0.000003965   0.000092854  -0.000000996   0.000019516
                         0.000000006  -0.000011227  -0.000003389  -0.000201534   0.000000338   0.000007910  -0.000001565   0.000030681

   32   15.1  1.5  0.5  -0.000048579  -0.000000025  -0.000024453   0.000000411  -0.000208305   0.000008894   0.000103884   0.000005299
                         0.000000729   0.000000000  -0.000000620   0.000000010  -0.000000282   0.000000012  -0.000002077  -0.000000106

   33   16.1  1.5  0.5   0.000000007  -0.000014183  -0.000000858  -0.000051001   0.000000137   0.000003216   0.000002524  -0.000049474
                        -0.000000017   0.000032438   0.000000231   0.000013722  -0.000001642  -0.000038448  -0.000001603   0.000031421

   34   17.1  1.5  0.5   0.000161732   0.000000083   0.000053253  -0.000000895  -0.000047650   0.000002035   0.000029179   0.000001488
                         0.000000033   0.000000000   0.000000244  -0.000000004  -0.000000040   0.000000002  -0.000000611  -0.000000031

   35    1.1  1.5 -0.5  -0.060139922  -0.000031045  -0.439087596   0.007383536   0.284403513  -0.012143732  -0.274016155  -0.013977130
                        -0.000117082  -0.000000059  -0.001586997   0.000026685   0.000362983  -0.000015498   0.005685123   0.000289751

   36    2.1  1.5 -0.5  -0.000223068  -0.000000113  -0.001877248   0.000031566  -0.000086172   0.000003680  -0.001776849  -0.000090554
                         0.072280515   0.000037312   0.533568713  -0.008972296   0.238591569  -0.010187610  -0.093120445  -0.004749927

   37    3.1  1.5 -0.5   0.000070826  -0.137210114  -0.002120891  -0.126126263   0.001324447   0.031018268  -0.007457023   0.146193609
                        -0.000161748   0.313353906   0.000558399   0.033207182  -0.015469076  -0.362282315   0.004747098  -0.093062575

   38    4.1  1.5 -0.5  -0.000128586   0.249109497  -0.001084319  -0.064482760   0.008343251   0.195397106  -0.005549274   0.108788461
                        -0.000056374   0.109214791  -0.004116372  -0.244794214   0.000722469   0.016920035  -0.008721923   0.170991823

   39    5.1  1.5 -0.5   0.000055084  -0.106712449  -0.001218117  -0.072439647  -0.001485298  -0.034785344   0.009275790  -0.181850241
                        -0.000125477   0.243085808   0.000324485   0.019296660   0.017415974   0.407878258  -0.005908065   0.115822251

   40    6.1  1.5 -0.5  -0.000122536   0.237389377  -0.000476005  -0.028307279  -0.006490867  -0.152014669   0.006591027  -0.129211102
                        -0.000053770   0.104169246  -0.001809535  -0.107610197  -0.000546778  -0.012805406   0.010349084  -0.202892022

   41    7.1  1.5 -0.5  -0.073764300  -0.000038076   0.029933428  -0.000503350  -0.220419794   0.009411695  -0.052321101  -0.002668815
                        -0.000000393  -0.000000000   0.000151514  -0.000002548  -0.000090856   0.000003881   0.001122383   0.000057203

   42    8.1  1.5 -0.5   0.000000000  -0.000000014   0.000000002   0.000000132   0.000000001   0.000000023  -0.000000006   0.000000112
                        -0.000000000   0.000000032  -0.000000001  -0.000000035  -0.000000011  -0.000000269   0.000000004  -0.000000072

   43    9.1  1.5 -0.5  -0.000000060  -0.000000000  -0.000000072   0.000000001   0.000000363  -0.000000016   0.000000194   0.000000010
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000004  -0.000000000

   44   10.1  1.5 -0.5  -0.000000000   0.000000073   0.000000001   0.000000033   0.000000015   0.000000360   0.000000002  -0.000000037
                        -0.000000000   0.000000032   0.000000002   0.000000126   0.000000001   0.000000031   0.000000003  -0.000000058

   45   11.1  1.5 -0.5  -0.000011143  -0.000000006  -0.000163613   0.000002751   0.000135054  -0.000005767  -0.000091795  -0.000004682
                        -0.000000042  -0.000000000  -0.000000597   0.000000010   0.000000145  -0.000000006   0.000001899   0.000000097

   46   12.1  1.5 -0.5  -0.000000023   0.000044964  -0.000000295  -0.000017570   0.000004052   0.000094903  -0.000003107   0.000060914
                        -0.000000010   0.000019888  -0.000001116  -0.000066359   0.000000325   0.000007609  -0.000004856   0.000095206

   47   13.1  1.5 -0.5   0.000000065  -0.000126424   0.000000358   0.000021310   0.000000791   0.000018525  -0.000001299   0.000025465
                         0.000000029  -0.000055755   0.000001353   0.000080431   0.000000108   0.000002529  -0.000002088   0.000040925

   48   14.1  1.5 -0.5   0.000000130   0.000000000   0.000000797  -0.000000013   0.000000080  -0.000000003   0.000000764   0.000000039
                        -0.000028227  -0.000000015  -0.000208463   0.000003505  -0.000093190   0.000003979   0.000036354   0.000001854

   49   15.1  1.5 -0.5   0.000000010  -0.000020194  -0.000000395  -0.000023507   0.000000751   0.000017579  -0.000004469   0.000087614
                        -0.000000023   0.000044189   0.000000114   0.000006763  -0.000008863  -0.000207562   0.000002849  -0.000055856

   50   16.1  1.5 -0.5   0.000035403   0.000000018   0.000052813  -0.000000888   0.000038583  -0.000001647   0.000058595   0.000002989
                         0.000000051   0.000000000   0.000000426  -0.000000007   0.000000092  -0.000000004  -0.000001273  -0.000000065

   51   17.1  1.5 -0.5  -0.000000034   0.000064977   0.000000866   0.000051472   0.000000173   0.000004045  -0.000001256   0.000024624
                         0.000000076  -0.000148105  -0.000000230  -0.000013657  -0.000002027  -0.000047478   0.000000799  -0.000015666

   52    1.1  1.5 -1.5   0.000114362  -0.221553871   0.001045610   0.062180608  -0.000407371  -0.009540534  -0.000013929   0.000273074
                        -0.000260527   0.504718863  -0.000272306  -0.016193588   0.004733700   0.110862220   0.000009277  -0.000181870

   53    2.1  1.5 -1.5  -0.000276124   0.534935278  -0.000376148  -0.022368904  -0.001265873  -0.029646459   0.000311561  -0.006107894
                        -0.000121207   0.234815071  -0.001437102  -0.085462045  -0.000105395  -0.002468340   0.000486366  -0.009535094

   54    3.1  1.5 -1.5  -0.023957303  -0.000012367  -0.391149261   0.006577423   0.294855256  -0.012590012   0.386953428   0.019737877
                        -0.000190614  -0.000000095  -0.001677244   0.000028203  -0.000082074   0.000003499  -0.008364607  -0.000426324

   55    4.1  1.5 -1.5   0.000115028   0.000000059   0.001112911  -0.000018714  -0.000143641   0.000006128  -0.008963715  -0.000456861
                        -0.070036801  -0.000036153  -0.270874997   0.004554935  -0.339329946   0.014489035  -0.411911715  -0.021010960

   56    5.1  1.5 -1.5   0.031162174   0.000016087   0.269886469  -0.004538312   0.148348802  -0.006334340   0.476498831   0.024305446
                         0.000079105   0.000000041   0.000864654  -0.000014539  -0.000063845   0.000002721  -0.009996083  -0.000509466

   57    6.1  1.5 -1.5  -0.000116220  -0.000000057  -0.001246220   0.000020955   0.000168952  -0.000007219  -0.007006482  -0.000357095
                         0.052558000   0.000027130   0.326221631  -0.005485624  -0.280182858   0.011963516  -0.334186526  -0.017046321

   58    7.1  1.5 -1.5   0.000010742  -0.020810614  -0.001109663  -0.065989938   0.001328154   0.031105056  -0.011926665   0.233820203
                        -0.000024574   0.047606301   0.000293004   0.017424493  -0.015597180  -0.365282496   0.007598121  -0.148954262

   59    8.1  1.5 -1.5  -0.000000013  -0.000000000  -0.000000486   0.000000008   0.000000013  -0.000000001  -0.000000594  -0.000000030
                         0.000000000  -0.000000000  -0.000000002   0.000000000   0.000000000  -0.000000000   0.000000012   0.000000001

   60    9.1  1.5 -1.5   0.000000000  -0.000000021  -0.000000002  -0.000000105  -0.000000000  -0.000000006   0.000000004  -0.000000082
                        -0.000000000   0.000000048   0.000000000   0.000000028   0.000000003   0.000000066  -0.000000003   0.000000052

   61   10.1  1.5 -1.5   0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000000
                         0.000000097   0.000000000  -0.000000503   0.000000008   0.000000357  -0.000000015  -0.000000104  -0.000000005

   62   11.1  1.5 -1.5   0.000000040  -0.000077331   0.000000540   0.000032101  -0.000000340  -0.000007967   0.000001723  -0.000033784
                        -0.000000091   0.000176140  -0.000000141  -0.000008395   0.000003977   0.000093136  -0.000001098   0.000021519

   63   12.1  1.5 -1.5   0.000000023   0.000000000   0.000000110  -0.000000002   0.000000113  -0.000000005  -0.000001783  -0.000000091
                        -0.000033702  -0.000000017  -0.000151885   0.000002554  -0.000068952   0.000002944  -0.000084718  -0.000004321

   64   13.1  1.5 -1.5   0.000000094   0.000000000   0.000001177  -0.000000020  -0.000000355   0.000000015   0.000003903   0.000000199
                        -0.000006014  -0.000000003  -0.000066029   0.000001110   0.000157146  -0.000006710   0.000188811   0.000009631

   65   14.1  1.5 -1.5   0.000000108  -0.000208902   0.000000147   0.000008758   0.000000494   0.000011575  -0.000000116   0.000002275
                         0.000000047  -0.000091829   0.000000561   0.000033386   0.000000047   0.000001105  -0.000000193   0.000003775

   66   15.1  1.5 -1.5  -0.000014669  -0.000000008  -0.000185497   0.000003119   0.000060105  -0.000002566   0.000015025   0.000000766
                        -0.000000019  -0.000000000  -0.000000657   0.000000011   0.000000967  -0.000000041   0.000000788   0.000000040

   67   16.1  1.5 -1.5  -0.000000021   0.000039878   0.000000251   0.000014900  -0.000000423  -0.000009905   0.000004325  -0.000084795
                         0.000000047  -0.000090236  -0.000000067  -0.000004010   0.000004967   0.000116323  -0.000002755   0.000054013

   68   17.1  1.5 -1.5  -0.000004462  -0.000000002   0.000002907  -0.000000049  -0.000113887   0.000004863  -0.000238798  -0.000012181
                         0.000000010   0.000000000   0.000000073  -0.000000001  -0.000000005   0.000000000   0.000005012   0.000000255

   69    1.1  0.5  0.5  -0.000000001   0.000001298   0.000000140   0.000008354  -0.000000024  -0.000000568   0.000000194  -0.000003803
                         0.000000002  -0.000002970  -0.000000037  -0.000002208   0.000000284   0.000006642  -0.000000124   0.000002425

   70    2.1  0.5  0.5   0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000005  -0.000000000
                         0.000009796   0.000000005  -0.000001363   0.000000023  -0.000003472   0.000000148  -0.000000263  -0.000000013

   71    3.1  0.5  0.5   0.000011221   0.000000006  -0.000002746   0.000000046  -0.000002476   0.000000106   0.000000219   0.000000011
                         0.000000001   0.000000000  -0.000000004   0.000000000   0.000000002  -0.000000000  -0.000000006  -0.000000000

   72    4.1  0.5  0.5  -0.000000001   0.000001194   0.000000024   0.000001431   0.000000006   0.000000143   0.000000232  -0.000004557
                         0.000000001  -0.000002722  -0.000000006  -0.000000381  -0.000000071  -0.000001667  -0.000000148   0.000002899

   73    5.1  0.5  0.5   0.000000004   0.000000000   0.000000012  -0.000000000   0.000000009  -0.000000000   0.000000190   0.000000010
                        -0.000001864  -0.000000001  -0.000003618   0.000000061  -0.000011564   0.000000494   0.000009248   0.000000472

   74    6.1  0.5  0.5   0.000002391   0.000000001   0.000000844  -0.000000014   0.000006715  -0.000000287  -0.000005447  -0.000000278
                         0.000000002   0.000000000   0.000000004  -0.000000000   0.000000008  -0.000000000   0.000000110   0.000000006

   75    7.1  0.5  0.5  -0.000000001   0.000001510   0.000000018   0.000001097   0.000000095   0.000002228  -0.000000158   0.000003103
                        -0.000000000   0.000000660   0.000000070   0.000004150   0.000000008   0.000000186  -0.000000249   0.000004883

   76    8.1  0.5  0.5   0.000000001  -0.000001292  -0.000000005  -0.000000322   0.000000074   0.000001736   0.000000097  -0.000001893
                         0.000000000  -0.000000567  -0.000000021  -0.000001224   0.000000006   0.000000150   0.000000152  -0.000002975

   77    9.1  0.5  0.5   0.000000001   0.000000000   0.000000003  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000
                        -0.000002207  -0.000000001  -0.000000704   0.000000012   0.000000272  -0.000000012  -0.000000029  -0.000000001

   78   10.1  0.5  0.5   0.000000677   0.000000000  -0.000000316   0.000000005  -0.000000398   0.000000017  -0.000000389  -0.000000020
                        -0.000000001  -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000000   0.000000009   0.000000000

   79   11.1  0.5  0.5  -0.000000000   0.000000507  -0.000000025  -0.000001496  -0.000000238  -0.000005579   0.000000024  -0.000000464
                        -0.000000000   0.000000224  -0.000000095  -0.000005657  -0.000000020  -0.000000476   0.000000037  -0.000000726

   80   12.1  0.5  0.5   0.000000000  -0.000000240   0.000000017   0.000001041  -0.000000005  -0.000000114  -0.000000084   0.000001638
                        -0.000000000   0.000000548  -0.000000005  -0.000000275   0.000000056   0.000001309   0.000000053  -0.000001040

   81   13.1  0.5  0.5   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000
                         0.000000031   0.000000000  -0.000000266   0.000000004   0.000000362  -0.000000015   0.000000045   0.000000002

   82   14.1  0.5  0.5   0.000000193   0.000000000   0.000000213  -0.000000004  -0.000000173   0.000000007   0.000000072   0.000000004
                         0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000

   83   15.1  0.5  0.5  -0.000000000   0.000000080  -0.000000001  -0.000000045  -0.000000001  -0.000000016  -0.000000008   0.000000149
                         0.000000000  -0.000000181   0.000000000   0.000000012   0.000000008   0.000000187   0.000000005  -0.000000095

   84    1.1  0.5 -0.5   0.000003241   0.000000002   0.000008641  -0.000000145   0.000006667  -0.000000285  -0.000004509  -0.000000230
                         0.000000005   0.000000000   0.000000031  -0.000000001   0.000000004  -0.000000000   0.000000089   0.000000005

   85    2.1  0.5 -0.5  -0.000000005   0.000008970  -0.000000006  -0.000000342   0.000000148   0.000003460   0.000000007  -0.000000141
                        -0.000000002   0.000003939  -0.000000022  -0.000001319   0.000000013   0.000000299   0.000000011  -0.000000222

   86    3.1  0.5 -0.5   0.000000002  -0.000004509   0.000000045   0.000002656  -0.000000009  -0.000000214   0.000000009  -0.000000185
                        -0.000000005   0.000010275  -0.000000012  -0.000000696   0.000000105   0.000002467  -0.000000006   0.000000116

   87    4.1  0.5 -0.5   0.000002973   0.000000002   0.000001480  -0.000000025  -0.000001673   0.000000071  -0.000005400  -0.000000275
                         0.000000001   0.000000000   0.000000008  -0.000000000  -0.000000001   0.000000000   0.000000114   0.000000006

   88    5.1  0.5 -0.5   0.000000001  -0.000001708  -0.000000016  -0.000000923   0.000000492   0.000011522  -0.000000253   0.000004968
                         0.000000000  -0.000000746  -0.000000059  -0.000003498   0.000000042   0.000000982  -0.000000398   0.000007802

   89    6.1  0.5 -0.5   0.000000000  -0.000000959  -0.000000014  -0.000000816   0.000000024   0.000000568  -0.000000234   0.000004595
                        -0.000000001   0.000002190   0.000000004   0.000000216  -0.000000286  -0.000006691   0.000000149  -0.000002928

   90    7.1  0.5 -0.5   0.000000003   0.000000000   0.000000015  -0.000000000  -0.000000006   0.000000000  -0.000000124  -0.000000006
                        -0.000001648  -0.000000001  -0.000004293   0.000000072   0.000002236  -0.000000095  -0.000005784  -0.000000295

   91    8.1  0.5 -0.5   0.000000000   0.000000000  -0.000000003   0.000000000   0.000000001  -0.000000000   0.000000073   0.000000004
                         0.000001411   0.000000001   0.000001266  -0.000000021   0.000001742  -0.000000074   0.000003526   0.000000180

   92    9.1  0.5 -0.5   0.000000001  -0.000002021  -0.000000003  -0.000000180  -0.000000012  -0.000000271   0.000000001  -0.000000015
                         0.000000000  -0.000000886  -0.000000011  -0.000000680  -0.000000001  -0.000000023   0.000000001  -0.000000025

   93   10.1  0.5 -0.5   0.000000000  -0.000000273   0.000000005   0.000000305  -0.000000001  -0.000000034  -0.000000017   0.000000328
                        -0.000000000   0.000000620  -0.000000001  -0.000000080   0.000000017   0.000000396   0.000000011  -0.000000208

   94   11.1  0.5 -0.5  -0.000000001  -0.000000000  -0.000000022   0.000000000   0.000000004  -0.000000000   0.000000016   0.000000001
                        -0.000000554  -0.000000000   0.000005851  -0.000000098  -0.000005600   0.000000239   0.000000862   0.000000044

   95   12.1  0.5 -0.5  -0.000000598  -0.000000000   0.000001076  -0.000000018   0.000001314  -0.000000056   0.000001940   0.000000099
                        -0.000000001  -0.000000000   0.000000004  -0.000000000  -0.000000002   0.000000000  -0.000000043  -0.000000002

   96   13.1  0.5 -0.5  -0.000000000   0.000000029  -0.000000001  -0.000000068  -0.000000015  -0.000000360  -0.000000001   0.000000024
                        -0.000000000   0.000000013  -0.000000004  -0.000000257  -0.000000001  -0.000000031  -0.000000002   0.000000038

   97   14.1  0.5 -0.5   0.000000000  -0.000000077  -0.000000003  -0.000000206  -0.000000001  -0.000000015   0.000000003  -0.000000061
                        -0.000000000   0.000000177   0.000000001   0.000000054   0.000000007   0.000000173  -0.000000002   0.000000039

   98   15.1  0.5 -0.5   0.000000198   0.000000000  -0.000000046   0.000000001   0.000000188  -0.000000008   0.000000176   0.000000009
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000004  -0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.000339163   0.189664452   0.492560964   0.059623826  -0.005714060   0.171828293  -0.024116729   0.005217817
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000008  -0.000004834  -0.000047443  -0.000005743  -0.000015297   0.000459971   0.001651704  -0.000357355
                         0.000150484  -0.084152540   0.174150805   0.021080715   0.005710517  -0.171721770   0.407466441  -0.088158116

    3    3.1  1.5  1.5   0.001551925   0.000002775  -0.002438497   0.020144774   0.342399628   0.011386319   0.000534516   0.002470529
                         0.014003349   0.000025041   0.000723490  -0.005976854  -0.312691347  -0.010398386  -0.004046766  -0.018704137

    4    4.1  1.5  1.5  -0.072224461  -0.000129154  -0.009820622   0.081129565  -0.106177406  -0.003530873   0.074678175   0.345162208
                         0.008106660   0.000014497  -0.031050682   0.256514133  -0.115887549  -0.003853779   0.009520563   0.044004008

    5    5.1  1.5  1.5  -0.027216035  -0.000048669   0.008876495  -0.073329996  -0.303730347  -0.010100392  -0.005016650  -0.023186937
                        -0.241532802  -0.000431916  -0.002781054   0.022974681   0.277249113   0.009219774   0.039707299   0.183526970

    6    6.1  1.5  1.5   0.321587846   0.000575072   0.006609455  -0.054601652   0.048468043   0.001611779  -0.031721641  -0.146617291
                        -0.036237327  -0.000064802   0.020893374  -0.172603155   0.053188459   0.001768754  -0.004053424  -0.018734914

    7    7.1  1.5  1.5  -0.000251739   0.140775875  -0.078944689  -0.009556146  -0.005546812   0.166798963   0.362609412  -0.078452997
                        -0.000000090   0.000050269  -0.000071611  -0.000008669  -0.000006558   0.000197206  -0.001426588   0.000308650

    8    8.1  1.5  1.5  -0.000000009  -0.000000000  -0.000000004   0.000000033  -0.000000872  -0.000000029   0.000000015   0.000000070
                        -0.000000081  -0.000000000   0.000000001  -0.000000011   0.000000796   0.000000026  -0.000000118  -0.000000546

    9    9.1  1.5  1.5   0.000000000  -0.000000024  -0.000000695  -0.000000084  -0.000000042   0.000001249   0.000001572  -0.000000340
                         0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000007   0.000000001

   10   10.1  1.5  1.5   0.000000026   0.000000000  -0.000000011   0.000000091   0.000000610   0.000000020  -0.000000098  -0.000000453
                        -0.000000003  -0.000000000  -0.000000035   0.000000289   0.000000668   0.000000022  -0.000000013  -0.000000058

   11   11.1  1.5  1.5  -0.000000086   0.000048346  -0.000510438  -0.000061788   0.000003401  -0.000102261   0.000164452  -0.000035580
                         0.000000000  -0.000000007  -0.000000028  -0.000000003  -0.000000003   0.000000077  -0.000000555   0.000000120

   12   12.1  1.5  1.5  -0.000081846  -0.000000146   0.000012335  -0.000101899   0.000121036   0.000004025  -0.000084906  -0.000392434
                         0.000009351   0.000000017   0.000038934  -0.000321642   0.000134770   0.000004482  -0.000010763  -0.000049745

   13   13.1  1.5  1.5  -0.000099402  -0.000000178   0.000001509  -0.000012468  -0.000002268  -0.000000075   0.000005627   0.000026008
                         0.000010915   0.000000020   0.000004896  -0.000040445  -0.000007024  -0.000000234   0.000000572   0.000002642

   14   14.1  1.5  1.5   0.000000000  -0.000000092   0.000000087   0.000000011  -0.000000025   0.000000758   0.000002145  -0.000000464
                        -0.000000059   0.000032888   0.000182716   0.000022118   0.000005986  -0.000179995   0.000427163  -0.000092420

   15   15.1  1.5  1.5   0.000006381   0.000000011   0.000007464  -0.000061660  -0.000477507  -0.000015879  -0.000003256  -0.000015049
                         0.000059248   0.000000106  -0.000002391   0.000019754   0.000435296   0.000014476   0.000027668   0.000127879

   16   16.1  1.5  1.5   0.000000140  -0.000078489   0.000114741   0.000013889  -0.000007627   0.000229353   0.000343948  -0.000074416
                         0.000000000  -0.000000058  -0.000000289  -0.000000035  -0.000000014   0.000000408  -0.000001903   0.000000412

   17   17.1  1.5  1.5   0.000008283   0.000000015   0.000006094  -0.000050340  -0.000050838  -0.000001691  -0.000003983  -0.000018407
                         0.000073526   0.000000131  -0.000001923   0.000015883   0.000046388   0.000001543   0.000031436   0.000145295

   18    1.1  1.5  0.5   0.008161815   0.000014595   0.018637124  -0.153963946   0.222649520   0.007404092  -0.008658112  -0.040017762
                         0.072226198   0.000129157  -0.005904767   0.048780129  -0.203229641  -0.006758295   0.067951012   0.314069285

   19    2.1  1.5  0.5   0.038293018   0.000068476  -0.000433206   0.003578774   0.076222361   0.002534734   0.039742938   0.183691687
                        -0.004355395  -0.000007788  -0.001401499   0.011577982   0.083526182   0.002777619   0.005031339   0.023254829

   20    3.1  1.5  0.5  -0.000291957   0.163266204   0.533805379   0.064616405   0.003635335  -0.109318691  -0.010229064   0.002213127
                        -0.000000315   0.000175715   0.000400605   0.000048493   0.000002359  -0.000070931   0.000151707  -0.000032823

   21    4.1  1.5  0.5   0.000000273  -0.000152097  -0.000235540  -0.000028512   0.000006365  -0.000191407   0.000536105  -0.000115989
                        -0.000638141   0.356856631   0.358632411   0.043411959  -0.012746757   0.383309560   0.087504665  -0.018932226

   22    5.1  1.5  0.5   0.000361727  -0.202282276   0.279577321   0.033842450   0.012551007  -0.377423127   0.294978344  -0.063820557
                        -0.000000061   0.000034241   0.000178358   0.000021590   0.000023156  -0.000696298  -0.001106603   0.000239420

   23    6.1  1.5  0.5  -0.000000041   0.000022395   0.000069681   0.000008435  -0.000003274   0.000098444   0.001899057  -0.000410871
                         0.000689464  -0.385557418   0.156720318   0.018970778  -0.004838882   0.145510736   0.437710576  -0.094701639

   24    7.1  1.5  0.5   0.072328105   0.000129340  -0.014454624   0.119411720   0.137582720   0.004575241   0.004153535   0.019197626
                         0.642073310   0.001148173   0.004558426  -0.037657813  -0.125606925  -0.004176993  -0.032716881  -0.151217288

   25    8.1  1.5  0.5   0.000000000  -0.000000116   0.000000085   0.000000010   0.000000045  -0.000001345   0.000000002  -0.000000000
                        -0.000000000   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000

   26    9.1  1.5  0.5  -0.000000072  -0.000000000  -0.000000046   0.000000381  -0.000000046  -0.000000002   0.000000021   0.000000096
                        -0.000000642  -0.000000001   0.000000015  -0.000000121   0.000000042   0.000000001  -0.000000163  -0.000000755

   27   10.1  1.5  0.5   0.000000000   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000001   0.000000005  -0.000000001
                        -0.000000000   0.000000034  -0.000000688  -0.000000083  -0.000000025   0.000000738   0.000001354  -0.000000293

   28   11.1  1.5  0.5  -0.000007517  -0.000000013  -0.000023765   0.000196329  -0.000163196  -0.000005427   0.000010046   0.000046431
                        -0.000066809  -0.000000119   0.000007521  -0.000062135   0.000148952   0.000004953  -0.000078888  -0.000364621

   29   12.1  1.5  0.5  -0.000000000   0.000000197  -0.000000668  -0.000000081   0.000000001  -0.000000030   0.000000831  -0.000000180
                        -0.000000344   0.000192254  -0.000261777  -0.000031688   0.000009648  -0.000290132   0.000125212  -0.000027091

   30   13.1  1.5  0.5   0.000000001  -0.000000471   0.000001486   0.000000180  -0.000000021   0.000000631   0.000001118  -0.000000242
                        -0.000000128   0.000071682   0.000316098   0.000038263  -0.000010557   0.000317450   0.000451229  -0.000097626

   31   14.1  1.5  0.5  -0.000014994  -0.000000027  -0.000000459   0.000003789   0.000080204   0.000002667   0.000041656   0.000192535
                         0.000001409   0.000000003  -0.000001455   0.000012018   0.000087357   0.000002905   0.000005267   0.000024343

   32   15.1  1.5  0.5  -0.000000175   0.000097696  -0.000285511  -0.000034561   0.000004545  -0.000136664   0.000188293  -0.000040738
                         0.000000000  -0.000000104   0.000002065   0.000000250  -0.000000067   0.000002017   0.000001143  -0.000000247

   33   16.1  1.5  0.5  -0.000027365  -0.000000049  -0.000006812   0.000056278   0.000220569   0.000007335   0.000000629   0.000002907
                        -0.000243053  -0.000000435   0.000002140  -0.000017676  -0.000201548  -0.000006702  -0.000005451  -0.000025196

   34   17.1  1.5  0.5  -0.000000049   0.000027279   0.000563569   0.000068219   0.000012932  -0.000388871   0.000245486  -0.000053113
                         0.000000000  -0.000000008   0.000000273   0.000000033   0.000000026  -0.000000769  -0.000000888   0.000000192

   35    1.1  1.5 -0.5  -0.000129979   0.072685888   0.161506564   0.019550147   0.010024718  -0.301454740  -0.316605691   0.068499781
                        -0.000000046   0.000025652   0.000165980   0.000020092   0.000012254  -0.000368495   0.001331689  -0.000288118

   36    2.1  1.5 -0.5   0.000000074  -0.000041572   0.000072826   0.000008815   0.000004142  -0.000124545  -0.000629390   0.000136172
                        -0.000068918   0.038539888   0.012118250   0.001466897  -0.003760323   0.113077212  -0.185156763   0.040059917

   37    3.1  1.5 -0.5  -0.018450327  -0.000032994  -0.061604108   0.508920356  -0.080783202  -0.002686402   0.000303069   0.001400782
                        -0.162220436  -0.000290087   0.019499131  -0.161085115   0.073652260   0.002449267  -0.002192523  -0.010133834

   38    4.1  1.5 -0.5  -0.354596824  -0.000634099   0.013096439  -0.108191561  -0.258208210  -0.008586578   0.018776111   0.086783104
                         0.040097011   0.000071703   0.041389398  -0.341923745  -0.283292738  -0.009420750   0.002429047   0.011227047

   39    5.1  1.5 -0.5   0.022609077   0.000040430  -0.032265923   0.266553411  -0.278600348  -0.009264707  -0.008037876  -0.037151035
                         0.201014800   0.000359460   0.010208920  -0.084337352   0.254618435   0.008467203   0.063312821   0.292631592

   40    6.1  1.5 -0.5   0.383131751   0.000685126   0.005703144  -0.047114493  -0.097893650  -0.003255401   0.093941428   0.434196882
                        -0.043180837  -0.000077218   0.018093221  -0.149470692  -0.107657871  -0.003580105   0.011982378   0.055382510

   41    7.1  1.5 -0.5  -0.001155435   0.646134266  -0.125208898  -0.015156365   0.006195162  -0.186295583   0.152429952  -0.032979249
                        -0.000000003   0.000001039   0.000038335   0.000004640   0.000008173  -0.000245755  -0.000571678   0.000123686

   42    8.1  1.5 -0.5   0.000000013   0.000000000  -0.000000010   0.000000081  -0.000000993  -0.000000033   0.000000000   0.000000000
                         0.000000115   0.000000000   0.000000003  -0.000000026   0.000000906   0.000000030   0.000000000   0.000000002

   43    9.1  1.5 -0.5   0.000000001  -0.000000647  -0.000000400  -0.000000048  -0.000000002   0.000000062   0.000000762  -0.000000165
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000003   0.000000001

   44   10.1  1.5 -0.5  -0.000000033  -0.000000000  -0.000000025   0.000000208  -0.000000497  -0.000000017   0.000000291   0.000001343
                         0.000000004   0.000000000  -0.000000079   0.000000656  -0.000000545  -0.000000018   0.000000037   0.000000171

   45   11.1  1.5 -0.5   0.000000120  -0.000067231  -0.000205927  -0.000024927  -0.000007348   0.000220951   0.000367562  -0.000079525
                        -0.000000000   0.000000009  -0.000000147  -0.000000018  -0.000000009   0.000000263  -0.000001519   0.000000329

   46   12.1  1.5 -0.5  -0.000191068  -0.000000342  -0.000009462   0.000078171   0.000195311   0.000006495   0.000026865   0.000124172
                         0.000021325   0.000000038  -0.000030242   0.000249833   0.000214546   0.000007135   0.000003490   0.000016129

   47   13.1  1.5 -0.5  -0.000071179  -0.000000127   0.000011348  -0.000093745  -0.000213260  -0.000007092   0.000096865   0.000447709
                         0.000008492   0.000000015   0.000036542  -0.000301881  -0.000235150  -0.000007820   0.000012172   0.000056260

   48   14.1  1.5 -0.5   0.000000000  -0.000000278   0.000000005   0.000000001   0.000000016  -0.000000489  -0.000000629   0.000000136
                         0.000000027  -0.000015057   0.000012601   0.000001525  -0.000003944   0.000118591  -0.000194067   0.000041988

   49   15.1  1.5 -0.5  -0.000010833  -0.000000019   0.000033033  -0.000272888  -0.000102408  -0.000003406  -0.000004734  -0.000021879
                        -0.000097093  -0.000000174  -0.000010166   0.000083985   0.000090519   0.000003010   0.000040463   0.000187021

   50   16.1  1.5 -0.5   0.000000437  -0.000244589  -0.000058988  -0.000007140   0.000009936  -0.000298784   0.000025363  -0.000005487
                        -0.000000000   0.000000014   0.000000087   0.000000011   0.000000017  -0.000000525   0.000000194  -0.000000042

   51   17.1  1.5 -0.5  -0.000003046  -0.000000005  -0.000065044   0.000537342  -0.000287016  -0.000009545  -0.000006682  -0.000030885
                        -0.000027108  -0.000000048   0.000020569  -0.000169924   0.000262380   0.000008725   0.000052691   0.000243537

   52    1.1  1.5 -1.5   0.021230687   0.000037965   0.056857744  -0.469709964  -0.127050968  -0.004225013  -0.000637730  -0.002947585
                         0.188472445   0.000337031  -0.017949863   0.148286387   0.115684977   0.003847043   0.005178698   0.023935922

   53    2.1  1.5 -1.5  -0.083624197  -0.000149539  -0.006351865   0.052473663  -0.115953365  -0.003855969  -0.087453504  -0.404209724
                         0.009415076   0.000016837  -0.020101005   0.166057279  -0.126662524  -0.004212095  -0.011129503  -0.051440525

   54    3.1  1.5 -1.5   0.000025194  -0.014089061   0.021009556   0.002543178  -0.015419928   0.463694855  -0.018865861   0.004081756
                        -0.000000046   0.000025337  -0.000365047  -0.000044188  -0.000022691   0.000682338   0.000165958  -0.000035906

   55    4.1  1.5 -1.5  -0.000000052   0.000028962   0.000141731   0.000017156   0.000016159  -0.000485914   0.001487822  -0.000321899
                        -0.000129965   0.072677987  -0.269038076  -0.032566689  -0.005226702   0.157172929   0.347952710  -0.075281919

   56    5.1  1.5 -1.5  -0.000434649   0.243061323  -0.076844625  -0.009301936   0.013675593  -0.411240725   0.184984983  -0.040022750
                        -0.000000015   0.000008253   0.000167296   0.000020251   0.000016979  -0.000510567  -0.000582139   0.000125949

   57    6.1  1.5 -1.5  -0.000000022   0.000011635  -0.000106062  -0.000012839  -0.000000930   0.000027971  -0.000674654   0.000145965
                         0.000578712  -0.323623062   0.181033638   0.021913873   0.002392973  -0.071959451  -0.147807888   0.031979235

   58    7.1  1.5 -1.5   0.015808144   0.000028269  -0.009110205   0.075260711  -0.123199477  -0.004096934   0.009894988   0.045734598
                         0.139885496   0.000250147   0.002885162  -0.023834734   0.112444750   0.003739291  -0.077827098  -0.359716510

   59    8.1  1.5 -1.5  -0.000000000   0.000000082   0.000000034   0.000000004   0.000000039  -0.000001180  -0.000000550   0.000000119
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000001

   60    9.1  1.5 -1.5  -0.000000003  -0.000000000  -0.000000080   0.000000662  -0.000000923  -0.000000031   0.000000043   0.000000199
                        -0.000000023  -0.000000000   0.000000025  -0.000000210   0.000000842   0.000000028  -0.000000337  -0.000001559

   61   10.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000002   0.000000000
                         0.000000000  -0.000000026  -0.000000303  -0.000000037   0.000000030  -0.000000905  -0.000000456   0.000000099

   62   11.1  1.5 -1.5   0.000005404   0.000000010  -0.000058920   0.000486750   0.000075664   0.000002516   0.000004468   0.000020651
                         0.000048043   0.000000086   0.000018605  -0.000153695  -0.000068791  -0.000002288  -0.000035299  -0.000163151

   63   12.1  1.5 -1.5   0.000000000  -0.000000131  -0.000000341  -0.000000041   0.000000041  -0.000001241  -0.000001408   0.000000305
                        -0.000000147   0.000082379   0.000337397   0.000040841   0.000006024  -0.000181138  -0.000395571   0.000085585

   64   13.1  1.5 -1.5  -0.000000001   0.000000280   0.000000287   0.000000035  -0.000000102   0.000003053  -0.000000556   0.000000120
                        -0.000000179   0.000099999   0.000042322   0.000005123  -0.000000223   0.000006721   0.000026136  -0.000005655

   65   14.1  1.5 -1.5   0.000032671   0.000000058  -0.000006648   0.000054924  -0.000121744  -0.000004049  -0.000091670  -0.000423699
                        -0.000003773  -0.000000007  -0.000021095   0.000174266  -0.000132580  -0.000004409  -0.000011756  -0.000054338

   66   15.1  1.5 -1.5   0.000000107  -0.000059590  -0.000064746  -0.000007837   0.000021487  -0.000646139   0.000128760  -0.000027858
                        -0.000000001   0.000000291  -0.000000275  -0.000000033   0.000000012  -0.000000375   0.000000694  -0.000000150

   67   16.1  1.5 -1.5  -0.000008843  -0.000000016   0.000013255  -0.000109505  -0.000169311  -0.000005630   0.000009504   0.000043927
                        -0.000077989  -0.000000139  -0.000004148   0.000034267   0.000154716   0.000005145  -0.000073807  -0.000341137

   68   17.1  1.5 -1.5   0.000000132  -0.000073991  -0.000052787  -0.000006390   0.000002289  -0.000068821   0.000146456  -0.000031687
                         0.000000000  -0.000000001   0.000000009   0.000000001   0.000000002  -0.000000072  -0.000000511   0.000000111

   69    1.1  0.5  0.5  -0.000000046  -0.000000000   0.003285265  -0.027140045   0.056647534   0.001883784  -0.000010612  -0.000049048
                        -0.000000407  -0.000000001  -0.001043321   0.008619024  -0.051699599  -0.001719243   0.000007382   0.000034121

   70    2.1  0.5  0.5   0.000000000  -0.000000001  -0.000034034  -0.000004120  -0.000004748   0.000142787   0.000225282  -0.000048741
                        -0.000000006   0.000003574   0.118928833   0.014396171   0.001789718  -0.053818852   0.056015093  -0.012119244

   71    3.1  0.5  0.5  -0.000000005   0.000003032   0.084055362   0.010174786  -0.001307913   0.039330447   0.103590144  -0.022412427
                         0.000000000  -0.000000001  -0.000017392  -0.000002105   0.000001014  -0.000030480  -0.000447954   0.000096917

   72    4.1  0.5  0.5   0.000000653   0.000000001   0.007347102  -0.060695461  -0.064470329  -0.002143927  -0.002368143  -0.010945551
                         0.000005795   0.000000010  -0.002317203   0.019142744   0.058858043   0.001957293   0.018652927   0.086213749

   73    5.1  0.5  0.5  -0.000000000   0.000000001   0.000012580   0.000001523   0.000002289  -0.000068824   0.000087855  -0.000019008
                        -0.000000008   0.000004615   0.045333265   0.005487529  -0.002105099   0.063302722   0.020861017  -0.004513422

   74    6.1  0.5  0.5  -0.000000017   0.000009357   0.080082056   0.009693823  -0.000993744   0.029883021  -0.095716544   0.020708921
                        -0.000000000   0.000000001   0.000001607   0.000000195  -0.000000790   0.000023768   0.000360644  -0.000078027

   75    7.1  0.5  0.5  -0.000001272  -0.000000002   0.001694033  -0.013994650   0.080706551   0.002683854  -0.014455270  -0.066812195
                         0.000000145   0.000000000   0.005339520  -0.044110539   0.088421089   0.002940397  -0.001847496  -0.008539119

   76    8.1  0.5  0.5   0.000004453   0.000000008  -0.000000068   0.000000559  -0.000003328  -0.000000111   0.000000192   0.000000889
                        -0.000000502  -0.000000001  -0.000000214   0.000001765  -0.000003642  -0.000000121   0.000000025   0.000000113

   77    9.1  0.5  0.5   0.000000000  -0.000000000  -0.000000007  -0.000000001  -0.000000000   0.000000014  -0.000000007   0.000000002
                         0.000000001  -0.000000550   0.000001843   0.000000223   0.000000388  -0.000011668  -0.000001158   0.000000250

   78   10.1  0.5  0.5  -0.000000001   0.000000544   0.000006428   0.000000778   0.000000057  -0.000001705  -0.000016706   0.000003614
                        -0.000000000   0.000000000   0.000000005   0.000000001   0.000000000  -0.000000000   0.000000066  -0.000000014

   79   11.1  0.5  0.5  -0.000000634  -0.000000001   0.000000056  -0.000000464   0.000000394   0.000000013   0.000001048   0.000004846
                         0.000000072   0.000000000   0.000000176  -0.000001456   0.000000431   0.000000014   0.000000133   0.000000617

   80   12.1  0.5  0.5  -0.000000057  -0.000000000  -0.000000146   0.000001205   0.000006597   0.000000219  -0.000000027  -0.000000124
                        -0.000000498  -0.000000001   0.000000046  -0.000000378  -0.000006019  -0.000000200   0.000000207   0.000000956

   81   13.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000001
                         0.000000000  -0.000000026   0.000000314   0.000000038  -0.000000013   0.000000398  -0.000001091   0.000000236

   82   14.1  0.5  0.5   0.000000000  -0.000000141  -0.000000140  -0.000000017  -0.000000012   0.000000367   0.000000288  -0.000000062
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000000

   83   15.1  0.5  0.5   0.000000019   0.000000000  -0.000000014   0.000000114   0.000000569   0.000000019   0.000000022   0.000000103
                         0.000000170   0.000000000   0.000000004  -0.000000036  -0.000000519  -0.000000017  -0.000000175  -0.000000808

   84    1.1  0.5 -0.5  -0.000000001   0.000000410  -0.028475731  -0.003446948  -0.002550378   0.076692788   0.000039860  -0.000008624
                        -0.000000000   0.000000000  -0.000048608  -0.000005884  -0.000002945   0.000088550  -0.000044510   0.000009630

   85    2.1  0.5 -0.5   0.000003551   0.000000006  -0.004337923   0.035836200  -0.036339614  -0.001208455  -0.012022426  -0.055567604
                        -0.000000401  -0.000000001  -0.013727061   0.113401213  -0.039697880  -0.001320132  -0.001529609  -0.007069848

   86    3.1  0.5 -0.5   0.000000339   0.000000001   0.009703389  -0.080161083  -0.029101711  -0.000967762   0.002835474   0.013105550
                         0.000003013   0.000000005  -0.003061130   0.025288436   0.026457048   0.000879815  -0.022232552  -0.102758761

   87    4.1  0.5 -0.5   0.000000010  -0.000005832  -0.063642622  -0.007703852   0.002902999  -0.087296502   0.086905173  -0.018802521
                         0.000000000  -0.000000000   0.000017811   0.000002156   0.000003817  -0.000114782  -0.000326307   0.000070598

   88    5.1  0.5 -0.5   0.000004586   0.000000008  -0.001650579   0.013635667   0.042670028   0.001418969  -0.004477261  -0.020693880
                        -0.000000516  -0.000000001  -0.005233409   0.043233941   0.046760112   0.001554983  -0.000570503  -0.002636864

   89    6.1  0.5 -0.5   0.000001048   0.000000002   0.009244046  -0.076366388  -0.022079700  -0.000734249  -0.002608520  -0.012056570
                         0.000009298   0.000000017  -0.002918529   0.024110383   0.020136593   0.000669632   0.020544126   0.094954863

   90    7.1  0.5 -0.5   0.000000000  -0.000000001  -0.000065848  -0.000007971  -0.000004810   0.000144643  -0.000309206   0.000066898
                        -0.000000002   0.000001281   0.046277269   0.005601800   0.003981078  -0.119715561  -0.067354958   0.014572700

   91    8.1  0.5 -0.5  -0.000000000   0.000000000   0.000000002   0.000000000   0.000000000  -0.000000009   0.000000004  -0.000000001
                         0.000000008  -0.000004481  -0.000001851  -0.000000224  -0.000000164   0.000004933   0.000000896  -0.000000194

   92    9.1  0.5 -0.5  -0.000000546  -0.000000001  -0.000000068   0.000000561  -0.000007866  -0.000000262   0.000000248   0.000001148
                         0.000000061   0.000000000  -0.000000213   0.000001756  -0.000008618  -0.000000287   0.000000032   0.000000149

   93   10.1  0.5 -0.5   0.000000061   0.000000000   0.000000742  -0.000006128   0.000001261   0.000000042  -0.000000456  -0.000002108
                         0.000000540   0.000000001  -0.000000235   0.000001940  -0.000001148  -0.000000038   0.000003586   0.000016573

   94   11.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000004  -0.000000000  -0.000000000   0.000000001   0.000000020  -0.000000004
                        -0.000000001   0.000000638   0.000001528   0.000000185   0.000000019  -0.000000584   0.000004885  -0.000001057

   95   12.1  0.5 -0.5  -0.000000001   0.000000501   0.000001263   0.000000153  -0.000000297   0.000008930   0.000000964  -0.000000209
                        -0.000000000   0.000000001  -0.000000003  -0.000000000  -0.000000000   0.000000008  -0.000000006   0.000000001

   96   13.1  0.5 -0.5  -0.000000026  -0.000000000  -0.000000011   0.000000094   0.000000268   0.000000009   0.000000234   0.000001082
                         0.000000003   0.000000000  -0.000000036   0.000000299   0.000000294   0.000000010   0.000000030   0.000000137

   97   14.1  0.5 -0.5  -0.000000016  -0.000000000  -0.000000016   0.000000134  -0.000000271  -0.000000009   0.000000008   0.000000036
                        -0.000000140  -0.000000000   0.000000005  -0.000000042   0.000000247   0.000000008  -0.000000062  -0.000000285

   98   15.1  0.5 -0.5   0.000000000  -0.000000172   0.000000120   0.000000015  -0.000000026   0.000000770  -0.000000815   0.000000176
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000003  -0.000000001


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.007939419   0.000313947  -0.022757137  -0.214459301  -0.001435464  -0.399937309  -0.006876498  -0.037934856
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.001724764  -0.000068208   0.000000170   0.000001599   0.000000025   0.000007011  -0.000014576  -0.000080416
                        -0.202231593  -0.007996800   0.022259436   0.209769052   0.001449671   0.403895411  -0.000687478  -0.003792538

    3    3.1  1.5  1.5   0.003190207  -0.080677368  -0.157810421   0.016745897  -0.097712425   0.000350712   0.229770941  -0.041650868
                         0.000627563  -0.015870431  -0.180936491   0.019199897  -0.185483793   0.000665742   0.194133604  -0.035190834

    4    4.1  1.5  1.5  -0.001360703   0.034410753   0.024919635  -0.002644322   0.313889106  -0.001126619   0.175274901  -0.031772294
                         0.006903754  -0.174589509  -0.021550055   0.002286763  -0.165747101   0.000594903  -0.207632214   0.037637752

    5    5.1  1.5  1.5   0.006074365  -0.153615050   0.211001414  -0.022390207   0.086271747  -0.000309648   0.184656565  -0.033472928
                         0.001194313  -0.030202918   0.241828106  -0.025661351   0.163168265  -0.000585648   0.156130342  -0.028301937

    6    6.1  1.5  1.5   0.002855418  -0.072210539   0.028552953  -0.003029869  -0.296450854   0.001064028   0.176509194  -0.031996035
                        -0.014536563   0.367616166  -0.024893901   0.002641591   0.156610899  -0.000562112  -0.208636817   0.037819859

    7    7.1  1.5  1.5   0.533684378   0.021103365   0.004812262   0.045349920  -0.000226877  -0.063210764   0.087891889   0.484863945
                        -0.004292352  -0.000169750   0.000001995   0.000018802   0.000000292   0.000081667  -0.000169924  -0.000937466

    8    8.1  1.5  1.5   0.000000011  -0.000000289   0.013135390  -0.001393849  -0.001644048   0.000005901  -0.002106104   0.000381776
                         0.000000002  -0.000000057   0.015056265  -0.001597681  -0.003111458   0.000011168  -0.001781881   0.000323004

    9    9.1  1.5  1.5   0.000001465   0.000000058  -0.000237429  -0.002237486   0.000003618   0.001007978  -0.003101245  -0.017108315
                        -0.000000012  -0.000000000  -0.000000070  -0.000000659  -0.000000010  -0.000002862   0.000005956   0.000032857

   10   10.1  1.5  1.5   0.000000003  -0.000000082   0.010750404  -0.001140768  -0.012838374   0.000046080  -0.001712753   0.000310473
                        -0.000000017   0.000000418  -0.009378438   0.000995184   0.006783904  -0.000024349   0.002027461  -0.000367520

   11   11.1  1.5  1.5   0.000200089   0.000007912  -0.000048827  -0.000460134  -0.000002661  -0.000741356  -0.000083057  -0.000458194
                        -0.000001671  -0.000000066  -0.000000002  -0.000000014  -0.000000000  -0.000000063   0.000000134   0.000000741

   12   12.1  1.5  1.5   0.000002623  -0.000066333   0.000018409  -0.000001953   0.000880282  -0.000003160   0.000164597  -0.000029837
                        -0.000013328   0.000337060  -0.000018504   0.000001963  -0.000466666   0.000001675  -0.000194154   0.000035195

   13   13.1  1.5  1.5   0.000002027  -0.000051268  -0.000075352   0.000007996   0.000263601  -0.000000946  -0.000504841   0.000091513
                        -0.000010352   0.000261787   0.000070926  -0.000007526  -0.000135959   0.000000488   0.000595230  -0.000107898

   14   14.1  1.5  1.5  -0.000001180  -0.000000047   0.000000010   0.000000092   0.000000002   0.000000514  -0.000000171  -0.000000946
                        -0.000212076  -0.000008386  -0.000047422  -0.000446895  -0.000003088  -0.000860436   0.000001448   0.000007986

   15   15.1  1.5  1.5   0.000000976  -0.000024686  -0.000535018   0.000056773  -0.000277010   0.000000994   0.000167255  -0.000030319
                         0.000000174  -0.000004409  -0.000612403   0.000064985  -0.000522599   0.000001876   0.000147229  -0.000026688

   16   16.1  1.5  1.5   0.000522809   0.000020673   0.000008469   0.000079808   0.000001584   0.000441297  -0.000168368  -0.000928819
                        -0.000003925  -0.000000155   0.000000053   0.000000500   0.000000003   0.000000872   0.000000334   0.000001844

   17   17.1  1.5  1.5   0.000007135  -0.000180440  -0.000170532   0.000018096  -0.000028592   0.000000103  -0.000604280   0.000109539
                         0.000001401  -0.000035426  -0.000195395   0.000020734  -0.000053737   0.000000193  -0.000511009   0.000092631

   18    1.1  1.5  0.5   0.008789192  -0.222270494  -0.232607088   0.024682871   0.069520030  -0.000249522   0.181634377  -0.032925092
                         0.001722379  -0.043557170  -0.266639456   0.028294183   0.131502734  -0.000471993   0.153622119  -0.027847268

   19    2.1  1.5  0.5   0.003620872  -0.091568052   0.291209062  -0.030901363  -0.178393906   0.000640296   0.079999072  -0.014501529
                        -0.018441119   0.466358742  -0.254063388   0.026959685   0.094230071  -0.000338213  -0.094559201   0.017140866

   20    3.1  1.5  0.5   0.161514210   0.006386721   0.040608227   0.382684862  -0.000479053  -0.133469908   0.041263025   0.227631391
                        -0.001380996  -0.000054614  -0.000025845  -0.000243550   0.000000769   0.000214343  -0.000107876  -0.000595137

   21    4.1  1.5  0.5  -0.000947959  -0.000037488  -0.000028959  -0.000272895   0.000000530   0.000147785  -0.000122278  -0.000674594
                        -0.089000325  -0.003519320  -0.031886665  -0.300494386   0.000813116   0.226543608  -0.046907535  -0.258769867

   22    5.1  1.5  0.5  -0.038718095  -0.001531022   0.025818985   0.243313622  -0.000713178  -0.198699832  -0.061063804  -0.336864272
                         0.000339960   0.000013444  -0.000003580  -0.000033728  -0.000000153  -0.000043007   0.000113433   0.000625806

   23    6.1  1.5  0.5  -0.002742795  -0.000108468  -0.000006667  -0.000062817  -0.000000107  -0.000030216   0.000106087   0.000585279
                        -0.318476726  -0.012593456  -0.034767002  -0.327638183   0.000408596   0.113839607   0.057156818   0.315311012

   24    7.1  1.5  0.5   0.005214551  -0.131871142   0.103730483  -0.011007258   0.175323558  -0.000629275   0.013049146  -0.002365434
                         0.001023611  -0.025886066   0.118881901  -0.012615036   0.331785683  -0.001190853   0.010950561  -0.001985022

   25    8.1  1.5  0.5  -0.000000524  -0.000000021   0.000730785   0.006886788   0.000031086   0.008660825   0.002669443   0.014726234
                         0.000000004   0.000000000   0.000000057   0.000000533   0.000000008   0.000002313  -0.000004813  -0.000026556

   26    9.1  1.5  0.5   0.000000005  -0.000000122   0.006508517  -0.000690645   0.008905321  -0.000031963  -0.000135415   0.000024547
                         0.000000001  -0.000000024   0.007459443  -0.000791551   0.016852865  -0.000060489  -0.000119059   0.000021582

   27   10.1  1.5  0.5   0.000000001   0.000000000   0.000000065   0.000000609   0.000000009   0.000002644  -0.000005502  -0.000030352
                         0.000000115   0.000000005   0.000319978   0.003015412   0.000037345   0.010404777  -0.002701861  -0.014905071

   28   11.1  1.5  0.5  -0.000006525   0.000165001  -0.000541875   0.000057501  -0.000001025   0.000000004   0.000349155  -0.000063292
                        -0.000001278   0.000032316  -0.000621138   0.000065911  -0.000002055   0.000000007   0.000295375  -0.000053543

   29   12.1  1.5  0.5  -0.000000858  -0.000000034   0.000000081   0.000000763   0.000000001   0.000000206   0.000000044   0.000000241
                        -0.000066995  -0.000002649  -0.000027260  -0.000256890   0.000001155   0.000321816  -0.000144029  -0.000794548

   30   13.1  1.5  0.5  -0.000002187  -0.000000087  -0.000000169  -0.000001595  -0.000000000  -0.000000077  -0.000000819  -0.000004520
                        -0.000340189  -0.000013452   0.000096698   0.000911267  -0.000001557  -0.000433786  -0.000063632  -0.000351030

   31   14.1  1.5  0.5   0.000003807  -0.000096278  -0.000620303   0.000065823   0.000379501  -0.000001362  -0.000170612   0.000030927
                        -0.000019336   0.000488983   0.000541126  -0.000057421  -0.000201625   0.000000724   0.000201253  -0.000036481

   32   15.1  1.5  0.5  -0.000161817  -0.000006399   0.000038515   0.000362960   0.000000052   0.000014513   0.000147094   0.000811456
                        -0.000000152  -0.000000006   0.000000521   0.000004913  -0.000000009  -0.000002629  -0.000000264  -0.000001456

   33   16.1  1.5  0.5   0.000008493  -0.000214776  -0.000020476   0.000002173  -0.000401995   0.000001443  -0.000169224   0.000030675
                         0.000001690  -0.000042741  -0.000024926   0.000002645  -0.000759592   0.000002726  -0.000143371   0.000025989

   34   17.1  1.5  0.5   0.000065316   0.000002583  -0.000094986  -0.000895127   0.000001829   0.000509652   0.000054856   0.000302616
                        -0.000000516  -0.000000020   0.000000015   0.000000144  -0.000000000  -0.000000032  -0.000000094  -0.000000517

   35    1.1  1.5 -0.5  -0.226491228  -0.008956093  -0.037547369  -0.353839873   0.000533890   0.148748119   0.043122215   0.237887791
                         0.001767196   0.000069888   0.000003589   0.000033810   0.000000091   0.000025614  -0.000081383  -0.000448987

   36    2.1  1.5 -0.5  -0.003882995  -0.000153561   0.000002111   0.000019880  -0.000000127  -0.000035430   0.000045571   0.000251413
                        -0.475247416  -0.018792605   0.041008765   0.386459470  -0.000724131  -0.201751557   0.022452206   0.123859722

   37    3.1  1.5 -0.5   0.006266820  -0.158482041  -0.251413232   0.026678466   0.062169661  -0.000223141  -0.173696670   0.031486215
                         0.001232948  -0.031179962  -0.288511958   0.030615162   0.118106713  -0.000423911  -0.147125360   0.026669592

   38    4.1  1.5 -0.5  -0.000686667   0.017365080   0.226600986  -0.024045541  -0.200366134   0.000719159   0.167249645  -0.030317546
                         0.003451885  -0.087294962  -0.197354866   0.020942116   0.105713955  -0.000379431  -0.197458490   0.035793550

   39    5.1  1.5 -0.5  -0.001502214   0.037989580  -0.159941498   0.016972034   0.092873608  -0.000333343   0.257212289  -0.046625195
                        -0.000295907   0.007483198  -0.183358221   0.019456877   0.175659096  -0.000630480   0.217531073  -0.039432122

   40    6.1  1.5 -0.5  -0.002431916   0.061500611   0.246915636  -0.026201210  -0.100636445   0.000361207  -0.203612621   0.036909107
                         0.012356888  -0.312494196  -0.215358890   0.022852595   0.053214311  -0.000190997   0.240755638  -0.043642078

   41    7.1  1.5 -0.5  -0.134383387  -0.005313893   0.016742128   0.157774901   0.001346892   0.375260029   0.003087969   0.017035077
                         0.001091683   0.000043172   0.000000160   0.000001504  -0.000000015  -0.000004111   0.000006088   0.000033590

   42    8.1  1.5 -0.5  -0.000000020   0.000000514  -0.004528131   0.000480498  -0.004048514   0.000014531  -0.011244714   0.002038343
                        -0.000000004   0.000000101  -0.005188822   0.000550607  -0.007656332   0.000027480  -0.009508895   0.001723689

   43    9.1  1.5 -0.5  -0.000000124  -0.000000005   0.001050497   0.009899701   0.000068414   0.019061054  -0.000032678  -0.000180272
                         0.000000001   0.000000000  -0.000000008  -0.000000075  -0.000000001  -0.000000332   0.000000688   0.000003798

   44   10.1  1.5 -0.5   0.000000001  -0.000000022  -0.002272504   0.000241145  -0.009200553   0.000033023   0.009627028  -0.001745103
                        -0.000000004   0.000000113   0.001982029  -0.000210321   0.004858932  -0.000017440  -0.011379033   0.002062692

   45   11.1  1.5 -0.5   0.000168131   0.000006648  -0.000087468  -0.000824282  -0.000000008  -0.000002296   0.000082902   0.000457334
                        -0.000001294  -0.000000051   0.000000007   0.000000067   0.000000000   0.000000053  -0.000000166  -0.000000915

   46   12.1  1.5 -0.5  -0.000000523   0.000013214   0.000193064  -0.000020487  -0.000284627   0.000001022   0.000511769  -0.000092769
                         0.000002597  -0.000065684  -0.000169468   0.000017983   0.000150175  -0.000000539  -0.000607783   0.000110174

   47   13.1  1.5 -0.5  -0.000002569   0.000064964  -0.000685589   0.000072751   0.000383566  -0.000001377   0.000229637  -0.000041627
                         0.000013205  -0.000333936   0.000600316  -0.000063702  -0.000202603   0.000000727  -0.000265537   0.000048134

   48   14.1  1.5 -0.5  -0.000004335  -0.000000171  -0.000000009  -0.000000082  -0.000000003  -0.000000957  -0.000000145  -0.000000801
                        -0.000498352  -0.000019706  -0.000087349  -0.000823161   0.000001542   0.000429736  -0.000047826  -0.000263838

   49   15.1  1.5 -0.5  -0.000006290   0.000159063  -0.000242330   0.000025715  -0.000004457   0.000000016  -0.000619619   0.000112319
                        -0.000001176   0.000029729  -0.000270259   0.000028678  -0.000014059   0.000000050  -0.000523960   0.000094979

   50   16.1  1.5 -0.5  -0.000218975  -0.000008659  -0.000003421  -0.000032243  -0.000003085  -0.000859407  -0.000040204  -0.000221792
                         0.000002349   0.000000093   0.000000102   0.000000959  -0.000000002  -0.000000528   0.000000110   0.000000606

   51   17.1  1.5 -0.5   0.000002535  -0.000064098   0.000588394  -0.000062437  -0.000238089   0.000000855  -0.000231091   0.000041890
                         0.000000497  -0.000012568   0.000674570  -0.000071581  -0.000450621   0.000001617  -0.000195381   0.000035417

   52    1.1  1.5 -1.5  -0.000308549   0.007802903  -0.140996595   0.014961715  -0.186856793   0.000670671  -0.029010520   0.005258773
                        -0.000057969   0.001465970  -0.161594407   0.017147431  -0.353602022   0.001269157  -0.024442649   0.004430749

   53    2.1  1.5 -1.5   0.001543601  -0.039036060   0.158061370  -0.016772526   0.357104828  -0.001281729  -0.002505152   0.000454111
                        -0.007846704   0.198435828  -0.137911778   0.014634372  -0.188699880   0.000677286   0.002848513  -0.000516354

   54    3.1  1.5 -1.5   0.082220539   0.003251229   0.025476678   0.240087777   0.000752470   0.209647044  -0.054526911  -0.300802876
                        -0.000700913  -0.000027718  -0.000005021  -0.000047317  -0.000000965  -0.000269031   0.000075045   0.000414035

   55    4.1  1.5 -1.5  -0.001582080  -0.000062566  -0.000015445  -0.000145554  -0.000000394  -0.000109522  -0.000046512  -0.000256616
                        -0.177941265  -0.007036293  -0.003495925  -0.032944983  -0.001274040  -0.354962618  -0.049255223  -0.271721110

   56    5.1  1.5 -1.5   0.156550499   0.006190442  -0.034056223  -0.320939915  -0.000662469  -0.184571653  -0.043834128  -0.241815125
                        -0.001319415  -0.000052179   0.000000144   0.000001357  -0.000000150  -0.000041920   0.000076101   0.000419846

   57    6.1  1.5 -1.5   0.003090601   0.000122224  -0.000001561  -0.000014707   0.000000142   0.000039820  -0.000100279  -0.000553238
                         0.374628423   0.014813850  -0.004019715  -0.037881093   0.001203381   0.335276126  -0.049538651  -0.273284670

   58    7.1  1.5 -1.5  -0.020709157   0.523715317   0.029829541  -0.003165332  -0.029460825   0.000105742   0.370193595  -0.067105460
                        -0.004063452   0.102760434   0.034158660  -0.003624713  -0.055925550   0.000200729   0.313130367  -0.056761522

   59    8.1  1.5 -1.5   0.000000295   0.000000012  -0.002120235  -0.019980730   0.000012631   0.003519100   0.000500083   0.002758757
                        -0.000000003  -0.000000000   0.000000137   0.000001289  -0.000000001  -0.000000146  -0.000001025  -0.000005655

   60    9.1  1.5 -1.5  -0.000000057   0.000001438  -0.001471535   0.000156150   0.000468412  -0.000001681  -0.013062340   0.002367827
                        -0.000000011   0.000000282  -0.001685506   0.000178856   0.000892535  -0.000003203  -0.011048565   0.002002787

   61   10.1  1.5 -1.5   0.000000004   0.000000000  -0.000000132  -0.000001246   0.000000001   0.000000338   0.000000628   0.000003462
                         0.000000426   0.000000017  -0.001513850  -0.014266263   0.000052117   0.014520510   0.000481107   0.002654074

   62   11.1  1.5 -1.5  -0.000007764   0.000196340  -0.000302527   0.000032102  -0.000346429   0.000001243  -0.000349925   0.000063431
                        -0.000001526   0.000038588  -0.000346700   0.000036790  -0.000655436   0.000002353  -0.000295796   0.000053619

   63   12.1  1.5 -1.5   0.000002956   0.000000117   0.000000195   0.000001839   0.000000005   0.000001319  -0.000000141  -0.000000775
                         0.000343512   0.000013583  -0.000002763  -0.000026036  -0.000003576  -0.000996329  -0.000046140  -0.000254534

   64   13.1  1.5 -1.5   0.000002049   0.000000081  -0.000000414  -0.000003903  -0.000000011  -0.000002951   0.000000462   0.000002549
                         0.000266752   0.000010548   0.000010973   0.000103408  -0.000001065  -0.000296584   0.000141479   0.000780485

   65   14.1  1.5 -1.5   0.000001594  -0.000040319  -0.000336673   0.000035726  -0.000760509   0.000002730   0.000004422  -0.000000802
                        -0.000008233   0.000208211   0.000293881  -0.000031185   0.000402463  -0.000001445  -0.000006716   0.000001217

   66   15.1  1.5 -1.5   0.000025075   0.000000992   0.000086291   0.000813192   0.000002123   0.000591475  -0.000040382  -0.000222772
                         0.000000225   0.000000009   0.000000054   0.000000509   0.000000003   0.000000751   0.000000875   0.000004825

   67   16.1  1.5 -1.5  -0.000020289   0.000513095   0.000052847  -0.000005608   0.000206952  -0.000000743  -0.000709122   0.000128543
                        -0.000003970   0.000100391   0.000059807  -0.000006346   0.000389762  -0.000001399  -0.000599878   0.000108741

   68   17.1  1.5 -1.5   0.000183879   0.000007271   0.000027520   0.000259346   0.000000218   0.000060869   0.000143454   0.000791380
                        -0.000001500  -0.000000059   0.000000003   0.000000032   0.000000001   0.000000172  -0.000000260  -0.000001435

   69    1.1  0.5  0.5  -0.004678102   0.118304845  -0.018067253   0.001917189   0.010931322  -0.000039235  -0.042303836   0.007668470
                        -0.000919073   0.023242397  -0.020705804   0.002197176   0.020708248  -0.000074326  -0.035784933   0.006486778

   70    2.1  0.5  0.5  -0.000234619  -0.000009278   0.000000484   0.000004561   0.000000002   0.000000646  -0.000005776  -0.000031866
                        -0.027039810  -0.001069229   0.006503523   0.061288071  -0.000071225  -0.019844220  -0.003041023  -0.016776090

   71    3.1  0.5  0.5  -0.036256382  -0.001433678  -0.005425145  -0.051125624   0.000141661   0.039468309   0.003002389   0.016562964
                         0.000330311   0.000013063   0.000000477   0.000004495   0.000000001   0.000000294  -0.000005057  -0.000027900

   72    4.1  0.5  0.5  -0.001561620   0.039491919   0.022724497  -0.002411388   0.026565020  -0.000095348   0.004950488  -0.000897381
                        -0.000306569   0.007752816   0.026044505  -0.002763687   0.050270238  -0.000180431   0.004173464  -0.000756529

   73    5.1  0.5  0.5   0.000976926   0.000038634  -0.000000078  -0.000000734  -0.000000026  -0.000007164   0.000013985   0.000077154
                         0.121208163   0.004792908  -0.000846707  -0.007979219  -0.000200482  -0.055856548   0.006429988   0.035471641

   74    6.1  0.5  0.5  -0.065334270  -0.002583499  -0.004378583  -0.041263004  -0.000140196  -0.039060202  -0.006269777  -0.034587819
                         0.000529747   0.000020950  -0.000000038  -0.000000360  -0.000000020  -0.000005518   0.000010563   0.000058278

   75    7.1  0.5  0.5   0.000002136  -0.000054016   0.012093298  -0.001283268  -0.007998543   0.000028709  -0.040870225   0.007408595
                        -0.000005371   0.000135834  -0.010546432   0.001119124   0.004237613  -0.000015210   0.048320846  -0.008759181

   76    8.1  0.5  0.5   0.000000025  -0.000000634  -0.061538447   0.006530092  -0.063445075   0.000227719  -0.006666403   0.001208427
                        -0.000000128   0.000003235   0.053691534  -0.005697424   0.033528649  -0.000120342   0.007904801  -0.001432913

   77    9.1  0.5  0.5  -0.000000092  -0.000000004  -0.000000332  -0.000003132  -0.000000049  -0.000013613   0.000028327   0.000156277
                        -0.000011565  -0.000000457   0.004302503   0.040546043   0.000182968   0.050977087   0.015709586   0.086663424

   78   10.1  0.5  0.5  -0.000005575  -0.000000220  -0.001882566  -0.017740971  -0.000219844  -0.061251014   0.015899598   0.087711638
                         0.000000044   0.000000002   0.000000380   0.000003581   0.000000056   0.000015557  -0.000032375  -0.000178613

   79   11.1  0.5  0.5   0.000000020  -0.000000507  -0.050625470   0.005372072   0.072029658  -0.000258531  -0.018064632   0.003274598
                        -0.000000102   0.000002589   0.044166751  -0.004686711  -0.038053560   0.000136583   0.021342289  -0.003868744

   80   12.1  0.5  0.5  -0.000000257   0.000006510  -0.053630821   0.005690982   0.020285756  -0.000072810   0.043814805  -0.007942365
                        -0.000000051   0.000001279  -0.061477988   0.006523676   0.038375161  -0.000137737   0.037055763  -0.006717143

   81   13.1  0.5  0.5  -0.000000006  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000
                        -0.000000800  -0.000000032   0.000000080   0.000000755  -0.000000013  -0.000003491  -0.000000052  -0.000000286

   82   14.1  0.5  0.5   0.000001211   0.000000048  -0.000000363  -0.000003424  -0.000000007  -0.000001814  -0.000000138  -0.000000761
                        -0.000000010  -0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000   0.000000001

   83   15.1  0.5  0.5   0.000000016  -0.000000415   0.000001726  -0.000000183   0.000002475  -0.000000009   0.000000820  -0.000000149
                         0.000000003  -0.000000081   0.000001980  -0.000000210   0.000004683  -0.000000017   0.000000692  -0.000000125

   84    1.1  0.5 -0.5  -0.120562219  -0.004767365   0.002916024   0.027480101  -0.000084046  -0.023416345   0.010044069   0.055409062
                         0.000998414   0.000039484   0.000000059   0.000000556   0.000000037   0.000010350  -0.000019694  -0.000108652

   85    2.1  0.5 -0.5   0.000206546  -0.005223337   0.046183367  -0.004900702  -0.017544839   0.000062972  -0.010833744   0.001963846
                        -0.001049131   0.026531550  -0.040290498   0.004275386   0.009272092  -0.000033280   0.012808911  -0.002321887

   86    3.1  0.5 -0.5   0.001406615  -0.035571977  -0.033609233   0.003566410   0.018440454  -0.000066187   0.012648480  -0.002292806
                         0.000277559  -0.007019173  -0.038525952   0.004088143   0.034895516  -0.000125248   0.010693387  -0.001938403

   87    4.1  0.5 -0.5  -0.040244385  -0.001591375  -0.003667800  -0.034564708  -0.000204075  -0.056857692  -0.001173724  -0.006474961
                         0.000327544   0.000012953   0.000000017   0.000000163  -0.000000001  -0.000000273   0.000000341   0.000001880

   88    5.1  0.5 -0.5  -0.000922954   0.023340549  -0.006012799   0.000638042  -0.049388558   0.000177267   0.022914523  -0.004153743
                         0.004703362  -0.118943650   0.005245396  -0.000556610   0.026090695  -0.000093645  -0.027077073   0.004908295

   89    6.1  0.5 -0.5   0.002535208  -0.064113057  -0.027128696   0.002878735  -0.018254399   0.000065519  -0.026413337   0.004787979
                         0.000497619  -0.012584252  -0.031091307   0.003299223  -0.034532251   0.000123944  -0.022330613   0.004047897

   90    7.1  0.5 -0.5   0.000028007   0.000001107  -0.000000430  -0.000004055  -0.000000034  -0.000009617   0.000021870   0.000120655
                         0.000143473   0.000005673  -0.001702709  -0.016046030   0.000032489   0.009051737   0.011472142   0.063287162

   91    8.1  0.5 -0.5   0.000000026   0.000000001   0.000000228   0.000002145  -0.000000006  -0.000001637   0.000000867   0.000004786
                         0.000003296   0.000000130   0.008666184   0.081668606   0.000257561   0.071759653   0.001874443   0.010340541

   92    9.1  0.5 -0.5   0.000000088  -0.000002226   0.030549256  -0.003241704   0.045064706  -0.000161747   0.055959546  -0.010143855
                        -0.000000449   0.000011349  -0.026659418   0.002828938  -0.023829306   0.000085529  -0.066174790   0.011995587

   93   10.1  0.5 -0.5   0.000000216  -0.000005471  -0.011661130   0.001237409  -0.028603651   0.000102665   0.066962015  -0.012138289
                         0.000000042  -0.000001072  -0.013370120   0.001418757  -0.054161962   0.000194399   0.056652025  -0.010269381

   94   11.1  0.5 -0.5   0.000000020   0.000000001   0.000000455   0.000004285  -0.000000031  -0.000008540   0.000011478   0.000063327
                         0.000002638   0.000000104   0.007129125   0.067183630  -0.000292392  -0.081463765   0.005068534   0.027961048

   95   12.1  0.5 -0.5  -0.000006634  -0.000000262   0.008657114   0.081583135  -0.000155797  -0.043406968  -0.010401961  -0.057383406
                         0.000000055   0.000000002  -0.000000864  -0.000008142  -0.000000022  -0.000006063   0.000019385   0.000106948

   96   13.1  0.5 -0.5   0.000000006  -0.000000154   0.000000569  -0.000000060  -0.000003086   0.000000011  -0.000000184   0.000000033
                        -0.000000031   0.000000785  -0.000000496   0.000000053   0.000001631  -0.000000006   0.000000218  -0.000000040

   97   14.1  0.5 -0.5  -0.000000047   0.000001189  -0.000002250   0.000000239  -0.000000847   0.000000003  -0.000000581   0.000000105
                        -0.000000009   0.000000233  -0.000002581   0.000000274  -0.000001604   0.000000006  -0.000000491   0.000000089

   98   15.1  0.5 -0.5   0.000000422   0.000000017  -0.000000279  -0.000002627  -0.000000019  -0.000005296  -0.000000194  -0.000001073
                        -0.000000003  -0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000001


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.101482604  -0.000378822  -0.013791195   0.349560472  -0.000000000   0.014616937  -0.066484168  -0.003199250
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000014746   0.000000055  -0.000000169   0.000004275   0.000000001   0.000005819   0.000001257   0.000000060
                         0.088200180   0.000329241   0.013976119  -0.354247668  -0.000000000  -0.014958577  -0.088387537  -0.004253251

    3    3.1  1.5  1.5  -0.000230733   0.061813509  -0.007866854  -0.000310368   0.003244946   0.000000000   0.000073380  -0.001524926
                        -0.001179668   0.316020927  -0.245269603  -0.009676612  -0.020456831   0.000000001   0.000436329  -0.009067433

    4    4.1  1.5  1.5  -0.001353564   0.362605921   0.088601190   0.003495579  -0.059072751   0.000000002  -0.000500322   0.010397269
                         0.000263962  -0.070714866  -0.002546745  -0.000100479  -0.009461337  -0.000000002   0.000084313  -0.001752139

    5    5.1  1.5  1.5  -0.000276813   0.074157733   0.002265146   0.000089369  -0.008496858  -0.000000001  -0.000081804   0.001699984
                        -0.001423905   0.381449460   0.074638009   0.002944690   0.052975169  -0.000000002  -0.000484667   0.010071952

    6    6.1  1.5  1.5  -0.001259799   0.337487179  -0.240618656  -0.009493118   0.079961100  -0.000000002   0.000400356  -0.008319869
                         0.000245338  -0.065726040   0.007786367   0.000307192   0.012827899   0.000000002  -0.000067813   0.001409253

    7    7.1  1.5  1.5   0.150467738   0.000561677  -0.002750030   0.069704019   0.000000002   0.072241957  -0.007251133  -0.000348928
                         0.000171932   0.000000638  -0.000001965   0.000049834   0.000000002   0.000016069   0.000003018   0.000000145

    8    8.1  1.5  1.5  -0.000001627   0.000435903   0.000293176   0.000011567  -0.000000164  -0.000000000   0.000000002  -0.000000031
                        -0.000008420   0.002255631   0.009220477   0.000363775   0.000001022  -0.000000000   0.000000009  -0.000000186

    9    9.1  1.5  1.5  -0.015987724  -0.000059680   0.000156849  -0.003975583   0.000000000   0.000004697   0.000000376   0.000000018
                        -0.000017265  -0.000000064   0.000000197  -0.000005004   0.000000000   0.000000001   0.000000000   0.000000000

   10   10.1  1.5  1.5   0.000008418  -0.002255075  -0.009220518  -0.000363777   0.000001017  -0.000000000  -0.000000022   0.000000452
                        -0.000001627   0.000435794   0.000293176   0.000011567   0.000000163   0.000000000   0.000000004  -0.000000077

   11   11.1  1.5  1.5  -0.001086747  -0.000004057  -0.000085371   0.002163873  -0.000000000  -0.000565078  -0.002522116  -0.000121365
                        -0.000000461  -0.000000002   0.000000005  -0.000000138  -0.000000000  -0.000000256  -0.000000054  -0.000000003

   12   12.1  1.5  1.5  -0.000004642   0.001243432   0.001357243   0.000053547  -0.003790354   0.000000000  -0.000026767   0.000556253
                         0.000000900  -0.000241022  -0.000046727  -0.000001844  -0.000612653  -0.000000000   0.000004590  -0.000095396

   13   13.1  1.5  1.5   0.000012562  -0.003365126   0.001266583   0.000049970  -0.001913838   0.000000000  -0.000005659   0.000117595
                        -0.000002440   0.000653729  -0.000033033  -0.000001303  -0.000297045  -0.000000000   0.000000826  -0.000017174

   14   14.1  1.5  1.5  -0.000000996  -0.000000004   0.000000068  -0.000001720  -0.000000000  -0.000003970   0.000001554   0.000000075
                        -0.000638803  -0.000002385  -0.000101225   0.002565719   0.000000000   0.000638875   0.003775367   0.000181672

   15   15.1  1.5  1.5  -0.000000121   0.000032376  -0.000053129  -0.000002096   0.000324000   0.000000000   0.000004623  -0.000096073
                        -0.000000984   0.000263700  -0.001759826  -0.000069430  -0.002024862   0.000000000   0.000027182  -0.000564883

   16   16.1  1.5  1.5  -0.000738869  -0.000002758   0.000055561  -0.001408279  -0.000000000  -0.003096478   0.001341379   0.000064548
                        -0.000000388  -0.000000001   0.000000135  -0.000003418  -0.000000000  -0.000001405  -0.000004656  -0.000000224

   17   17.1  1.5  1.5   0.000002598  -0.000696128   0.000019904   0.000000785   0.000214205   0.000000000   0.000001018  -0.000021154
                         0.000013354  -0.003577278   0.000591215   0.000023325  -0.001334784   0.000000000   0.000006032  -0.000125362

   18    1.1  1.5  0.5   0.000259047  -0.069398524   0.001604731   0.000063309  -0.000737142  -0.000000000  -0.000014211   0.000295315
                         0.001331855  -0.356790133   0.047023456   0.001855215   0.004594265  -0.000000000  -0.000084303   0.001751915

   19    2.1  1.5  0.5   0.001299224  -0.348048776   0.088098925   0.003475763   0.087709388  -0.000000003  -0.000051519   0.001070629
                        -0.000252747   0.067710834  -0.002911181  -0.000114852   0.014068933   0.000000002   0.000008543  -0.000177531

   20    3.1  1.5  0.5   0.222897261   0.000832048   0.009109580  -0.230897264   0.000000001   0.065166220  -0.070856950  -0.003409670
                         0.000096428   0.000000356   0.000006518  -0.000165184   0.000000002  -0.000010932  -0.000048040  -0.000002312

   21    4.1  1.5  0.5   0.000042417   0.000000154  -0.000008508   0.000215674   0.000000001  -0.000035569   0.000049970   0.000002404
                        -0.096732328  -0.000361089   0.013276935  -0.336525693  -0.000000001  -0.026579645  -0.062592965  -0.003012003

   22    5.1  1.5  0.5  -0.230904053  -0.000861936  -0.009434602   0.239135477   0.000000001   0.035731711  -0.084816684  -0.004081419
                        -0.000162653  -0.000000603   0.000001859  -0.000047139   0.000000001   0.000005868   0.000000378   0.000000018

   23    6.1  1.5  0.5  -0.000184633  -0.000000685   0.000001268  -0.000032176   0.000000002   0.000012130   0.000007785   0.000000374
                         0.083272899   0.000310847  -0.011424958   0.289584296  -0.000000001  -0.060893618  -0.090832277  -0.004370892

   24    7.1  1.5  0.5  -0.000061867   0.016573268   0.015307598   0.000603930  -0.002603433  -0.000000001   0.000076293  -0.001585463
                        -0.000320880   0.085960573   0.481133242   0.018982130   0.016227595  -0.000000000   0.000451355  -0.009379690

   25    8.1  1.5  0.5  -0.006581087  -0.000024566   0.000510616  -0.012942409  -0.000000000  -0.000004530  -0.000000435  -0.000000021
                        -0.000010413  -0.000000039   0.000000119  -0.000003018  -0.000000000  -0.000000001  -0.000000000  -0.000000000

   26    9.1  1.5  0.5  -0.000000940   0.000251896   0.000169408   0.000006684   0.000000055   0.000000000   0.000000008  -0.000000156
                        -0.000004866   0.001303465   0.005327960   0.000210204  -0.000000342  -0.000000000   0.000000044  -0.000000925

   27   10.1  1.5  0.5  -0.000009526  -0.000000035   0.000000109  -0.000002761  -0.000000000  -0.000000001  -0.000000000  -0.000000000
                         0.011882636   0.000044356   0.000329584  -0.008353849   0.000000000   0.000005108   0.000000017   0.000000001

   28   11.1  1.5  0.5   0.000001908  -0.000511192  -0.000030335  -0.000001197   0.000012028  -0.000000000  -0.000001774   0.000036857
                         0.000009818  -0.002630135  -0.000976462  -0.000038524  -0.000074957  -0.000000000  -0.000010502   0.000218241

   29   12.1  1.5  0.5   0.000006869   0.000000026   0.000000186  -0.000004707  -0.000000000   0.000002903  -0.000000531  -0.000000026
                        -0.000897097  -0.000003349   0.000123099  -0.003120147  -0.000000000   0.000158762  -0.000638634  -0.000030731

   30   13.1  1.5  0.5  -0.000010431  -0.000000039  -0.000000450   0.000011400  -0.000000000  -0.000007204   0.000001307   0.000000063
                        -0.000222430  -0.000000830   0.000030522  -0.000773628   0.000000000   0.002833316   0.004667883   0.000224621

   31   14.1  1.5  0.5  -0.000009410   0.002520800  -0.000638185  -0.000025178  -0.003746435   0.000000000   0.000002193  -0.000045577
                         0.000001829  -0.000489936   0.000017044   0.000000672  -0.000601826  -0.000000000  -0.000000384   0.000007983

   32   15.1  1.5  0.5   0.002285067   0.000008530   0.000093375  -0.002366753   0.000000000   0.001379708  -0.000360863  -0.000017365
                         0.000002527   0.000000009  -0.000000144   0.000003658   0.000000000   0.000013373   0.000023626   0.000001137

   33   16.1  1.5  0.5  -0.000000269   0.000072052  -0.000106465  -0.000004200   0.000119450   0.000000000  -0.000002803   0.000058251
                        -0.000001424   0.000381518  -0.003361246  -0.000132611  -0.000715766   0.000000000  -0.000016563   0.000344208

   34   17.1  1.5  0.5   0.000423811   0.000001582   0.000017319  -0.000438974  -0.000000000  -0.002857779   0.004705380   0.000226425
                         0.000000336   0.000000001  -0.000000009   0.000000218  -0.000000000  -0.000000335   0.000000264   0.000000013

   35    1.1  1.5 -0.5   0.363476560   0.001356813  -0.001856289   0.047050701  -0.000000000  -0.004653026   0.001776630   0.000085492
                         0.000379857   0.000001409  -0.000004340   0.000110080  -0.000000000  -0.000000864  -0.000000665  -0.000000032

   36    2.1  1.5 -0.5  -0.000382895  -0.000001420   0.000004376  -0.000110985   0.000000003   0.000020334   0.000003307   0.000000159
                         0.354573773   0.001323580  -0.003477658   0.088146941  -0.000000002  -0.088830576   0.001085243   0.000052223

   37    3.1  1.5 -0.5  -0.000158359   0.042423710   0.007500244   0.000295908  -0.010346509  -0.000000001  -0.000570299   0.011851484
                        -0.000816839   0.218822821   0.230775476   0.009104775   0.064339615  -0.000000002  -0.003361639   0.069858800

   38    4.1  1.5 -0.5   0.000354489  -0.094964006   0.336348987   0.013269963  -0.026237559   0.000000001  -0.002969513   0.061709973
                        -0.000068723   0.018411481  -0.010906312  -0.000430285  -0.004250795  -0.000000001   0.000504143  -0.010476684

   39    5.1  1.5 -0.5   0.000164277  -0.044009250  -0.007549740  -0.000297861  -0.005661448  -0.000000000  -0.000679909   0.014129306
                         0.000846137  -0.226671335  -0.239016275  -0.009429899   0.035280352  -0.000000001  -0.004024389   0.083631529

   40    6.1  1.5 -0.5  -0.000305060   0.081722495  -0.289437112  -0.011419151  -0.060124753   0.000000002  -0.004309752   0.089561700
                         0.000059704  -0.015995113   0.009231672   0.000364216  -0.009646081  -0.000000002   0.000728519  -0.015139497

   41    7.1  1.5 -0.5  -0.087543649  -0.000326790  -0.018991735   0.481376691  -0.000000000  -0.016435105  -0.009512743  -0.000457758
                         0.000052560   0.000000195  -0.000000601   0.000015233  -0.000000001  -0.000003305  -0.000000738  -0.000000035

   42    8.1  1.5 -0.5   0.000004703  -0.001259997   0.000414171   0.000016340   0.000000717   0.000000000  -0.000000003   0.000000073
                         0.000024112  -0.006459351   0.012935781   0.000510355  -0.000004473   0.000000000  -0.000000021   0.000000429

   43    9.1  1.5 -0.5  -0.001327582  -0.000004956  -0.000210310   0.005330653  -0.000000000   0.000000346  -0.000000938  -0.000000045
                         0.000000221   0.000000001  -0.000000003   0.000000064   0.000000000   0.000000000  -0.000000000  -0.000000000

   44   10.1  1.5 -0.5  -0.000043543   0.011664595   0.008349720   0.000329421   0.000005044  -0.000000000   0.000000001  -0.000000017
                         0.000008458  -0.002265910  -0.000262626  -0.000010361   0.000000809   0.000000000  -0.000000000   0.000000003

   45   11.1  1.5 -0.5   0.002679351   0.000010002   0.000038543  -0.000976933   0.000000000   0.000075916   0.000221332   0.000010651
                         0.000002417   0.000000009  -0.000000028   0.000000700  -0.000000000   0.000000012  -0.000000015  -0.000000001

   46   12.1  1.5 -0.5   0.000003283  -0.000879468   0.003118722   0.000123043   0.000156292   0.000000000  -0.000030306   0.000629798
                        -0.000000661   0.000177106  -0.000094416  -0.000003725   0.000028047   0.000000000   0.000005094  -0.000105867

   47   13.1  1.5 -0.5   0.000000823  -0.000220363   0.000772876   0.000030492   0.002798594  -0.000000000   0.000221492  -0.004602872
                        -0.000000119   0.000031999  -0.000035971  -0.000001419   0.000442267   0.000000000  -0.000037358   0.000776338

   48   14.1  1.5 -0.5   0.000002311   0.000000009   0.000000128  -0.000003238  -0.000000000   0.000000003   0.000000279   0.000000013
                        -0.002567969  -0.000009586   0.000025187  -0.000638405   0.000000000   0.003794466  -0.000046270  -0.000002227

   49   15.1  1.5 -0.5  -0.000001629   0.000436424   0.000071531   0.000002822  -0.000205626  -0.000000000  -0.000001772   0.000036821
                        -0.000008373   0.002243005   0.002365675   0.000093333   0.001364365  -0.000000000  -0.000017312   0.000359756

   50   16.1  1.5 -0.5  -0.000388258  -0.000001449   0.000132678  -0.003362932   0.000000000   0.000725651   0.000349102   0.000016799
                         0.000001711   0.000000006  -0.000000015   0.000000369   0.000000000  -0.000004414   0.000000095   0.000000005

   51   17.1  1.5 -0.5  -0.000000302   0.000080814   0.000013727   0.000000542   0.000452929   0.000000000   0.000037733  -0.000784133
                        -0.000001553   0.000416035   0.000438759   0.000017310  -0.002821659   0.000000000   0.000223259  -0.004639583

   52    1.1  1.5 -1.5  -0.000071940   0.019271932   0.011104836   0.000438119   0.002318325   0.000000000   0.000532966  -0.011075650
                        -0.000371929   0.099635894   0.349384039   0.013784234  -0.014431917  -0.000000000   0.003154544  -0.065555126

   53    2.1  1.5 -1.5   0.000323260  -0.086597976  -0.354068733  -0.013969059   0.014770155  -0.000000000   0.004193806  -0.087152211
                        -0.000062470   0.016735071   0.011258011   0.000444162   0.002366766   0.000000001  -0.000708612   0.014725790

   54    3.1  1.5 -1.5   0.322008820   0.001202019  -0.009681588   0.245395722  -0.000000001  -0.020712556   0.009194764   0.000442457
                         0.000675096   0.000002511  -0.000002805   0.000071160  -0.000000000  -0.000040693  -0.000006934  -0.000000334

   55    4.1  1.5 -1.5  -0.000567805  -0.000002112   0.000010619  -0.000269223   0.000000002   0.000027682  -0.000004434  -0.000000214
                         0.369436495   0.001379060   0.003497007  -0.088637375  -0.000000001  -0.059825631  -0.010543869  -0.000507376

   56    5.1  1.5 -1.5   0.388590946   0.001450562   0.002946043  -0.074672296   0.000000002   0.053652259  -0.010214409  -0.000491523
                         0.000369562   0.000001371  -0.000004223   0.000107097   0.000000002   0.000012843   0.000001666   0.000000080

   57    6.1  1.5 -1.5  -0.000439907  -0.000001632   0.000005460  -0.000138465  -0.000000003  -0.000016739  -0.000003547  -0.000000170
                         0.343827449   0.001283465  -0.009498086   0.240744566   0.000000002   0.080983531   0.008438377   0.000406059

   58    7.1  1.5 -1.5   0.000107291  -0.028743198   0.002264166   0.000089327   0.011442099   0.000000002   0.000057986  -0.001204996
                         0.000551335  -0.147696981   0.069667255   0.002748579  -0.071330070   0.000000002   0.000344076  -0.007150309

   59    8.1  1.5 -1.5   0.002297364   0.000008576   0.000363959  -0.009225136   0.000000000   0.000001035   0.000000189   0.000000009
                        -0.000000383  -0.000000001   0.000000004  -0.000000112   0.000000000   0.000000000  -0.000000000  -0.000000000

   60    9.1  1.5 -1.5  -0.000011396   0.003053081  -0.000131298  -0.000005180   0.000000744   0.000000000  -0.000000003   0.000000063
                        -0.000058582   0.015693512  -0.003973417  -0.000156763  -0.000004638   0.000000000  -0.000000018   0.000000371

   61   10.1  1.5 -1.5  -0.000000384  -0.000000001   0.000000004  -0.000000110  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.002296797  -0.000008574  -0.000363961   0.009225178   0.000000000   0.000001031  -0.000000458  -0.000000022

   62   11.1  1.5 -1.5  -0.000000772   0.000206830   0.000068604   0.000002707  -0.000089372  -0.000000000   0.000020221  -0.000420214
                        -0.000003983   0.001066883   0.002162785   0.000085328   0.000557966  -0.000000000   0.000119669  -0.002486863

   63   12.1  1.5 -1.5  -0.000000504  -0.000000002  -0.000000141   0.000003586   0.000000000  -0.000003727   0.000001396   0.000000067
                         0.001266576   0.000004728   0.000053579  -0.001358042  -0.000000000  -0.003839546  -0.000564372  -0.000027158

   64   13.1  1.5 -1.5   0.000002783   0.000000010   0.000000285  -0.000007221   0.000000000   0.000010260  -0.000002656  -0.000000128
                        -0.003428035  -0.000012796   0.000049987  -0.001266993  -0.000000000  -0.001936725  -0.000118813  -0.000005717

   65   14.1  1.5 -1.5  -0.000002342   0.000627367   0.002564369   0.000101172  -0.000631418   0.000000000  -0.000179146   0.003722870
                         0.000000449  -0.000120333  -0.000083227  -0.000003284  -0.000097409  -0.000000000   0.000030191  -0.000627409

   66   15.1  1.5 -1.5   0.000265050   0.000000989  -0.000069462   0.001760626  -0.000000000  -0.002050620   0.000572994   0.000027573
                        -0.000018290  -0.000000068   0.000000111  -0.000002804  -0.000000000  -0.000001256   0.000000626   0.000000030

   67   16.1  1.5 -1.5  -0.000000525   0.000140695  -0.000048154  -0.000001900  -0.000489731  -0.000000000  -0.000010532   0.000218871
                        -0.000002708   0.000725349  -0.001407459  -0.000055528   0.003057506  -0.000000000  -0.000063683   0.001323411

   68   17.1  1.5 -1.5  -0.003644379  -0.000013604   0.000023338  -0.000591549  -0.000000000  -0.001351863   0.000127134   0.000006118
                        -0.000004121  -0.000000015   0.000000044  -0.000001112  -0.000000000  -0.000000210  -0.000000026  -0.000000001

   69    1.1  0.5  0.5   0.000000013  -0.000003350   0.000000154   0.000000006  -0.115947725  -0.000000020   0.000082249  -0.001709318
                         0.000000064  -0.000017219   0.000004681   0.000000185   0.722850171  -0.000000022   0.000479528  -0.009965171

   70    2.1  0.5  0.5   0.000000009   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000009353  -0.000001610  -0.000000076
                        -0.000011987  -0.000000045  -0.000000334   0.000008463  -0.000000004  -0.143283081   0.683462187   0.032888527

   71    3.1  0.5  0.5   0.000006033   0.000000023  -0.000000497   0.000012596   0.000000004   0.142845649   0.685574603   0.032990176
                         0.000000013   0.000000000   0.000000000  -0.000000000   0.000000008   0.000057663   0.000009105   0.000000436

   72    4.1  0.5  0.5  -0.000000005   0.000001218   0.000000056   0.000000002  -0.017044917  -0.000000004   0.000959138  -0.019932050
                        -0.000000023   0.000006243   0.000001860   0.000000073   0.106227492   0.000000000   0.005675477  -0.117943033

   73    5.1  0.5  0.5  -0.000000010  -0.000000000   0.000000000  -0.000000004   0.000000015   0.000099017   0.000018471   0.000000885
                         0.000013888   0.000000052   0.000000670  -0.000016992  -0.000000010  -0.472190266   0.073380373   0.003531098

   74    6.1  0.5  0.5  -0.000005638  -0.000000021   0.000001026  -0.000026018   0.000000008   0.223042870   0.059568279   0.002866453
                        -0.000000012  -0.000000000   0.000000000  -0.000000005   0.000000008   0.000058811   0.000010114   0.000000485

   75    7.1  0.5  0.5   0.000000022  -0.000005838  -0.000005304  -0.000000209  -0.314620133   0.000000010  -0.000162090   0.003368446
                        -0.000000004   0.000001134   0.000000167   0.000000007  -0.050464299  -0.000000007   0.000027761  -0.000576921

   76    8.1  0.5  0.5   0.000343440  -0.092004136  -0.128639724  -0.005075218  -0.000004160   0.000000000  -0.000000122   0.000002537
                        -0.000066644   0.017853593   0.004072230   0.000160662  -0.000000667  -0.000000000   0.000000021  -0.000000429

   77    9.1  0.5  0.5  -0.000077885  -0.000000289   0.000000890  -0.000022574   0.000000000   0.000000003   0.000000000   0.000000000
                         0.110571671   0.000412750   0.004518127  -0.114519339  -0.000000000  -0.000013926  -0.000000347  -0.000000017

   78   10.1  0.5  0.5   0.043979206   0.000164169  -0.006034338   0.152950205  -0.000000000  -0.000015322  -0.000000622  -0.000000030
                         0.000089015   0.000000330  -0.000001017   0.000025801  -0.000000000  -0.000000004  -0.000000000  -0.000000000

   79   11.1  0.5  0.5   0.000471868  -0.126408645   0.093599269   0.003692768  -0.000011146   0.000000000   0.000000061  -0.000001273
                        -0.000091864   0.024610414  -0.003020511  -0.000119167  -0.000001788  -0.000000000  -0.000000010   0.000000215

   80   12.1  0.5  0.5  -0.000110174   0.029515630  -0.001268898  -0.000050061  -0.000001151  -0.000000000   0.000000004  -0.000000086
                        -0.000566341   0.151716918  -0.038399612  -0.001514978   0.000007179  -0.000000000   0.000000024  -0.000000506

   81   13.1  0.5  0.5  -0.000025804  -0.000000096   0.000000295  -0.000007479   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.020018140   0.000074725  -0.000761318   0.019296862  -0.000000000   0.000000300  -0.000000145  -0.000000007

   82   14.1  0.5  0.5  -0.026733359  -0.000099792  -0.000302781   0.007674490  -0.000000000  -0.000000566  -0.000000046  -0.000000002
                        -0.000024682  -0.000000092   0.000000282  -0.000007154  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   83   15.1  0.5  0.5   0.000004756  -0.001273943  -0.000857009  -0.000033812   0.000000036  -0.000000000  -0.000000002   0.000000037
                         0.000024608  -0.006592193  -0.026953274  -0.001063386  -0.000000224  -0.000000000  -0.000000010   0.000000217

   84    1.1  0.5 -0.5  -0.000017541  -0.000000065   0.000000185  -0.000004683   0.000000019   0.732090307   0.010110676   0.000486529
                        -0.000000019  -0.000000000   0.000000000  -0.000000005   0.000000023   0.000167880   0.000025327   0.000001215

   85    2.1  0.5 -0.5  -0.000000044   0.000011768   0.000008459   0.000000334   0.141470895  -0.000000004  -0.032428934   0.673911300
                         0.000000009  -0.000002285  -0.000000268  -0.000000011   0.022716237  -0.000000001   0.005479001  -0.113860097

   86    3.1  0.5 -0.5   0.000000004  -0.000001158   0.000000400   0.000000016   0.022599159   0.000000007  -0.005496289   0.114219397
                         0.000000022  -0.000005921   0.000012589   0.000000497  -0.141046661   0.000000005  -0.032529103   0.675992948

   87    4.1  0.5 -0.5   0.000006360   0.000000024   0.000000073  -0.000001861  -0.000000001   0.107586286   0.119615408   0.005755952
                         0.000000010   0.000000000  -0.000000000   0.000000003   0.000000004   0.000019092   0.000005298   0.000000253

   88    5.1  0.5 -0.5   0.000000051  -0.000013633  -0.000016983  -0.000000670   0.466229010  -0.000000012  -0.003481902   0.072358042
                        -0.000000010   0.000002647   0.000000535   0.000000021   0.074794165   0.000000013   0.000587376  -0.012206282

   89    6.1  0.5 -0.5  -0.000000004   0.000001083  -0.000000832  -0.000000033   0.035317739   0.000000007  -0.000478003   0.009933499
                        -0.000000021   0.000005534  -0.000026005  -0.000001026  -0.220228933   0.000000009  -0.002826317   0.058734195

   90    7.1  0.5 -0.5   0.000000004   0.000000000  -0.000000000   0.000000001   0.000000009   0.000074929   0.000007707   0.000000370
                        -0.000005947  -0.000000022  -0.000000209   0.000005306  -0.000000009  -0.318641598  -0.003417486  -0.000164449

   91    8.1  0.5 -0.5   0.000056771   0.000000211  -0.000000649   0.000016452   0.000000000   0.000000001   0.000000000   0.000000000
                        -0.093720375  -0.000349847  -0.005077760   0.128704162  -0.000000000  -0.000004213  -0.000002573  -0.000000124

   92    9.1  0.5 -0.5   0.000405185  -0.108544775  -0.114462255  -0.004515875   0.000013750  -0.000000000   0.000000016  -0.000000342
                        -0.000078667   0.021074448   0.003615487   0.000142642   0.000002205   0.000000000  -0.000000003   0.000000058

   93   10.1  0.5 -0.5   0.000031500  -0.008439214   0.004884709   0.000192716  -0.000002426  -0.000000000   0.000000005  -0.000000104
                         0.000161119  -0.043161999   0.152872187   0.006031260   0.000015129  -0.000000000   0.000000030  -0.000000613

   94   11.1  0.5 -0.5   0.000157089   0.000000583  -0.000001795   0.000045526   0.000000000   0.000000003   0.000000000   0.000000000
                        -0.128781960  -0.000480727   0.003694690  -0.093647983  -0.000000000  -0.000011289   0.000001291   0.000000062

   95   12.1  0.5 -0.5   0.154561210   0.000576958  -0.001515804   0.038420541   0.000000000   0.000007271   0.000000513   0.000000025
                         0.000166906   0.000000619  -0.000001908   0.000048379   0.000000000   0.000000002   0.000000001   0.000000000

   96   13.1  0.5 -0.5   0.000073347  -0.019648964   0.019286885   0.000760925  -0.000000296  -0.000000000   0.000000007  -0.000000143
                        -0.000014285   0.003826855  -0.000620498  -0.000024480  -0.000000048   0.000000000  -0.000000001   0.000000024

   97   14.1  0.5 -0.5  -0.000019041   0.005100999   0.000236653   0.000009337  -0.000000090  -0.000000000   0.000000000  -0.000000008
                        -0.000097959   0.026242197   0.007670844   0.000302637   0.000000559  -0.000000000   0.000000002  -0.000000046

   98   15.1  0.5 -0.5  -0.006714159  -0.000025063  -0.001063924   0.026966895   0.000000000  -0.000000226  -0.000000220  -0.000000011
                         0.000001122   0.000000004  -0.000000013   0.000000325   0.000000000  -0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.068980322   0.000102373  -0.035817891   0.000000000   0.000012415  -0.000300989  -0.001500395   0.000031040
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000057   0.000000001   0.000000144  -0.000000000  -0.000000001   0.000000042   0.000000017  -0.000000000
                        -0.047993136  -0.000071226   0.016602560  -0.000000000   0.000019818  -0.000480464   0.000694451  -0.000014367

    3    3.1  1.5  1.5  -0.000122363   0.082450503   0.000000001  -0.022640410   0.000759338   0.000031325  -0.000028999  -0.001401718
                        -0.000011221   0.007561081   0.000000001  -0.027044596  -0.008445421  -0.000348355  -0.000030098  -0.001454822

    4    4.1  1.5  1.5   0.000003389  -0.002283806   0.000000000  -0.057591049  -0.007574630  -0.000312437  -0.000033019  -0.001596029
                        -0.000036127   0.024342716  -0.000000001   0.048110962  -0.000680112  -0.000028056   0.000031786   0.001536449

    5    5.1  1.5  1.5   0.000113806  -0.076684422  -0.000000000  -0.009016637   0.000142941   0.000005897  -0.000123621  -0.005975464
                         0.000010414  -0.007016875  -0.000000000  -0.010797305  -0.001578321  -0.000065102  -0.000128575  -0.006214902

    6    6.1  1.5  1.5  -0.000003921   0.002642152  -0.000000000   0.013976628  -0.002943892  -0.000121429  -0.000117985  -0.005703031
                         0.000042934  -0.028929849   0.000000000  -0.011665471  -0.000265971  -0.000010972   0.000113445   0.005483569

    7    7.1  1.5  1.5   0.025227029   0.000037438   0.108470066   0.000000001  -0.000375335   0.009099502   0.009335322  -0.000193131
                        -0.000003979  -0.000000005  -0.000006719   0.000000000  -0.000000017   0.000000495   0.000000196  -0.000000004

    8    8.1  1.5  1.5  -0.000000001   0.000000345  -0.000000000  -0.000002052   0.015156738   0.000625252   0.002341268   0.113169439
                        -0.000000000   0.000000032   0.000000000  -0.000002458  -0.167366577  -0.006903502   0.002435078   0.117703933

    9    9.1  1.5  1.5  -0.000002700  -0.000000004  -0.000002645   0.000000000  -0.005884186   0.142654356   0.147996716  -0.003061784
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000262   0.000007743   0.000003062  -0.000000063

   10   10.1  1.5  1.5  -0.000000000   0.000000083  -0.000000000  -0.000001640  -0.161529894  -0.006662752   0.002309226   0.111620604
                         0.000000001  -0.000000912   0.000000000   0.000001369  -0.014628369  -0.000603455  -0.002220275  -0.107320973

   11   11.1  1.5  1.5   0.002336039   0.000003467  -0.003140074  -0.000000000  -0.000144736   0.003508932   0.004662493  -0.000096458
                         0.000000060   0.000000000   0.000000108  -0.000000000  -0.000000006   0.000000177   0.000000069  -0.000000001

   12   12.1  1.5  1.5   0.000000186  -0.000125358   0.000000000  -0.002466782   0.005215123   0.000215112  -0.000022775  -0.001100890
                        -0.000002206   0.001486185  -0.000000000   0.002056965   0.000484649   0.000019993   0.000021683   0.001048061

   13   13.1  1.5  1.5   0.000000120  -0.000080794  -0.000000000   0.000578489  -0.005783974  -0.000238576  -0.000115332  -0.005574787
                        -0.000000938   0.000632308   0.000000000  -0.000477602  -0.000550829  -0.000022723   0.000111342   0.005381928

   14   14.1  1.5  1.5  -0.000002515  -0.000000004  -0.000004498   0.000000000  -0.000000398   0.000009661   0.000009380  -0.000000194
                         0.002049879   0.000003042  -0.000708977   0.000000000   0.000019061  -0.000462101   0.000665639  -0.000013771

   15   15.1  1.5  1.5  -0.000007077   0.004768842   0.000000000  -0.000554131  -0.000556935  -0.000022975  -0.000046680  -0.002256373
                        -0.000000647   0.000436170   0.000000000  -0.000680552   0.005716225   0.000235782  -0.000047552  -0.002298534

   16   16.1  1.5  1.5  -0.002094033  -0.000003108  -0.003734484  -0.000000000  -0.000330069   0.008002091   0.007787535  -0.000161110
                        -0.000002305  -0.000000003   0.000001118  -0.000000000  -0.000000038   0.000000996  -0.000000625   0.000000013

   17   17.1  1.5  1.5  -0.000000923   0.000621856  -0.000000000   0.000874039   0.000535969   0.000022110  -0.000112872  -0.005455888
                        -0.000000084   0.000056810  -0.000000000   0.001046580  -0.005925555  -0.000244416  -0.000117384  -0.005673940

   18    1.1  1.5  0.5  -0.000042648   0.028737186   0.000000001  -0.063190916   0.001011850   0.000041741   0.000058329   0.002819418
                        -0.000003906   0.002632588   0.000000001  -0.075694257  -0.011173209  -0.000460870   0.000060666   0.002932387

   19    2.1  1.5  0.5   0.000001048  -0.000705468   0.000000000  -0.039748911   0.004444236   0.000183315  -0.000165209  -0.007985696
                        -0.000011481   0.007735996  -0.000000000   0.033184154   0.000402476   0.000016603   0.000158845   0.007678070

   20    3.1  1.5  0.5   0.032615537   0.000048404  -0.048074834  -0.000000000   0.000072867  -0.001766567   0.012146849  -0.000251296
                         0.000055995   0.000000083   0.000005816  -0.000000000  -0.000000048   0.000001148  -0.000008046   0.000000166

   21    4.1  1.5  0.5  -0.000021907  -0.000000032   0.000035667  -0.000000000  -0.000000050   0.000001196  -0.000008114   0.000000168
                         0.081924770   0.000121583   0.001892019   0.000000001  -0.000021410   0.000519065  -0.011834914   0.000244843

   22    5.1  1.5  0.5  -0.059032991  -0.000087610  -0.013695216  -0.000000001   0.000495259  -0.012006908   0.000732987  -0.000015164
                         0.000000170  -0.000000000   0.000002020  -0.000000000   0.000000022  -0.000000644   0.000000016  -0.000000000

   23    6.1  1.5  0.5  -0.000001967  -0.000000002   0.000006105  -0.000000000   0.000000017  -0.000000532  -0.000000842   0.000000017
                        -0.004627439  -0.000006868   0.038304005   0.000000001  -0.000504573   0.012232703  -0.002016032   0.000041708

   24    7.1  1.5  0.5  -0.000082549   0.055622908   0.000000000   0.006924816   0.000048152   0.000001986  -0.000003912  -0.000189107
                        -0.000007554   0.005090380   0.000000000   0.008292748  -0.000531551  -0.000021925  -0.000004070  -0.000196723

   25    8.1  1.5  0.5   0.000003909   0.000000006   0.000000118  -0.000000000   0.004887349  -0.118487371  -0.135458186   0.002802383
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000212  -0.000006259  -0.000002475   0.000000051

   26    9.1  1.5  0.5   0.000000003  -0.000002303  -0.000000000  -0.000001476   0.000913496   0.000037686   0.000209346   0.010119168
                         0.000000000  -0.000000211  -0.000000000  -0.000001768  -0.010091037  -0.000416234   0.000217752   0.010525535

   27   10.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000242  -0.000007153  -0.000002828   0.000000058
                        -0.000000843  -0.000000001  -0.000002577  -0.000000000  -0.005304887   0.128610014   0.120850294  -0.002500175

   28   11.1  1.5  0.5  -0.000000383   0.000258183   0.000000000  -0.002616196  -0.000885276  -0.000036520  -0.000053510  -0.002586526
                        -0.000000035   0.000023735   0.000000000  -0.003133812   0.009775518   0.000403219  -0.000055655  -0.002690200

   29   12.1  1.5  0.5   0.000005802   0.000000009  -0.000002789  -0.000000000   0.000000516  -0.000012551  -0.000019762   0.000000409
                         0.003212754   0.000004768  -0.000664940   0.000000000  -0.000200004   0.004848825   0.009268047  -0.000191739

   30   13.1  1.5  0.5  -0.000012443  -0.000000018   0.000006079   0.000000000  -0.000001047   0.000025285   0.000042838  -0.000000886
                        -0.001400323  -0.000002078  -0.001497173  -0.000000000  -0.000441415   0.010701541  -0.006852642   0.000141769

   31   14.1  1.5  0.5  -0.000000040   0.000026942  -0.000000000   0.001698794   0.004260184   0.000175723  -0.000158444  -0.007658674
                         0.000000491  -0.000330799   0.000000000  -0.001416461   0.000380425   0.000015693   0.000152382   0.007365657

   32   15.1  1.5  0.5   0.002598199   0.000003856  -0.001332218  -0.000000000   0.000219123  -0.005312348  -0.009081423   0.000187878
                        -0.000013728  -0.000000020  -0.000005638  -0.000000000  -0.000001647   0.000039879  -0.000053130   0.000001099

   33   16.1  1.5  0.5   0.000003950  -0.002661533  -0.000000000   0.000724911   0.000398491   0.000016439   0.000017554   0.000848485
                         0.000000361  -0.000243215  -0.000000000   0.000872583  -0.004457117  -0.000183846   0.000017875   0.000864028

   34   17.1  1.5  0.5   0.001243686   0.000001846   0.001668226   0.000000000   0.000427288  -0.010359031   0.007346294  -0.000151981
                        -0.000000272  -0.000000000  -0.000000165   0.000000000   0.000000004  -0.000000189  -0.000000792   0.000000016

   35    1.1  1.5 -0.5  -0.028857518  -0.000042826  -0.098603815  -0.000000001  -0.000462757   0.011218932  -0.004067925   0.000084158
                         0.000002860   0.000000004   0.000006393  -0.000000000  -0.000000020   0.000000603  -0.000000078   0.000000002

   36    2.1  1.5 -0.5  -0.000002436  -0.000000003  -0.000002547   0.000000000  -0.000000008   0.000000235  -0.000000225   0.000000005
                         0.007768096   0.000011529  -0.051779957  -0.000000000   0.000184065  -0.004462423   0.011078091  -0.000229185

   37    3.1  1.5 -0.5  -0.000048211   0.032484932  -0.000000000   0.030807008   0.000160567   0.000006624   0.000174046   0.008412834
                        -0.000004328   0.002916439  -0.000000000   0.036906883  -0.001759255  -0.000072565   0.000181267   0.008761863

   38    4.1  1.5 -0.5  -0.000011047   0.007443856   0.000000000  -0.001475209   0.000516839   0.000021318  -0.000176616  -0.008537045
                         0.000121080  -0.081585890  -0.000000000   0.001185229   0.000048034   0.000001982   0.000169573   0.008196592

   39    5.1  1.5 -0.5   0.000087245  -0.058787348  -0.000000000   0.008775802   0.001082920   0.000044673   0.000010510   0.000508024
                         0.000007984  -0.005379751  -0.000000000   0.010514002  -0.011957973  -0.000493240   0.000010931   0.000528377

   40    6.1  1.5 -0.5   0.000000628  -0.000423649   0.000000000  -0.029406794   0.012182837   0.000502515  -0.000030078  -0.001453879
                        -0.000006839   0.004608005  -0.000000001   0.024544598   0.001103408   0.000045518   0.000028894   0.001396648

   41    7.1  1.5 -0.5  -0.055855347  -0.000082894   0.010803830  -0.000000000  -0.000022015   0.000533727   0.000272876  -0.000005645
                         0.000000374   0.000000000   0.000000745  -0.000000000  -0.000000000   0.000000014  -0.000000022   0.000000000

   42    8.1  1.5 -0.5  -0.000000006   0.000003893  -0.000000000  -0.000000076   0.010686634   0.000440847  -0.001942288  -0.093883981
                        -0.000000001   0.000000356  -0.000000000  -0.000000091  -0.118004461  -0.004867426  -0.002020115  -0.097645882

   43    9.1  1.5 -0.5   0.000002313   0.000000003  -0.000002303   0.000000000  -0.000417936   0.010132300  -0.014600837   0.000302062
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000030   0.000000895   0.000000353  -0.000000007

   44   10.1  1.5 -0.5   0.000000000  -0.000000077  -0.000000000   0.000001978   0.128085881   0.005283263   0.001802258   0.087115262
                        -0.000000001   0.000000840  -0.000000000  -0.000001651   0.011599258   0.000478497  -0.001732842  -0.083759923

   45   11.1  1.5 -0.5  -0.000259272  -0.000000385  -0.004082311  -0.000000000   0.000404869  -0.009815521   0.003731929  -0.000077207
                         0.000000108   0.000000000   0.000000238  -0.000000000   0.000000018  -0.000000526   0.000000045  -0.000000001

   46   12.1  1.5 -0.5  -0.000000443   0.000298551   0.000000000   0.000512208   0.004830173   0.000199234   0.000137935   0.006667351
                         0.000004747  -0.003198857  -0.000000000  -0.000424024   0.000425081   0.000017536  -0.000133184  -0.006437665

   47   13.1  1.5 -0.5   0.000000208  -0.000140000  -0.000000000   0.001145363   0.010655593   0.000439520  -0.000101582  -0.004910167
                        -0.000002068   0.001393362   0.000000000  -0.000964214   0.000990940   0.000040879   0.000098895   0.004780251

   48   14.1  1.5 -0.5   0.000003315   0.000000005   0.000001466  -0.000000000  -0.000000229   0.000005587  -0.000001665   0.000000034
                        -0.000331878  -0.000000493   0.002211846   0.000000000   0.000176422  -0.004277132   0.010625827  -0.000219829

   49   15.1  1.5 -0.5  -0.000003838   0.002586137  -0.000000000   0.000858155   0.000519128   0.000021415  -0.000131005  -0.006332374
                        -0.000000372   0.000250441   0.000000000   0.001019023  -0.005287073  -0.000218080  -0.000134674  -0.006509693

   50   16.1  1.5 -0.5   0.002672623   0.000003966   0.001134411   0.000000000  -0.000184580   0.004474892  -0.001210912   0.000025052
                         0.000000339   0.000000001  -0.000002788   0.000000000  -0.000000220   0.000005366  -0.000012814   0.000000265

   51   17.1  1.5 -0.5  -0.000001838   0.001238486   0.000000000  -0.001069050   0.000934660   0.000038557   0.000105322   0.005090936
                        -0.000000169   0.000113606   0.000000000  -0.001280668  -0.010316779  -0.000425544   0.000109570   0.005296264

   52    1.1  1.5 -1.5   0.000101947  -0.068693305  -0.000000000  -0.022955918  -0.000027163  -0.000001120   0.000021513   0.001039881
                         0.000009329  -0.006286066  -0.000000000  -0.027494493   0.000299761   0.000012364   0.000022376   0.001081588

   53    2.1  1.5 -1.5  -0.000006490   0.004373481   0.000000000   0.012744533   0.000478508   0.000019737  -0.000010357  -0.000500620
                         0.000070930  -0.047793449   0.000000000  -0.010640578   0.000043317   0.000001787   0.000009957   0.000481292

   54    3.1  1.5 -1.5   0.082796468   0.000122877   0.035270330   0.000000001   0.000349761  -0.008479487  -0.002020226   0.000041795
                        -0.000016039  -0.000000023   0.000046152   0.000000000   0.000000240  -0.000005915  -0.000002159   0.000000045

   55    4.1  1.5 -1.5  -0.000055991  -0.000000083  -0.000020411  -0.000000000  -0.000000254   0.000006234   0.000001416  -0.000000029
                        -0.024449549  -0.000036286   0.075042609   0.000000001   0.000313694  -0.007605099  -0.002215397   0.000045833

   56    5.1  1.5 -1.5  -0.077004786  -0.000114281   0.014067038  -0.000000000   0.000065369  -0.001584781  -0.008621553   0.000178364
                        -0.000000449  -0.000000001   0.000001279  -0.000000000   0.000000003  -0.000000078  -0.000000155   0.000000003

   57    6.1  1.5 -1.5  -0.000005172  -0.000000008  -0.000003074   0.000000000  -0.000000031   0.000000785   0.000000327  -0.000000007
                         0.029050251   0.000043113  -0.018205201  -0.000000000   0.000121924  -0.002955883  -0.007911643   0.000163678

   58    7.1  1.5 -1.5   0.000037282  -0.025121701  -0.000000001   0.069514009   0.000820689   0.000033855  -0.000133856  -0.006470186
                         0.000003417  -0.002302861  -0.000000001   0.083267988  -0.009062417  -0.000373805  -0.000139219  -0.006729408

   59    8.1  1.5 -1.5   0.000000346   0.000000001   0.000003202  -0.000000000   0.006931759  -0.168051473   0.163283612  -0.003378038
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000304  -0.000009068   0.000003100  -0.000000065

   60    9.1  1.5 -1.5  -0.000000004   0.000002689   0.000000000  -0.000001695   0.012866100   0.000530756  -0.002122080  -0.102574501
                        -0.000000000   0.000000246  -0.000000000  -0.000002031  -0.142072971  -0.005860199  -0.002207101  -0.106684111

   61   10.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000286   0.000008550  -0.000003304   0.000000069
                         0.000000916   0.000000001   0.000002136  -0.000000000   0.006690024  -0.162190924   0.154844924  -0.003203458

   62   11.1  1.5 -1.5   0.000003452  -0.002326325   0.000000000  -0.002012411   0.000316487   0.000013056  -0.000066854  -0.003231490
                         0.000000316  -0.000212820   0.000000000  -0.002410449  -0.003494630  -0.000144146  -0.000069533  -0.003360998

   63   12.1  1.5 -1.5   0.000010597   0.000000016   0.000002011  -0.000000000  -0.000000498   0.000012034  -0.000007481   0.000000155
                        -0.001491424  -0.000002213   0.003211871   0.000000000  -0.000216039   0.005237580  -0.001519979   0.000031446

   64   13.1  1.5 -1.5  -0.000022837  -0.000000034  -0.000004141   0.000000000   0.000001100  -0.000026607   0.000015939  -0.000000330
                        -0.000637040  -0.000000945  -0.000750157  -0.000000000   0.000239653  -0.005810083  -0.007748752   0.000160308

   65   14.1  1.5 -1.5   0.000000273  -0.000184298  -0.000000000  -0.000547107   0.000461087   0.000019019  -0.000010061  -0.000486339
                        -0.000003030   0.002041579  -0.000000000   0.000450935   0.000032081   0.000001324   0.000009404   0.000454573

   66   15.1  1.5 -1.5   0.004788747   0.000007107   0.000877551   0.000000000  -0.000236893   0.005743162  -0.003220769   0.000066632
                         0.000000221   0.000000000  -0.000010809   0.000000000   0.000001603  -0.000038803  -0.000033501   0.000000693

   67   16.1  1.5 -1.5  -0.000003095   0.002085530   0.000000000  -0.002392597   0.000721155   0.000029749  -0.000111651  -0.005396867
                        -0.000000280   0.000188530   0.000000000  -0.002867378  -0.007969529  -0.000328726  -0.000116148  -0.005614225

   68   17.1  1.5 -1.5   0.000624445   0.000000927  -0.001363552  -0.000000000   0.000245414  -0.005949745  -0.007871487   0.000162847
                         0.000000095   0.000000000  -0.000000169  -0.000000000   0.000000038  -0.000000968  -0.000000535   0.000000011

   69    1.1  0.5  0.5   0.000175450  -0.118221647  -0.000000002   0.002856814  -0.014292484  -0.000589597   0.006136335   0.296610643
                         0.000016046  -0.010809926  -0.000000001   0.003429757   0.157825987   0.006509979   0.006382183   0.308494127

   70    2.1  0.5  0.5   0.000003132   0.000000002   0.000012849  -0.000000000  -0.000000660   0.000019679  -0.000005398   0.000000113
                         0.103541488   0.000153664   0.225113357   0.000000003   0.015104635  -0.366192197   0.279051825  -0.005773069

   71    3.1  0.5  0.5  -0.136832994  -0.000203069  -0.199744101  -0.000000003  -0.014846775   0.359940724  -0.270399083   0.005594061
                         0.000006158   0.000000011   0.000018444  -0.000000001  -0.000000642   0.000019130  -0.000005617   0.000000117

   72    4.1  0.5  0.5  -0.001009106   0.679952121   0.000000001   0.154373216   0.000123392   0.000005085  -0.001167297  -0.056423519
                        -0.000092341   0.062222369   0.000000001   0.184889256  -0.001355742  -0.000055921  -0.001214100  -0.058685844

   73    5.1  0.5  0.5  -0.000018173  -0.000000022  -0.000028957   0.000000001   0.000000258  -0.000007572  -0.000005723   0.000000118
                        -0.479202192  -0.000711174  -0.303496526  -0.000000005  -0.005321028   0.129001296   0.231852848  -0.004796617

   74    6.1  0.5  0.5  -0.355961625  -0.000528279   0.608341325   0.000000004   0.004104978  -0.099519798  -0.274523029   0.005679379
                        -0.000015566  -0.000000021  -0.000024794   0.000000001   0.000000169  -0.000004957  -0.000004680   0.000000097

   75    7.1  0.5  0.5  -0.000042058   0.028340367   0.000000005  -0.455397555   0.427115377   0.017617573   0.002585343   0.124967020
                         0.000459392  -0.309548185  -0.000000008   0.380168281   0.038679609   0.001595623  -0.002485754  -0.120153230

   76    8.1  0.5  0.5  -0.000000000   0.000000322  -0.000000000   0.000006181   0.085664703   0.003533480  -0.002905778  -0.140456173
                         0.000000005  -0.000003515  -0.000000000  -0.000005160   0.007757270   0.000320011   0.002793809   0.135043906

   77    9.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000472   0.000013927   0.000005508  -0.000000114
                         0.000012178   0.000000018   0.000001401  -0.000000000   0.010875624  -0.263665251  -0.301473070   0.006236928

   78   10.1  0.5  0.5   0.000001915   0.000000003   0.000009519   0.000000000   0.011805565  -0.286210414  -0.268984275   0.005564800
                        -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000539  -0.000015919  -0.000006294   0.000000130

   79   11.1  0.5  0.5  -0.000000000   0.000000074   0.000000000   0.000003562   0.159504923   0.006579224  -0.006049519  -0.292414325
                         0.000000001  -0.000000806  -0.000000000  -0.000002973   0.014445260   0.000595901   0.005816493   0.281150584

   80   12.1  0.5  0.5   0.000000008  -0.000005566  -0.000000000   0.000004497  -0.041105560  -0.001695701  -0.002351464  -0.113662319
                         0.000000001  -0.000000510  -0.000000000   0.000005387   0.453901881   0.018722455  -0.002445678  -0.118216406

   81   13.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000430  -0.000000001   0.000000719  -0.000000000  -0.000000332   0.000008051  -0.000008472   0.000000175

   82   14.1  0.5  0.5  -0.000000398  -0.000000001  -0.000000464  -0.000000000   0.000000296  -0.000007177   0.000008717  -0.000000180
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   83   15.1  0.5  0.5   0.000000001  -0.000000766  -0.000000000  -0.000000139  -0.000000090  -0.000000004  -0.000000001  -0.000000031
                         0.000000000  -0.000000070   0.000000000  -0.000000167   0.000000999   0.000000041  -0.000000001  -0.000000032

   84    1.1  0.5 -0.5  -0.118714836  -0.000176182  -0.004463697  -0.000000002  -0.006536624   0.158471819   0.427956189  -0.008853635
                        -0.000008401  -0.000000009   0.000005209  -0.000000001  -0.000000301   0.000008807   0.000008933  -0.000000185

   85    2.1  0.5 -0.5   0.000014005  -0.009438688  -0.000000002   0.172809520   0.364699767   0.015043062  -0.004161548  -0.201156048
                        -0.000153024   0.103110383   0.000000002  -0.144266744   0.033027336   0.001362457   0.004001230   0.193406736

   86    3.1  0.5 -0.5  -0.000202223   0.136263091   0.000000003  -0.128003129   0.032463720   0.001339205   0.003877168   0.187409925
                        -0.000018516   0.012475503   0.000000002  -0.153339184  -0.358473753  -0.014786253   0.004032504   0.194918403

   87    4.1  0.5 -0.5   0.682793168   0.001013322  -0.240863294   0.000000001   0.000056152  -0.001361345  -0.081410330   0.001684227
                        -0.000000530   0.000000002  -0.000003090  -0.000000000  -0.000000018   0.000000540  -0.000000480   0.000000010

   88    5.1  0.5 -0.5  -0.000064830   0.043687021   0.000000003  -0.232988252  -0.128475604  -0.005299339  -0.003457650  -0.167131546
                         0.000708213  -0.477206649  -0.000000004   0.194490659  -0.011634153  -0.000479938   0.003324484   0.160694708

   89    6.1  0.5 -0.5  -0.000526083   0.354481942  -0.000000004   0.389870858  -0.008976206  -0.000370284   0.003936285   0.190267439
                        -0.000048121   0.032422708  -0.000000002   0.466990238   0.099114166   0.004088243   0.004094020   0.197891877

   90    7.1  0.5 -0.5   0.000013820   0.000000019   0.000042851  -0.000000002   0.000000781  -0.000023152  -0.000003659   0.000000075
                         0.310842814   0.000461313   0.593224117   0.000000009  -0.017689683   0.428863215   0.173359611  -0.003586499

   91    8.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000173  -0.000005175   0.000002796  -0.000000058
                         0.000003530   0.000000005  -0.000008052   0.000000000  -0.003547941   0.086015211  -0.194845562   0.004030995

   92    9.1  0.5 -0.5   0.000000002  -0.000001110   0.000000000   0.000001076   0.262590652   0.010831290   0.004495929   0.217318751
                        -0.000000018   0.000012127  -0.000000000  -0.000000897   0.023780542   0.000980999  -0.004322719  -0.208946338

   93   10.1  0.5 -0.5   0.000000003  -0.000001907  -0.000000000   0.000006100  -0.025813142  -0.001064854   0.003856897   0.186429851
                         0.000000000  -0.000000175  -0.000000000   0.000007307   0.285044002   0.011757442   0.004011401   0.193898043

   94   11.1  0.5 -0.5   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000271  -0.000008169   0.000008708  -0.000000181
                         0.000000810   0.000000001  -0.000004640   0.000000000  -0.006606155   0.160157691  -0.405649835   0.008392155

   95   12.1  0.5 -0.5  -0.000005589  -0.000000008  -0.000007017  -0.000000000  -0.018799088   0.455759349  -0.163994638   0.003392745
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000822   0.000024442  -0.000003221   0.000000068

   96   13.1  0.5 -0.5  -0.000000000   0.000000039   0.000000000   0.000000552  -0.000008018  -0.000000331   0.000000126   0.000006107
                         0.000000001  -0.000000428  -0.000000000  -0.000000460  -0.000000726  -0.000000030  -0.000000121  -0.000005872

   97   14.1  0.5 -0.5  -0.000000001   0.000000396   0.000000000  -0.000000298  -0.000000647  -0.000000027  -0.000000125  -0.000006042
                        -0.000000000   0.000000036  -0.000000000  -0.000000357   0.000007148   0.000000295  -0.000000130  -0.000006284

   98   15.1  0.5 -0.5  -0.000000769  -0.000000001   0.000000217   0.000000000  -0.000000041   0.000001003  -0.000000044   0.000000001
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.011871165  -0.000351996   0.004470780  -0.000000000  -0.037690831   0.006297979  -0.007584741   0.052810046
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000003  -0.000000000  -0.000001588   0.000000004  -0.000000111   0.000000019  -0.000000007   0.000000052
                        -0.011931896   0.000353797   0.000045508  -0.000000001   0.034295775  -0.005730679   0.007929612  -0.055211269

    3    3.1  1.5  1.5  -0.000093227  -0.003144106   0.000000042   0.000970523  -0.002225338  -0.013317767   0.041482296   0.005957814
                        -0.000207472  -0.006997065   0.000000009   0.045645869   0.000036087   0.000215954  -0.006455669  -0.000927183

    4    4.1  1.5  1.5   0.000237948   0.008024859   0.000000008   0.044096231  -0.000088480  -0.000529528   0.005535666   0.000795050
                        -0.000106953  -0.003607025  -0.000000036  -0.000936447  -0.005080891  -0.030407029   0.035646903   0.005119718

    5    5.1  1.5  1.5   0.000094263   0.003179033   0.000000006   0.000262415   0.010063337   0.060224953  -0.014383852  -0.002065853
                         0.000209379   0.007061357   0.000000001   0.012876100  -0.000178755  -0.001069777   0.002245309   0.000322478

    6    6.1  1.5  1.5  -0.000209650  -0.007070507   0.000000002   0.017176933  -0.000048443  -0.000289910  -0.008879076  -0.001275240
                         0.000094404   0.003183812  -0.000000014  -0.000356126  -0.002738124  -0.016386541  -0.056851291  -0.008165157

    7    7.1  1.5  1.5   0.001204058  -0.000035702  -0.052452409   0.000000010   0.037952713  -0.006341743  -0.004345841   0.030258657
                         0.000000037  -0.000000001  -0.000018507   0.000000043  -0.000001288   0.000000217  -0.000000087   0.000000609

    8    8.1  1.5  1.5  -0.000688929  -0.023234441   0.000000302   0.006320206  -0.058547177  -0.350381095  -0.053074906  -0.007622784
                        -0.001530275  -0.051609010   0.000000075   0.306911418   0.001042296   0.006237626   0.008285872   0.001190046

    9    9.1  1.5  1.5   0.002835756  -0.000084085  -0.295024250   0.000000054   0.230120574  -0.038452207  -0.020628263   0.143627800
                         0.000000583  -0.000000016  -0.000103332   0.000000237  -0.000007189   0.000001210  -0.000000487   0.000003404

   10   10.1  1.5  1.5   0.002390247   0.080611775   0.000000071   0.306345776   0.000601157   0.003597596   0.045168745   0.006487278
                        -0.001076109  -0.036292017  -0.000000285  -0.006301767   0.033714664   0.201768650   0.289320654   0.041553123

   11   11.1  1.5  1.5  -0.010151955   0.000301019  -0.001710657   0.000000000   0.003557470  -0.000594438   0.000393823  -0.002742061
                         0.000000031  -0.000000001  -0.000000497   0.000000001  -0.000000038   0.000000006  -0.000000003   0.000000023

   12   12.1  1.5  1.5  -0.000294313  -0.009925801  -0.000000000  -0.002288785   0.000005454   0.000032643  -0.000655087  -0.000094086
                         0.000133243   0.004493647   0.000000002   0.000042377   0.000237634   0.001422139  -0.004152530  -0.000596399

   13   13.1  1.5  1.5  -0.000077461  -0.002612403   0.000000000   0.002564025  -0.000008686  -0.000051982  -0.000375052  -0.000053866
                         0.000033278   0.001122295  -0.000000002  -0.000042569  -0.000339716  -0.002033059  -0.002496493  -0.000358554

   14   14.1  1.5  1.5   0.000006357  -0.000000188  -0.000004196   0.000000000   0.000001848  -0.000000309  -0.000000597   0.000004156
                        -0.011450893   0.000339534  -0.000001512  -0.000000000   0.002485909  -0.000415385   0.000575052  -0.004003898

   15   15.1  1.5  1.5   0.000125831   0.004243700  -0.000000002  -0.000027186   0.000553770   0.003314091  -0.003039335  -0.000436519
                         0.000278741   0.009400638  -0.000000001  -0.002153954  -0.000011989  -0.000071751   0.000471736   0.000067752

   16   16.1  1.5  1.5   0.005301024  -0.000157182  -0.003396218   0.000000001   0.001540443  -0.000257402  -0.000496842   0.003459348
                         0.000013791  -0.000000409  -0.000001238   0.000000003  -0.000003073   0.000000514  -0.000000697   0.000004852

   17   17.1  1.5  1.5   0.000021600   0.000728457   0.000000002   0.000055471   0.000495989   0.002968287   0.000881197   0.000126560
                         0.000047947   0.001617027   0.000000000   0.002689874  -0.000008833  -0.000052865  -0.000137516  -0.000019750

   18    1.1  1.5  0.5  -0.000002798  -0.000094358   0.000000055   0.001235960  -0.003988699  -0.023870768  -0.009037301  -0.001297965
                        -0.000006214  -0.000209575   0.000000013   0.060095368   0.000071241   0.000426336   0.001410660   0.000202604

   19    2.1  1.5  0.5  -0.000022243  -0.000750150  -0.000000006  -0.021244256  -0.000154833  -0.000926603  -0.005038273  -0.000723613
                         0.000010015   0.000337745   0.000000023   0.000438285  -0.008704122  -0.052090621  -0.032270407  -0.004634775

   20    3.1  1.5  0.5  -0.000749715   0.000022230   0.005764355  -0.000000004   0.060261563  -0.010069453  -0.004013130   0.027942099
                        -0.000001545   0.000000046  -0.000000446  -0.000000010  -0.000034795   0.000005813   0.000004127  -0.000028734

   21    4.1  1.5  0.5   0.000000547  -0.000000016  -0.000002564  -0.000000004  -0.000040778   0.000006813   0.000002707  -0.000018849
                        -0.002372254   0.000070341   0.000297353   0.000000002  -0.050242663   0.008395338   0.006051891  -0.042137316

   22    5.1  1.5  0.5   0.002106038  -0.000062447   0.065940317  -0.000000015   0.002326551  -0.000388751  -0.001678525   0.011687013
                        -0.000000014   0.000000000   0.000024726  -0.000000058   0.000002355  -0.000000396   0.000000051  -0.000000360

   23    6.1  1.5  0.5   0.000000041  -0.000000001   0.000024946  -0.000000059  -0.000001892   0.000000314   0.000000338  -0.000002357
                         0.000820868  -0.000024340  -0.066151551   0.000000015  -0.016092520   0.002688986   0.000139534  -0.000971525

   24    7.1  1.5  0.5   0.000130002   0.004384358   0.000000001   0.000102225   0.004785659   0.028640212  -0.049577690  -0.007120500
                         0.000288762   0.009738582   0.000000000   0.005038799  -0.000084982  -0.000508585   0.007740086   0.001111655

   25    8.1  1.5  0.5   0.123135219  -0.003651122   0.255662508  -0.000000044  -0.327739648   0.054763938  -0.011989978   0.083482253
                        -0.000000473   0.000000013   0.000083657  -0.000000192   0.000005822  -0.000000980   0.000000393  -0.000002747

   26    9.1  1.5  0.5  -0.003057334  -0.103109493   0.000000028   0.000026320  -0.043036831  -0.257557852   0.409617843   0.058830570
                        -0.006790981  -0.229027874   0.000000006   0.000706145   0.000764527   0.004575377  -0.063949865  -0.009184676

   27   10.1  1.5  0.5  -0.000000537   0.000000015   0.000095639  -0.000000220   0.000006662  -0.000001121   0.000000449  -0.000003137
                         0.128034787  -0.003796403  -0.256124747   0.000000050   0.069939167  -0.011686565  -0.047603506   0.331447512

   28   11.1  1.5  0.5   0.000048842   0.001647209  -0.000000004  -0.000080138   0.000394135   0.002358737  -0.000727441  -0.000104477
                         0.000108488   0.003658784  -0.000000001  -0.003894815  -0.000007026  -0.000042044   0.000113589   0.000016314

   29   12.1  1.5  0.5   0.000003897  -0.000000116   0.000006311  -0.000000002  -0.000007439   0.000001243   0.000000354  -0.000002465
                         0.002382460  -0.000070643  -0.002162914   0.000000000   0.002723271  -0.000455047  -0.000388766   0.002706849

   30   13.1  1.5  0.5  -0.000008400   0.000000249  -0.000010100  -0.000000004   0.000016482  -0.000002754  -0.000000769   0.000005351
                        -0.000324266   0.000009615  -0.004259757   0.000000001  -0.002676607   0.000447249   0.000205730  -0.001432430

   31   14.1  1.5  0.5  -0.000021221  -0.000715672  -0.000000000  -0.001548818  -0.000010983  -0.000065727  -0.000370538  -0.000053218
                         0.000009924   0.000334675   0.000000002   0.000034280  -0.000631927  -0.003781828  -0.002345265  -0.000336834

   32   15.1  1.5  0.5   0.001753153  -0.000051983   0.002428122  -0.000000000  -0.003464922   0.000578974   0.000165433  -0.001151857
                        -0.000006813   0.000000202  -0.000014681  -0.000000002  -0.000018664   0.000003119   0.000001838  -0.000012796

   33   16.1  1.5  0.5   0.000115001   0.003878431   0.000000002   0.000041678   0.000214352   0.001282809  -0.003557016  -0.000510870
                         0.000255372   0.008612505   0.000000000   0.001940526  -0.000003036  -0.000018169   0.000558203   0.000080171

   34   17.1  1.5  0.5   0.001228234  -0.000036419   0.004123960  -0.000000001   0.002664825  -0.000445281  -0.000267429   0.001862017
                        -0.000000151   0.000000004   0.000001497  -0.000000004  -0.000000138   0.000000023   0.000000036  -0.000000248

   35    1.1  1.5 -0.5   0.000229837  -0.000006815  -0.060108072   0.000000014  -0.023874575   0.003989335   0.001313683  -0.009146736
                         0.000000006  -0.000000000  -0.000023320   0.000000055  -0.000002364   0.000000397  -0.000000034   0.000000239

   36    2.1  1.5 -0.5  -0.000000022   0.000000001  -0.000009605   0.000000023  -0.000001414   0.000000238   0.000000032  -0.000000219
                         0.000822676  -0.000024394   0.021248774  -0.000000007   0.052098862  -0.008705499  -0.004690923   0.032661343

   37    3.1  1.5 -0.5  -0.000009168  -0.000309182   0.000000010   0.000115847  -0.010067968  -0.060252678  -0.027612110  -0.003965736
                        -0.000020252  -0.000682995   0.000000004   0.005763191   0.000173005   0.001035356   0.004281716   0.000614954

   38    4.1  1.5 -0.5  -0.000064134  -0.002162919  -0.000000002   0.000297241  -0.000142275  -0.000851455  -0.006481115  -0.000930838
                         0.000028891   0.000974356   0.000000004  -0.000008562  -0.008394135  -0.050235464  -0.041635909  -0.005979877

   39    5.1  1.5 -0.5   0.000025635   0.000864558   0.000000058   0.001355028  -0.000388682  -0.002326143  -0.011547194  -0.001658444
                         0.000056942   0.001920400   0.000000013   0.065926397   0.000007300   0.000043670   0.001802382   0.000258864

   40    6.1  1.5 -0.5   0.000022195   0.000748526  -0.000000014  -0.066137585  -0.000047438  -0.000283884  -0.000147531  -0.000021189
                        -0.000009991  -0.000336945   0.000000060   0.001359509  -0.002688568  -0.016090016  -0.000960261  -0.000137916

   41    7.1  1.5 -0.5  -0.010680008   0.000316676  -0.005039836   0.000000000   0.028644728  -0.004786414   0.007206753  -0.050178245
                        -0.000000002   0.000000000  -0.000000549   0.000000001  -0.000000098   0.000000016   0.000000004  -0.000000024

   42    8.1  1.5 -0.5   0.001498846   0.050549025   0.000000193   0.005241478   0.054755320   0.327688070  -0.082483531  -0.011846539
                         0.003329287   0.112281246   0.000000040   0.255608787  -0.000971537  -0.005814292   0.012874536   0.001849082

   43    9.1  1.5 -0.5   0.251167941  -0.007447464  -0.000706532   0.000000006  -0.257598488   0.043043621  -0.059543213   0.414579742
                         0.000000064  -0.000000002  -0.000012068   0.000000028  -0.000000855   0.000000144  -0.000000055   0.000000386

   44   10.1  1.5 -0.5   0.003461750   0.116748511  -0.000000046  -0.256070690   0.000206413   0.001235342   0.051129325   0.007343349
                        -0.001558513  -0.052561316   0.000000221   0.005262783   0.011684742   0.069928256   0.327480145   0.047033701

   45   11.1  1.5 -0.5  -0.004012480   0.000118975   0.003895639  -0.000000001   0.002359112  -0.000394197   0.000105743  -0.000736256
                        -0.000000007   0.000000000   0.000001546  -0.000000004   0.000000150  -0.000000025   0.000000003  -0.000000021

   46   12.1  1.5 -0.5   0.000064464   0.002174050  -0.000000000  -0.002162346   0.000009324   0.000055798   0.000419970   0.000060317
                        -0.000028895  -0.000974494   0.000000002   0.000049945   0.000454953   0.002722709   0.002674072   0.000384058

   47   13.1  1.5 -0.5  -0.000008870  -0.000299131  -0.000000001  -0.004259094  -0.000010696  -0.000064012  -0.000226241  -0.000032493
                         0.000003720   0.000125458   0.000000004   0.000075840  -0.000447130  -0.002675892  -0.001414460  -0.000203149

   48   14.1  1.5 -0.5  -0.000011376   0.000000337  -0.000003026   0.000000002   0.000001442  -0.000000241   0.000000624  -0.000004343
                         0.000789977  -0.000023424   0.001549195  -0.000000001   0.003782398  -0.000632023  -0.000341012   0.002374352

   49   15.1  1.5 -0.5   0.000021156   0.000713491   0.000000002   0.000034308   0.000578827   0.003464044   0.001136098   0.000163170
                         0.000047484   0.001601412   0.000000000   0.002427924  -0.000013400  -0.000080192  -0.000190318  -0.000027334

   50   16.1  1.5 -0.5  -0.009445500   0.000280072  -0.001940972   0.000000000   0.001282930  -0.000214372   0.000517122  -0.003600548
                        -0.000000949   0.000000028  -0.000002520   0.000000002  -0.000004614   0.000000771   0.000000409  -0.000002848

   51   17.1  1.5 -0.5   0.000014947   0.000504077   0.000000004   0.000084695  -0.000445211  -0.002664407  -0.001839769  -0.000264233
                         0.000033210   0.001120029   0.000000001   0.004123090   0.000007885   0.000047185   0.000286974   0.000041216

   52    1.1  1.5 -1.5  -0.000144501  -0.004873349  -0.000000000  -0.000090195  -0.006296986  -0.037684887   0.052177996   0.007493964
                        -0.000320968  -0.010824742  -0.000000000  -0.004469870   0.000111842   0.000669327  -0.008146021  -0.001169956

   53    2.1  1.5 -1.5   0.000322610   0.010880118  -0.000000001  -0.000045466  -0.000101786  -0.000609147   0.008516464   0.001223161
                        -0.000145241  -0.004898284   0.000000004   0.000002505  -0.005729775  -0.034290365   0.054550472   0.007834706

   54    3.1  1.5 -1.5  -0.007671003   0.000227455   0.045656159  -0.000000010   0.013319502  -0.002225628   0.006029528  -0.041981617
                         0.000005476  -0.000000162   0.000049447  -0.000000041  -0.000020581   0.000003437  -0.000002915   0.000020295

   55    4.1  1.5 -1.5   0.000005293  -0.000000157  -0.000046641   0.000000035  -0.000010534   0.000001762  -0.000004189   0.000029170
                         0.008798237  -0.000260879   0.044106149  -0.000000009  -0.030411638   0.005081661  -0.005181081   0.036074152

   56    5.1  1.5 -1.5   0.007743966  -0.000229619   0.012878774  -0.000000001  -0.060234453   0.010064925  -0.002090871   0.014558043
                        -0.000000021   0.000000001   0.000002594  -0.000000006  -0.000000113   0.000000019   0.000000042  -0.000000292

   57    6.1  1.5 -1.5   0.000000581  -0.000000017  -0.000009519   0.000000014  -0.000001133   0.000000190  -0.000000491   0.000003419
                        -0.007754272   0.000229925   0.017180622  -0.000000003  -0.016389105   0.002738552   0.008264141  -0.057540484

   58    7.1  1.5 -1.5  -0.000014657  -0.000494324   0.000000043   0.001076699   0.006340747   0.037946751   0.029896416   0.004293815
                        -0.000032554  -0.001097907   0.000000009   0.052441361  -0.000112402  -0.000672690  -0.004668041  -0.000670438

   59    8.1  1.5 -1.5  -0.056597961   0.001678203   0.306976460  -0.000000081   0.350436612  -0.058556454  -0.007715118   0.053717793
                         0.000000162  -0.000000007   0.000127166  -0.000000300   0.000014455  -0.000002430   0.000000021  -0.000000172

   60    9.1  1.5 -1.5  -0.000034533  -0.001164666   0.000000238   0.006055249   0.038446164   0.230084413   0.141908286   0.020381302
                        -0.000076666  -0.002585550   0.000000049   0.294962121  -0.000681638  -0.004079373  -0.022158145  -0.003182419

   61   10.1  1.5 -1.5  -0.000000199   0.000000008  -0.000120141   0.000000284  -0.000013951   0.000002346   0.000000010  -0.000000048
                         0.088404574  -0.002621315   0.306410562  -0.000000077   0.201800720  -0.033720023  -0.042056471   0.292825300

   62   11.1  1.5 -1.5   0.000123573   0.004167551   0.000000001   0.000035009   0.000594345   0.003556909  -0.002709247  -0.000389110
                         0.000274485   0.009257090   0.000000000   0.001710299  -0.000010550  -0.000063136   0.000422944   0.000060745

   63   12.1  1.5 -1.5   0.000022801  -0.000000676  -0.000003806  -0.000000002  -0.000007383   0.000001234  -0.000000964   0.000006713
                        -0.010895589   0.000323069  -0.002289174   0.000000000   0.001422494  -0.000237693   0.000603774  -0.004203879

   64   13.1  1.5 -1.5  -0.000049076   0.000001455   0.000009167   0.000000002   0.000015870  -0.000002652   0.000002086  -0.000014524
                        -0.002842848   0.000084294   0.002564362  -0.000000000  -0.002033661   0.000339816   0.000362572  -0.002524466

   65   14.1  1.5 -1.5   0.000309527   0.010438906  -0.000000000   0.000001596  -0.000007068  -0.000042297   0.000621713   0.000089292
                        -0.000139557  -0.004706616   0.000000000   0.000004165  -0.000415325  -0.002485549   0.003955337   0.000568078

   66   15.1  1.5 -1.5   0.010314111  -0.000305827  -0.002154064   0.000000001  -0.003314843   0.000553896  -0.000441745   0.003075725
                         0.000010476  -0.000000311   0.000016274   0.000000002  -0.000012886   0.000002153   0.000000392  -0.000002731

   67   16.1  1.5 -1.5  -0.000064899  -0.002188751   0.000000003   0.000069755   0.000257370   0.001540254   0.003417197   0.000490788
                        -0.000143159  -0.004828086   0.000000001   0.003395501  -0.000004058  -0.000024284  -0.000538403  -0.000077327

   68   17.1  1.5 -1.5   0.001773535  -0.000052588   0.002690446  -0.000000000  -0.002968758   0.000496067   0.000128092  -0.000891863
                         0.000000423  -0.000000013   0.000001193  -0.000000002  -0.000000145   0.000000024  -0.000000008   0.000000056

   69    1.1  0.5  0.5   0.000936631   0.031588136   0.000000118   0.003369444   0.049455031   0.295968053   0.244322441   0.035090338
                         0.002080360   0.070160653   0.000000020   0.164369879  -0.000878118  -0.005255193  -0.038146876  -0.005478771

   70    2.1  0.5  0.5  -0.000000182   0.000000010   0.000128301  -0.000000302   0.000014085  -0.000002368   0.000000073  -0.000000531
                        -0.045817740   0.001358554  -0.318834597   0.000000080  -0.262541475   0.043869545   0.011913597  -0.082950417

   71    3.1  0.5  0.5  -0.106755963   0.003165459   0.318549971  -0.000000078   0.189611564  -0.031683265  -0.028821050   0.200671435
                        -0.000000222   0.000000011   0.000124850  -0.000000294   0.000013842  -0.000002327   0.000000057  -0.000000420

   72    4.1  0.5  0.5   0.005544974   0.187005914   0.000000009  -0.000406152  -0.043524452  -0.260476052   0.323396935   0.046447259
                         0.012316566   0.415379883   0.000000002  -0.020312967   0.000773135   0.004626895  -0.050488600  -0.007251327

   73    5.1  0.5  0.5  -0.000000910   0.000000027  -0.000046172   0.000000105  -0.000002156   0.000000363  -0.000000326   0.000002274
                         0.379186358  -0.011243382   0.117477784  -0.000000022  -0.012424322   0.002076064   0.057846220  -0.402764139

   74    6.1  0.5  0.5   0.359065942  -0.010646781  -0.116835136   0.000000013   0.365872379  -0.061135744   0.023909214  -0.166471962
                        -0.000000721   0.000000021  -0.000029734   0.000000067  -0.000000998   0.000000168  -0.000000250   0.000001744

   75    7.1  0.5  0.5  -0.000195659  -0.006598721   0.000000076   0.401055955  -0.000337797  -0.002021658  -0.010962878  -0.001574519
                         0.000088056   0.002969624  -0.000000342  -0.008239487  -0.019135999  -0.114520910  -0.070199607  -0.010082280

   76    8.1  0.5  0.5   0.011788970   0.397586584  -0.000000014  -0.037279082  -0.000705466  -0.004221906   0.027782369   0.003990188
                        -0.005307441  -0.178995096   0.000000056   0.000775814  -0.039691649  -0.237538321   0.177956440   0.025558649

   77    9.1  0.5  0.5   0.000001052  -0.000000030  -0.000059511   0.000000137  -0.000004143   0.000000697  -0.000000281   0.000001960
                         0.274026718  -0.008125255   0.181953380  -0.000000031  -0.234154883   0.039126312  -0.008531776   0.059403931

   78   10.1  0.5  0.5  -0.284960753   0.008449467   0.181994130  -0.000000036  -0.050146062   0.008379213   0.034026018  -0.236911943
                        -0.000001195   0.000000034   0.000067950  -0.000000156   0.000004721  -0.000000795   0.000000322  -0.000002245

   79   11.1  0.5  0.5  -0.005754205  -0.194062220  -0.000000026  -0.090173104  -0.000485873  -0.002907715  -0.036343453  -0.005219760
                         0.002590602   0.087368696   0.000000093   0.001857668  -0.027300666  -0.163383375  -0.232785419  -0.033433357

   80   12.1  0.5  0.5  -0.000339973  -0.011465497  -0.000000255  -0.005777781   0.016730703   0.100126578   0.062494150   0.008975604
                        -0.000755155  -0.025467818  -0.000000061  -0.280956247  -0.000299009  -0.001789377  -0.009755485  -0.001401116

   81   13.1  0.5  0.5   0.000000000  -0.000000000   0.000000106  -0.000000000   0.000000013  -0.000000002  -0.000000001   0.000000004
                        -0.000004690   0.000000139  -0.000270176   0.000000000  -0.000185056   0.000030922   0.000043375  -0.000302005

   82   14.1  0.5  0.5  -0.000001569   0.000000047   0.000160065  -0.000000000   0.000287755  -0.000048083  -0.000014574   0.000101473
                         0.000000000  -0.000000000   0.000000067  -0.000000000   0.000000005  -0.000000001  -0.000000000   0.000000002

   83   15.1  0.5  0.5  -0.000000079  -0.000002666  -0.000000000  -0.000002271  -0.000017003  -0.000101758   0.000199817   0.000028698
                        -0.000000176  -0.000005921  -0.000000000  -0.000110621   0.000000301   0.000001800  -0.000031198  -0.000004481

   84    1.1  0.5 -0.5   0.076943665  -0.002281485   0.164404402  -0.000000022  -0.296014705   0.049462826   0.035515472  -0.247282509
                         0.000001350  -0.000000040   0.000052694  -0.000000118   0.000001538  -0.000000260   0.000000467  -0.000003254

   85    2.1  0.5 -0.5   0.001238804   0.041779057   0.000000074   0.318767118   0.000781418   0.004676384   0.012794689   0.001837616
                        -0.000557704  -0.018808927  -0.000000304  -0.006560572   0.043862585   0.262499824   0.081957719   0.011771022

   86    3.1  0.5 -0.5   0.001299494   0.043825648  -0.000000296  -0.006551380   0.031678227   0.189581418   0.198269792   0.028476119
                         0.002886425   0.097345509  -0.000000073  -0.318482620  -0.000564969  -0.003381027  -0.030953425  -0.004445630

   87    4.1  0.5 -0.5   0.455534476  -0.013507203  -0.020317026  -0.000000003   0.260517143  -0.043531318   0.047009889  -0.327314339
                        -0.000000052   0.000000002   0.000003732  -0.000000009   0.000000542  -0.000000091  -0.000000011   0.000000079

   88    5.1  0.5 -0.5  -0.010252286  -0.345761331  -0.000000019  -0.117452943   0.000036504   0.000218480   0.062129158   0.008923180
                         0.004615656   0.155664371   0.000000105   0.002416207   0.002075743   0.012422401   0.397943362   0.057153845

   89    6.1  0.5 -0.5  -0.004370696  -0.147403052   0.000000067   0.002386807   0.061126106   0.365814702  -0.164479835  -0.023623098
                        -0.009708294  -0.327415166   0.000000012   0.116810757  -0.001085501  -0.006496290   0.025676802   0.003687781

   90    7.1  0.5 -0.5  -0.000001050   0.000000028  -0.000146746   0.000000340  -0.000012363   0.000002080  -0.000000469   0.000003287
                        -0.007236144   0.000214561   0.401140557  -0.000000082  -0.114538752   0.019138980   0.010204483  -0.071050472

   91    8.1  0.5 -0.5   0.000000226  -0.000000008   0.000023573  -0.000000056   0.000002953  -0.000000496  -0.000000024   0.000000161
                         0.436021027  -0.012928602  -0.037287146   0.000000016  -0.237575837   0.039697918  -0.025868245   0.180112061

   92    9.1  0.5 -0.5  -0.007409039  -0.249872145  -0.000000028  -0.181915147   0.000694121   0.004154061  -0.009161200  -0.001315761
                         0.003335552   0.112492457   0.000000137   0.003730300   0.039120154   0.234118033  -0.058693266  -0.008429708

   93   10.1  0.5 -0.5   0.003468705   0.116983146  -0.000000157  -0.003739558  -0.008377906  -0.050138238  -0.234076150  -0.033618733
                         0.007704647   0.259841441  -0.000000032  -0.181955719   0.000148007   0.000885791   0.036546205   0.005248877

   94   11.1  0.5 -0.5   0.000000889  -0.000000029   0.000038102  -0.000000092   0.000005839  -0.000000981  -0.000000148   0.000001016
                        -0.212822541   0.006310475  -0.090192229   0.000000028  -0.163409247   0.027304989   0.033838370  -0.235605386

   95   12.1  0.5 -0.5  -0.027929686   0.000828155  -0.281015629   0.000000066  -0.100142565   0.016733375   0.009084305  -0.063250994
                         0.000000214  -0.000000001  -0.000108481   0.000000254  -0.000011013   0.000001852  -0.000000152   0.000001079

   96   13.1  0.5 -0.5   0.000000127   0.000004277   0.000000000   0.000270119   0.000000551   0.000003299   0.000046589   0.000006691
                        -0.000000057  -0.000001925  -0.000000000  -0.000005557   0.000030917   0.000185026   0.000298390   0.000042856

   97   14.1  0.5 -0.5   0.000000019   0.000000644  -0.000000000  -0.000003297   0.000048075   0.000287710   0.000100258   0.000014399
                         0.000000042   0.000001431  -0.000000000  -0.000160031  -0.000000855  -0.000005115  -0.000015654  -0.000002248

   98   15.1  0.5 -0.5  -0.000006493   0.000000193  -0.000110644   0.000000000   0.000101774  -0.000017006   0.000029046  -0.000202238
                         0.000000000  -0.000000000  -0.000000039   0.000000000  -0.000000007   0.000000001   0.000000000  -0.000000002


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.004745205   0.000115157   0.002073083  -0.090581461  -0.000488720  -0.011741260  -0.024384871   0.000010941
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000700  -0.000000017   0.000000001  -0.000000037   0.000000000   0.000000007  -0.000000003   0.000000000
                        -0.001258879  -0.000030550  -0.002081898   0.090966592   0.000528950   0.012707760   0.023984540  -0.000010761

    3    3.1  1.5  1.5   0.001816057  -0.074833356   0.040362357   0.000923749   0.028739687  -0.001196265  -0.000001003  -0.002236100
                        -0.001300421   0.053585461  -0.008635088  -0.000197626  -0.008458630   0.000352083   0.000000369   0.000823128

    4    4.1  1.5  1.5  -0.001194165   0.049207080   0.008901020   0.000203712  -0.004537689   0.000188877   0.000003532   0.007872415
                        -0.001667559   0.068714270   0.041619599   0.000952523  -0.015369923   0.000639760   0.000009798   0.021837077

    5    5.1  1.5  1.5   0.001777381  -0.073239627  -0.039343415  -0.000900429   0.017040552  -0.000709299  -0.000009874  -0.022006047
                        -0.001270797   0.052364808   0.008441578   0.000193197  -0.005007093   0.000208416   0.000003559   0.007931568

    6    6.1  1.5  1.5  -0.001371147   0.056499826  -0.008169441  -0.000186969  -0.008718470   0.000362899   0.000000567   0.001262699
                        -0.001917420   0.079010146  -0.038051714  -0.000870867  -0.029663365   0.001234712   0.000001572   0.003503083

    7    7.1  1.5  1.5  -0.040433815  -0.000981251   0.000191799  -0.008380494  -0.000489932  -0.011770381   0.003618978  -0.000001624
                        -0.000008157  -0.000000201   0.000000010  -0.000000427   0.000000003   0.000000082  -0.000000040   0.000000000

    8    8.1  1.5  1.5  -0.000059619   0.002456698   0.154786156   0.003542498  -0.187450437   0.007802466  -0.000155681  -0.346978502
                         0.000042577  -0.001754478  -0.033214890  -0.000760169   0.055081232  -0.002292710   0.000056112   0.125061828

    9    9.1  1.5  1.5  -0.274137741  -0.006652793   0.000088584  -0.003870586   0.026567614   0.638273953  -0.338619794   0.000151930
                        -0.000054751  -0.000001346   0.000000067  -0.000002868  -0.000000204  -0.000004892   0.000002363  -0.000000001

   10   10.1  1.5  1.5  -0.000017531   0.000722414   0.033292779   0.000761952  -0.054977508   0.002288392  -0.000056108  -0.125052308
                        -0.000024589   0.001013238   0.155149135   0.003550805  -0.187097442   0.007787773  -0.000155669  -0.346952084

   11   11.1  1.5  1.5  -0.003754259  -0.000091109  -0.000358784   0.015676722   0.000098772   0.002372939   0.008711477  -0.000003909
                        -0.000000585  -0.000000014   0.000000001  -0.000000058   0.000000000   0.000000004  -0.000000020   0.000000000

   12   12.1  1.5  1.5   0.000086452  -0.003562374  -0.002275516  -0.000052078   0.000028728  -0.000001196  -0.000001056  -0.002354557
                         0.000121263  -0.004996826  -0.010488538  -0.000240045   0.000135399  -0.000005636  -0.000002918  -0.006503961

   13   13.1  1.5  1.5  -0.000340294   0.014022248  -0.000580651  -0.000013289  -0.003543761   0.000147506   0.000000771   0.001717859
                        -0.000476750   0.019645176  -0.002954580  -0.000067620  -0.012143983   0.000505483   0.000002111   0.004705727

   14   14.1  1.5  1.5  -0.000008461  -0.000000205   0.000000220  -0.000009606  -0.000000277  -0.000006663  -0.000002472   0.000000001
                        -0.000241876  -0.000005870  -0.000402852   0.017602258   0.000192051   0.004613942   0.008709049  -0.000003908

   15   15.1  1.5  1.5  -0.000088432   0.003643983  -0.010766409  -0.000246404  -0.004921305   0.000204845  -0.000001778  -0.003962645
                         0.000059408  -0.002447992   0.002319894   0.000053094   0.001383132  -0.000057572   0.000000659   0.001469742

   16   16.1  1.5  1.5  -0.006924306  -0.000168040   0.000183274  -0.008007989  -0.000231039  -0.005550596  -0.002065710   0.000000927
                        -0.000001175  -0.000000029   0.000000486  -0.000021225  -0.000000230  -0.000005516  -0.000010477   0.000000005

   17   17.1  1.5  1.5   0.000483597  -0.019927353  -0.001659897  -0.000037989   0.011085066  -0.000461406  -0.000003127  -0.006970431
                        -0.000345820   0.014249969   0.000356370   0.000008156  -0.003257992   0.000135611   0.000001128   0.002513047

   18    1.1  1.5  0.5  -0.001795088   0.073969268   0.009005871   0.000206112  -0.021490546   0.000894526   0.000006514   0.014517852
                         0.001283467  -0.052886892  -0.001931562  -0.000044206   0.006314696  -0.000262844  -0.000002348  -0.005232589

   19    2.1  1.5  0.5   0.001283215  -0.052876476   0.000258340   0.000005913   0.006760321  -0.000281393  -0.000001934  -0.004309532
                         0.001794730  -0.073954514   0.001199368   0.000027449   0.023007083  -0.000957650  -0.000005365  -0.011956873

   20    3.1  1.5  0.5  -0.040834563  -0.000990976  -0.001572812   0.068722549  -0.000036535  -0.000877730   0.023838306  -0.000010696
                         0.000019172   0.000000463  -0.000001082   0.000047299   0.000000578   0.000013883   0.000008616  -0.000000004

   21    4.1  1.5  0.5   0.000018823   0.000000454   0.000001094  -0.000047782   0.000000029   0.000000698  -0.000016451   0.000000007
                         0.042509000   0.001031611  -0.001743316   0.076172571   0.000917813   0.022050009   0.013818515  -0.000006200

   22    5.1  1.5  0.5   0.042477315   0.001030842   0.001627891  -0.071129186   0.000036703   0.000881764  -0.024695478   0.000011080
                         0.000007735   0.000000190  -0.000000009   0.000000406  -0.000000003  -0.000000077   0.000000038  -0.000000000

   23    6.1  1.5  0.5   0.000010965   0.000000269   0.000000104  -0.000004540  -0.000000001  -0.000000017  -0.000001681   0.000000001
                        -0.036746945  -0.000891777   0.001500914  -0.065581053  -0.000788664  -0.018947270  -0.011882855   0.000005332

   24    7.1  1.5  0.5  -0.000121733   0.005016204  -0.119138395  -0.002726649  -0.018253513   0.000759787  -0.000013073  -0.029136002
                         0.000087077  -0.003588080   0.025565474   0.000585102   0.005363675  -0.000223258   0.000004712   0.010501528

   25    8.1  1.5  0.5  -0.155887243  -0.003783082   0.004226292  -0.184663930   0.024726579   0.594044007   0.230514930  -0.000103427
                        -0.000033041  -0.000000812   0.000000040  -0.000001727  -0.000000123  -0.000002947   0.000001424  -0.000000000

   26    9.1  1.5  0.5  -0.000022488   0.000926659   0.089894354   0.002057358  -0.108154760   0.004501850  -0.000089866  -0.200291945
                         0.000016050  -0.000661378  -0.019290039  -0.000441480   0.031780655  -0.001322843   0.000032391   0.072191437

   27   10.1  1.5  0.5  -0.000030236  -0.000000743   0.000000037  -0.000001580  -0.000000113  -0.000002700   0.000001304  -0.000000000
                         0.160978029   0.003906625   0.004131504  -0.180522272  -0.005949150  -0.142925415   0.621249669  -0.000278740

   28   11.1  1.5  0.5   0.000313520  -0.012919052  -0.010169922  -0.000232753   0.004788526  -0.000199318  -0.000003959  -0.008823438
                        -0.000224161   0.009236846   0.002182151   0.000049942  -0.001407039   0.000058567   0.000001427   0.003180219

   29   12.1  1.5  0.5   0.000027079   0.000000658   0.000000949  -0.000041481   0.000000039   0.000000940  -0.000027075   0.000000012
                        -0.010547447  -0.000255966   0.000431837  -0.018868715  -0.000426534  -0.010247276  -0.006424227   0.000002882

   30   13.1  1.5  0.5  -0.000052777  -0.000001281  -0.000002051   0.000089609  -0.000000089  -0.000002129   0.000058349  -0.000000026
                        -0.002626386  -0.000063737   0.000107135  -0.004681162  -0.000105490  -0.002534351  -0.001591043   0.000000714

   31   14.1  1.5  0.5   0.000248203  -0.010227520   0.000025440   0.000000582   0.002443828  -0.000101722  -0.000000706  -0.001574362
                         0.000347523  -0.014320213   0.000239245   0.000005475   0.008357146  -0.000347859  -0.000001947  -0.004338425

   32   15.1  1.5  0.5   0.011203418   0.000271885   0.000430533  -0.018811744   0.000018516   0.000444838  -0.012251793   0.000005497
                         0.000012774   0.000000311  -0.000000444   0.000019392   0.000000436   0.000010472   0.000006597  -0.000000003

   33   16.1  1.5  0.5  -0.000150881   0.006217257  -0.020743635  -0.000474747  -0.009053473   0.000376843  -0.000003529  -0.007865847
                         0.000107254  -0.004419534   0.004451077   0.000101869   0.002649378  -0.000110278   0.000001275   0.002841006

   34   17.1  1.5  0.5   0.002087777   0.000050666   0.000079772  -0.003485549   0.000003159   0.000075894  -0.002272397   0.000001020
                         0.000000825   0.000000020  -0.000000019   0.000000816   0.000000018   0.000000425   0.000000274  -0.000000000

   35    1.1  1.5 -0.5  -0.090931159  -0.002206723  -0.000210799   0.009210681  -0.000932343  -0.022399084   0.015432045  -0.000006924
                        -0.000018051  -0.000000444   0.000000022  -0.000000944   0.000000008   0.000000182  -0.000000088   0.000000000

   36    2.1  1.5 -0.5   0.000018156   0.000000446  -0.000000022   0.000000952  -0.000000008  -0.000000184   0.000000089  -0.000000000
                        -0.090913099  -0.002206285   0.000028079  -0.001226875  -0.000998136  -0.023979738   0.012709794  -0.000005703

   37    3.1  1.5 -0.5   0.000806507  -0.033233327  -0.067183025  -0.001537577   0.000846040  -0.000035216  -0.000010061  -0.022423160
                        -0.000575829   0.023727786   0.014464861   0.000331048  -0.000234135   0.000009746   0.000003630   0.008091158

   38    4.1  1.5 -0.5   0.000599464  -0.024701677   0.016028415   0.000366833   0.006215788  -0.000258727   0.000002109   0.004701035
                         0.000839562  -0.034595413   0.074467126   0.001704284   0.021155776  -0.000880591   0.000005830   0.012994303

   39    5.1  1.5 -0.5  -0.000838562   0.034554192   0.069546105   0.001591660  -0.000846018   0.000035215   0.000010424   0.023232485
                         0.000599541  -0.024704860  -0.014923152  -0.000341537   0.000248517  -0.000010344  -0.000003757  -0.008373665

   40    6.1  1.5 -0.5  -0.000518745   0.021375547  -0.013755061  -0.000314804  -0.005341700   0.000222344  -0.000001807  -0.004027637
                        -0.000725376   0.029890200  -0.064122327  -0.001467529  -0.018178704   0.000756673  -0.000005016  -0.011179463

   41    7.1  1.5 -0.5  -0.006167384  -0.000149671   0.002788720  -0.121850526  -0.000791910  -0.019025240  -0.030970771   0.000013896
                        -0.000002502  -0.000000062   0.000000003  -0.000000131   0.000000001   0.000000025  -0.000000012   0.000000000

   42    8.1  1.5 -0.5   0.003077368  -0.126807517   0.180553387   0.004132217  -0.569948231   0.023723613  -0.000097300  -0.216858317
                        -0.002200346   0.090668005  -0.038745858  -0.000886754   0.167473272  -0.006970933   0.000035070   0.078163952

   43    9.1  1.5 -0.5  -0.001138471  -0.000027628  -0.002104192   0.091940744  -0.004692182  -0.112727380  -0.212904830   0.000095525
                         0.000000725   0.000000018  -0.000000001   0.000000037   0.000000003   0.000000060  -0.000000029   0.000000000

   44   10.1  1.5 -0.5   0.002272124  -0.093625776  -0.037873667  -0.000866791  -0.040291715   0.001677108   0.000094514   0.210651060
                         0.003177920  -0.130950910  -0.176504607  -0.004039555  -0.137128596   0.005707862   0.000262227   0.584446133

   45   11.1  1.5 -0.5   0.015881474   0.000385413   0.000238051  -0.010401399   0.000207745   0.004990966  -0.009379064   0.000004208
                         0.000003089   0.000000076  -0.000000004   0.000000160  -0.000000002  -0.000000042   0.000000019  -0.000000000

   46   12.1  1.5 -0.5  -0.000149368   0.006154877  -0.003918270  -0.000089675  -0.002889869   0.000120288  -0.000000966  -0.002152845
                        -0.000207866   0.008565446  -0.018457445  -0.000422424  -0.009831344   0.000409221  -0.000002716  -0.006052824

   47   13.1  1.5 -0.5  -0.000036018   0.001484182  -0.001069764  -0.000024483  -0.000712455   0.000029655  -0.000000267  -0.000594380
                        -0.000052600   0.002167462  -0.004558169  -0.000104320  -0.002432149   0.000101236  -0.000000663  -0.001477002

   48   14.1  1.5 -0.5  -0.000005628  -0.000000135   0.000000579  -0.000025322  -0.000000474  -0.000011395  -0.000010028   0.000000005
                        -0.017597460  -0.000427056   0.000005476  -0.000239257  -0.000362427  -0.008707127   0.004615240  -0.000002071

   49   15.1  1.5 -0.5  -0.000221020   0.009107448   0.018397108   0.000421044  -0.000423842   0.000017642   0.000005172   0.011528211
                         0.000158341  -0.006524655  -0.003927914  -0.000089896   0.000135458  -0.000005638  -0.000001861  -0.004148111

   50   16.1  1.5 -0.5  -0.007627988  -0.000185117   0.000485553  -0.021215808  -0.000392647  -0.009433158  -0.008363183   0.000003752
                         0.000019399   0.000000470  -0.000000004   0.000000196   0.000000437   0.000010495  -0.000005562   0.000000002

   51   17.1  1.5 -0.5  -0.000041209   0.001698094   0.003408140   0.000078000  -0.000072695   0.000003026   0.000000959   0.002137869
                         0.000029476  -0.001214616  -0.000730502  -0.000016719   0.000021804  -0.000000908  -0.000000346  -0.000770263

   52    1.1  1.5 -1.5   0.000093689  -0.003860603  -0.088565333  -0.002026941  -0.011264992   0.000468896  -0.000010293  -0.022940267
                        -0.000066958   0.002759114   0.019004813   0.000434952   0.003310160  -0.000137783   0.000003710   0.008268381

   53    2.1  1.5 -1.5   0.000017750  -0.000731410  -0.019085653  -0.000436802  -0.003582634   0.000149124  -0.000003649  -0.008132641
                         0.000024865  -0.001024605  -0.088941884  -0.002035559  -0.012192288   0.000507494  -0.000010124  -0.022563651

   54    3.1  1.5 -1.5  -0.092040348  -0.002233641   0.000944652  -0.041275707  -0.001247001  -0.029958602   0.002382734  -0.000001069
                        -0.000083967  -0.000002044  -0.000000583   0.000025498  -0.000000544  -0.000013069   0.000016151  -0.000000007

   55    4.1  1.5 -1.5   0.000079765   0.000001941  -0.000000670   0.000029266   0.000000851   0.000020451  -0.000001560   0.000000001
                        -0.084516160  -0.002051044  -0.000974062   0.042560760  -0.000667058  -0.016025752   0.023212774  -0.000010415

   56    5.1  1.5 -1.5  -0.090033970  -0.002184950  -0.000920922   0.040238844  -0.000739285  -0.017760952   0.023391791  -0.000010495
                        -0.000017547  -0.000000431   0.000000021  -0.000000917   0.000000007   0.000000178  -0.000000086   0.000000000

   57    6.1  1.5 -1.5   0.000026427   0.000000648  -0.000000092   0.000004013   0.000000082   0.000001961  -0.000000075   0.000000000
                        -0.097133068  -0.002357232   0.000890711  -0.038918796  -0.001286938  -0.030918068   0.003723708  -0.000001671

   58    7.1  1.5 -1.5  -0.000798209   0.032891396  -0.008193874  -0.000187528  -0.011292954   0.000470060   0.000001528   0.003404596
                         0.000570714  -0.023517004   0.001758722   0.000040251   0.003318290  -0.000138121  -0.000000551  -0.001227079

   59    8.1  1.5 -1.5   0.003018867   0.000073262   0.003623140  -0.158309769   0.008132342   0.195375558   0.368828607  -0.000165485
                        -0.000001047  -0.000000026   0.000000001  -0.000000064  -0.000000004  -0.000000106   0.000000051  -0.000000000

   60    9.1  1.5 -1.5  -0.005411796   0.223001124  -0.003783835  -0.000086598   0.612384596  -0.025489991  -0.000142930  -0.318560133
                         0.003869383  -0.159442788   0.000814888   0.000018651  -0.179940951   0.007489890   0.000051515   0.114816404

   61   10.1  1.5 -1.5  -0.000001408  -0.000000035   0.000000001  -0.000000064  -0.000000004  -0.000000105   0.000000052  -0.000000000
                        -0.001244400  -0.000030199  -0.003631637   0.158681011  -0.008117028  -0.195007639  -0.368800526   0.000165472

   62   11.1  1.5 -1.5  -0.000074116   0.003054050   0.015327808   0.000350798   0.002276682  -0.000094765   0.000003677   0.008195400
                         0.000052987  -0.002183402  -0.003289062  -0.000075275  -0.000668995   0.000027846  -0.000001325  -0.002953854

   63   12.1  1.5 -1.5   0.000007144   0.000000173  -0.000000556   0.000024278   0.000000442   0.000010610   0.000009716  -0.000000004
                         0.006136671   0.000148925   0.000245629  -0.010732511   0.000005744   0.000138005  -0.006917034   0.000003104

   64   13.1  1.5 -1.5  -0.000014530  -0.000000351   0.000001194  -0.000052171  -0.000000986  -0.000023685  -0.000020479   0.000000009
                        -0.024136200  -0.000585739   0.000068903  -0.003010644  -0.000526564  -0.012650455   0.005009440  -0.000002248

   65   14.1  1.5 -1.5   0.000003246  -0.000133756  -0.003702505  -0.000084737  -0.001307180   0.000054410  -0.000001326  -0.002955375
                         0.000004895  -0.000201705  -0.017208458  -0.000393840  -0.004424905   0.000184183  -0.000003676  -0.008192270

   66   15.1  1.5 -1.5   0.004388064   0.000106490  -0.000252060   0.011013509   0.000212767   0.005111619   0.004226248  -0.000001896
                        -0.000127168  -0.000003086  -0.000000214   0.000009368  -0.000002515  -0.000060414   0.000039025  -0.000000018

   67   16.1  1.5 -1.5  -0.000136697   0.005632793  -0.007825297  -0.000179093  -0.005323889   0.000221602  -0.000000870  -0.001939781
                         0.000097731  -0.004027115   0.001700902   0.000038928   0.001570146  -0.000065356   0.000000319   0.000710294

   68   17.1  1.5 -1.5  -0.024498183  -0.000594524  -0.000038855   0.001697722  -0.000480922  -0.011553925   0.007409609  -0.000003325
                        -0.000006667  -0.000000163  -0.000000004   0.000000176  -0.000000028  -0.000000674   0.000000648  -0.000000000

   69    1.1  0.5  0.5   0.000008101  -0.000333828   0.000008027   0.000000184  -0.000035153   0.000001463   0.000000016   0.000034802
                        -0.000005792   0.000238680  -0.000001721  -0.000000039   0.000010329  -0.000000430  -0.000000006  -0.000012544

   70    2.1  0.5  0.5   0.000000141   0.000000003   0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000687561  -0.000016686   0.000002708  -0.000118341   0.000002393   0.000057500   0.000022760  -0.000000010

   71    3.1  0.5  0.5   0.000717462   0.000017411  -0.000005639   0.000246407  -0.000002794  -0.000067133  -0.000022715   0.000000010
                         0.000000147   0.000000004   0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000

   72    4.1  0.5  0.5   0.000000742  -0.000030567   0.000378825   0.000008670  -0.000023561   0.000000981  -0.000000002  -0.000004306
                        -0.000000530   0.000021852  -0.000081291  -0.000001860   0.000006923  -0.000000288   0.000000001   0.000001552

   73    5.1  0.5  0.5   0.000000054   0.000000001   0.000000000  -0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000000
                        -0.000282643  -0.000006859   0.000006324  -0.000276318   0.000001678   0.000040316  -0.000024054   0.000000011

   74    6.1  0.5  0.5   0.000139236   0.000003379   0.000007872  -0.000343941   0.000000247   0.000005933   0.000023685  -0.000000011
                         0.000000029   0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000

   75    7.1  0.5  0.5   0.000002744  -0.000113089   0.000037976   0.000000869  -0.000005489   0.000000228  -0.000000008  -0.000017443
                         0.000003838  -0.000158163   0.000176970   0.000004050  -0.000018679   0.000000778  -0.000000022  -0.000048396

   76    8.1  0.5  0.5  -0.002964499   0.122156005   0.104533471   0.002392394   0.006287933  -0.000261730   0.000033153   0.073890432
                        -0.004146429   0.170859784   0.487151101   0.011149134   0.021397026  -0.000890633   0.000091982   0.205006541

   77    9.1  0.5  0.5  -0.000050341  -0.000001238   0.000000061  -0.000002636   0.000000029   0.000000692  -0.000000334   0.000000000
                         0.276542444   0.006711150   0.010620244  -0.464041762   0.000329089   0.007906193  -0.219023292   0.000098271

   78   10.1  0.5  0.5   0.263663942   0.006398615  -0.010792717   0.471577780   0.007722139   0.185520635   0.116243274  -0.000052156
                         0.000057547   0.000001415  -0.000000070   0.000003013  -0.000000033  -0.000000791   0.000000382  -0.000000000

   79   11.1  0.5  0.5  -0.007036347   0.289941511  -0.044083059  -0.001008904  -0.061331310   0.002552864   0.000003393   0.007561973
                        -0.009841086   0.405516633  -0.205408460  -0.004701060  -0.208724996   0.008688002   0.000009414   0.020982356

   80   12.1  0.5  0.5  -0.010657707   0.439166699  -0.007062631  -0.000161638  -0.185693689   0.007729343   0.000043252   0.096400462
                         0.007620159  -0.313998240   0.001521312   0.000034819   0.054563586  -0.002271163  -0.000015589  -0.034744945

   81   13.1  0.5  0.5  -0.000041779  -0.000001027   0.000000051  -0.000002187   0.000000011   0.000000271  -0.000000131   0.000000000
                         0.203018390   0.004926864  -0.002768051   0.120947406   0.001879105   0.045144570   0.001644929  -0.000000738

   82   14.1  0.5  0.5  -0.206248082  -0.005005242  -0.002640021   0.115353282  -0.000998785  -0.023995333   0.038308105  -0.000017188
                        -0.000039956  -0.000000982   0.000000049  -0.000002091   0.000000011   0.000000259  -0.000000125   0.000000000

   83   15.1  0.5  0.5   0.000063786  -0.002628401  -0.230966377  -0.005285988  -0.020293331   0.000844693  -0.000016855  -0.037565836
                        -0.000045532   0.001876238   0.049562072   0.001134297   0.005963078  -0.000248208   0.000006075   0.013539894

   84    1.1  0.5 -0.5  -0.000410377  -0.000009959   0.000000188  -0.000008209   0.000001525   0.000036639  -0.000036993   0.000000017
                        -0.000000080  -0.000000002  -0.000000000   0.000000002  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   85    2.1  0.5 -0.5   0.000009705  -0.000399899   0.000024828   0.000000568  -0.000016210   0.000000675  -0.000000003  -0.000007717
                         0.000013573  -0.000559303   0.000115707   0.000002648  -0.000055167   0.000002296  -0.000000010  -0.000021412

   86    3.1  0.5 -0.5   0.000014163  -0.000583628   0.000240923   0.000005514  -0.000064410   0.000002681  -0.000000010  -0.000021369
                        -0.000010127   0.000417290  -0.000051698  -0.000001183   0.000018926  -0.000000788   0.000000003   0.000007702

   87    4.1  0.5 -0.5  -0.000037574  -0.000000912   0.000008867  -0.000387449   0.000001022   0.000024557   0.000004578  -0.000000002
                        -0.000000005  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   88    5.1  0.5 -0.5   0.000003989  -0.000164387   0.000057973   0.000001327  -0.000011366   0.000000473   0.000000004   0.000008156
                         0.000005580  -0.000229922   0.000270168   0.000006183  -0.000038680   0.000001610   0.000000010   0.000022629

   89    6.1  0.5 -0.5   0.000002749  -0.000113263  -0.000336286  -0.000007696   0.000005692  -0.000000237   0.000000010   0.000022282
                        -0.000001965   0.000080983   0.000072163   0.000001652  -0.000001672   0.000000070  -0.000000004  -0.000008031

   90    7.1  0.5 -0.5  -0.000000043  -0.000000001   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000194435   0.000004719  -0.000004142   0.000180999  -0.000000810  -0.000019469  -0.000051443   0.000000023

   91    8.1  0.5 -0.5   0.000036717   0.000000903  -0.000000045   0.000001920  -0.000000021  -0.000000506   0.000000245  -0.000000000
                        -0.210036078  -0.005097169  -0.011402927   0.498240345   0.000928294   0.022301813   0.217916218  -0.000097774

   92    9.1  0.5 -0.5  -0.003903226   0.160837422   0.097357597   0.002228164  -0.002228293   0.000092751   0.000033321   0.074265733
                        -0.005459337   0.224960107   0.453713847   0.010383876  -0.007585684   0.000315748   0.000092449   0.206048061

   93   10.1  0.5 -0.5   0.005204962  -0.214478225   0.461080946   0.010552482   0.177995459  -0.007408910   0.000049066   0.109356678
                        -0.003721646   0.153355040  -0.098944246  -0.002264478  -0.052302222   0.002177036  -0.000017685  -0.039415932

   94   11.1  0.5 -0.5   0.000101679   0.000002500  -0.000000124   0.000005315  -0.000000058  -0.000001393   0.000000674  -0.000000000
                        -0.498507582  -0.012097816   0.004808102  -0.210085582  -0.009055301  -0.217549198   0.022303423  -0.000010007

   95   12.1  0.5 -0.5   0.539872460   0.013101661  -0.000165346   0.007224619   0.008056111   0.193544132  -0.102470777   0.000045976
                         0.000107815   0.000002651  -0.000000131   0.000005647  -0.000000062  -0.000001483   0.000000715  -0.000000000

   96   13.1  0.5 -0.5  -0.002865576   0.118079666  -0.025378002  -0.000580812  -0.012727142   0.000529756  -0.000000250  -0.000557883
                        -0.004007800   0.165147391  -0.118254945  -0.002706430  -0.043313417   0.001802884  -0.000000694  -0.001547436

   97   14.1  0.5 -0.5  -0.004071593   0.167776064   0.112786230   0.002581271  -0.023022067   0.000958274   0.000016170   0.036038705
                         0.002911113  -0.119956098  -0.024200121  -0.000553853   0.006764645  -0.000281573  -0.000005828  -0.012989330

   98   15.1  0.5 -0.5  -0.003229359  -0.000078370  -0.005406321   0.236224187   0.000880405   0.021151302   0.039931451  -0.000017916
                         0.000001823   0.000000045  -0.000000002   0.000000095  -0.000000000  -0.000000012   0.000000006  -0.000000000


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.000704212  -0.005812303  -0.004393772   0.035646375  -0.000648162  -0.030341178  -0.000002954   0.000043985
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000015   0.000000127  -0.000000000   0.000000001  -0.000000000  -0.000000024  -0.000000000  -0.000000000
                        -0.000288346   0.002379905   0.004189824  -0.033991754   0.000696412   0.032599826   0.000003217  -0.000047910

    3    3.1  1.5  1.5  -0.024326138  -0.002947329   0.019484720   0.002401687   0.017633904  -0.000376703  -0.000018805  -0.000001263
                        -0.019910180  -0.002412295   0.003224996   0.000397513   0.020114609  -0.000429698   0.000021098   0.000001417

    4    4.1  1.5  1.5  -0.021243513  -0.002573840  -0.004100899  -0.000505477  -0.015291322   0.000326660  -0.000032527  -0.000002184
                         0.025948425   0.003143883   0.024827261   0.003060208   0.013391685  -0.000286080  -0.000028969  -0.000001945

    5    5.1  1.5  1.5  -0.010116470  -0.001225700  -0.043496129  -0.005361333   0.000455501  -0.000009731  -0.000017802  -0.000001195
                        -0.008293206  -0.001004795  -0.007160168  -0.000882563   0.000518904  -0.000011085   0.000020006   0.000001343

    6    6.1  1.5  1.5  -0.008217968  -0.000995680  -0.000001365  -0.000000168   0.032703102  -0.000698619   0.000066674   0.000004477
                         0.010028707   0.001215068   0.000000001   0.000000000  -0.028695887   0.000613015   0.000059326   0.000003984

    7    7.1  1.5  1.5  -0.004817090   0.039758453   0.002188386  -0.017754224  -0.000590241  -0.027629816  -0.000003187   0.000047462
                        -0.000000181   0.000001482  -0.000000001   0.000000008  -0.000000006  -0.000000279   0.000000000  -0.000000000

    8    8.1  1.5  1.5   0.230955481   0.027982312  -0.381918275  -0.047075251   0.106484714  -0.002274781   0.330325579   0.022181883
                         0.189325225   0.022938433  -0.062867990  -0.007749108   0.121365356  -0.002592664  -0.371225367  -0.024928387

    9    9.1  1.5  1.5   0.041357309  -0.341347699  -0.021752030   0.176472708   0.004527119   0.211919341   0.000020847  -0.000310440
                         0.000001531  -0.000012562   0.000000011  -0.000000065   0.000000048   0.000002362  -0.000000000   0.000000001

   10   10.1  1.5  1.5   0.199083075   0.024120682  -0.026358453  -0.003248943   0.281318348  -0.006009653   0.372683411   0.025026297
                        -0.242856661  -0.029424244   0.160135205   0.019738269  -0.246824422   0.005272782   0.331622981   0.022269006

   11   11.1  1.5  1.5  -0.000920358   0.007596289   0.001842775  -0.014950306   0.000144316   0.006755602   0.000000602  -0.000008964
                        -0.000000025   0.000000203  -0.000000003   0.000000020  -0.000000001  -0.000000059   0.000000000  -0.000000000

   12   12.1  1.5  1.5   0.005766696   0.000698686   0.001340564   0.000165238   0.010677633  -0.000228100   0.000022783   0.000001530
                        -0.007012016  -0.000849568  -0.008359123  -0.001030346  -0.009391467   0.000200625   0.000020266   0.000001361

   13   13.1  1.5  1.5  -0.006402673  -0.000775741  -0.000620728  -0.000076511   0.008433623  -0.000180163   0.000016798   0.000001128
                         0.007760758   0.000940285   0.004233304   0.000521797  -0.007349183   0.000156997   0.000014967   0.000001005

   14   14.1  1.5  1.5  -0.000001913   0.000015791   0.000000184  -0.000001495  -0.000000357  -0.000016708  -0.000000002   0.000000028
                        -0.000108129   0.000892461   0.001578703  -0.012807911   0.000262308   0.012278919   0.000001241  -0.000018478

   15   15.1  1.5  1.5   0.005198275   0.000629817  -0.015495114  -0.001909928  -0.005295167   0.000113118   0.000002055   0.000000138
                         0.004348827   0.000526899  -0.002511255  -0.000309537  -0.006068321   0.000129634  -0.000002251  -0.000000151

   16   16.1  1.5  1.5  -0.001586357   0.013093191   0.000151327  -0.001227704  -0.000297104  -0.013907738  -0.000001551   0.000023094
                         0.000000067  -0.000000556  -0.000001897   0.000015388  -0.000000317  -0.000014851  -0.000000002   0.000000022

   17   17.1  1.5  1.5  -0.008409864  -0.001018930  -0.009066674  -0.001117558   0.003993642  -0.000085314  -0.000010053  -0.000000675
                        -0.006892580  -0.000835097  -0.001491790  -0.000183878   0.004551867  -0.000097239   0.000011298   0.000000759

   18    1.1  1.5  0.5  -0.032050054  -0.003883149   0.018629708   0.002296298  -0.007667423   0.000163796   0.000043283   0.000002907
                        -0.026273079  -0.003183217   0.003066549   0.000377983  -0.008739030   0.000186687  -0.000048642  -0.000003266

   19    2.1  1.5  0.5   0.007529827   0.000912306  -0.005162608  -0.000636343   0.024609740  -0.000525725   0.000072473   0.000004867
                        -0.009185515  -0.001112907   0.031362523   0.003865745  -0.021592339   0.000461266   0.000064488   0.000004330

   20    3.1  1.5  0.5   0.000043109  -0.000355807   0.004609077  -0.037393127  -0.000658353  -0.030818190  -0.000006151   0.000091604
                        -0.000000120   0.000000985  -0.000002442   0.000019810   0.000000573   0.000026816   0.000000005  -0.000000072

   21    4.1  1.5  0.5  -0.000000047   0.000000381  -0.000003149   0.000025550   0.000000448   0.000020963   0.000000004  -0.000000063
                         0.000403134  -0.003327318  -0.003388174   0.027488024   0.000829569   0.038833021   0.000006685  -0.000099552

   22    5.1  1.5  0.5   0.005686868  -0.046937270   0.000455332  -0.003694081  -0.000201851  -0.009448849  -0.000003450   0.000051370
                         0.000000209  -0.000001717   0.000000026  -0.000000206   0.000000001   0.000000088  -0.000000000   0.000000000

   23    6.1  1.5  0.5   0.000000209  -0.000001720  -0.000000305   0.000002473   0.000000049   0.000002295   0.000000000  -0.000000007
                        -0.005598994   0.046211998  -0.001876154   0.015221109   0.000095981   0.004492971   0.000003265  -0.000048618

   24    7.1  1.5  0.5  -0.004424900  -0.000536116  -0.028513229  -0.003514541  -0.019969164   0.000426590   0.000032394   0.000002175
                        -0.003627570  -0.000439512  -0.004693819  -0.000578560  -0.022759972   0.000486209  -0.000036405  -0.000002445

   25    8.1  1.5  0.5  -0.037422449   0.308870859   0.042794714  -0.347190569   0.000034370   0.001608942   0.019287463  -0.287222673
                        -0.000001236   0.000010144  -0.000000009   0.000000049  -0.000000039  -0.000001913  -0.000000020   0.000000412

   26    9.1  1.5  0.5  -0.021387543  -0.002591287  -0.382541957  -0.047152123  -0.246346059   0.005262557  -0.381651493  -0.025628499
                        -0.017535675  -0.002124601  -0.062973405  -0.007762102  -0.280774319   0.005998030   0.428906280   0.028801754

   27   10.1  1.5  0.5  -0.000001415   0.000011612  -0.000000011   0.000000065  -0.000000044  -0.000002181   0.000000021  -0.000000414
                         0.034196412  -0.282244329   0.005089983  -0.041294713   0.007888898   0.369287897   0.019339287  -0.287994414

   28   11.1  1.5  0.5   0.010595857   0.001283782  -0.010507867  -0.001295200  -0.000107318   0.000002292  -0.000010981  -0.000000737
                         0.008685948   0.001052380  -0.001729726  -0.000213206  -0.000122270   0.000002612   0.000012341   0.000000829

   29   12.1  1.5  0.5   0.000002850  -0.000023520  -0.000002829   0.000022956   0.000000337   0.000015800   0.000000002  -0.000000036
                        -0.001085885   0.008962488   0.000821091  -0.006661453  -0.000262740  -0.012299163  -0.000001697   0.000025269

   30   13.1  1.5  0.5  -0.000005882   0.000048549   0.000006188  -0.000050200  -0.000000738  -0.000034532  -0.000000005   0.000000081
                        -0.001814882   0.014979357  -0.001206274   0.009786417   0.000173144   0.008105034   0.000002260  -0.000033660

   31   14.1  1.5  0.5   0.002830859   0.000342984  -0.001954108  -0.000240863   0.009262639  -0.000197873   0.000027722   0.000001862
                        -0.003468062  -0.000420186   0.011815755   0.001456410  -0.008146479   0.000174029   0.000024625   0.000001654

   32   15.1  1.5  0.5   0.001230387  -0.010155150  -0.001314111   0.010661293   0.000157791   0.007386342   0.000001169  -0.000017412
                        -0.000006188   0.000051072  -0.000007539   0.000061160   0.000001402   0.000065653   0.000000014  -0.000000215

   33   16.1  1.5  0.5  -0.006031515  -0.000730772  -0.007366794  -0.000908031  -0.008069444   0.000172383   0.000017258   0.000001159
                        -0.004937475  -0.000598219  -0.001227334  -0.000151281  -0.009174729   0.000195995  -0.000019462  -0.000001307

   34   17.1  1.5  0.5   0.001751796  -0.014458664   0.001146629  -0.009302525  -0.000205707  -0.009629366  -0.000002440   0.000036339
                         0.000000019  -0.000000155  -0.000000106   0.000000859   0.000000025   0.000001163   0.000000000  -0.000000004

   35    1.1  1.5 -0.5  -0.005021127   0.041442498  -0.002327199   0.018880406   0.000248357   0.011625834   0.000004372  -0.000065112
                        -0.000000190   0.000001562  -0.000000030   0.000000239   0.000000000  -0.000000019   0.000000000   0.000000000

   36    2.1  1.5 -0.5  -0.000000055   0.000000457  -0.000000029   0.000000234   0.000000004   0.000000190  -0.000000000   0.000000000
                         0.001439049  -0.011877372   0.003917769  -0.031784593  -0.000699395  -0.032739401  -0.000006514   0.000097011

   37    3.1  1.5 -0.5  -0.000274534  -0.000033262   0.036893318   0.004547471  -0.020304967   0.000433764   0.000060948   0.000004093
                        -0.000226342  -0.000027424   0.006093392   0.000751072  -0.023183396   0.000495255  -0.000068386  -0.000004592

   38    4.1  1.5 -0.5  -0.002109204  -0.000255548  -0.004490148  -0.000553456   0.029204201  -0.000623874   0.000074330   0.000004991
                         0.002573383   0.000311789   0.027118825   0.003342667  -0.025595285   0.000546779   0.000066225   0.000004447

   39    5.1  1.5 -0.5  -0.036299470  -0.004398004   0.003645056   0.000449290  -0.006231612   0.000133123   0.000034148   0.000002293
                        -0.029756610  -0.003605277   0.000599834   0.000073935  -0.007102659   0.000151730  -0.000038377  -0.000002577

   40    6.1  1.5 -0.5   0.029296789   0.003549566  -0.002474837  -0.000305048   0.003378832  -0.000072180   0.000036317   0.000002439
                        -0.035738591  -0.004330049   0.015018566   0.001851189  -0.002961466   0.000063265   0.000032324   0.000002171

   41    7.1  1.5 -0.5  -0.000693247   0.005721801   0.003561843  -0.028896992   0.000646822   0.030278439   0.000003272  -0.000048731
                        -0.000000003   0.000000021  -0.000000002   0.000000020   0.000000000   0.000000020  -0.000000000   0.000000000

   42    8.1  1.5 -0.5   0.238868045   0.028940990   0.342579773   0.042226387   0.001059687  -0.000022638  -0.190932527  -0.012821420
                         0.195814363   0.023724644   0.056394947   0.006951245   0.001210686  -0.000025861   0.214573144   0.014408936

   43    9.1  1.5 -0.5  -0.003350925   0.027657312   0.047786744  -0.387690596   0.007979403   0.373524562  -0.038553353   0.574124080
                         0.000000175  -0.000001436   0.000000000   0.000000000   0.000000006   0.000000279   0.000000041  -0.000000826

   44   10.1  1.5 -0.5  -0.178932172  -0.021679219   0.006707524   0.000826766   0.277588407  -0.005929973   0.215149681   0.014447651
                         0.218277665   0.026446287  -0.040746318  -0.005022389  -0.243553335   0.005202897   0.191445547   0.012855870

   45   11.1  1.5 -0.5   0.001660000  -0.013701018   0.001312631  -0.010649282   0.000003475   0.000162687  -0.000001109   0.000016519
                         0.000000065  -0.000000533   0.000000008  -0.000000060   0.000000001   0.000000031   0.000000000  -0.000000000

   46   12.1  1.5 -0.5   0.005663972   0.000686240   0.001059383   0.000130580  -0.009234731   0.000197277  -0.000018901  -0.000001269
                        -0.006945945  -0.000841563  -0.006576715  -0.000810646   0.008123386  -0.000173535  -0.000016770  -0.000001126

   47   13.1  1.5 -0.5   0.009534364   0.001155173  -0.001540095  -0.000189832   0.006069695  -0.000129664   0.000025199   0.000001692
                        -0.011553328  -0.001399788   0.009664605   0.001191259  -0.005371366   0.000114746   0.000022315   0.000001498

   48   14.1  1.5 -0.5  -0.000001153   0.000009519   0.000001097  -0.000008898   0.000000315   0.000014753   0.000000002  -0.000000031
                         0.000542396  -0.004476731   0.001476193  -0.011976249  -0.000263514  -0.012335371  -0.000002490   0.000037080

   49   15.1  1.5 -0.5  -0.007820986  -0.000947582  -0.010529643  -0.001297884   0.004920770  -0.000105120  -0.000011414  -0.000000766
                        -0.006477798  -0.000784843  -0.001671388  -0.000206015   0.005508936  -0.000117685   0.000013151   0.000000883

   50   16.1  1.5 -0.5  -0.000944401   0.007794729   0.000920545  -0.007468319   0.000261017   0.012218484   0.000001747  -0.000026012
                        -0.000000679   0.000005606  -0.000001779   0.000014431   0.000000317   0.000014826   0.000000003  -0.000000045

   51   17.1  1.5 -0.5  -0.011181534  -0.001354742   0.009178845   0.001131385  -0.006349858   0.000135649   0.000024159   0.000001622
                        -0.009166583  -0.001110613   0.001511877   0.000186354  -0.007239061   0.000154644  -0.000027145  -0.000001823

   52    1.1  1.5 -1.5   0.004494876   0.000544594   0.035172981   0.004335422   0.020010527  -0.000427474  -0.000029239  -0.000001963
                         0.003684964   0.000446466   0.005790116   0.000713690   0.022807146  -0.000487217   0.000032860   0.000002207

   53    2.1  1.5 -1.5  -0.001508943  -0.000182822  -0.005521352  -0.000680562  -0.024504932   0.000523486  -0.000035791  -0.000002403
                         0.001840391   0.000222979   0.033540334   0.004134182   0.021500162  -0.000459296  -0.000031848  -0.000002139

   54    3.1  1.5 -1.5   0.003808662  -0.031435261   0.002434360  -0.019749801   0.000571441   0.026749803   0.000001898  -0.000028262
                         0.000003068  -0.000025319  -0.000002123   0.000017222  -0.000000229  -0.000010709  -0.000000002   0.000000024

   55    4.1  1.5 -1.5  -0.000002753   0.000022722  -0.000001688   0.000013693  -0.000000395  -0.000018499  -0.000000001   0.000000019
                         0.004063083  -0.033535162  -0.003101674   0.025163666  -0.000434221  -0.020326372  -0.000002925   0.000043557

   56    5.1  1.5 -1.5   0.001584915  -0.013081293  -0.005433490   0.044081530   0.000014750   0.000690466   0.000001798  -0.000026780
                         0.000000040  -0.000000327  -0.000000011   0.000000089   0.000000004   0.000000169  -0.000000000   0.000000000

   57    6.1  1.5 -1.5  -0.000000348   0.000002870  -0.000000166   0.000001346  -0.000000046  -0.000002142  -0.000000000   0.000000002
                         0.001570913  -0.012965722  -0.000000028   0.000000223   0.000929438   0.043508009   0.000005993  -0.000089247

   58    7.1  1.5 -1.5  -0.030747667  -0.003725354  -0.017518441  -0.002159324   0.018222546  -0.000389278  -0.000031551  -0.000002119
                        -0.025205466  -0.003053866  -0.002883864  -0.000355466   0.020768859  -0.000443674   0.000035457   0.000002381

   59    8.1  1.5 -1.5  -0.036182614   0.298637698  -0.047708782   0.387058074   0.003449136   0.161457561  -0.033368554   0.496913736
                        -0.000001447   0.000011925  -0.000000335   0.000002709   0.000000023   0.000000913   0.000000036  -0.000000714

   60    9.1  1.5 -1.5   0.263985157   0.031984154   0.174129091   0.021463155  -0.139766212   0.002985749   0.000206367   0.000013858
                         0.216402607   0.026219093   0.028664900   0.003533240  -0.159295993   0.003402957  -0.000231918  -0.000015574

   61   10.1  1.5 -1.5   0.000001344  -0.000011082   0.000000333  -0.000002695  -0.000000026  -0.000001063   0.000000036  -0.000000716
                        -0.038047253   0.314027751  -0.020003872   0.162290024   0.007994884   0.374248992   0.033499614  -0.498865439

   62   11.1  1.5 -1.5  -0.005874629  -0.000711763  -0.014751759  -0.001818302  -0.004455391   0.000095178   0.000005959   0.000000400
                        -0.004815843  -0.000583482  -0.002428430  -0.000299328  -0.005078154   0.000108482  -0.000006697  -0.000000450

   63   12.1  1.5 -1.5  -0.000001700   0.000014031  -0.000004318   0.000035029  -0.000000371  -0.000017385  -0.000000000   0.000000006
                        -0.001099966   0.009078709   0.001043502  -0.008465863   0.000303776   0.014220098   0.000002048  -0.000030492

   64   13.1  1.5 -1.5   0.000003775  -0.000031158   0.000009262  -0.000075140   0.000000808   0.000037815   0.000000001  -0.000000015
                         0.001218973  -0.010060945  -0.000527295   0.004277911   0.000238969   0.011186378   0.000001511  -0.000022499

   65   14.1  1.5 -1.5  -0.000578027  -0.000070033  -0.002081891  -0.000256614  -0.009218915   0.000196939  -0.000013823  -0.000000928
                         0.000680163   0.000082408   0.012637575   0.001557708   0.008110717  -0.000173265  -0.000012263  -0.000000823

   66   15.1  1.5 -1.5  -0.000821113   0.006777154  -0.001934842   0.015697244  -0.000172048  -0.008053747  -0.000000205   0.000003048
                         0.000008171  -0.000067439  -0.000004807   0.000038999   0.000000467   0.000021840   0.000000003  -0.000000039

   67   16.1  1.5 -1.5  -0.010125112  -0.001226748  -0.001208900  -0.000149009   0.009183555  -0.000196183  -0.000015335  -0.000001030
                        -0.008301432  -0.001005792  -0.000214602  -0.000026452   0.010444506  -0.000223120   0.000017268   0.000001160

   68   17.1  1.5 -1.5   0.001317424  -0.010873522  -0.001132585   0.009188581   0.000129360   0.006055466   0.000001016  -0.000015123
                         0.000000183  -0.000001507  -0.000000091   0.000000740  -0.000000001  -0.000000055   0.000000000  -0.000000000

   69    1.1  0.5  0.5  -0.059483515  -0.007206959  -0.085272779  -0.010510724   0.085041573  -0.001816697  -0.000193870  -0.000013019
                        -0.048761700  -0.005907911  -0.014037093  -0.001730214   0.096925253  -0.002070563   0.000217875   0.000014631

   70    2.1  0.5  0.5   0.000000561  -0.000004624   0.000000116  -0.000000935  -0.000000006  -0.000000217   0.000000000  -0.000000000
                        -0.014531709   0.119939266  -0.013221225   0.107262891   0.001341156   0.062780906   0.000018722  -0.000278796

   71    3.1  0.5  0.5   0.014877223  -0.122791017   0.008142991  -0.066063526  -0.002187451  -0.102396896  -0.000022628   0.000336970
                         0.000000542  -0.000004468   0.000000116  -0.000000935  -0.000000006  -0.000000247   0.000000000  -0.000000000

   72    4.1  0.5  0.5   0.014389621   0.001743429   0.134966054   0.016635917   0.068768753  -0.001469069  -0.000092896  -0.000006238
                         0.011796950   0.001429304   0.022217833   0.002738570   0.078379752  -0.001674384   0.000104398   0.000007011

   73    5.1  0.5  0.5  -0.000000286   0.000002347   0.000000021  -0.000000177  -0.000000014  -0.000000667   0.000000000  -0.000000000
                         0.005706393  -0.047098412   0.005034865  -0.040847523   0.003462028   0.162061298   0.000019590  -0.000291730

   74    6.1  0.5  0.5  -0.007416731   0.061214922   0.019556621  -0.158661521   0.000628504   0.029421005  -0.000000761   0.000011330
                        -0.000000196   0.000001606   0.000000022  -0.000000179  -0.000000011  -0.000000526   0.000000000  -0.000000000

   75    7.1  0.5  0.5  -0.105712619  -0.012808021  -0.003895247  -0.000480130   0.028372092  -0.000606098   0.000000317   0.000000021
                         0.128956735   0.015624257   0.023659762   0.002916303  -0.024894039   0.000531797   0.000000282   0.000000019

   76    8.1  0.5  0.5   0.015299583   0.001853683  -0.075739606  -0.009335664  -0.144455987   0.003085934  -0.000051295  -0.000003445
                        -0.018667146  -0.002261694   0.460098113   0.056711697   0.126742049  -0.002707520  -0.000045643  -0.000003065

   77    9.1  0.5  0.5  -0.000001342   0.000011019  -0.000000010   0.000000057  -0.000000042  -0.000002072   0.000000000  -0.000000001
                         0.040653445  -0.335538290  -0.046411129   0.376530298  -0.000056142  -0.002628132   0.000003390  -0.000050482

   78   10.1  0.5  0.5   0.037082316  -0.306063493   0.005505285  -0.044664030   0.008573170   0.401319414   0.000043439  -0.000646874
                         0.000001534  -0.000012594   0.000000011  -0.000000066   0.000000048   0.000002369  -0.000000000   0.000000001

   79   11.1  0.5  0.5   0.081053399   0.009820341  -0.029091118  -0.003585773   0.343719550  -0.007342697   0.000905523   0.000060807
                        -0.098874349  -0.011979504   0.176732922   0.021784104  -0.301575199   0.006442392   0.000805756   0.000054108

   80   12.1  0.5  0.5   0.346658756   0.042000794  -0.172818644  -0.021301628   0.100229668  -0.002141158  -0.000461674  -0.000031002
                         0.284174253   0.034430233  -0.028446505  -0.003506314   0.114237782  -0.002440400   0.000518838   0.000034841

   81   13.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000057
                         0.000000581  -0.000004793  -0.000001519   0.000012322   0.000001042   0.000048794  -0.002647861   0.039431086

   82   14.1  0.5  0.5  -0.000004847   0.000040005  -0.000007003   0.000056817   0.000002249   0.000105257  -0.002647453   0.039425014
                        -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000003  -0.000000057

   83   15.1  0.5  0.5  -0.000026308  -0.000003187   0.000012921   0.000001593  -0.000068013   0.000001453  -0.026194611  -0.001759009
                        -0.000021566  -0.000002613   0.000002126   0.000000262  -0.000077518   0.000001656   0.029437938   0.001976805

   84    1.1  0.5 -0.5   0.009318995  -0.076915486  -0.010652181   0.086420407   0.002754564   0.128944072   0.000019584  -0.000291642
                         0.000000354  -0.000002897  -0.000000043   0.000000362   0.000000021   0.000000995  -0.000000000   0.000000001

   85    2.1  0.5 -0.5  -0.076037174  -0.009212579   0.017422016   0.002147437  -0.047191607   0.001008129  -0.000208278  -0.000013986
                         0.092756540   0.011238280  -0.105838561  -0.013045662   0.041405247  -0.000884520  -0.000185331  -0.000012445

   86    3.1  0.5 -0.5   0.094961809   0.011505468  -0.065186335  -0.008034869   0.067532693  -0.001442666  -0.000224002  -0.000015042
                         0.077845287   0.009431648  -0.010729916  -0.001322569   0.076970512  -0.001644280   0.000251737   0.000016905

   87    4.1  0.5 -0.5  -0.002254431   0.018607236   0.016859819  -0.136782557   0.002227493   0.104271410   0.000009384  -0.000139745
                         0.000000012  -0.000000101   0.000000006  -0.000000048  -0.000000001  -0.000000038   0.000000000  -0.000000000

   88    5.1  0.5 -0.5   0.029858286   0.003617596  -0.006635124  -0.000817844  -0.121819341   0.002602361  -0.000217941  -0.000014635
                        -0.036424486  -0.004413153   0.040305028   0.004967997   0.106882704  -0.002283277  -0.000193929  -0.000013023

   89    6.1  0.5 -0.5  -0.047340852  -0.005735765  -0.156554481  -0.019296907  -0.019403261   0.000414501  -0.000007532  -0.000000506
                        -0.038808638  -0.004702010  -0.025771550  -0.003176602  -0.022115808   0.000472447   0.000008464   0.000000568

   90    7.1  0.5 -0.5  -0.000000751   0.000006170  -0.000000052   0.000000412  -0.000000014  -0.000000707   0.000000000  -0.000000000
                         0.020203040  -0.166748305  -0.002955562   0.023978267   0.000806327   0.037745050   0.000000028  -0.000000424

   91    8.1  0.5 -0.5   0.000000376  -0.000003104   0.000000117  -0.000000948  -0.000000012  -0.000000527   0.000000000  -0.000000000
                        -0.002924278   0.024135857  -0.057474961   0.466290426  -0.004105320  -0.192174606  -0.000004611   0.000068661

   92    9.1  0.5 -0.5   0.212720672   0.025772993   0.061160670   0.007538668   0.001976906  -0.000042229  -0.000037713  -0.000002532
                        -0.259491541  -0.031439710  -0.371529862  -0.045794775  -0.001731740   0.000036995  -0.000033559  -0.000002254

   93   10.1  0.5 -0.5   0.236698556   0.028678142  -0.044070890  -0.005432175  -0.264678811   0.005654189   0.000430013   0.000028876
                         0.194032615   0.023508771  -0.007254808  -0.000894224  -0.301666039   0.006444331  -0.000483255  -0.000032451

   94   11.1  0.5 -0.5   0.000000487  -0.000004039   0.000000285  -0.000002323  -0.000000044  -0.000001987   0.000000000  -0.000000001
                        -0.015490242   0.127850657  -0.022077250   0.179111191   0.009768297   0.457264398   0.000081395  -0.001212112

   95   12.1  0.5 -0.5  -0.054309370   0.448249148  -0.021588274   0.175144190   0.003246554   0.151974528   0.000046637  -0.000694503
                        -0.000002031   0.000016713  -0.000000319   0.000002570   0.000000000  -0.000000182   0.000000000   0.000000000

   96   13.1  0.5 -0.5   0.000003038   0.000000368   0.000002001   0.000000247  -0.000036678   0.000000784   0.029457466   0.001978117
                        -0.000003706  -0.000000449  -0.000012158  -0.000001499   0.000032180  -0.000000687   0.026211987   0.001760176

   97   14.1  0.5 -0.5  -0.000030938  -0.000003748   0.000056062   0.000006910  -0.000069419   0.000001483  -0.026207950  -0.001759905
                        -0.000025362  -0.000003073   0.000009229   0.000001138  -0.000079121   0.000001690   0.029452929   0.001977812

   98   15.1  0.5 -0.5   0.000004122  -0.000034018   0.000001614  -0.000013095  -0.000002203  -0.000103125   0.002646105  -0.039404947
                         0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000003   0.000000057


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5   0.000043388  -0.000090805  -0.000001429  -0.000045647  -0.000000643  -0.000017585   0.000001055  -0.000203635
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000154   0.000000322  -0.000000002  -0.000000061  -0.000000054  -0.000001478   0.000000000  -0.000000033
                         0.000051497  -0.000107776   0.000000454   0.000014497   0.000003029   0.000082905   0.000000943  -0.000182172

    3    3.1  1.5  1.5  -0.000114378  -0.000054652   0.000011577  -0.000000362   0.000033537  -0.000001225  -0.000089440  -0.000000463
                         0.000043268   0.000020674   0.000022037  -0.000000690   0.000006850  -0.000000250  -0.000008938  -0.000000046

    4    4.1  1.5  1.5   0.000027969   0.000013364  -0.000032294   0.000001011  -0.000023882   0.000000873  -0.000002620  -0.000000014
                         0.000075202   0.000035933   0.000017634  -0.000000552   0.000105607  -0.000003859   0.000025829   0.000000134

    5    5.1  1.5  1.5   0.000085675   0.000040937  -0.000008347   0.000000261  -0.000022342   0.000000816   0.000050633   0.000000262
                        -0.000032281  -0.000015425  -0.000015915   0.000000498  -0.000004494   0.000000164   0.000005154   0.000000027

    6    6.1  1.5  1.5  -0.000033034  -0.000015784   0.000076246  -0.000002387   0.000007575  -0.000000277   0.000007131   0.000000037
                        -0.000087711  -0.000041910  -0.000040704   0.000001274  -0.000032943   0.000001204  -0.000071185  -0.000000369

    7    7.1  1.5  1.5  -0.000004942   0.000010344  -0.000004758  -0.000152001   0.000004097   0.000112113  -0.000000045   0.000008742
                         0.000000289  -0.000000605   0.000000029   0.000000935   0.000000030   0.000000820  -0.000000000   0.000000046

    8    8.1  1.5  1.5   0.000000561   0.000000268   0.000000314  -0.000000010  -0.000000692   0.000000025   0.000010810   0.000000056
                        -0.000000215  -0.000000103   0.000000586  -0.000000018  -0.000000142   0.000000005   0.000001091   0.000000006

    9    9.1  1.5  1.5   0.000000138  -0.000000290   0.000000012   0.000000394   0.000000054   0.000001470  -0.000000014   0.000002663
                         0.000000001  -0.000000002   0.000000000   0.000000002   0.000000001   0.000000020  -0.000000000   0.000000002

   10   10.1  1.5  1.5   0.000000074   0.000000035  -0.000000020   0.000000001  -0.000000082   0.000000003   0.000000944   0.000000005
                         0.000000209   0.000000100   0.000000010  -0.000000000   0.000000408  -0.000000015  -0.000009346  -0.000000048

   11   11.1  1.5  1.5  -0.107971459   0.225968513  -0.001135894  -0.036285719   0.005456064   0.149312390  -0.002556925   0.493736668
                         0.000276394  -0.000578453   0.000027934   0.000892345   0.000028809   0.000788389  -0.000000245   0.000047334

   12   12.1  1.5  1.5  -0.101187715  -0.048349149   0.162136302  -0.005075536   0.063083377  -0.002305145   0.014740457   0.000076337
                        -0.273782852  -0.130817934  -0.087695227   0.002745223  -0.279608852   0.010217262  -0.139325589  -0.000721529

   13   13.1  1.5  1.5  -0.045081907  -0.021540874   0.136988605  -0.004288310  -0.009649549   0.000352607   0.011979092   0.000062036
                        -0.113010110  -0.053998083  -0.072224835   0.002260936   0.046361041  -0.001694092  -0.133268240  -0.000690159

   14   14.1  1.5  1.5  -0.000360232   0.000753913  -0.000020227  -0.000646184  -0.000127463  -0.003488160   0.000001515  -0.000292521
                         0.131790288  -0.275817846   0.001145216   0.036583537   0.007781571   0.212952939   0.002412141  -0.465779174

   15   15.1  1.5  1.5   0.365368583   0.174579097  -0.036460047   0.001141349  -0.103564245   0.003784369   0.259367095   0.001343190
                        -0.137849251  -0.065866631  -0.070056955   0.002193073  -0.020032328   0.000732006   0.025755584   0.000133381

   16   16.1  1.5  1.5   0.029509536  -0.061759155  -0.012663284  -0.404524297   0.009146773   0.250313487   0.000890267  -0.171908635
                         0.000530374  -0.001109997   0.000068198   0.002178542   0.000062139   0.001700499  -0.000003476   0.000671223

   17   17.1  1.5  1.5   0.008386372   0.004007146  -0.000384974   0.000012051   0.003752783  -0.000137131  -0.027323329  -0.000141500
                        -0.002973717  -0.001420891  -0.000841981   0.000026358   0.000831437  -0.000030382  -0.002556801  -0.000013241

   18    1.1  1.5  0.5   0.000130958   0.000062574   0.000053446  -0.000001673  -0.000056766   0.000002074   0.000108888   0.000000564
                        -0.000049693  -0.000023744   0.000100718  -0.000003153  -0.000012339   0.000000451   0.000010956   0.000000057

   19    2.1  1.5  0.5   0.000056384   0.000026941   0.000061529  -0.000001926  -0.000025171   0.000000920  -0.000007116  -0.000000037
                         0.000151210   0.000072250  -0.000031950   0.000001000   0.000108083  -0.000003949   0.000070260   0.000000364

   20    3.1  1.5  0.5  -0.000004803   0.000010051   0.000001322   0.000042245  -0.000007307  -0.000199968  -0.000000442   0.000085399
                        -0.000000425   0.000000889  -0.000000028  -0.000000883  -0.000000083  -0.000002284   0.000000000  -0.000000016

   21    4.1  1.5  0.5  -0.000000054   0.000000112  -0.000000026  -0.000000824   0.000000050   0.000001358   0.000000000  -0.000000049
                        -0.000056724   0.000118716  -0.000005499  -0.000175654  -0.000000416  -0.000011390  -0.000000330   0.000063793

   22    5.1  1.5  0.5  -0.000000981   0.000002053  -0.000001213  -0.000038737   0.000005426   0.000148493  -0.000000838   0.000161727
                         0.000000304  -0.000000636   0.000000019   0.000000596   0.000000062   0.000001703  -0.000000000   0.000000066

   23    6.1  1.5  0.5   0.000000131  -0.000000274   0.000000019   0.000000622  -0.000000007  -0.000000192  -0.000000000   0.000000018
                        -0.000033681   0.000070489   0.000005875   0.000187681  -0.000000235  -0.000006441  -0.000000382   0.000073681

   24    7.1  1.5  0.5  -0.000026165  -0.000012502   0.000081556  -0.000002553   0.000195138  -0.000007131  -0.000036058  -0.000000187
                         0.000010444   0.000004990   0.000152584  -0.000004777   0.000042900  -0.000001568  -0.000003587  -0.000000019

   25    8.1  1.5  0.5   0.000000264  -0.000000552   0.000000009   0.000000289  -0.000000071  -0.000001947   0.000000016  -0.000003146
                        -0.000000006   0.000000012  -0.000000000  -0.000000008  -0.000000001  -0.000000022   0.000000000  -0.000000011

   26    9.1  1.5  0.5   0.000001392   0.000000665  -0.000000241   0.000000008  -0.000000593   0.000000022   0.000000234   0.000000001
                        -0.000000524  -0.000000250  -0.000000459   0.000000014  -0.000000121   0.000000004   0.000000025   0.000000000

   27   10.1  1.5  0.5  -0.000000003   0.000000006   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000006
                         0.000000022  -0.000000046   0.000000006   0.000000203  -0.000000010  -0.000000265  -0.000000003   0.000000604

   28   11.1  1.5  0.5  -0.336706765  -0.160884011  -0.049802723   0.001559032   0.321496543  -0.011747892  -0.297410367  -0.001540206
                         0.128256289   0.061282957  -0.094908565   0.002971031   0.070344612  -0.002570480  -0.029888331  -0.000154783

   29   12.1  1.5  0.5   0.000299069  -0.000625907   0.000069464   0.002218940  -0.000059536  -0.001629249  -0.000000863   0.000166670
                         0.090657431  -0.189732776   0.019375428   0.618941485   0.000695696   0.019038685   0.000319106  -0.061618752

   30   13.1  1.5  0.5   0.000191974  -0.000401773   0.000037676   0.001203542  -0.000076725  -0.002099698   0.000001313  -0.000253486
                        -0.142348638   0.297914934   0.007088388   0.226436145  -0.001006208  -0.027536185  -0.001276347   0.246459829

   31   14.1  1.5  0.5   0.144559060   0.069072689   0.157921700  -0.004943603  -0.064099183   0.002342265  -0.018502442  -0.000095819
                         0.387449517   0.185129730  -0.081298069   0.002544966   0.277460738  -0.010138768   0.182918658   0.000947285

   32   15.1  1.5  0.5   0.008584292  -0.017965671  -0.004543879  -0.145152637   0.023278305   0.637041504  -0.000318167   0.061437318
                         0.000374283  -0.000783321   0.000069300   0.002213793   0.000259429   0.007099548  -0.000007967   0.001538349

   33   16.1  1.5  0.5   0.061561693   0.029415185   0.244340815  -0.007648876   0.410091728  -0.014985271   0.018750914   0.000097106
                        -0.022667014  -0.010830671   0.458282014  -0.014346123   0.089937717  -0.003286436   0.001764220   0.000009136

   34   17.1  1.5  0.5  -0.009358018   0.019584967  -0.000557351  -0.017804393   0.000432881   0.011846347  -0.002382518   0.460059086
                         0.000049252  -0.000103078   0.000002079   0.000066412   0.000005611   0.000153557  -0.000000294   0.000056690

   35    1.1  1.5 -0.5   0.000066927  -0.000140068  -0.000003569  -0.000114020   0.000002122   0.000058082  -0.000000567   0.000109438
                         0.000000214  -0.000000447   0.000000012   0.000000389   0.000000038   0.000001031  -0.000000000   0.000000065

   36    2.1  1.5 -0.5  -0.000000198   0.000000414  -0.000000027  -0.000000855  -0.000000012  -0.000000332   0.000000000  -0.000000004
                        -0.000077110   0.000161379  -0.000002170  -0.000069325   0.000004055   0.000110975   0.000000366  -0.000070620

   37    3.1  1.5 -0.5   0.000009096   0.000004346   0.000019150  -0.000000599  -0.000195145   0.000007131  -0.000084963  -0.000000440
                        -0.000004368  -0.000002087   0.000037665  -0.000001179  -0.000043715   0.000001597  -0.000008616  -0.000000045

   38    4.1  1.5 -0.5  -0.000041658  -0.000019905  -0.000155268   0.000004861  -0.000001295   0.000000047  -0.000006376  -0.000000033
                        -0.000111167  -0.000053117   0.000082138  -0.000002571   0.000011397  -0.000000416   0.000063473   0.000000329

   39    5.1  1.5 -0.5   0.000002145   0.000001025  -0.000017749   0.000000556   0.000144912  -0.000005295  -0.000160911  -0.000000833
                        -0.000000127  -0.000000060  -0.000034437   0.000001078   0.000032455  -0.000001186  -0.000016221  -0.000000084

   40    6.1  1.5 -0.5  -0.000025054  -0.000011971   0.000165778  -0.000005190  -0.000001666   0.000000061  -0.000007438  -0.000000039
                        -0.000065887  -0.000031482  -0.000087989   0.000002754   0.000006224  -0.000000227   0.000073305   0.000000380

   41    7.1  1.5 -0.5  -0.000013458   0.000028166  -0.000005416  -0.000173013  -0.000007300  -0.000199774   0.000000188  -0.000036236
                        -0.000000273   0.000000572   0.000000002   0.000000070  -0.000000112  -0.000003076   0.000000000  -0.000000063

   42    8.1  1.5 -0.5  -0.000000521  -0.000000249   0.000000129  -0.000000004  -0.000001900   0.000000069   0.000003131   0.000000016
                         0.000000183   0.000000087   0.000000259  -0.000000008  -0.000000426   0.000000016   0.000000306   0.000000002

   43    9.1  1.5 -0.5   0.000000711  -0.000001488   0.000000016   0.000000518   0.000000022   0.000000605  -0.000000001   0.000000235
                         0.000000000  -0.000000001  -0.000000000  -0.000000003   0.000000001   0.000000018   0.000000000  -0.000000001

   44   10.1  1.5 -0.5   0.000000022   0.000000010   0.000000179  -0.000000006  -0.000000061   0.000000002  -0.000000055  -0.000000000
                         0.000000041   0.000000020  -0.000000096   0.000000003   0.000000258  -0.000000009   0.000000601   0.000000003

   45   11.1  1.5 -0.5  -0.172158865   0.360303391   0.003355127   0.107178389  -0.012024205  -0.329058212   0.001547963  -0.298908335
                        -0.000768674   0.001608724  -0.000026927  -0.000860188  -0.000197070  -0.005393044   0.000001111  -0.000214511

   46   12.1  1.5 -0.5   0.066159808   0.031612241   0.546788207  -0.017116733   0.002788017  -0.000101877   0.006039532   0.000031277
                         0.177825189   0.084967791  -0.290027829   0.009079069  -0.018903781   0.000690767  -0.061322283  -0.000317571

   47   13.1  1.5 -0.5  -0.105178980  -0.050256240   0.200224098  -0.006267842  -0.008369336   0.000305826  -0.024567695  -0.000127229
                        -0.278730786  -0.133182138  -0.105759571   0.003310712   0.026317379  -0.000961671   0.245232421   0.001269991

   48   14.1  1.5 -0.5  -0.000468868   0.000981273  -0.000088153  -0.002816001  -0.000049523  -0.001355245  -0.000000065   0.000012557
                        -0.197595125   0.413537770  -0.005559523  -0.177597043   0.010405689   0.284765394   0.000952119  -0.183852048

   49   15.1  1.5 -0.5  -0.016541737  -0.007903913  -0.066523475   0.002082461   0.621634915  -0.022715330  -0.061279908  -0.000317352
                         0.007053358   0.003370209  -0.129030291   0.004039183   0.139435701  -0.005095155  -0.004656555  -0.000024115

   50   16.1  1.5 -0.5   0.031345058  -0.065600634  -0.016257798  -0.519349859  -0.015339475  -0.419784994  -0.000097532   0.018833256
                        -0.000209537   0.000438531   0.000023483   0.000750099  -0.000243974  -0.006676623  -0.000000689   0.000133071

   51   17.1  1.5 -0.5   0.018369352   0.008777177  -0.008340628   0.000261096   0.011564795  -0.000422592  -0.457725977  -0.002370436
                        -0.006793266  -0.003245934  -0.015730059   0.000492416   0.002571970  -0.000093983  -0.046274138  -0.000239641

   52    1.1  1.5 -1.5   0.000085001   0.000040615   0.000021534  -0.000000674   0.000017115  -0.000000625  -0.000202600  -0.000001049
                        -0.000031944  -0.000015263   0.000040249  -0.000001260   0.000004040  -0.000000148  -0.000020507  -0.000000106

   53    2.1  1.5 -1.5  -0.000038216  -0.000018260  -0.000012754   0.000000399  -0.000017607   0.000000643  -0.000018379  -0.000000095
                        -0.000100773  -0.000048151   0.000006893  -0.000000216   0.000081027  -0.000002961   0.000181243   0.000000939

   54    3.1  1.5 -1.5   0.000058431  -0.000122289   0.000000779   0.000024892   0.000001250   0.000034214  -0.000000465   0.000089886
                         0.000000127  -0.000000266  -0.000000006  -0.000000188   0.000000038   0.000001038  -0.000000001   0.000000114

   55    4.1  1.5 -1.5   0.000000131  -0.000000274   0.000000010   0.000000314   0.000000037   0.000001017  -0.000000000   0.000000005
                         0.000038337  -0.000080234  -0.000001152  -0.000036794  -0.000003956  -0.000108268  -0.000000134   0.000025962

   56    5.1  1.5 -1.5  -0.000043746   0.000091554  -0.000000563  -0.000017970  -0.000000832  -0.000022776   0.000000264  -0.000050894
                        -0.000000038   0.000000079   0.000000005   0.000000148  -0.000000028  -0.000000759  -0.000000000   0.000000029

   57    6.1  1.5 -1.5   0.000000032  -0.000000067   0.000000002   0.000000079  -0.000000007  -0.000000195  -0.000000000   0.000000074
                        -0.000044784   0.000093726   0.000002706   0.000086431   0.000001235   0.000033802   0.000000370  -0.000071541

   58    7.1  1.5 -1.5  -0.000009896  -0.000004728   0.000070882  -0.000002219  -0.000109303   0.000003994   0.000008702   0.000000045
                         0.000003072   0.000001468   0.000134465  -0.000004209  -0.000024957   0.000000912   0.000000834   0.000000004

   59    8.1  1.5 -1.5  -0.000000287   0.000000601   0.000000021   0.000000665  -0.000000026  -0.000000706   0.000000056  -0.000010865
                        -0.000000002   0.000000004   0.000000000   0.000000001  -0.000000001  -0.000000021   0.000000000  -0.000000003

   60    9.1  1.5 -1.5   0.000000271   0.000000129  -0.000000187   0.000000006  -0.000001435   0.000000052   0.000002650   0.000000014
                        -0.000000103  -0.000000049  -0.000000347   0.000000011  -0.000000318   0.000000012   0.000000267   0.000000001

   61   10.1  1.5 -1.5   0.000000002  -0.000000005  -0.000000000  -0.000000001   0.000000001   0.000000014  -0.000000000   0.000000002
                         0.000000106  -0.000000222  -0.000000001  -0.000000023  -0.000000015  -0.000000416   0.000000049  -0.000009393

   62   11.1  1.5 -1.5  -0.211728033  -0.101167124   0.016330902  -0.000511225  -0.145500175   0.005316761   0.491231409   0.002543951
                         0.078951525   0.037724333   0.032415295  -0.001014733  -0.033533723   0.001225364   0.049674968   0.000257253

   63   12.1  1.5 -1.5  -0.000761517   0.001593745  -0.000026181  -0.000836358  -0.000103682  -0.002837363   0.000003287  -0.000634650
                        -0.139464663   0.291879194   0.005770323   0.184331044   0.010473557   0.286622700   0.000725548  -0.140101741

   64   13.1  1.5 -1.5   0.001168099  -0.002444662   0.000029458   0.000941031   0.000046002   0.001258891  -0.000007782   0.001502669
                        -0.058124330   0.121645744   0.004847738   0.154859352  -0.001729787  -0.047337883   0.000692898  -0.133797102

   65   14.1  1.5 -1.5  -0.097735121  -0.046699442  -0.031952093   0.001000233  -0.045526082   0.001663580  -0.047197619  -0.000244423
                        -0.257922273  -0.123239489   0.017827968  -0.000558088   0.208058880  -0.007602736   0.463381818   0.002399726

   66   15.1  1.5 -1.5  -0.186591039   0.390507826  -0.002472135  -0.078971513  -0.003851318  -0.105396399   0.001349794  -0.260642274
                        -0.000241592   0.000505618   0.000028211   0.000901177  -0.000156942  -0.004294894   0.000002564  -0.000495077

   67   16.1  1.5 -1.5   0.057421009   0.027436699   0.188912592  -0.005913745  -0.244009554   0.008916420  -0.170967102  -0.000885391
                        -0.022765173  -0.010877572   0.357710337  -0.011197814  -0.055848645   0.002040780  -0.017979978  -0.000093113

   68   17.1  1.5 -1.5  -0.004250860   0.008896430  -0.000028925  -0.000924014   0.000140443   0.003843419  -0.000142114   0.027441909
                         0.000079599  -0.000166589   0.000001808   0.000057758   0.000001934   0.000052913  -0.000001076   0.000207810

   69    1.1  0.5  0.5  -0.000000281  -0.000000134   0.000000166  -0.000000005   0.000000157  -0.000000006   0.000002205   0.000000011
                         0.000000106   0.000000050   0.000000312  -0.000000010   0.000000035  -0.000000001   0.000000224   0.000000001

   70    2.1  0.5  0.5   0.000000000  -0.000000001  -0.000000000  -0.000000002   0.000000000   0.000000008  -0.000000000   0.000000001
                        -0.000000237   0.000000497  -0.000000003  -0.000000093  -0.000000005  -0.000000133  -0.000000003   0.000000522

   71    3.1  0.5  0.5   0.000000053  -0.000000110  -0.000000005  -0.000000163   0.000000013   0.000000358  -0.000000026   0.000005029
                         0.000000001  -0.000000003   0.000000000   0.000000001   0.000000000   0.000000006  -0.000000000   0.000000001

   72    4.1  0.5  0.5  -0.000000100  -0.000000048  -0.000000068   0.000000002   0.000000046  -0.000000002  -0.000000355  -0.000000002
                         0.000000038   0.000000018  -0.000000127   0.000000004   0.000000010  -0.000000000  -0.000000036  -0.000000000

   73    5.1  0.5  0.5  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000002   0.000000000  -0.000000001
                         0.000000162  -0.000000338   0.000000005   0.000000173  -0.000000000  -0.000000010  -0.000000001   0.000000175

   74    6.1  0.5  0.5   0.000000052  -0.000000108  -0.000000003  -0.000000098  -0.000000016  -0.000000442  -0.000000002   0.000000416
                        -0.000000001   0.000000002  -0.000000000  -0.000000002  -0.000000000  -0.000000005   0.000000000  -0.000000003

   75    7.1  0.5  0.5  -0.000000145  -0.000000069  -0.000000035   0.000000001  -0.000000002   0.000000000  -0.000000356  -0.000000002
                        -0.000000388  -0.000000185   0.000000019  -0.000000001   0.000000005  -0.000000000   0.000003538   0.000000018

   76    8.1  0.5  0.5  -0.000000844  -0.000000403   0.000000807  -0.000000025  -0.000000197   0.000000007   0.000000766   0.000000004
                        -0.000002250  -0.000001075  -0.000000435   0.000000014   0.000000965  -0.000000035  -0.000007548  -0.000000039

   77    9.1  0.5  0.5  -0.000000006   0.000000013  -0.000000001  -0.000000016  -0.000000001  -0.000000038   0.000000000  -0.000000012
                        -0.000000456   0.000000955  -0.000000037  -0.000001182   0.000000135   0.000003684  -0.000000035   0.000006688

   78   10.1  0.5  0.5   0.000000493  -0.000001031   0.000000029   0.000000921   0.000000050   0.000001379  -0.000000009   0.000001655
                         0.000000003  -0.000000006  -0.000000000  -0.000000000   0.000000001   0.000000025  -0.000000000   0.000000003

   79   11.1  0.5  0.5   0.000000034   0.000000016   0.000001025  -0.000000032  -0.000000201   0.000000007   0.000001396   0.000000007
                         0.000000089   0.000000042  -0.000000547   0.000000017   0.000000937  -0.000000034  -0.000013731  -0.000000071

   80   12.1  0.5  0.5   0.000000212   0.000000101  -0.000000147   0.000000005  -0.000000578   0.000000021   0.000018453   0.000000096
                        -0.000000096  -0.000000046  -0.000000283   0.000000009  -0.000000105   0.000000004   0.000001853   0.000000010

   81   13.1  0.5  0.5   0.000000008  -0.000000016   0.000000000   0.000000011   0.000000001   0.000000026  -0.000000000   0.000000009
                         0.000000052  -0.000000108   0.000000030   0.000000963  -0.000000080  -0.000002191   0.000000003  -0.000000511

   82   14.1  0.5  0.5  -0.000000509   0.000001065  -0.000000064  -0.000002032  -0.000000055  -0.000001514   0.000000010  -0.000001880
                         0.000000003  -0.000000007   0.000000000   0.000000007  -0.000000001  -0.000000028  -0.000000000   0.000000005

   83   15.1  0.5  0.5   0.000000563   0.000000269   0.000000255  -0.000000008  -0.000001625   0.000000059   0.000001985   0.000000010
                        -0.000000214  -0.000000102   0.000000487  -0.000000015  -0.000000360   0.000000013   0.000000198   0.000000001

   84    1.1  0.5 -0.5   0.000000144  -0.000000300   0.000000011   0.000000354   0.000000006   0.000000161   0.000000011  -0.000002217
                        -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000002  -0.000000000   0.000000001

   85    2.1  0.5 -0.5   0.000000175   0.000000084   0.000000083  -0.000000003   0.000000023  -0.000000001   0.000000053   0.000000000
                         0.000000465   0.000000222  -0.000000042   0.000000001  -0.000000132   0.000000005  -0.000000519  -0.000000003

   86    3.1  0.5 -0.5   0.000000102   0.000000049   0.000000077  -0.000000002  -0.000000350   0.000000013   0.000005003   0.000000026
                        -0.000000041  -0.000000020   0.000000144  -0.000000005  -0.000000076   0.000000003   0.000000505   0.000000003

   87    4.1  0.5 -0.5   0.000000051  -0.000000107  -0.000000004  -0.000000143   0.000000002   0.000000047  -0.000000002   0.000000357
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000

   88    5.1  0.5 -0.5  -0.000000120  -0.000000057  -0.000000153   0.000000005   0.000000004  -0.000000000   0.000000017   0.000000000
                        -0.000000316  -0.000000151   0.000000081  -0.000000003  -0.000000010   0.000000000  -0.000000174  -0.000000001

   89    6.1  0.5 -0.5   0.000000102   0.000000049   0.000000048  -0.000000001   0.000000432  -0.000000016   0.000000413   0.000000002
                        -0.000000036  -0.000000017   0.000000085  -0.000000003   0.000000097  -0.000000004   0.000000045   0.000000000

   90    7.1  0.5 -0.5  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000002
                        -0.000000198   0.000000414  -0.000000001  -0.000000040  -0.000000000  -0.000000005  -0.000000018   0.000003556

   91    8.1  0.5 -0.5  -0.000000000   0.000000001  -0.000000000  -0.000000002   0.000000001   0.000000030   0.000000000  -0.000000002
                        -0.000001148   0.000002403   0.000000029   0.000000916  -0.000000036  -0.000000984   0.000000039  -0.000007586

   92    9.1  0.5 -0.5   0.000000323   0.000000154   0.000001050  -0.000000033  -0.000000810   0.000000030   0.000000661   0.000000003
                         0.000000898   0.000000429  -0.000000543   0.000000017   0.000003594  -0.000000131  -0.000006655  -0.000000034

   93   10.1  0.5 -0.5   0.000000963   0.000000460  -0.000000434   0.000000014  -0.000001348   0.000000049   0.000001647   0.000000009
                        -0.000000369  -0.000000176  -0.000000812   0.000000025  -0.000000292   0.000000011   0.000000164   0.000000001

   94   11.1  0.5 -0.5  -0.000000000   0.000000001   0.000000000   0.000000001   0.000000001   0.000000019   0.000000000  -0.000000006
                         0.000000045  -0.000000095   0.000000036   0.000001162  -0.000000035  -0.000000958   0.000000071  -0.000013802

   95   12.1  0.5 -0.5  -0.000000111   0.000000232  -0.000000010  -0.000000319  -0.000000021  -0.000000587   0.000000096  -0.000018546
                        -0.000000007   0.000000016   0.000000000   0.000000004  -0.000000001  -0.000000031   0.000000000  -0.000000015

   96   13.1  0.5 -0.5  -0.000000023  -0.000000011  -0.000000854   0.000000027   0.000000478  -0.000000017  -0.000000042  -0.000000000
                        -0.000000107  -0.000000051   0.000000444  -0.000000014  -0.000002138   0.000000078   0.000000509   0.000000003

   97   14.1  0.5 -0.5  -0.000001000  -0.000000478   0.000000952  -0.000000030   0.000001480  -0.000000054  -0.000001870  -0.000000010
                         0.000000368   0.000000176   0.000001795  -0.000000056   0.000000321  -0.000000012  -0.000000194  -0.000000001

   98   15.1  0.5 -0.5  -0.000000288   0.000000603   0.000000017   0.000000550  -0.000000061  -0.000001665   0.000000010  -0.000001995
                        -0.000000001   0.000000003  -0.000000000  -0.000000005  -0.000000001  -0.000000023   0.000000000  -0.000000003


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5   0.000015232   0.000000000   0.000002174   0.000023309  -0.000030110  -0.000266686  -0.000004638  -0.000094262
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000006  -0.000000000   0.000000928   0.000009946   0.000000131   0.000001164  -0.000000029  -0.000000581
                         0.000004332  -0.000000000  -0.000019635  -0.000210516   0.000008057   0.000071361  -0.000002099  -0.000042656

    3    3.1  1.5  1.5  -0.000000000   0.000178967  -0.000018023   0.000001681  -0.000183502   0.000020718   0.000078184  -0.000003847
                         0.000000000   0.000016421   0.000037684  -0.000003515   0.000023187  -0.000002618   0.000294078  -0.000014468

    4    4.1  1.5  1.5  -0.000000000  -0.000016795  -0.000174492   0.000016275  -0.000011129   0.000001257   0.000252496  -0.000012423
                        -0.000000000   0.000182398  -0.000077940   0.000007269  -0.000107682   0.000012158  -0.000066188   0.000003256

    5    5.1  1.5  1.5  -0.000000000   0.000213321  -0.000035564   0.000003317   0.000254287  -0.000028710   0.000045585  -0.000002243
                         0.000000000   0.000019520   0.000082007  -0.000007649  -0.000030596   0.000003454   0.000178154  -0.000008765

    6    6.1  1.5  1.5  -0.000000000  -0.000017250   0.000261168  -0.000024359   0.000003732  -0.000000421   0.000225141  -0.000011077
                        -0.000000000   0.000189171   0.000116664  -0.000010881   0.000033744  -0.000003810  -0.000059052   0.000002905

    7    7.1  1.5  1.5  -0.000022468  -0.000000000  -0.000004796  -0.000051419  -0.000010732  -0.000095056   0.000010893   0.000221399
                        -0.000000058  -0.000000000  -0.000000255  -0.000002732   0.000000103   0.000000916  -0.000000150  -0.000003048

    8    8.1  1.5  1.5  -0.000000000   0.000004144   0.000002779  -0.000000259  -0.000023146   0.000002613   0.000002336  -0.000000115
                        -0.000000000   0.000000387  -0.000006323   0.000000590   0.000002802  -0.000000316   0.000008815  -0.000000434

    9    9.1  1.5  1.5  -0.000000865   0.000000000   0.000020935   0.000224456   0.000015710   0.000139146  -0.000042525  -0.000864349
                        -0.000000001   0.000000000   0.000000995   0.000010669  -0.000000285  -0.000002528   0.000000541   0.000011002

   10   10.1  1.5  1.5  -0.000000000   0.000000027   0.000005472  -0.000000510  -0.000003019   0.000000341  -0.000010620   0.000000522
                         0.000000000  -0.000000296   0.000002390  -0.000000223  -0.000024935   0.000002815   0.000002821  -0.000000139

   11   11.1  1.5  1.5  -0.055955336   0.000000000  -0.009975944  -0.106958541   0.036509681   0.323366119   0.019504399   0.396437771
                        -0.000051986  -0.000000000  -0.000330055  -0.003538708   0.000106965   0.000947397  -0.000162777  -0.003308516

   12   12.1  1.5  1.5   0.000000000   0.018442795   0.521508539  -0.048640719   0.016070239  -0.001814411  -0.034638641   0.001704192
                         0.000000000  -0.202018865   0.232998589  -0.021731593   0.143824643  -0.016238535   0.008642554  -0.000425206

   13   13.1  1.5  1.5  -0.000000000  -0.059350095   0.082515369  -0.007696148   0.006988608  -0.000789049  -0.212201555   0.010440135
                        -0.000000001   0.653158409   0.036638255  -0.003417221   0.089159968  -0.010066614   0.055841909  -0.002747374

   14   14.1  1.5  1.5  -0.000027861   0.000000000   0.001623443   0.017405889   0.000175703   0.001556202  -0.000023345  -0.000474491
                         0.011570419  -0.000000000  -0.034553284  -0.370468100   0.010795092   0.095612094  -0.004185033  -0.085063117

   15   15.1  1.5  1.5   0.000000000  -0.056139867  -0.024892649   0.002321718   0.518009718  -0.058485935  -0.025676893   0.001263281
                        -0.000000000  -0.001364257   0.059397542  -0.005539965  -0.063478486   0.007167043  -0.084934486   0.004178704

   16   16.1  1.5  1.5  -0.036821147  -0.000000000  -0.011483771  -0.123124929  -0.039111132  -0.346407155   0.025921988   0.526878842
                        -0.000145735  -0.000000000  -0.000611091  -0.006551870   0.000225546   0.001997656  -0.000379780  -0.007719212

   17   17.1  1.5  1.5  -0.000000001   0.701909836   0.016083801  -0.001500123   0.043667290  -0.004930259  -0.057229765   0.002815655
                         0.000000000   0.064137461  -0.035320657   0.003294332  -0.006129311   0.000692030  -0.217235920   0.010687822

   18    1.1  1.5  0.5  -0.000000000   0.000039052   0.000104127  -0.000009712  -0.000162063   0.000018298  -0.000137761   0.000006778
                         0.000000000   0.000003632  -0.000234401   0.000021862   0.000018531  -0.000002092  -0.000528098   0.000025982

   19    2.1  1.5  0.5  -0.000000000  -0.000000938  -0.000042924   0.000004004   0.000004872  -0.000000550  -0.000596549   0.000029350
                        -0.000000000   0.000009681  -0.000019394   0.000001809   0.000059366  -0.000006703   0.000156343  -0.000007692

   20    3.1  1.5  0.5   0.000012814   0.000000000   0.000014202   0.000152269  -0.000013546  -0.000119974  -0.000008182  -0.000166306
                         0.000000038   0.000000000   0.000000614   0.000006581  -0.000000015  -0.000000131   0.000000074   0.000001513

   21    4.1  1.5  0.5   0.000000029  -0.000000000   0.000000705   0.000007561   0.000000021   0.000000188   0.000000115   0.000002342
                        -0.000006361   0.000000000  -0.000012481  -0.000133812  -0.000033418  -0.000295987   0.000003231   0.000065669

   22    5.1  1.5  0.5  -0.000036890  -0.000000000  -0.000010872  -0.000116562   0.000005881   0.000052087   0.000006545   0.000133033
                        -0.000000042  -0.000000000  -0.000000490  -0.000005249   0.000000004   0.000000031  -0.000000070  -0.000001421

   23    6.1  1.5  0.5  -0.000000042   0.000000000   0.000001297   0.000013909   0.000000231   0.000002042  -0.000000118  -0.000002392
                         0.000010799   0.000000000  -0.000026103  -0.000279867  -0.000006422  -0.000056876  -0.000011790  -0.000239645

   24    7.1  1.5  0.5   0.000000000  -0.000015180  -0.000037473   0.000003495  -0.000131932   0.000014896  -0.000011700   0.000000576
                        -0.000000000  -0.000001428   0.000082735  -0.000007717   0.000015518  -0.000001752  -0.000046856   0.000002305

   25    8.1  1.5  0.5  -0.000015401  -0.000000000   0.000011456   0.000122831   0.000005687   0.000050368  -0.000025320  -0.000514634
                        -0.000000040  -0.000000000   0.000000539   0.000005783  -0.000000161  -0.000001427   0.000000320   0.000006501

   26    9.1  1.5  0.5  -0.000000000   0.000002672   0.000001672  -0.000000156  -0.000013144   0.000001484   0.000001239  -0.000000061
                        -0.000000000   0.000000252  -0.000003803   0.000000355   0.000001589  -0.000000179   0.000004670  -0.000000230

   27   10.1  1.5  0.5  -0.000000041  -0.000000000   0.000000615   0.000006592  -0.000000169  -0.000001495   0.000000308   0.000006265
                         0.000014440   0.000000000  -0.000012839  -0.000137658  -0.000012167  -0.000107762   0.000024065   0.000489136

   28   11.1  1.5  0.5   0.000000000  -0.111273213  -0.135083947   0.012599172   0.077196564  -0.008715885   0.086600799  -0.004260684
                        -0.000000000  -0.010360429   0.303540390  -0.028310990  -0.009272338   0.001046894   0.331984986  -0.016333378

   29   12.1  1.5  0.5  -0.000320791  -0.000000000   0.000222147   0.002381761   0.000125142   0.001108375  -0.000033508  -0.000681072
                         0.028420479  -0.000000000  -0.008777688  -0.094111269   0.043491145   0.385200917   0.003670301   0.074600918

   30   13.1  1.5  0.5   0.000343234  -0.000000000   0.002743970   0.029419738   0.000170825   0.001513008  -0.000047307  -0.000961525
                         0.016628681   0.000000000  -0.051746796  -0.554810862  -0.036608348  -0.324240014  -0.011238355  -0.228425828

   31   14.1  1.5  0.5  -0.000000000  -0.002215471   0.061247858  -0.005712543  -0.001349072   0.000152317  -0.478619294   0.023547660
                        -0.000000000   0.022754246   0.026971198  -0.002515582   0.012147150  -0.001371475   0.125492452  -0.006174120

   32   15.1  1.5  0.5  -0.082420573  -0.000000000  -0.021453806  -0.230020124   0.034601117   0.306461969   0.001283290   0.026083590
                        -0.000136117  -0.000000000  -0.001143427  -0.012259369  -0.000398403  -0.003528643  -0.000018651  -0.000379088

   33   16.1  1.5  0.5   0.000000000   0.001538676  -0.016861571   0.001572665  -0.307334428   0.034699622  -0.037890645   0.001864187
                        -0.000000000   0.000073964   0.034777029  -0.003243628   0.036471390  -0.004117805  -0.151779946   0.007467444

   34   17.1  1.5  0.5  -0.057032816  -0.000000000   0.000656918   0.007043239  -0.003470404  -0.030737354  -0.002101095  -0.042705933
                        -0.000025618  -0.000000000   0.000016966   0.000181899  -0.000013503  -0.000119596   0.000014019   0.000284951

   35    1.1  1.5 -0.5  -0.000039221  -0.000000000   0.000023894   0.000256178   0.000018416   0.000163114  -0.000026849  -0.000545721
                        -0.000000041  -0.000000000   0.000001176   0.000012611  -0.000000146  -0.000001297   0.000000361   0.000007333

   36    2.1  1.5 -0.5   0.000000027  -0.000000000  -0.000000188  -0.000002018   0.000000268   0.000002378  -0.000000373  -0.000007584
                         0.000009726   0.000000000   0.000004389   0.000047059   0.000006720   0.000059518  -0.000030339  -0.000616649

   37    3.1  1.5 -0.5  -0.000000000   0.000012761  -0.000062708   0.000005849  -0.000119069   0.000013443   0.000042678  -0.000002100
                         0.000000000   0.000001162   0.000138913  -0.000012956   0.000014707  -0.000001661   0.000160743  -0.000007908

   38    4.1  1.5 -0.5   0.000000000  -0.000000567  -0.000122876   0.000011461   0.000036150  -0.000004082  -0.000063936   0.000003146
                         0.000000000   0.000006335  -0.000053519   0.000004992   0.000293772  -0.000033168   0.000015170  -0.000000746

   39    5.1  1.5 -0.5   0.000000000  -0.000036732   0.000047814  -0.000004460   0.000051697  -0.000005837  -0.000033936   0.000001670
                        -0.000000000  -0.000003412  -0.000106433   0.000009927  -0.000006360   0.000000718  -0.000128640   0.000006329

   40    6.1  1.5 -0.5  -0.000000000   0.000000969  -0.000256136   0.000023890   0.000008938  -0.000001009   0.000231686  -0.000011399
                         0.000000000  -0.000010755  -0.000113637   0.000010599   0.000056206  -0.000006346  -0.000061295   0.000003016

   41    7.1  1.5 -0.5   0.000015247   0.000000000  -0.000008464  -0.000090745   0.000014998   0.000132840  -0.000002375  -0.000048281
                        -0.000000000   0.000000000  -0.000000355  -0.000003808  -0.000000071  -0.000000627   0.000000057   0.000001155

   42    8.1  1.5 -0.5   0.000000000  -0.000015337  -0.000050161   0.000004679   0.000050169  -0.000005664   0.000130313  -0.000006411
                        -0.000000000  -0.000001402   0.000112271  -0.000010471  -0.000004704   0.000000531   0.000497904  -0.000024496

   43    9.1  1.5 -0.5  -0.000002684  -0.000000000   0.000000387   0.000004149   0.000001495   0.000013240   0.000000238   0.000004831
                         0.000000000   0.000000000   0.000000021   0.000000220  -0.000000002  -0.000000020  -0.000000002  -0.000000045

   44   10.1  1.5 -0.5   0.000000000   0.000001311  -0.000125873   0.000011740   0.000011610  -0.000001311  -0.000473258   0.000023284
                         0.000000000  -0.000014381  -0.000056117   0.000005234   0.000107146  -0.000012097   0.000123773  -0.000006090

   45   11.1  1.5 -0.5   0.111754443   0.000000000  -0.030951459  -0.331850610  -0.008778510  -0.077751236   0.016878423   0.343063348
                         0.000103541   0.000000000  -0.001502811  -0.016112527   0.000019876   0.000176042  -0.000226899  -0.004611839

   46   12.1  1.5 -0.5   0.000000000   0.002341614  -0.085097268   0.007936960  -0.045703237   0.005160127  -0.071744961   0.003529791
                        -0.000000000  -0.028325666  -0.040262373   0.003755240  -0.382481620   0.043184122   0.020455351  -0.001006386

   47   13.1  1.5 -0.5   0.000000000   0.001898662  -0.508597659   0.047436531   0.040898212  -0.004617615   0.220489616  -0.010847900
                         0.000000000  -0.016523496  -0.223626998   0.020857512   0.321653870  -0.036316360  -0.059696001   0.002936992

   48   14.1  1.5 -0.5   0.000075270  -0.000000000   0.000327035   0.003506334   0.000317828   0.002815002  -0.000296714  -0.006030844
                         0.022861722   0.000000000  -0.006233325  -0.066831513   0.001342807   0.011893234  -0.024341816  -0.494760966

   49   15.1  1.5 -0.5   0.000000000  -0.082071252   0.092658438  -0.008642179   0.304620124  -0.034393163  -0.006556957   0.000322597
                        -0.000000000  -0.007581480  -0.210888509   0.019669417  -0.033733813   0.003808718  -0.025248835   0.001242221

   50   16.1  1.5 -0.5  -0.001538842   0.000000000  -0.003604326  -0.038644309   0.034942860   0.309488790  -0.007694405  -0.156393071
                        -0.000070426   0.000000000  -0.000056861  -0.000609635  -0.000128842  -0.001141148   0.000184484   0.003749742

   51   17.1  1.5 -0.5   0.000000000  -0.056784676  -0.003009957   0.000280736  -0.030495088   0.003443051   0.011059204  -0.000544103
                        -0.000000000  -0.005314449   0.006370280  -0.000594151   0.003853417  -0.000435070   0.041250114  -0.002029470

   52    1.1  1.5 -1.5   0.000000000  -0.000015165   0.000010498  -0.000000979   0.000264710  -0.000029887  -0.000025017   0.000001231
                        -0.000000000  -0.000001426  -0.000020810   0.000001941  -0.000032403   0.000003659  -0.000090881   0.000004471

   53    2.1  1.5 -1.5  -0.000000000  -0.000000412   0.000192432  -0.000017948   0.000007515  -0.000000849  -0.000041280   0.000002031
                         0.000000000   0.000004312   0.000085939  -0.000008015   0.000070974  -0.000008013   0.000010760  -0.000000529

   54    3.1  1.5 -1.5   0.000179718   0.000000000   0.000003895   0.000041763  -0.000020883  -0.000184959  -0.000014970  -0.000304281
                         0.000000408   0.000000000   0.000000082   0.000000882  -0.000000081  -0.000000719   0.000000131   0.000002667

   55    4.1  1.5 -1.5   0.000000357   0.000000000   0.000000840   0.000009007   0.000000230   0.000002037  -0.000000157  -0.000003197
                        -0.000183169  -0.000000000  -0.000017805  -0.000190895   0.000012220   0.000108236  -0.000012841  -0.000261007

   56    5.1  1.5 -1.5   0.000214212   0.000000000   0.000008323   0.000089236   0.000028917   0.000256121  -0.000009046  -0.000183863
                         0.000000539   0.000000000   0.000000484   0.000005184  -0.000000060  -0.000000528   0.000000164   0.000003330

   57    6.1  1.5 -1.5   0.000000538   0.000000000  -0.000001257  -0.000013474  -0.000000045  -0.000000396  -0.000000139  -0.000002817
                        -0.000189955  -0.000000000   0.000026649   0.000285723  -0.000003833  -0.000033947  -0.000011451  -0.000232739

   58    7.1  1.5 -1.5  -0.000000000   0.000022375  -0.000020721   0.000001933   0.000094463  -0.000010665   0.000055820  -0.000002746
                         0.000000000   0.000002046   0.000047138  -0.000004397  -0.000010641   0.000001201   0.000214268  -0.000010542

   59    8.1  1.5 -1.5   0.000004162   0.000000000  -0.000000643  -0.000006897  -0.000002632  -0.000023315  -0.000000449  -0.000009119
                         0.000000002  -0.000000000  -0.000000034  -0.000000367   0.000000004   0.000000031   0.000000004   0.000000087

   60    9.1  1.5 -1.5   0.000000000   0.000000862   0.000091572  -0.000008541  -0.000138422   0.000015629  -0.000218786   0.000010764
                        -0.000000000   0.000000080  -0.000205204   0.000019139   0.000014397  -0.000001626  -0.000836273   0.000041144

   61   10.1  1.5 -1.5  -0.000000001   0.000000000  -0.000000031  -0.000000331   0.000000004   0.000000033   0.000000005   0.000000099
                         0.000000297   0.000000000   0.000000556   0.000005962   0.000002836   0.000025117   0.000000541   0.000010987

   62   11.1  1.5 -1.5   0.000000000   0.055714397  -0.045015994   0.004198606  -0.320855174   0.036226183   0.102022684  -0.005019428
                         0.000000000   0.005187314   0.097088682  -0.009055390   0.040230611  -0.004542240   0.383099497  -0.018848168

   63   12.1  1.5 -1.5  -0.000553151  -0.000000000  -0.002505953  -0.026867805  -0.000172076  -0.001524075   0.000042326   0.000860288
                         0.202858208   0.000000000   0.053215617   0.570559042  -0.016338681  -0.144711636   0.001755927   0.035690181

   64   13.1  1.5 -1.5   0.002065531   0.000000000  -0.000415473  -0.004454530  -0.000439929  -0.003896451   0.000121906   0.002477800
                        -0.655846075  -0.000000001   0.008410438   0.090173749  -0.010087903  -0.089348522   0.010794889   0.219412122

   65   14.1  1.5 -1.5   0.000000000  -0.001055594   0.338601433  -0.031581107   0.010072566  -0.001137244  -0.082138664   0.004041152
                         0.000000000   0.011522200   0.151322993  -0.014113775   0.095092785  -0.010736460   0.022117840  -0.001088179

   66   15.1  1.5 -1.5  -0.056020985  -0.000000000   0.005991926   0.064243309   0.058923433   0.521884643   0.004364123   0.088703234
                        -0.003898085  -0.000000000   0.000422390   0.004528700   0.000007675   0.000067990   0.000108973   0.002214936

   67   16.1  1.5 -1.5  -0.000000000   0.036673041  -0.049607318   0.004626835   0.344083332  -0.038848760   0.132388549  -0.006513402
                         0.000000000   0.003302452   0.112879534  -0.010528191  -0.040106952   0.004528278   0.510033502  -0.025093212

   68   17.1  1.5 -1.5   0.704831582   0.000000001  -0.003616922  -0.038779355   0.004977815   0.044088492   0.011051815   0.224634284
                         0.001863769   0.000000000  -0.000144466  -0.001548901   0.000087857   0.000778154  -0.000121808  -0.002475807

   69    1.1  0.5  0.5  -0.000000000   0.000001985  -0.001314244   0.000122578   0.000615105  -0.000069448  -0.001039393   0.000051137
                         0.000000000   0.000000180   0.002965480  -0.000276588  -0.000106224   0.000011993  -0.003938490   0.000193770

   70    2.1  0.5  0.5   0.000000001   0.000000000  -0.000005601  -0.000060054  -0.000001312  -0.000011618   0.000000828   0.000016833
                        -0.000000024   0.000000000   0.000107237   0.001149762   0.000091016   0.000806125   0.000091091   0.001851474

   71    3.1  0.5  0.5  -0.000000291   0.000000000   0.000411658   0.004413654   0.000325371   0.002881812   0.000045520   0.000925226
                         0.000000002   0.000000000   0.000021066   0.000225857   0.000002182   0.000019330   0.000000261   0.000005310

   72    4.1  0.5  0.5   0.000000000  -0.000000451  -0.001381548   0.000128856  -0.004984304   0.000562753   0.000225086  -0.000011074
                        -0.000000000  -0.000000041   0.003049607  -0.000284435   0.000594943  -0.000067172   0.000780863  -0.000038418

   73    5.1  0.5  0.5  -0.000000009  -0.000000000   0.000002782   0.000029823   0.000002972   0.000026321  -0.000003349  -0.000068080
                         0.000002348   0.000000000  -0.000087157  -0.000934471   0.000500732   0.004434980  -0.000206064  -0.004188360

   74    6.1  0.5  0.5  -0.000004216  -0.000000000  -0.000240428  -0.002577780   0.000277282   0.002455884   0.000252272   0.005127562
                        -0.000000008  -0.000000000  -0.000010312  -0.000110564   0.000001035   0.000009163  -0.000002535  -0.000051526

   75    7.1  0.5  0.5   0.000000000   0.000000204  -0.003870465   0.000360995   0.000340563  -0.000038451  -0.001693364   0.000083312
                         0.000000000  -0.000002234  -0.001712293   0.000159704   0.002719929  -0.000307094   0.000429448  -0.000021128

   76    8.1  0.5  0.5  -0.000000000   0.000001401   0.000372597  -0.000034752  -0.000043948   0.000004962   0.001275581  -0.000062757
                         0.000000000  -0.000015141   0.000165916  -0.000015475  -0.000394179   0.000044505  -0.000333431   0.000016405

   77    9.1  0.5  0.5  -0.000000027  -0.000000000   0.000002365   0.000025361  -0.000000634  -0.000005619   0.000001137   0.000023109
                         0.000010772   0.000000000  -0.000049211  -0.000527617  -0.000051036  -0.000452022   0.000088457   0.001797942

   78   10.1  0.5  0.5   0.000007892   0.000000000  -0.000041174  -0.000441451  -0.000015761  -0.000139593   0.000095004   0.001931004
                         0.000000026   0.000000000  -0.000001930  -0.000020694   0.000000591   0.000005236  -0.000001197  -0.000024336

   79   11.1  0.5  0.5   0.000000000   0.000002101   0.000800434  -0.000074656  -0.000049260   0.000005562   0.003358793  -0.000165250
                         0.000000000  -0.000022995   0.000357312  -0.000033326  -0.000484548   0.000054708  -0.000878821   0.000043237

   80   12.1  0.5  0.5   0.000000000  -0.000019275   0.000394567  -0.000036801  -0.000592076   0.000066848  -0.000941112   0.000046302
                        -0.000000000  -0.000001752  -0.000884178   0.000082467   0.000061548  -0.000006949  -0.003597184   0.000176978

   81   13.1  0.5  0.5   0.000000041  -0.000000000  -0.000015461  -0.000165762   0.000004524   0.000040073  -0.000008776  -0.000178375
                        -0.000014358  -0.000000000   0.000326674   0.003502478   0.000206695   0.001830699  -0.000691852  -0.014062270

   82   14.1  0.5  0.5   0.000016781  -0.000000000  -0.000346504  -0.003715095  -0.000295252  -0.002615050   0.000675122   0.013722240
                         0.000000042   0.000000000  -0.000016536  -0.000177290   0.000004632   0.000041027  -0.000008621  -0.000175223

   83   15.1  0.5  0.5   0.000000000   0.000003822   0.000083749  -0.000007811  -0.000779853   0.000088049   0.000086720  -0.000004267
                         0.000000000   0.000000354  -0.000191177   0.000017831   0.000094484  -0.000010668   0.000326788  -0.000016078

   84    1.1  0.5 -0.5   0.000001993   0.000000000   0.000302155   0.003239594   0.000070391   0.000623454   0.000200393   0.004073104
                         0.000000006   0.000000000   0.000015138   0.000162304   0.000003466   0.000030700  -0.000002122  -0.000043135

   85    2.1  0.5 -0.5   0.000000000   0.000000001  -0.001053580   0.000098267   0.000109479  -0.000012361   0.001789547  -0.000088044
                        -0.000000000  -0.000000024  -0.000464249   0.000043300   0.000798741  -0.000090182  -0.000475142   0.000023377

   86    3.1  0.5 -0.5   0.000000000   0.000000290   0.001786314  -0.000166608  -0.002858112   0.000322695   0.000250670  -0.000012333
                        -0.000000000   0.000000029  -0.004042331   0.000377025   0.000369338  -0.000041700   0.000890638  -0.000043819

   87    4.1  0.5 -0.5  -0.000000453  -0.000000000   0.000311987   0.003345019  -0.000566746  -0.005019663  -0.000039979  -0.000812598
                        -0.000000001  -0.000000000   0.000013068   0.000140106   0.000001702   0.000015078  -0.000000481  -0.000009777

   88    5.1  0.5 -0.5  -0.000000000  -0.000000211   0.000847747  -0.000079069   0.000512742  -0.000057891  -0.004056233   0.000199563
                        -0.000000000   0.000002338   0.000394271  -0.000036773   0.004405320  -0.000497383   0.001045931  -0.000051459

   89    6.1  0.5 -0.5  -0.000000000   0.000004198  -0.001062349   0.000099084  -0.002436575   0.000275102   0.001311150  -0.000064507
                         0.000000000   0.000000386   0.002351295  -0.000219304   0.000307495  -0.000034718   0.004957361  -0.000243898

   90    7.1  0.5 -0.5  -0.000000006  -0.000000000   0.000020010   0.000214534   0.000000853   0.000007558   0.000001740   0.000035362
                         0.000002243   0.000000000  -0.000394237  -0.004226868  -0.000309491  -0.002741156   0.000085932   0.001746612

   91    8.1  0.5 -0.5  -0.000000023   0.000000000  -0.000001836  -0.000019689   0.000000482   0.000004272  -0.000000839  -0.000017058
                         0.000015205   0.000000000   0.000037997   0.000407393   0.000044778   0.000396599  -0.000064861  -0.001318329

   92    9.1  0.5 -0.5  -0.000000000  -0.000000981   0.000482490  -0.000045002  -0.000049345   0.000005571   0.001739600  -0.000085587
                        -0.000000000   0.000010727   0.000215003  -0.000020053  -0.000449355   0.000050734  -0.000454884   0.000022380

   93   10.1  0.5 -0.5   0.000000000  -0.000007859  -0.000180359   0.000016822   0.000139195  -0.000015716   0.000489015  -0.000024059
                        -0.000000000  -0.000000713   0.000403457  -0.000037630  -0.000011764   0.000001328   0.001868217  -0.000091915

   94   11.1  0.5 -0.5  -0.000000061  -0.000000000  -0.000003872  -0.000041510   0.000001127   0.000009979  -0.000002170  -0.000044100
                         0.000023091   0.000000000   0.000081665   0.000875582   0.000054978   0.000486943  -0.000170799  -0.003471580

   95   12.1  0.5 -0.5  -0.000019355   0.000000000  -0.000090204  -0.000967130  -0.000067197  -0.000595168   0.000182920   0.003717954
                        -0.000000060  -0.000000000  -0.000004287  -0.000045966   0.000001225   0.000010847  -0.000002328  -0.000047311

   96   13.1  0.5 -0.5  -0.000000000   0.000001304  -0.003201746   0.000298625   0.000182661  -0.000020623  -0.013605334   0.000669371
                         0.000000000  -0.000014298  -0.001429563   0.000133334   0.001822004  -0.000205714   0.003560076  -0.000175153

   97   14.1  0.5 -0.5  -0.000000000  -0.000016711  -0.001515036   0.000141306   0.002600660  -0.000293628   0.003472872  -0.000170862
                        -0.000000000  -0.000001530   0.003396768  -0.000316814  -0.000277016   0.000031277   0.013276661  -0.000653200

   98   15.1  0.5 -0.5   0.000003838  -0.000000000  -0.000019438  -0.000208409  -0.000088693  -0.000785555  -0.000016633  -0.000338084
                         0.000000006   0.000000000  -0.000001057  -0.000011335   0.000000110   0.000000971   0.000000153   0.000003118


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5  -0.000002262  -0.000594037  -0.000001863   0.000085692  -0.000002239   0.015978084   0.000000205   0.000016789
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000000   0.000000039   0.000000007  -0.000000331  -0.000000000   0.000000005  -0.000000000  -0.000000000
                        -0.000000112  -0.000029470  -0.000005736   0.000263848   0.000002247  -0.016035401  -0.000000206  -0.000016818

    3    3.1  1.5  1.5   0.012513940  -0.000047655   0.000108237   0.000002353   0.007003597   0.000000982   0.000007403  -0.000000091
                         0.010489759  -0.000039947   0.000086658   0.000001884  -0.000481788  -0.000000068   0.000000498  -0.000000006

    4    4.1  1.5  1.5   0.009495549  -0.000036161   0.000124465   0.000002706   0.000529718   0.000000074  -0.000000534   0.000000007
                        -0.011329265   0.000043144  -0.000156925  -0.000003412   0.007693680   0.000001078   0.000007927  -0.000000097

    5    5.1  1.5  1.5   0.012056262  -0.000045912   0.000373601   0.000008122  -0.007302494  -0.000001023  -0.000007530   0.000000092
                         0.010120525  -0.000038541   0.000294139   0.000006395   0.000507381   0.000000071  -0.000000502   0.000000006

    6    6.1  1.5  1.5   0.011058852  -0.000042114   0.000244753   0.000005321  -0.000457292  -0.000000064   0.000000464  -0.000000006
                        -0.013175924   0.000050176  -0.000310031  -0.000006740  -0.006574029  -0.000000921  -0.000006968   0.000000085

    7    7.1  1.5  1.5   0.000027249   0.007155330  -0.000003500   0.000160989  -0.000000191   0.001365086   0.000000019   0.000001518
                        -0.000000000  -0.000000013   0.000000015  -0.000000669  -0.000000000   0.000000005   0.000000000  -0.000000000

    8    8.1  1.5  1.5   0.000033701  -0.000000128  -0.000072966  -0.000001586   0.024132658   0.000003382   0.034166146  -0.000417854
                         0.000028253  -0.000000108  -0.000056817  -0.000001235  -0.001676777  -0.000000235   0.002277552  -0.000027855

    9    9.1  1.5  1.5   0.000159867   0.041980051  -0.000017078   0.000785565   0.000000009  -0.000064286   0.000000003   0.000000226
                        -0.000000001  -0.000000069   0.000000081  -0.000003706  -0.000000000   0.000000024  -0.000000000  -0.000000000

   10   10.1  1.5  1.5  -0.000020606   0.000000078   0.000044853   0.000000975   0.001676887   0.000000235  -0.002277684   0.000027856
                         0.000024587  -0.000000094  -0.000057664  -0.000001254   0.024134243   0.000003383   0.034168120  -0.000417878

   11   11.1  1.5  1.5   0.000059520   0.015629646   0.004801797  -0.220873024   0.000002436  -0.017383641  -0.000000326  -0.000026691
                         0.000000106   0.000027817   0.000004261  -0.000195886  -0.000000001   0.000003786  -0.000000000  -0.000000000

   12   12.1  1.5  1.5  -0.008173332   0.000031125   0.144766512   0.003147233  -0.000893808  -0.000000125   0.000000965  -0.000000012
                         0.009742008  -0.000037099  -0.183858693  -0.003997104  -0.012549291  -0.000001759  -0.000015011   0.000000184

   13   13.1  1.5  1.5   0.018864555  -0.000071840   0.041439235   0.000900892  -0.000169547  -0.000000024   0.000000327  -0.000000004
                        -0.022375859   0.000085211  -0.055712412  -0.001211193  -0.003129086  -0.000000439  -0.000003744   0.000000046

   14   14.1  1.5  1.5   0.000000218   0.000057306   0.000002254  -0.000103477  -0.000000002   0.000014509   0.000000000   0.000000016
                        -0.000026043  -0.006838608  -0.007845693   0.360886128   0.000002511  -0.017915133  -0.000000354  -0.000028965

   15   15.1  1.5  1.5  -0.009016932   0.000034338   0.281557868   0.006121093  -0.010035730  -0.000001407  -0.000016175   0.000000198
                        -0.007744079   0.000029491   0.220371904   0.004790899   0.000710539   0.000000100  -0.000001062   0.000000013

   16   16.1  1.5  1.5   0.000066922   0.017573299  -0.003242441   0.149145781  -0.000001250   0.008917594   0.000000165   0.000013477
                        -0.000000032  -0.000008435   0.000008696  -0.000400076  -0.000000003   0.000020472   0.000000000   0.000000035

   17   17.1  1.5  1.5   0.022853213  -0.000087029   0.061157978   0.001329580  -0.001853703  -0.000000260  -0.000004346   0.000000053
                         0.019189623  -0.000073078   0.047866876   0.001040629   0.000129154   0.000000018  -0.000000289   0.000000004

   18    1.1  1.5  0.5  -0.012229505   0.000046572  -0.000301542  -0.000006556   0.001865504   0.000000261   0.000001823  -0.000000022
                        -0.010265936   0.000039095  -0.000237826  -0.000005170  -0.000129609  -0.000000018   0.000000122  -0.000000001

   19    2.1  1.5  0.5  -0.010306768   0.000039250  -0.000118994  -0.000002587  -0.000001720  -0.000000000  -0.000000007   0.000000000
                         0.012278180  -0.000046757   0.000149534   0.000003251  -0.000024883  -0.000000003   0.000000111  -0.000000001

   20    3.1  1.5  0.5   0.000026728   0.007018603  -0.000009812   0.000451349   0.000001712  -0.012212698  -0.000000156  -0.000012728
                        -0.000000019  -0.000004883   0.000000007  -0.000000308   0.000000001  -0.000008331  -0.000000000  -0.000000009

   21    4.1  1.5  0.5  -0.000000018  -0.000004821   0.000000025  -0.000001146  -0.000000001   0.000008413   0.000000000   0.000000009
                        -0.000029359  -0.007709572   0.000001270  -0.000058400   0.000001865  -0.013305323  -0.000000171  -0.000014013

   22    5.1  1.5  0.5  -0.000027733  -0.007282622  -0.000002881   0.000132523  -0.000001773   0.012649972   0.000000161   0.000013201
                         0.000000000  -0.000000006  -0.000000017   0.000000761   0.000000000  -0.000000005   0.000000000   0.000000000

   23    6.1  1.5  0.5  -0.000000002  -0.000000499  -0.000000013   0.000000607  -0.000000000   0.000000878   0.000000000   0.000000001
                         0.000025256   0.006632176  -0.000003858   0.000177456  -0.000001604   0.011448047   0.000000147   0.000012043

   24    7.1  1.5  0.5  -0.001079357   0.000004110   0.000012389   0.000000269  -0.021384253  -0.000002997  -0.000022402   0.000000274
                        -0.000906025   0.000003450   0.000009306   0.000000202   0.001485814   0.000000208  -0.000001493   0.000000018

   25    8.1  1.5  0.5   0.000092467   0.024281172  -0.000007706   0.000354465  -0.000003923   0.027990818  -0.000241161  -0.019718737
                        -0.000000000  -0.000000009   0.000000053  -0.000002434  -0.000000000   0.000000018   0.000000000   0.000000009

   26    9.1  1.5  0.5   0.000017199  -0.000000065  -0.000037346  -0.000000812   0.014022569   0.000001965  -0.039401154   0.000481878
                         0.000014417  -0.000000055  -0.000029063  -0.000000632  -0.000974311  -0.000000137  -0.002626524   0.000032123

   27   10.1  1.5  0.5  -0.000000001  -0.000000071   0.000000040  -0.000001846  -0.000000000   0.000000009  -0.000000000  -0.000000009
                        -0.000092135  -0.024194007   0.000011899  -0.000547352  -0.000003934   0.028067238  -0.000241181  -0.019720385

   28   11.1  1.5  0.5   0.004478951  -0.000017057   0.086897454   0.001889158  -0.011108376  -0.000001557  -0.000019052   0.000000233
                         0.003777065  -0.000014384   0.067886975   0.001475867   0.000772457   0.000000108  -0.000001270   0.000000016

   29   12.1  1.5  0.5  -0.000000095  -0.000025047   0.000003359  -0.000154523  -0.000000006   0.000044456   0.000000001   0.000000071
                         0.000046996   0.012340742  -0.000225155   0.010356690  -0.000002907   0.020744635   0.000000393   0.000032098

   30   13.1  1.5  0.5   0.000000256   0.000067134  -0.000004669   0.000214865   0.000000013  -0.000093320  -0.000000002  -0.000000153
                        -0.000003965  -0.001041157  -0.003872045   0.178106280  -0.000000711   0.005072943   0.000000089   0.000007254

   31   14.1  1.5  0.5  -0.008193801   0.000031203   0.116643355   0.002535834  -0.000090241  -0.000000013  -0.000000113   0.000000001
                         0.009785304  -0.000037264  -0.149289167  -0.003245560  -0.000886918  -0.000000124   0.000001053  -0.000000013

   32   15.1  1.5  0.5  -0.000036675  -0.009630531   0.001713265  -0.078806731  -0.000002888   0.020603142   0.000000389   0.000031843
                        -0.000000077  -0.000020162  -0.000016777   0.000771746   0.000000003  -0.000020497  -0.000000000  -0.000000036

   33   16.1  1.5  0.5  -0.002008008   0.000007647  -0.081736651  -0.001776962  -0.023447087  -0.000003286  -0.000035857   0.000000439
                        -0.001716730   0.000006538  -0.063584545  -0.001382332   0.001629908   0.000000228  -0.000002391   0.000000029

   34   17.1  1.5  0.5  -0.000062166  -0.016324417  -0.015488359   0.712433452  -0.000000873   0.006232861   0.000000099   0.000008112
                        -0.000000291  -0.000076316  -0.000012402   0.000570099   0.000000001  -0.000006546  -0.000000000  -0.000000002

   35    1.1  1.5 -0.5   0.000060806   0.015967161  -0.000008349   0.000384040   0.000000262  -0.001870001  -0.000000022  -0.000001827
                        -0.000000000  -0.000000037   0.000000028  -0.000001294  -0.000000000   0.000000008  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000   0.000000016  -0.000000032   0.000001474   0.000000000  -0.000000009  -0.000000000   0.000000000
                         0.000061048   0.016030695  -0.000004154   0.000191096   0.000000003  -0.000024942   0.000000001   0.000000111

   37    3.1  1.5 -0.5   0.005372531  -0.000020459   0.000355139   0.000007721  -0.012182748  -0.000001707  -0.000012701   0.000000155
                         0.004516272  -0.000017199   0.000278554   0.000006056   0.000854826   0.000000120  -0.000000838   0.000000010

   38    4.1  1.5 -0.5  -0.004960476   0.000018890  -0.000036913  -0.000000802   0.000930643   0.000000130  -0.000000923   0.000000011
                         0.005901796  -0.000022475   0.000045269   0.000000984   0.013272739   0.000001860   0.000013983  -0.000000171

   39    5.1  1.5 -0.5  -0.005577891   0.000021242   0.000104799   0.000002278   0.012619547   0.000001769   0.000013172  -0.000000161
                        -0.004682276   0.000017831   0.000081117   0.000001763  -0.000876820  -0.000000123   0.000000878  -0.000000011

   40    6.1  1.5 -0.5   0.004263702  -0.000016237   0.000109901   0.000002389  -0.000792638  -0.000000111   0.000000802  -0.000000010
                        -0.005080020   0.000019346  -0.000139330  -0.000003029  -0.011420574  -0.000001601  -0.000012017   0.000000147

   41    7.1  1.5 -0.5   0.000005367   0.001409217   0.000000337  -0.000015492  -0.000003004   0.021435809   0.000000275   0.000022452
                         0.000000000   0.000000020   0.000000007  -0.000000313  -0.000000000   0.000000004   0.000000000   0.000000000

   42    8.1  1.5 -0.5   0.018597369  -0.000070822   0.000277555   0.000006034   0.027923495   0.000003914  -0.019675071   0.000240627
                         0.015611315  -0.000059451   0.000220487   0.000004793  -0.001940184  -0.000000272  -0.001311562   0.000016040

   43    9.1  1.5 -0.5  -0.000000085  -0.000022442  -0.000001029   0.000047321   0.000001970  -0.014056376   0.000482948   0.039488601
                        -0.000000000  -0.000000016  -0.000000003   0.000000148   0.000000000  -0.000000002  -0.000000000  -0.000000019

   44   10.1  1.5 -0.5  -0.015555321   0.000059238  -0.000338963  -0.000007369  -0.001945454  -0.000000273  -0.001311671   0.000016042
                         0.018530569  -0.000070567   0.000429770   0.000009343  -0.027999733  -0.000003924   0.019676715  -0.000240647

   45   11.1  1.5 -0.5  -0.000022312  -0.005858928   0.002397310  -0.110271437  -0.000001561   0.011135202   0.000000234   0.000019095
                         0.000000050   0.000013229   0.000003005  -0.000138155  -0.000000000   0.000000629  -0.000000000  -0.000000000

   46   12.1  1.5 -0.5   0.007915158  -0.000030142   0.006264508   0.000136191  -0.001393553  -0.000000195   0.000002206  -0.000000027
                        -0.009468094   0.000036056  -0.008248688  -0.000179327  -0.020697823  -0.000002901  -0.000032022   0.000000392

   47   13.1  1.5 -0.5  -0.000617981   0.000002353   0.109993317   0.002391262  -0.000444723  -0.000000062   0.000000330  -0.000000004
                         0.000840603  -0.000003201  -0.140083416  -0.003045426  -0.005054273  -0.000000708  -0.000007248   0.000000089

   48   14.1  1.5 -0.5  -0.000000059  -0.000015577  -0.000004922   0.000226291  -0.000000004   0.000028548   0.000000001   0.000000043
                         0.000048603   0.012762849   0.004118748  -0.189454154   0.000000125  -0.000891040   0.000000013   0.000001058

   49   15.1  1.5 -0.5  -0.007389155   0.000028139  -0.061565492  -0.001338439   0.020555010   0.000002881   0.000031770  -0.000000389
                        -0.006176400   0.000023521  -0.049201489  -0.001069644  -0.001407646  -0.000000197   0.000002154  -0.000000026

   50   16.1  1.5 -0.5   0.000010060   0.002641721  -0.002251306   0.103555574  -0.000003294   0.023503670   0.000000440   0.000035936
                        -0.000000091  -0.000023847  -0.000007459   0.000343023  -0.000000000   0.000000768  -0.000000000  -0.000000001

   51   17.1  1.5 -0.5  -0.012552223   0.000047801   0.561221721   0.012201010   0.006218324   0.000000871   0.000008094  -0.000000099
                        -0.010437150   0.000039746   0.438852969   0.009540692  -0.000425497  -0.000000060   0.000000541  -0.000000007

   52    1.1  1.5 -1.5   0.000454984  -0.000001733  -0.000067462  -0.000001467  -0.015939655  -0.000002234  -0.000016752   0.000000205
                         0.000381930  -0.000001454  -0.000052840  -0.000001149   0.001107511   0.000000155  -0.000001117   0.000000014

   53    2.1  1.5 -1.5   0.000018918  -0.000000072  -0.000162434  -0.000003531  -0.001111489  -0.000000156   0.000001119  -0.000000014
                        -0.000022596   0.000000086   0.000207922   0.000004520  -0.015996834  -0.000002242  -0.000016781   0.000000205

   54    3.1  1.5 -1.5   0.000062183   0.016328919  -0.000003014   0.000138646  -0.000000984   0.007020147   0.000000091   0.000007420
                         0.000000043   0.000011408   0.000000032  -0.000001481   0.000000001  -0.000004821  -0.000000000  -0.000000005

   55    4.1  1.5 -1.5  -0.000000043  -0.000011217  -0.000000027   0.000001223   0.000000001  -0.000004839  -0.000000000  -0.000000005
                         0.000056294   0.014782340  -0.000004354   0.000200289   0.000001081  -0.007711893  -0.000000097  -0.000007945

   56    5.1  1.5 -1.5   0.000059944   0.015740981  -0.000010337   0.000475494   0.000001026  -0.007320099  -0.000000092  -0.000007547
                        -0.000000000  -0.000000048   0.000000026  -0.000001194  -0.000000000   0.000000007  -0.000000000  -0.000000000

   57    6.1  1.5 -1.5  -0.000000004  -0.000001145  -0.000000033   0.000001513   0.000000000  -0.000000518  -0.000000000  -0.000000001
                         0.000065508   0.017201837  -0.000008587   0.000394995  -0.000000924   0.006589915   0.000000085   0.000006984

   58    7.1  1.5 -1.5  -0.005480384   0.000020870  -0.000126328  -0.000002746  -0.001361802  -0.000000191  -0.000001514   0.000000019
                        -0.004600450   0.000017519  -0.000099796  -0.000002170   0.000094625   0.000000013  -0.000000101   0.000000001

   59    8.1  1.5 -1.5   0.000000167   0.000043978   0.000002010  -0.000092477  -0.000003390   0.024190840   0.000418781   0.034241974
                         0.000000000   0.000000028   0.000000006  -0.000000263  -0.000000000   0.000000004  -0.000000000  -0.000000016

   60    9.1  1.5 -1.5  -0.032153212   0.000122445  -0.000616158  -0.000013395   0.000064133   0.000000009  -0.000000225   0.000000003
                        -0.026990658   0.000102785  -0.000487314  -0.000010594  -0.000004432  -0.000000001  -0.000000015   0.000000000

   61   10.1  1.5 -1.5   0.000000000   0.000000026   0.000000005  -0.000000246  -0.000000000   0.000000004  -0.000000000  -0.000000016
                        -0.000000122  -0.000032080  -0.000001588   0.000073053   0.000003391  -0.024192429  -0.000418805  -0.034243952

   62   11.1  1.5 -1.5  -0.011988904   0.000045656   0.174005230   0.003782889   0.017342093   0.000002431   0.000026632  -0.000000326
                        -0.010027601   0.000038187   0.136040843   0.002957537  -0.001201160  -0.000000168   0.000001775  -0.000000022

   63   12.1  1.5 -1.5   0.000000013   0.000003417  -0.000012990   0.000597625   0.000000003  -0.000021812  -0.000000000  -0.000000036
                        -0.000048427  -0.012716527  -0.005087411   0.234010694  -0.000001763   0.012581062   0.000000184   0.000015042

   64   13.1  1.5 -1.5   0.000000238   0.000062384   0.000037612  -0.001730029  -0.000000007   0.000047752   0.000000001   0.000000078
                         0.000111453   0.029266818  -0.001509032   0.069412463  -0.000000439   0.003133312   0.000000046   0.000003758

   65   14.1  1.5 -1.5   0.004352915  -0.000016577  -0.222448683  -0.004836049  -0.001256250  -0.000000176   0.000001910  -0.000000023
                        -0.005274654   0.000020087   0.284174931   0.006177988  -0.017871039  -0.000002505  -0.000028902   0.000000353

   66   15.1  1.5 -1.5  -0.000045261  -0.011885195  -0.007773062   0.357545233   0.000001410  -0.010060844  -0.000000198  -0.000016209
                         0.000000510   0.000133990  -0.000002715   0.000124704   0.000000002  -0.000013210  -0.000000000  -0.000000016

   67   16.1  1.5 -1.5  -0.013454275   0.000051236  -0.117169776  -0.002547281  -0.008894727  -0.000001247  -0.000013450   0.000000164
                        -0.011305017   0.000043052  -0.092281459  -0.002006205   0.000638540   0.000000089  -0.000000862   0.000000011

   68   17.1  1.5 -1.5   0.000113641   0.029841430  -0.001688399   0.077662960   0.000000260  -0.001858197  -0.000000053  -0.000004356
                        -0.000000017  -0.000004450  -0.000000602   0.000027659   0.000000000  -0.000000355  -0.000000000  -0.000000001

   69    1.1  0.5  0.5   0.000001651  -0.000000006   0.002678429   0.000058229   0.000015129   0.000000002  -0.000000109   0.000000001
                         0.000001845  -0.000000007   0.002094800   0.000045541  -0.000001050  -0.000000000  -0.000000007   0.000000000

   70    2.1  0.5  0.5  -0.000000002  -0.000000622  -0.000000101   0.000004629   0.000000000  -0.000000057   0.000000000   0.000000000
                         0.000000537   0.000141002   0.000126298  -0.005809436   0.000000003  -0.000018469  -0.000000000  -0.000000017

   71    3.1  0.5  0.5   0.000000161   0.000042164   0.000069520  -0.003197794   0.000000001  -0.000006759   0.000000001   0.000000069
                         0.000000001   0.000000350   0.000000048  -0.000002214  -0.000000000   0.000000051   0.000000000  -0.000000000

   72    4.1  0.5  0.5   0.000004837  -0.000000018  -0.001034531  -0.000022491  -0.000007446  -0.000000001  -0.000000140   0.000000002
                         0.000003957  -0.000000015  -0.000808833  -0.000017584   0.000000517   0.000000000  -0.000000009   0.000000000

   73    5.1  0.5  0.5  -0.000000000  -0.000000124  -0.000000000   0.000000016   0.000000000  -0.000000006   0.000000000  -0.000000000
                        -0.000000299  -0.000078537   0.000019643  -0.000903527  -0.000000000   0.000000589  -0.000000001  -0.000000086

   74    6.1  0.5  0.5   0.000000413   0.000108417  -0.000002905   0.000133606  -0.000000001   0.000005468   0.000000000   0.000000009
                         0.000000000   0.000000033   0.000000008  -0.000000352  -0.000000000   0.000000016   0.000000000  -0.000000000

   75    7.1  0.5  0.5   0.000081515  -0.000000310  -0.001990890  -0.000043282   0.000000997   0.000000000  -0.000000002   0.000000000
                        -0.000097632   0.000000372   0.002546808   0.000055368   0.000014455   0.000000002   0.000000026  -0.000000000

   76    8.1  0.5  0.5   0.043528169  -0.000165763   0.001133384   0.000024640   0.011627456   0.000001630  -0.000012327   0.000000151
                        -0.051853598   0.000197467  -0.001440113  -0.000031308   0.167346284   0.000023454   0.000184926  -0.000002262

   77    9.1  0.5  0.5  -0.000000002  -0.000000320   0.000000138  -0.000006352  -0.000000000   0.000000026   0.000000000   0.000000000
                        -0.000343424  -0.090180845   0.000048168  -0.002215623  -0.000021975   0.156793073   0.000002118   0.000173161

   78   10.1  0.5  0.5  -0.000345321  -0.090678881   0.000025036  -0.001151604   0.000021937  -0.156516811  -0.000002135  -0.000174559
                         0.000000001  -0.000000025  -0.000000209   0.000009629   0.000000000  -0.000000078   0.000000000   0.000000000

   79   11.1  0.5  0.5   0.107840379  -0.000410676   0.001784969   0.000038805  -0.004694251  -0.000000658   0.000005054  -0.000000062
                        -0.128467331   0.000489225  -0.002253723  -0.000048996  -0.067559637  -0.000009469  -0.000075818   0.000000927

   80   12.1  0.5  0.5  -0.138512313   0.000527478  -0.002672597  -0.000058103   0.000274836   0.000000038  -0.000001170   0.000000014
                        -0.116272634   0.000442788  -0.002113581  -0.000045949  -0.000018992  -0.000000003  -0.000000078   0.000000001

   81   13.1  0.5  0.5   0.000000010   0.000000673  -0.000001384   0.000063671   0.000000000  -0.000000450  -0.000000003  -0.000000271
                         0.002571270   0.675197999  -0.000244866   0.011263366  -0.000054566   0.389326845  -0.007037808  -0.575451913

   82   14.1  0.5  0.5  -0.002566523  -0.673951358   0.000302804  -0.013928358  -0.000054855   0.391388185  -0.007037919  -0.575461009
                         0.000000013   0.000001534  -0.000001206   0.000055492   0.000000000  -0.000000323   0.000000003   0.000000271

   83   15.1  0.5  0.5   0.000943929  -0.000003594  -0.002099318  -0.000045639   0.776664721   0.000108853   0.575669357  -0.007040467
                         0.000791246  -0.000003013  -0.001633930  -0.000035522  -0.053963943  -0.000007563   0.038374744  -0.000469325

   84    1.1  0.5 -0.5   0.000000009   0.000002450  -0.000073923   0.003400318  -0.000000002   0.000015165  -0.000000001  -0.000000109
                        -0.000000001  -0.000000351  -0.000000053   0.000002425  -0.000000000  -0.000000001  -0.000000000  -0.000000000

   85    2.1  0.5 -0.5  -0.000090179   0.000000343   0.003578579   0.000077799  -0.000001224  -0.000000000   0.000000001  -0.000000000
                         0.000108395  -0.000000413  -0.004576390  -0.000099491  -0.000018428  -0.000000003  -0.000000017   0.000000000

   86    3.1  0.5 -0.5  -0.000032519   0.000000124   0.002518860   0.000054760   0.000006746   0.000000001  -0.000000069   0.000000001
                        -0.000026841   0.000000102   0.001970086   0.000042830  -0.000000418  -0.000000000  -0.000000005   0.000000000

   87    4.1  0.5 -0.5   0.000000024   0.000006249   0.000028549  -0.001313188   0.000000001  -0.000007464  -0.000000002  -0.000000141
                         0.000000000   0.000000079   0.000000025  -0.000001152   0.000000000  -0.000000000   0.000000000   0.000000000

   88    5.1  0.5 -0.5   0.000050590  -0.000000193   0.000557122   0.000012112   0.000000047   0.000000000   0.000000006  -0.000000000
                        -0.000060073   0.000000229  -0.000711320  -0.000015464   0.000000587   0.000000000  -0.000000086   0.000000001

   89    6.1  0.5 -0.5  -0.000083060   0.000000316  -0.000104966  -0.000002282  -0.000005454  -0.000000001  -0.000000009   0.000000000
                        -0.000069680   0.000000265  -0.000082661  -0.000001797   0.000000395   0.000000000  -0.000000001   0.000000000

   90    7.1  0.5 -0.5  -0.000000001  -0.000000337  -0.000000067   0.000003069   0.000000000  -0.000000008  -0.000000000  -0.000000000
                         0.000000484   0.000127187   0.000070278  -0.003232625   0.000000002  -0.000014489  -0.000000000  -0.000000026

   91    8.1  0.5 -0.5   0.000000002   0.000000294  -0.000000093   0.000004263   0.000000000  -0.000000011  -0.000000000  -0.000000000
                         0.000257819   0.067701529  -0.000039841   0.001832612   0.000023511  -0.167749744  -0.000002267  -0.000185336

   92    9.1  0.5 -0.5   0.057981014  -0.000220802   0.001371202   0.000029810   0.010867987   0.000001523  -0.000011518   0.000000141
                        -0.069070883   0.000263033  -0.001740354  -0.000037835   0.156415967   0.000021922   0.000172777  -0.000002113

   93   10.1  0.5 -0.5   0.069452559  -0.000264487   0.000900674   0.000019581   0.156140362   0.000021884   0.000174172  -0.000002130
                         0.058300956  -0.000222021   0.000717685   0.000015602  -0.010848942  -0.000001521   0.000011611  -0.000000142

   94   11.1  0.5 -0.5   0.000000002   0.000000197  -0.000000338   0.000015540   0.000000000  -0.000000107   0.000000000   0.000000000
                         0.000638745   0.167730148  -0.000062501   0.002874915  -0.000009492   0.067722526   0.000000929   0.000075987

   95   12.1  0.5 -0.5  -0.000688690  -0.180845199   0.000074075  -0.003407307  -0.000000039   0.000275492  -0.000000014  -0.000001172
                         0.000000003   0.000000299  -0.000000347   0.000015956   0.000000000  -0.000000104  -0.000000000  -0.000000000

   96   13.1  0.5 -0.5  -0.434111541   0.001653177  -0.006995359  -0.000152079   0.026986394   0.000003782   0.038275301  -0.000468109
                         0.517145539  -0.001969375   0.008827934   0.000191920   0.388390431   0.000054435  -0.574177591   0.007022223

   97   14.1  0.5 -0.5   0.516190160  -0.001965737   0.010931018   0.000237641  -0.390446867  -0.000054723   0.574186666  -0.007022334
                         0.433310687  -0.001650127   0.008632211   0.000187665   0.027128503   0.000003802   0.038275906  -0.000468116

   98   15.1  0.5 -0.5   0.000004690   0.001231694   0.000057834  -0.002660225  -0.000109115   0.778537216   0.007056093   0.576946990
                         0.000000003   0.000000859   0.000000177  -0.000008158  -0.000000000   0.000000127  -0.000000003  -0.000000271


   Nr   State  S   Sz       89            90            91            92            93            94            95            96

    1    1.1  1.5  1.5   0.001788553  -0.000043248   0.000002616  -0.000437820   0.000032156  -0.000077385  -0.003177845  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000097   0.000000002   0.000000002  -0.000000372   0.000000052  -0.000000126   0.000000047   0.000000000
                        -0.001821044   0.000044033  -0.000001624   0.000271819  -0.000017814   0.000042869   0.003200351  -0.000000000

    3    3.1  1.5  1.5  -0.000003171  -0.000131121   0.000319088   0.000001906  -0.000695868  -0.000289155   0.000000000  -0.001160783
                         0.000032887   0.001360077  -0.000717200  -0.000004285   0.000349327   0.000145157   0.000000000   0.001230370

    4    4.1  1.5  1.5  -0.000027904  -0.001154008  -0.000953662  -0.000005697   0.000390287   0.000162177   0.000000000  -0.000928890
                        -0.000002669  -0.000110399  -0.000423053  -0.000002527   0.000776886   0.000322821  -0.000000000  -0.000874343

    5    5.1  1.5  1.5   0.000002447   0.000101217   0.000566482   0.000003384   0.000307597   0.000127816   0.000000000   0.000808342
                        -0.000025803  -0.001067101  -0.001277038  -0.000007629  -0.000155140  -0.000064465   0.000000000  -0.000860571

    6    6.1  1.5  1.5   0.000031579   0.001305993  -0.001030222  -0.000006155  -0.000146469  -0.000060863   0.000000000   0.001179567
                         0.000003025   0.000125108  -0.000458138  -0.000002737  -0.000289888  -0.000120458  -0.000000000   0.001111846

    7    7.1  1.5  1.5   0.000456637  -0.000011042  -0.000011449   0.001916469  -0.000166704   0.000401183  -0.000399577   0.000000000
                        -0.000001136   0.000000027   0.000000026  -0.000004340   0.000000611  -0.000001470   0.000000547   0.000000000

    8    8.1  1.5  1.5   0.000006076   0.000251261   0.000929368   0.000005552   0.006912928   0.002872542   0.000000000   0.001513199
                        -0.000063548  -0.002628081  -0.002107870  -0.000012593  -0.003472365  -0.001442878  -0.000000000  -0.001607715

    9    9.1  1.5  1.5  -0.001157350   0.000027985   0.000044636  -0.007471601   0.000648055  -0.001559579   0.000335040  -0.000000000
                         0.000004345  -0.000000105  -0.000000099   0.000016592  -0.000002335   0.000005620  -0.000001455  -0.000000000

   10   10.1  1.5  1.5   0.000066773   0.002761478  -0.001368994  -0.000008178  -0.003530721  -0.001467127  -0.000000000   0.001607221
                         0.000006355   0.000262837  -0.000604095  -0.000003609  -0.007028090  -0.002920395   0.000000000   0.001512741

   11   11.1  1.5  1.5   0.374277443  -0.009050158   0.001675180  -0.280409138   0.023084715  -0.055554627  -0.328799646  -0.000000000
                         0.000105140  -0.000002542  -0.000002415   0.000404169  -0.000056985   0.000137137  -0.000023194  -0.000000000

   12   12.1  1.5  1.5  -0.009827335  -0.406418298  -0.097324392  -0.000581421   0.103451043   0.042987201   0.000000000  -0.160085580
                        -0.000912448  -0.037735092  -0.043043805  -0.000257146   0.207009428   0.086019006  -0.000000000  -0.149876919

   13   13.1  1.5  1.5  -0.003914864  -0.161902709   0.339176240   0.002026258  -0.010416603  -0.004328430  -0.000000000  -0.073604840
                        -0.000428841  -0.017735115   0.150543768   0.000899357  -0.023479674  -0.009756552   0.000000000  -0.071125225

   14   14.1  1.5  1.5  -0.000302988   0.000007326   0.000002356  -0.000394366   0.000029966  -0.000072115   0.000212526  -0.000000000
                         0.457066998  -0.011052038   0.000407420  -0.068198273   0.004433185  -0.010668701  -0.375458441   0.000000000

   15   15.1  1.5  1.5  -0.000998313  -0.041286120  -0.015351990  -0.000091714  -0.187297705  -0.077828157   0.000000000  -0.165902157
                         0.010483484   0.433553912   0.040372229   0.000241186   0.093291637   0.038765644   0.000000000   0.176205306

   16   16.1  1.5  1.5  -0.273037435   0.006602140   0.002424039  -0.405760849   0.035824246  -0.086213002   0.181878344  -0.000000000
                        -0.000284381   0.000006876  -0.000006530   0.001093020  -0.000147616   0.000355245   0.000391584  -0.000000000

   17   17.1  1.5  1.5  -0.000040317  -0.001667358  -0.162672668  -0.000971816   0.038700999   0.016081497  -0.000000000   0.001832927
                         0.000480895   0.019887860   0.366188846   0.002187633  -0.019202357  -0.007979190  -0.000000000  -0.001648618

   18    1.1  1.5  0.5  -0.000000561  -0.000023186   0.000137675   0.000000822  -0.001480704  -0.000615280  -0.000000000  -0.000060098
                         0.000005744   0.000237546  -0.000306899  -0.000001833   0.000743300   0.000308865  -0.000000000   0.000065618

   19    2.1  1.5  0.5   0.000003017   0.000124774  -0.001002247  -0.000005987  -0.000612247  -0.000254408  -0.000000000  -0.000203457
                         0.000000295   0.000012208  -0.000444349  -0.000002655  -0.001217800  -0.000506035   0.000000000  -0.000193164

   20    3.1  1.5  0.5  -0.000046968   0.000001136  -0.000008815   0.001475595   0.000455551  -0.001096307   0.002312055   0.000000000
                        -0.000000823   0.000000020   0.000000019  -0.000003175  -0.000000340   0.000000819   0.000002247   0.000000000

   21    4.1  1.5  0.5  -0.000000601   0.000000015   0.000000021  -0.000003569  -0.000000250   0.000000603  -0.000000968   0.000000000
                        -0.000451105   0.000010908   0.000008811  -0.001474917  -0.000399572   0.000961593   0.002792129  -0.000000000

   22    5.1  1.5  0.5   0.000071467  -0.000001728   0.000005244  -0.000877722   0.000637880  -0.001535094  -0.002394585  -0.000000000
                         0.000000753  -0.000000018  -0.000000016   0.000002733  -0.000000700   0.000001685  -0.000000518  -0.000000000

   23    6.1  1.5  0.5   0.000000726  -0.000000018  -0.000000015   0.000002499  -0.000000745   0.000001792  -0.000000703  -0.000000000
                         0.000367156  -0.000008878  -0.000004020   0.000672904  -0.000673186   0.001620060  -0.002402261   0.000000000

   24    7.1  1.5  0.5   0.000003705   0.000153216   0.000110061   0.000000658  -0.000162505  -0.000067526  -0.000000000   0.002948863
                        -0.000038851  -0.001606715  -0.000249508  -0.000001491   0.000081740   0.000033965  -0.000000000  -0.003132892

   25    8.1  1.5  0.5  -0.003686699   0.000089146  -0.000042814   0.007166690  -0.000607107   0.001461036   0.002742890  -0.000000000
                        -0.000003512   0.000000085   0.000000080  -0.000013402   0.000001888  -0.000004545  -0.000000880  -0.000000000

   26    9.1  1.5  0.5   0.000021531   0.000890442   0.000563662   0.000003367  -0.000198053  -0.000082297  -0.000000000   0.000874279
                        -0.000225723  -0.009334974  -0.001280387  -0.000007649   0.000100367   0.000041706  -0.000000000  -0.000928885

   27   10.1  1.5  0.5  -0.000004014   0.000000097   0.000000092  -0.000015321   0.000002156  -0.000005188  -0.000000805  -0.000000000
                        -0.005691447   0.000137621   0.000034457  -0.005767804   0.000514966  -0.001239293   0.002355553   0.000000000

   28   11.1  1.5  0.5  -0.000475753  -0.019675202   0.021740752   0.000129880  -0.329944690  -0.137102519  -0.000000000  -0.134937104
                         0.004957504   0.205022025  -0.048074800  -0.000287202   0.165613239   0.068817572  -0.000000000   0.143550822

   29   12.1  1.5  0.5  -0.000268060   0.000006482  -0.000000454   0.000076049   0.000083604  -0.000201198   0.000942571   0.000000000
                        -0.142587887   0.003447824   0.002427920  -0.406410481  -0.013417467   0.032289866   0.419427627  -0.000000000

   30   13.1  1.5  0.5   0.000004910  -0.000000119   0.000013933  -0.002332176   0.000163439  -0.000393325  -0.001804939   0.000000000
                        -0.031239945   0.000755393  -0.000095748   0.016027304   0.196000483  -0.471685852   0.103988308  -0.000000000

   31   14.1  1.5  0.5  -0.000757630  -0.031332470   0.251280453   0.001501164   0.153888023   0.063945371   0.000000000   0.023495133
                        -0.000063791  -0.002638140   0.111530052   0.000666287   0.305568918   0.126973610  -0.000000000   0.023076831

   32   15.1  1.5  0.5  -0.019972369   0.000482939  -0.002564841   0.429329745   0.000141468  -0.000340450   0.383980862   0.000000000
                        -0.000054507   0.000001318  -0.000000725   0.000121334   0.001059366  -0.002549422  -0.000346157   0.000000000

   33   16.1  1.5  0.5  -0.000810384  -0.033514146  -0.038729501  -0.000231372   0.175514043   0.072931671   0.000000000  -0.318665321
                         0.008520433   0.352370190   0.086496702   0.000516736  -0.088604728  -0.036818084   0.000000000   0.338417426

   34   17.1  1.5  0.5  -0.007776291   0.000188033   0.000213531  -0.035742984  -0.197032476   0.474169401   0.071310622   0.000000000
                        -0.000069135   0.000001672   0.000001271  -0.000212752   0.000158253  -0.000380846  -0.000002238   0.000000000

   35    1.1  1.5 -0.5   0.000238675  -0.000005771  -0.000002009   0.000336360  -0.000688452   0.001656797   0.000088972   0.000000000
                        -0.000000538   0.000000013   0.000000011  -0.000001890   0.000000635  -0.000001529   0.000001209   0.000000000

   36    2.1  1.5 -0.5   0.000000312  -0.000000008  -0.000000008   0.000001363   0.000000180  -0.000000433  -0.000001218  -0.000000000
                         0.000125369  -0.000003031  -0.000006550   0.001096332   0.000566387  -0.001363042  -0.000280545   0.000000000

   37    3.1  1.5 -0.5  -0.000000088  -0.000003638  -0.000599294  -0.000003580  -0.000979700  -0.000407096   0.000000000   0.001582973
                         0.000001132   0.000046834   0.001348421   0.000008056   0.000492016   0.000204448   0.000000000  -0.001685171

   38    4.1  1.5 -0.5   0.000010857   0.000449012  -0.001347641  -0.000008051  -0.000431660  -0.000179368  -0.000000000  -0.002033883
                         0.000001050   0.000043410  -0.000599380  -0.000003581  -0.000859262  -0.000357051   0.000000000  -0.001912932

   39    5.1  1.5 -0.5   0.000000146   0.000006033   0.000357248   0.000002134  -0.001372057  -0.000570133  -0.000000000  -0.001640795
                        -0.000001722  -0.000071215  -0.000801734  -0.000004790   0.000688460   0.000286077  -0.000000000   0.001744083

   40    6.1  1.5 -0.5  -0.000008836  -0.000365430   0.000614484   0.000003671  -0.000726553  -0.000301906   0.000000000   0.001748837
                        -0.000000860  -0.000035567   0.000274253   0.000001638  -0.001448005  -0.000601692  -0.000000000   0.001646946

   41    7.1  1.5 -0.5  -0.001614004   0.000039027  -0.000001629   0.000272704  -0.000075587   0.000181905  -0.004302418   0.000000000
                         0.000000041  -0.000000001  -0.000000001   0.000000172   0.000000009  -0.000000022   0.000000167   0.000000000

   42    8.1  1.5 -0.5  -0.000008376  -0.000346384  -0.002908810  -0.000017377   0.001307186   0.000543177  -0.000000000   0.001880530
                         0.000088751   0.003670392   0.006549843   0.000039129  -0.000652619  -0.000271184  -0.000000000  -0.001996761

   43    9.1  1.5 -0.5  -0.009377346   0.000226747  -0.000008357   0.001398964  -0.000092261   0.000222032  -0.001275614  -0.000000000
                         0.000000502  -0.000000012  -0.000000011   0.000001919  -0.000000266   0.000000641   0.000000019   0.000000000

   44   10.1  1.5 -0.5   0.000136991   0.005665377  -0.005269528  -0.000031480   0.000552379   0.000229531   0.000000000  -0.001715857
                         0.000013157   0.000544133  -0.002345179  -0.000014010   0.001109392   0.000460988  -0.000000000  -0.001613835

   45   11.1  1.5 -0.5   0.205963898  -0.004980278  -0.000315192   0.052760204  -0.153404489   0.369176269   0.197014834   0.000000000
                        -0.000129108   0.000003122   0.000002722  -0.000455604   0.000147495  -0.000354954   0.000124432   0.000000000

   46   12.1  1.5 -0.5   0.003431647   0.141918875  -0.371768103  -0.002220964  -0.014692764  -0.006105311  -0.000000000  -0.304779780
                         0.000333663   0.013798928  -0.164188801  -0.000980873  -0.028754106  -0.011948246   0.000000000  -0.288148761

   47   13.1  1.5 -0.5   0.000751994   0.031099409   0.015602519   0.000093210   0.211653018   0.087948565  -0.000000000  -0.076960985
                         0.000071571   0.002959890   0.004344528   0.000025954   0.421533744   0.175160686   0.000000000  -0.069955936

   48   14.1  1.5 -0.5   0.000347326  -0.000008398   0.000002719  -0.000455136   0.000052718  -0.000126868   0.000701652   0.000000000
                        -0.031441419   0.000760264   0.001642384  -0.274919282  -0.142166471   0.342131365   0.032925204  -0.000000000

   49   15.1  1.5 -0.5  -0.000044520  -0.001841186  -0.173410627  -0.001035965   0.000841742   0.000349771   0.000000000   0.263420367
                         0.000480884   0.019887396   0.392750301   0.002346313   0.002430418   0.001009916   0.000000000  -0.279376328

   50   16.1  1.5 -0.5   0.353960368  -0.008558884   0.000566164  -0.094770441   0.081698151  -0.196611056   0.464837529  -0.000000000
                         0.000078254  -0.000001892  -0.000002784   0.000466022   0.000109655  -0.000263891  -0.000110452  -0.000000000

   51   17.1  1.5 -0.5  -0.000016181  -0.000669174   0.014251592   0.000085140   0.423746689   0.176080235   0.000000000   0.048875667
                         0.000187343   0.007747754  -0.032779541  -0.000195827  -0.212780424  -0.088417038   0.000000000  -0.051926621

   52    1.1  1.5 -1.5  -0.000004104  -0.000169740  -0.000176953  -0.000001057   0.000069128   0.000028725   0.000000000   0.002177994
                         0.000043053   0.001780481   0.000400467   0.000002392  -0.000034782  -0.000014453  -0.000000000  -0.002314096

   53    2.1  1.5 -1.5  -0.000043835  -0.001812816  -0.000248779  -0.000001486   0.000019381   0.000008053   0.000000000   0.002330452
                        -0.000004181  -0.000172920  -0.000109521  -0.000000654   0.000038239   0.000015889  -0.000000000   0.002193453

   54    3.1  1.5 -1.5  -0.001366382   0.000033040   0.000004689  -0.000784977   0.000323545  -0.000778628  -0.001691515   0.000000000
                         0.000001453  -0.000000035  -0.000000012   0.000001995  -0.000000296   0.000000712   0.000002022   0.000000000

   55    4.1  1.5 -1.5   0.000000381  -0.000000009   0.000000009  -0.000001520   0.000000223  -0.000000536   0.000000062  -0.000000000
                         0.001159277  -0.000028032   0.000006233  -0.001043285   0.000361268  -0.000869411   0.001275662   0.000000000

   56    5.1  1.5 -1.5   0.001071891  -0.000025919   0.000008346  -0.001397041  -0.000143153   0.000344506   0.001180677   0.000000000
                         0.000000511  -0.000000012  -0.000000012   0.000002014  -0.000000138   0.000000333   0.000001176   0.000000000

   57    6.1  1.5 -1.5  -0.000000601   0.000000015   0.000000016  -0.000002668   0.000000228  -0.000000547  -0.000001204  -0.000000000
                        -0.001311971   0.000031724   0.000006736  -0.001127493  -0.000134960   0.000324789  -0.001620981   0.000000000

   58    7.1  1.5 -1.5  -0.000001075  -0.000044467   0.000778546   0.000004651  -0.000359037  -0.000149191  -0.000000000   0.000274256
                         0.000010989   0.000454468  -0.001751211  -0.000010462   0.000179003   0.000074381  -0.000000000  -0.000290596

   59    8.1  1.5 -1.5   0.002640065  -0.000063838   0.000013762  -0.002303657  -0.003214559   0.007736011   0.002207831  -0.000000000
                        -0.000000713   0.000000017   0.000000011  -0.000001857   0.000002172  -0.000005228  -0.000000030  -0.000000000

   60    9.1  1.5 -1.5   0.000002760   0.000114162  -0.003034963  -0.000018131   0.001395698   0.000579957   0.000000000  -0.000230685
                        -0.000027849  -0.001151713   0.006827451   0.000040788  -0.000695949  -0.000289189   0.000000000   0.000242978

   61   10.1  1.5 -1.5   0.000000423  -0.000000010  -0.000000004   0.000000748  -0.000002019   0.000004859  -0.000000034   0.000000000
                        -0.002773958   0.000067075   0.000008939  -0.001496354  -0.003268205   0.007865114  -0.002207158   0.000000000

   62   11.1  1.5 -1.5  -0.000856360  -0.035415542  -0.113702261  -0.000679264   0.049688584   0.020647188   0.000000000   0.225331952
                         0.009009551   0.372598115   0.256322539   0.001531286  -0.024847131  -0.010324774   0.000000000  -0.239446694

   63   12.1  1.5 -1.5  -0.001005710   0.000024318   0.000000215  -0.000036036   0.000261719  -0.000629842  -0.000577707  -0.000000000
                         0.408165112  -0.009869574   0.000635748  -0.106418067   0.096161844  -0.231418722   0.219294665   0.000000000

   64   13.1  1.5 -1.5   0.002289948  -0.000055372  -0.000003678   0.000615659  -0.000518603   0.001248046   0.001346729   0.000000000
                         0.162855082  -0.003937892  -0.002216879   0.371084315  -0.010660988   0.025656249   0.102345768  -0.000000000

   65   14.1  1.5 -1.5   0.011002850   0.455032774   0.062220512   0.000371709  -0.004730745  -0.001965775  -0.000000000  -0.273553234
                         0.001041583   0.043075599   0.027924322   0.000166822  -0.009562763  -0.003973633   0.000000000  -0.257172538

   66   15.1  1.5 -1.5  -0.435515253   0.010530910  -0.000257677   0.043132645   0.086947534  -0.209243984  -0.242016185   0.000000000
                        -0.000045972   0.000001112  -0.000013591   0.002274961  -0.000351369   0.000845589   0.000043869   0.000000000

   67   16.1  1.5 -1.5   0.000619720   0.025629088  -0.164995569  -0.000985693   0.077173742   0.032068146   0.000000000  -0.124368495
                        -0.006572993  -0.271832065   0.370701393   0.002214591  -0.038432038  -0.015969735   0.000000000   0.132711578

   68   17.1  1.5 -1.5  -0.019956333   0.000482551  -0.002393772   0.400694448  -0.017951935   0.043202312   0.002456748  -0.000000000
                        -0.000227594   0.000005503   0.000004732  -0.000792127   0.000100194  -0.000241124  -0.000204821  -0.000000000

   69    1.1  0.5  0.5   0.000000183   0.000007583  -0.000114906  -0.000000686  -0.000048004  -0.000019947  -0.000000000   0.000000039
                        -0.000001886  -0.000077996   0.000258634   0.000001545   0.000024298   0.000010097   0.000000000  -0.000000041

   70    2.1  0.5  0.5  -0.000000042   0.000000001   0.000000001  -0.000000131   0.000000084  -0.000000202  -0.000000000   0.000000000
                        -0.000051889   0.000001255  -0.000000227   0.000037982   0.000113632  -0.000273461  -0.000000318  -0.000000000

   71    3.1  0.5  0.5  -0.000045745   0.000001106   0.000000138  -0.000023053  -0.000112601   0.000270979  -0.000000013   0.000000000
                        -0.000000036   0.000000001   0.000000001  -0.000000107   0.000000080  -0.000000192   0.000000001   0.000000000

   72    4.1  0.5  0.5   0.000000661   0.000027334   0.000032748   0.000000196  -0.000000404  -0.000000168   0.000000000  -0.000000159
                        -0.000006934  -0.000286749  -0.000074084  -0.000000443   0.000000207   0.000000086  -0.000000000   0.000000169

   73    5.1  0.5  0.5   0.000000103  -0.000000002  -0.000000002   0.000000400  -0.000000043   0.000000104  -0.000000000  -0.000000000
                         0.000262091  -0.000006337  -0.000000843   0.000141153   0.000011092  -0.000026694  -0.000000064  -0.000000000

   74    6.1  0.5  0.5   0.000210203  -0.000005083   0.000001260  -0.000210931  -0.000006037   0.000014528  -0.000000017  -0.000000000
                         0.000000078  -0.000000002  -0.000000002   0.000000305  -0.000000030   0.000000071   0.000000000  -0.000000000

   75    7.1  0.5  0.5  -0.000000962  -0.000039764   0.000216716   0.000001295  -0.000073322  -0.000030468   0.000000000  -0.000000017
                        -0.000000096  -0.000003952   0.000096421   0.000000576  -0.000146325  -0.000060803  -0.000000000  -0.000000016

   76    8.1  0.5  0.5  -0.000750643  -0.031043538  -0.011516342  -0.000068799  -0.004030483  -0.001674794   0.000000000  -0.026772151
                        -0.000071549  -0.002958985  -0.005092083  -0.000030420  -0.008022300  -0.003333521  -0.000000000  -0.025190245

   77    9.1  0.5  0.5  -0.000014971   0.000000362   0.000000342  -0.000057180   0.000008048  -0.000019368   0.000007303   0.000000000
                         0.015715950  -0.000380017   0.000182636  -0.030571524   0.002587912  -0.006227952  -0.033812520  -0.000000000

   78   10.1  0.5  0.5  -0.024260274   0.000586622   0.000146992  -0.024605011   0.002197442  -0.005288265   0.037415126  -0.000000000
                         0.000017110  -0.000000414  -0.000000390   0.000065350  -0.000009197   0.000022133  -0.000008347  -0.000000000

   79   11.1  0.5  0.5   0.000366267   0.015147297  -0.015825205  -0.000094541  -0.010930801  -0.004542096   0.000000000   0.013675279
                         0.000035068   0.001450261  -0.007021633  -0.000041948  -0.021739919  -0.009033628  -0.000000000   0.012891236

   80   12.1  0.5  0.5   0.000004580   0.000189400  -0.002759344  -0.000016484   0.028308433   0.011763055  -0.000000000   0.002483096
                        -0.000045462  -0.001880114   0.006157238   0.000036784  -0.014210843  -0.005905058  -0.000000000  -0.002615421

   81   13.1  0.5  0.5  -0.000000001   0.000000000  -0.000000000   0.000000043  -0.000000004   0.000000011  -0.000009100  -0.000000000
                        -0.000001961   0.000000047  -0.000000119   0.000019994  -0.000002050   0.000004933  -0.015540805   0.000000000

   82   14.1  0.5  0.5   0.000000439  -0.000000011   0.000000131  -0.000021860  -0.000001096   0.000002638  -0.011444540  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000049   0.000000003  -0.000000008  -0.000008704  -0.000000000

   83   15.1  0.5  0.5   0.000000004   0.000000160   0.000000154   0.000000001   0.000003350   0.000001392   0.000000000  -0.018514485
                        -0.000000041  -0.000001676  -0.000000341  -0.000000002  -0.000001666  -0.000000692   0.000000000   0.019670869

   84    1.1  0.5 -0.5   0.000078363  -0.000001895  -0.000001691   0.000283010   0.000022357  -0.000053803   0.000000057   0.000000000
                        -0.000000147   0.000000004   0.000000003  -0.000000571   0.000000054  -0.000000130  -0.000000000  -0.000000000

   85    2.1  0.5 -0.5  -0.000001249  -0.000051650  -0.000034795  -0.000000208  -0.000122729  -0.000050998   0.000000000  -0.000000232
                        -0.000000120  -0.000004966  -0.000015231  -0.000000091  -0.000244373  -0.000101545  -0.000000000  -0.000000218

   86    3.1  0.5 -0.5   0.000000104   0.000004305  -0.000009220  -0.000000055  -0.000242152  -0.000100622  -0.000000000   0.000000010
                        -0.000001101  -0.000045542   0.000021130   0.000000126   0.000121623   0.000050538  -0.000000000  -0.000000009

   87    4.1  0.5 -0.5   0.000288049  -0.000006965   0.000000484  -0.000080999   0.000000188  -0.000000453  -0.000000232  -0.000000000
                         0.000000003  -0.000000000  -0.000000000   0.000000011   0.000000001  -0.000000003   0.000000000  -0.000000000

   88    5.1  0.5 -0.5   0.000006309   0.000260898  -0.000128949  -0.000000770  -0.000012091  -0.000005024  -0.000000000  -0.000000047
                         0.000000604   0.000024976  -0.000057416  -0.000000343  -0.000023799  -0.000009889   0.000000000  -0.000000044

   89    6.1  0.5 -0.5  -0.000000480  -0.000019871  -0.000085530  -0.000000511  -0.000012946  -0.000005379  -0.000000000   0.000000012
                         0.000005060   0.000209262   0.000192812   0.000001152   0.000006593   0.000002740   0.000000000  -0.000000013

   90    7.1  0.5 -0.5   0.000000161  -0.000000004  -0.000000004   0.000000605  -0.000000112   0.000000269   0.000000000  -0.000000000
                         0.000039960  -0.000000966  -0.000001417   0.000237197  -0.000068009   0.000163667   0.000000024   0.000000000

   91    8.1  0.5 -0.5  -0.000000508   0.000000012   0.000000019  -0.000003105  -0.000002194   0.000005280  -0.000005331  -0.000000000
                         0.031184240  -0.000754046   0.000075225  -0.012591879  -0.003730589   0.008977865   0.036759985   0.000000000

   92    9.1  0.5 -0.5   0.000378336   0.015646437   0.027940189   0.000166916  -0.002781920  -0.001155976   0.000000000  -0.024627169
                         0.000035705   0.001476594   0.012408352   0.000074128  -0.005572135  -0.002315399  -0.000000000  -0.023168710

   93   10.1  0.5 -0.5   0.000056084   0.002319415  -0.010004348  -0.000059767   0.004733955   0.001967109   0.000000000  -0.025649218
                        -0.000583935  -0.024149152   0.022479410   0.000134293  -0.002357098  -0.000979449   0.000000000   0.027239848

   94   11.1  0.5 -0.5  -0.000006185   0.000000150   0.000000158  -0.000026527  -0.000002809   0.000006761  -0.000014752  -0.000000000
                        -0.015216564   0.000367942   0.000103429  -0.017312993  -0.010111235   0.024333238  -0.018793536   0.000000000

   95   12.1  0.5 -0.5   0.001889602  -0.000045691  -0.000040308   0.006747171  -0.013162029   0.031675142   0.003606376  -0.000000000
                        -0.000010116   0.000000245   0.000000211  -0.000035367   0.000012046  -0.000028990  -0.000015656  -0.000000000

   96   13.1  0.5 -0.5  -0.000000047  -0.000001952  -0.000018271  -0.000000109   0.000002208   0.000000917  -0.000000000  -0.011310525
                        -0.000000005  -0.000000187  -0.000008121  -0.000000049   0.000004412   0.000001833   0.000000000  -0.010657801

   97   14.1  0.5 -0.5  -0.000000001  -0.000000042  -0.000008880  -0.000000053  -0.000002360  -0.000000981   0.000000000   0.007837386
                         0.000000011   0.000000437   0.000019975   0.000000119   0.000001179   0.000000490   0.000000000  -0.008339842

   98   15.1  0.5 -0.5   0.000001683  -0.000000041   0.000000002  -0.000000374  -0.000001554   0.000003741  -0.027013501  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000004   0.000000007  -0.000000018   0.000000396   0.000000000


   Nr   State  S   Sz       97            98

    1    1.1  1.5  1.5   0.000401983  -0.000000000
                        -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000370   0.000000000
                        -0.000280353   0.000000000

    3    3.1  1.5  1.5   0.000000000  -0.003131917
                         0.000000000   0.000041396

    4    4.1  1.5  1.5   0.000000000   0.000041723
                        -0.000000000   0.003085850

    5    5.1  1.5  1.5   0.000000000  -0.003271174
                         0.000000000   0.000041879

    6    6.1  1.5  1.5   0.000000000   0.000041600
                        -0.000000000   0.003314658

    7    7.1  1.5  1.5  -0.001400840  -0.000000000
                         0.000004320   0.000000000

    8    8.1  1.5  1.5  -0.000000000  -0.000194709
                        -0.000000000   0.000003300

    9    9.1  1.5  1.5   0.003821049   0.000000000
                        -0.000011499  -0.000000000

   10   10.1  1.5  1.5   0.000000000  -0.000003266
                        -0.000000000  -0.000192312

   11   11.1  1.5  1.5   0.104755227   0.000000000
                        -0.000188095  -0.000000000

   12   12.1  1.5  1.5   0.000000000   0.001819596
                        -0.000000000   0.148026553

   13   13.1  1.5  1.5  -0.000000000  -0.006095599
                         0.000000000  -0.510436261

   14   14.1  1.5  1.5   0.000118956  -0.000000000
                         0.032876536  -0.000000000

   15   15.1  1.5  1.5   0.000000000  -0.076386313
                         0.000000000  -0.001874959

   16   16.1  1.5  1.5   0.135073098   0.000000000
                        -0.000510001  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.526275386
                        -0.000000000  -0.006704179

   18    1.1  1.5  0.5  -0.000000000   0.003219839
                        -0.000000000  -0.000040818

   19    2.1  1.5  0.5  -0.000000000  -0.000040411
                         0.000000000  -0.003198820

   20    3.1  1.5  0.5  -0.001618458  -0.000000000
                         0.000004761   0.000000000

   21    4.1  1.5  0.5   0.000006036   0.000000000
                         0.001300461   0.000000000

   22    5.1  1.5  0.5   0.001676565   0.000000000
                        -0.000004088  -0.000000000

   23    6.1  1.5  0.5  -0.000004119  -0.000000000
                        -0.001119328  -0.000000000

   24    7.1  1.5  0.5  -0.000000000  -0.000100395
                        -0.000000000   0.000002892

   25    8.1  1.5  0.5   0.001987024   0.000000000
                        -0.000006946  -0.000000000

   26    9.1  1.5  0.5  -0.000000000  -0.000112309
                        -0.000000000   0.000001905

   27   10.1  1.5  0.5  -0.000006357  -0.000000000
                        -0.002433434  -0.000000000

   28   11.1  1.5  0.5  -0.000000000   0.355129454
                        -0.000000000  -0.004573106

   29   12.1  1.5  0.5   0.000145103   0.000000000
                         0.195320396   0.000000000

   30   13.1  1.5  0.5   0.001462869   0.000000000
                         0.048462846   0.000000000

   31   14.1  1.5  0.5   0.000000000   0.004586008
                        -0.000000000   0.375265262

   32   15.1  1.5  0.5  -0.268738905  -0.000000000
                         0.000455694   0.000000000

   33   16.1  1.5  0.5   0.000000000  -0.129229626
                         0.000000000   0.001010807

   34   17.1  1.5  0.5  -0.049919689  -0.000000000
                         0.000113390   0.000000000

   35    1.1  1.5 -0.5  -0.003220084  -0.000000000
                         0.000009550   0.000000000

   36    2.1  1.5 -0.5  -0.000009628  -0.000000000
                        -0.003199061  -0.000000000

   37    3.1  1.5 -0.5   0.000000000  -0.001618335
                         0.000000000   0.000020555

   38    4.1  1.5 -0.5  -0.000000000  -0.000014305
                         0.000000000  -0.001300397

   39    5.1  1.5 -0.5  -0.000000000   0.001676423
                        -0.000000000  -0.000022136

   40    6.1  1.5 -0.5   0.000000000   0.000013389
                        -0.000000000   0.001119256

   41    7.1  1.5 -0.5   0.000100428  -0.000000000
                         0.000001322   0.000000000

   42    8.1  1.5 -0.5  -0.000000000   0.001986890
                        -0.000000000  -0.000024134

   43    9.1  1.5 -0.5   0.000112326  -0.000000000
                         0.000000148   0.000000000

   44   10.1  1.5 -0.5   0.000000000   0.000031707
                        -0.000000000   0.002433236

   45   11.1  1.5 -0.5  -0.355157540  -0.000000000
                         0.000982205   0.000000000

   46   12.1  1.5 -0.5  -0.000000000  -0.002910015
                         0.000000000  -0.195298771

   47   13.1  1.5 -0.5  -0.000000000   0.000704659
                         0.000000000  -0.048479798

   48   14.1  1.5 -0.5   0.001284258   0.000000000
                         0.375291086   0.000000000

   49   15.1  1.5 -0.5   0.000000000  -0.268713156
                         0.000000000   0.003747837

   50   16.1  1.5 -0.5   0.129229627   0.000000000
                        -0.001010659  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.049915356
                         0.000000000   0.000667442

   52    1.1  1.5 -1.5   0.000000000  -0.000401934
                        -0.000000000   0.000006288

   53    2.1  1.5 -1.5   0.000000000  -0.000004756
                        -0.000000000  -0.000280313

   54    3.1  1.5 -1.5  -0.003132181  -0.000000000
                         0.000007597   0.000000000

   55    4.1  1.5 -1.5  -0.000006550  -0.000000000
                        -0.003086125  -0.000000000

   56    5.1  1.5 -1.5  -0.003271429  -0.000000000
                         0.000009292   0.000000000

   57    6.1  1.5 -1.5  -0.000010251  -0.000000000
                        -0.003314904  -0.000000000

   58    7.1  1.5 -1.5  -0.000000000   0.001400736
                        -0.000000000  -0.000017592

   59    8.1  1.5 -1.5  -0.000194737   0.000000000
                        -0.000000254  -0.000000000

   60    9.1  1.5 -1.5   0.000000000  -0.003820762
                         0.000000000   0.000048269

   61   10.1  1.5 -1.5  -0.000000257  -0.000000000
                         0.000192340  -0.000000000

   62   11.1  1.5 -1.5   0.000000000  -0.104745354
                         0.000000000   0.001450456

   63   12.1  1.5 -1.5  -0.000495981  -0.000000000
                        -0.148036905  -0.000000000

   64   13.1  1.5 -1.5   0.001889127   0.000000000
                         0.510469161   0.000000000

   65   14.1  1.5 -1.5  -0.000000000   0.000395297
                         0.000000000   0.032874375

   66   15.1  1.5 -1.5  -0.076347641  -0.000000000
                         0.003069525   0.000000000

   67   16.1  1.5 -1.5   0.000000000  -0.135064551
                         0.000000000   0.001602805

   68   17.1  1.5 -1.5   0.526315867   0.000000000
                        -0.001528369  -0.000000000

   69    1.1  0.5  0.5  -0.000000000   0.000000640
                        -0.000000000  -0.000000008

   70    2.1  0.5  0.5  -0.000000000  -0.000000000
                        -0.000000100  -0.000000000

   71    3.1  0.5  0.5   0.000000313  -0.000000000
                        -0.000000001  -0.000000000

   72    4.1  0.5  0.5   0.000000000  -0.000000308
                         0.000000000   0.000000004

   73    5.1  0.5  0.5  -0.000000001  -0.000000000
                        -0.000000296   0.000000000

   74    6.1  0.5  0.5   0.000000366   0.000000000
                        -0.000000001   0.000000000

   75    7.1  0.5  0.5  -0.000000000  -0.000000010
                         0.000000000  -0.000000802

   76    8.1  0.5  0.5   0.000000000   0.000251923
                        -0.000000000   0.018795160

   77    9.1  0.5  0.5   0.000057709   0.000000000
                         0.023665710   0.000000000

   78   10.1  0.5  0.5   0.017426094   0.000000000
                        -0.000065955  -0.000000000

   79   11.1  0.5  0.5   0.000000000   0.000458489
                        -0.000000000   0.036755834

   80   12.1  0.5  0.5  -0.000000000   0.041115062
                        -0.000000000  -0.000519412

   81   13.1  0.5  0.5  -0.000071876  -0.000000000
                        -0.022182412  -0.000000000

   82   14.1  0.5  0.5   0.024545988   0.000000000
                        -0.000068750  -0.000000000

   83   15.1  0.5  0.5   0.000000000   0.002367301
                         0.000000000  -0.000040158

   84    1.1  0.5 -0.5   0.000000640   0.000000000
                        -0.000000002  -0.000000000

   85    2.1  0.5 -0.5  -0.000000000  -0.000000001
                         0.000000000  -0.000000100

   86    3.1  0.5 -0.5  -0.000000000  -0.000000313
                         0.000000000   0.000000003

   87    4.1  0.5 -0.5  -0.000000308  -0.000000000
                         0.000000000   0.000000000

   88    5.1  0.5 -0.5  -0.000000000  -0.000000004
                        -0.000000000  -0.000000296

   89    6.1  0.5 -0.5   0.000000000  -0.000000366
                        -0.000000000   0.000000005

   90    7.1  0.5 -0.5   0.000000003   0.000000000
                         0.000000802   0.000000000

   91    8.1  0.5 -0.5  -0.000042092  -0.000000000
                        -0.018796801  -0.000000000

   92    9.1  0.5 -0.5   0.000000000   0.000312465
                        -0.000000000   0.023663717

   93   10.1  0.5 -0.5   0.000000000  -0.017424994
                         0.000000000   0.000206623

   94   11.1  0.5 -0.5  -0.000116483  -0.000000000
                        -0.036758509  -0.000000000

   95   12.1  0.5 -0.5   0.041118156   0.000000000
                        -0.000123752  -0.000000000

   96   13.1  0.5 -0.5  -0.000000000  -0.000275098
                         0.000000000  -0.022180823

   97   14.1  0.5 -0.5   0.000000000  -0.024544060
                         0.000000000   0.000315194

   98   15.1  0.5 -0.5   0.002367639  -0.000000000
                         0.000003125   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5  30.383%   0.000%   0.413%   0.000%   1.238%   0.002%   0.000%   0.000%   0.000%   3.597%
    2    2.1  1.5  1.5  34.129%   0.000%   0.780%   0.000%   0.089%   0.000%   0.013%   0.000%   0.000%   0.708%
    3    3.1  1.5  1.5   0.000%   0.057%   0.004%  15.300%   0.016%   8.694%   0.039%  14.980%   0.020%   0.000%
    4    4.1  1.5  1.5   0.000%   0.491%   0.002%   7.337%   0.021%  11.514%   0.044%  16.975%   0.528%   0.000%
    5    5.1  1.5  1.5   0.000%   0.097%   0.002%   7.284%   0.004%   2.201%   0.059%  22.715%   5.908%   0.000%
    6    6.1  1.5  1.5   0.000%   0.276%   0.003%  10.642%   0.014%   7.850%   0.029%  11.173%  10.473%   0.000%
    7    7.1  1.5  1.5   0.270%   0.000%   0.466%   0.000%  13.440%   0.025%   7.686%   0.020%   0.000%   1.982%
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
   18    1.1  1.5  0.5   0.000%   0.362%   0.005%  19.280%   0.015%   8.089%   0.020%   7.512%   0.528%   0.000%
   19    2.1  1.5  0.5   0.000%   0.522%   0.008%  28.470%   0.010%   5.693%   0.002%   0.867%   0.149%   0.000%
   20    3.1  1.5  0.5  11.702%   0.000%   1.701%   0.000%  13.221%   0.024%   3.003%   0.008%   0.000%   2.666%
   21    4.1  1.5  0.5   7.398%   0.000%   6.408%   0.002%   3.847%   0.007%   4.107%   0.011%   0.000%  12.735%
   22    5.1  1.5  0.5   7.048%   0.000%   0.562%   0.000%  16.757%   0.031%   4.648%   0.012%   0.000%   4.092%
   23    6.1  1.5  0.5   6.720%   0.000%   1.238%   0.000%   2.327%   0.004%   5.786%   0.015%   0.000%  14.865%
   24    7.1  1.5  0.5   0.000%   0.544%   0.000%   0.090%   0.009%   4.858%   0.001%   0.274%  41.749%   0.000%
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
   35    1.1  1.5 -0.5   0.362%   0.000%  19.280%   0.005%   8.089%   0.015%   7.512%   0.020%   0.000%   0.528%
   36    2.1  1.5 -0.5   0.522%   0.000%  28.470%   0.008%   5.693%   0.010%   0.867%   0.002%   0.000%   0.149%
   37    3.1  1.5 -0.5   0.000%  11.702%   0.000%   1.701%   0.024%  13.221%   0.008%   3.003%   2.666%   0.000%
   38    4.1  1.5 -0.5   0.000%   7.398%   0.002%   6.408%   0.007%   3.847%   0.011%   4.107%  12.735%   0.000%
   39    5.1  1.5 -0.5   0.000%   7.048%   0.000%   0.562%   0.031%  16.757%   0.012%   4.648%   4.092%   0.000%
   40    6.1  1.5 -0.5   0.000%   6.720%   0.000%   1.238%   0.004%   2.327%   0.015%   5.786%  14.865%   0.000%
   41    7.1  1.5 -0.5   0.544%   0.000%   0.090%   0.000%   4.858%   0.009%   0.274%   0.001%   0.000%  41.749%
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
   52    1.1  1.5 -1.5   0.000%  30.383%   0.000%   0.413%   0.002%   1.238%   0.000%   0.000%   3.597%   0.000%
   53    2.1  1.5 -1.5   0.000%  34.129%   0.000%   0.780%   0.000%   0.089%   0.000%   0.013%   0.708%   0.000%
   54    3.1  1.5 -1.5   0.057%   0.000%  15.300%   0.004%   8.694%   0.016%  14.980%   0.039%   0.000%   0.020%
   55    4.1  1.5 -1.5   0.491%   0.000%   7.337%   0.002%  11.514%   0.021%  16.975%   0.044%   0.000%   0.528%
   56    5.1  1.5 -1.5   0.097%   0.000%   7.284%   0.002%   2.201%   0.004%  22.715%   0.059%   0.000%   5.908%
   57    6.1  1.5 -1.5   0.276%   0.000%  10.642%   0.003%   7.850%   0.014%  11.173%   0.029%   0.000%  10.473%
   58    7.1  1.5 -1.5   0.000%   0.270%   0.000%   0.466%   0.025%  13.440%   0.020%   7.686%   1.982%   0.000%
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

    1    1.1  1.5  1.5  24.262%   0.356%   0.003%   2.952%   0.058%   0.003%   0.006%   0.000%   0.052%   4.599%
    2    2.1  1.5  1.5   3.033%   0.044%   0.003%   2.949%  16.603%   0.777%   4.090%   0.006%   0.050%   4.400%
    3    3.1  1.5  1.5   0.001%   0.044%  21.501%   0.024%   0.002%   0.036%   0.001%   0.676%   5.764%   0.065%
    4    4.1  1.5  1.5   0.106%   7.238%   2.470%   0.003%   0.567%  12.107%   0.005%   3.167%   0.109%   0.001%
    5    5.1  1.5  1.5   0.009%   0.591%  16.912%   0.019%   0.160%   3.422%   0.004%   2.451%  10.300%   0.116%
    6    6.1  1.5  1.5   0.048%   3.277%   0.518%   0.001%   0.102%   2.185%   0.022%  14.036%   0.143%   0.002%
    7    7.1  1.5  1.5   0.623%   0.009%   0.003%   2.782%  13.149%   0.615%  28.484%   0.045%   0.002%   0.206%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.038%   2.608%   9.088%   0.010%   0.469%  10.024%   0.008%   5.130%  12.520%   0.141%
   19    2.1  1.5  0.5   0.000%   0.015%   1.279%   0.001%   0.160%   3.428%   0.035%  22.588%  14.935%   0.168%
   20    3.1  1.5  0.5  28.495%   0.418%   0.001%   1.195%   0.010%   0.000%   2.609%   0.004%   0.165%  14.645%
   21    4.1  1.5  0.5  12.862%   0.188%   0.016%  14.693%   0.766%   0.036%   0.792%   0.001%   0.102%   9.030%
   22    5.1  1.5  0.5   7.816%   0.115%   0.016%  14.245%   8.701%   0.407%   0.150%   0.000%   0.067%   5.920%
   23    6.1  1.5  0.5   2.456%   0.036%   0.002%   2.117%  19.159%   0.897%  10.143%   0.016%   0.121%  10.735%
   24    7.1  1.5  0.5   0.023%   1.568%   3.471%   0.004%   0.109%   2.324%   0.003%   1.806%   2.489%   0.028%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   2.608%   0.038%   0.010%   9.088%  10.024%   0.469%   5.130%   0.008%   0.141%  12.520%
   36    2.1  1.5 -0.5   0.015%   0.000%   0.001%   1.279%   3.428%   0.160%  22.588%   0.035%   0.168%  14.935%
   37    3.1  1.5 -0.5   0.418%  28.495%   1.195%   0.001%   0.000%   0.010%   0.004%   2.609%  14.645%   0.165%
   38    4.1  1.5 -0.5   0.188%  12.862%  14.693%   0.016%   0.036%   0.766%   0.001%   0.792%   9.030%   0.102%
   39    5.1  1.5 -0.5   0.115%   7.816%  14.245%   0.016%   0.407%   8.701%   0.000%   0.150%   5.920%   0.067%
   40    6.1  1.5 -0.5   0.036%   2.456%   2.117%   0.002%   0.897%  19.159%   0.016%  10.143%  10.735%   0.121%
   41    7.1  1.5 -0.5   1.568%   0.023%   0.004%   3.471%   2.324%   0.109%   1.806%   0.003%   0.028%   2.489%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.356%  24.262%   2.952%   0.003%   0.003%   0.058%   0.000%   0.006%   4.599%   0.052%
   53    2.1  1.5 -1.5   0.044%   3.033%   2.949%   0.003%   0.777%  16.603%   0.006%   4.090%   4.400%   0.050%
   54    3.1  1.5 -1.5   0.044%   0.001%   0.024%  21.501%   0.036%   0.002%   0.676%   0.001%   0.065%   5.764%
   55    4.1  1.5 -1.5   7.238%   0.106%   0.003%   2.470%  12.107%   0.567%   3.167%   0.005%   0.001%   0.109%
   56    5.1  1.5 -1.5   0.591%   0.009%   0.019%  16.912%   3.422%   0.160%   2.451%   0.004%   0.116%  10.300%
   57    6.1  1.5 -1.5   3.277%   0.048%   0.001%   0.518%   2.185%   0.102%  14.036%   0.022%   0.002%   0.143%
   58    7.1  1.5 -1.5   0.009%   0.623%   2.782%   0.003%   0.615%  13.149%   0.045%  28.484%   0.206%   0.002%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.001%   0.081%   0.588%   0.001%   0.000%   0.000%   0.002%   1.454%   0.076%   0.001%
   70    2.1  0.5  0.5   1.414%   0.021%   0.000%   0.290%   0.314%   0.015%   0.073%   0.000%   0.004%   0.376%
   71    3.1  0.5  0.5   0.707%   0.010%   0.000%   0.155%   1.073%   0.050%   0.131%   0.000%   0.003%   0.261%
   72    4.1  0.5  0.5   0.006%   0.405%   0.762%   0.001%   0.035%   0.755%   0.000%   0.162%   0.119%   0.001%
   73    5.1  0.5  0.5   0.206%   0.003%   0.000%   0.401%   0.044%   0.002%   1.469%   0.002%   0.000%   0.006%
   74    6.1  0.5  0.5   0.641%   0.009%   0.000%   0.089%   0.916%   0.043%   0.427%   0.001%   0.002%   0.170%
   75    7.1  0.5  0.5   0.003%   0.214%   1.433%   0.002%   0.021%   0.454%   0.000%   0.000%   0.026%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.667%   0.008%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.164%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.031%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.451%   0.005%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.666%   0.007%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.081%   0.001%   0.001%   0.588%   0.000%   0.000%   1.454%   0.002%   0.001%   0.076%
   85    2.1  0.5 -0.5   0.021%   1.414%   0.290%   0.000%   0.015%   0.314%   0.000%   0.073%   0.376%   0.004%
   86    3.1  0.5 -0.5   0.010%   0.707%   0.155%   0.000%   0.050%   1.073%   0.000%   0.131%   0.261%   0.003%
   87    4.1  0.5 -0.5   0.405%   0.006%   0.001%   0.762%   0.755%   0.035%   0.162%   0.000%   0.001%   0.119%
   88    5.1  0.5 -0.5   0.003%   0.206%   0.401%   0.000%   0.002%   0.044%   0.002%   1.469%   0.006%   0.000%
   89    6.1  0.5 -0.5   0.009%   0.641%   0.089%   0.000%   0.043%   0.916%   0.001%   0.427%   0.170%   0.002%
   90    7.1  0.5 -0.5   0.214%   0.003%   0.002%   1.433%   0.454%   0.021%   0.000%   0.000%   0.000%   0.026%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.667%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.164%   0.002%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.031%   0.000%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.451%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.666%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.000%  15.995%   0.005%   0.144%   1.030%   0.000%   0.019%  12.219%   0.000%   0.021%
    2    2.1  1.5  1.5   0.000%  16.313%   0.000%   0.001%   0.778%   0.000%   0.020%  12.549%   0.000%   0.022%
    3    3.1  1.5  1.5   4.395%   0.000%   9.048%   0.297%   0.000%  10.369%   6.022%   0.009%   0.043%   0.000%
    4    4.1  1.5  1.5  12.600%   0.000%   7.383%   0.243%   0.000%  13.648%   0.786%   0.001%   0.358%   0.000%
    5    5.1  1.5  1.5   3.407%   0.000%   5.847%   0.192%   0.000%  15.100%   0.558%   0.001%   0.288%   0.000%
    6    6.1  1.5  1.5  11.241%   0.000%   7.468%   0.245%   0.000%  11.822%   5.796%   0.009%   0.656%   0.000%
    7    7.1  1.5  1.5   0.000%   0.400%   0.773%  23.509%   2.264%   0.000%   0.001%   0.486%   0.000%   0.522%
    8    8.1  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.009%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.001%   0.029%   0.026%   0.000%   0.000%   0.002%   0.000%   0.000%
   10   10.1  1.5  1.5   0.021%   0.000%   0.001%   0.000%   0.000%   0.001%   0.009%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   2.213%   0.000%   5.659%   0.186%   0.000%  13.212%   0.221%   0.000%   0.002%   0.000%
   19    2.1  1.5  0.5   4.070%   0.000%   1.534%   0.050%   0.000%  12.572%   0.777%   0.001%   0.789%   0.000%
   20    3.1  1.5  0.5   0.000%   1.781%   0.170%   5.182%   4.968%   0.000%   0.008%   5.331%   0.000%   0.425%
   21    4.1  1.5  0.5   0.000%   5.132%   0.220%   6.696%   0.936%   0.000%   0.018%  11.325%   0.000%   0.071%
   22    5.1  1.5  0.5   0.000%   3.948%   0.373%  11.348%   5.332%   0.000%   0.009%   5.719%   0.000%   0.128%
   23    6.1  1.5  0.5   0.000%   1.296%   0.327%   9.942%   0.693%   0.000%   0.013%   8.386%   0.000%   0.371%
   24    7.1  1.5  0.5  14.082%   0.000%   0.029%   0.001%   0.000%   0.766%  23.172%   0.036%   0.027%   0.000%
   25    8.1  1.5  0.5   0.000%   0.008%   0.001%   0.022%   0.004%   0.000%   0.000%   0.017%   0.000%   0.000%
   26    9.1  1.5  0.5   0.036%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.011%   0.001%   0.022%   0.014%   0.000%   0.000%   0.007%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    1.1  1.5 -0.5   0.000%   2.213%   0.186%   5.659%  13.212%   0.000%   0.000%   0.221%   0.000%   0.002%
   36    2.1  1.5 -0.5   0.000%   4.070%   0.050%   1.534%  12.572%   0.000%   0.001%   0.777%   0.000%   0.789%
   37    3.1  1.5 -0.5   1.781%   0.000%   5.182%   0.170%   0.000%   4.968%   5.331%   0.008%   0.425%   0.000%
   38    4.1  1.5 -0.5   5.132%   0.000%   6.696%   0.220%   0.000%   0.936%  11.325%   0.018%   0.071%   0.000%
   39    5.1  1.5 -0.5   3.948%   0.000%  11.348%   0.373%   0.000%   5.332%   5.719%   0.009%   0.128%   0.000%
   40    6.1  1.5 -0.5   1.296%   0.000%   9.942%   0.327%   0.000%   0.693%   8.386%   0.013%   0.371%   0.000%
   41    7.1  1.5 -0.5   0.000%  14.082%   0.001%   0.029%   0.766%   0.000%   0.036%  23.172%   0.000%   0.027%
   42    8.1  1.5 -0.5   0.008%   0.000%   0.022%   0.001%   0.000%   0.004%   0.017%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.036%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.011%   0.000%   0.022%   0.001%   0.000%   0.014%   0.007%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.1  1.5 -1.5  15.995%   0.000%   0.144%   0.005%   0.000%   1.030%  12.219%   0.019%   0.021%   0.000%
   53    2.1  1.5 -1.5  16.313%   0.000%   0.001%   0.000%   0.000%   0.778%  12.549%   0.020%   0.022%   0.000%
   54    3.1  1.5 -1.5   0.000%   4.395%   0.297%   9.048%  10.369%   0.000%   0.009%   6.022%   0.000%   0.043%
   55    4.1  1.5 -1.5   0.000%  12.600%   0.243%   7.383%  13.648%   0.000%   0.001%   0.786%   0.000%   0.358%
   56    5.1  1.5 -1.5   0.000%   3.407%   0.192%   5.847%  15.100%   0.000%   0.001%   0.558%   0.000%   0.288%
   57    6.1  1.5 -1.5   0.000%  11.241%   0.245%   7.468%  11.822%   0.000%   0.009%   5.796%   0.000%   0.656%
   58    7.1  1.5 -1.5   0.400%   0.000%  23.509%   0.773%   0.000%   2.264%   0.486%   0.001%   0.522%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   0.009%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.029%   0.001%   0.000%   0.026%   0.002%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.021%   0.000%   0.001%   0.001%   0.000%   0.000%   0.009%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.055%   0.000%   0.307%   0.010%   0.000%   0.000%   0.000%   0.000%  53.596%   0.000%
   70    2.1  0.5  0.5   0.000%   0.039%   0.001%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   2.053%
   71    3.1  0.5  0.5   0.000%   0.156%   0.001%   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   2.040%
   72    4.1  0.5  0.5   0.323%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   1.157%   0.000%
   73    5.1  0.5  0.5   0.000%   0.312%   0.004%   0.126%   0.000%   0.000%   0.000%   0.000%   0.000%  22.296%
   74    6.1  0.5  0.5   0.000%   0.153%   0.004%   0.120%   0.000%   0.000%   0.000%   0.000%   0.000%   4.975%
   75    7.1  0.5  0.5   0.008%   0.000%   0.401%   0.013%   0.000%   0.000%   0.000%   0.000%  10.153%   0.000%
   76    8.1  0.5  0.5   0.515%   0.000%   0.011%   0.000%   0.000%   0.878%   1.656%   0.003%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.260%   0.025%   0.751%   1.223%   0.000%   0.002%   1.311%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.375%   0.025%   0.769%   0.193%   0.000%   0.004%   2.339%   0.000%   0.000%
   79   11.1  0.5  0.5   0.664%   0.000%   0.078%   0.003%   0.000%   1.658%   0.877%   0.001%   0.000%   0.000%
   80   12.1  0.5  0.5   0.188%   0.000%   0.329%   0.011%   0.000%   2.389%   0.148%   0.000%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%   0.000%   0.037%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.071%   0.000%   0.000%   0.006%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.073%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.055%   0.010%   0.307%   0.000%   0.000%   0.000%   0.000%   0.000%  53.596%
   85    2.1  0.5 -0.5   0.039%   0.000%   0.028%   0.001%   0.000%   0.000%   0.000%   0.000%   2.053%   0.000%
   86    3.1  0.5 -0.5   0.156%   0.000%   0.027%   0.001%   0.000%   0.000%   0.000%   0.000%   2.040%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.323%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   1.157%
   88    5.1  0.5 -0.5   0.312%   0.000%   0.126%   0.004%   0.000%   0.000%   0.000%   0.000%  22.296%   0.000%
   89    6.1  0.5 -0.5   0.153%   0.000%   0.120%   0.004%   0.000%   0.000%   0.000%   0.000%   4.975%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.008%   0.013%   0.401%   0.000%   0.000%   0.000%   0.000%   0.000%  10.153%
   91    8.1  0.5 -0.5   0.000%   0.515%   0.000%   0.011%   0.878%   0.000%   0.003%   1.656%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.260%   0.000%   0.751%   0.025%   0.000%   1.223%   1.311%   0.002%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.375%   0.000%   0.769%   0.025%   0.000%   0.193%   2.339%   0.004%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.000%   0.664%   0.003%   0.078%   1.658%   0.000%   0.001%   0.877%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.188%   0.011%   0.329%   2.389%   0.000%   0.000%   0.148%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.037%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.071%   0.006%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.073%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.442%   0.001%   0.476%   0.000%   0.128%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.781%   0.002%   0.230%   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.008%   0.000%   0.686%   0.000%   0.124%   0.007%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.011%   0.000%   0.060%   0.000%   0.563%   0.006%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.010%   0.000%   0.593%   0.000%   0.020%   0.000%   0.000%   0.000%   0.007%
    6    6.1  1.5  1.5   0.000%   0.007%   0.000%   0.084%   0.000%   0.033%   0.001%   0.000%   0.000%   0.006%
    7    7.1  1.5  1.5   0.005%   0.000%   0.064%   0.000%   1.177%   0.000%   0.000%   0.008%   0.009%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.824%   0.005%   0.001%   2.666%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   2.035%   2.190%   0.001%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.631%   0.004%   0.001%   2.398%
   11   11.1  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.002%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.006%
   14   14.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.003%   0.000%   0.000%   0.001%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.006%   0.006%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.006%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.083%   0.000%   0.972%   0.013%   0.000%   0.000%   0.002%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.268%   0.002%   0.000%   0.000%   0.012%
   20    3.1  1.5  0.5   0.502%   0.001%   0.106%   0.000%   0.231%   0.000%   0.000%   0.000%   0.015%   0.000%
   21    4.1  1.5  0.5   0.392%   0.001%   0.671%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%
   22    5.1  1.5  0.5   0.719%   0.002%   0.348%   0.000%   0.019%   0.000%   0.000%   0.014%   0.000%   0.000%
   23    6.1  1.5  0.5   0.825%   0.002%   0.002%   0.000%   0.147%   0.000%   0.000%   0.015%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.009%   0.000%   0.312%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   1.404%   1.835%   0.001%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%   0.021%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   1.654%   1.460%   0.001%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.010%   0.000%   0.000%   0.001%
   29   12.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.009%   0.000%
   30   13.1  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.005%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.011%
   32   15.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.003%   0.008%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.005%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.083%   0.000%   0.972%   0.000%   0.000%   0.013%   0.002%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.006%   0.000%   0.268%   0.000%   0.000%   0.002%   0.012%   0.000%
   37    3.1  1.5 -0.5   0.001%   0.502%   0.000%   0.106%   0.000%   0.231%   0.000%   0.000%   0.000%   0.015%
   38    4.1  1.5 -0.5   0.001%   0.392%   0.000%   0.671%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%
   39    5.1  1.5 -0.5   0.002%   0.719%   0.000%   0.348%   0.000%   0.019%   0.014%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.002%   0.825%   0.000%   0.002%   0.000%   0.147%   0.015%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.009%   0.000%   0.312%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.404%   0.002%   0.001%   1.835%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.021%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.654%   0.003%   0.001%   1.460%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.010%   0.001%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.009%
   47   13.1  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.005%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.011%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%   0.008%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.005%
   52    1.1  1.5 -1.5   0.001%   0.442%   0.000%   0.476%   0.000%   0.128%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.002%   0.781%   0.000%   0.230%   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.008%   0.000%   0.686%   0.000%   0.124%   0.000%   0.000%   0.007%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.011%   0.000%   0.060%   0.000%   0.563%   0.000%   0.000%   0.006%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.010%   0.000%   0.593%   0.000%   0.020%   0.000%   0.000%   0.000%   0.007%   0.000%
   57    6.1  1.5 -1.5   0.007%   0.000%   0.084%   0.000%   0.033%   0.000%   0.000%   0.001%   0.006%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.005%   0.000%   0.064%   0.000%   1.177%   0.008%   0.000%   0.000%   0.009%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   2.824%   2.666%   0.001%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.035%   0.003%   0.001%   2.190%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   2.631%   2.398%   0.001%
   62   11.1  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   0.002%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.006%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.006%   0.000%   0.000%   0.006%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.006%   0.000%
   69    1.1  0.5  0.5   0.000%   0.010%   0.000%   1.409%   0.000%   0.002%   2.511%   0.004%   0.008%  18.315%
   70    2.1  0.5  0.5  46.712%   0.108%   1.072%   0.000%   5.068%   0.000%   0.023%  13.410%   7.787%   0.003%
   71    3.1  0.5  0.5  47.001%   0.109%   1.872%   0.000%   3.990%   0.000%   0.022%  12.956%   7.312%   0.003%
   72    4.1  0.5  0.5   0.003%   1.431%   0.000%  46.621%   0.000%   5.802%   0.000%   0.000%   0.000%   0.663%
   73    5.1  0.5  0.5   0.538%   0.001%  22.963%   0.000%   9.211%   0.000%   0.003%   1.664%   5.376%   0.002%
   74    6.1  0.5  0.5   0.355%   0.001%  12.671%   0.000%  37.008%   0.000%   0.002%   0.990%   7.536%   0.003%
   75    7.1  0.5  0.5   0.000%   0.001%   0.000%   9.662%   0.000%  35.191%  18.392%   0.031%   0.001%   3.005%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.740%   0.001%   0.002%   3.796%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   6.952%   9.089%   0.004%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   8.192%   7.235%   0.003%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.565%   0.004%   0.007%  16.455%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.772%   0.035%   0.001%   2.689%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.010%   0.000%   1.409%   0.000%   0.002%   0.000%   0.004%   2.511%  18.315%   0.008%
   85    2.1  0.5 -0.5   0.108%  46.712%   0.000%   1.072%   0.000%   5.068%  13.410%   0.023%   0.003%   7.787%
   86    3.1  0.5 -0.5   0.109%  47.001%   0.000%   1.872%   0.000%   3.990%  12.956%   0.022%   0.003%   7.312%
   87    4.1  0.5 -0.5   1.431%   0.003%  46.621%   0.000%   5.802%   0.000%   0.000%   0.000%   0.663%   0.000%
   88    5.1  0.5 -0.5   0.001%   0.538%   0.000%  22.963%   0.000%   9.211%   1.664%   0.003%   0.002%   5.376%
   89    6.1  0.5 -0.5   0.001%   0.355%   0.000%  12.671%   0.000%  37.008%   0.990%   0.002%   0.003%   7.536%
   90    7.1  0.5 -0.5   0.001%   0.000%   9.662%   0.000%  35.191%   0.000%   0.031%  18.392%   3.005%   0.001%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.740%   3.796%   0.002%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.952%   0.012%   0.004%   9.089%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.192%   0.014%   0.003%   7.235%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   2.565%  16.455%   0.007%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.035%  20.772%   2.689%   0.001%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.014%   0.000%   0.002%   0.000%   0.142%   0.004%   0.006%   0.279%   0.002%   0.000%
    2    2.1  1.5  1.5   0.014%   0.000%   0.000%   0.000%   0.118%   0.003%   0.006%   0.305%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.006%   0.000%   0.208%   0.000%   0.018%   0.176%   0.004%   0.000%   0.847%
    4    4.1  1.5  1.5   0.000%   0.008%   0.000%   0.195%   0.003%   0.092%   0.130%   0.003%   0.000%   0.714%
    5    5.1  1.5  1.5   0.000%   0.006%   0.000%   0.017%   0.010%   0.363%   0.021%   0.000%   0.000%   0.811%
    6    6.1  1.5  1.5   0.000%   0.006%   0.000%   0.030%   0.001%   0.027%   0.331%   0.007%   0.001%   0.943%
    7    7.1  1.5  1.5   0.000%   0.000%   0.275%   0.000%   0.144%   0.004%   0.002%   0.092%   0.163%   0.000%
    8    8.1  1.5  1.5   0.000%   0.320%   0.000%   9.423%   0.343%  12.281%   0.289%   0.006%   0.000%   0.001%
    9    9.1  1.5  1.5   0.001%   0.000%   8.704%   0.000%   5.296%   0.148%   0.043%   2.063%   7.515%   0.004%
   10   10.1  1.5  1.5   0.001%   0.782%   0.000%   9.389%   0.114%   4.072%   8.575%   0.177%   0.000%   0.000%
   11   11.1  1.5  1.5   0.010%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.001%   0.000%
   12   12.1  1.5  1.5   0.000%   0.012%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.004%
   13   13.1  1.5  1.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.058%
   14   14.1  1.5  1.5   0.013%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.011%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.002%
   16   16.1  1.5  1.5   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.005%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.060%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.361%   0.002%   0.057%   0.008%   0.000%   0.000%   0.827%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.045%   0.008%   0.271%   0.107%   0.002%   0.000%   0.827%
   20    3.1  1.5  0.5   0.000%   0.000%   0.003%   0.000%   0.363%   0.010%   0.002%   0.078%   0.167%   0.000%
   21    4.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.252%   0.007%   0.004%   0.178%   0.181%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.435%   0.000%   0.001%   0.000%   0.000%   0.014%   0.180%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.438%   0.000%   0.026%   0.001%   0.000%   0.000%   0.135%   0.000%
   24    7.1  1.5  0.5   0.000%   0.011%   0.000%   0.003%   0.002%   0.082%   0.252%   0.005%   0.000%   0.004%
   25    8.1  1.5  0.5   1.516%   0.001%   6.536%   0.000%  10.741%   0.300%   0.014%   0.697%   2.430%   0.001%
   26    9.1  1.5  0.5   0.006%   6.309%   0.000%   0.000%   0.185%   6.636%  17.188%   0.355%   0.000%   0.000%
   27   10.1  1.5  0.5   1.639%   0.001%   6.560%   0.000%   0.489%   0.014%   0.227%  10.986%   2.591%   0.002%
   28   11.1  1.5  0.5   0.000%   0.002%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.025%
   29   12.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.011%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.031%
   32   15.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.013%   0.000%
   33   16.1  1.5  0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.006%
   34   17.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.361%   0.000%   0.057%   0.002%   0.000%   0.008%   0.827%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.045%   0.000%   0.271%   0.008%   0.002%   0.107%   0.827%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.010%   0.363%   0.078%   0.002%   0.000%   0.167%
   38    4.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.007%   0.252%   0.178%   0.004%   0.000%   0.181%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.435%   0.000%   0.001%   0.014%   0.000%   0.000%   0.180%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.438%   0.001%   0.026%   0.000%   0.000%   0.000%   0.135%
   41    7.1  1.5 -0.5   0.011%   0.000%   0.003%   0.000%   0.082%   0.002%   0.005%   0.252%   0.004%   0.000%
   42    8.1  1.5 -0.5   0.001%   1.516%   0.000%   6.536%   0.300%  10.741%   0.697%   0.014%   0.001%   2.430%
   43    9.1  1.5 -0.5   6.309%   0.006%   0.000%   0.000%   6.636%   0.185%   0.355%  17.188%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.001%   1.639%   0.000%   6.560%   0.014%   0.489%  10.986%   0.227%   0.002%   2.591%
   45   11.1  1.5 -0.5   0.002%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.025%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.011%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.031%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.013%
   50   16.1  1.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.006%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.014%   0.000%   0.002%   0.004%   0.142%   0.279%   0.006%   0.000%   0.002%
   53    2.1  1.5 -1.5   0.000%   0.014%   0.000%   0.000%   0.003%   0.118%   0.305%   0.006%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.006%   0.000%   0.208%   0.000%   0.018%   0.000%   0.004%   0.176%   0.847%   0.000%
   55    4.1  1.5 -1.5   0.008%   0.000%   0.195%   0.000%   0.092%   0.003%   0.003%   0.130%   0.714%   0.000%
   56    5.1  1.5 -1.5   0.006%   0.000%   0.017%   0.000%   0.363%   0.010%   0.000%   0.021%   0.811%   0.000%
   57    6.1  1.5 -1.5   0.006%   0.000%   0.030%   0.000%   0.027%   0.001%   0.007%   0.331%   0.943%   0.001%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.275%   0.004%   0.144%   0.092%   0.002%   0.000%   0.163%
   59    8.1  1.5 -1.5   0.320%   0.000%   9.423%   0.000%  12.281%   0.343%   0.006%   0.289%   0.001%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.001%   0.000%   8.704%   0.148%   5.296%   2.063%   0.043%   0.004%   7.515%
   61   10.1  1.5 -1.5   0.782%   0.001%   9.389%   0.000%   4.072%   0.114%   0.177%   8.575%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.010%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%
   63   12.1  1.5 -1.5   0.012%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.004%   0.000%
   64   13.1  1.5 -1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.058%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.011%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.002%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.005%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.060%   0.000%
   69    1.1  0.5  0.5   0.001%   0.592%   0.000%   2.703%   0.245%   8.762%   6.115%   0.126%   0.000%   0.000%
   70    2.1  0.5  0.5   0.210%   0.000%  10.166%   0.000%   6.893%   0.192%   0.014%   0.688%   0.000%   0.000%
   71    3.1  0.5  0.5   1.140%   0.001%  10.147%   0.000%   3.595%   0.100%   0.083%   4.027%   0.000%   0.000%
   72    4.1  0.5  0.5   0.018%  20.751%   0.000%   0.041%   0.189%   6.787%  10.713%   0.221%   0.000%   0.000%
   73    5.1  0.5  0.5  14.378%   0.013%   1.380%   0.000%   0.015%   0.000%   0.335%  16.222%   0.000%   0.000%
   74    6.1  0.5  0.5  12.893%   0.011%   1.365%   0.000%  13.386%   0.374%   0.057%   2.771%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.005%   0.000%  16.091%   0.037%   1.312%   0.505%   0.010%   0.000%   0.000%
   76    8.1  0.5  0.5   0.017%  19.011%   0.000%   0.139%   0.158%   5.644%   3.244%   0.067%   0.003%   4.412%
   77    9.1  0.5  0.5   7.509%   0.007%   3.311%   0.000%   5.483%   0.153%   0.007%   0.353%   7.648%   0.005%
   78   10.1  0.5  0.5   8.120%   0.007%   3.312%   0.000%   0.251%   0.007%   0.116%   5.613%   6.952%   0.004%
   79   11.1  0.5  0.5   0.004%   4.529%   0.000%   0.813%   0.075%   2.670%   5.551%   0.115%   0.015%  24.851%
   80   12.1  0.5  0.5   0.000%   0.078%   0.000%   7.897%   0.028%   1.003%   0.400%   0.008%   0.017%  29.146%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.122%   0.002%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.254%   0.003%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   84    1.1  0.5 -0.5   0.592%   0.001%   2.703%   0.000%   8.762%   0.245%   0.126%   6.115%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.210%   0.000%  10.166%   0.192%   6.893%   0.688%   0.014%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.001%   1.140%   0.000%  10.147%   0.100%   3.595%   4.027%   0.083%   0.000%   0.000%
   87    4.1  0.5 -0.5  20.751%   0.018%   0.041%   0.000%   6.787%   0.189%   0.221%  10.713%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.013%  14.378%   0.000%   1.380%   0.000%   0.015%  16.222%   0.335%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.011%  12.893%   0.000%   1.365%   0.374%  13.386%   2.771%   0.057%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.005%   0.000%  16.091%   0.000%   1.312%   0.037%   0.010%   0.505%   0.000%   0.000%
   91    8.1  0.5 -0.5  19.011%   0.017%   0.139%   0.000%   5.644%   0.158%   0.067%   3.244%   4.412%   0.003%
   92    9.1  0.5 -0.5   0.007%   7.509%   0.000%   3.311%   0.153%   5.483%   0.353%   0.007%   0.005%   7.648%
   93   10.1  0.5 -0.5   0.007%   8.120%   0.000%   3.312%   0.007%   0.251%   5.613%   0.116%   0.004%   6.952%
   94   11.1  0.5 -0.5   4.529%   0.004%   0.813%   0.000%   2.670%   0.075%   0.115%   5.551%  24.851%   0.015%
   95   12.1  0.5 -0.5   0.078%   0.000%   7.897%   0.000%   1.003%   0.028%   0.008%   0.400%  29.146%   0.017%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   4.122%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   4.254%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.821%   0.000%   0.014%   0.059%   0.000%   0.000%   0.003%   0.002%   0.127%
    2    2.1  1.5  1.5   0.000%   0.827%   0.000%   0.016%   0.058%   0.000%   0.000%   0.001%   0.002%   0.116%
    3    3.1  1.5  1.5   0.170%   0.000%   0.090%   0.000%   0.000%   0.001%   0.099%   0.001%   0.039%   0.001%
    4    4.1  1.5  1.5   0.181%   0.000%   0.026%   0.000%   0.000%   0.054%   0.112%   0.002%   0.063%   0.001%
    5    5.1  1.5  1.5   0.162%   0.000%   0.032%   0.000%   0.000%   0.055%   0.017%   0.000%   0.194%   0.003%
    6    6.1  1.5  1.5   0.151%   0.000%   0.096%   0.000%   0.000%   0.001%   0.017%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.007%   0.000%   0.014%   0.001%   0.000%   0.002%   0.158%   0.000%   0.032%
    8    8.1  1.5  1.5   2.506%   0.001%   3.817%   0.007%   0.000%  13.603%   8.918%   0.131%  14.981%   0.228%
    9    9.1  1.5  1.5   0.000%   0.001%   0.071%  40.739%  11.466%   0.000%   0.171%  11.652%   0.047%   3.114%
   10   10.1  1.5  1.5   2.518%   0.001%   3.803%   0.007%   0.000%  13.601%   9.861%   0.145%   2.634%   0.040%
   11   11.1  1.5  1.5   0.000%   0.025%   0.000%   0.001%   0.008%   0.000%   0.000%   0.006%   0.000%   0.022%
   12   12.1  1.5  1.5   0.012%   0.000%   0.000%   0.000%   0.000%   0.005%   0.008%   0.000%   0.007%   0.000%
   13   13.1  1.5  1.5   0.001%   0.000%   0.016%   0.000%   0.000%   0.003%   0.010%   0.000%   0.002%   0.000%
   14   14.1  1.5  1.5   0.000%   0.031%   0.000%   0.002%   0.008%   0.000%   0.000%   0.000%   0.000%   0.016%
   15   15.1  1.5  1.5   0.012%   0.000%   0.003%   0.000%   0.000%   0.002%   0.005%   0.000%   0.025%   0.000%
   16   16.1  1.5  1.5   0.000%   0.006%   0.000%   0.003%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.013%   0.000%   0.000%   0.005%   0.012%   0.000%   0.008%   0.000%
   18    1.1  1.5  0.5   0.008%   0.000%   0.050%   0.000%   0.000%   0.024%   0.172%   0.003%   0.036%   0.001%
   19    2.1  1.5  0.5   0.000%   0.000%   0.058%   0.000%   0.000%   0.016%   0.014%   0.000%   0.101%   0.002%
   20    3.1  1.5  0.5   0.000%   0.472%   0.000%   0.000%   0.057%   0.000%   0.000%   0.000%   0.002%   0.140%
   21    4.1  1.5  0.5   0.000%   0.580%   0.000%   0.049%   0.019%   0.000%   0.000%   0.001%   0.001%   0.076%
   22    5.1  1.5  0.5   0.000%   0.506%   0.000%   0.000%   0.061%   0.000%   0.003%   0.220%   0.000%   0.001%
   23    6.1  1.5  0.5   0.000%   0.430%   0.000%   0.036%   0.014%   0.000%   0.003%   0.214%   0.000%   0.023%
   24    7.1  1.5  0.5   1.485%   0.001%   0.036%   0.000%   0.000%   0.096%   0.003%   0.000%   0.084%   0.001%
   25    8.1  1.5  0.5   0.002%   3.410%   0.061%  35.289%   5.314%   0.000%   0.140%   9.540%   0.183%  12.054%
   26    9.1  1.5  0.5   0.845%   0.000%   1.271%   0.002%   0.000%   4.533%   0.076%   0.001%  15.030%   0.228%
   27   10.1  1.5  0.5   0.002%   3.259%   0.004%   2.043%  38.595%   0.000%   0.117%   7.966%   0.003%   0.171%
   28   11.1  1.5  0.5   0.011%   0.000%   0.002%   0.000%   0.000%   0.009%   0.019%   0.000%   0.011%   0.000%
   29   12.1  1.5  0.5   0.000%   0.036%   0.000%   0.011%   0.004%   0.000%   0.000%   0.008%   0.000%   0.004%
   30   13.1  1.5  0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.022%   0.000%   0.010%
   31   14.1  1.5  0.5   0.000%   0.000%   0.008%   0.000%   0.000%   0.002%   0.002%   0.000%   0.014%   0.000%
   32   15.1  1.5  0.5   0.000%   0.035%   0.000%   0.000%   0.015%   0.000%   0.000%   0.010%   0.000%   0.011%
   33   16.1  1.5  0.5   0.045%   0.000%   0.009%   0.000%   0.000%   0.007%   0.006%   0.000%   0.006%   0.000%
   34   17.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.021%   0.000%   0.009%
   35    1.1  1.5 -0.5   0.000%   0.008%   0.000%   0.050%   0.024%   0.000%   0.003%   0.172%   0.001%   0.036%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.058%   0.016%   0.000%   0.000%   0.014%   0.002%   0.101%
   37    3.1  1.5 -0.5   0.472%   0.000%   0.000%   0.000%   0.000%   0.057%   0.000%   0.000%   0.140%   0.002%
   38    4.1  1.5 -0.5   0.580%   0.000%   0.049%   0.000%   0.000%   0.019%   0.001%   0.000%   0.076%   0.001%
   39    5.1  1.5 -0.5   0.506%   0.000%   0.000%   0.000%   0.000%   0.061%   0.220%   0.003%   0.001%   0.000%
   40    6.1  1.5 -0.5   0.430%   0.000%   0.036%   0.000%   0.000%   0.014%   0.214%   0.003%   0.023%   0.000%
   41    7.1  1.5 -0.5   0.001%   1.485%   0.000%   0.036%   0.096%   0.000%   0.000%   0.003%   0.001%   0.084%
   42    8.1  1.5 -0.5   3.410%   0.002%  35.289%   0.061%   0.000%   5.314%   9.540%   0.140%  12.054%   0.183%
   43    9.1  1.5 -0.5   0.000%   0.845%   0.002%   1.271%   4.533%   0.000%   0.001%   0.076%   0.228%  15.030%
   44   10.1  1.5 -0.5   3.259%   0.002%   2.043%   0.004%   0.000%  38.595%   7.966%   0.117%   0.171%   0.003%
   45   11.1  1.5 -0.5   0.000%   0.011%   0.000%   0.002%   0.009%   0.000%   0.000%   0.019%   0.000%   0.011%
   46   12.1  1.5 -0.5   0.036%   0.000%   0.011%   0.000%   0.000%   0.004%   0.008%   0.000%   0.004%   0.000%
   47   13.1  1.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.022%   0.000%   0.010%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.008%   0.002%   0.000%   0.000%   0.002%   0.000%   0.014%
   49   15.1  1.5 -0.5   0.035%   0.000%   0.000%   0.000%   0.000%   0.015%   0.010%   0.000%   0.011%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.045%   0.000%   0.009%   0.007%   0.000%   0.000%   0.006%   0.000%   0.006%
   51   17.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.021%   0.000%   0.009%   0.000%
   52    1.1  1.5 -1.5   0.821%   0.000%   0.014%   0.000%   0.000%   0.059%   0.003%   0.000%   0.127%   0.002%
   53    2.1  1.5 -1.5   0.827%   0.000%   0.016%   0.000%   0.000%   0.058%   0.001%   0.000%   0.116%   0.002%
   54    3.1  1.5 -1.5   0.000%   0.170%   0.000%   0.090%   0.001%   0.000%   0.001%   0.099%   0.001%   0.039%
   55    4.1  1.5 -1.5   0.000%   0.181%   0.000%   0.026%   0.054%   0.000%   0.002%   0.112%   0.001%   0.063%
   56    5.1  1.5 -1.5   0.000%   0.162%   0.000%   0.032%   0.055%   0.000%   0.000%   0.017%   0.003%   0.194%
   57    6.1  1.5 -1.5   0.000%   0.151%   0.000%   0.096%   0.001%   0.000%   0.000%   0.017%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.007%   0.000%   0.014%   0.000%   0.000%   0.001%   0.158%   0.002%   0.032%   0.000%
   59    8.1  1.5 -1.5   0.001%   2.506%   0.007%   3.817%  13.603%   0.000%   0.131%   8.918%   0.228%  14.981%
   60    9.1  1.5 -1.5   0.001%   0.000%  40.739%   0.071%   0.000%  11.466%  11.652%   0.171%   3.114%   0.047%
   61   10.1  1.5 -1.5   0.001%   2.518%   0.007%   3.803%  13.601%   0.000%   0.145%   9.861%   0.040%   2.634%
   62   11.1  1.5 -1.5   0.025%   0.000%   0.001%   0.000%   0.000%   0.008%   0.006%   0.000%   0.022%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.012%   0.000%   0.000%   0.005%   0.000%   0.000%   0.008%   0.000%   0.007%
   64   13.1  1.5 -1.5   0.000%   0.001%   0.000%   0.016%   0.003%   0.000%   0.000%   0.010%   0.000%   0.002%
   65   14.1  1.5 -1.5   0.031%   0.000%   0.002%   0.000%   0.000%   0.008%   0.000%   0.000%   0.016%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.012%   0.000%   0.003%   0.002%   0.000%   0.000%   0.005%   0.000%   0.025%
   67   16.1  1.5 -1.5   0.006%   0.000%   0.003%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.013%   0.005%   0.000%   0.000%   0.012%   0.000%   0.008%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.592%   0.009%   0.747%   0.011%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.021%   1.439%   0.017%   1.151%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   1.508%   0.007%   0.436%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.035%   0.001%   1.871%   0.028%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.222%   0.003%   0.167%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.375%   0.038%   2.517%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.780%   0.041%   0.057%   0.001%
   76    8.1  0.5  0.5  24.824%   0.013%   0.050%   0.000%   0.000%   4.749%   0.058%   0.001%  21.743%   0.330%
   77    9.1  0.5  0.5   0.011%  21.533%   0.000%   0.006%   4.797%   0.000%   0.165%  11.259%   0.215%  14.178%
   78   10.1  0.5  0.5   0.012%  22.239%   0.006%   3.442%   1.351%   0.000%   0.138%   9.367%   0.003%   0.199%
   79   11.1  0.5  0.5   4.414%   0.002%   4.733%   0.008%   0.000%   0.050%   1.635%   0.024%   3.208%   0.049%
   80   12.1  0.5  0.5   0.005%   0.000%   3.746%   0.006%   0.000%   1.050%  20.093%   0.295%   3.068%   0.047%
   81   13.1  0.5  0.5   0.001%   1.463%   0.000%   0.204%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.001%   1.331%   0.000%   0.058%   0.147%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   5.580%   0.003%   0.045%   0.000%   0.000%   0.159%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.592%   0.011%   0.747%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.439%   0.021%   1.151%   0.017%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.508%   0.022%   0.436%   0.007%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.035%   0.028%   1.871%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.222%   0.003%   0.167%   0.003%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.375%   0.006%   2.517%   0.038%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%   2.780%   0.001%   0.057%
   91    8.1  0.5 -0.5   0.013%  24.824%   0.000%   0.050%   4.749%   0.000%   0.001%   0.058%   0.330%  21.743%
   92    9.1  0.5 -0.5  21.533%   0.011%   0.006%   0.000%   0.000%   4.797%  11.259%   0.165%  14.178%   0.215%
   93   10.1  0.5 -0.5  22.239%   0.012%   3.442%   0.006%   0.000%   1.351%   9.367%   0.138%   0.199%   0.003%
   94   11.1  0.5 -0.5   0.002%   4.414%   0.008%   4.733%   0.050%   0.000%   0.024%   1.635%   0.049%   3.208%
   95   12.1  0.5 -0.5   0.000%   0.005%   0.006%   3.746%   1.050%   0.000%   0.295%  20.093%   0.047%   3.068%
   96   13.1  0.5 -0.5   1.463%   0.001%   0.204%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   1.331%   0.001%   0.058%   0.000%   0.000%   0.147%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.003%   5.580%   0.000%   0.045%   0.159%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.000%   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.106%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.041%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.189%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   2.607%   0.001%  24.692%   0.111%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.002%   4.491%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5  14.006%   0.006%  24.887%   0.112%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.005%   0.000%   0.000%   1.166%   5.106%   0.000%   0.132%   0.003%   2.229%
   12   12.1  1.5  1.5   0.020%   0.000%   0.000%   0.000%   8.520%   1.945%   3.398%   0.003%   8.216%   0.011%
   13   13.1  1.5  1.5   0.013%   0.000%   0.000%   0.000%   1.480%   0.338%   2.398%   0.002%   0.224%   0.000%
   14   14.1  1.5  1.5   0.000%   0.015%   0.000%   0.000%   1.737%   7.608%   0.000%   0.134%   0.006%   4.536%
   15   15.1  1.5  1.5   0.006%   0.000%   0.000%   0.000%  15.250%   3.482%   0.624%   0.001%   1.113%   0.001%
   16   16.1  1.5  1.5   0.000%   0.019%   0.000%   0.000%   0.087%   0.382%   0.016%  16.364%   0.008%   6.266%
   17   17.1  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.008%   0.002%   0.000%   0.000%   0.001%   0.000%
   18    1.1  1.5  0.5   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.107%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.095%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.151%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.037%   8.250%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5  13.952%   0.006%  32.962%   0.149%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.006%  13.637%   0.037%   8.294%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%  12.982%   2.964%   1.149%   0.001%  10.831%   0.014%
   29   12.1  1.5  0.5   0.000%   0.015%   0.000%   0.000%   0.822%   3.600%   0.038%  38.309%   0.000%   0.037%
   30   13.1  1.5  0.5   0.000%   0.007%   0.000%   0.000%   2.026%   8.875%   0.005%   5.127%   0.000%   0.076%
   31   14.1  1.5  0.5   0.015%   0.000%   0.000%   0.000%  17.101%   3.904%   3.155%   0.003%   8.109%   0.011%
   32   15.1  1.5  0.5   0.000%   0.005%   0.000%   0.000%   0.007%   0.032%   0.002%   2.107%   0.054%  40.587%
   33   16.1  1.5  0.5   0.015%   0.000%   0.000%   0.000%   0.430%   0.098%  26.972%   0.026%  17.626%   0.024%
   34   17.1  1.5  0.5   0.000%   0.009%   0.000%   0.000%   0.009%   0.038%   0.000%   0.032%   0.000%   0.014%
   35    1.1  1.5 -0.5   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.107%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.095%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.151%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   8.250%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.006%  13.952%   0.149%  32.962%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5  13.637%   0.006%   8.294%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   2.964%  12.982%   0.001%   1.149%   0.014%  10.831%
   46   12.1  1.5 -0.5   0.015%   0.000%   0.000%   0.000%   3.600%   0.822%  38.309%   0.038%   0.037%   0.000%
   47   13.1  1.5 -0.5   0.007%   0.000%   0.000%   0.000%   8.875%   2.026%   5.127%   0.005%   0.076%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.015%   0.000%   0.000%   3.904%  17.101%   0.003%   3.155%   0.011%   8.109%
   49   15.1  1.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.032%   0.007%   2.107%   0.002%  40.587%   0.054%
   50   16.1  1.5 -0.5   0.000%   0.015%   0.000%   0.000%   0.098%   0.430%   0.026%  26.972%   0.024%  17.626%
   51   17.1  1.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.038%   0.009%   0.032%   0.000%   0.014%   0.000%
   52    1.1  1.5 -1.5   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.106%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.041%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.189%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.001%   2.607%   0.111%  24.692%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   4.491%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.006%  14.006%   0.112%  24.887%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.005%   0.000%   0.000%   0.000%   5.106%   1.166%   0.132%   0.000%   2.229%   0.003%
   63   12.1  1.5 -1.5   0.000%   0.020%   0.000%   0.000%   1.945%   8.520%   0.003%   3.398%   0.011%   8.216%
   64   13.1  1.5 -1.5   0.000%   0.013%   0.000%   0.000%   0.338%   1.480%   0.002%   2.398%   0.000%   0.224%
   65   14.1  1.5 -1.5   0.015%   0.000%   0.000%   0.000%   7.608%   1.737%   0.134%   0.000%   4.536%   0.006%
   66   15.1  1.5 -1.5   0.000%   0.006%   0.000%   0.000%   3.482%  15.250%   0.001%   0.624%   0.001%   1.113%
   67   16.1  1.5 -1.5   0.019%   0.000%   0.000%   0.000%   0.382%   0.087%  16.364%   0.016%   6.266%   0.008%
   68   17.1  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.002%   0.008%   0.000%   0.000%   0.000%   0.001%
   69    1.1  0.5  0.5   1.663%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.394%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   1.049%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   1.087%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.001%   2.626%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.087%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.142%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   3.693%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.007%  16.106%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5  20.909%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   2.310%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.001%   0.155%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.001%   0.155%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.155%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.001%   1.663%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.394%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   1.049%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   1.087%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   2.626%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.087%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.142%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.002%   3.693%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93   10.1  0.5 -0.5  16.106%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.010%  20.909%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.001%   2.310%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.155%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.155%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.001%   0.155%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.001%  24.378%   0.313%   0.000%   0.010%   1.145%   0.133%  10.457%   0.038%  15.717%
   12   12.1  1.5  1.5   1.963%   0.000%   0.000%   4.115%  32.626%   0.284%   2.094%   0.027%   0.127%   0.000%
   13   13.1  1.5  1.5   1.790%   0.000%   0.000%  43.014%   0.815%   0.007%   0.800%   0.010%   4.815%   0.012%
   14   14.1  1.5  1.5   0.001%  21.695%   0.013%   0.000%   0.120%  13.755%   0.012%   0.914%   0.002%   0.724%
   15   15.1  1.5  1.5   6.793%   0.000%   0.000%   0.315%   0.415%   0.004%  27.236%   0.347%   0.787%   0.002%
   16   16.1  1.5  1.5   0.000%   2.955%   0.136%   0.000%   0.013%   1.520%   0.153%  12.000%   0.067%  27.766%
   17   17.1  1.5  1.5   0.075%   0.000%   0.000%  49.679%   0.151%   0.001%   0.194%   0.002%   5.047%   0.012%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   8.935%   0.000%   0.000%   1.249%  11.038%   0.096%   0.605%   0.008%  11.771%   0.028%
   29   12.1  1.5  0.5   0.000%   0.380%   0.081%   0.000%   0.008%   0.886%   0.189%  14.838%   0.001%   0.557%
   30   13.1  1.5  0.5   0.000%   6.074%   0.028%   0.000%   0.269%  30.868%   0.134%  10.513%   0.013%   5.218%
   31   14.1  1.5  0.5   3.380%   0.000%   0.000%   0.052%   0.448%   0.004%   0.015%   0.000%  24.482%   0.059%
   32   15.1  1.5  0.5   0.000%   0.378%   0.679%   0.000%   0.046%   5.306%   0.120%   9.393%   0.000%   0.068%
   33   16.1  1.5  0.5   0.035%   0.000%   0.000%   0.000%   0.149%   0.001%   9.578%   0.122%   2.447%   0.006%
   34   17.1  1.5  0.5   0.001%  21.165%   0.325%   0.000%   0.000%   0.005%   0.001%   0.094%   0.000%   0.182%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   8.935%   1.249%   0.000%   0.096%  11.038%   0.008%   0.605%   0.028%  11.771%
   46   12.1  1.5 -0.5   0.380%   0.000%   0.000%   0.081%   0.886%   0.008%  14.838%   0.189%   0.557%   0.001%
   47   13.1  1.5 -0.5   6.074%   0.000%   0.000%   0.028%  30.868%   0.269%  10.513%   0.134%   5.218%   0.013%
   48   14.1  1.5 -0.5   0.000%   3.380%   0.052%   0.000%   0.004%   0.448%   0.000%   0.015%   0.059%  24.482%
   49   15.1  1.5 -0.5   0.378%   0.000%   0.000%   0.679%   5.306%   0.046%   9.393%   0.120%   0.068%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.035%   0.000%   0.000%   0.001%   0.149%   0.122%   9.578%   0.006%   2.447%
   51   17.1  1.5 -0.5  21.165%   0.001%   0.000%   0.325%   0.005%   0.000%   0.094%   0.001%   0.182%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5  24.378%   0.001%   0.000%   0.313%   1.145%   0.010%  10.457%   0.133%  15.717%   0.038%
   63   12.1  1.5 -1.5   0.000%   1.963%   4.115%   0.000%   0.284%  32.626%   0.027%   2.094%   0.000%   0.127%
   64   13.1  1.5 -1.5   0.000%   1.790%  43.014%   0.000%   0.007%   0.815%   0.010%   0.800%   0.012%   4.815%
   65   14.1  1.5 -1.5  21.695%   0.001%   0.000%   0.013%  13.755%   0.120%   0.914%   0.012%   0.724%   0.002%
   66   15.1  1.5 -1.5   0.000%   6.793%   0.315%   0.000%   0.004%   0.415%   0.347%  27.236%   0.002%   0.787%
   67   16.1  1.5 -1.5   2.955%   0.000%   0.000%   0.136%   1.520%   0.013%  12.000%   0.153%  27.766%   0.067%
   68   17.1  1.5 -1.5   0.000%   0.075%  49.679%   0.000%   0.001%   0.151%   0.002%   0.194%   0.012%   5.047%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.003%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.020%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.019%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.003%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.020%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.019%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.027%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.022%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.025%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.030%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.117%   0.000%   0.000%   0.001%
    9    9.1  1.5  1.5   0.000%   0.176%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.117%   0.000%   0.000%   0.001%
   11   11.1  1.5  1.5   0.000%   0.024%   0.002%   4.878%   0.000%   0.030%   0.000%   0.000%  14.008%   0.008%
   12   12.1  1.5  1.5   0.016%   0.000%   5.476%   0.003%   0.016%   0.000%   0.000%   0.000%   0.010%  16.660%
   13   13.1  1.5  1.5   0.086%   0.000%   0.482%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   2.653%
   14   14.1  1.5  1.5   0.000%   0.005%   0.006%  13.024%   0.000%   0.032%   0.000%   0.000%  20.891%   0.012%
   15   15.1  1.5  1.5   0.014%   0.000%  12.784%   0.006%   0.010%   0.000%   0.000%   0.000%   0.011%  18.967%
   16   16.1  1.5  1.5   0.000%   0.031%   0.001%   2.224%   0.000%   0.008%   0.000%   0.000%   7.455%   0.004%
   17   17.1  1.5  1.5   0.089%   0.000%   0.603%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%
   18    1.1  1.5  0.5   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.006%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.016%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.046%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.059%   0.000%   0.000%   0.000%   0.078%   0.000%   0.039%   0.001%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.020%   0.000%   0.156%   0.000%   0.000%   0.009%
   27   10.1  1.5  0.5   0.000%   0.059%   0.000%   0.000%   0.000%   0.079%   0.000%   0.039%   0.003%   0.000%
   28   11.1  1.5  0.5   0.003%   0.000%   1.216%   0.001%   0.012%   0.000%   0.000%   0.000%   0.002%   4.242%
   29   12.1  1.5  0.5   0.000%   0.015%   0.000%   0.011%   0.000%   0.043%   0.000%   0.000%   2.033%   0.001%
   30   13.1  1.5  0.5   0.000%   0.000%   0.001%   3.172%   0.000%   0.003%   0.000%   0.000%   0.098%   0.000%
   31   14.1  1.5  0.5   0.016%   0.000%   3.589%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.099%
   32   15.1  1.5  0.5   0.000%   0.009%   0.000%   0.621%   0.000%   0.042%   0.000%   0.000%   0.040%   0.000%
   33   16.1  1.5  0.5   0.001%   0.000%   1.072%   0.001%   0.055%   0.000%   0.000%   0.000%   0.007%  12.529%
   34   17.1  1.5  0.5   0.000%   0.027%   0.024%  50.756%   0.000%   0.004%   0.000%   0.000%   0.006%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.006%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.004%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.046%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.059%   0.000%   0.000%   0.000%   0.078%   0.000%   0.039%   0.000%   0.000%   0.001%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.000%   0.156%   0.009%   0.000%
   44   10.1  1.5 -0.5   0.059%   0.000%   0.000%   0.000%   0.079%   0.000%   0.039%   0.000%   0.000%   0.003%
   45   11.1  1.5 -0.5   0.000%   0.003%   0.001%   1.216%   0.000%   0.012%   0.000%   0.000%   4.242%   0.002%
   46   12.1  1.5 -0.5   0.015%   0.000%   0.011%   0.000%   0.043%   0.000%   0.000%   0.000%   0.001%   2.033%
   47   13.1  1.5 -0.5   0.000%   0.000%   3.172%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.098%
   48   14.1  1.5 -0.5   0.000%   0.016%   0.002%   3.589%   0.000%   0.000%   0.000%   0.000%   0.099%   0.000%
   49   15.1  1.5 -0.5   0.009%   0.000%   0.621%   0.000%   0.042%   0.000%   0.000%   0.000%   0.000%   0.040%
   50   16.1  1.5 -0.5   0.000%   0.001%   0.001%   1.072%   0.000%   0.055%   0.000%   0.000%  12.529%   0.007%
   51   17.1  1.5 -0.5   0.027%   0.000%  50.756%   0.024%   0.004%   0.000%   0.000%   0.000%   0.000%   0.006%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.027%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.022%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.025%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.030%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.117%   0.001%   0.000%
   60    9.1  1.5 -1.5   0.176%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.117%   0.001%   0.000%
   62   11.1  1.5 -1.5   0.024%   0.000%   4.878%   0.002%   0.030%   0.000%   0.000%   0.000%   0.008%  14.008%
   63   12.1  1.5 -1.5   0.000%   0.016%   0.003%   5.476%   0.000%   0.016%   0.000%   0.000%  16.660%   0.010%
   64   13.1  1.5 -1.5   0.000%   0.086%   0.000%   0.482%   0.000%   0.001%   0.000%   0.000%   2.653%   0.002%
   65   14.1  1.5 -1.5   0.005%   0.000%  13.024%   0.006%   0.032%   0.000%   0.000%   0.000%   0.012%  20.891%
   66   15.1  1.5 -1.5   0.000%   0.014%   0.006%  12.784%   0.000%   0.010%   0.000%   0.000%  18.967%   0.011%
   67   16.1  1.5 -1.5   0.031%   0.000%   2.224%   0.001%   0.008%   0.000%   0.000%   0.000%   0.004%   7.455%
   68   17.1  1.5 -1.5   0.000%   0.089%   0.000%   0.603%   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.458%   0.000%   0.000%   0.000%   2.814%   0.000%   0.000%   0.000%   0.000%   0.097%
   77    9.1  0.5  0.5   0.000%   0.813%   0.000%   0.000%   0.000%   2.458%   0.000%   0.000%   0.025%   0.000%
   78   10.1  0.5  0.5   0.000%   0.822%   0.000%   0.000%   0.000%   2.450%   0.000%   0.000%   0.059%   0.000%
   79   11.1  0.5  0.5   2.813%   0.000%   0.001%   0.000%   0.459%   0.000%   0.000%   0.000%   0.000%   0.023%
   80   12.1  0.5  0.5   3.270%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81   13.1  0.5  0.5   0.001%  45.589%   0.000%   0.013%   0.000%  15.158%   0.005%  33.114%   0.000%   0.000%
   82   14.1  0.5  0.5   0.001%  45.421%   0.000%   0.019%   0.000%  15.318%   0.005%  33.116%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.001%   0.000%  60.612%   0.000%  33.287%   0.005%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.458%   0.000%   0.000%   0.000%   2.814%   0.000%   0.000%   0.097%   0.000%
   92    9.1  0.5 -0.5   0.813%   0.000%   0.000%   0.000%   2.458%   0.000%   0.000%   0.000%   0.000%   0.025%
   93   10.1  0.5 -0.5   0.822%   0.000%   0.000%   0.000%   2.450%   0.000%   0.000%   0.000%   0.000%   0.059%
   94   11.1  0.5 -0.5   0.000%   2.813%   0.000%   0.001%   0.000%   0.459%   0.000%   0.000%   0.023%   0.000%
   95   12.1  0.5 -0.5   0.000%   3.270%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96   13.1  0.5 -0.5  45.589%   0.001%   0.013%   0.000%  15.158%   0.000%  33.114%   0.005%   0.000%   0.000%
   97   14.1  0.5 -0.5  45.421%   0.001%   0.019%   0.000%  15.318%   0.000%  33.116%   0.005%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%  60.612%   0.005%  33.287%   0.000%   0.000%

   Nr   State  S   Sz      91       92       93       94       95       96       97       98

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.001%   0.000%   0.006%   0.001%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.006%   0.001%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   7.863%   0.053%   0.309%  10.811%   0.000%   1.097%   0.000%
   12   12.1  1.5  1.5   1.132%   0.000%   5.356%   0.925%   0.000%   4.809%   0.000%   2.192%
   13   13.1  1.5  1.5  13.770%   0.000%   0.066%   0.011%   0.000%   1.048%   0.000%  26.058%
   14   14.1  1.5  1.5   0.000%   0.465%   0.002%   0.011%  14.097%   0.000%   0.108%   0.000%
   15   15.1  1.5  1.5   0.187%   0.000%   4.378%   0.756%   0.000%   5.857%   0.000%   0.584%
   16   16.1  1.5  1.5   0.001%  16.464%   0.128%   0.743%   3.308%   0.000%   1.825%   0.000%
   17   17.1  1.5  1.5  16.056%   0.001%   0.187%   0.032%   0.000%   0.001%   0.000%  27.701%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.005%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   28   11.1  1.5  0.5   0.278%   0.000%  13.629%   2.353%   0.000%   3.881%   0.000%  12.614%
   29   12.1  1.5  0.5   0.001%  16.517%   0.018%   0.104%  17.592%   0.000%   3.815%   0.000%
   30   13.1  1.5  0.5   0.000%   0.026%   3.842%  22.249%   1.082%   0.000%   0.235%   0.000%
   31   14.1  1.5  0.5   7.558%   0.000%  11.705%   2.021%   0.000%   0.108%   0.000%  14.085%
   32   15.1  1.5  0.5   0.001%  18.432%   0.000%   0.001%  14.744%   0.000%   7.222%   0.000%
   33   16.1  1.5  0.5   0.898%   0.000%   3.866%   0.667%   0.000%  21.607%   0.000%   1.670%
   34   17.1  1.5  0.5   0.000%   0.128%   3.882%  22.484%   0.509%   0.000%   0.249%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   45   11.1  1.5 -0.5   0.000%   0.278%   2.353%  13.629%   3.881%   0.000%  12.614%   0.000%
   46   12.1  1.5 -0.5  16.517%   0.001%   0.104%   0.018%   0.000%  17.592%   0.000%   3.815%
   47   13.1  1.5 -0.5   0.026%   0.000%  22.249%   3.842%   0.000%   1.082%   0.000%   0.235%
   48   14.1  1.5 -0.5   0.000%   7.558%   2.021%  11.705%   0.108%   0.000%  14.085%   0.000%
   49   15.1  1.5 -0.5  18.432%   0.001%   0.001%   0.000%   0.000%  14.744%   0.000%   7.222%
   50   16.1  1.5 -0.5   0.000%   0.898%   0.667%   3.866%  21.607%   0.000%   1.670%   0.000%
   51   17.1  1.5 -0.5   0.128%   0.000%  22.484%   3.882%   0.000%   0.509%   0.000%   0.249%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.001%   0.001%   0.006%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.001%   0.006%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   7.863%   0.000%   0.309%   0.053%   0.000%  10.811%   0.000%   1.097%
   63   12.1  1.5 -1.5   0.000%   1.132%   0.925%   5.356%   4.809%   0.000%   2.192%   0.000%
   64   13.1  1.5 -1.5   0.000%  13.770%   0.011%   0.066%   1.048%   0.000%  26.058%   0.000%
   65   14.1  1.5 -1.5   0.465%   0.000%   0.011%   0.002%   0.000%  14.097%   0.000%   0.108%
   66   15.1  1.5 -1.5   0.000%   0.187%   0.756%   4.378%   5.857%   0.000%   0.584%   0.000%
   67   16.1  1.5 -1.5  16.464%   0.001%   0.743%   0.128%   0.000%   3.308%   0.000%   1.825%
   68   17.1  1.5 -1.5   0.001%  16.056%   0.032%   0.187%   0.001%   0.000%  27.701%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.016%   0.000%   0.008%   0.001%   0.000%   0.135%   0.000%   0.035%
   77    9.1  0.5  0.5   0.000%   0.093%   0.001%   0.004%   0.114%   0.000%   0.056%   0.000%
   78   10.1  0.5  0.5   0.000%   0.061%   0.000%   0.003%   0.140%   0.000%   0.030%   0.000%
   79   11.1  0.5  0.5   0.030%   0.000%   0.059%   0.010%   0.000%   0.035%   0.000%   0.135%
   80   12.1  0.5  0.5   0.005%   0.000%   0.100%   0.017%   0.000%   0.001%   0.000%   0.169%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.049%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.060%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%   0.000%   0.001%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.016%   0.001%   0.008%   0.135%   0.000%   0.035%   0.000%
   92    9.1  0.5 -0.5   0.093%   0.000%   0.004%   0.001%   0.000%   0.114%   0.000%   0.056%
   93   10.1  0.5 -0.5   0.061%   0.000%   0.003%   0.000%   0.000%   0.140%   0.000%   0.030%
   94   11.1  0.5 -0.5   0.000%   0.030%   0.010%   0.059%   0.035%   0.000%   0.135%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.005%   0.017%   0.100%   0.001%   0.000%   0.169%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.049%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.060%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.073%   0.000%   0.001%   0.000%


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

              2       6      742.02       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     27452.55  23176.73   2480.57   1791.76      2.77      0.49
 REAL TIME  *     28264.40 SEC
 DISK USED  *       774.19 MB (local),        9.13 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.951490424819

              CI              CI           MULTI
   -109.90293488   -109.89798018   -109.33009136
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
