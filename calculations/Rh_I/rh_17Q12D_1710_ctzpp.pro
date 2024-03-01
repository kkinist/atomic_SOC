
 Working directory              : /wrk/irikura/molpro.MDZYq7fqq7/
 Global scratch directory       : /wrk/irikura/molpro.MDZYq7fqq7/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.MDZYq7fqq7/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   20
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! 4F,4P,4F + 2F,2D
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,17;
     wf,nelec=17,sym=1,spin=1; state,12;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,17;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,12;save,5101.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activ                                                                
  64 bit mpp version                                                                     DATE: 14-Feb-24          TIME: 10:08:39  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  30000 MW

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

     15.204 MB (compressed) written to integral file ( 17.0%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     288660.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     288660      RECORD LENGTH: 524288

 Memory used in sort:       0.85 MW

 SORT1 READ    10862098. AND WROTE       57462. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     40 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      286708.  Node maximum:      292109. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.43      1.12
 REAL TIME  *         2.08 SEC
 DISK USED  *        29.10 MB (local),      670.10 MB (total)
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
 Number of states:            12
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.604D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.600D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 3 5 1 7 9111415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.533D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.167D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.220D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 7 9 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03448   0.03448   0.03448   0.03448   0.03448   0.03448   0.03448   0.03448
                                          0.03448   0.03448   0.03448   0.03448   0.03448   0.03448   0.03448   0.03448
                                          0.03448
 Weight factors for state symmetry  2:    0.03448   0.03448   0.03448   0.03448   0.03448   0.03448   0.03448   0.03448
                                          0.03448   0.03448   0.03448   0.03448
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    4177
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.31126972    -109.34016912   -0.02889940    0.28048448 0.00187327 0.00000000  0.17E+00      0.35
   2    3    6    0   -109.33921879    -109.33928387   -0.00006508    0.01282398 0.00000413 0.00000000  0.86E-02      0.64
   3   20   40    0   -109.33928399    -109.33928399   -0.00000000    0.00003327 0.00000015 0.00000000  0.27E-04      2.24
   4   20   40    0   -109.33928399    -109.33928399    0.00000000    0.00000006 0.00000030 0.00000000  0.40E-07      3.82

 CONVERGENCE REACHED!  Final gradient:    0.00000025 ( 0.25E-06)
                       Final energy:   -109.33928399
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.378384832941
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925317
 One electron energy                          -194.13353869
 Two electron energy                            84.75515386
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.378384832684
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925318
 One electron energy                          -194.13353871
 Two electron energy                            84.75515388
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.378384832316
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925319
 One electron energy                          -194.13353872
 Two electron energy                            84.75515389
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.378384832231
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925318
 One electron energy                          -194.13353872
 Two electron energy                            84.75515389
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.378384831987
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925320
 One electron energy                          -194.13353874
 Two electron energy                            84.75515390
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.378384831922
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925320
 One electron energy                          -194.13353874
 Two electron energy                            84.75515391
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.378384831898
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925320
 One electron energy                          -194.13353874
 Two electron energy                            84.75515391
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.324150268537
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.39010793
 One electron energy                          -194.12376034
 Two electron energy                            84.79961007
 Virial ratio                                    3.64131107
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.324150267904
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.39010794
 One electron energy                          -194.12376036
 Two electron energy                            84.79961009
 Virial ratio                                    3.64131107
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.324150267309
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.39010796
 One electron energy                          -194.12376038
 Two electron energy                            84.79961011
 Virial ratio                                    3.64131107
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.304388565300
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427123
 One electron energy                          -189.65103115
 Two electron energy                            80.34664258
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.304388564932
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427122
 One electron energy                          -189.65103113
 Two electron energy                            80.34664257
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.304388564866
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427121
 One electron energy                          -189.65103112
 Two electron energy                            80.34664256
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.304388564642
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427120
 One electron energy                          -189.65103112
 Two electron energy                            80.34664255
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.304388564422
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427120
 One electron energy                          -189.65103110
 Two electron energy                            80.34664254
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.304388564413
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427120
 One electron energy                          -189.65103110
 Two electron energy                            80.34664254
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.304388564292
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427119
 One electron energy                          -189.65103110
 Two electron energy                            80.34664253
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.348375341232
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871265
 One electron energy                          -194.09793038
 Two electron energy                            84.74955504
 Virial ratio                                    3.64326271
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.348375340789
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871266
 One electron energy                          -194.09793040
 Two electron energy                            84.74955505
 Virial ratio                                    3.64326271
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.348375340336
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871268
 One electron energy                          -194.09793041
 Two electron energy                            84.74955507
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.348375340262
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871267
 One electron energy                          -194.09793041
 Two electron energy                            84.74955506
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.348375339881
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871268
 One electron energy                          -194.09793042
 Two electron energy                            84.74955508
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.348375339786
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871268
 One electron energy                          -194.09793042
 Two electron energy                            84.74955508
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.348375339710
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871269
 One electron energy                          -194.09793043
 Two electron energy                            84.74955509
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.329748747735
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030434
 One electron energy                          -194.13438319
 Two electron energy                            84.80463445
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.329748747680
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030434
 One electron energy                          -194.13438320
 Two electron energy                            84.80463445
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.329748747648
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030434
 One electron energy                          -194.13438320
 Two electron energy                            84.80463445
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.329748747326
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030435
 One electron energy                          -194.13438322
 Two electron energy                            84.80463447
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.329748747238
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030435
 One electron energy                          -194.13438322
 Two electron energy                            84.80463447
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.542912422137
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     2.741713814285
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     4.000000000000
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     7.364706473386
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     7.258621145131
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     0.457098461509
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     2.635091291088
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999999966529
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.000000013410
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     1.000000000000
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     3.937234717608
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     3.927069213403
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     5.763148560466
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     3.999999880035
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     6.069748279979
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     0.064976209120
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     4.236713257107
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.682630304343
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     2.836921746405
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     4.000000000182
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     6.782613224486
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     7.163450158850
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     0.317399963227
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.217379117806
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     1.067892981687
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     3.999989424410
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     1.000013407273
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     2.932338525070
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.000000152062
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     1.764232592453
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     0.683937002045
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     4.000000000000
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.492743949900
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     3.315910972880
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     8.235786654453
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     5.507504771542
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.999999999963
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.999999999959
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.000000000001
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     3.068726895990
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     0.268591039414
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     6.233165951907
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     4.000000135575
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     3.732956955639
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     6.929799447547
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     3.766967808207
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     2.065163241854
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     0.641466561652
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     3.999999999738
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     5.173768865182
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     3.358374472670
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     7.934887130372
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     4.826237831205
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     3.998496777382
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000010443338
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     3.999986552228
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     0.001493164022
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     0.999999955255
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     6.692854985410
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     8.574349183670
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     4.000000000000
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     0.142549576714
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     1.425467881988
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     3.307114884038
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     3.857403937370
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.000000033508
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999986630
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.999999999999
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     4.994038386402
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     7.804339747183
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     0.003685487627
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     3.999999984390
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     2.197294764382
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     5.005224343333
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     3.996318934686
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     6.252206453803
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     8.521611691942
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     4.000000000081
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     0.043617910332
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     1.478175368480
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     3.747712906400
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     3.956383050990
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     0.933610240930
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000132252
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000040499
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     3.066168310908
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.999999892683
 
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
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 2 6 1 1 4 5   2 6 3 1 4 5 2 6 3 6   2 4 5 3 111 7 812 9  15141310 6 2 4 3 5 1
                                       11 7 8 91215141310 6   2 3 4 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 110 4 6 5 8 9 7 3   2 1 5 610 4 8 9 7 3   2 1 5 6 8 410 7 9 3
                                        2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99989    -3.75712     1  1  s    1.00111
    2.1     1.55170    -0.32037     1  1  d2+  1.00402
    3.1     1.55170    -0.32037     1  1  d1+  1.00402
    4.1     1.55169    -0.32037     1  1  d2-  1.00402
    5.1     1.55169    -0.32037     1  1  d0   1.00402
    6.1     1.55169    -0.32037     1  1  d1-  1.00402
    7.1     1.24286    -0.13633     1  2  s    0.97849
    1.2     1.99959    -2.38340     1  1  px   0.99973
    2.2     1.99959    -2.38340     1  1  py   0.99973
    3.2     1.99959    -2.38340     1  1  pz   0.99973
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a22a2a 222      0.00000000      0.00000001      0.99999994      0.00000000      0.00000000     -0.00000000      0.00000000
 22aa2a2 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2aa22a2 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222aa2a 222     -0.00000034      0.00001695     -0.00000000      0.18877868     -0.00006219      0.00016340      0.98201959
 2a2a22a 222     -0.00000370      0.00000157     -0.00000000     -0.43917253     -0.00000120      0.00001401      0.08442439
 2a2aa22 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a222aa 222      0.89063183     -0.00032266     -0.00000000     -0.00000718     -0.00001590      0.08230887     -0.00001200
 22aaa22 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2a22aa2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22a22aa 222      0.00000740     -0.00000314      0.00000000      0.87834503      0.00000239     -0.00002802     -0.16884878
 2aa2a22 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa22a 222     -0.30235323     -0.00006239      0.00000000      0.00000237     -0.00009354      0.84177337     -0.00014063
 222a2aa 222      0.00028287      0.81437863     -0.00000001      0.00000357      0.36984759      0.00020307      0.00000865
 222aaa2 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a2a2a 222     -0.00005470     -0.14588521      0.00000000     -0.00000564     -0.61540022     -0.00009885     -0.00003535
 2222aaa 222     -0.33964280      0.00022231      0.00000000      0.00000278      0.00006319     -0.53351913      0.00008812
 2aa222a 222     -0.00018812     -0.56169803      0.00000000      0.00000620      0.69605689     -0.00003185      0.00005259
 2a2a2a2 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2aaa222 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 22a2aa2 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 
 Energy:       -109.37838483   -109.37838483   -109.37838483   -109.37838483   -109.37838483   -109.37838483   -109.37838483

 State:                8               9              10              11              12              13              14
 2a22a2a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa2a2 222      0.00000000     -0.00000000      0.00000000     -0.00000569     -0.00010160      0.00000704      0.99956236
 2aa22a2 222      0.00000001      0.00000000      0.00000000      0.00002167      0.00002661     -0.03034019     -0.00002620
 222aa2a 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a2a22a 222      0.89375360      0.00016351     -0.00000540     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2aa22 222      0.00010131      0.00000002     -0.00000000     -0.00002891     -0.00048493      0.89362372     -0.00000706
 2a222aa 222     -0.00008176      0.44687679      0.00000285     -0.00000000      0.00000000     -0.00000000      0.00000000
 22aaa22 222      0.00000002     -0.00010131     -0.00000000      0.88682586     -0.00003252      0.00002868     -0.00002250
 2a22aa2 222     -0.00000002      0.00010131      0.00000000      0.11199139      0.00001021     -0.00000060     -0.00021502
 22a22aa 222      0.44687681      0.00008176     -0.00000270     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa2a22 222     -0.00000000      0.00000000     -0.00010131      0.00003069      0.86349808      0.00047011      0.00011484
 22aa22a 222     -0.00008176      0.44687680      0.00000285     -0.00000000      0.00000000      0.00000000     -0.00000000
 222a2aa 222      0.00000270     -0.00000285      0.44687680     -0.00000000     -0.00000000     -0.00000000      0.00000000
 222aaa2 222      0.00000000     -0.00000000      0.00010132      0.00002636      0.44018767      0.00023475     -0.00004618
 22a2a2a 222      0.00000468     -0.00000493      0.77401335     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2222aaa 222     -0.00014161      0.77401333      0.00000493     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aa222a 222      0.00000270     -0.00000285      0.44687681     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a2a2a2 222     -0.00000000      0.00000000     -0.00017548     -0.00000251     -0.24439837     -0.00013589     -0.00009296
 2aaa222 222     -0.00000003      0.00017548      0.00000000      0.44735089     -0.00002467      0.00001691      0.00011115
 22a2aa2 222     -0.00020262     -0.00000004      0.00000000     -0.00001446     -0.00024246      0.44681186     -0.00000353
 
 Energy:       -109.32415027   -109.32415027   -109.32415027   -109.30438857   -109.30438856   -109.30438856   -109.30438856

 State:               15              16              17
 2a22a2a 222      0.00000000      0.00000000      0.00000000
 22aa2a2 222      0.00012185      0.00024054      0.00002641
 2aa22a2 222      0.00001097      0.00009646      0.99910183
 222aa2a 222     -0.00000000     -0.00000000     -0.00000000
 2a2a22a 222     -0.00000000     -0.00000000     -0.00000000
 2a2aa22 222      0.00000528      0.00000685      0.02713710
 2a222aa 222     -0.00000000     -0.00000000      0.00000000
 22aaa22 222      0.00236224      0.11328862     -0.00002932
 2a22aa2 222      0.01857270      0.88679926     -0.00008827
 22a22aa 222     -0.00000000     -0.00000000     -0.00000000
 2aa2a22 222     -0.23161915      0.00483713     -0.00000664
 22aa22a 222      0.00000000      0.00000000     -0.00000000
 222a2aa 222     -0.00000000      0.00000000     -0.00000000
 222aaa2 222      0.77799036     -0.01630227     -0.00001157
 22a2a2a 222     -0.00000000      0.00000000     -0.00000000
 2222aaa 222     -0.00000000     -0.00000000      0.00000000
 2aa222a 222     -0.00000000      0.00000000      0.00000000
 2a2a2a2 222      0.58289832     -0.01220484     -0.00000284
 2aaa222 222     -0.00935912     -0.44658658      0.00003403
 22a2aa2 222      0.00000264      0.00000343      0.01356855
 
 Energy:       -109.30438856   -109.30438856   -109.30438856
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a22a2b 222     -0.00000336     -0.00000433      0.81351251     -0.00000072     -0.00000427     -0.00000109     -0.00000220
 222aa2b 222      0.00000320      0.00010244      0.00000226      0.08494810     -0.00099074     -0.00053627      0.80906437
 2a222ab 222      0.72723486      0.00009516      0.00000304      0.00001930      0.00000873      0.02390708      0.00001094
 22a22ab 222     -0.00001264      0.00040339      0.00000044      0.72364970     -0.00007361     -0.00016647     -0.07598020
 22aa22b 222     -0.20495663      0.00000178      0.00000009      0.00020330     -0.00071162      0.69816482      0.00044136
 222a2ab 222     -0.00009948      0.66673628      0.00000508     -0.00030993      0.29138387      0.00026599      0.00030512
 2aa222b 222      0.00003231     -0.44881543      0.00000062      0.00038399      0.57271789      0.00059382      0.00071822
 222ab2a 222     -0.00000160     -0.00005122     -0.00000113     -0.04247405      0.00049537      0.00026814     -0.40453218
 222ba2a 222     -0.00000160     -0.00005122     -0.00000113     -0.04247405      0.00049537      0.00026814     -0.40453219
 220222a 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22a2a2b 222      0.00003878     -0.12581665     -0.00000329     -0.00004276     -0.49888937     -0.00049641     -0.00059083
 202222a 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 222022a 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 222202a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a22b2a 222      0.00000168      0.00000216     -0.40675625      0.00000036      0.00000214      0.00000055      0.00000110
 2b22a2a 222      0.00000168      0.00000216     -0.40675626      0.00000036      0.00000214      0.00000055      0.00000110
 22b22aa 222      0.00000632     -0.00020169     -0.00000022     -0.36182485      0.00003680      0.00008324      0.03799010
 22a22ba 222      0.00000632     -0.00020169     -0.00000022     -0.36182486      0.00003680      0.00008324      0.03799010
 222b2aa 222      0.00004974     -0.33336814     -0.00000254      0.00015496     -0.14569194     -0.00013300     -0.00015256
 222a2ba 222      0.00004974     -0.33336814     -0.00000254      0.00015496     -0.14569194     -0.00013300     -0.00015256
 2ab222a 222     -0.00001615      0.22440771     -0.00000031     -0.00019199     -0.28635894     -0.00029691     -0.00035911
 2b222aa 222     -0.36361743     -0.00004758     -0.00000152     -0.00000965     -0.00000437     -0.01195354     -0.00000547
 2a222ba 222     -0.36361743     -0.00004758     -0.00000152     -0.00000965     -0.00000437     -0.01195354     -0.00000547
 2ba222a 222     -0.00001615      0.22440772     -0.00000031     -0.00019199     -0.28635895     -0.00029691     -0.00035911
 22ba22a 222      0.10247831     -0.00000089     -0.00000004     -0.00010165      0.00035581     -0.34908241     -0.00022068
 22ab22a 222      0.10247831     -0.00000089     -0.00000004     -0.00010165      0.00035581     -0.34908241     -0.00022068
 222220a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2222aab 222     -0.30153746     -0.00005597     -0.00000181     -0.00012851      0.00040581     -0.41688841     -0.00026114
 2a2a22b 222      0.00000632     -0.00020169     -0.00000022     -0.36182486      0.00003680      0.00008324      0.03799010
 22b2a2a 222     -0.00001939      0.06290833      0.00000165      0.00002138      0.24944468      0.00024821      0.00029541
 22a2b2a 222     -0.00001939      0.06290832      0.00000165      0.00002138      0.24944469      0.00024821      0.00029541
 2222aba 222      0.15076873      0.00002798      0.00000090      0.00006426     -0.00020291      0.20844421      0.00013057
 2222baa 222      0.15076873      0.00002798      0.00000090      0.00006426     -0.00020291      0.20844420      0.00013057
 2b2a22a 222     -0.00000316      0.00010085      0.00000011      0.18091243     -0.00001840     -0.00004162     -0.01899505
 2a2b22a 222     -0.00000316      0.00010085      0.00000011      0.18091243     -0.00001840     -0.00004162     -0.01899505
 222a220 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22222a0 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 22a2220 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a22220 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2222a20 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 222a022 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2220a22 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22022 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2022a22 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2a02222 222     -0.00000010     -0.00000013      0.02460958     -0.00000002     -0.00000013     -0.00000003     -0.00000007
 2a22202 222     -0.00000010     -0.00000013      0.02460958     -0.00000002     -0.00000013     -0.00000003     -0.00000007
 220a222 222      0.00000043     -0.00000747      0.00000006     -0.01638851     -0.00002804     -0.00001186      0.02646556
 222a202 222     -0.00000023      0.00001367      0.00000008      0.02152804     -0.00003190     -0.00002058      0.02248447
 22022a2 222     -0.01824363     -0.00000339     -0.00000011     -0.00000778      0.00002455     -0.02522259     -0.00001580
 22a0222 222      0.00000287     -0.02732235     -0.00000007      0.00001883      0.01491638      0.00001610      0.00001976
 20a2222 222     -0.00000404      0.03112842      0.00000017     -0.00001753      0.00017552     -0.00000108     -0.00000189
 22a2202 222     -0.00000235      0.00761216      0.00000020      0.00000259      0.03018382      0.00003003      0.00003575
 22202a2 222     -0.02898259     -0.00000329     -0.00000010      0.00000288     -0.00001273      0.01135865      0.00000733
 20222a2 222      0.01986078      0.00000160      0.00000005     -0.00000676      0.00002501     -0.02396995     -0.00001523
 2ba22a2 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a2a2b2 222      0.00000352     -0.01141824     -0.00000030     -0.00000388     -0.04527573     -0.00004505     -0.00005362
 2aba222 222      0.02736544      0.00000508      0.00000016      0.00001166     -0.00003683      0.03783389      0.00002370
 22ba2a2 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 22ab2a2 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 
 Energy:       -109.34837534   -109.34837534   -109.34837534   -109.34837534   -109.34837534   -109.34837534   -109.34837534

 State:                8               9              10              11              12
 2a22a2b 222      0.00000000      0.00000000     -0.00000000     -0.00000001      0.00000000
 222aa2b 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a222ab 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 22a22ab 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 22aa22b 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 222a2ab 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2aa222b 222      0.00000000      0.00000000     -0.00000001      0.00000000      0.00000000
 222ab2a 222      0.00000374      0.00010985      0.00006180     -0.00014418      0.52000551
 222ba2a 222     -0.00000374     -0.00010985     -0.00006180      0.00014418     -0.52000551
 220222a 222      0.01008067     -0.00000312      0.00000881      0.51990780      0.00014408
 22a2a2b 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 202222a 222     -0.45529372     -0.00001286     -0.00002245     -0.25122380     -0.00006638
 222022a 222     -0.45529372     -0.00001286     -0.00002245     -0.25122379     -0.00006638
 222202a 222      0.45529371      0.00001286      0.00002245      0.25122379      0.00006638
 2a22b2a 222     -0.25122380     -0.00001103     -0.00000279      0.45529370      0.00012804
 2b22a2a 222      0.25122380      0.00001103      0.00000279     -0.45529370     -0.00012804
 22b22aa 222      0.00000324      0.00009513      0.00005352     -0.00012486      0.45033798
 22a22ba 222     -0.00000324     -0.00009513     -0.00005352      0.00012486     -0.45033798
 222b2aa 222      0.00001816      0.00083974     -0.45033723      0.00000727      0.00005334
 222a2ba 222     -0.00001816     -0.00083974      0.45033723     -0.00000727     -0.00005334
 2ab222a 222     -0.00001816     -0.00083974      0.45033723     -0.00000727     -0.00005334
 2b222aa 222      0.00001440     -0.45033723     -0.00083973     -0.00000300      0.00009523
 2a222ba 222     -0.00001440      0.45033722      0.00083973      0.00000300     -0.00009523
 2ba222a 222      0.00001816      0.00083974     -0.45033722      0.00000727      0.00005334
 22ba22a 222     -0.00001440      0.45033722      0.00083973      0.00000300     -0.00009523
 22ab22a 222      0.00001440     -0.45033722     -0.00083973     -0.00000300      0.00009523
 222220a 222      0.44521306      0.00001598      0.00001364     -0.26868401     -0.00007770
 2222aab 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2a22b 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22b2a2a 222      0.00001049      0.00048482     -0.26000231      0.00000420      0.00003080
 22a2b2a 222     -0.00001049     -0.00048482      0.26000231     -0.00000420     -0.00003080
 2222aba 222      0.00000831     -0.26000231     -0.00048482     -0.00000173      0.00005498
 2222baa 222     -0.00000831      0.26000231      0.00048482      0.00000173     -0.00005498
 2b2a22a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2b22a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 222a220 222      0.00000117      0.00003447      0.00001939     -0.00004524      0.16317165
 22222a0 222     -0.00000522      0.16317137      0.00030426      0.00000109     -0.00003450
 22a2220 222      0.00000658      0.00030426     -0.16317137      0.00000263      0.00001933
 2a22220 222     -0.07883109     -0.00000346     -0.00000088      0.14286584      0.00004018
 2222a20 222      0.14286584      0.00000404      0.00000704      0.07883109      0.00002083
 222a022 222     -0.00000062     -0.00001827     -0.00001028      0.00002398     -0.08647421
 2220a22 222     -0.07571297     -0.00000214     -0.00000373     -0.04177721     -0.00001104
 2a22022 222      0.04177721      0.00000183      0.00000046     -0.07571297     -0.00002129
 2022a22 222     -0.07571297     -0.00000214     -0.00000373     -0.04177721     -0.00001104
 2a02222 222     -0.01584520     -0.00000001     -0.00000185     -0.07459571     -0.00002057
 2a22202 222      0.07155599      0.00000246      0.00000246     -0.02636913     -0.00000783
 220a222 222     -0.00000041     -0.00001218     -0.00000685      0.00001599     -0.05765759
 222a202 222     -0.00000041     -0.00001218     -0.00000685      0.00001599     -0.05765759
 22022a2 222      0.00000184     -0.05765749     -0.00010751     -0.00000038      0.00001219
 22a0222 222     -0.00000233     -0.00010751      0.05765749     -0.00000093     -0.00000683
 20a2222 222     -0.00000233     -0.00010751      0.05765749     -0.00000093     -0.00000683
 22a2202 222     -0.00000233     -0.00010751      0.05765749     -0.00000093     -0.00000683
 22202a2 222      0.00000184     -0.05765749     -0.00010751     -0.00000038      0.00001219
 20222a2 222      0.00000184     -0.05765749     -0.00010751     -0.00000038      0.00001219
 2ba22a2 222      0.00000041      0.00001217      0.00000685     -0.00001598      0.05763324
 2a2a2b2 222     -0.00000232     -0.00010747      0.05763314     -0.00000093     -0.00000683
 2aba222 222      0.00000184     -0.05763314     -0.00010747     -0.00000038      0.00001219
 22ba2a2 222      0.05762241      0.00000185      0.00000231     -0.00111726     -0.00000072
 22ab2a2 222     -0.02784363     -0.00000122     -0.00000031      0.05046110      0.00001419
 
 Energy:       -109.32974875   -109.32974875   -109.32974875   -109.32974875   -109.32974875
 


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
 CPU TIMES  *         5.35      3.92      1.12
 REAL TIME  *         6.27 SEC
 DISK USED  *        32.59 MB (local),      739.92 MB (total)
 SF USED    *        11.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3783848   12.0
    -109.3783848   12.0
    -109.3783848   12.0
    -109.3783848   12.0
    -109.3783848   12.0
    -109.3783848   12.0
    -109.3783848   12.0
    -109.3241503    2.0
    -109.3241503    2.0
    -109.3241503    2.0
    -109.3043886   12.0
    -109.3043886   12.0
    -109.3043886   12.0
    -109.3043886   12.0
    -109.3043886   12.0
    -109.3043886   12.0
    -109.3043886   12.0
    -109.3483753   12.0
    -109.3483753   12.0
    -109.3483753   12.0
    -109.3483753   12.0
    -109.3483753   12.0
    -109.3483753   12.0
    -109.3483753   12.0
    -109.3297487    6.0
    -109.3297487    6.0
    -109.3297487    6.0
    -109.3297487    6.0
    -109.3297487    6.0
                                                  


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
 Smallest eigenvalue of S:  0.5355399E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.6783035E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.4271522E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.2110245E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.3638783E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.37838483
     2      -109.37838483
     3      -109.37838483
     4      -109.37838483
     5      -109.37838483
     6      -109.37838483
     7      -109.37838483
     8      -109.32415027
     9      -109.32415027
    10      -109.32415027
    11      -109.30438857
    12      -109.30438856
    13      -109.30438856
    14      -109.30438856
    15      -109.30438856
    16      -109.30438856
    17      -109.30438856

 Number of blocks in overlap matrix:    91   Smallest eigenvalue:  0.13D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  756798 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  564595 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68026218  0.30D-01  0.10D+00     0.97
    1     2     2     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68028255  0.30D-01  0.10D+00     0.97
    1     3     3     1.00000000     0.00000000  -109.37838483     0.00000000    -0.68264875  0.30D-01  0.10D+00     0.97
    1     4     4     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.67910003  0.30D-01  0.99D-01     0.97
    1     5     5     1.00000000     0.00000000  -109.37838483     0.00000000    -0.68056012  0.30D-01  0.10D+00     0.97
    1     6     6     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.67992751  0.30D-01  0.10D+00     0.97
    1     7     7     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68276558  0.30D-01  0.10D+00     0.97
    1     8     8     1.00000000     0.00000000  -109.32415027    -0.00000000    -0.69341244  0.38D-01  0.10D+00     0.97
    1     9     9     1.00000000     0.00000000  -109.32415027     0.00000000    -0.69322257  0.38D-01  0.10D+00     0.97
    1    10    10     1.00000000     0.00000000  -109.32415027     0.00000000    -0.69348446  0.38D-01  0.10D+00     0.97
    1    11    11     1.00000000     0.00000000  -109.30438857    -0.00000000    -0.68220729  0.69D-01  0.86D-01     0.97
    1    12    12     1.00000000     0.00000000  -109.30438856     0.00000000    -0.68137810  0.69D-01  0.86D-01     0.97
    1    13    13     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68112346  0.69D-01  0.86D-01     0.97
    1    14    14     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68237913  0.71D-01  0.86D-01     0.97
    1    15    15     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68213943  0.69D-01  0.86D-01     0.97
    1    16    16     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68188208  0.69D-01  0.86D-01     0.97
    1    17    17     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68461704  0.71D-01  0.87D-01     0.97
    2     1     1     1.08888582    -0.56229458  -109.94067941    -0.56229458    -0.02085863  0.22D-02  0.26D-02    61.80
    2     2     2     1.08885401    -0.56227513  -109.94065997    -0.56227513    -0.02083848  0.22D-02  0.26D-02    61.80
    2     3     3     1.08863698    -0.56171502  -109.94009985    -0.56171502    -0.02092949  0.21D-02  0.26D-02    61.80
    2     4     4     1.08861359    -0.56161658  -109.94000141    -0.56161658    -0.02097941  0.21D-02  0.26D-02    61.80
    2     5     5     1.08862511    -0.56156876  -109.93995359    -0.56156876    -0.02096509  0.21D-02  0.26D-02    61.80
    2     6     6     1.08860542    -0.56147486  -109.93985969    -0.56147486    -0.02100413  0.21D-02  0.26D-02    61.80
    2     7     7     1.08851080    -0.56112268  -109.93950751    -0.56112268    -0.02112937  0.21D-02  0.26D-02    61.80
    2     8     8     1.09521079    -0.57156328  -109.89571355    -0.57156328    -0.02161340  0.30D-02  0.27D-02    61.80
    2     9     9     1.09529827    -0.57145199  -109.89560226    -0.57145199    -0.02176136  0.31D-02  0.27D-02    61.80
    2    10    10     1.09526092    -0.57132219  -109.89547246    -0.57132219    -0.02179423  0.31D-02  0.27D-02    61.80
    2    11    11     1.10562013    -0.56236619  -109.86675476    -0.56236619    -0.02626922  0.36D-02  0.32D-02    61.80
    2    12    12     1.10554091    -0.56235790  -109.86674647    -0.56235790    -0.02621310  0.35D-02  0.32D-02    61.80
    2    13    13     1.10625208    -0.56217190  -109.86656047    -0.56217190    -0.02659462  0.38D-02  0.32D-02    61.80
    2    14    14     1.10580150    -0.56199760  -109.86638616    -0.56199760    -0.02650278  0.37D-02  0.32D-02    61.80
    2    15    15     1.10581206    -0.56180213  -109.86619070    -0.56180213    -0.02656888  0.37D-02  0.32D-02    61.80
    2    16    16     1.10573492    -0.56171219  -109.86610076    -0.56171219    -0.02657104  0.37D-02  0.32D-02    61.80
    2    17    17     1.10586606    -0.56138557  -109.86577413    -0.56138557    -0.02669242  0.39D-02  0.32D-02    61.80
    3     1     1     1.08584875    -0.58399800  -109.96238283    -0.02170342    -0.00149990  0.95D-04  0.24D-03   121.58
    3     2     2     1.08581919    -0.58397986  -109.96236469    -0.02170473    -0.00150576  0.96D-04  0.24D-03   121.58
    3     3     3     1.08558227    -0.58375572  -109.96214056    -0.02204071    -0.00160040  0.96D-04  0.25D-03   121.58
    3     4     4     1.08556854    -0.58374670  -109.96213154    -0.02213012    -0.00161452  0.96D-04  0.25D-03   121.58
    3     5     5     1.08554020    -0.58369236  -109.96207720    -0.02212361    -0.00162814  0.99D-04  0.25D-03   121.58
    3     6     6     1.08551376    -0.58366703  -109.96205186    -0.02219218    -0.00164287  0.10D-03  0.25D-03   121.58
    3     7     7     1.08540812    -0.58354497  -109.96192980    -0.02242229    -0.00170344  0.10D-03  0.26D-03   121.58
    3     8     8     1.09024721    -0.59389957  -109.91804984    -0.02233629    -0.00169920  0.15D-03  0.26D-03   121.58
    3     9     9     1.09026089    -0.59387812  -109.91802839    -0.02242613    -0.00172126  0.16D-03  0.26D-03   121.58
    3    10    10     1.09019974    -0.59380798  -109.91795824    -0.02248579    -0.00174615  0.16D-03  0.27D-03   121.58
    3    11    11     1.09558506    -0.58909960  -109.89348816    -0.02673341    -0.00255911  0.16D-03  0.43D-03   121.58
    3    12    12     1.09556589    -0.58905863  -109.89344720    -0.02670073    -0.00256803  0.16D-03  0.43D-03   121.58
    3    13    13     1.09561002    -0.58905464  -109.89344320    -0.02688273    -0.00262412  0.16D-03  0.44D-03   121.58
    3    14    14     1.09556219    -0.58882634  -109.89321491    -0.02682874    -0.00255322  0.15D-03  0.43D-03   121.58
    3    15    15     1.09535077    -0.58879576  -109.89318432    -0.02699362    -0.00264009  0.16D-03  0.44D-03   121.58
    3    16    16     1.09532995    -0.58879176  -109.89318032    -0.02707956    -0.00266054  0.16D-03  0.44D-03   121.58
    3    17    17     1.09491247    -0.58838351  -109.89277207    -0.02699794    -0.00267904  0.17D-03  0.43D-03   121.58
    4     1     1     1.08878992    -0.58609718  -109.96448201    -0.00209918    -0.00025838  0.15D-04  0.42D-04   181.52
    4     2     2     1.08876931    -0.58608964  -109.96447447    -0.00210978    -0.00026110  0.16D-04  0.42D-04   181.52
    4     3     3     1.08872277    -0.58605580  -109.96444064    -0.00230008    -0.00027693  0.16D-04  0.44D-04   181.52
    4     4     4     1.08870546    -0.58604543  -109.96443027    -0.00229873    -0.00027928  0.16D-04  0.44D-04   181.52
    4     5     5     1.08867900    -0.58602845  -109.96441328    -0.00233608    -0.00028726  0.17D-04  0.45D-04   181.52
    4     6     6     1.08866125    -0.58602250  -109.96440733    -0.00235547    -0.00029107  0.17D-04  0.46D-04   181.52
    4     7     7     1.08862961    -0.58600249  -109.96438732    -0.00245752    -0.00030251  0.17D-04  0.47D-04   181.52
    4     8     8     1.09285015    -0.59621091  -109.92036117    -0.00231134    -0.00031350  0.28D-04  0.47D-04   181.52
    4     9     9     1.09281664    -0.59620272  -109.92035298    -0.00232459    -0.00031988  0.29D-04  0.48D-04   181.52
    4    10    10     1.09276745    -0.59617418  -109.92032445    -0.00236621    -0.00033203  0.30D-04  0.50D-04   181.52
    4    11    11     1.10270049    -0.59302705  -109.89741561    -0.00392745    -0.00060695  0.54D-04  0.88D-04   181.52
    4    12    12     1.10265965    -0.59301317  -109.89740174    -0.00395454    -0.00058712  0.57D-04  0.82D-04   181.52
    4    13    13     1.10267754    -0.59300142  -109.89738998    -0.00394678    -0.00059279  0.57D-04  0.84D-04   181.52
    4    14    14     1.10246315    -0.59289848  -109.89728705    -0.00407214    -0.00063473  0.60D-04  0.89D-04   181.52
    4    15    15     1.10239048    -0.59287034  -109.89725890    -0.00407458    -0.00064606  0.60D-04  0.91D-04   181.52
    4    16    16     1.10225152    -0.59277246  -109.89716103    -0.00398071    -0.00066735  0.59D-04  0.96D-04   181.52
    4    17    17     1.10195247    -0.59263538  -109.89702394    -0.00425187    -0.00071871  0.69D-04  0.97D-04   181.52
    5     1     1     1.09029525    -0.58642900  -109.96481383    -0.00033182    -0.00005114  0.29D-05  0.90D-05   241.40
    5     2     2     1.09028549    -0.58642527  -109.96481010    -0.00033563    -0.00005293  0.29D-05  0.94D-05   241.40
    5     3     3     1.09024696    -0.58641527  -109.96480010    -0.00035946    -0.00005653  0.32D-05  0.97D-05   241.40
    5     4     4     1.09024761    -0.58641060  -109.96479543    -0.00036517    -0.00005763  0.33D-05  0.98D-05   241.40
    5     5     5     1.09023155    -0.58640373  -109.96478856    -0.00037528    -0.00006063  0.34D-05  0.10D-04   241.40
    5     6     6     1.09021893    -0.58640139  -109.96478622    -0.00037889    -0.00006201  0.34D-05  0.11D-04   241.40
    5     7     7     1.09018822    -0.58639477  -109.96477960    -0.00039228    -0.00006570  0.34D-05  0.11D-04   241.40
    5     8     8     1.09451680    -0.59661238  -109.92076265    -0.00040147    -0.00006098  0.37D-05  0.10D-04   241.40
    5     9     9     1.09450926    -0.59661134  -109.92076161    -0.00040863    -0.00006178  0.37D-05  0.11D-04   241.40
    5    10    10     1.09448027    -0.59659884  -109.92074910    -0.00042465    -0.00006714  0.37D-05  0.12D-04   241.40
    5    11    11     1.10517943    -0.59381542  -109.89820399    -0.00078838    -0.00012379  0.55D-05  0.20D-04   241.40
    5    12    12     1.10518309    -0.59381163  -109.89820020    -0.00079846    -0.00012478  0.56D-05  0.20D-04   241.40
    5    13    13     1.10512135    -0.59379964  -109.89818821    -0.00079822    -0.00015270  0.53D-05  0.30D-04   241.40
    5    14    14     1.10504251    -0.59376604  -109.89815460    -0.00086756    -0.00015083  0.60D-05  0.26D-04   241.40
    5    15    15     1.10501984    -0.59375341  -109.89814198    -0.00088308    -0.00015894  0.62D-05  0.28D-04   241.40
    5    16    16     1.10502968    -0.59372105  -109.89810961    -0.00094859    -0.00016516  0.72D-05  0.27D-04   241.40
    5    17    17     1.10487835    -0.59368147  -109.89807004    -0.00104610    -0.00017654  0.85D-05  0.26D-04   241.40
    6     1     1     1.09034538    -0.58650069  -109.96488552    -0.00007169    -0.00001581  0.85D-06  0.27D-05   301.24
    6     2     2     1.09033911    -0.58649890  -109.96488373    -0.00007363    -0.00001686  0.89D-06  0.28D-05   301.24
    6     3     3     1.09029802    -0.58649707  -109.96488190    -0.00008180    -0.00001701  0.93D-06  0.27D-05   301.24
    6     4     4     1.09028629    -0.58649573  -109.96488056    -0.00008513    -0.00001706  0.99D-06  0.26D-05   301.24
    6     5     5     1.09027510    -0.58649225  -109.96487708    -0.00008852    -0.00001929  0.10D-05  0.30D-05   301.24
    6     6     6     1.09026926    -0.58649124  -109.96487607    -0.00008985    -0.00001994  0.11D-05  0.31D-05   301.24
    6     7     7     1.09025101    -0.58648797  -109.96487281    -0.00009320    -0.00002229  0.12D-05  0.36D-05   301.24
    6     8     8     1.09457491    -0.59670196  -109.92085223    -0.00008958    -0.00001948  0.19D-05  0.29D-05   301.24
    6     9     9     1.09457030    -0.59670172  -109.92085199    -0.00009038    -0.00001986  0.20D-05  0.30D-05   301.24
    6    10    10     1.09454589    -0.59669567  -109.92084593    -0.00009683    -0.00002313  0.23D-05  0.36D-05   301.24
    6    11    11     1.10523653    -0.59398527  -109.89837384    -0.00016985    -0.00003575  0.35D-05  0.52D-05   301.24
    6    12    12     1.10522818    -0.59398454  -109.89837311    -0.00017291    -0.00003561  0.35D-05  0.51D-05   301.24
    6    13    13     1.10519501    -0.59396423  -109.89835279    -0.00016458    -0.00005107  0.36D-05  0.89D-05   301.24
    6    14    14     1.10510191    -0.59395750  -109.89834607    -0.00019146    -0.00005487  0.40D-05  0.93D-05   301.24
    6    15    15     1.10506433    -0.59394974  -109.89833831    -0.00019633    -0.00005940  0.43D-05  0.10D-04   301.24
    6    16    16     1.10498236    -0.59394489  -109.89833345    -0.00022384    -0.00005606  0.56D-05  0.86D-05   301.24
    6    17    17     1.10482283    -0.59393739  -109.89832596    -0.00025592    -0.00005591  0.63D-05  0.71D-05   301.24
    7     1     1     1.09048247    -0.58651839  -109.96490322    -0.00001770    -0.00000485  0.34D-06  0.88D-06   361.46
    7     2     2     1.09047085    -0.58651760  -109.96490244    -0.00001870    -0.00000517  0.38D-06  0.94D-06   361.46
    7     3     3     1.09047605    -0.58651726  -109.96490209    -0.00002019    -0.00000525  0.42D-06  0.90D-06   361.46
    7     4     4     1.09048137    -0.58651688  -109.96490171    -0.00002115    -0.00000535  0.48D-06  0.87D-06   361.46
    7     5     5     1.09045039    -0.58651508  -109.96489991    -0.00002283    -0.00000632  0.49D-06  0.11D-05   361.46
    7     6     6     1.09044455    -0.58651476  -109.96489960    -0.00002352    -0.00000646  0.53D-06  0.11D-05   361.46
    7     7     7     1.09041679    -0.58651320  -109.96489803    -0.00002522    -0.00000728  0.53D-06  0.13D-05   361.46
    7     8     8     1.09479178    -0.59672528  -109.92087555    -0.00002332    -0.00000635  0.79D-06  0.10D-05   361.46
    7     9     9     1.09478631    -0.59672527  -109.92087553    -0.00002354    -0.00000645  0.81D-06  0.11D-05   361.46
    7    10    10     1.09475378    -0.59672262  -109.92087289    -0.00002696    -0.00000762  0.94D-06  0.12D-05   361.46
    7    11    11     1.10589623    -0.59402767  -109.89841623    -0.00004239    -0.00001020  0.12D-05  0.15D-05   361.46
    7    12    12     1.10589734    -0.59402750  -109.89841607    -0.00004296    -0.00001029  0.13D-05  0.15D-05   361.46
    7    13    13     1.10572759    -0.59402131  -109.89840988    -0.00005709    -0.00001310  0.11D-05  0.20D-05   361.46
    7    14    14     1.10567687    -0.59401626  -109.89840482    -0.00005876    -0.00001542  0.11D-05  0.25D-05   361.46
    7    15    15     1.10563916    -0.59401305  -109.89840161    -0.00006330    -0.00001691  0.12D-05  0.27D-05   361.46
    7    16    16     1.10571042    -0.59401141  -109.89839997    -0.00006652    -0.00001740  0.19D-05  0.25D-05   361.46
    7    17    17     1.10571273    -0.59400762  -109.89839618    -0.00007022    -0.00001908  0.26D-05  0.25D-05   361.46
    8     1     1     1.09062791    -0.58652406  -109.96490889    -0.00000567    -0.00000142  0.11D-06  0.24D-06   422.06
    8     2     2     1.09062534    -0.58652376  -109.96490859    -0.00000616    -0.00000155  0.12D-06  0.26D-06   422.06
    8     3     3     1.09062422    -0.58652358  -109.96490841    -0.00000632    -0.00000163  0.12D-06  0.27D-06   422.06
    8     4     4     1.09062449    -0.58652342  -109.96490825    -0.00000654    -0.00000170  0.14D-06  0.28D-06   422.06
    8     5     5     1.09061524    -0.58652269  -109.96490752    -0.00000761    -0.00000202  0.15D-06  0.33D-06   422.06
    8     6     6     1.09061193    -0.58652260  -109.96490743    -0.00000783    -0.00000207  0.16D-06  0.34D-06   422.06
    8     7     7     1.09060091    -0.58652196  -109.96490679    -0.00000876    -0.00000236  0.16D-06  0.39D-06   422.06
    8     8     8     1.09494941    -0.59673275  -109.92088302    -0.00000747    -0.00000199  0.19D-06  0.32D-06   422.06
    8     9     9     1.09495297    -0.59673271  -109.92088298    -0.00000745    -0.00000198  0.19D-06  0.31D-06   422.06
    8    10    10     1.09493835    -0.59673172  -109.92088199    -0.00000910    -0.00000244  0.23D-06  0.39D-06   422.06
    8    11    11     1.10609303    -0.59404038  -109.89842894    -0.00001271    -0.00000302  0.23D-06  0.47D-06   422.06
    8    12    12     1.10608996    -0.59404036  -109.89842893    -0.00001286    -0.00000306  0.23D-06  0.48D-06   422.06
    8    13    13     1.10604579    -0.59403842  -109.89842698    -0.00001711    -0.00000446  0.22D-06  0.87D-06   422.06
    8    14    14     1.10603074    -0.59403636  -109.89842493    -0.00002010    -0.00000495  0.35D-06  0.80D-06   422.06
    8    15    15     1.10601267    -0.59403507  -109.89842363    -0.00002202    -0.00000563  0.38D-06  0.94D-06   422.06
    8    16    16     1.10599035    -0.59403425  -109.89842281    -0.00002284    -0.00000597  0.42D-06  0.93D-06   422.06
    8    17    17     1.10595298    -0.59403248  -109.89842104    -0.00002486    -0.00000661  0.54D-06  0.91D-06   422.06
    9     1     1     1.09064812    -0.58652590  -109.96491073    -0.00000184    -0.00000051  0.27D-07  0.89D-07   482.09
    9     2     2     1.09064582    -0.58652577  -109.96491060    -0.00000201    -0.00000058  0.28D-07  0.10D-06   482.09
    9     3     3     1.09064037    -0.58652571  -109.96491054    -0.00000213    -0.00000059  0.35D-07  0.96D-07   482.09
    9     4     4     1.09063739    -0.58652564  -109.96491047    -0.00000223    -0.00000060  0.40D-07  0.95D-07   482.09
    9     5     5     1.09063114    -0.58652535  -109.96491018    -0.00000266    -0.00000076  0.44D-07  0.12D-06   482.09
    9     6     6     1.09062986    -0.58652532  -109.96491015    -0.00000272    -0.00000078  0.45D-07  0.13D-06   482.09
    9     7     7     1.09062422    -0.58652504  -109.96490987    -0.00000308    -0.00000096  0.46D-07  0.16D-06   482.09
    9     8     8     1.09496304    -0.59673535  -109.92088562    -0.00000260    -0.00000073  0.74D-07  0.12D-06   482.09
    9     9     9     1.09496378    -0.59673533  -109.92088560    -0.00000262    -0.00000073  0.73D-07  0.11D-06   482.09
    9    10    10     1.09495365    -0.59673492  -109.92088518    -0.00000320    -0.00000097  0.81D-07  0.16D-06   482.09
    9    11    11     1.10617206    -0.59404437  -109.89843294    -0.00000400    -0.00000104  0.88D-07  0.16D-06   482.09
    9    12    12     1.10617133    -0.59404437  -109.89843293    -0.00000400    -0.00000103  0.85D-07  0.16D-06   482.09
    9    13    13     1.10614325    -0.59404320  -109.89843176    -0.00000478    -0.00000187  0.66D-07  0.38D-06   482.09
    9    14    14     1.10611770    -0.59404266  -109.89843122    -0.00000630    -0.00000217  0.92D-07  0.42D-06   482.09
    9    15    15     1.10610087    -0.59404206  -109.89843063    -0.00000700    -0.00000253  0.10D-06  0.50D-06   482.09
    9    16    16     1.10608736    -0.59404182  -109.89843038    -0.00000757    -0.00000242  0.15D-06  0.44D-06   482.09
    9    17    17     1.10604750    -0.59404136  -109.89842993    -0.00000889    -0.00000240  0.23D-06  0.32D-06   482.09
   10     1     1     1.09066567    -0.58652647  -109.96491130    -0.00000057    -0.00000019  0.71D-08  0.38D-07   542.15
   10     2     2     1.09066243    -0.58652641  -109.96491124    -0.00000064    -0.00000022  0.82D-08  0.44D-07   542.15
   10     3     3     1.09066242    -0.58652640  -109.96491123    -0.00000069    -0.00000021  0.12D-07  0.38D-07   542.15
   10     4     4     1.09066212    -0.58652638  -109.96491121    -0.00000074    -0.00000022  0.14D-07  0.38D-07   542.15
   10     5     5     1.09065427    -0.58652624  -109.96491107    -0.00000089    -0.00000030  0.13D-07  0.55D-07   542.15
   10     6     6     1.09065290    -0.58652623  -109.96491106    -0.00000091    -0.00000030  0.15D-07  0.56D-07   542.15
   10     7     7     1.09064538    -0.58652609  -109.96491093    -0.00000106    -0.00000038  0.17D-07  0.71D-07   542.15
   10     8     8     1.09499129    -0.59673623  -109.92088650    -0.00000088    -0.00000028  0.27D-07  0.48D-07   542.15
   10     9     9     1.09499267    -0.59673622  -109.92088649    -0.00000089    -0.00000028  0.28D-07  0.47D-07   542.15
   10    10    10     1.09498101    -0.59673603  -109.92088629    -0.00000111    -0.00000038  0.32D-07  0.68D-07   542.15
   10    11    11     1.10627569    -0.59404558  -109.89843415    -0.00000121    -0.00000034  0.42D-07  0.52D-07   542.15
   10    12    12     1.10627624    -0.59404558  -109.89843414    -0.00000121    -0.00000034  0.40D-07  0.54D-07   542.15
   10    13    13     1.10623057    -0.59404510  -109.89843367    -0.00000191    -0.00000058  0.40D-07  0.10D-06   542.15
   10    14    14     1.10621062    -0.59404478  -109.89843334    -0.00000212    -0.00000076  0.36D-07  0.15D-06   542.15
   10    15    15     1.10619682    -0.59404452  -109.89843308    -0.00000246    -0.00000089  0.39D-07  0.17D-06   542.15
   10    16    16     1.10621421    -0.59404450  -109.89843307    -0.00000268    -0.00000085  0.78D-07  0.15D-06   542.15
   10    17    17     1.10622355    -0.59404434  -109.89843290    -0.00000297    -0.00000091  0.13D-06  0.12D-06   542.15
   11     1     1     1.09068462    -0.58652667  -109.96491150    -0.00000020    -0.00000007  0.41D-08  0.12D-07   601.96
   11     2     2     1.09068346    -0.58652664  -109.96491147    -0.00000023    -0.00000008  0.52D-08  0.14D-07   601.96
   11     3     3     1.09068411    -0.58652664  -109.96491147    -0.00000024    -0.00000008  0.66D-08  0.13D-07   601.96
   11     4     4     1.09068406    -0.58652664  -109.96491147    -0.00000026    -0.00000008  0.76D-08  0.13D-07   601.96
   11     5     5     1.09067958    -0.58652657  -109.96491140    -0.00000033    -0.00000011  0.77D-08  0.19D-07   601.96
   11     6     6     1.09067869    -0.58652657  -109.96491140    -0.00000034    -0.00000011  0.84D-08  0.19D-07   601.96
   11     7     7     1.09067437    -0.58652650  -109.96491134    -0.00000041    -0.00000014  0.85D-08  0.26D-07   601.96
   11     8     8     1.09501503    -0.59673653  -109.92088680    -0.00000030    -0.00000010  0.88D-08  0.17D-07   601.96
   11     9     9     1.09501607    -0.59673652  -109.92088679    -0.00000031    -0.00000010  0.91D-08  0.17D-07   601.96
   11    10    10     1.09501018    -0.59673645  -109.92088671    -0.00000042    -0.00000014  0.12D-07  0.23D-07   601.96
   11    11    11     1.10629735    -0.59404598  -109.89843455    -0.00000040    -0.00000011  0.92D-08  0.18D-07   601.96
   11    12    12     1.10629832    -0.59404598  -109.89843454    -0.00000040    -0.00000011  0.90D-08  0.18D-07   601.96
   11    13    13     1.10627963    -0.59404579  -109.89843435    -0.00000069    -0.00000023  0.87D-08  0.47D-07   601.96
   11    14    14     1.10627655    -0.59404564  -109.89843421    -0.00000087    -0.00000028  0.18D-07  0.50D-07   601.96
   11    15    15     1.10626236    -0.59404554  -109.89843410    -0.00000102    -0.00000034  0.19D-07  0.61D-07   601.96
   11    16    16     1.10626796    -0.59404553  -109.89843409    -0.00000103    -0.00000034  0.18D-07  0.68D-07   601.96
   11    17    17     1.10625308    -0.59404548  -109.89843405    -0.00000114    -0.00000034  0.34D-07  0.46D-07   601.96
   12     1     1     1.09069201    -0.58652674  -109.96491158    -0.00000008    -0.00000003  0.84D-09  0.53D-08   662.02
   12     2     2     1.09069113    -0.58652673  -109.96491156    -0.00000009    -0.00000003  0.78D-09  0.66D-08   662.02
   12     3     3     1.09069064    -0.58652673  -109.96491156    -0.00000009    -0.00000003  0.12D-08  0.59D-08   662.02
   12     4     4     1.09069015    -0.58652673  -109.96491156    -0.00000010    -0.00000003  0.17D-08  0.54D-08   662.02
   12     5     5     1.09068739    -0.58652670  -109.96491153    -0.00000013    -0.00000005  0.17D-08  0.89D-08   662.02
   12     6     6     1.09068705    -0.58652670  -109.96491153    -0.00000013    -0.00000005  0.17D-08  0.91D-08   662.02
   12     7     7     1.09068453    -0.58652667  -109.96491150    -0.00000017    -0.00000007  0.17D-08  0.13D-07   662.02
   12     8     8     1.09502223    -0.59673665  -109.92088692    -0.00000012    -0.00000004  0.30D-08  0.77D-08   662.02
   12     9     9     1.09502249    -0.59673665  -109.92088691    -0.00000012    -0.00000004  0.32D-08  0.76D-08   662.02
   12    10    10     1.09501878    -0.59673661  -109.92088688    -0.00000017    -0.00000006  0.32D-08  0.12D-07   662.02
   12    11    11     1.10631646    -0.59404612  -109.89843469    -0.00000014    -0.00000004  0.28D-08  0.67D-08   662.02
   12    12    12     1.10631631    -0.59404612  -109.89843468    -0.00000014    -0.00000004  0.30D-08  0.68D-08   662.02
   12    13    13     1.10630329    -0.59404603  -109.89843460    -0.00000024    -0.00000009  0.40D-08  0.18D-07   662.02
   12    14    14     1.10629601    -0.59404597  -109.89843454    -0.00000033    -0.00000013  0.36D-08  0.28D-07   662.02
   12    15    15     1.10628471    -0.59404593  -109.89843449    -0.00000039    -0.00000013  0.11D-07  0.18D-07   662.02
   12    16    16     1.10629173    -0.59404593  -109.89843449    -0.00000040    -0.00000015  0.65D-08  0.28D-07   662.02
   12    17    17     1.10628977    -0.59404592  -109.89843448    -0.00000044    -0.00000016  0.44D-08  0.35D-07   662.02
   13     1     1     1.09069238    -0.58652675  -109.96491159    -0.00000001    -0.00000002  0.77D-09  0.37D-08   702.38
   13     2     2     1.09069206    -0.58652675  -109.96491159    -0.00000002    -0.00000002  0.85D-09  0.37D-08   702.38
   13     3     3     1.09069202    -0.58652674  -109.96491158    -0.00000001    -0.00000003  0.87D-09  0.51D-08   702.38
   13     4     4     1.09068964    -0.58652674  -109.96491157    -0.00000001    -0.00000003  0.11D-08  0.51D-08   702.38
   13     5     5     1.09069113    -0.58652673  -109.96491156    -0.00000003    -0.00000003  0.79D-09  0.66D-08   702.38
   13     6     6     1.09069018    -0.58652673  -109.96491156    -0.00000003    -0.00000003  0.16D-08  0.51D-08   702.38
   13     7     7     1.09069066    -0.58652673  -109.96491156    -0.00000006    -0.00000003  0.12D-08  0.59D-08   702.38
   13     8     8     1.09502809    -0.59673670  -109.92088696    -0.00000005    -0.00000002  0.15D-08  0.30D-08   702.38
   13     9     9     1.09502852    -0.59673670  -109.92088696    -0.00000005    -0.00000002  0.17D-08  0.29D-08   702.38
   13    10    10     1.09502499    -0.59673668  -109.92088695    -0.00000007    -0.00000003  0.18D-08  0.47D-08   702.38
   13    11    11     1.10634566    -0.59404618  -109.89843475    -0.00000006    -0.00000001  0.43D-09  0.23D-08   702.38
   13    12    12     1.10634488    -0.59404618  -109.89843474    -0.00000006    -0.00000002  0.38D-09  0.31D-08   702.38
   13    13    13     1.10634743    -0.59404617  -109.89843474    -0.00000014    -0.00000002  0.86D-09  0.33D-08   702.38
   13    14    14     1.10634202    -0.59404617  -109.89843473    -0.00000020    -0.00000003  0.18D-08  0.41D-08   702.38
   13    15    15     1.10634163    -0.59404617  -109.89843473    -0.00000024    -0.00000003  0.22D-08  0.48D-08   702.38
   13    16    16     1.10631642    -0.59404612  -109.89843469    -0.00000020    -0.00000004  0.29D-08  0.66D-08   702.38
   13    17    17     1.10631641    -0.59404612  -109.89843468    -0.00000020    -0.00000004  0.31D-08  0.67D-08   702.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%   7.6%  64.5%

 Initialization:   0.1%
 Other:           27.5%

 Total CPU:      702.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/22/2/222           0.0000000  -0.0000000   0.0000000   0.0000000   0.9575224  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0003566   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 22//2/2222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0003191   0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.9504956   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 222//2/222           0.0000000  -0.0000000   0.9474854   0.1382739   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000004
                     -0.0000000   0.0002799  -0.0000000  -0.0002210   0.0000000   0.0000000  -0.0000000   0.0000000
 2//222/222           0.0508421  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8549240   0.0000000   0.4271897  -0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0001168  -0.0000000   0.0000000   0.0002967
 2/2/22/222           0.0000000   0.0000000   0.0618380  -0.4237285   0.0000000   0.0000000  -0.0000000   0.0000000   0.8543798
                      0.0000000  -0.0000989   0.0000000  -0.0001253  -0.0000000  -0.0000000   0.0000000   0.0000000
 22/22//222          -0.0000000  -0.0000000  -0.1236761   0.8474578   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4271910
                      0.0000000   0.0001976   0.0000000   0.0002502  -0.0000000   0.0000000   0.0000000   0.0000000
 222/2//222           0.8150653  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.2629585  -0.0000000   0.4271908  -0.0000000
                     -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0002581  -0.0000000   0.0000000  -0.0001873
 222///2222          -0.0000169   0.0000000   0.0000000   0.0000000   0.0000000  -0.0002848  -0.0000000   0.0001994  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.3114651   0.0000000  -0.0000000   0.7910487
 2/222//222           0.0000000   0.7762762   0.0000000  -0.0000000  -0.0000000   0.0000000   0.3617658   0.0000000  -0.0000000
                      0.4271915  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0002078  -0.0002418   0.0000000
 2/22//2222           0.0000000   0.0001814  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0002208   0.0000000   0.0000000
                      0.0001995   0.0000000   0.0000000  -0.0000000  -0.0000000   0.7629289  -0.3750898   0.0000000
 2//22/2222          -0.0000000  -0.0000000  -0.0003158  -0.0000461  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000001
                      0.0000000   0.7459768  -0.0000000  -0.5890339  -0.0000000   0.0000000   0.0000000   0.0000000
 2222///222           0.0000000  -0.1339041   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.5906008   0.0000000  -0.0000000
                      0.7399161  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000453   0.0002208   0.0000000
 22/2/2/222          -0.4999317  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.3417713  -0.0000000   0.7399151  -0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0002166  -0.0000000  -0.0000000  -0.0000632
 2//2/22222           0.0002714  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000875  -0.0000000  -0.0001993   0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6880631  -0.0000000   0.0000000   0.4993386
 2/2//22222           0.0000000   0.0000000   0.0000412  -0.0002826  -0.0000000   0.0000000   0.0000000   0.0000000   0.0002000
                      0.0000000   0.5268498   0.0000000   0.6672264  -0.0000000   0.0000000   0.0000000   0.0000000
 22//22/222           0.0000000  -0.5443466  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.6611851   0.0000000  -0.0000000
                      0.4271903   0.0000000   0.0000000  -0.0000000   0.0000000   0.0002861  -0.0001407   0.0000000
 22///22222           0.0000000   0.0002584   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0001210   0.0000000   0.0000000
                     -0.0001994  -0.0000000   0.0000000   0.0000000  -0.0000000   0.5539115   0.6449445   0.0000000
 2///222222           0.0000000   0.0000451  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0001957   0.0000000   0.0000000
                      0.0003451  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1206897   0.5889136   0.0000000
 2/2/2/2222          -0.0001664  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0001134   0.0000000  -0.0003452  -0.0000000
                      0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5770639   0.0000000   0.0000000   0.1684277
 22/2//2222           0.0000000  -0.0000000   0.0000203  -0.0001400   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0003995
                     -0.0000000   0.2634179  -0.0000000   0.3335982   0.0000000   0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.708159    0.000000   -0.000000    0.644483    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000266    0.000000   -0.000000   -0.000172   -0.000000   -0.000000
 2           0.901450    0.000000   -0.000000   -0.000000    0.000000   -0.322855   -0.000000   -0.000000    0.000000   -0.000000
             0.000268   -0.000000    0.000000   -0.000000    0.000000    0.000169   -0.000000
 3           0.000000    0.000000    0.000000    0.043118   -0.000000   -0.000000    0.956550   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000055    0.000000    0.000000    0.000000   -0.000312
 4           0.000000    0.000000    0.000000    0.956551    0.000000   -0.000000   -0.043118    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000312   -0.000000   -0.000000   -0.000000   -0.000055
 5          -0.000000   -0.000000    0.957522   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000317   -0.000000   -0.000000   -0.000000
 6           0.000000   -0.644484   -0.000000   -0.000000    0.708160    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000172    0.000000    0.000000   -0.000266   -0.000000   -0.000000
 7           0.322855   -0.000000    0.000000    0.000000    0.000000    0.901451   -0.000000   -0.000000    0.000000   -0.000000
             0.000169   -0.000000    0.000000    0.000000    0.000000   -0.000268   -0.000000
 8           0.000000    0.000001    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.955577
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000001    0.000000    0.000000   -0.000001    0.955576   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 10          0.000001    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955578   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000000   -0.000000    0.000000    0.000270    0.000000    0.000000    0.000233   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.566236    0.000000   -0.000000    0.000000    0.763676
 12         -0.000000    0.000000    0.000357    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000    0.950697   -0.000000    0.000000   -0.000000
 13          0.000000   -0.000000    0.000000    0.000233   -0.000000   -0.000000   -0.000270   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.763674    0.000000   -0.000000   -0.000000   -0.566237
 14          0.000000   -0.000176    0.000000   -0.000000   -0.000310   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.598564    0.000000   -0.000000   -0.738612   -0.000000   -0.000000
 15         -0.000256    0.000000   -0.000000    0.000000    0.000000    0.000248   -0.000000   -0.000000   -0.000000   -0.000000
             0.522995   -0.000000    0.000000    0.000000    0.000000    0.793916    0.000000
 16         -0.000248    0.000000   -0.000000   -0.000000    0.000000   -0.000256   -0.000000    0.000000   -0.000000    0.000000
             0.793925    0.000000    0.000000    0.000000    0.000000   -0.523002    0.000000
 17          0.000000   -0.000310   -0.000000   -0.000000    0.000176   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.738620    0.000000   -0.000000    0.598572    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957522    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000020    0.000000    0.000000   -0.000007
 2           0.000000    0.957522   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000001
            -0.000000   -0.000000    0.000000    0.000000   -0.000019   -0.000009    0.000000
 3           0.000000   -0.000000    0.957522   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000014   -0.000000   -0.000015   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.957523    0.000000   -0.000000   -0.000000    0.000000    0.000001   -0.000000
             0.000015   -0.000000    0.000015    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.957522    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000021    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957522    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000007    0.000000    0.000000    0.000020
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957522   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000009   -0.000019    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955577   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 9           0.000000    0.000000   -0.000000    0.000001    0.000000    0.000000   -0.000000   -0.000000    0.955576   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 10          0.000000    0.000001   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955578
             0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 11          0.000000   -0.000000    0.000014    0.000015   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.950697    0.000000   -0.000001    0.000000    0.000000    0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000    0.000021   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.950697    0.000000    0.000000    0.000000    0.000000   -0.000000
 13         -0.000000    0.000000   -0.000015    0.000015    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000001    0.000000    0.950696    0.000000    0.000000    0.000000   -0.000000
 14         -0.000020    0.000000   -0.000000    0.000000    0.000000   -0.000007   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000    0.950698   -0.000000    0.000000   -0.000001
 15          0.000000   -0.000019    0.000000   -0.000000   -0.000000    0.000000    0.000009    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.950698   -0.000000    0.000000
 16          0.000000   -0.000009   -0.000000   -0.000000   -0.000000    0.000000   -0.000019    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000    0.950709    0.000000
 17         -0.000007    0.000000    0.000000   -0.000000   -0.000000    0.000020    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000001    0.000000    0.000000    0.950709


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.70815881 (fixed)   0.95752222 (relaxed)   0.95752153 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676112
 Singles      0.01537321   -0.07743407   -0.07926133
 Pairs        0.07531930   -0.00000000   -0.04050430
 Total        1.09069396   -0.07743407   -0.58652675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55675683
 One electron energy                 -193.36946823
 Two electron energy                   83.40455664
 Virial quotient                       -2.64613796
 Correlation energy                    -0.58652676
 !MRCI STATE 1.1 Energy              -109.964911585883

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810602 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810509 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810602 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360912 (Pople, fixed reference)
 Cluster corrected energies          -110.01360822 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360912 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.90145013 (fixed)   0.95752236 (relaxed)   0.95752167 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676119
 Singles      0.01537325   -0.07743414   -0.07926138
 Pairs        0.07531894   -0.00000000   -0.04050418
 Total        1.09069364   -0.07743414   -0.58652675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55675157
 One electron energy                 -193.36946237
 Two electron energy                   83.40455079
 Virial quotient                       -2.64613829
 Correlation energy                    -0.58652676
 !MRCI STATE 2.1 Energy              -109.964911585728

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810583 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810490 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810583 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360894 (Pople, fixed reference)
 Cluster corrected energies          -110.01360804 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360894 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95655033 (fixed)   0.95752238 (relaxed)   0.95752168 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46686957
 Singles      0.01537018   -0.07742895   -0.07926006
 Pairs        0.07532197    0.00011301   -0.04039711
 Total        1.09069360   -0.07731595   -0.58652674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55694501
 One electron energy                 -193.36974058
 Two electron energy                   83.40482900
 Virial quotient                       -2.64612597
 Correlation energy                    -0.58652675
 !MRCI STATE 3.1 Energy              -109.964911577087

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810580 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810487 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810580 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360891 (Pople, fixed reference)
 Cluster corrected energies          -110.01360801 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360891 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95655137 (fixed)   0.95752342 (relaxed)   0.95752273 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46678249
 Singles      0.01537247   -0.07743210   -0.07926103
 Pairs        0.07531729    0.00002007   -0.04048322
 Total        1.09069121   -0.07741203   -0.58652674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55674263
 One electron energy                 -193.36946809
 Two electron energy                   83.40455652
 Virial quotient                       -2.64613886
 Correlation energy                    -0.58652675
 !MRCI STATE 4.1 Energy              -109.964911570660

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810439 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810347 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810439 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360754 (Pople, fixed reference)
 Cluster corrected energies          -110.01360663 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360754 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95752202 (fixed)   0.95752277 (relaxed)   0.95752207 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676630
 Singles      0.01537017   -0.07742898   -0.07926015
 Pairs        0.07532109   -0.00000000   -0.04050028
 Total        1.09069271   -0.07742898   -0.58652673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55694404
 One electron energy                 -193.36974159
 Two electron energy                   83.40483003
 Virial quotient                       -2.64612603
 Correlation energy                    -0.58652674
 !MRCI STATE 5.1 Energy              -109.964911564656

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810526 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810434 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810526 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360839 (Pople, fixed reference)
 Cluster corrected energies          -110.01360748 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360839 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.70815955 (fixed)   0.95752318 (relaxed)   0.95752249 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676851
 Singles      0.01536992   -0.07742702   -0.07925976
 Pairs        0.07532040    0.00000000   -0.04049847
 Total        1.09069176   -0.07742702   -0.58652673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55682935
 One electron energy                 -193.36962132
 Two electron energy                   83.40470976
 Virial quotient                       -2.64613334
 Correlation energy                    -0.58652674
 !MRCI STATE 6.1 Energy              -109.964911564178

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810471 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810378 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810471 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360784 (Pople, fixed reference)
 Cluster corrected energies          -110.01360694 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360784 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.90145063 (fixed)   0.95752298 (relaxed)   0.95752228 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676770
 Singles      0.01536991   -0.07742768   -0.07925988
 Pairs        0.07532087    0.00000000   -0.04049916
 Total        1.09069223   -0.07742768   -0.58652673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55688375
 One electron energy                 -193.36967812
 Two electron energy                   83.40476656
 Virial quotient                       -2.64612987
 Correlation energy                    -0.58652674
 !MRCI STATE 7.1 Energy              -109.964911564150

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810498 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810406 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810498 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360811 (Pople, fixed reference)
 Cluster corrected energies          -110.01360721 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360811 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95557660 (fixed)   0.95562471 (relaxed)   0.95557660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010070    0.00000000   -0.46873251
 Singles      0.01898049   -0.08346984   -0.08655902
 Pairs        0.07605717    0.00000000   -0.04144517
 Total        1.09513835   -0.08346984   -0.59673670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32415027
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53590649
 One electron energy                 -193.31408091
 Two electron energy                   83.39319395
 Virial quotient                       -2.64640636
 Correlation energy                    -0.59673670
 !MRCI STATE 8.1 Energy              -109.920886964460

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97765951 (Davidson, fixed reference)
 Cluster corrected energies          -109.97759371 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97765951 (Davidson, rotated reference)

 Cluster corrected energies          -109.97303070 (Pople, fixed reference)
 Cluster corrected energies          -109.97296603 (Pople, relaxed reference)
 Cluster corrected energies          -109.97303070 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95557640 (fixed)   0.95562452 (relaxed)   0.95557640 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010070    0.00000000   -0.46873137
 Singles      0.01898100   -0.08347062   -0.08655925
 Pairs        0.07605709   -0.00000025   -0.04144607
 Total        1.09513880   -0.08347088   -0.59673670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32415027
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53588744
 One electron energy                 -193.31405015
 Two electron energy                   83.39316318
 Virial quotient                       -2.64640757
 Correlation energy                    -0.59673669
 !MRCI STATE 9.1 Energy              -109.920886963383

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97765977 (Davidson, fixed reference)
 Cluster corrected energies          -109.97759397 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97765977 (Davidson, rotated reference)

 Cluster corrected energies          -109.97303096 (Pople, fixed reference)
 Cluster corrected energies          -109.97296628 (Pople, relaxed reference)
 Cluster corrected energies          -109.97303096 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95557795 (fixed)   0.95562606 (relaxed)   0.95557795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010069    0.00000000   -0.46873459
 Singles      0.01897999   -0.08346899   -0.08655894
 Pairs        0.07605457   -0.00000000   -0.04144314
 Total        1.09513525   -0.08346899   -0.59673668
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32415027
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53590294
 One electron energy                 -193.31409023
 Two electron energy                   83.39320328
 Virial quotient                       -2.64640658
 Correlation energy                    -0.59673668
 !MRCI STATE 10.1 Energy             -109.920886946744

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97765764 (Davidson, fixed reference)
 Cluster corrected energies          -109.97759184 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97765764 (Davidson, rotated reference)

 Cluster corrected energies          -109.97302886 (Pople, fixed reference)
 Cluster corrected energies          -109.97296419 (Pople, relaxed reference)
 Cluster corrected energies          -109.97302886 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.76367587 (fixed)   0.95072427 (relaxed)   0.95069654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.08306218
 Singles      0.03231151   -0.12704783   -0.13217952
 Pairs        0.07404036   -0.37513217   -0.37880449
 Total        1.10641020   -0.50217999   -0.59404618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36578828
 One electron energy                 -190.60371055
 Two electron energy                   80.70527581
 Virial quotient                       -2.72256382
 Correlation energy                    -0.59404617
 !MRCI STATE 11.1 Energy             -109.898434748180

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164732 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160898 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164732 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697904 (Pople, fixed reference)
 Cluster corrected energies          -109.95694074 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697904 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95069681 (fixed)   0.95072461 (relaxed)   0.95069688 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.42211713
 Singles      0.03231044   -0.12704646   -0.13217907
 Pairs        0.07404065   -0.00000000   -0.03974998
 Total        1.10640942   -0.12704646   -0.59404618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36579274
 One electron energy                 -190.60369019
 Two electron energy                   80.70525544
 Virial quotient                       -2.72256352
 Correlation energy                    -0.59404617
 !MRCI STATE 12.1 Energy             -109.898434742973

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164685 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160851 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164685 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697857 (Pople, fixed reference)
 Cluster corrected energies          -109.95694027 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697857 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.76367410 (fixed)   0.95072351 (relaxed)   0.95069578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.67350879
 Singles      0.03231197   -0.12704982   -0.13217964
 Pairs        0.07404166    0.27814718    0.21164226
 Total        1.10641196    0.15109736   -0.59404617
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36574303
 One electron energy                 -190.60367086
 Two electron energy                   80.70523612
 Virial quotient                       -2.72256687
 Correlation energy                    -0.59404617
 !MRCI STATE 13.1 Energy             -109.898434739306

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164836 (Davidson, fixed reference)
 Cluster corrected energies          -109.96161002 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164836 (Davidson, rotated reference)

 Cluster corrected energies          -109.95698008 (Pople, fixed reference)
 Cluster corrected energies          -109.95694178 (Pople, relaxed reference)
 Cluster corrected energies          -109.95698008 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.73861192 (fixed)   0.95072583 (relaxed)   0.95069811 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005832   -0.00000000   -0.42211851
 Singles      0.03230903   -0.12704613   -0.13217905
 Pairs        0.07403920    0.00000000   -0.03974860
 Total        1.10640655   -0.12704613   -0.59404617
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36566245
 One electron energy                 -190.60355955
 Two electron energy                   80.70512482
 Virial quotient                       -2.72257231
 Correlation energy                    -0.59404616
 !MRCI STATE 14.1 Energy             -109.898434733912

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164514 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160680 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164514 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697686 (Pople, fixed reference)
 Cluster corrected energies          -109.95693856 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697686 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.79391637 (fixed)   0.95072601 (relaxed)   0.95069828 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.42211802
 Singles      0.03230889   -0.12704684   -0.13217915
 Pairs        0.07403894    0.00000000   -0.03974900
 Total        1.10640615   -0.12704684   -0.59404617
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36563107
 One electron energy                 -190.60352441
 Two electron energy                   80.70508968
 Virial quotient                       -2.72257442
 Correlation energy                    -0.59404616
 !MRCI STATE 15.1 Energy             -109.898434733143

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164490 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160657 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164490 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697662 (Pople, fixed reference)
 Cluster corrected energies          -109.95693833 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697662 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.79392510 (fixed)   0.95073684 (relaxed)   0.95070911 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005832   -0.00000000   -0.42213113
 Singles      0.03230898   -0.12704293   -0.13218212
 Pairs        0.07401364    0.00000000   -0.03973287
 Total        1.10638094   -0.12704293   -0.59404612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36573372
 One electron energy                 -190.60362324
 Two electron energy                   80.70518855
 Virial quotient                       -2.72256750
 Correlation energy                    -0.59404611
 !MRCI STATE 16.1 Energy             -109.898434688290

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96162987 (Davidson, fixed reference)
 Cluster corrected energies          -109.96159155 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96162987 (Davidson, rotated reference)

 Cluster corrected energies          -109.95696161 (Pople, fixed reference)
 Cluster corrected energies          -109.95692332 (Pople, relaxed reference)
 Cluster corrected energies          -109.95696161 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.73861976 (fixed)   0.95073684 (relaxed)   0.95070912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005832   -0.00000000   -0.42213124
 Singles      0.03230854   -0.12704281   -0.13218192
 Pairs        0.07401407   -0.00000000   -0.03973296
 Total        1.10638093   -0.12704281   -0.59404612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36571646
 One electron energy                 -190.60359965
 Two electron energy                   80.70516497
 Virial quotient                       -2.72256866
 Correlation energy                    -0.59404611
 !MRCI STATE 17.1 Energy             -109.898434683518

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96162986 (Davidson, fixed reference)
 Cluster corrected energies          -109.96159153 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96162986 (Davidson, rotated reference)

 Cluster corrected energies          -109.95696160 (Pople, fixed reference)
 Cluster corrected energies          -109.95692331 (Pople, relaxed reference)
 Cluster corrected energies          -109.95696160 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      400.96       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       756.61    751.23      3.92      1.12
 REAL TIME  *       864.63 SEC
 DISK USED  *       433.07 MB (local),        8.54 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01810602  AU                              
 SETTING HLSDIAG(2)     =      -110.01810583  AU                              
 SETTING HLSDIAG(3)     =      -110.01810580  AU                              
 SETTING HLSDIAG(4)     =      -110.01810439  AU                              
 SETTING HLSDIAG(5)     =      -110.01810526  AU                              
 SETTING HLSDIAG(6)     =      -110.01810471  AU                              
 SETTING HLSDIAG(7)     =      -110.01810498  AU                              
 SETTING HLSDIAG(8)     =      -109.97765951  AU                              
 SETTING HLSDIAG(9)     =      -109.97765977  AU                              
 SETTING HLSDIAG(10)    =      -109.97765764  AU                              
 SETTING HLSDIAG(11)    =      -109.96164732  AU                              
 SETTING HLSDIAG(12)    =      -109.96164685  AU                              
 SETTING HLSDIAG(13)    =      -109.96164836  AU                              
 SETTING HLSDIAG(14)    =      -109.96164514  AU                              
 SETTING HLSDIAG(15)    =      -109.96164490  AU                              
 SETTING HLSDIAG(16)    =      -109.96162987  AU                              
 SETTING HLSDIAG(17)    =      -109.96162986  AU                              


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
     1      -109.34837534
     2      -109.34837534
     3      -109.34837534
     4      -109.34837534
     5      -109.34837534
     6      -109.34837534
     7      -109.34837534
     8      -109.32974875
     9      -109.32974875
    10      -109.32974875
    11      -109.32974875
    12      -109.32974875

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.89D-05
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
    1     1     1     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70012081  0.37D-01  0.10D+00     0.59
    1     2     2     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70114872  0.38D-01  0.11D+00     0.59
    1     3     3     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70103871  0.38D-01  0.11D+00     0.59
    1     4     4     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70093052  0.37D-01  0.11D+00     0.59
    1     5     5     1.00000000     0.00000000  -109.34837534     0.00000000    -0.69959473  0.37D-01  0.10D+00     0.59
    1     6     6     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70083166  0.37D-01  0.11D+00     0.59
    1     7     7     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70025469  0.38D-01  0.10D+00     0.59
    1     8     8     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70404933  0.37D-01  0.11D+00     0.59
    1     9     9     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70448847  0.37D-01  0.11D+00     0.59
    1    10    10     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70443514  0.37D-01  0.11D+00     0.59
    1    11    11     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70455365  0.37D-01  0.11D+00     0.59
    1    12    12     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70501842  0.37D-01  0.11D+00     0.59
    2     1     1     1.09410945    -0.56971374  -109.91808908    -0.56971374    -0.01916117  0.28D-02  0.23D-02    42.42
    2     2     2     1.09413297    -0.56962598  -109.91800132    -0.56962598    -0.01920920  0.28D-02  0.23D-02    42.42
    2     3     3     1.09413444    -0.56962370  -109.91799904    -0.56962370    -0.01924076  0.28D-02  0.23D-02    42.42
    2     4     4     1.09395713    -0.56945892  -109.91783426    -0.56945892    -0.01927976  0.28D-02  0.24D-02    42.42
    2     5     5     1.09405229    -0.56938506  -109.91776040    -0.56938506    -0.01938404  0.28D-02  0.24D-02    42.42
    2     6     6     1.09441127    -0.56928436  -109.91765970    -0.56928436    -0.01962847  0.31D-02  0.24D-02    42.42
    2     7     7     1.09436128    -0.56912681  -109.91750215    -0.56912681    -0.01970295  0.31D-02  0.24D-02    42.42
    2     8     8     1.09542657    -0.57234896  -109.90209771    -0.57234896    -0.01826900  0.29D-02  0.21D-02    42.42
    2     9     9     1.09550990    -0.57213067  -109.90187942    -0.57213067    -0.01848889  0.30D-02  0.21D-02    42.42
    2    10    10     1.09547713    -0.57181917  -109.90156791    -0.57181917    -0.01870917  0.30D-02  0.21D-02    42.42
    2    11    11     1.09549310    -0.57180691  -109.90155566    -0.57180691    -0.01873665  0.31D-02  0.21D-02    42.42
    2    12    12     1.09559096    -0.57179923  -109.90154798    -0.57179923    -0.01878435  0.31D-02  0.21D-02    42.42
    3     1     1     1.08909355    -0.58873129  -109.93710663    -0.01901755    -0.00097908  0.69D-04  0.20D-03    83.90
    3     2     2     1.08908024    -0.58870721  -109.93708255    -0.01908124    -0.00100023  0.67D-04  0.20D-03    83.90
    3     3     3     1.08907152    -0.58870352  -109.93707887    -0.01907982    -0.00099275  0.69D-04  0.20D-03    83.90
    3     4     4     1.08908544    -0.58869280  -109.93706814    -0.01923388    -0.00101882  0.69D-04  0.21D-03    83.90
    3     5     5     1.08896066    -0.58866691  -109.93704225    -0.01928186    -0.00101128  0.69D-04  0.20D-03    83.90
    3     6     6     1.08898691    -0.58866295  -109.93703829    -0.01937859    -0.00102468  0.68D-04  0.21D-03    83.90
    3     7     7     1.08902371    -0.58866023  -109.93703557    -0.01953342    -0.00103489  0.70D-04  0.21D-03    83.90
    3     8     8     1.09002536    -0.59002418  -109.91977292    -0.01767521    -0.00086616  0.86D-04  0.16D-03    83.90
    3     9     9     1.09001429    -0.58999530  -109.91974405    -0.01786463    -0.00087711  0.89D-04  0.16D-03    83.90
    3    10    10     1.08995894    -0.58994933  -109.91969808    -0.01813017    -0.00090086  0.92D-04  0.16D-03    83.90
    3    11    11     1.08992905    -0.58994409  -109.91969284    -0.01813718    -0.00090430  0.92D-04  0.16D-03    83.90
    3    12    12     1.08992135    -0.58994102  -109.91968976    -0.01814179    -0.00090274  0.92D-04  0.16D-03    83.90
    4     1     1     1.09119787    -0.59000612  -109.93838146    -0.00127482    -0.00019616  0.11D-04  0.41D-04   125.41
    4     2     2     1.09117585    -0.58999943  -109.93837477    -0.00129222    -0.00019997  0.12D-04  0.41D-04   125.41
    4     3     3     1.09117390    -0.58999641  -109.93837175    -0.00129289    -0.00020401  0.11D-04  0.43D-04   125.41
    4     4     4     1.09116398    -0.58999637  -109.93837171    -0.00130357    -0.00020332  0.11D-04  0.43D-04   125.41
    4     5     5     1.09115092    -0.58999570  -109.93837104    -0.00132878    -0.00020280  0.11D-04  0.43D-04   125.41
    4     6     6     1.09114353    -0.58999060  -109.93836594    -0.00132765    -0.00021097  0.10D-04  0.46D-04   125.41
    4     7     7     1.09115011    -0.58998986  -109.93836520    -0.00132963    -0.00021116  0.10D-04  0.45D-04   125.41
    4     8     8     1.09157511    -0.59107142  -109.92082016    -0.00104724    -0.00020270  0.71D-05  0.42D-04   125.41
    4     9     9     1.09155643    -0.59106474  -109.92081349    -0.00106944    -0.00020359  0.80D-05  0.41D-04   125.41
    4    10    10     1.09152255    -0.59105534  -109.92080409    -0.00110601    -0.00021001  0.86D-05  0.43D-04   125.41
    4    11    11     1.09152215    -0.59105479  -109.92080353    -0.00111069    -0.00020857  0.86D-05  0.42D-04   125.41
    4    12    12     1.09152380    -0.59105446  -109.92080321    -0.00111345    -0.00021006  0.87D-05  0.42D-04   125.41
    5     1     1     1.09244576    -0.59023205  -109.93860739    -0.00022593    -0.00004394  0.99D-06  0.11D-04   167.02
    5     2     2     1.09244423    -0.59023171  -109.93860705    -0.00023228    -0.00004348  0.10D-05  0.11D-04   167.02
    5     3     3     1.09243552    -0.59023035  -109.93860569    -0.00023394    -0.00004447  0.10D-05  0.11D-04   167.02
    5     4     4     1.09243063    -0.59022972  -109.93860506    -0.00023334    -0.00004537  0.11D-05  0.11D-04   167.02
    5     5     5     1.09242789    -0.59022804  -109.93860338    -0.00023234    -0.00004746  0.11D-05  0.12D-04   167.02
    5     6     6     1.09240368    -0.59022600  -109.93860134    -0.00023540    -0.00004876  0.12D-05  0.12D-04   167.02
    5     7     7     1.09239363    -0.59022518  -109.93860052    -0.00023533    -0.00005021  0.13D-05  0.13D-04   167.02
    5     8     8     1.09296065    -0.59132323  -109.92107198    -0.00025182    -0.00005681  0.20D-05  0.13D-04   167.02
    5     9     9     1.09295007    -0.59132172  -109.92107046    -0.00025698    -0.00005949  0.20D-05  0.14D-04   167.02
    5    10    10     1.09296301    -0.59132047  -109.92106922    -0.00026513    -0.00005832  0.20D-05  0.13D-04   167.02
    5    11    11     1.09295023    -0.59131914  -109.92106789    -0.00026436    -0.00006006  0.20D-05  0.14D-04   167.02
    5    12    12     1.09295446    -0.59131908  -109.92106783    -0.00026462    -0.00005988  0.20D-05  0.14D-04   167.02
    6     1     1     1.09253708    -0.59027734  -109.93865268    -0.00004529    -0.00001239  0.11D-05  0.28D-05   208.67
    6     2     2     1.09254463    -0.59027670  -109.93865204    -0.00004500    -0.00001282  0.11D-05  0.30D-05   208.67
    6     3     3     1.09253873    -0.59027593  -109.93865127    -0.00004558    -0.00001367  0.11D-05  0.33D-05   208.67
    6     4     4     1.09254049    -0.59027525  -109.93865059    -0.00004553    -0.00001435  0.11D-05  0.36D-05   208.67
    6     5     5     1.09253704    -0.59027514  -109.93865048    -0.00004710    -0.00001387  0.12D-05  0.33D-05   208.67
    6     6     6     1.09252927    -0.59027489  -109.93865023    -0.00004890    -0.00001396  0.12D-05  0.33D-05   208.67
    6     7     7     1.09252871    -0.59027446  -109.93864980    -0.00004927    -0.00001412  0.12D-05  0.34D-05   208.67
    6     8     8     1.09306177    -0.59137948  -109.92112822    -0.00005624    -0.00001715  0.20D-05  0.36D-05   208.67
    6     9     9     1.09305559    -0.59137826  -109.92112701    -0.00005654    -0.00001786  0.21D-05  0.37D-05   208.67
    6    10    10     1.09306019    -0.59137784  -109.92112658    -0.00005737    -0.00001863  0.20D-05  0.42D-05   208.67
    6    11    11     1.09305101    -0.59137739  -109.92112613    -0.00005824    -0.00001845  0.21D-05  0.39D-05   208.67
    6    12    12     1.09305147    -0.59137732  -109.92112607    -0.00005824    -0.00001858  0.21D-05  0.40D-05   208.67
    7     1     1     1.09257692    -0.59029065  -109.93866599    -0.00001331    -0.00000348  0.15D-06  0.82D-06   250.25
    7     2     2     1.09257821    -0.59029022  -109.93866556    -0.00001351    -0.00000384  0.13D-06  0.96D-06   250.25
    7     3     3     1.09257308    -0.59028978  -109.93866512    -0.00001385    -0.00000415  0.11D-06  0.11D-05   250.25
    7     4     4     1.09256720    -0.59028951  -109.93866485    -0.00001426    -0.00000445  0.11D-06  0.12D-05   250.25
    7     5     5     1.09256643    -0.59028946  -109.93866480    -0.00001433    -0.00000447  0.96D-07  0.12D-05   250.25
    7     6     6     1.09257057    -0.59028930  -109.93866464    -0.00001441    -0.00000455  0.86D-07  0.12D-05   250.25
    7     7     7     1.09256644    -0.59028919  -109.93866453    -0.00001474    -0.00000474  0.83D-07  0.13D-05   250.25
    7     8     8     1.09307111    -0.59139704  -109.92114579    -0.00001756    -0.00000533  0.10D-06  0.13D-05   250.25
    7     9     9     1.09306070    -0.59139685  -109.92114560    -0.00001859    -0.00000527  0.13D-06  0.12D-05   250.25
    7    10    10     1.09305554    -0.59139643  -109.92114518    -0.00001860    -0.00000564  0.12D-06  0.13D-05   250.25
    7    11    11     1.09305610    -0.59139631  -109.92114506    -0.00001892    -0.00000578  0.12D-06  0.14D-05   250.25
    7    12    12     1.09306486    -0.59139616  -109.92114491    -0.00001884    -0.00000598  0.11D-06  0.15D-05   250.25
    8     1     1     1.09266667    -0.59029419  -109.93866953    -0.00000355    -0.00000117  0.30D-07  0.32D-06   291.83
    8     2     2     1.09266195    -0.59029398  -109.93866932    -0.00000376    -0.00000132  0.39D-07  0.36D-06   291.83
    8     3     3     1.09265771    -0.59029379  -109.93866913    -0.00000401    -0.00000144  0.46D-07  0.40D-06   291.83
    8     4     4     1.09264874    -0.59029365  -109.93866899    -0.00000414    -0.00000152  0.52D-07  0.41D-06   291.83
    8     5     5     1.09264889    -0.59029362  -109.93866896    -0.00000415    -0.00000157  0.51D-07  0.44D-06   291.83
    8     6     6     1.09265162    -0.59029358  -109.93866892    -0.00000428    -0.00000157  0.57D-07  0.42D-06   291.83
    8     7     7     1.09264522    -0.59029351  -109.93866885    -0.00000432    -0.00000162  0.62D-07  0.45D-06   291.83
    8     8     8     1.09314856    -0.59140220  -109.92115095    -0.00000517    -0.00000203  0.66D-07  0.50D-06   291.83
    8     9     9     1.09314789    -0.59140218  -109.92115093    -0.00000533    -0.00000204  0.67D-07  0.52D-06   291.83
    8    10    10     1.09314126    -0.59140194  -109.92115069    -0.00000551    -0.00000223  0.66D-07  0.56D-06   291.83
    8    11    11     1.09313973    -0.59140187  -109.92115062    -0.00000556    -0.00000226  0.69D-07  0.58D-06   291.83
    8    12    12     1.09313935    -0.59140179  -109.92115054    -0.00000563    -0.00000227  0.71D-07  0.58D-06   291.83
    9     1     1     1.09270707    -0.59029531  -109.93867066    -0.00000112    -0.00000038  0.21D-07  0.94D-07   333.32
    9     2     2     1.09270573    -0.59029523  -109.93867058    -0.00000126    -0.00000043  0.22D-07  0.11D-06   333.32
    9     3     3     1.09270278    -0.59029515  -109.93867049    -0.00000136    -0.00000049  0.20D-07  0.13D-06   333.32
    9     4     4     1.09269920    -0.59029511  -109.93867045    -0.00000146    -0.00000053  0.20D-07  0.14D-06   333.32
    9     5     5     1.09269940    -0.59029509  -109.93867043    -0.00000147    -0.00000053  0.23D-07  0.14D-06   333.32
    9     6     6     1.09269921    -0.59029506  -109.93867040    -0.00000147    -0.00000057  0.17D-07  0.16D-06   333.32
    9     7     7     1.09269761    -0.59029505  -109.93867039    -0.00000154    -0.00000056  0.20D-07  0.15D-06   333.32
    9     8     8     1.09320293    -0.59140413  -109.92115288    -0.00000192    -0.00000070  0.48D-07  0.16D-06   333.32
    9     9     9     1.09320238    -0.59140412  -109.92115287    -0.00000193    -0.00000071  0.48D-07  0.16D-06   333.32
    9    10    10     1.09319882    -0.59140402  -109.92115277    -0.00000208    -0.00000077  0.51D-07  0.18D-06   333.32
    9    11    11     1.09319821    -0.59140400  -109.92115274    -0.00000212    -0.00000079  0.50D-07  0.19D-06   333.32
    9    12    12     1.09319703    -0.59140395  -109.92115269    -0.00000215    -0.00000086  0.44D-07  0.22D-06   333.32
   10     1     1     1.09271723    -0.59029570  -109.93867104    -0.00000039    -0.00000014  0.17D-08  0.39D-07   375.11
   10     2     2     1.09271661    -0.59029566  -109.93867100    -0.00000043    -0.00000017  0.12D-08  0.50D-07   375.11
   10     3     3     1.09271455    -0.59029562  -109.93867096    -0.00000048    -0.00000020  0.13D-08  0.61D-07   375.11
   10     4     4     1.09271289    -0.59029560  -109.93867094    -0.00000049    -0.00000022  0.12D-08  0.70D-07   375.11
   10     5     5     1.09271280    -0.59029559  -109.93867093    -0.00000051    -0.00000022  0.11D-08  0.70D-07   375.11
   10     6     6     1.09271281    -0.59029558  -109.93867092    -0.00000052    -0.00000024  0.19D-08  0.74D-07   375.11
   10     7     7     1.09271244    -0.59029557  -109.93867091    -0.00000052    -0.00000024  0.15D-08  0.76D-07   375.11
   10     8     8     1.09322199    -0.59140481  -109.92115356    -0.00000068    -0.00000028  0.38D-08  0.79D-07   375.11
   10     9     9     1.09322296    -0.59140479  -109.92115354    -0.00000068    -0.00000029  0.47D-08  0.83D-07   375.11
   10    10    10     1.09321936    -0.59140476  -109.92115350    -0.00000074    -0.00000032  0.39D-08  0.92D-07   375.11
   10    11    11     1.09321891    -0.59140474  -109.92115349    -0.00000074    -0.00000033  0.45D-08  0.98D-07   375.11
   10    12    12     1.09321887    -0.59140469  -109.92115344    -0.00000075    -0.00000036  0.82D-08  0.11D-06   375.11
   11     1     1     1.09272710    -0.59029583  -109.93867117    -0.00000013    -0.00000005  0.11D-08  0.15D-07   416.76
   11     2     2     1.09272585    -0.59029581  -109.93867115    -0.00000015    -0.00000006  0.15D-08  0.19D-07   416.76
   11     3     3     1.09272382    -0.59029579  -109.93867114    -0.00000017    -0.00000008  0.15D-08  0.24D-07   416.76
   11     4     4     1.09272239    -0.59029578  -109.93867112    -0.00000019    -0.00000009  0.18D-08  0.26D-07   416.76
   11     5     5     1.09272233    -0.59029578  -109.93867112    -0.00000019    -0.00000009  0.19D-08  0.28D-07   416.76
   11     6     6     1.09272196    -0.59029577  -109.93867111    -0.00000020    -0.00000009  0.20D-08  0.29D-07   416.76
   11     7     7     1.09272189    -0.59029577  -109.93867111    -0.00000020    -0.00000010  0.14D-08  0.30D-07   416.76
   11     8     8     1.09323480    -0.59140505  -109.92115380    -0.00000025    -0.00000011  0.21D-08  0.31D-07   416.76
   11     9     9     1.09323520    -0.59140505  -109.92115380    -0.00000025    -0.00000012  0.19D-08  0.34D-07   416.76
   11    10    10     1.09323261    -0.59140503  -109.92115378    -0.00000027    -0.00000013  0.22D-08  0.37D-07   416.76
   11    11    11     1.09323215    -0.59140502  -109.92115377    -0.00000028    -0.00000014  0.23D-08  0.39D-07   416.76
   11    12    12     1.09323219    -0.59140500  -109.92115375    -0.00000031    -0.00000015  0.19D-08  0.44D-07   416.76
   12     1     1     1.09273520    -0.59029588  -109.93867122    -0.00000005    -0.00000002  0.44D-09  0.58D-08   458.28
   12     2     2     1.09273418    -0.59029587  -109.93867121    -0.00000006    -0.00000002  0.35D-09  0.72D-08   458.28
   12     3     3     1.09273256    -0.59029586  -109.93867120    -0.00000007    -0.00000003  0.25D-09  0.95D-08   458.28
   12     4     4     1.09273146    -0.59029586  -109.93867120    -0.00000007    -0.00000004  0.17D-09  0.11D-07   458.28
   12     5     5     1.09273135    -0.59029586  -109.93867120    -0.00000008    -0.00000004  0.20D-09  0.11D-07   458.28
   12     6     6     1.09273091    -0.59029585  -109.93867119    -0.00000008    -0.00000004  0.15D-09  0.12D-07   458.28
   12     7     7     1.09273073    -0.59029585  -109.93867119    -0.00000008    -0.00000004  0.17D-09  0.12D-07   458.28
   12     8     8     1.09324607    -0.59140516  -109.92115390    -0.00000010    -0.00000005  0.15D-08  0.13D-07   458.28
   12     9     9     1.09324548    -0.59140515  -109.92115390    -0.00000010    -0.00000005  0.13D-08  0.15D-07   458.28
   12    10    10     1.09324399    -0.59140514  -109.92115389    -0.00000011    -0.00000006  0.14D-08  0.16D-07   458.28
   12    11    11     1.09324355    -0.59140514  -109.92115389    -0.00000012    -0.00000006  0.13D-08  0.17D-07   458.28
   12    12    12     1.09324292    -0.59140513  -109.92115388    -0.00000013    -0.00000007  0.12D-08  0.20D-07   458.28
   13     1     1     1.09273655    -0.59029589  -109.93867123    -0.00000001    -0.00000002  0.20D-09  0.48D-08   491.31
   13     2     2     1.09273644    -0.59029589  -109.93867123    -0.00000001    -0.00000002  0.21D-09  0.49D-08   491.31
   13     3     3     1.09273608    -0.59029589  -109.93867123    -0.00000002    -0.00000002  0.19D-09  0.55D-08   491.31
   13     4     4     1.09273616    -0.59029589  -109.93867123    -0.00000003    -0.00000002  0.23D-09  0.54D-08   491.31
   13     5     5     1.09273520    -0.59029588  -109.93867122    -0.00000002    -0.00000002  0.45D-09  0.58D-08   491.31
   13     6     6     1.09273422    -0.59029587  -109.93867121    -0.00000002    -0.00000002  0.36D-09  0.72D-08   491.31
   13     7     7     1.09273262    -0.59029586  -109.93867120    -0.00000001    -0.00000003  0.27D-09  0.94D-08   491.31
   13     8     8     1.09326074    -0.59140522  -109.92115396    -0.00000006    -0.00000002  0.10D-08  0.38D-08   491.31
   13     9     9     1.09326063    -0.59140522  -109.92115396    -0.00000006    -0.00000002  0.12D-08  0.34D-08   491.31
   13    10    10     1.09326061    -0.59140522  -109.92115396    -0.00000007    -0.00000002  0.12D-08  0.36D-08   491.31
   13    11    11     1.09325254    -0.59140520  -109.92115395    -0.00000006    -0.00000002  0.41D-09  0.55D-08   491.31
   13    12    12     1.09325218    -0.59140520  -109.92115394    -0.00000007    -0.00000002  0.61D-09  0.60D-08   491.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.2%   7.0%  70.5%

 Initialization:   0.1%
 Other:           21.8%

 Total CPU:      491.3 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/22/2\222           0.0004853   0.0036046   0.9523952  -0.0384195   0.0004512   0.0000129  -0.0003252   0.0000001  -0.0000000
                      0.0000000  -0.0000000  -0.0000001
 222//2\222           0.0001004  -0.0005820  -0.0096062  -0.2459842  -0.0002634   0.0002949   0.9208409  -0.0000000  -0.0000000
                     -0.0000000   0.0000004  -0.0000000
 2/222/\222           0.0329916  -0.0001296  -0.0000278   0.0000086   0.0003993   0.8519103  -0.0002744  -0.0000000   0.0000000
                     -0.0000000   0.0000000   0.0000000
 22/22/\222          -0.0003436   0.0009816   0.0332695   0.8229528  -0.0000627   0.0000772   0.2201843  -0.0000000  -0.0000000
                     -0.0000000   0.0000002  -0.0000000
 22//22\222           0.8165865  -0.0062475  -0.0003744   0.0003653  -0.0001173  -0.2449191   0.0000791  -0.0000000  -0.0000000
                      0.0000002   0.0000000   0.0000000
 222/2/\222           0.0061238   0.8049534  -0.0032186  -0.0008909   0.2807830  -0.0002463   0.0003169   0.0000000   0.0000001
                      0.0000000   0.0000000   0.0000000
 2//222\222          -0.0035967  -0.4730960   0.0014783   0.0005399   0.7092254  -0.0002650   0.0000640  -0.0000000  -0.0000001
                     -0.0000000   0.0000000  -0.0000000
 222/\2/222           0.0000000  -0.0000000  -0.0000000  -0.0000013  -0.0000000   0.0000000   0.0000011   0.0001255  -0.0003017
                     -0.0000406   0.6936947   0.0000001
 22/22\/222           0.0000000   0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000  -0.0000025  -0.0001087   0.0002612
                      0.0000352  -0.6007607  -0.0000001
 2/222\/222          -0.0000015   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000011  -0.0000000  -0.0024985  -0.0075952
                      0.6006852   0.0000323  -0.0000366
 22/\22/222           0.0000021  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000013  -0.0000000   0.0024985   0.0075952
                     -0.6006848  -0.0000323   0.0000366
 222/2\/222           0.0000000   0.0000023  -0.0000000  -0.0000000  -0.0000019  -0.0000000   0.0000000   0.0060972   0.6006585
                      0.0076202   0.0002605  -0.0000431
 2/\222/222          -0.0000000  -0.0000031   0.0000000   0.0000000  -0.0000037   0.0000000  -0.0000000   0.0060972   0.6006581
                      0.0076202   0.0002605  -0.0000431
 22/2/2\222          -0.0014590  -0.1915955   0.0010048   0.0002026  -0.5715827   0.0002952  -0.0002199  -0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0000000
 2/22\2/222          -0.0000000  -0.0000000  -0.0000002   0.0000000  -0.0000000   0.0000000   0.0000000   0.4753779  -0.0048139
                      0.0019472  -0.0000880   0.5051602
 2222//\222          -0.4905006   0.0036818   0.0002322  -0.0002158  -0.0001628  -0.3504440   0.0001127  -0.0000000  -0.0000000
                      0.0000002  -0.0000000  -0.0000000
 220222/222          -0.0000000  -0.0000000  -0.0000002   0.0000000  -0.0000000   0.0000000  -0.0000000   0.1125248  -0.0011141
                      0.0004830  -0.0000209   0.4774408
 222220/222          -0.0000000  -0.0000000  -0.0000002   0.0000000   0.0000000  -0.0000000   0.0000000  -0.4696944   0.0047817
                     -0.0019018   0.0000869  -0.1412613
 2/2/22\222           0.0001718  -0.0004908  -0.0166345  -0.4114720   0.0000313  -0.0000386  -0.1100897   0.0000000  -0.0000000
                      0.0000000   0.0000002   0.0000000
 222022/222          -0.0000000  -0.0000000  -0.0000005   0.0000000  -0.0000000   0.0000000   0.0000000   0.3571696  -0.0036677
                      0.0014188  -0.0000661  -0.3361787
 222202/222           0.0000000   0.0000000   0.0000012  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.3571696   0.0036677
                     -0.0014188   0.0000661   0.3361757
 202222/222           0.0000000   0.0000000   0.0000002  -0.0000000   0.0000000   0.0000000   0.0000000   0.3571693  -0.0036677
                      0.0014188  -0.0000661  -0.3361768
 2222/\/222          -0.0000006   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000037  -0.0000000   0.0014425   0.0043851
                     -0.3468048  -0.0000187   0.0000211
 22/2\2/222           0.0000000   0.0000004  -0.0000000  -0.0000000  -0.0000008   0.0000000  -0.0000000   0.0035202   0.3467906
                      0.0043995   0.0001504  -0.0000249
 22222/0222           0.0000084  -0.0000001  -0.0000000   0.0000000   0.0000000   0.0000077  -0.0000000  -0.0009219  -0.0028024
                      0.2216370   0.0000119  -0.0000135
 22/2220222          -0.0000000  -0.0000011   0.0000000  -0.0000000  -0.0000172   0.0000000  -0.0000000  -0.0022497  -0.2216290
                     -0.0028116  -0.0000962   0.0000159
 222/220222           0.0000000   0.0000000   0.0000001   0.0000032   0.0000000  -0.0000000  -0.0000102   0.0000401  -0.0000964
                     -0.0000130   0.2215425   0.0000001
 2222/20222          -0.0000000  -0.0000000  -0.0000029   0.0000001  -0.0000000  -0.0000000   0.0000000  -0.1614001   0.0016574
                     -0.0006412   0.0000298   0.1518120
 2/22220222           0.0000000  -0.0000000   0.0000003  -0.0000000   0.0000000  -0.0000000   0.0000000   0.1518979  -0.0015382
                      0.0006222  -0.0000282   0.1613191
 222/022222          -0.0000000  -0.0000000   0.0000000   0.0000001  -0.0000000   0.0000000   0.0000001  -0.0000147   0.0000353
                      0.0000047  -0.0811226  -0.0000000
 2/02222222           0.0000119   0.0000885   0.0233830  -0.0009433   0.0000111   0.0000003  -0.0000080  -0.0032214   0.0000278
                     -0.0000174   0.0000006  -0.0714211
 2/22202222           0.0000119   0.0000885   0.0233830  -0.0009433   0.0000111   0.0000003  -0.0000080  -0.0710923   0.0007247
                     -0.0002870   0.0000132  -0.0075418
 2/22\/2222           0.0130309  -0.0001040  -0.0000055   0.0000060  -0.0000159  -0.0338320   0.0000109   0.0002741   0.0008333
                     -0.0659017  -0.0000035   0.0000040
 222/\/2222          -0.0002751  -0.0361633   0.0001374   0.0000403   0.0025636   0.0000040  -0.0000099  -0.0006689  -0.0658987
                     -0.0008360  -0.0000286   0.0000047
 2/2/2\2222          -0.0001316  -0.0172842   0.0000906   0.0000183  -0.0515624   0.0000266  -0.0000198   0.0006689   0.0658986
                      0.0008360   0.0000286  -0.0000047
 22//2\2222          -0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000   0.0000000   0.0000000   0.0189790  -0.0001981
                      0.0000726  -0.0000035  -0.0631162
 22/\2/2222          -0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000   0.0000000   0.0000000   0.0631121  -0.0006425
                      0.0002555  -0.0000117   0.0189806
 2/22022222          -0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0555959   0.0005630
                     -0.0002277   0.0000103  -0.0590748
 2022/22222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0590736  -0.0006066
                      0.0002347  -0.0000109  -0.0555970
 2220/22222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0590736  -0.0006066
                      0.0002347  -0.0000109  -0.0555973
 2/\22/2222          -0.0000052   0.0000148   0.0005002   0.0123732  -0.0000009   0.0000012   0.0033105  -0.0000103   0.0000248
                      0.0000033  -0.0570776  -0.0000000
 22/2/\2222           0.0000051   0.0000008  -0.0005001  -0.0119349   0.0000156  -0.0000177  -0.0545802  -0.0000103   0.0000248
                      0.0000033  -0.0570768  -0.0000000
 22//\22222           0.0245546  -0.0001879  -0.0000113   0.0000110  -0.0000035  -0.0073652   0.0000024  -0.0002374  -0.0007216
                      0.0570726   0.0000031  -0.0000035
 2/\/222222           0.0501016  -0.0003796  -0.0000233   0.0000222   0.0000050   0.0108874  -0.0000035   0.0002374   0.0007216
                     -0.0570723  -0.0000031   0.0000035
 2//2\22222          -0.0001082  -0.0142266   0.0000445   0.0000162   0.0213255  -0.0000080   0.0000019   0.0005793   0.0570699
                      0.0007240   0.0000248  -0.0000041
 222/202222          -0.0000048   0.0000066   0.0004716   0.0114589  -0.0000078   0.0000089   0.0272903  -0.0000098   0.0000236
                      0.0000032  -0.0542167  -0.0000000
 220/222222           0.0000098  -0.0000352  -0.0009433  -0.0235380  -0.0000051   0.0000056   0.0179267  -0.0000098   0.0000236
                      0.0000032  -0.0542167  -0.0000000
 22022/2222          -0.0240860   0.0001808   0.0000114  -0.0000106  -0.0000080  -0.0172087   0.0000055   0.0002255   0.0006855
                     -0.0542144  -0.0000029   0.0000033
 22202/2222           0.0106401  -0.0000849  -0.0000045   0.0000049  -0.0000130  -0.0276230   0.0000089   0.0002255   0.0006855
                     -0.0542143  -0.0000029   0.0000033
 20222/2222          -0.0226828   0.0001753   0.0000102  -0.0000102   0.0000090   0.0190202  -0.0000061   0.0002255   0.0006855
                     -0.0542143  -0.0000029   0.0000033
 20/2222222           0.0002246   0.0295267  -0.0001122  -0.0000329  -0.0020934  -0.0000032   0.0000081   0.0005503   0.0542121
                      0.0006878   0.0000235  -0.0000039
 22/0222222          -0.0001888  -0.0248226   0.0000875   0.0000279   0.0161270  -0.0000040  -0.0000027   0.0005503   0.0542121
                      0.0006878   0.0000235  -0.0000039
 22/2202222           0.0000716   0.0094084  -0.0000493  -0.0000099   0.0280669  -0.0000145   0.0000108   0.0005503   0.0542120
                      0.0006878   0.0000235  -0.0000039
 22/2\/2222          -0.0000209   0.0000686   0.0020216   0.0502587   0.0000047  -0.0000048  -0.0162215  -0.0000060   0.0000143
                      0.0000019  -0.0329533  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.005583    0.007255    0.000487   -0.000373    0.000558    0.956580    0.000141    0.000000   -0.000001   -0.000000
            -0.000000   -0.000000
 2           0.000094    0.953801    0.003618    0.001034    0.072975   -0.007278   -0.000696   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 3          -0.000017   -0.003622    0.955840    0.036116   -0.000731   -0.000443   -0.013498   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 4          -0.000004   -0.001063   -0.038558    0.892477   -0.000063    0.000426   -0.342238    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 5           0.000448   -0.072980    0.000453   -0.000098    0.953837   -0.000006   -0.000256   -0.000000   -0.000000   -0.000001
            -0.000000   -0.000000
 6           0.956609   -0.000102    0.000013    0.000117   -0.000458   -0.005582    0.000285    0.000000   -0.000000    0.000000
             0.000000    0.000000
 7          -0.000308    0.000259   -0.000326    0.342505    0.000295    0.000002    0.893209    0.000000    0.000000   -0.000000
             0.000000    0.000001
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.924105   -0.003968    0.009683
             0.236903    0.000173
 9           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.009444   -0.012062    0.953919
            -0.002351   -0.000415
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.003710    0.953960    0.012102
             0.001012   -0.000056
 11          0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000171    0.000051    0.000414
            -0.000044    0.954056
 12          0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.236920   -0.000058   -0.000068
             0.924173    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956624    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 2           0.000000    0.956624    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 3           0.000000    0.000000    0.956624   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.956624   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.956625    0.000000   -0.000000   -0.000000   -0.000001   -0.000000
            -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.956625    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956626    0.000000   -0.000000    0.000000
             0.000001   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.954045   -0.000000    0.000000
             0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000001    0.000000   -0.000000   -0.000000    0.954045   -0.000000
            -0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954045
            -0.000000    0.000000
 11         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000000   -0.000000   -0.000000
             0.954057    0.000000
 12          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.954058

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00435290    -1.23352058       2212220222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00435307    -1.23359732       2222210222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00433853    -1.23163010       2221220222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95657997 (fixed)   0.95662619 (relaxed)   0.95662415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779034
 Singles      0.01644028   -0.07912462   -0.08128991
 Pairs        0.07629667    0.00000000   -0.04121564
 Total        1.09274121   -0.07912462   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57048984
 One electron energy                 -193.32066291
 Two electron energy                   83.38199168
 Virial quotient                       -2.64463257
 Correlation energy                    -0.59029589
 !MRCI STATE 1.1 Energy              -109.938671227948

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341598 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341323 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341598 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009799 (Pople, fixed reference)
 Cluster corrected energies          -109.99009521 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009799 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95380126 (fixed)   0.95662623 (relaxed)   0.95662419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779034
 Singles      0.01644030   -0.07912467   -0.08128994
 Pairs        0.07629654    0.00000000   -0.04121561
 Total        1.09274110   -0.07912467   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57049121
 One electron energy                 -193.32066486
 Two electron energy                   83.38199363
 Virial quotient                       -2.64463248
 Correlation energy                    -0.59029589
 !MRCI STATE 2.1 Energy              -109.938671227171

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341592 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341317 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341592 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009792 (Pople, fixed reference)
 Cluster corrected energies          -109.99009515 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009792 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95583982 (fixed)   0.95662639 (relaxed)   0.95662435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427    0.00000000   -0.46779037
 Singles      0.01644040   -0.07912482   -0.08129001
 Pairs        0.07629607    0.00000000   -0.04121551
 Total        1.09274074   -0.07912481   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57048984
 One electron energy                 -193.32066130
 Two electron energy                   83.38199008
 Virial quotient                       -2.64463257
 Correlation energy                    -0.59029589
 !MRCI STATE 3.1 Energy              -109.938671225625

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341570 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341295 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341570 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009770 (Pople, fixed reference)
 Cluster corrected energies          -109.99009493 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009770 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.89247710 (fixed)   0.95662636 (relaxed)   0.95662432 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779056
 Singles      0.01644029   -0.07912468   -0.08128996
 Pairs        0.07629627    0.00000012   -0.04121536
 Total        1.09274082   -0.07912456   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57049905
 One electron energy                 -193.32067303
 Two electron energy                   83.38200181
 Virial quotient                       -2.64463198
 Correlation energy                    -0.59029589
 !MRCI STATE 4.1 Energy              -109.938671225542

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341575 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341300 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341575 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009775 (Pople, fixed reference)
 Cluster corrected energies          -109.99009498 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009775 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95383665 (fixed)   0.95662678 (relaxed)   0.95662474 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46778973
 Singles      0.01644089   -0.07912591   -0.08129043
 Pairs        0.07629471    0.00000000   -0.04121572
 Total        1.09273987   -0.07912591   -0.59029588
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57054270
 One electron energy                 -193.32071149
 Two electron energy                   83.38204027
 Virial quotient                       -2.64462920
 Correlation energy                    -0.59029588
 !MRCI STATE 5.1 Energy              -109.938671219209

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341518 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341243 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341518 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009718 (Pople, fixed reference)
 Cluster corrected energies          -109.99009440 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009718 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95660872 (fixed)   0.95662721 (relaxed)   0.95662517 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779007
 Singles      0.01644103   -0.07912599   -0.08129058
 Pairs        0.07629358   -0.00000000   -0.04121523
 Total        1.09273888   -0.07912599   -0.59029587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57053151
 One electron energy                 -193.32069505
 Two electron energy                   83.38202384
 Virial quotient                       -2.64462991
 Correlation energy                    -0.59029587
 !MRCI STATE 6.1 Energy              -109.938671213144

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341459 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341184 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341459 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009658 (Pople, fixed reference)
 Cluster corrected energies          -109.99009381 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009658 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.89320946 (fixed)   0.95662791 (relaxed)   0.95662587 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46778970
 Singles      0.01644149   -0.07912655   -0.08129097
 Pairs        0.07629153   -0.00000059   -0.04121520
 Total        1.09273728   -0.07912714   -0.59029586
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57050513
 One electron energy                 -193.32065870
 Two electron energy                   83.38198749
 Virial quotient                       -2.64463159
 Correlation energy                    -0.59029586
 !MRCI STATE 7.1 Energy              -109.938671203418

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341364 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341088 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341364 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009562 (Pople, fixed reference)
 Cluster corrected energies          -109.99009285 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009562 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.92410479 (fixed)   0.95639682 (relaxed)   0.95404513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493601    0.00000000   -0.47112446
 Singles      0.01716303   -0.07662706   -0.07898464
 Pairs        0.07655805   -0.00009311   -0.04129611
 Total        1.09865709   -0.07672017   -0.59140522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56088887
 One electron energy                 -193.40070889
 Two electron energy                   83.47955493
 Virial quotient                       -2.64482202
 Correlation energy                    -0.59140522
 !MRCI STATE 8.1 Energy              -109.921153963863

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97950028 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630885 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97950028 (Davidson, rotated reference)

 Cluster corrected energies          -109.97621812 (Pople, fixed reference)
 Cluster corrected energies          -109.97298703 (Pople, relaxed reference)
 Cluster corrected energies          -109.97621812 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95391861 (fixed)   0.95639687 (relaxed)   0.95404461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493721    0.00000000   -0.47141317
 Singles      0.01716285   -0.07662699   -0.07898455
 Pairs        0.07655823    0.00022386   -0.04100750
 Total        1.09865829   -0.07640312   -0.59140522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56095412
 One electron energy                 -193.40079552
 Two electron energy                   83.47964156
 Virial quotient                       -2.64481787
 Correlation energy                    -0.59140522
 !MRCI STATE 9.1 Energy              -109.921153963365

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97950099 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630879 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97950099 (Davidson, rotated reference)

 Cluster corrected energies          -109.97621884 (Pople, fixed reference)
 Cluster corrected energies          -109.97298696 (Pople, relaxed reference)
 Cluster corrected energies          -109.97621884 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95396022 (fixed)   0.95639688 (relaxed)   0.95404473 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493697    0.00000000   -0.47123685
 Singles      0.01716282   -0.07662696   -0.07898454
 Pairs        0.07655822    0.00003013   -0.04118382
 Total        1.09865801   -0.07659683   -0.59140522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56095168
 One electron energy                 -193.40078999
 Two electron energy                   83.47963603
 Virial quotient                       -2.64481802
 Correlation energy                    -0.59140522
 !MRCI STATE 10.1 Energy             -109.921153963224

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97950082 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630878 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97950082 (Davidson, rotated reference)

 Cluster corrected energies          -109.97621867 (Pople, fixed reference)
 Cluster corrected energies          -109.97298695 (Pople, relaxed reference)
 Cluster corrected energies          -109.97621867 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95405639 (fixed)   0.95640041 (relaxed)   0.95405650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00491959    0.00000000   -0.00264832
 Singles      0.01716050   -0.07662551   -0.07898416
 Pairs        0.07655081   -0.51477963   -0.50977271
 Total        1.09863090   -0.59140514   -0.59140520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56087013
 One electron energy                 -193.40062228
 Two electron energy                   83.47946834
 Virial quotient                       -2.64482321
 Correlation energy                    -0.59140520
 !MRCI STATE 11.1 Energy             -109.921153945392

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97948477 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630398 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97948477 (Davidson, rotated reference)

 Cluster corrected energies          -109.97620235 (Pople, fixed reference)
 Cluster corrected energies          -109.97298211 (Pople, relaxed reference)
 Cluster corrected energies          -109.97620235 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.92417319 (fixed)   0.95640056 (relaxed)   0.95405834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00491606   -0.00000000   -0.47121308
 Singles      0.01715982   -0.07662524   -0.07898406
 Pairs        0.07655079   -0.00000008   -0.04120805
 Total        1.09862667   -0.07662532   -0.59140520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56086415
 One electron energy                 -193.40059187
 Two electron energy                   83.47943793
 Virial quotient                       -2.64482359
 Correlation energy                    -0.59140520
 !MRCI STATE 12.1 Energy             -109.921153942457

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97948227 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630377 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97948227 (Davidson, rotated reference)

 Cluster corrected energies          -109.97619981 (Pople, fixed reference)
 Cluster corrected energies          -109.97298190 (Pople, relaxed reference)
 Cluster corrected energies          -109.97619981 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      620.12       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1268.49    511.87    751.23      3.92      1.12
 REAL TIME  *      1437.16 SEC
 DISK USED  *       652.22 MB (local),       12.82 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =      -109.99341598  AU                              
 SETTING HLSDIAG(19)    =      -109.99341592  AU                              
 SETTING HLSDIAG(20)    =      -109.99341570  AU                              
 SETTING HLSDIAG(21)    =      -109.99341575  AU                              
 SETTING HLSDIAG(22)    =      -109.99341518  AU                              
 SETTING HLSDIAG(23)    =      -109.99341459  AU                              
 SETTING HLSDIAG(24)    =      -109.99341364  AU                              
 SETTING HLSDIAG(25)    =      -109.97950028  AU                              
 SETTING HLSDIAG(26)    =      -109.97950099  AU                              
 SETTING HLSDIAG(27)    =      -109.97950082  AU                              
 SETTING HLSDIAG(28)    =      -109.97948477  AU                              
 SETTING HLSDIAG(29)    =      -109.97948227  AU                              


         HLSDIAG
    -110.0181060
    -110.0181058
    -110.0181058
    -110.0181044
    -110.0181053
    -110.0181047
    -110.0181050
    -109.9776595
    -109.9776598
    -109.9776576
    -109.9616473
    -109.9616468
    -109.9616484
    -109.9616451
    -109.9616449
    -109.9616299
    -109.9616299
    -109.9934160
    -109.9934159
    -109.9934157
    -109.9934158
    -109.9934152
    -109.9934146
    -109.9934136
    -109.9795003
    -109.9795010
    -109.9795008
    -109.9794848
    -109.9794823
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:   -109.964912   -109.964912   -109.964912   -109.964912   -109.964912   -109.964912   -109.964912   -109.920887
                      -109.920887   -109.920887   -109.898435   -109.898435   -109.898435   -109.898435   -109.898435   -109.898435
                      -109.898435
 Replaced energies:   -110.018106   -110.018106   -110.018106   -110.018104   -110.018105   -110.018105   -110.018105   -109.977660
                      -109.977660   -109.977658   -109.961647   -109.961647   -109.961648   -109.961645   -109.961645   -109.961630
                      -109.961630

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.938671   -109.938671   -109.938671   -109.938671   -109.938671   -109.938671   -109.938671   -109.921154
                      -109.921154   -109.921154   -109.921154   -109.921154
 Replaced energies:   -109.993416   -109.993416   -109.993416   -109.993416   -109.993415   -109.993415   -109.993414   -109.979500
                      -109.979501   -109.979501   -109.979485   -109.979482



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01810602

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -947.87      -0.00       0.00      -0.00      -0.00    -222.65       0.00      -0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          947.87       0.00       0.00       0.00      -0.00   -1183.99      -0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00   -1023.00      -0.00      -0.00       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.36       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -149.29       0.00      -0.00      -0.00      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.17       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1023.00     149.29      -0.00      -0.00       0.00      -0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.29       0.00       0.00       0.00       0.00
                            0.00    1183.99       0.00      -0.00       0.00       0.00    -567.57       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.23       0.00       0.00       0.00
                          222.65       0.00       0.00       0.00      -0.00     567.57      -0.00      -0.00      -0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8876.98       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -527.46

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8876.92       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8877.39
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     527.46      -0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       2.52       0.00      -0.00      -0.00       0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -3.18      -0.46      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -1.99      -0.00      -0.00      -0.00      -0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.66       0.00      -0.00       0.00      -0.00      -1.20       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.39      -0.00       0.00       0.00       0.00      -4.07      -0.00      -0.00       0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.84       0.00       0.00       0.00       0.00       0.09      -0.00       0.00       0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.40       0.00       0.00      -0.00       0.00       1.46      -0.00      -0.00      -0.00

   18   1.1  1.5  0.5      -0.00       0.00       0.00      -0.00     183.27       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00     502.44     683.20      -0.00      -0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5      -0.00       0.00     226.14     196.35       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00     460.81       0.00      -0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00    -226.14       0.00      -0.00       0.00       0.00     638.30      -0.00       0.00      -0.00
                         -502.44       0.00       0.00      -0.00       0.00      94.64       0.00       0.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00    -196.35       0.00       0.00      -0.00       0.00    -627.34       0.00      -0.00      -0.00
                         -683.20      -0.00       0.00       0.00       0.00    -403.12       0.00      -0.00       0.00      -0.00

   22   5.1  1.5  0.5    -183.27      -0.00      -0.00       0.00       0.00    -568.05      -0.00       0.00       0.00      -0.00
                            0.00    -460.81      -0.00      -0.00       0.00      -0.00    -379.38       0.00      -0.00       0.00

   23   6.1  1.5  0.5      -0.00       0.00      -0.00      -0.00     568.05      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     -94.64     403.12       0.00       0.00       0.00      -0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00      -0.00    -638.30     627.34       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00     379.38      -0.00      -0.00      -0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -304.53       0.00

   26   9.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     304.53
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     304.53       0.00      -0.00

   27  10.1  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -304.53       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5      -0.00       0.92      -0.00       0.00       0.00      -0.00       0.05       0.00       0.00       0.00
                            2.61      -0.00      -0.00       0.00       0.00       0.71      -0.00       0.00       0.00      -0.00

   29  12.1  1.5  0.5       0.57       0.00       0.00       0.00      -0.00       1.76       0.00       0.00       0.00       0.00
                           -0.00       1.43       0.00      -0.00       0.00      -0.00       1.18       0.00      -0.00       0.00

   30  13.1  1.5  0.5      -0.00      -0.09       0.00       0.00      -0.00       0.00       2.77      -0.00      -0.00      -0.00
                            0.32       0.00      -0.00       0.00      -0.00       1.07      -0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       1.09      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       1.39       2.40       0.00       0.00      -0.00      -0.00      -0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       1.45      -0.25       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.82      -0.00      -0.00      -0.00       0.00      -0.00

   33  16.1  1.5  0.5      -0.00       0.00      -1.51       2.02       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       1.66       0.00      -0.00      -0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00      -1.50      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.76      -0.53      -0.00       0.00       0.00       0.00       0.00       0.00

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

   69   1.1  0.5  0.5       0.06      -0.03     464.05    -344.87       1.03       0.20      -0.24      -0.00       0.00       0.00
                           -0.12       0.16      -2.39      -1.58    -117.70      -0.12       0.13       0.00       0.00       0.00

   70   2.1  0.5  0.5       0.48       0.02      -3.53       2.58     134.93       1.47       0.79      -0.00      -0.00      -0.00
                            0.23       1.20    -314.21    -207.02       0.84       0.34       0.98       0.00       0.00       0.00

   71   3.1  0.5  0.5     125.69       2.59      -0.22       0.16      -0.33     389.59      22.84      -0.00      -0.00      -0.00
                           12.04     316.04       1.28       1.03       0.06      11.30     260.19      -0.00      -0.00       0.00

   72   4.1  0.5  0.5      -5.07      62.44       0.21      -0.15      -0.16     -15.72     568.20       0.00       0.00      -0.00
                          294.31     -12.75       0.35       0.22      -0.05     279.63     -10.50      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5       0.06      -0.06       0.01      -0.14    -386.84       0.18       0.07       0.00       0.00      -0.00
                           -0.14       0.15    -156.27    -503.60      -0.18      -0.01       0.12       0.00       0.00       0.00

   74   6.1  0.5  0.5       0.00       0.06      26.44    -290.92       0.16       0.01      -0.07      -0.00       0.00       0.00
                            0.16       0.00       0.12       0.27    -392.43       0.02       0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      -0.04     195.84      -0.01       0.09      -0.07      -0.13    -232.37       0.00      -0.00       0.00
                          502.09      -0.11      -0.14      -0.21       0.13      49.64      -0.09      -0.00       0.00      -0.00

   76   8.1  0.5  0.5      -3.15      -0.12       1.95       2.02       5.41    -544.32      -0.00    -192.82       3.03       0.13
                           -0.04    -316.89       5.96      -3.37      -2.22       0.11     626.50      -0.13      -7.39    -804.85

   77   9.1  0.5  0.5       0.08       0.29       5.92       6.14     533.18       5.55       0.01       1.91       9.20      -0.32
                            0.10       3.20     587.23    -331.68      -6.74      -0.28      -6.40       0.32    -727.80       8.19

   78  10.1  0.5  0.5       0.03       0.04    -467.97    -485.69       6.76      -2.20       0.00      -0.83    -727.83      -0.04
                            0.01      -1.31       7.45      -4.21     533.20      -0.04       2.51       0.04      -9.23      -3.26

   79  11.1  0.5  0.5       0.00    -674.24      -0.03      -0.03       0.23       0.10     -20.05       0.04      -0.04     727.92
                         -229.38       0.06       0.25      -0.14       0.03     634.34      -0.12    -727.92      -0.32       0.15

   80  12.1  0.5  0.5     700.31      -0.00       0.03       0.03      -0.04     -97.38      -0.00    -818.12       0.04       0.00
                           -0.00    -525.21      -0.04       0.02      -0.03       0.00    -165.52      -0.00       0.05    -242.06

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -2.39      -1.84       0.00       0.00       0.00     502.44

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -226.14
                           -0.00       0.00      -0.00       1.66       0.00      -0.00       4.40      -0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     226.14       0.00
                           -0.00       3.18      -0.00      -0.00      -0.00      -0.00      -0.00    -502.44       0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     196.35      -0.00
                            0.00       0.46      -0.00       0.00      -0.00      -0.00      -0.00    -683.20      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     183.27       0.00       0.00
                           -2.52       0.00       1.99      -0.00      -0.00      -0.00       0.00       0.00    -460.81      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       4.07      -0.09      -0.00       0.00      -0.00     -94.64

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     638.30
                            0.00      -0.00       0.00       1.20       0.00       0.00      -1.46      -0.00       0.00      -0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   11  11.1  1.5  1.5   12391.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.92       0.00
                            0.00    -854.96       0.00      -0.00       0.00       0.00      -0.00       2.61      -0.00      -0.00

   12  12.1  1.5  1.5       0.00   12391.36       0.00       0.00       0.00       0.00       0.00      -0.57      -0.00      -0.00
                          854.96       0.00    -675.09      -0.00      -0.00       0.00      -0.00      -0.00       1.43       0.00

   13  13.1  1.5  1.5       0.00       0.00   12391.02       0.00       0.00       0.00       0.00       0.00       0.09      -0.00
                           -0.00     675.09      -0.00       0.00       0.00       0.00      -0.00       0.32       0.00      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00   12391.73       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00    -343.51    -604.12      -0.00       0.00       0.00       1.39

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   12391.78       0.00       0.00      -0.00      -0.00      -1.45
                           -0.00       0.00      -0.00     343.51      -0.00      -0.00    1567.29      -0.00      -0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   12395.08       0.00       0.00      -0.00       1.51
                           -0.00      -0.00      -0.00     604.12       0.00      -0.00     165.41       0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   12395.08      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00   -1567.29    -165.41      -0.00       0.00       0.00       0.76

   18   1.1  1.5  0.5       0.00      -0.57       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -2.61       0.00      -0.32      -0.00       0.00      -0.00      -0.00      -0.00    -315.96      -0.00

   19   2.1  1.5  0.5      -0.92      -0.00       0.09       0.00      -0.00      -0.00      -0.00       0.00       0.04       0.00
                            0.00      -1.43      -0.00      -0.00       0.00       0.00      -0.00     315.96       0.00       0.00

   20   3.1  1.5  0.5       0.00      -0.00      -0.00      -0.00      -1.45       1.51      -0.00       0.00       0.00       0.05
                            0.00      -0.00       0.00      -1.39       0.00      -0.00      -0.76       0.00      -0.00      -0.00

   21   4.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.25      -2.02      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -2.40       0.00      -0.00       0.53      -0.00      -0.00      -0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00      -1.09      -0.00      -0.00       1.50       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.82      -1.66       0.00       0.00       0.00     341.00

   23   6.1  1.5  0.5       0.00      -1.76      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.71       0.00      -1.07      -0.00       0.00      -0.00      -0.00       0.00     394.66       0.00

   24   7.1  1.5  0.5      -0.05      -0.00      -2.77      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -1.18       0.00       0.00       0.00       0.00      -0.00      74.22       0.00       0.00

   25   8.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   9.1  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5      -0.00      -0.00       0.00      -0.00     278.63     146.03       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     917.53       0.00       0.00      47.10      -0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00      -0.00       0.00     369.40       0.00       0.00    -509.03       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     277.49     564.42       0.00       0.00      -0.00      -1.06

   30  13.1  1.5  0.5      -0.00      -0.00      -0.00       0.00    -417.04     846.18      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     217.67       0.00       0.00    -312.16       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00    -369.40      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -917.53       0.00    -217.67       0.00       0.00      -0.00      -0.00       0.00      -0.55       0.00

   32  15.1  1.5  0.5    -278.63      -0.00     417.04       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00    -277.49      -0.00      -0.00      -0.00       0.00       0.00       0.80      -0.00       0.00

   33  16.1  1.5  0.5    -146.03      -0.00    -846.18      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00    -564.42      -0.00       0.00      -0.00       0.00       0.00       0.61       0.00       0.00

   34  17.1  1.5  0.5      -0.00     509.03       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                          -47.10      -0.00     312.16       0.00      -0.00      -0.00      -0.00      -0.00      -1.47       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     580.16

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     261.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -261.13       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -580.16       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -226.73       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -788.89      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -211.62      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -532.09      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -109.28

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -737.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.07      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.01      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.66       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.65       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.37       0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       1.60

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.75
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.88

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

   69   1.1  0.5  0.5       5.28       0.08     -44.42      -0.01      -0.01       0.02       0.01       0.00       0.00       0.00
                           -0.22      -9.11       0.05       0.01      -0.01      -0.01      -0.01     -73.92      -5.12       0.24

   70   2.1  0.5  0.5      -0.04      10.44       0.34      -0.07       0.02      -0.06       0.10       0.00       0.00       0.00
                          -28.34       0.06       6.66      -0.02      -0.05      -0.11       0.02       0.63    -672.77       1.77

   71   3.1  0.5  0.5      -0.00      -0.03       0.02     -18.60       0.55      -1.69      25.63       0.00       0.00       0.00
                            0.13       0.00      -0.02      -1.16     -13.97     -28.42       0.54       0.03       2.50     467.74

   72   4.1  0.5  0.5       0.00      -0.01      -0.02       0.75      13.73     -42.04      -1.03       0.00       0.00       0.00
                            0.03      -0.00      -0.01     -28.36       0.56       1.15      13.50      -0.04       0.75     -18.87

   73   5.1  0.5  0.5      -0.01     -29.93      -0.01      -0.01       0.01      -0.00       0.01       0.00       0.00       0.00
                          -36.62      -0.01     -17.99       0.01      -0.01      -0.01       0.00       0.21     170.37       0.22

   74   6.1  0.5  0.5     -14.95       0.01     -16.95      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00
                            0.02     -30.36       0.01      -0.01      -0.00      -0.00      -0.00     439.38       0.02       0.01

   75   7.1  0.5  0.5       0.00      -0.01       0.01       0.01     -21.22      10.13      -0.01       0.00       0.00       0.00
                           -0.02       0.01      -0.00     -38.12       0.00       0.01      -8.41      -0.14      -0.15      -0.16

   76   8.1  0.5  0.5      -0.71      -1.37       0.01     -43.61      -0.03      -0.01     130.96       0.00       0.00       0.00
                           -0.42       0.56       1.68      -0.00    -138.72     111.59      -0.03      -2.67      -1.75     504.42

   77   9.1  0.5  0.5      -2.16    -135.20       0.02       0.46       0.07       0.03      -1.33       0.00       0.00       0.00
                          -41.21       1.71     165.97       0.00       1.41      -1.15       0.07      -8.13    -172.20      -5.12

   78  10.1  0.5  0.5     171.01      -1.72      -1.59      -0.17       0.01       0.00       0.53       0.00       0.00       0.00
                           -0.52    -135.20       2.11       0.00      -0.57       0.44       0.01     642.92      -2.18       2.06

   79  11.1  0.5  0.5       0.01      -0.06      -0.00       0.01    -153.64     -75.13      -0.02       0.00       0.00       0.00
                           -0.02      -0.01       0.07      -5.35       0.03      -0.02    -170.95       0.03      -0.07      -0.09

   80  12.1  0.5  0.5      -0.01       0.01       0.00     161.12      -0.00      -0.00      78.60       0.00       0.00       0.00
                            0.00       0.01      -0.01      -0.00    -104.01     -93.15      -0.00      -0.04       0.01     361.94

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.02     267.92
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.07       0.09      -1.38

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.27       0.01      -2.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.13       0.69    -181.41

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      72.57       1.49      -0.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       6.95     182.46       0.74

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.93      36.05       0.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     169.92      -7.36       0.20

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03      -0.03       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.08       0.09     -90.22

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      15.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.09       0.00       0.07

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02     113.07      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     289.88      -0.06      -0.08

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.82      -0.07       1.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.02    -182.96       3.44

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.05       0.17       3.42
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.06       1.84     339.04

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02       0.02    -270.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01      -0.76       4.30

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -389.27      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -132.43       0.03       0.15

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     404.32      -0.00       0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -303.23      -0.02


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00    -183.27      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.57      -0.00
                          683.20      -0.00      -0.00       0.00       0.00       0.00       0.00      -2.61       0.00      -0.32

    2   2.1  1.5  1.5    -196.35      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.92       0.00      -0.09
                            0.00     460.81       0.00      -0.00       0.00       0.00       0.00       0.00      -1.43      -0.00

    3   3.1  1.5  1.5       0.00      -0.00      -0.00    -638.30       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      94.64       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00      -0.00     627.34      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -403.12       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

    5   5.1  1.5  1.5      -0.00       0.00     568.05       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    -379.38       0.00      -0.00       0.00      -0.00      -0.00       0.00

    6   6.1  1.5  1.5       0.00    -568.05      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       1.76       0.00
                          403.12       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.71       0.00      -1.07

    7   7.1  1.5  1.5    -627.34      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.05       0.00       2.77
                           -0.00     379.38      -0.00       0.00      -0.00       0.00       0.00       0.00      -1.18       0.00

    8   8.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00    -304.53       0.00      -0.00      -0.00      -0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00       0.00      -0.00      -0.00    -304.53       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00     304.53      -0.00      -0.00      -0.00       0.00      -0.00

   10  10.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00     304.53       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   11  11.1  1.5  1.5      -0.00      -0.00       0.00      -0.05      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.71      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   12  12.1  1.5  1.5      -0.00       0.00      -1.76      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       1.18       0.00      -0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00       0.00      -0.00      -2.77       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       1.07      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   14  14.1  1.5  1.5       0.00      -1.09       0.00      -0.00       0.00      -0.00       0.00      -0.00     369.40       0.00
                            2.40       0.00       0.00      -0.00      -0.00      -0.00       0.00    -917.53       0.00    -217.67

   15  15.1  1.5  1.5       0.25      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     278.63       0.00    -417.04
                           -0.00       0.82      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -277.49      -0.00

   16  16.1  1.5  1.5      -2.02      -0.00       0.00       0.00       0.00       0.00       0.00     146.03       0.00     846.18
                            0.00       1.66       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -564.42      -0.00

   17  17.1  1.5  1.5      -0.00       1.50       0.00      -0.00      -0.00       0.00       0.00       0.00    -509.03      -0.00
                           -0.53      -0.00       0.00       0.00       0.00       0.00       0.00     -47.10      -0.00     312.16

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -74.22       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -394.66      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -341.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       1.06      -0.00

   21   4.1  1.5  0.5       0.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -49.76       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.15      -0.00

   22   5.1  1.5  0.5       0.00       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           49.76      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.84       0.00       0.66

   23   6.1  1.5  0.5       0.00       0.00       0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -189.19       0.00      -0.00       0.00      -0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.23       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     189.19      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    8876.98       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00    -175.82       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    8876.92       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    8877.39       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     175.82      -0.00       0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12391.25       0.00       0.00
                           -0.00       0.84       0.00      -0.00      -0.00       0.00      -0.00       0.00    -284.99       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12391.36       0.00
                           -0.15      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     284.99       0.00    -225.03

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12391.02
                            0.00      -0.66      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     225.03      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.40       0.00       0.00       0.00       0.00       0.00      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -1.36      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.03      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.49      -0.00      -0.00      -0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5      -0.00     211.62       0.00       0.00      -0.00       0.00       0.00       0.00      -0.66       0.00
                          788.89      -0.00      -0.00       0.00       0.00       0.00       0.00      -3.01       0.00      -0.37

   36   2.1  1.5 -0.5     226.73       0.00      -0.00       0.00       0.00      -0.00       0.00      -1.07      -0.00       0.11
                            0.00     532.09       0.00      -0.00       0.00       0.00       0.00       0.00      -1.65      -0.00

   37   3.1  1.5 -0.5      -0.00       0.00       0.00     737.05      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00     109.28       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   38   4.1  1.5 -0.5       0.00      -0.00       0.00    -724.39       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00    -465.49       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00    -655.93      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00    -438.07       0.00      -0.00       0.00      -0.00      -0.00       0.00

   40   6.1  1.5 -0.5      -0.00     655.93      -0.00       0.00      -0.00       0.00       0.00       0.00      -2.04      -0.00
                          465.49       0.00       0.00       0.00      -0.00       0.00       0.00      -0.82       0.00      -1.24

   41   7.1  1.5 -0.5     724.39       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.06      -0.00      -3.20
                           -0.00     438.07      -0.00      -0.00      -0.00       0.00       0.00       0.00      -1.36       0.00

   42   8.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00    -351.64       0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00      -0.00     351.64      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00     351.64       0.00      -0.00      -0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00    -351.64       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00      -0.00       0.06       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.82      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00      -0.00       2.04       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       1.36       0.00      -0.00       0.00       0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00      -0.00       0.00       3.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       1.24      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   48  14.1  1.5 -0.5      -0.00       1.25      -0.00       0.00      -0.00       0.00      -0.00       0.00    -426.55      -0.00
                            2.77       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1059.47       0.00    -251.34

   49  15.1  1.5 -0.5      -0.29       0.00       0.00      -0.00       0.00       0.00       0.00    -321.73      -0.00     481.56
                           -0.00       0.94      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -320.41      -0.00

   50  16.1  1.5 -0.5       2.33       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -168.62      -0.00    -977.09
                            0.00       1.92       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -651.73      -0.00

   51  17.1  1.5 -0.5       0.00      -1.73      -0.00       0.00       0.00      -0.00      -0.00      -0.00     587.77       0.00
                           -0.61      -0.00       0.00       0.00       0.00       0.00       0.00     -54.39      -0.00     360.46

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
                            0.03      -0.05     449.15       0.57      -0.00      -0.00       0.00       0.01      -0.00      -0.01

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.26       0.29      -3.47      75.45      -0.00      -0.00       0.00       0.11       0.02      -0.09

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.26       4.77      -0.20      -0.16       0.00      -0.00      -0.00      28.70       0.37     -22.66

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.75     122.09       0.20      -0.09      -0.00       0.00      -0.00      -1.16       9.45       0.91

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.13      -0.19    -268.59      -0.00      -0.00       0.00       0.01       0.01      -0.01

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.15    -399.06       0.12      -0.00       0.00      -0.00       0.00      -0.01      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02    -457.03       0.13      -0.05       0.00       0.00       0.00      -0.01     -35.36       0.01

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -534.31      -0.11      -1.83      -7.71      -3.50     706.72      -8.53      10.55       0.03     186.03

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.50       0.27      -5.56    -759.48     -10.63      -7.26    -840.40      -0.12      -0.07      -1.90

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.11       0.04     439.52      -9.64     840.43       2.81     -10.66       0.03      -0.01       0.75

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.10    -615.76       0.02      -0.33       0.05      -0.13      -0.36      -0.00     156.12      -0.03

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          625.02      -0.00      -0.03       0.05      -0.05    -665.18       0.06    -178.19       0.00     -42.21

   81   1.1  0.5 -0.5    -199.11       0.59       0.11      -0.14      -0.00       0.00       0.00       3.05       0.05     -25.65
                           -0.91     -67.95      -0.07       0.08       0.00       0.00       0.00      -0.12      -5.26       0.03

   82   2.1  0.5 -0.5       1.49      77.90       0.85       0.46      -0.00      -0.00      -0.00      -0.02       6.03       0.19
                         -119.52       0.48       0.20       0.57       0.00       0.00       0.00     -16.36       0.04       3.84

   83   3.1  0.5 -0.5       0.09      -0.19     224.93      13.19      -0.00      -0.00      -0.00      -0.00      -0.01       0.01
                            0.60       0.03       6.52     150.22      -0.00      -0.00       0.00       0.07       0.00      -0.01

   84   4.1  0.5 -0.5      -0.09      -0.09      -9.07     328.05       0.00       0.00      -0.00       0.00      -0.01      -0.01
                            0.13      -0.03     161.44      -6.06      -0.00      -0.00      -0.00       0.02      -0.00      -0.00

   85   5.1  0.5 -0.5      -0.08    -223.34       0.11       0.04       0.00       0.00      -0.00      -0.00     -17.28      -0.00
                         -290.76      -0.11      -0.01       0.07       0.00       0.00       0.00     -21.14      -0.01     -10.39

   86   6.1  0.5 -0.5    -167.97       0.09       0.00      -0.04      -0.00       0.00       0.00      -8.63       0.01      -9.79
                            0.15    -226.57       0.01       0.00      -0.00      -0.00      -0.00       0.01     -17.53       0.00

   87   7.1  0.5 -0.5       0.05      -0.04      -0.08    -134.16       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.12       0.07      28.66      -0.05      -0.00       0.00      -0.00      -0.01       0.01      -0.00

   88   8.1  0.5 -0.5       1.17       3.12    -314.26      -0.00    -111.32       1.75       0.08      -0.41      -0.79       0.00
                           -1.94      -1.28       0.07     361.71      -0.08      -4.27    -464.68      -0.24       0.32       0.97

   89   9.1  0.5 -0.5       3.55     307.83       3.20       0.01       1.10       5.31      -0.18      -1.25     -78.06       0.01
                         -191.49      -3.89      -0.16      -3.70       0.18    -420.20       4.73     -23.79       0.99      95.83

   90  10.1  0.5 -0.5    -280.41       3.91      -1.27       0.00      -0.48    -420.22      -0.02      98.73      -0.99      -0.92
                           -2.43     307.84      -0.02       1.45       0.02      -5.33      -1.88      -0.30     -78.06       1.22

   91  11.1  0.5 -0.5      -0.02       0.13       0.06     -11.57       0.02      -0.02     420.27       0.01      -0.03      -0.00
                           -0.08       0.02     366.23      -0.07    -420.27      -0.18       0.09      -0.01      -0.00       0.04

   92  12.1  0.5 -0.5       0.02      -0.02     -56.22      -0.00    -472.34       0.03       0.00      -0.01       0.01       0.00
                            0.01      -0.02       0.00     -95.56      -0.00       0.03    -139.75       0.00       0.00      -0.01


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       1.45      -1.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.39       0.00      -0.00      -0.76       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.25       2.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.40       0.00      -0.00       0.53       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       1.09       0.00       0.00      -1.50       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.82      -1.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00    -278.63    -146.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          917.53       0.00       0.00      47.10       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5    -369.40      -0.00      -0.00     509.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     277.49     564.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00     417.04    -846.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          217.67       0.00       0.00    -312.16       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00    -211.62      -0.00
                           -0.00      -0.80      -0.61       0.00       0.00       0.00     580.16     788.89      -0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -261.13    -226.73      -0.00       0.00
                            0.55       0.00      -0.00       1.47      -0.00      -0.00      -0.00       0.00     532.09       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     261.13       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00    -580.16       0.00      -0.00      -0.00       0.00     109.28

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     226.73      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00    -788.89      -0.00       0.00      -0.00       0.00    -465.49

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00     211.62       0.00       0.00      -0.00       0.00     655.93
                           -0.00      -0.00      -0.00       0.00       0.00    -532.09      -0.00      -0.00      -0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -655.93      -0.00
                            0.00       1.36      -0.03      -0.00       0.00      -0.00    -109.28     465.49       0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     737.05    -724.39      -0.00       0.00
                            0.40       0.00       0.00      -0.49      -0.00       0.00      -0.00      -0.00     438.07      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -1.07       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       3.01      -0.00      -0.00       0.00       0.00       0.82

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.66      -0.00      -0.00      -0.00       0.00      -2.04
                           -0.00      -0.00       0.00      -0.00      -0.00       1.65       0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.11      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.37       0.00      -0.00       0.00      -0.00       1.24

   31  14.1  1.5  0.5   12391.73       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.25       0.00
                            0.00    -114.50    -201.37      -0.00       0.00       0.00       1.60       2.77       0.00       0.00

   32  15.1  1.5  0.5       0.00   12391.78       0.00       0.00      -0.00      -0.00      -1.68       0.29      -0.00      -0.00
                          114.50      -0.00      -0.00     522.43      -0.00      -0.00      -0.00      -0.00       0.94      -0.00

   33  16.1  1.5  0.5       0.00       0.00   12395.08       0.00       0.00      -0.00       1.75      -2.33      -0.00       0.00
                          201.37       0.00      -0.00      55.14       0.00      -0.00       0.00       0.00       1.92       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00   12395.08      -0.00      -0.00      -0.00      -0.00       1.73       0.00
                            0.00    -522.43     -55.14      -0.00       0.00       0.00       0.88      -0.61      -0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00     315.96       0.00      -0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.04       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -315.96      -0.00      -0.00      -0.00       0.00     394.66

   37   3.1  1.5 -0.5      -0.00      -1.68       1.75      -0.00       0.00       0.00       0.05       0.00       0.00       0.00
                           -1.60       0.00      -0.00      -0.88      -0.00       0.00       0.00      -0.00     341.00       0.00

   38   4.1  1.5 -0.5       0.00       0.29      -2.33      -0.00       0.00       0.00       0.00       0.36       0.00       0.00
                           -2.77       0.00      -0.00       0.61       0.00       0.00       0.00       0.00      49.76      -0.00

   39   5.1  1.5 -0.5      -1.25      -0.00      -0.00       1.73       0.00       0.00       0.00       0.00       0.17       0.00
                           -0.00      -0.94      -1.92       0.00      -0.00      -0.00    -341.00     -49.76       0.00       0.00

   40   6.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.29
                           -0.00       0.00      -0.00      -0.00      -0.00    -394.66      -0.00       0.00      -0.00      -0.00

   41   7.1  1.5 -0.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -74.22      -0.00      -0.00      -0.00       0.00    -189.19

   42   8.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   43   9.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   45  11.1  1.5 -0.5      -0.00     321.73     168.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1059.47       0.00       0.00      54.39       0.00      -0.00      -0.00       0.00      -0.84      -0.00

   46  12.1  1.5 -0.5     426.55       0.00       0.00    -587.77       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     320.41     651.73       0.00      -0.00       0.00       1.06       0.15       0.00       0.00

   47  13.1  1.5 -0.5       0.00    -481.56     977.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          251.34       0.00       0.00    -360.46      -0.00      -0.00      -0.00      -0.00       0.66       0.00

   48  14.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.55      -0.00       0.00      -0.00       0.00

   49  15.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.80       0.00      -0.00      -0.00      -0.00       1.36

   50  16.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.61      -0.00      -0.00      -0.00      -0.00      -0.03

   51  17.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       1.47      -0.00      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     183.27       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     502.44     683.20      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00     226.14     196.35       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     460.81       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -226.14       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -502.44       0.00       0.00      -0.00       0.00      94.64

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -196.35       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -683.20      -0.00       0.00       0.00       0.00    -403.12

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00    -183.27      -0.00      -0.00       0.00       0.00    -568.05
                           -0.00      -0.00      -0.00      -0.00       0.00    -460.81      -0.00      -0.00       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     568.05      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -94.64     403.12       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -638.30     627.34       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     379.38      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.92      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       2.61      -0.00      -0.00       0.00       0.00       0.71

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.57       0.00       0.00       0.00      -0.00       1.76
                           -0.00      -0.00      -0.00      -0.00      -0.00       1.43       0.00      -0.00       0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.09       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.32       0.00      -0.00       0.00      -0.00       1.07

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       1.09      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       1.39       2.40       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       1.45      -0.25       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.82      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -1.51       2.02       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       1.66       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.50      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.76      -0.53      -0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.04      -0.02     267.92    -199.11       0.59       0.11
                           -5.35       0.38       0.12      34.81       0.07      -0.09       1.38       0.91      67.95       0.07

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.27       0.01      -2.04       1.49      77.90       0.85
                            0.04      49.83      16.15      -0.27      -0.13      -0.69     181.41     119.52      -0.48      -0.20

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00      72.57       1.49      -0.12       0.09      -0.19     224.93
                            0.00      -0.18      -0.07      -0.02      -6.95    -182.46      -0.74      -0.60      -0.03      -6.52

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00      -2.93      36.05       0.12      -0.09      -0.09      -9.07
                           -0.00      -0.06      -0.02       0.02    -169.92       7.36      -0.20      -0.13       0.03    -161.44

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.03      -0.03       0.01      -0.08    -223.34       0.11
                           -0.01     -20.58      13.50      -0.02       0.08      -0.09      90.22     290.76       0.11       0.01

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.04      15.26    -167.97       0.09       0.00
                          -22.73       0.00      -0.01     -39.90      -0.09      -0.00      -0.07      -0.15     226.57      -0.01

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.02     113.07      -0.00       0.05      -0.04      -0.08
                            0.01       0.01       0.01       0.01    -289.88       0.06       0.08       0.12      -0.07     -28.66

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00      -1.82      -0.07       1.12       1.17       3.12    -314.26
                           -0.79       0.40      -1.96       0.23       0.02     182.96      -3.44       1.94       1.28      -0.07

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.05       0.17       3.42       3.55     307.83       3.20
                           -2.40      39.64    -193.45       0.70      -0.06      -1.84    -339.04     191.49       3.89       0.16

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.02       0.02    -270.18    -280.41       3.91      -1.27
                          189.57       0.50      -2.45     -55.33      -0.01       0.76      -4.30       2.43    -307.84       0.02

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -389.27      -0.01      -0.02       0.13       0.06
                            0.01       0.02      -0.08      -0.00     132.43      -0.03      -0.15       0.08      -0.02    -366.23

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00     404.32      -0.00       0.02       0.02      -0.02     -56.22
                           -0.01      -0.00       0.01       0.00       0.00     303.23       0.02      -0.01       0.02      -0.00

   81   1.1  0.5 -0.5      -0.01      -0.00       0.01       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.01      -0.00     -73.92      -5.12       0.24       0.03      -0.05     449.15

   82   2.1  0.5 -0.5      -0.04       0.01      -0.03       0.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.03      -0.06       0.01       0.63    -672.77       1.77       0.26       0.29      -3.47

   83   3.1  0.5 -0.5     -10.74       0.32      -0.98      14.80       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.67      -8.07     -16.41       0.31       0.03       2.50     467.74      68.26       4.77      -0.20

   84   4.1  0.5 -0.5       0.43       7.93     -24.27      -0.60       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.38       0.33       0.66       7.79      -0.04       0.75     -18.87      -2.75     122.09       0.20

   85   5.1  0.5 -0.5      -0.01       0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.01       0.00       0.21     170.37       0.22       0.03       0.13      -0.19

   86   6.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00      -0.00     439.38       0.02       0.01       0.00      -0.15    -399.06

   87   7.1  0.5 -0.5       0.00     -12.25       5.85      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.01       0.00       0.01      -4.85      -0.14      -0.15      -0.16      -0.02    -457.03       0.13

   88   8.1  0.5 -0.5     -25.18      -0.02      -0.01      75.61       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -80.09      64.43      -0.02      -2.67      -1.75     504.42    -534.31      -0.11      -1.83

   89   9.1  0.5 -0.5       0.26       0.04       0.02      -0.77       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.81      -0.66       0.04      -8.13    -172.20      -5.12       5.50       0.27      -5.56

   90  10.1  0.5 -0.5      -0.10       0.01       0.00       0.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.33       0.26       0.01     642.92      -2.18       2.06      -2.11       0.04     439.52

   91  11.1  0.5 -0.5       0.00     -88.71     -43.38      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.09       0.01      -0.01     -98.70       0.03      -0.07      -0.09       0.10    -615.76       0.02

   92  12.1  0.5 -0.5      93.02      -0.00      -0.00      45.38       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -60.05     -53.78      -0.00      -0.04       0.01     361.94     625.02      -0.00      -0.03


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

   18   1.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00       0.66      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -3.01       0.00      -0.37      -0.00       0.00      -0.00

   19   2.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       1.07       0.00      -0.11      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -1.65      -0.00      -0.00       0.00       0.00

   20   3.1  1.5  0.5    -737.05       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       1.68      -1.75
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -1.60       0.00      -0.00

   21   4.1  1.5  0.5     724.39      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.29       2.33
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -2.77       0.00      -0.00

   22   5.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       1.25       0.00       0.00
                         -438.07       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.94      -1.92

   23   6.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00       2.04       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.82       0.00      -1.24      -0.00       0.00      -0.00

   24   7.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.06       0.00       3.20       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -1.36       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00    -351.64       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00      -0.00      -0.00    -351.64       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00     351.64      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   27  10.1  1.5  0.5      -0.00       0.00     351.64       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   28  11.1  1.5  0.5      -0.06      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -321.73    -168.62
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    1059.47       0.00       0.00

   29  12.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -426.55      -0.00      -0.00
                            1.36       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     320.41     651.73

   30  13.1  1.5  0.5      -3.20       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     481.56    -977.09
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00     251.34       0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00     426.55       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -1059.47       0.00    -251.34      -0.00       0.00      -0.00

   32  15.1  1.5  0.5       0.00      -0.00      -0.00      -0.00     321.73       0.00    -481.56      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -320.41      -0.00      -0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00     168.62       0.00     977.09       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -651.73      -0.00       0.00      -0.00      -0.00

   34  17.1  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00    -587.77      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00     -54.39      -0.00     360.46       0.00      -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           74.22      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.80       0.61

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.55      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -1.06       0.00       0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.15       0.00      -0.00       0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.84      -0.00      -0.66       0.00       0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          189.19      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -1.36       0.03

   41   7.1  1.5 -0.5       0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.40      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00    8876.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     175.82      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00    8876.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    8877.39       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -175.82       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00   12391.25       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     284.99      -0.00       0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   12391.36       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    -284.99      -0.00     225.03       0.00       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12391.02       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00    -225.03       0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12391.73       0.00       0.00
                            0.40      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     114.50     201.37

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12391.78       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -114.50       0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12395.08
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -201.37      -0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.49       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     522.43      55.14

   52   1.1  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00      -0.57       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -2.61       0.00      -0.32      -0.00       0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.92      -0.00       0.09       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -1.43      -0.00      -0.00       0.00       0.00

   54   3.1  1.5 -1.5     638.30      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -1.45       1.51
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -1.39       0.00      -0.00

   55   4.1  1.5 -1.5    -627.34       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.25      -2.02
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -2.40       0.00      -0.00

   56   5.1  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -1.09      -0.00      -0.00
                         -379.38       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.82      -1.66

   57   6.1  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00      -1.76      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.71       0.00      -1.07      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.05      -0.00      -2.77      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -1.18       0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00    -304.53       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   60   9.1  1.5 -1.5      -0.00       0.00      -0.00     304.53      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00     304.53       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00      -0.00    -304.53       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.05       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     278.63     146.03
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     917.53       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     369.40       0.00       0.00
                            1.18       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     277.49     564.42

   64  13.1  1.5 -1.5       2.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -417.04     846.18
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     217.67       0.00       0.00

   65  14.1  1.5 -1.5       0.00      -0.00       0.00      -0.00       0.00    -369.40      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -917.53       0.00    -217.67       0.00       0.00      -0.00

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00    -278.63      -0.00     417.04       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -277.49      -0.00      -0.00      -0.00       0.00

   67  16.1  1.5 -1.5      -0.00      -0.00      -0.00      -0.00    -146.03      -0.00    -846.18      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -564.42      -0.00       0.00      -0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00     509.03       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00     -47.10      -0.00     312.16       0.00      -0.00      -0.00

   69   1.1  0.5  0.5      -0.14      -0.00       0.00       0.00       3.05       0.05     -25.65      -0.01      -0.00       0.01
                           -0.08      -0.00      -0.00      -0.00       0.12       5.26      -0.03      -0.01       0.00       0.01

   70   2.1  0.5  0.5       0.46      -0.00      -0.00      -0.00      -0.02       6.03       0.19      -0.04       0.01      -0.03
                           -0.57      -0.00      -0.00      -0.00      16.36      -0.04      -3.84       0.01       0.03       0.06

   71   3.1  0.5  0.5      13.19      -0.00      -0.00      -0.00      -0.00      -0.01       0.01     -10.74       0.32      -0.98
                         -150.22       0.00       0.00      -0.00      -0.07      -0.00       0.01       0.67       8.07      16.41

   72   4.1  0.5  0.5     328.05       0.00       0.00      -0.00       0.00      -0.01      -0.01       0.43       7.93     -24.27
                            6.06       0.00       0.00       0.00      -0.02       0.00       0.00      16.38      -0.33      -0.66

   73   5.1  0.5  0.5       0.04       0.00       0.00      -0.00      -0.00     -17.28      -0.00      -0.01       0.00      -0.00
                           -0.07      -0.00      -0.00      -0.00      21.14       0.01      10.39      -0.01       0.00       0.01

   74   6.1  0.5  0.5      -0.04      -0.00       0.00       0.00      -8.63       0.01      -9.79      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.01      17.53      -0.00       0.01       0.00       0.00

   75   7.1  0.5  0.5    -134.16       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     -12.25       5.85
                            0.05       0.00      -0.00       0.00       0.01      -0.01       0.00      22.01      -0.00      -0.01

   76   8.1  0.5  0.5      -0.00    -111.32       1.75       0.08      -0.41      -0.79       0.00     -25.18      -0.02      -0.01
                         -361.71       0.08       4.27     464.68       0.24      -0.32      -0.97       0.00      80.09     -64.43

   77   9.1  0.5  0.5       0.01       1.10       5.31      -0.18      -1.25     -78.06       0.01       0.26       0.04       0.02
                            3.70      -0.18     420.20      -4.73      23.79      -0.99     -95.83      -0.00      -0.81       0.66

   78  10.1  0.5  0.5       0.00      -0.48    -420.22      -0.02      98.73      -0.99      -0.92      -0.10       0.01       0.00
                           -1.45      -0.02       5.33       1.88       0.30      78.06      -1.22      -0.00       0.33      -0.26

   79  11.1  0.5  0.5     -11.57       0.02      -0.02     420.27       0.01      -0.03      -0.00       0.00     -88.71     -43.38
                            0.07     420.27       0.18      -0.09       0.01       0.00      -0.04       3.09      -0.01       0.01

   80  12.1  0.5  0.5      -0.00    -472.34       0.03       0.00      -0.01       0.01       0.00      93.02      -0.00      -0.00
                           95.56       0.00      -0.03     139.75      -0.00      -0.00       0.01       0.00      60.05      53.78

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.57      -0.00      -0.00       0.00       0.01      -0.00      -0.01      -5.35       0.38       0.12

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           75.45      -0.00      -0.00       0.00       0.11       0.02      -0.09       0.04      49.83      16.15

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16       0.00      -0.00      -0.00      28.70       0.37     -22.66       0.00      -0.18      -0.07

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09      -0.00       0.00      -0.00      -1.16       9.45       0.91      -0.00      -0.06      -0.02

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -268.59      -0.00      -0.00       0.00       0.01       0.01      -0.01      -0.01     -20.58      13.50

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12      -0.00       0.00      -0.00       0.00      -0.01      -0.00     -22.73       0.00      -0.01

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05       0.00       0.00       0.00      -0.01     -35.36       0.01       0.01       0.01       0.01

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.71      -3.50     706.72      -8.53      10.55       0.03     186.03      -0.79       0.40      -1.96

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -759.48     -10.63      -7.26    -840.40      -0.12      -0.07      -1.90      -2.40      39.64    -193.45

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.64     840.43       2.81     -10.66       0.03      -0.01       0.75     189.57       0.50      -2.45

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.33       0.05      -0.13      -0.36      -0.00     156.12      -0.03       0.01       0.02      -0.08

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      -0.05    -665.18       0.06    -178.19       0.00     -42.21      -0.01      -0.00       0.01


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

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -1.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           54.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5     587.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -360.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00    -183.27      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00     502.44     683.20      -0.00      -0.00       0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00    -226.14    -196.35      -0.00       0.00      -0.00      -0.00       0.00
                           -1.47      -0.00      -0.00      -0.00       0.00     460.81       0.00      -0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00     226.14       0.00       0.00      -0.00      -0.00    -638.30       0.00      -0.00
                            0.00    -502.44       0.00      -0.00      -0.00       0.00      94.64       0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00      -0.00     196.35      -0.00       0.00       0.00      -0.00     627.34      -0.00       0.00
                            0.00    -683.20      -0.00       0.00      -0.00       0.00    -403.12       0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00     183.27       0.00       0.00      -0.00       0.00     568.05       0.00      -0.00      -0.00
                           -0.00       0.00    -460.81      -0.00      -0.00      -0.00      -0.00    -379.38       0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00    -568.05      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00     -94.64     403.12       0.00      -0.00       0.00      -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00     638.30    -627.34      -0.00       0.00       0.00      -0.00      -0.00
                            0.49      -0.00       0.00      -0.00      -0.00     379.38      -0.00       0.00      -0.00       0.00

   42   8.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    -304.53

   43   9.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     304.53      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     304.53
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00      -0.92       0.00      -0.00      -0.00       0.00      -0.05      -0.00      -0.00
                            0.00       2.61      -0.00      -0.00       0.00       0.00       0.71      -0.00       0.00       0.00

   46  12.1  1.5 -0.5       0.00      -0.57      -0.00      -0.00      -0.00       0.00      -1.76      -0.00      -0.00      -0.00
                            0.00      -0.00       1.43       0.00      -0.00       0.00      -0.00       1.18       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.09      -0.00      -0.00       0.00      -0.00      -2.77       0.00       0.00
                            0.00       0.32       0.00      -0.00       0.00      -0.00       1.07      -0.00       0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00      -1.09       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       1.39       2.40       0.00       0.00      -0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00      -0.00      -0.00      -1.45       0.25      -0.00      -0.00       0.00      -0.00      -0.00
                         -522.43      -0.00      -0.00      -0.00      -0.00       0.82      -0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00      -0.00       1.51      -2.02      -0.00       0.00       0.00       0.00       0.00
                          -55.14       0.00      -0.00       0.00       0.00       1.66       0.00      -0.00      -0.00       0.00

   51  17.1  1.5 -0.5   12395.08      -0.00      -0.00      -0.00      -0.00       1.50       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.76      -0.53      -0.00       0.00       0.00       0.00       0.00

   52   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     947.87       0.00      -0.00       0.00       0.00     222.65      -0.00       0.00

   53   2.1  1.5 -1.5      -0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -947.87      -0.00      -0.00      -0.00       0.00    1183.99       0.00      -0.00       0.00

   54   3.1  1.5 -1.5      -0.00       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.76      -0.00       0.00       0.00      -0.00    1023.00       0.00       0.00      -0.00       0.00

   55   4.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.36       0.00       0.00       0.00       0.00       0.00
                            0.53       0.00       0.00       0.00       0.00     149.29      -0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5       1.50       0.00       0.00       0.00       0.00       0.17       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1023.00    -149.29       0.00       0.00      -0.00       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.29       0.00       0.00       0.00
                           -0.00      -0.00   -1183.99      -0.00       0.00      -0.00      -0.00     567.57      -0.00       0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.23       0.00       0.00
                           -0.00    -222.65      -0.00      -0.00      -0.00       0.00    -567.57       0.00       0.00       0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8876.98       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8876.92
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -527.46       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           47.10       0.00      -0.00      -0.00       0.00      -2.52      -0.00       0.00       0.00      -0.00

   63  12.1  1.5 -1.5    -509.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       3.18       0.46       0.00       0.00      -0.00       0.00       0.00

   64  13.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -312.16      -0.00      -0.00      -0.00      -0.00       1.99       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       1.66      -0.00       0.00      -0.00       0.00       1.20      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.39       0.00      -0.00      -0.00      -0.00       4.07       0.00       0.00      -0.00

   67  16.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.84      -0.00      -0.00      -0.00      -0.00      -0.09       0.00      -0.00      -0.00

   68  17.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.40      -0.00      -0.00       0.00      -0.00      -1.46       0.00       0.00

   69   1.1  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5      14.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5      -0.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.79      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      75.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5      -0.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5       0.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           98.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5      45.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5 -0.5       0.00       0.06      -0.03     464.05    -344.87       1.03       0.20      -0.24      -0.00       0.00
                           34.81       0.12      -0.16       2.39       1.58     117.70       0.12      -0.13      -0.00      -0.00

   82   2.1  0.5 -0.5       0.00       0.48       0.02      -3.53       2.58     134.93       1.47       0.79      -0.00      -0.00
                           -0.27      -0.23      -1.20     314.21     207.02      -0.84      -0.34      -0.98      -0.00      -0.00

   83   3.1  0.5 -0.5       0.00     125.69       2.59      -0.22       0.16      -0.33     389.59      22.84      -0.00      -0.00
                           -0.02     -12.04    -316.04      -1.28      -1.03      -0.06     -11.30    -260.19       0.00       0.00

   84   4.1  0.5 -0.5       0.00      -5.07      62.44       0.21      -0.15      -0.16     -15.72     568.20       0.00       0.00
                            0.02    -294.31      12.75      -0.35      -0.22       0.05    -279.63      10.50       0.00       0.00

   85   5.1  0.5 -0.5       0.00       0.06      -0.06       0.01      -0.14    -386.84       0.18       0.07       0.00       0.00
                           -0.02       0.14      -0.15     156.27     503.60       0.18       0.01      -0.12      -0.00      -0.00

   86   6.1  0.5 -0.5       0.00       0.00       0.06      26.44    -290.92       0.16       0.01      -0.07      -0.00       0.00
                          -39.90      -0.16      -0.00      -0.12      -0.27     392.43      -0.02      -0.00       0.00       0.00

   87   7.1  0.5 -0.5       0.00      -0.04     195.84      -0.01       0.09      -0.07      -0.13    -232.37       0.00      -0.00
                            0.01    -502.09       0.11       0.14       0.21      -0.13     -49.64       0.09       0.00      -0.00

   88   8.1  0.5 -0.5       0.00      -3.15      -0.12       1.95       2.02       5.41    -544.32      -0.00    -192.82       3.03
                            0.23       0.04     316.89      -5.96       3.37       2.22      -0.11    -626.50       0.13       7.39

   89   9.1  0.5 -0.5       0.00       0.08       0.29       5.92       6.14     533.18       5.55       0.01       1.91       9.20
                            0.70      -0.10      -3.20    -587.23     331.68       6.74       0.28       6.40      -0.32     727.80

   90  10.1  0.5 -0.5       0.00       0.03       0.04    -467.97    -485.69       6.76      -2.20       0.00      -0.83    -727.83
                          -55.33      -0.01       1.31      -7.45       4.21    -533.20       0.04      -2.51      -0.04       9.23

   91  11.1  0.5 -0.5       0.00       0.00    -674.24      -0.03      -0.03       0.23       0.10     -20.05       0.04      -0.04
                           -0.00     229.38      -0.06      -0.25       0.14      -0.03    -634.34       0.12     727.92       0.32

   92  12.1  0.5 -0.5       0.00     700.31      -0.00       0.03       0.03      -0.04     -97.38      -0.00    -818.12       0.04
                            0.00       0.00     525.21       0.04      -0.02       0.03      -0.00     165.52       0.00      -0.05


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.06       0.48
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.12      -0.23

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03       0.02
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.16      -1.20

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     464.05      -3.53
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.39     314.21

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -344.87       2.58
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.58     207.02

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.03     134.93
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     117.70      -0.84

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.20       1.47
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.12      -0.34

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.24       0.79
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.13      -0.98

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.28      -0.04
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.22      28.34

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.08      10.44
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.11      -0.06

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -44.42       0.34
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.05      -6.66

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.02

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.02
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.05

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02      -0.06
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.11

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.10
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.02

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      73.92      -0.63

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.12     672.77

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.24      -1.77

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.26

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.05      -0.29

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -449.15       3.47

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.57     -75.45

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.11

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.09

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.35      -0.04

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.38     -49.83

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.12     -16.15

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -34.81       0.27

   35   1.1  1.5 -0.5      -0.00      -0.00       0.57      -0.00      -0.00       0.00      -0.00       0.00       0.04       0.27
                            0.00      -2.61       0.00      -0.32      -0.00       0.00      -0.00      -0.00      -0.07       0.13

   36   2.1  1.5 -0.5      -0.00       0.92       0.00      -0.09      -0.00       0.00       0.00       0.00      -0.02       0.01
                            0.00       0.00      -1.43      -0.00      -0.00       0.00       0.00      -0.00       0.09       0.69

   37   3.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       1.45      -1.51       0.00     267.92      -2.04
                           -0.00       0.00      -0.00       0.00      -1.39       0.00      -0.00      -0.76      -1.38    -181.41

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.25       2.02       0.00    -199.11       1.49
                           -0.00      -0.00       0.00      -0.00      -2.40       0.00      -0.00       0.53      -0.91    -119.52

   39   5.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       1.09       0.00       0.00      -1.50       0.59      77.90
                            0.00      -0.00      -0.00       0.00      -0.00      -0.82      -1.66       0.00     -67.95       0.48

   40   6.1  1.5 -0.5      -0.00      -0.00       1.76       0.00      -0.00       0.00      -0.00      -0.00       0.11       0.85
                            0.00      -0.71       0.00      -1.07      -0.00       0.00      -0.00      -0.00      -0.07       0.20

   41   7.1  1.5 -0.5       0.00       0.05       0.00       2.77       0.00      -0.00      -0.00       0.00      -0.14       0.46
                            0.00       0.00      -1.18       0.00       0.00       0.00       0.00      -0.00       0.08       0.57

   42   8.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   43   9.1  1.5 -0.5    -304.53       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00    -278.63    -146.03      -0.00       3.05      -0.02
                           -0.00       0.00      -0.00      -0.00     917.53       0.00       0.00      47.10      -0.12     -16.36

   46  12.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00    -369.40      -0.00      -0.00     509.03       0.05       6.03
                            0.00       0.00       0.00       0.00      -0.00     277.49     564.42       0.00      -5.26       0.04

   47  13.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00     417.04    -846.18       0.00     -25.65       0.19
                            0.00       0.00      -0.00       0.00     217.67       0.00       0.00    -312.16       0.03       3.84

   48  14.1  1.5 -0.5       0.00      -0.00     369.40       0.00       0.00       0.00      -0.00      -0.00      -0.01      -0.04
                            0.00    -917.53       0.00    -217.67      -0.00       0.00      -0.00      -0.00       0.01      -0.01

   49  15.1  1.5 -0.5      -0.00     278.63       0.00    -417.04      -0.00       0.00       0.00      -0.00      -0.00       0.01
                           -0.00      -0.00    -277.49      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.03

   50  16.1  1.5 -0.5       0.00     146.03       0.00     846.18       0.00      -0.00      -0.00       0.00       0.01      -0.03
                           -0.00      -0.00    -564.42      -0.00       0.00      -0.00      -0.00       0.00      -0.01      -0.06

   51  17.1  1.5 -0.5       0.00       0.00    -509.03      -0.00       0.00       0.00      -0.00      -0.00       0.01       0.06
                            0.00     -47.10      -0.00     312.16       0.00      -0.00      -0.00       0.00      -0.00       0.01

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       2.39       1.84      -0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -1.66      -0.00       0.00      -4.40       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -3.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.46       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.52      -0.00      -1.99       0.00       0.00       0.00      -0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -4.07       0.09       0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -1.20      -0.00      -0.00       1.46       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          527.46      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5    8877.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00   12391.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     854.96      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00   12391.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -854.96      -0.00     675.09       0.00       0.00      -0.00       0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00   12391.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -675.09       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00   12391.73       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     343.51     604.12       0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   12391.78       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -343.51       0.00       0.00   -1567.29       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   12395.08       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -604.12      -0.00       0.00    -165.41       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12395.08       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1567.29     165.41       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5418.84       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -469.20

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5418.85
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     469.20       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.51      -0.17

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.45       0.46

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -445.93       3.80

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       6.54     840.61

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.32      -2.73

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.32       1.36

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     445.38      -1.15

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.32    -174.01

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.41       1.63

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.10      -0.25

   81   1.1  0.5 -0.5       0.00       5.28       0.08     -44.42      -0.01      -0.01       0.02       0.01       0.00       1.29
                           -0.00       0.22       9.11      -0.05      -0.01       0.01       0.01       0.01       0.00       0.78

   82   2.1  0.5 -0.5      -0.00      -0.04      10.44       0.34      -0.07       0.02      -0.06       0.10      -1.29       0.00
                           -0.00      28.34      -0.06      -6.66       0.02       0.05       0.11      -0.02      -0.78      -0.00

   83   3.1  0.5 -0.5      -0.00      -0.00      -0.03       0.02     -18.60       0.55      -1.69      25.63     -31.25     221.62
                           -0.00      -0.13      -0.00       0.02       1.16      13.97      28.42      -0.54    -193.13      -3.20

   84   4.1  0.5 -0.5      -0.00       0.00      -0.01      -0.02       0.75      13.73     -42.04      -1.03    -820.66      -2.75
                            0.00      -0.03       0.00       0.01      28.36      -0.56      -1.15     -13.50       6.96    -108.41

   85   5.1  0.5 -0.5      -0.00      -0.01     -29.93      -0.01      -0.01       0.01      -0.00       0.01       0.19       2.51
                           -0.00      36.62       0.01      17.99      -0.01       0.01       0.01      -0.00      -0.37       0.85

   86   6.1  0.5 -0.5       0.00     -14.95       0.01     -16.95      -0.00      -0.01       0.00       0.00      -0.04       0.54
                            0.00      -0.02      30.36      -0.01       0.01       0.00       0.00       0.00       0.32       2.24

   87   7.1  0.5 -0.5       0.00       0.00      -0.01       0.01       0.01     -21.22      10.13      -0.01     476.26      -3.72
                            0.00       0.02      -0.01       0.00      38.12      -0.00      -0.01       8.41      -4.56    -608.26

   88   8.1  0.5 -0.5       0.13      -0.71      -1.37       0.01     -43.61      -0.03      -0.01     130.96       2.05     264.50
                          804.85       0.42      -0.56      -1.68       0.00     138.72    -111.59       0.03     568.35      -4.43

   89   9.1  0.5 -0.5      -0.32      -2.16    -135.20       0.02       0.46       0.07       0.03      -1.33       0.11      -1.02
                           -8.19      41.21      -1.71    -165.97      -0.00      -1.41       1.15      -0.07      -5.62      -0.43

   90  10.1  0.5 -0.5      -0.04     171.01      -1.72      -1.59      -0.17       0.01       0.00       0.53       0.09       1.00
                            3.26       0.52     135.20      -2.11      -0.00       0.57      -0.44      -0.01       2.52       1.64

   91  11.1  0.5 -0.5     727.92       0.01      -0.06      -0.00       0.01    -153.64     -75.13      -0.02     196.77      -1.62
                           -0.15       0.02       0.01      -0.07       5.35      -0.03       0.02     170.95      -3.60    -459.06

   92  12.1  0.5 -0.5       0.00      -0.01       0.01       0.00     161.12      -0.00      -0.00      78.60       3.81     500.92
                          242.06      -0.00      -0.01       0.01       0.00     104.01      93.15       0.00      41.10      -0.38


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5     125.69      -5.07       0.06       0.00      -0.04      -3.15       0.08       0.03       0.00     700.31
                          -12.04    -294.31       0.14      -0.16    -502.09       0.04      -0.10      -0.01     229.38       0.00

    2   2.1  1.5  1.5       2.59      62.44      -0.06       0.06     195.84      -0.12       0.29       0.04    -674.24      -0.00
                         -316.04      12.75      -0.15      -0.00       0.11     316.89      -3.20       1.31      -0.06     525.21

    3   3.1  1.5  1.5      -0.22       0.21       0.01      26.44      -0.01       1.95       5.92    -467.97      -0.03       0.03
                           -1.28      -0.35     156.27      -0.12       0.14      -5.96    -587.23      -7.45      -0.25       0.04

    4   4.1  1.5  1.5       0.16      -0.15      -0.14    -290.92       0.09       2.02       6.14    -485.69      -0.03       0.03
                           -1.03      -0.22     503.60      -0.27       0.21       3.37     331.68       4.21       0.14      -0.02

    5   5.1  1.5  1.5      -0.33      -0.16    -386.84       0.16      -0.07       5.41     533.18       6.76       0.23      -0.04
                           -0.06       0.05       0.18     392.43      -0.13       2.22       6.74    -533.20      -0.03       0.03

    6   6.1  1.5  1.5     389.59     -15.72       0.18       0.01      -0.13    -544.32       5.55      -2.20       0.10     -97.38
                          -11.30    -279.63       0.01      -0.02     -49.64      -0.11       0.28       0.04    -634.34      -0.00

    7   7.1  1.5  1.5      22.84     568.20       0.07      -0.07    -232.37      -0.00       0.01       0.00     -20.05      -0.00
                         -260.19      10.50      -0.12      -0.00       0.09    -626.50       6.40      -2.51       0.12     165.52

    8   8.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00    -192.82       1.91      -0.83       0.04    -818.12
                            0.00       0.00      -0.00       0.00       0.00       0.13      -0.32      -0.04     727.92       0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00       0.00      -0.00       3.03       9.20    -727.83      -0.04       0.04
                            0.00       0.00      -0.00       0.00      -0.00       7.39     727.80       9.23       0.32      -0.05

   10  10.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.13      -0.32      -0.04     727.92       0.00
                           -0.00       0.00      -0.00       0.00       0.00     804.85      -8.19       3.26      -0.15     242.06

   11  11.1  1.5  1.5      -0.00       0.00      -0.01     -14.95       0.00      -0.71      -2.16     171.01       0.01      -0.01
                           -0.13      -0.03      36.62      -0.02       0.02       0.42      41.21       0.52       0.02      -0.00

   12  12.1  1.5  1.5      -0.03      -0.01     -29.93       0.01      -0.01      -1.37    -135.20      -1.72      -0.06       0.01
                           -0.00       0.00       0.01      30.36      -0.01      -0.56      -1.71     135.20       0.01      -0.01

   13  13.1  1.5  1.5       0.02      -0.02      -0.01     -16.95       0.01       0.01       0.02      -1.59      -0.00       0.00
                            0.02       0.01      17.99      -0.01       0.00      -1.68    -165.97      -2.11      -0.07       0.01

   14  14.1  1.5  1.5     -18.60       0.75      -0.01      -0.00       0.01     -43.61       0.46      -0.17       0.01     161.12
                            1.16      28.36      -0.01       0.01      38.12       0.00      -0.00      -0.00       5.35       0.00

   15  15.1  1.5  1.5       0.55      13.73       0.01      -0.01     -21.22      -0.03       0.07       0.01    -153.64      -0.00
                           13.97      -0.56       0.01       0.00      -0.00     138.72      -1.41       0.57      -0.03     104.01

   16  16.1  1.5  1.5      -1.69     -42.04      -0.00       0.00      10.13      -0.01       0.03       0.00     -75.13      -0.00
                           28.42      -1.15       0.01       0.00      -0.01    -111.59       1.15      -0.44       0.02      93.15

   17  17.1  1.5  1.5      25.63      -1.03       0.01       0.00      -0.01     130.96      -1.33       0.53      -0.02      78.60
                           -0.54     -13.50      -0.00       0.00       8.41       0.03      -0.07      -0.01     170.95       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.04      -0.21    -439.38       0.14       2.67       8.13    -642.92      -0.03       0.04

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.50      -0.75    -170.37      -0.02       0.15       1.75     172.20       2.18       0.07      -0.01

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -467.74      18.87      -0.22      -0.01       0.16    -504.42       5.12      -2.06       0.09    -361.94

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.26       2.75      -0.03      -0.00       0.02     534.31      -5.50       2.11      -0.10    -625.02

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.77    -122.09      -0.13       0.15     457.03       0.11      -0.27      -0.04     615.76       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20      -0.20       0.19     399.06      -0.13       1.83       5.56    -439.52      -0.02       0.03

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.16       0.09     268.59      -0.12       0.05       7.71     759.48       9.64       0.33      -0.05

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       3.50      10.63    -840.43      -0.05       0.05

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -706.72       7.26      -2.81       0.13     665.18

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       8.53     840.40      10.66       0.36      -0.06

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.70       1.16      -0.01      -0.00       0.01     -10.55       0.12      -0.03       0.00     178.19

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37      -9.45      -0.01       0.01      35.36      -0.03       0.07       0.01    -156.12      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.66      -0.91       0.01       0.00      -0.01    -186.03       1.90      -0.75       0.03      42.21

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01      22.73      -0.01       0.79       2.40    -189.57      -0.01       0.01

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18       0.06      20.58      -0.00      -0.01      -0.40     -39.64      -0.50      -0.02       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07       0.02     -13.50       0.01      -0.01       1.96     193.45       2.45       0.08      -0.01

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.02       0.02      39.90      -0.01      -0.23      -0.70      55.33       0.00      -0.00

   35   1.1  1.5 -0.5      72.57      -2.93       0.03       0.00      -0.02      -1.82       0.05       0.02       0.00     404.32
                            6.95     169.92      -0.08       0.09     289.88      -0.02       0.06       0.01    -132.43      -0.00

   36   2.1  1.5 -0.5       1.49      36.05      -0.03       0.04     113.07      -0.07       0.17       0.02    -389.27      -0.00
                          182.46      -7.36       0.09       0.00      -0.06    -182.96       1.84      -0.76       0.03    -303.23

   37   3.1  1.5 -0.5      -0.12       0.12       0.01      15.26      -0.00       1.12       3.42    -270.18      -0.01       0.02
                            0.74       0.20     -90.22       0.07      -0.08       3.44     339.04       4.30       0.15      -0.02

   38   4.1  1.5 -0.5       0.09      -0.09      -0.08    -167.97       0.05       1.17       3.55    -280.41      -0.02       0.02
                            0.60       0.13    -290.76       0.15      -0.12      -1.94    -191.49      -2.43      -0.08       0.01

   39   5.1  1.5 -0.5      -0.19      -0.09    -223.34       0.09      -0.04       3.12     307.83       3.91       0.13      -0.02
                            0.03      -0.03      -0.11    -226.57       0.07      -1.28      -3.89     307.84       0.02      -0.02

   40   6.1  1.5 -0.5     224.93      -9.07       0.11       0.00      -0.08    -314.26       3.20      -1.27       0.06     -56.22
                            6.52     161.44      -0.01       0.01      28.66       0.07      -0.16      -0.02     366.23       0.00

   41   7.1  1.5 -0.5      13.19     328.05       0.04      -0.04    -134.16      -0.00       0.01       0.00     -11.57      -0.00
                          150.22      -6.06       0.07       0.00      -0.05     361.71      -3.70       1.45      -0.07     -95.56

   42   8.1  1.5 -0.5      -0.00       0.00       0.00      -0.00       0.00    -111.32       1.10      -0.48       0.02    -472.34
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.08       0.18       0.02    -420.27      -0.00

   43   9.1  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.00       1.75       5.31    -420.22      -0.02       0.03
                           -0.00      -0.00       0.00      -0.00       0.00      -4.27    -420.20      -5.33      -0.18       0.03

   44  10.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.08      -0.18      -0.02     420.27       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -464.68       4.73      -1.88       0.09    -139.75

   45  11.1  1.5 -0.5      -0.00       0.00      -0.00      -8.63       0.00      -0.41      -1.25      98.73       0.01      -0.01
                            0.07       0.02     -21.14       0.01      -0.01      -0.24     -23.79      -0.30      -0.01       0.00

   46  12.1  1.5 -0.5      -0.01      -0.01     -17.28       0.01      -0.00      -0.79     -78.06      -0.99      -0.03       0.01
                            0.00      -0.00      -0.01     -17.53       0.01       0.32       0.99     -78.06      -0.00       0.00

   47  13.1  1.5 -0.5       0.01      -0.01      -0.00      -9.79       0.00       0.00       0.01      -0.92      -0.00       0.00
                           -0.01      -0.00     -10.39       0.00      -0.00       0.97      95.83       1.22       0.04      -0.01

   48  14.1  1.5 -0.5     -10.74       0.43      -0.01      -0.00       0.00     -25.18       0.26      -0.10       0.00      93.02
                           -0.67     -16.38       0.01      -0.01     -22.01      -0.00       0.00       0.00      -3.09      -0.00

   49  15.1  1.5 -0.5       0.32       7.93       0.00      -0.00     -12.25      -0.02       0.04       0.01     -88.71      -0.00
                           -8.07       0.33      -0.00      -0.00       0.00     -80.09       0.81      -0.33       0.01     -60.05

   50  16.1  1.5 -0.5      -0.98     -24.27      -0.00       0.00       5.85      -0.01       0.02       0.00     -43.38      -0.00
                          -16.41       0.66      -0.01      -0.00       0.01      64.43      -0.66       0.26      -0.01     -53.78

   51  17.1  1.5 -0.5      14.80      -0.60       0.01       0.00      -0.01      75.61      -0.77       0.31      -0.01      45.38
                            0.31       7.79       0.00      -0.00      -4.85      -0.02       0.04       0.01     -98.70      -0.00

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
                            1.51       0.45     445.93      -6.54       0.32      -4.32    -445.38      -4.32      -0.41      -0.10

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.17      -0.46      -3.80    -840.61       2.73      -1.36       1.15     174.01      -1.63       0.25

   71   3.1  0.5  0.5    5418.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -173.74      -0.39       3.39     649.37     -19.56       0.61      -0.96    -432.44      12.35

   72   4.1  0.5  0.5       0.00    5418.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          173.74      -0.00       0.29       0.93     -26.26    -484.66       4.76      -2.12      17.53     302.80

   73   5.1  0.5  0.5       0.00       0.00    5419.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.39      -0.29       0.00      75.57       0.28      -2.21      -6.71     518.99      -0.18      -0.15

   74   6.1  0.5  0.5       0.00       0.00       0.00    5419.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.39      -0.93     -75.57       0.00       0.23      -3.18    -318.19      -4.30      -0.14       0.16

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5419.35       0.00       0.00       0.00       0.00       0.00
                         -649.37      26.26      -0.28      -0.23       0.00     177.33      -1.68       0.94       0.11     407.25

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    8472.98       0.00       0.00       0.00       0.00
                           19.56     484.66       2.21       3.18    -177.33      -0.00      -0.19      -0.43      57.48      -0.01

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    8472.82       0.00       0.00       0.00
                           -0.61      -4.76       6.71     318.19       1.68       0.19       0.00     -41.95      -0.58       0.03

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8472.86       0.00       0.00
                            0.96       2.12    -518.99       4.30      -0.94       0.43      41.95       0.00       0.25       0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8476.38       0.00
                          432.44     -17.53       0.18       0.14      -0.11     -57.48       0.58      -0.25       0.00     -61.06

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8476.93
                          -12.35    -302.80       0.15      -0.16    -407.25       0.01      -0.03      -0.00      61.06      -0.00

   81   1.1  0.5 -0.5      31.25     820.66      -0.19       0.04    -476.26      -2.05      -0.11      -0.09    -196.77      -3.81
                          193.13      -6.96       0.37      -0.32       4.56    -568.35       5.62      -2.52       3.60     -41.10

   82   2.1  0.5 -0.5    -221.62       2.75      -2.51      -0.54       3.72    -264.50       1.02      -1.00       1.62    -500.92
                            3.20     108.41      -0.85      -2.24     608.26       4.43       0.43      -1.64     459.06       0.38

   83   3.1  0.5 -0.5      -0.00      -0.68    -634.68     -18.16       0.11      -3.58    -432.49       3.24      -0.10       2.08
                            0.00      -0.80     -27.02    -643.83      -2.40       2.24      22.91    -432.17      -1.63       0.04

   84   4.1  0.5 -0.5       0.68       0.00      25.39    -455.63      -0.06      -0.40      14.76     212.11      -0.07       0.54
                            0.80       0.00    -657.73      26.30      -0.90       4.09     435.01      22.96      -0.33      -0.05

   85   5.1  0.5 -0.5     634.68     -25.39       0.00       0.05      -0.15     353.85      -3.83       1.26       0.17    -279.89
                           27.02     657.73      -0.00      -0.12     562.41      -0.03       0.23      -0.19    -298.24       0.21

   86   6.1  0.5 -0.5      18.16     455.63      -0.05      -0.00     148.85      -0.04      -0.23       0.13     510.86       0.20
                          643.83     -26.30       0.12       0.00      -0.57      40.36      -0.48       0.18       0.07     445.03

   87   7.1  0.5 -0.5      -0.11       0.06       0.15    -148.85      -0.00      -2.07      -6.23     504.64      -0.14      -0.26
                            2.40       0.90    -562.41       0.57       0.00      -3.38    -331.48      -4.06      -0.09      -0.12

   88   8.1  0.5 -0.5       3.58       0.40    -353.85       0.04       2.07      -0.00     -81.66      -1.02       0.14      -0.19
                           -2.24      -4.09       0.03     -40.36       3.38      -0.00      -0.31      24.16       0.43      -0.34

   89   9.1  0.5 -0.5     432.49     -14.76       3.83       0.23       6.23      81.66       0.00       0.32       0.52     -19.24
                          -22.91    -435.01      -0.23       0.48     331.48       0.31      -0.00      -0.25      41.94      -1.02

   90  10.1  0.5 -0.5      -3.24    -212.11      -1.26      -0.13    -504.64       1.02      -0.32      -0.00     -41.94      -0.24
                          432.17     -22.96       0.19      -0.18       4.06     -24.16       0.25      -0.00       0.54      80.32

   91  11.1  0.5 -0.5       0.10       0.07      -0.17    -510.86       0.14      -0.14      -0.52      41.94       0.00      -0.01
                            1.63       0.33     298.24      -0.07       0.09      -0.43     -41.94      -0.54      -0.00       0.01

   92  12.1  0.5 -0.5      -2.08      -0.54     279.89      -0.20       0.26       0.19      19.24       0.24       0.01      -0.00
                           -0.04       0.05      -0.21    -445.03       0.12       0.34       1.02     -80.32      -0.01      -0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

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

   18   1.1  1.5  0.5       0.04       0.27      72.57      -2.93       0.03       0.00      -0.02      -1.82       0.05       0.02
                            0.07      -0.13      -6.95    -169.92       0.08      -0.09    -289.88       0.02      -0.06      -0.01

   19   2.1  1.5  0.5      -0.02       0.01       1.49      36.05      -0.03       0.04     113.07      -0.07       0.17       0.02
                           -0.09      -0.69    -182.46       7.36      -0.09      -0.00       0.06     182.96      -1.84       0.76

   20   3.1  1.5  0.5     267.92      -2.04      -0.12       0.12       0.01      15.26      -0.00       1.12       3.42    -270.18
                            1.38     181.41      -0.74      -0.20      90.22      -0.07       0.08      -3.44    -339.04      -4.30

   21   4.1  1.5  0.5    -199.11       1.49       0.09      -0.09      -0.08    -167.97       0.05       1.17       3.55    -280.41
                            0.91     119.52      -0.60      -0.13     290.76      -0.15       0.12       1.94     191.49       2.43

   22   5.1  1.5  0.5       0.59      77.90      -0.19      -0.09    -223.34       0.09      -0.04       3.12     307.83       3.91
                           67.95      -0.48      -0.03       0.03       0.11     226.57      -0.07       1.28       3.89    -307.84

   23   6.1  1.5  0.5       0.11       0.85     224.93      -9.07       0.11       0.00      -0.08    -314.26       3.20      -1.27
                            0.07      -0.20      -6.52    -161.44       0.01      -0.01     -28.66      -0.07       0.16       0.02

   24   7.1  1.5  0.5      -0.14       0.46      13.19     328.05       0.04      -0.04    -134.16      -0.00       0.01       0.00
                           -0.08      -0.57    -150.22       6.06      -0.07      -0.00       0.05    -361.71       3.70      -1.45

   25   8.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -111.32       1.10      -0.48
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.08      -0.18      -0.02

   26   9.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       1.75       5.31    -420.22
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       4.27     420.20       5.33

   27  10.1  1.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.08      -0.18      -0.02
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     464.68      -4.73       1.88

   28  11.1  1.5  0.5       3.05      -0.02      -0.00       0.00      -0.00      -8.63       0.00      -0.41      -1.25      98.73
                            0.12      16.36      -0.07      -0.02      21.14      -0.01       0.01       0.24      23.79       0.30

   29  12.1  1.5  0.5       0.05       6.03      -0.01      -0.01     -17.28       0.01      -0.00      -0.79     -78.06      -0.99
                            5.26      -0.04      -0.00       0.00       0.01      17.53      -0.01      -0.32      -0.99      78.06

   30  13.1  1.5  0.5     -25.65       0.19       0.01      -0.01      -0.00      -9.79       0.00       0.00       0.01      -0.92
                           -0.03      -3.84       0.01       0.00      10.39      -0.00       0.00      -0.97     -95.83      -1.22

   31  14.1  1.5  0.5      -0.01      -0.04     -10.74       0.43      -0.01      -0.00       0.00     -25.18       0.26      -0.10
                           -0.01       0.01       0.67      16.38      -0.01       0.01      22.01       0.00      -0.00      -0.00

   32  15.1  1.5  0.5      -0.00       0.01       0.32       7.93       0.00      -0.00     -12.25      -0.02       0.04       0.01
                            0.00       0.03       8.07      -0.33       0.00       0.00      -0.00      80.09      -0.81       0.33

   33  16.1  1.5  0.5       0.01      -0.03      -0.98     -24.27      -0.00       0.00       5.85      -0.01       0.02       0.00
                            0.01       0.06      16.41      -0.66       0.01       0.00      -0.01     -64.43       0.66      -0.26

   34  17.1  1.5  0.5       0.01       0.06      14.80      -0.60       0.01       0.00      -0.01      75.61      -0.77       0.31
                            0.00      -0.01      -0.31      -7.79      -0.00       0.00       4.85       0.02      -0.04      -0.01

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           73.92      -0.63      -0.03       0.04      -0.21    -439.38       0.14       2.67       8.13    -642.92

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.12     672.77      -2.50      -0.75    -170.37      -0.02       0.15       1.75     172.20       2.18

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24      -1.77    -467.74      18.87      -0.22      -0.01       0.16    -504.42       5.12      -2.06

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.26     -68.26       2.75      -0.03      -0.00       0.02     534.31      -5.50       2.11

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      -0.29      -4.77    -122.09      -0.13       0.15     457.03       0.11      -0.27      -0.04

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -449.15       3.47       0.20      -0.20       0.19     399.06      -0.13       1.83       5.56    -439.52

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.57     -75.45       0.16       0.09     268.59      -0.12       0.05       7.71     759.48       9.64

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       3.50      10.63    -840.43

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -706.72       7.26      -2.81

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       8.53     840.40      10.66

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.11     -28.70       1.16      -0.01      -0.00       0.01     -10.55       0.12      -0.03

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.02      -0.37      -9.45      -0.01       0.01      35.36      -0.03       0.07       0.01

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.09      22.66      -0.91       0.01       0.00      -0.01    -186.03       1.90      -0.75

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.35      -0.04      -0.00       0.00       0.01      22.73      -0.01       0.79       2.40    -189.57

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.38     -49.83       0.18       0.06      20.58      -0.00      -0.01      -0.40     -39.64      -0.50

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12     -16.15       0.07       0.02     -13.50       0.01      -0.01       1.96     193.45       2.45

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.81       0.27       0.02      -0.02       0.02      39.90      -0.01      -0.23      -0.70      55.33

   52   1.1  1.5 -1.5       0.06       0.48     125.69      -5.07       0.06       0.00      -0.04      -3.15       0.08       0.03
                           -0.12       0.23      12.04     294.31      -0.14       0.16     502.09      -0.04       0.10       0.01

   53   2.1  1.5 -1.5      -0.03       0.02       2.59      62.44      -0.06       0.06     195.84      -0.12       0.29       0.04
                            0.16       1.20     316.04     -12.75       0.15       0.00      -0.11    -316.89       3.20      -1.31

   54   3.1  1.5 -1.5     464.05      -3.53      -0.22       0.21       0.01      26.44      -0.01       1.95       5.92    -467.97
                           -2.39    -314.21       1.28       0.35    -156.27       0.12      -0.14       5.96     587.23       7.45

   55   4.1  1.5 -1.5    -344.87       2.58       0.16      -0.15      -0.14    -290.92       0.09       2.02       6.14    -485.69
                           -1.58    -207.02       1.03       0.22    -503.60       0.27      -0.21      -3.37    -331.68      -4.21

   56   5.1  1.5 -1.5       1.03     134.93      -0.33      -0.16    -386.84       0.16      -0.07       5.41     533.18       6.76
                         -117.70       0.84       0.06      -0.05      -0.18    -392.43       0.13      -2.22      -6.74     533.20

   57   6.1  1.5 -1.5       0.20       1.47     389.59     -15.72       0.18       0.01      -0.13    -544.32       5.55      -2.20
                           -0.12       0.34      11.30     279.63      -0.01       0.02      49.64       0.11      -0.28      -0.04

   58   7.1  1.5 -1.5      -0.24       0.79      22.84     568.20       0.07      -0.07    -232.37      -0.00       0.01       0.00
                            0.13       0.98     260.19     -10.50       0.12       0.00      -0.09     626.50      -6.40       2.51

   59   8.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -192.82       1.91      -0.83
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.13       0.32       0.04

   60   9.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       3.03       9.20    -727.83
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -7.39    -727.80      -9.23

   61  10.1  1.5 -1.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.13      -0.32      -0.04
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -804.85       8.19      -3.26

   62  11.1  1.5 -1.5       5.28      -0.04      -0.00       0.00      -0.01     -14.95       0.00      -0.71      -2.16     171.01
                           -0.22     -28.34       0.13       0.03     -36.62       0.02      -0.02      -0.42     -41.21      -0.52

   63  12.1  1.5 -1.5       0.08      10.44      -0.03      -0.01     -29.93       0.01      -0.01      -1.37    -135.20      -1.72
                           -9.11       0.06       0.00      -0.00      -0.01     -30.36       0.01       0.56       1.71    -135.20

   64  13.1  1.5 -1.5     -44.42       0.34       0.02      -0.02      -0.01     -16.95       0.01       0.01       0.02      -1.59
                            0.05       6.66      -0.02      -0.01     -17.99       0.01      -0.00       1.68     165.97       2.11

   65  14.1  1.5 -1.5      -0.01      -0.07     -18.60       0.75      -0.01      -0.00       0.01     -43.61       0.46      -0.17
                            0.01      -0.02      -1.16     -28.36       0.01      -0.01     -38.12      -0.00       0.00       0.00

   66  15.1  1.5 -1.5      -0.01       0.02       0.55      13.73       0.01      -0.01     -21.22      -0.03       0.07       0.01
                           -0.01      -0.05     -13.97       0.56      -0.01      -0.00       0.00    -138.72       1.41      -0.57

   67  16.1  1.5 -1.5       0.02      -0.06      -1.69     -42.04      -0.00       0.00      10.13      -0.01       0.03       0.00
                           -0.01      -0.11     -28.42       1.15      -0.01      -0.00       0.01     111.59      -1.15       0.44

   68  17.1  1.5 -1.5       0.01       0.10      25.63      -1.03       0.01       0.00      -0.01     130.96      -1.33       0.53
                           -0.01       0.02       0.54      13.50       0.00      -0.00      -8.41      -0.03       0.07       0.01

   69   1.1  0.5  0.5       0.00      -1.29     -31.25    -820.66       0.19      -0.04     476.26       2.05       0.11       0.09
                           -0.00       0.78     193.13      -6.96       0.37      -0.32       4.56    -568.35       5.62      -2.52

   70   2.1  0.5  0.5       1.29       0.00     221.62      -2.75       2.51       0.54      -3.72     264.50      -1.02       1.00
                           -0.78       0.00       3.20     108.41      -0.85      -2.24     608.26       4.43       0.43      -1.64

   71   3.1  0.5  0.5      31.25    -221.62      -0.00       0.68     634.68      18.16      -0.11       3.58     432.49      -3.24
                         -193.13      -3.20      -0.00      -0.80     -27.02    -643.83      -2.40       2.24      22.91    -432.17

   72   4.1  0.5  0.5     820.66       2.75      -0.68       0.00     -25.39     455.63       0.06       0.40     -14.76    -212.11
                            6.96    -108.41       0.80      -0.00    -657.73      26.30      -0.90       4.09     435.01      22.96

   73   5.1  0.5  0.5      -0.19      -2.51    -634.68      25.39       0.00      -0.05       0.15    -353.85       3.83      -1.26
                           -0.37       0.85      27.02     657.73       0.00      -0.12     562.41      -0.03       0.23      -0.19

   74   6.1  0.5  0.5       0.04      -0.54     -18.16    -455.63       0.05      -0.00    -148.85       0.04       0.23      -0.13
                            0.32       2.24     643.83     -26.30       0.12      -0.00      -0.57      40.36      -0.48       0.18

   75   7.1  0.5  0.5    -476.26       3.72       0.11      -0.06      -0.15     148.85      -0.00       2.07       6.23    -504.64
                           -4.56    -608.26       2.40       0.90    -562.41       0.57      -0.00      -3.38    -331.48      -4.06

   76   8.1  0.5  0.5      -2.05    -264.50      -3.58      -0.40     353.85      -0.04      -2.07      -0.00      81.66       1.02
                          568.35      -4.43      -2.24      -4.09       0.03     -40.36       3.38       0.00      -0.31      24.16

   77   9.1  0.5  0.5      -0.11       1.02    -432.49      14.76      -3.83      -0.23      -6.23     -81.66       0.00      -0.32
                           -5.62      -0.43     -22.91    -435.01      -0.23       0.48     331.48       0.31       0.00      -0.25

   78  10.1  0.5  0.5      -0.09      -1.00       3.24     212.11       1.26       0.13     504.64      -1.02       0.32      -0.00
                            2.52       1.64     432.17     -22.96       0.19      -0.18       4.06     -24.16       0.25       0.00

   79  11.1  0.5  0.5    -196.77       1.62      -0.10      -0.07       0.17     510.86      -0.14       0.14       0.52     -41.94
                           -3.60    -459.06       1.63       0.33     298.24      -0.07       0.09      -0.43     -41.94      -0.54

   80  12.1  0.5  0.5      -3.81    -500.92       2.08       0.54    -279.89       0.20      -0.26      -0.19     -19.24      -0.24
                           41.10      -0.38      -0.04       0.05      -0.21    -445.03       0.12       0.34       1.02     -80.32

   81   1.1  0.5 -0.5    5418.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     469.20      -1.51      -0.45    -445.93       6.54      -0.32       4.32     445.38       4.32

   82   2.1  0.5 -0.5       0.00    5418.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -469.20      -0.00      -0.17       0.46       3.80     840.61      -2.73       1.36      -1.15    -174.01

   83   3.1  0.5 -0.5       0.00       0.00    5418.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.51       0.17      -0.00     173.74       0.39      -3.39    -649.37      19.56      -0.61       0.96

   84   4.1  0.5 -0.5       0.00       0.00       0.00    5418.89       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45      -0.46    -173.74       0.00      -0.29      -0.93      26.26     484.66      -4.76       2.12

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00    5419.01       0.00       0.00       0.00       0.00       0.00
                          445.93      -3.80      -0.39       0.29      -0.00     -75.57      -0.28       2.21       6.71    -518.99

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    5419.14       0.00       0.00       0.00       0.00
                           -6.54    -840.61       3.39       0.93      75.57      -0.00      -0.23       3.18     318.19       4.30

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5419.35       0.00       0.00       0.00
                            0.32       2.73     649.37     -26.26       0.28       0.23      -0.00    -177.33       1.68      -0.94

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8472.98       0.00       0.00
                           -4.32      -1.36     -19.56    -484.66      -2.21      -3.18     177.33       0.00       0.19       0.43

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8472.82       0.00
                         -445.38       1.15       0.61       4.76      -6.71    -318.19      -1.68      -0.19      -0.00      41.95

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8472.86
                           -4.32     174.01      -0.96      -2.12     518.99      -4.30       0.94      -0.43     -41.95      -0.00

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.41      -1.63    -432.44      17.53      -0.18      -0.14       0.11      57.48      -0.58       0.25

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10       0.25      12.35     302.80      -0.15       0.16     407.25      -0.01       0.03       0.00


   Nr   State  S   Sz       91         92

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

    8   8.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   18   1.1  1.5  0.5       0.00     404.32
                          132.43       0.00

   19   2.1  1.5  0.5    -389.27      -0.00
                           -0.03     303.23

   20   3.1  1.5  0.5      -0.01       0.02
                           -0.15       0.02

   21   4.1  1.5  0.5      -0.02       0.02
                            0.08      -0.01

   22   5.1  1.5  0.5       0.13      -0.02
                           -0.02       0.02

   23   6.1  1.5  0.5       0.06     -56.22
                         -366.23      -0.00

   24   7.1  1.5  0.5     -11.57      -0.00
                            0.07      95.56

   25   8.1  1.5  0.5       0.02    -472.34
                          420.27       0.00

   26   9.1  1.5  0.5      -0.02       0.03
                            0.18      -0.03

   27  10.1  1.5  0.5     420.27       0.00
                           -0.09     139.75

   28  11.1  1.5  0.5       0.01      -0.01
                            0.01      -0.00

   29  12.1  1.5  0.5      -0.03       0.01
                            0.00      -0.00

   30  13.1  1.5  0.5      -0.00       0.00
                           -0.04       0.01

   31  14.1  1.5  0.5       0.00      93.02
                            3.09       0.00

   32  15.1  1.5  0.5     -88.71      -0.00
                           -0.01      60.05

   33  16.1  1.5  0.5     -43.38      -0.00
                            0.01      53.78

   34  17.1  1.5  0.5      -0.01      45.38
                           98.70       0.00

   35   1.1  1.5 -0.5       0.00       0.00
                           -0.03       0.04

   36   2.1  1.5 -0.5       0.00       0.00
                            0.07      -0.01

   37   3.1  1.5 -0.5       0.00       0.00
                            0.09    -361.94

   38   4.1  1.5 -0.5       0.00       0.00
                           -0.10    -625.02

   39   5.1  1.5 -0.5       0.00       0.00
                          615.76       0.00

   40   6.1  1.5 -0.5       0.00       0.00
                           -0.02       0.03

   41   7.1  1.5 -0.5       0.00       0.00
                            0.33      -0.05

   42   8.1  1.5 -0.5       0.00       0.00
                           -0.05       0.05

   43   9.1  1.5 -0.5       0.00       0.00
                            0.13     665.18

   44  10.1  1.5 -0.5       0.00       0.00
                            0.36      -0.06

   45  11.1  1.5 -0.5       0.00       0.00
                            0.00     178.19

   46  12.1  1.5 -0.5       0.00       0.00
                         -156.12      -0.00

   47  13.1  1.5 -0.5       0.00       0.00
                            0.03      42.21

   48  14.1  1.5 -0.5       0.00       0.00
                           -0.01       0.01

   49  15.1  1.5 -0.5       0.00       0.00
                           -0.02       0.00

   50  16.1  1.5 -0.5       0.00       0.00
                            0.08      -0.01

   51  17.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   52   1.1  1.5 -1.5       0.00     700.31
                         -229.38      -0.00

   53   2.1  1.5 -1.5    -674.24      -0.00
                            0.06    -525.21

   54   3.1  1.5 -1.5      -0.03       0.03
                            0.25      -0.04

   55   4.1  1.5 -1.5      -0.03       0.03
                           -0.14       0.02

   56   5.1  1.5 -1.5       0.23      -0.04
                            0.03      -0.03

   57   6.1  1.5 -1.5       0.10     -97.38
                          634.34       0.00

   58   7.1  1.5 -1.5     -20.05      -0.00
                           -0.12    -165.52

   59   8.1  1.5 -1.5       0.04    -818.12
                         -727.92      -0.00

   60   9.1  1.5 -1.5      -0.04       0.04
                           -0.32       0.05

   61  10.1  1.5 -1.5     727.92       0.00
                            0.15    -242.06

   62  11.1  1.5 -1.5       0.01      -0.01
                           -0.02       0.00

   63  12.1  1.5 -1.5      -0.06       0.01
                           -0.01       0.01

   64  13.1  1.5 -1.5      -0.00       0.00
                            0.07      -0.01

   65  14.1  1.5 -1.5       0.01     161.12
                           -5.35      -0.00

   66  15.1  1.5 -1.5    -153.64      -0.00
                            0.03    -104.01

   67  16.1  1.5 -1.5     -75.13      -0.00
                           -0.02     -93.15

   68  17.1  1.5 -1.5      -0.02      78.60
                         -170.95      -0.00

   69   1.1  0.5  0.5     196.77       3.81
                            3.60     -41.10

   70   2.1  0.5  0.5      -1.62     500.92
                          459.06       0.38

   71   3.1  0.5  0.5       0.10      -2.08
                           -1.63       0.04

   72   4.1  0.5  0.5       0.07      -0.54
                           -0.33      -0.05

   73   5.1  0.5  0.5      -0.17     279.89
                         -298.24       0.21

   74   6.1  0.5  0.5    -510.86      -0.20
                            0.07     445.03

   75   7.1  0.5  0.5       0.14       0.26
                           -0.09      -0.12

   76   8.1  0.5  0.5      -0.14       0.19
                            0.43      -0.34

   77   9.1  0.5  0.5      -0.52      19.24
                           41.94      -1.02

   78  10.1  0.5  0.5      41.94       0.24
                            0.54      80.32

   79  11.1  0.5  0.5       0.00       0.01
                            0.00       0.01

   80  12.1  0.5  0.5      -0.01      -0.00
                           -0.01       0.00

   81   1.1  0.5 -0.5       0.00       0.00
                            0.41       0.10

   82   2.1  0.5 -0.5       0.00       0.00
                            1.63      -0.25

   83   3.1  0.5 -0.5       0.00       0.00
                          432.44     -12.35

   84   4.1  0.5 -0.5       0.00       0.00
                          -17.53    -302.80

   85   5.1  0.5 -0.5       0.00       0.00
                            0.18       0.15

   86   6.1  0.5 -0.5       0.00       0.00
                            0.14      -0.16

   87   7.1  0.5 -0.5       0.00       0.00
                           -0.11    -407.25

   88   8.1  0.5 -0.5       0.00       0.00
                          -57.48       0.01

   89   9.1  0.5 -0.5       0.00       0.00
                            0.58      -0.03

   90  10.1  0.5 -0.5       0.00       0.00
                           -0.25      -0.00

   91  11.1  0.5 -0.5    8476.38       0.00
                           -0.00      61.06

   92  12.1  0.5 -0.5       0.00    8476.93
                          -61.06       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02517143    -0.00706541    -1550.68      0.00000000        0.00      0.0000
     2  -110.02517143    -0.00706541    -1550.68      0.00000000        0.00      0.0000
     3  -110.02517129    -0.00706527    -1550.65      0.00000015        0.03      0.0000
     4  -110.02517129    -0.00706527    -1550.65      0.00000015        0.03      0.0000
     5  -110.02517103    -0.00706501    -1550.59      0.00000040        0.09      0.0000
     6  -110.02517103    -0.00706501    -1550.59      0.00000040        0.09      0.0000
     7  -110.02517077    -0.00706475    -1550.53      0.00000067        0.15      0.0000
     8  -110.02517077    -0.00706475    -1550.53      0.00000067        0.15      0.0000
     9  -110.02517060    -0.00706458    -1550.50      0.00000083        0.18      0.0000
    10  -110.02517060    -0.00706458    -1550.50      0.00000083        0.18      0.0000
    11  -110.01885802    -0.00075200     -165.05      0.00631341     1385.63      0.1718
    12  -110.01885802    -0.00075200     -165.05      0.00631341     1385.63      0.1718
    13  -110.01885777    -0.00075175     -164.99      0.00631366     1385.69      0.1718
    14  -110.01885777    -0.00075175     -164.99      0.00631366     1385.69      0.1718
    15  -110.01885739    -0.00075137     -164.91      0.00631404     1385.77      0.1718
    16  -110.01885739    -0.00075137     -164.91      0.00631404     1385.77      0.1718
    17  -110.01885734    -0.00075132     -164.90      0.00631409     1385.78      0.1718
    18  -110.01885734    -0.00075132     -164.90      0.00631409     1385.78      0.1718
    19  -110.01356719     0.00453883      996.16      0.01160425     2546.84      0.3158
    20  -110.01356719     0.00453883      996.16      0.01160425     2546.84      0.3158
    21  -110.01356697     0.00453905      996.21      0.01160446     2546.89      0.3158
    22  -110.01356697     0.00453905      996.21      0.01160446     2546.89      0.3158
    23  -110.01356685     0.00453916      996.23      0.01160458     2546.91      0.3158
    24  -110.01356685     0.00453916      996.23      0.01160458     2546.91      0.3158
    25  -110.01027899     0.00782703     1717.83      0.01489244     3268.51      0.4052
    26  -110.01027899     0.00782703     1717.83      0.01489244     3268.51      0.4052
    27  -110.01027893     0.00782709     1717.85      0.01489250     3268.53      0.4052
    28  -110.01027893     0.00782709     1717.85      0.01489250     3268.53      0.4052
    29  -109.99726391     0.02084211     4574.31      0.02790753     6124.99      0.7594
    30  -109.99726391     0.02084211     4574.31      0.02790753     6124.99      0.7594
    31  -109.99726351     0.02084251     4574.40      0.02790792     6125.08      0.7594
    32  -109.99726351     0.02084251     4574.40      0.02790792     6125.08      0.7594
    33  -109.99726318     0.02084284     4574.47      0.02790825     6125.15      0.7594
    34  -109.99726318     0.02084284     4574.47      0.02790825     6125.15      0.7594
    35  -109.99726255     0.02084347     4574.61      0.02790888     6125.29      0.7594
    36  -109.99726255     0.02084347     4574.61      0.02790888     6125.29      0.7594
    37  -109.99109143     0.02701458     5929.02      0.03408000     7479.69      0.9274
    38  -109.99109143     0.02701458     5929.02      0.03408000     7479.69      0.9274
    39  -109.99108972     0.02701630     5929.39      0.03408171     7480.07      0.9274
    40  -109.99108972     0.02701630     5929.39      0.03408171     7480.07      0.9274
    41  -109.99108671     0.02701931     5930.05      0.03408472     7480.73      0.9275
    42  -109.99108671     0.02701931     5930.05      0.03408472     7480.73      0.9275
    43  -109.98332359     0.03478243     7633.86      0.04184784     9184.54      1.1387
    44  -109.98332359     0.03478243     7633.86      0.04184784     9184.54      1.1387
    45  -109.98332317     0.03478285     7633.95      0.04184827     9184.63      1.1387
    46  -109.98332317     0.03478285     7633.95      0.04184827     9184.63      1.1387
    47  -109.98332166     0.03478436     7634.28      0.04184977     9184.96      1.1388
    48  -109.98332166     0.03478436     7634.28      0.04184977     9184.96      1.1388
    49  -109.97948320     0.03862282     8476.73      0.04568823    10027.41      1.2432
    50  -109.97948320     0.03862282     8476.73      0.04568823    10027.41      1.2432
    51  -109.97947735     0.03862867     8478.01      0.04569408    10028.69      1.2434
    52  -109.97947735     0.03862867     8478.01      0.04569408    10028.69      1.2434
    53  -109.97402663     0.04407939     9674.31      0.05114480    11224.99      1.3917
    54  -109.97402663     0.04407939     9674.31      0.05114480    11224.99      1.3917
    55  -109.97402293     0.04408309     9675.12      0.05114850    11225.80      1.3918
    56  -109.97402293     0.04408309     9675.12      0.05114850    11225.80      1.3918
    57  -109.97365351     0.04445251     9756.20      0.05151792    11306.88      1.4019
    58  -109.97365351     0.04445251     9756.20      0.05151792    11306.88      1.4019
    59  -109.97192255     0.04618347    10136.10      0.05324888    11686.78      1.4490
    60  -109.97192255     0.04618347    10136.10      0.05324888    11686.78      1.4490
    61  -109.97191979     0.04618622    10136.70      0.05325164    11687.38      1.4491
    62  -109.97191979     0.04618622    10136.70      0.05325164    11687.38      1.4491
    63  -109.97191385     0.04619217    10138.01      0.05325758    11688.69      1.4492
    64  -109.97191385     0.04619217    10138.01      0.05325758    11688.69      1.4492
    65  -109.96909144     0.04901458    10757.46      0.05607999    12308.14      1.5260
    66  -109.96909144     0.04901458    10757.46      0.05607999    12308.14      1.5260
    67  -109.96908988     0.04901614    10757.80      0.05608155    12308.48      1.5261
    68  -109.96908988     0.04901614    10757.80      0.05608155    12308.48      1.5261
    69  -109.96908614     0.04901988    10758.62      0.05608529    12309.30      1.5262
    70  -109.96908614     0.04901988    10758.62      0.05608529    12309.30      1.5262
    71  -109.96908516     0.04902085    10758.83      0.05608627    12309.51      1.5262
    72  -109.96908516     0.04902085    10758.83      0.05608627    12309.51      1.5262
    73  -109.96908210     0.04902392    10759.51      0.05608933    12310.18      1.5263
    74  -109.96908210     0.04902392    10759.51      0.05608933    12310.18      1.5263
    75  -109.96164415     0.05646187    12391.95      0.06352728    13942.63      1.7287
    76  -109.96164415     0.05646187    12391.95      0.06352728    13942.63      1.7287
    77  -109.96164103     0.05646499    12392.63      0.06353040    13943.31      1.7288
    78  -109.96164103     0.05646499    12392.63      0.06353040    13943.31      1.7288
    79  -109.96163955     0.05646647    12392.96      0.06353188    13943.64      1.7288
    80  -109.96163955     0.05646647    12392.96      0.06353188    13943.64      1.7288
    81  -109.96163190     0.05647412    12394.64      0.06353953    13945.32      1.7290
    82  -109.96163190     0.05647412    12394.64      0.06353953    13945.32      1.7290
    83  -109.95578824     0.06231778    13677.17      0.06938319    15227.85      1.8880
    84  -109.95578824     0.06231778    13677.17      0.06938319    15227.85      1.8880
    85  -109.95578615     0.06231987    13677.63      0.06938528    15228.31      1.8881
    86  -109.95578615     0.06231987    13677.63      0.06938528    15228.31      1.8881
    87  -109.95578393     0.06232209    13678.12      0.06938750    15228.80      1.8881
    88  -109.95578393     0.06232209    13678.12      0.06938750    15228.80      1.8881
    89  -109.95159417     0.06651185    14597.66      0.07357726    16148.34      2.0021
    90  -109.95159417     0.06651185    14597.66      0.07357726    16148.34      2.0021
    91  -109.95159071     0.06651530    14598.42      0.07358072    16149.10      2.0022
    92  -109.95159071     0.06651530    14598.42      0.07358072    16149.10      2.0022


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.000545777   0.566021831   0.048408284   0.010530722   0.008836444  -0.053532108   0.000000000  -0.007087020
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000026   0.000000001   0.000000122  -0.000000557   0.000000224   0.000000051  -0.000001965   0.000000003
                        -0.000498091  -0.516587683   0.022478502   0.004890222  -0.072598731   0.439808701  -0.000003451   0.108892321

    3    3.1  1.5  1.5   0.015810313  -0.000014552  -0.048171053   0.221401917   0.095355249   0.015740698   0.148337022   0.000005726
                        -0.021805856   0.000021021  -0.107056104   0.492122461   0.065458881   0.010805174  -0.084589455  -0.000000006

    4    4.1  1.5  1.5  -0.039315573   0.000038039  -0.018091564   0.083152803  -0.210798041  -0.034796487  -0.299682914  -0.000011372
                         0.054224724  -0.000052287  -0.040207465   0.184828288  -0.144707237  -0.023886551   0.170894727   0.000000012

    5    5.1  1.5  1.5  -0.041114691   0.000039640  -0.100090414   0.460102126   0.043883163   0.007243711  -0.083025491  -0.000000006
                        -0.029810161   0.000028089   0.045036803  -0.206996219  -0.063925450  -0.010552584  -0.145594441  -0.000005271

    6    6.1  1.5  1.5  -0.000191616  -0.198729853  -0.000569741  -0.000123980  -0.076999221   0.466467611  -0.000010390   0.343261346
                        -0.000000007  -0.000000002   0.000000017  -0.000000079  -0.000000193  -0.000000048   0.000005912  -0.000000014

    7    7.1  1.5  1.5   0.000000054  -0.000000002   0.000000208  -0.000000950  -0.000000149  -0.000000036   0.000004867  -0.000000016
                        -0.000185242  -0.192154839   0.049396775   0.010746199   0.053536202  -0.324326577   0.000008554  -0.295895417

    8    8.1  1.5  1.5  -0.000000000  -0.000000323   0.000000004   0.000000001   0.000000033  -0.000000201  -0.000000000   0.000000037
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    9    9.1  1.5  1.5  -0.000000007  -0.000000000   0.000000022  -0.000000103  -0.000000032  -0.000000005   0.000000082  -0.000000000
                         0.000000010  -0.000000000   0.000000050  -0.000000228  -0.000000022  -0.000000004  -0.000000047  -0.000000000

   10   10.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000037  -0.000000110  -0.000000024  -0.000000017   0.000000105  -0.000000000   0.000000002

   11   11.1  1.5  1.5   0.000006909  -0.000000007   0.000018075  -0.000083077   0.000034218   0.000005648   0.000045211   0.000000002
                        -0.000009529   0.000000009   0.000040171  -0.000184661   0.000023490   0.000003877  -0.000025781  -0.000000000

   12   12.1  1.5  1.5   0.000016079  -0.000000016   0.000039165  -0.000180036  -0.000017158  -0.000002832   0.000032476   0.000000000
                         0.000011658  -0.000000011  -0.000017623   0.000080997   0.000024995   0.000004126   0.000056950   0.000000002

   13   13.1  1.5  1.5   0.000015042  -0.000000014  -0.000008824   0.000040554   0.000083635   0.000013806   0.000122494   0.000000005
                        -0.000020746   0.000000020  -0.000019610   0.000090142   0.000057413   0.000009477  -0.000069852  -0.000000000

   14   14.1  1.5  1.5   0.000000179   0.000186049   0.000017915   0.000003897  -0.000006050   0.000036649  -0.000000001   0.000038938
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000

   15   15.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000
                        -0.000000147  -0.000152758   0.000000042   0.000000009  -0.000034438   0.000208627  -0.000000003   0.000086370

   16   16.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000
                        -0.000000146  -0.000151345   0.000021210   0.000004614   0.000007363  -0.000044606   0.000000002  -0.000087706

   17   17.1  1.5  1.5   0.000000137   0.000142145   0.000006080   0.000001323   0.000029626  -0.000179477   0.000000004  -0.000128189
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000002   0.000000000

   18    1.1  1.5  0.5   0.136835258  -0.000131944  -0.076399784   0.351199487  -0.147479200  -0.024344114   0.129303367   0.000000009
                         0.099212246  -0.000096007   0.034376513  -0.158001899   0.214836040   0.035462901   0.226747840   0.000008183

   19    2.1  1.5  0.5  -0.094126811   0.000090285   0.034110968  -0.156778565  -0.070706413  -0.011671696   0.061658581   0.000002624
                         0.129821335  -0.000125175   0.075808316  -0.348480603  -0.048538089  -0.008012091  -0.035160920  -0.000000002

   20    3.1  1.5  0.5  -0.000000028   0.000000001   0.000000008  -0.000000039   0.000000301   0.000000066  -0.000000380   0.000000002
                         0.000377573   0.391599250   0.055145179   0.011996280  -0.068761165   0.416559613  -0.000000666   0.017841255

   21    4.1  1.5  0.5   0.000000086  -0.000000000   0.000000316  -0.000001442   0.000000062   0.000000014   0.000001338  -0.000000010
                         0.000128822   0.133534516   0.140657760   0.030599308  -0.010038827   0.060815701   0.000002354  -0.106897047

   22    5.1  1.5  0.5   0.000301393   0.312607886  -0.089682462  -0.019510162  -0.009744648   0.059034857  -0.000014407   0.493346289
                         0.000000045  -0.000000002   0.000000315  -0.000001445   0.000000083   0.000000011   0.000008196  -0.000000025

   23    6.1  1.5  0.5  -0.026968144   0.000026005   0.037766148  -0.173605886  -0.071215601  -0.011755426   0.209905640   0.000000014
                        -0.019553222   0.000019183  -0.016993284   0.078103885   0.103741191   0.017124928   0.368092897   0.000013762

   24    7.1  1.5  0.5   0.038279186  -0.000036763  -0.003182878   0.014628134   0.257868890   0.042566561   0.272749813   0.000010791
                        -0.052795319   0.000050907  -0.007073269   0.032514867   0.177020128   0.029220379  -0.155536080  -0.000000011

   25    8.1  1.5  0.5  -0.000000006   0.000000000  -0.000000005   0.000000025   0.000000068   0.000000011   0.000000092  -0.000000000
                        -0.000000005   0.000000000   0.000000002  -0.000000011  -0.000000099  -0.000000016   0.000000162   0.000000000

   26    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000278   0.000000212   0.000000046   0.000000014  -0.000000087  -0.000000000  -0.000000002

   27   10.1  1.5  0.5   0.000000059  -0.000000000   0.000000019  -0.000000085  -0.000000174  -0.000000029   0.000000038  -0.000000000
                        -0.000000081   0.000000000   0.000000041  -0.000000190  -0.000000119  -0.000000020  -0.000000021  -0.000000000

   28   11.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000138  -0.000143054  -0.000054705  -0.000011901   0.000021311  -0.000129101  -0.000000000   0.000025516

   29   12.1  1.5  0.5  -0.000000118  -0.000122294   0.000035046   0.000007624   0.000003819  -0.000023135   0.000000006  -0.000193008
                        -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000003   0.000000000

   30   13.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000073   0.000075384  -0.000022084  -0.000004804  -0.000016825   0.000101927  -0.000000001   0.000033739

   31   14.1  1.5  0.5   0.000047539  -0.000000046  -0.000023785   0.000109335  -0.000063368  -0.000010460   0.000073426   0.000000000
                         0.000034468  -0.000000033   0.000010702  -0.000049189   0.000092309   0.000015238   0.000128760   0.000000005

   32   15.1  1.5  0.5  -0.000039645   0.000000038   0.000012642  -0.000058104  -0.000066656  -0.000011003  -0.000022006  -0.000000001
                         0.000054679  -0.000000053   0.000028096  -0.000129151  -0.000045757  -0.000007553   0.000012549   0.000000000

   33   16.1  1.5  0.5  -0.000001548   0.000000001   0.000004355  -0.000020017   0.000080308   0.000013256   0.000106879   0.000000004
                         0.000002136  -0.000000002   0.000009679  -0.000044494   0.000055129   0.000009100  -0.000060948  -0.000000000

   34   17.1  1.5  0.5   0.000026590  -0.000000026  -0.000023259   0.000106917   0.000008580   0.000001416  -0.000062231  -0.000000000
                         0.000019279  -0.000000019   0.000010465  -0.000048101  -0.000012499  -0.000002063  -0.000109129  -0.000000004

   35    1.1  1.5 -0.5   0.000163176   0.169017625   0.385104765   0.083777513  -0.043014570   0.260585185   0.000007113  -0.261024795
                        -0.000000276   0.000000000  -0.000000922   0.000004221  -0.000000175  -0.000000039  -0.000004045   0.000000014

   36    2.1  1.5 -0.5   0.000000383  -0.000000001   0.000001033  -0.000004725  -0.000000177  -0.000000034   0.000001298  -0.000000001
                        -0.000154337  -0.160354095   0.382123343   0.083129170   0.014157051  -0.085763296   0.000002281  -0.070979369

   37    3.1  1.5 -0.5  -0.229866213   0.000221610  -0.004921930   0.022625238  -0.343427111  -0.056689417   0.015498399   0.000000767
                         0.317035482  -0.000305696  -0.010940079   0.050290053  -0.235753538  -0.038915392  -0.008837988   0.000000000

   38    4.1  1.5 -0.5  -0.078383892   0.000075687  -0.012555755   0.057709493  -0.050138705  -0.008276416  -0.092859665  -0.000002708
                         0.108108429  -0.000104243  -0.027904672   0.128274003  -0.034418887  -0.005681461   0.052953387   0.000000003

   39    5.1  1.5 -0.5  -0.253084733   0.000244032  -0.017791842   0.081786707   0.033410991   0.005515089   0.244388034   0.000000017
                        -0.183498796   0.000176880   0.008006046  -0.036795089  -0.048670525  -0.008033801   0.428561605   0.000016576

   40    6.1  1.5 -0.5  -0.000032314  -0.033310798  -0.190366017  -0.041413206  -0.020771452   0.125832812   0.000011962  -0.423736662
                         0.000000266  -0.000000000   0.000000495  -0.000002262  -0.000000310  -0.000000057  -0.000006805   0.000000024

   41    7.1  1.5 -0.5  -0.000000119   0.000000001  -0.000000131   0.000000592   0.000000345   0.000000068   0.000005336  -0.000000012
                         0.000062793   0.065212282  -0.035653876  -0.007756407  -0.051630831   0.312781857   0.000009380  -0.313980784

   42    8.1  1.5 -0.5  -0.000000000  -0.000000008   0.000000028   0.000000006   0.000000020  -0.000000120   0.000000000  -0.000000186
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   43    9.1  1.5 -0.5  -0.000000163   0.000000000  -0.000000019   0.000000087   0.000000072   0.000000012  -0.000000002   0.000000000
                         0.000000225  -0.000000000  -0.000000042   0.000000193   0.000000049   0.000000008   0.000000001   0.000000000

   44   10.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000100   0.000000208   0.000000045   0.000000035  -0.000000211  -0.000000000  -0.000000043

   45   11.1  1.5 -0.5   0.000083972  -0.000000081   0.000004883  -0.000022444   0.000106436   0.000017569   0.000022166   0.000000001
                        -0.000115815   0.000000112   0.000010853  -0.000049888   0.000073065   0.000012061  -0.000012640  -0.000000000

   46   12.1  1.5 -0.5   0.000099008  -0.000000095   0.000006953  -0.000031960  -0.000013093  -0.000002161  -0.000095610  -0.000000000
                         0.000071786  -0.000000069  -0.000003129   0.000014379   0.000019074   0.000003148  -0.000167663  -0.000000006

   47   13.1  1.5 -0.5  -0.000044250   0.000000043   0.000001972  -0.000009061  -0.000084032  -0.000013871   0.000029308   0.000000001
                         0.000061030  -0.000000059   0.000004381  -0.000020140  -0.000057686  -0.000009522  -0.000016713  -0.000000000

   48   14.1  1.5 -0.5   0.000000057   0.000058720   0.000119890   0.000026081  -0.000018482   0.000111967   0.000000004  -0.000148224
                        -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000002   0.000000000

   49   15.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000065  -0.000067539   0.000141620   0.000030809   0.000013346  -0.000080850  -0.000000001   0.000025332

   50   16.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000   0.000000002  -0.000000000
                        -0.000000003  -0.000002638   0.000048789   0.000010614  -0.000016079   0.000097409   0.000000004  -0.000123035

   51   17.1  1.5 -0.5   0.000000032   0.000032843   0.000117239   0.000025505   0.000002503  -0.000015160  -0.000000004   0.000125625
                        -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000002  -0.000000000

   52    1.1  1.5 -1.5   0.458246548  -0.000441856  -0.009603569   0.044146289   0.030296698   0.005001019   0.003510684  -0.000000000
                         0.332251132  -0.000320367   0.004320598  -0.019861197  -0.044133849  -0.007285091   0.006156375   0.000000000

   53    2.1  1.5 -1.5  -0.303233608   0.000292356   0.002006893  -0.009222483   0.362594527   0.059853205  -0.094592923  -0.000003971
                         0.418225075  -0.000403266   0.004459445  -0.020499485   0.248911435   0.041087341   0.053941789   0.000000003

   54    3.1  1.5 -1.5   0.000000559  -0.000000002   0.000001405  -0.000006422  -0.000000322  -0.000000059  -0.000002831   0.000000009
                        -0.000025560  -0.026934389   0.539632583   0.117394462   0.019092442  -0.115661093  -0.000004977   0.170760791

   55    4.1  1.5 -1.5   0.000000104  -0.000000000   0.000000482  -0.000002211   0.000000247   0.000000050   0.000005623  -0.000000016
                         0.000064659   0.066977869   0.202671865   0.044090191  -0.042206194   0.255687306   0.000009884  -0.344985299

   56    5.1  1.5 -1.5   0.000048580   0.050784482  -0.504520962  -0.109756114  -0.012799546   0.077538346   0.000004582  -0.167603620
                         0.000000528  -0.000000001   0.000001321  -0.000006038  -0.000000291  -0.000000053  -0.000002606   0.000000011

   57    6.1  1.5 -1.5  -0.160890031   0.000155135   0.000113032  -0.000519586  -0.263999143  -0.043577841  -0.170040737  -0.000000011
                        -0.116653129   0.000112472  -0.000050940   0.000233741   0.384573120   0.063481114  -0.298185344  -0.000011955

   58    7.1  1.5 -1.5  -0.112793642   0.000108692   0.004409871  -0.020266570  -0.267386802  -0.044137309   0.257039362   0.000009841
                         0.155566952  -0.000150002   0.009799685  -0.045047836  -0.183553880  -0.030298893  -0.146577161  -0.000000010

   59    8.1  1.5 -1.5  -0.000000262   0.000000000  -0.000000001   0.000000003   0.000000114   0.000000019  -0.000000018  -0.000000000
                        -0.000000190   0.000000000   0.000000000  -0.000000001  -0.000000166  -0.000000027  -0.000000032  -0.000000000

   60    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000012  -0.000000250  -0.000000054  -0.000000006   0.000000038   0.000000000   0.000000095

   61   10.1  1.5 -1.5  -0.000000022   0.000000000  -0.000000010   0.000000045   0.000000087   0.000000014  -0.000000001  -0.000000000
                         0.000000030  -0.000000000  -0.000000022   0.000000100   0.000000059   0.000000010   0.000000001   0.000000000

   62   11.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000001   0.000000002   0.000000000   0.000000000  -0.000000001   0.000000000
                        -0.000000011  -0.000011770  -0.000202488  -0.000044050   0.000006851  -0.000041505  -0.000000001   0.000052045

   63   12.1  1.5 -1.5  -0.000000019  -0.000019861   0.000197417   0.000042947   0.000005005  -0.000030318  -0.000000002   0.000065559
                        -0.000000000   0.000000000  -0.000000001   0.000000002   0.000000000   0.000000000   0.000000001  -0.000000000

   64   13.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000002   0.000000000
                        -0.000000025  -0.000025625   0.000098845   0.000021503   0.000016746  -0.000101445  -0.000000004   0.000141011

   65   14.1  1.5 -1.5   0.000150624  -0.000000145  -0.000003554   0.000016337  -0.000020742  -0.000003424  -0.000019289  -0.000000000
                         0.000109210  -0.000000105   0.000001599  -0.000007350   0.000030215   0.000004988  -0.000033825  -0.000000001

   66   15.1  1.5 -1.5  -0.000089668   0.000000086   0.000000004  -0.000000017   0.000172000   0.000028392  -0.000075028  -0.000000003
                         0.000123671  -0.000000119   0.000000008  -0.000000039   0.000118073   0.000019490   0.000042785   0.000000000

   67   16.1  1.5 -1.5  -0.000088839   0.000000086   0.000001894  -0.000008702  -0.000036775  -0.000006070   0.000076189   0.000000003
                         0.000122528  -0.000000118   0.000004208  -0.000019343  -0.000025245  -0.000004167  -0.000043447  -0.000000000

   68   17.1  1.5 -1.5   0.000115080  -0.000000111  -0.000001206   0.000005545   0.000101576   0.000016767   0.000063501   0.000000000
                         0.000083438  -0.000000080   0.000000543  -0.000002495  -0.000147967  -0.000024425   0.000111355   0.000000004

   69    1.1  0.5  0.5   0.000000761  -0.000000001   0.000000383  -0.000001761   0.000001741   0.000000292  -0.000000773  -0.000000000
                        -0.000001046   0.000000002   0.000000859  -0.000003956   0.000001207   0.000000199   0.000000475   0.000000000

   70    2.1  0.5  0.5   0.000000264  -0.000000004  -0.000000440   0.000002015  -0.000000714  -0.000000087   0.000001975  -0.000000000
                         0.000000203  -0.000000002   0.000000194  -0.000000870   0.000001005   0.000000167   0.000003448  -0.000000001

   71    3.1  0.5  0.5  -0.000000003  -0.000000926  -0.000000500  -0.000000116  -0.000001308   0.000007941  -0.000000008  -0.000000085
                        -0.000000001  -0.000000070   0.000000127   0.000000033  -0.000000014   0.000000053  -0.000000014  -0.000000029

   72    4.1  0.5  0.5   0.000000000   0.000000037   0.000000021   0.000000001   0.000000054  -0.000000320  -0.000000003   0.000000003
                        -0.000000002  -0.000001725   0.000003186   0.000000692  -0.000000218   0.000001317  -0.000000004  -0.000000729

   73    5.1  0.5  0.5   0.000001184  -0.000000002   0.000000082  -0.000000378  -0.000001778  -0.000000290   0.000000587  -0.000000000
                         0.000000858  -0.000000000  -0.000000036   0.000000168   0.000002594   0.000000428   0.000001023  -0.000000000

   74    6.1  0.5  0.5   0.000000441  -0.000000000   0.000000351  -0.000001612   0.000004911   0.000000811   0.000004966   0.000000000
                        -0.000000610  -0.000000000   0.000000779  -0.000003582   0.000003369   0.000000557  -0.000002833   0.000000000

   75    7.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000003  -0.000000001  -0.000000000
                        -0.000000002  -0.000002591  -0.000000607  -0.000000131  -0.000000315   0.000001905   0.000000002   0.000000757

   76    8.1  0.5  0.5  -0.000000004   0.000002363   0.000001108   0.000000262   0.000000049  -0.000000288  -0.000000007  -0.000000447
                        -0.000000001  -0.000000000   0.000000001  -0.000000003  -0.000000011  -0.000000001   0.000000004   0.000000000

   77    9.1  0.5  0.5  -0.000000435  -0.000000024  -0.000000399   0.000001779   0.000000523   0.000000089  -0.000000023   0.000000005
                        -0.000000306   0.000000001   0.000000170  -0.000000781  -0.000000788  -0.000000131   0.000000007  -0.000000001

   78   10.1  0.5  0.5   0.000000341   0.000000009   0.000000129  -0.000000570   0.000000979   0.000000160   0.000001576  -0.000000002
                        -0.000000482   0.000000001   0.000000289  -0.000001329   0.000000658   0.000000108  -0.000000899  -0.000000000

   79   11.1  0.5  0.5  -0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000002  -0.000001710   0.000000674   0.000000146  -0.000000287   0.000001736  -0.000000000   0.000001719

   80   12.1  0.5  0.5  -0.000000002  -0.000002166  -0.000001007  -0.000000219   0.000000273  -0.000001657  -0.000000000   0.000000604
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   81    1.1  0.5 -0.5   0.000000000  -0.000000002  -0.000000017  -0.000000003  -0.000000001  -0.000000009  -0.000000000   0.000000030
                        -0.000000002  -0.000001294  -0.000004330  -0.000000941   0.000000353  -0.000002118   0.000000000  -0.000000907

   82    2.1  0.5 -0.5  -0.000000004  -0.000000333  -0.000002195  -0.000000481   0.000000187  -0.000001233   0.000000001   0.000003973
                        -0.000000001   0.000000010   0.000000033   0.000000004   0.000000023   0.000000019  -0.000000000   0.000000008

   83    3.1  0.5 -0.5  -0.000000791   0.000000003   0.000000120  -0.000000508  -0.000004451  -0.000000728   0.000000067  -0.000000016
                        -0.000000487   0.000000001  -0.000000017   0.000000089   0.000006577   0.000001087   0.000000059   0.000000000

   84    4.1  0.5 -0.5  -0.000000982   0.000000001   0.000000283  -0.000001288   0.000001267   0.000000211   0.000000631  -0.000000004
                         0.000001418  -0.000000002   0.000000632  -0.000002914   0.000000481   0.000000079  -0.000000364  -0.000000000

   85    5.1  0.5 -0.5  -0.000000001  -0.000001462   0.000000413   0.000000090   0.000000517  -0.000003145   0.000000000   0.000001180
                        -0.000000001  -0.000000000  -0.000000002  -0.000000000   0.000000003  -0.000000002  -0.000000000   0.000000003

   86    6.1  0.5 -0.5  -0.000000001   0.000000001   0.000000000   0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000001
                        -0.000000000  -0.000000753  -0.000003927  -0.000000854   0.000000984  -0.000005956  -0.000000000   0.000005718

   87    7.1  0.5 -0.5  -0.000001521   0.000000001  -0.000000055   0.000000249   0.000001572   0.000000258  -0.000000658   0.000000002
                         0.000002098  -0.000000002  -0.000000119   0.000000554   0.000001076   0.000000180   0.000000375  -0.000000002

   88    8.1  0.5 -0.5   0.000001913   0.000000004  -0.000000240   0.000001010   0.000000162   0.000000037   0.000000221  -0.000000000
                         0.000001387   0.000000001   0.000000105  -0.000000455  -0.000000238  -0.000000034   0.000000389  -0.000000008

   89    9.1  0.5 -0.5  -0.000000019   0.000000532  -0.000001942  -0.000000433  -0.000000158   0.000000946  -0.000000002  -0.000000005
                        -0.000000015   0.000000008   0.000000017   0.000000009  -0.000000001   0.000000015  -0.000000004  -0.000000023

   90   10.1  0.5 -0.5   0.000000008   0.000000007  -0.000000026  -0.000000001  -0.000000001   0.000000012   0.000000001  -0.000000000
                         0.000000005  -0.000000591  -0.000001446  -0.000000316   0.000000194  -0.000001180   0.000000001   0.000001815

   91   11.1  0.5 -0.5  -0.000001004   0.000000001   0.000000059  -0.000000277   0.000001431   0.000000237  -0.000001494  -0.000000000
                         0.000001384  -0.000000001   0.000000134  -0.000000614   0.000000982   0.000000162   0.000000852   0.000000000

   92   12.1  0.5 -0.5  -0.000001754   0.000000002   0.000000200  -0.000000919   0.000000938   0.000000155  -0.000000299  -0.000000000
                        -0.000001272   0.000000001  -0.000000090   0.000000413  -0.000001366  -0.000000225  -0.000000524  -0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.133734180  -0.000221639   0.421170715  -0.020803878   0.004909590  -0.318428132  -0.034306881  -0.002167040
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000035  -0.000004389   0.000001992  -0.000001894  -0.000000502  -0.000366184  -0.000021311
                         0.128006921  -0.000212284  -0.049318770   0.002435085   0.000686771  -0.044786760   0.113448954   0.007238178

    3    3.1  1.5  1.5   0.000125521   0.075577479  -0.005204758  -0.105629472  -0.049036683  -0.000748349  -0.019886578   0.313338275
                         0.000031586   0.019058479   0.017991498   0.363977740   0.111956345   0.001743284   0.009369609  -0.147232657

    4    4.1  1.5  1.5  -0.000133400  -0.080242105   0.000046561   0.000935629   0.017153612   0.000257725   0.001172632  -0.019989628
                        -0.000033535  -0.020234761  -0.000156447  -0.003266565  -0.039190939  -0.000593194  -0.000550045   0.009071520

    5    5.1  1.5  1.5  -0.000093908  -0.056662755   0.003508554   0.070791273   0.460920556   0.007126298  -0.003365285   0.053041736
                         0.000372175   0.224699360   0.001010555   0.020575211   0.201776838   0.003102694  -0.007165696   0.112906995

    6    6.1  1.5  1.5   0.221878857  -0.000368130   0.310188930  -0.015320619   0.003005727  -0.194676137   0.004004763   0.000224694
                         0.000000002  -0.000000103   0.000004752  -0.000000470  -0.000001412  -0.000001481  -0.000043125   0.000005105

    7    7.1  1.5  1.5   0.000000002  -0.000000074  -0.000037102   0.000010539  -0.000003082   0.000003314  -0.001454304  -0.000113064
                         0.210702011  -0.000348903  -0.134659104   0.006651733   0.001717888  -0.111485508   0.602971113   0.038299633

    8    8.1  1.5  1.5  -0.000000215   0.000000000   0.000000239  -0.000000012  -0.000000005   0.000000294   0.000000346   0.000000022
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000

    9    9.1  1.5  1.5  -0.000000000  -0.000000114  -0.000000002  -0.000000035  -0.000000384  -0.000000006  -0.000000005   0.000000073
                        -0.000000000  -0.000000029   0.000000006   0.000000119   0.000000878   0.000000014   0.000000002  -0.000000034

   10   10.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000
                         0.000000173  -0.000000000  -0.000000447   0.000000022   0.000000002  -0.000000153  -0.000000230  -0.000000015

   11   11.1  1.5  1.5   0.000000004   0.000002509  -0.000003604  -0.000073144  -0.000021538  -0.000000332  -0.000013032   0.000204218
                         0.000000001   0.000000633   0.000012460   0.000252007   0.000049154   0.000000778   0.000006142  -0.000096196

   12   12.1  1.5  1.5   0.000000037   0.000022161   0.000003569   0.000072018   0.000468968   0.000007251  -0.000003421   0.000053923
                        -0.000000146  -0.000087879   0.000001028   0.000020932   0.000205300   0.000003157  -0.000007285   0.000114784

   13   13.1  1.5  1.5   0.000000071   0.000042970   0.000003880   0.000078732   0.000048272   0.000000734   0.000015520  -0.000245594
                         0.000000018   0.000010836  -0.000013408  -0.000271326  -0.000110229  -0.000001704  -0.000007311   0.000115176

   14   14.1  1.5  1.5   0.000076553  -0.000000127  -0.000505247   0.000024956  -0.000005697   0.000369394   0.000031903   0.000002024
                         0.000000000  -0.000000000  -0.000000002   0.000000000   0.000000000   0.000000000   0.000000014  -0.000000002

   15   15.1  1.5  1.5   0.000000000   0.000000000  -0.000000012   0.000000003   0.000000000   0.000000002  -0.000000271  -0.000000028
                         0.000011629  -0.000000019  -0.000010620   0.000000526   0.000000086  -0.000005383   0.000147828   0.000009360

   16   16.1  1.5  1.5   0.000000000  -0.000000000   0.000000036  -0.000000011   0.000000004  -0.000000003   0.000001501   0.000000114
                         0.000095522  -0.000000158   0.000145502  -0.000007187  -0.000001879   0.000122042  -0.000606277  -0.000038523

   17   17.1  1.5  1.5  -0.000066064   0.000000110   0.000166944  -0.000008245   0.000001357  -0.000087734   0.000014791   0.000000907
                        -0.000000000   0.000000000   0.000000005  -0.000000000  -0.000000001  -0.000000001  -0.000000041   0.000000005

   18    1.1  1.5  0.5   0.000089581   0.054052139   0.005918142   0.120016842  -0.445525771  -0.006885560  -0.001010738   0.015800535
                        -0.000354974  -0.214346804   0.001725984   0.034814720  -0.195033038  -0.003001701  -0.002143066   0.033633994

   19    2.1  1.5  0.5   0.000272574   0.164429442  -0.008741757  -0.177178772  -0.107597612  -0.001646422   0.004284931  -0.067446847
                         0.000068719   0.041464404   0.030166539   0.610390560   0.245726254   0.003813964  -0.001998253   0.031629415

   20    3.1  1.5  0.5   0.000000001  -0.000000005   0.000000929   0.000001459  -0.000003456  -0.000002147  -0.000412203  -0.000015508
                        -0.156716575   0.000259746  -0.238173416   0.011762214  -0.000842356   0.054090045   0.095628790   0.006143638

   21    4.1  1.5  0.5   0.000000000  -0.000000010  -0.000014098   0.000004138  -0.000001444   0.000001099  -0.000587147  -0.000044374
                         0.647983993  -0.001073868   0.101193456  -0.004998599   0.002584099  -0.167667607   0.223719163   0.014220482

   22    5.1  1.5  0.5   0.063492606  -0.000105785  -0.143116653   0.007071321  -0.001688250   0.109896527   0.223167222   0.014112557
                         0.000000004  -0.000000141   0.000017763  -0.000003686  -0.000001318  -0.000003221   0.000341839   0.000039645

   23    6.1  1.5  0.5   0.000089938   0.054267342   0.005193348   0.104809474   0.306359496   0.004746274   0.013663932  -0.214688328
                        -0.000356155  -0.215200202   0.001486137   0.030410519   0.134133311   0.002061899   0.029019517  -0.456835126

   24    7.1  1.5  0.5   0.000771346   0.465150567  -0.000339010  -0.006896610   0.111862466   0.001720926  -0.015949987   0.251175683
                         0.000194398   0.117297672   0.001175288   0.023850639  -0.255547904  -0.003946501   0.007504309  -0.118028805

   25    8.1  1.5  0.5  -0.000000000  -0.000000005   0.000000008   0.000000165  -0.000000865  -0.000000013  -0.000000009   0.000000146
                         0.000000000   0.000000021   0.000000002   0.000000048  -0.000000379  -0.000000006  -0.000000020   0.000000312

   26    9.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000
                         0.000000293  -0.000000000   0.000000259  -0.000000013   0.000000006  -0.000000362  -0.000000336  -0.000000021

   27   10.1  1.5  0.5   0.000000000   0.000000062   0.000000005   0.000000093  -0.000000232  -0.000000004   0.000000022  -0.000000347
                         0.000000000   0.000000016  -0.000000016  -0.000000321   0.000000529   0.000000008  -0.000000010   0.000000164

   28   11.1  1.5  0.5  -0.000000000   0.000000000  -0.000000010   0.000000004  -0.000000003  -0.000000001  -0.000000722  -0.000000044
                        -0.000141786   0.000000235  -0.000091681   0.000004527   0.000001321  -0.000086087   0.000232283   0.000014810

   29   12.1  1.5  0.5  -0.000024833   0.000000041  -0.000145689   0.000007198  -0.000001716   0.000111729   0.000227021   0.000014356
                         0.000000000   0.000000000   0.000000018  -0.000000004  -0.000000001  -0.000000003   0.000000348   0.000000040

   30   13.1  1.5  0.5   0.000000000   0.000000000  -0.000000011   0.000000002   0.000000002   0.000000002  -0.000000106  -0.000000020
                        -0.000218272   0.000000362   0.000246859  -0.000012192   0.000002429  -0.000157199   0.000085753   0.000005403

   31   14.1  1.5  0.5   0.000000044   0.000026639  -0.000007366  -0.000149215   0.000334083   0.000005160  -0.000003341   0.000052568
                        -0.000000175  -0.000105640  -0.000002139  -0.000043287   0.000146241   0.000002252  -0.000007099   0.000111849

   32   15.1  1.5  0.5  -0.000000027  -0.000016392   0.000007960   0.000161318   0.000146662   0.000002248  -0.000010667   0.000167960
                        -0.000000007  -0.000004134  -0.000027466  -0.000555712  -0.000334973  -0.000005191   0.000005002  -0.000078866

   33   16.1  1.5  0.5   0.000000318   0.000191820   0.000003981   0.000080708  -0.000058543  -0.000000904   0.000012987  -0.000204529
                         0.000000080   0.000048372  -0.000013742  -0.000278130   0.000133773   0.000002058  -0.000006118   0.000096136

   34   17.1  1.5  0.5  -0.000000023  -0.000013582   0.000003156   0.000063506   0.000436909   0.000006764   0.000013531  -0.000212580
                         0.000000089   0.000053859   0.000000893   0.000018429   0.000191282   0.000002942   0.000028737  -0.000452354

   35    1.1  1.5 -0.5   0.221056974  -0.000366103  -0.124964423   0.006164687  -0.007511392   0.486344629   0.037160393   0.002369438
                        -0.000000003   0.000000065  -0.000016034  -0.000008081  -0.000011132  -0.000021612   0.000087622   0.000009181

   36    2.1  1.5 -0.5   0.000000001  -0.000000016   0.000029361   0.000012685   0.000021046   0.000038180   0.000125258  -0.000002172
                        -0.169576939   0.000281103   0.635585519  -0.031407614  -0.004154105   0.268251070  -0.074494841  -0.004727964

   37    3.1  1.5 -0.5  -0.000251863  -0.151959454  -0.003279769  -0.066382869   0.021686922   0.000340932   0.005560195  -0.086474940
                        -0.000063508  -0.038319829   0.011295699   0.228735416  -0.049552097  -0.000770287  -0.002613190   0.040830382

   38    4.1  1.5 -0.5   0.001041268   0.628314481   0.001389237   0.028191129  -0.067229926  -0.001034843   0.012866418  -0.202463724
                         0.000262589   0.158442950  -0.004801670  -0.097187325   0.153598709   0.002367841  -0.006056350   0.095179038

   39    5.1  1.5 -0.5  -0.000025729  -0.015525003  -0.006790073  -0.137440322   0.100673589   0.001547114   0.006006406  -0.094723258
                         0.000102609   0.061565293  -0.001974461  -0.039906572   0.044068982   0.000675743   0.012770628  -0.202067390

   40    6.1  1.5 -0.5   0.221937089  -0.000367335  -0.109132146   0.005401764   0.005174779  -0.334436668  -0.504765117  -0.032075297
                        -0.000000003   0.000000122  -0.000007105   0.000020247   0.000014268   0.000034650  -0.001259802  -0.000103853

   41    7.1  1.5 -0.5   0.000000003  -0.000000110  -0.000024344   0.000002001  -0.000005938  -0.000006901  -0.000683174  -0.000051831
                        -0.479712199   0.000795466   0.024827719  -0.001223203   0.004305395  -0.278958676   0.277523974   0.017627083

   42    8.1  1.5 -0.5  -0.000000021   0.000000000  -0.000000172   0.000000008  -0.000000015   0.000000944   0.000000344   0.000000022
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   43    9.1  1.5 -0.5   0.000000000   0.000000284   0.000000004   0.000000072  -0.000000145  -0.000000002  -0.000000019   0.000000304
                         0.000000000   0.000000072  -0.000000012  -0.000000249   0.000000332   0.000000005   0.000000009  -0.000000143

   44   10.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000
                        -0.000000064   0.000000000  -0.000000334   0.000000016  -0.000000009   0.000000578  -0.000000384  -0.000000024

   45   11.1  1.5 -0.5  -0.000000228  -0.000137482  -0.000001266  -0.000025563  -0.000034519  -0.000000526   0.000013401  -0.000210166
                        -0.000000057  -0.000034669   0.000004346   0.000088045   0.000078863   0.000001211  -0.000006305   0.000098924

   46   12.1  1.5 -0.5   0.000000010   0.000006072  -0.000006912  -0.000139911   0.000102352   0.000001573   0.000006110  -0.000096359
                        -0.000000040  -0.000024079  -0.000002010  -0.000040624   0.000044804   0.000000687   0.000012991  -0.000205557

   47   13.1  1.5 -0.5  -0.000000351  -0.000211646   0.000003396   0.000068794  -0.000063031  -0.000000975   0.000004887  -0.000077656
                        -0.000000088  -0.000053371  -0.000011709  -0.000237079   0.000144009   0.000002225  -0.000002303   0.000036375

   48   14.1  1.5 -0.5   0.000108947  -0.000000180   0.000155367  -0.000007670   0.000005629  -0.000364689   0.000123586   0.000007845
                        -0.000000000   0.000000000   0.000000018   0.000000001   0.000000006   0.000000010   0.000000313   0.000000024

   49   15.1  1.5 -0.5   0.000000000   0.000000000  -0.000000037  -0.000000011  -0.000000022  -0.000000038  -0.000000403  -0.000000020
                         0.000016905  -0.000000028  -0.000578653   0.000028596   0.000005657  -0.000365673   0.000185553   0.000011782

   50   16.1  1.5 -0.5   0.000000000  -0.000000000   0.000000010  -0.000000007  -0.000000003  -0.000000010   0.000000581   0.000000049
                        -0.000197825   0.000000328  -0.000289603   0.000014307  -0.000002248   0.000146022  -0.000225995  -0.000014356

   51   17.1  1.5 -0.5  -0.000055545   0.000000092  -0.000066126   0.000003280   0.000007375  -0.000476947  -0.000499813  -0.000031763
                         0.000000000  -0.000000000  -0.000000002   0.000000022   0.000000017   0.000000040  -0.000001246  -0.000000103

   52    1.1  1.5 -1.5   0.000054194   0.032700249  -0.019979469  -0.404480699   0.291708164   0.004497616   0.000916792  -0.014513929
                        -0.000214911  -0.129674688  -0.005798463  -0.117388820   0.127682507   0.001968635   0.001963557  -0.031085494

   53    2.1  1.5 -1.5  -0.000205849  -0.124121279   0.000680620   0.013750356   0.017958941   0.000273645  -0.006549503   0.102641275
                        -0.000051873  -0.031299838  -0.002338033  -0.047363158  -0.041028408  -0.000629902   0.003081506  -0.048327714

   54    3.1  1.5 -1.5  -0.000000001   0.000000065   0.000004356  -0.000016089  -0.000013464  -0.000029941   0.000846193   0.000076560
                         0.077943447  -0.000129434  -0.378995225   0.018729208   0.001897072  -0.122224460  -0.346204584  -0.021983169

   55    4.1  1.5 -1.5   0.000000003  -0.000000102  -0.000011905  -0.000001111   0.000001759  -0.000000467   0.000237136  -0.000002301
                        -0.082754099   0.000137551   0.003397897  -0.000163225  -0.000646760   0.042780557   0.021950432   0.001295226

   56    5.1  1.5 -1.5   0.231733619  -0.000383840   0.073720708  -0.003651180  -0.007772425   0.503151718  -0.124745054  -0.007916566
                        -0.000000000   0.000000054  -0.000028900  -0.000007396  -0.000015145  -0.000026564  -0.000294529  -0.000017756

   57    6.1  1.5 -1.5   0.000089914   0.054253098  -0.014713629  -0.297898189   0.178341050   0.002752944  -0.000099685   0.001655187
                        -0.000356980  -0.215143739  -0.004269716  -0.086451382   0.078059389   0.001206523  -0.000201435   0.003646963

   58    7.1  1.5 -1.5  -0.000338294  -0.204306165   0.001864094   0.037567855   0.044700141   0.000686011  -0.034655497   0.545737376
                        -0.000085385  -0.051520176  -0.006385203  -0.129312535  -0.102131855  -0.001574972   0.016305557  -0.256411767

   59    8.1  1.5 -1.5  -0.000000000  -0.000000052  -0.000000011  -0.000000230  -0.000000270  -0.000000004  -0.000000009   0.000000147
                         0.000000000   0.000000208  -0.000000003  -0.000000067  -0.000000118  -0.000000002  -0.000000020   0.000000313

   60    9.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000117   0.000000000  -0.000000124   0.000000006   0.000000015  -0.000000958  -0.000000081  -0.000000005

   61   10.1  1.5 -1.5  -0.000000000  -0.000000168   0.000000006   0.000000125   0.000000062   0.000000001   0.000000013  -0.000000208
                        -0.000000000  -0.000000042  -0.000000021  -0.000000430  -0.000000141  -0.000000002  -0.000000006   0.000000098

   62   11.1  1.5 -1.5   0.000000000   0.000000000  -0.000000006  -0.000000012  -0.000000008  -0.000000021   0.000000767   0.000000052
                         0.000002588  -0.000000004  -0.000262407   0.000012971   0.000000846  -0.000053666  -0.000225739  -0.000014407

   63   12.1  1.5 -1.5  -0.000090630   0.000000150   0.000074998  -0.000003714  -0.000007908   0.000511936  -0.000126818  -0.000008048
                         0.000000000  -0.000000000  -0.000000029  -0.000000008  -0.000000015  -0.000000027  -0.000000299  -0.000000018

   64   13.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000012   0.000000011   0.000000011   0.000000022  -0.000000460  -0.000000058
                         0.000044315  -0.000000074   0.000282518  -0.000013958  -0.000001856   0.000120335   0.000271260   0.000017155

   65   14.1  1.5 -1.5   0.000000031   0.000018719   0.000023968   0.000485226  -0.000338397  -0.000005219  -0.000000855   0.000013509
                        -0.000000123  -0.000074230   0.000006956   0.000140821  -0.000148118  -0.000002285  -0.000001835   0.000028902

   66   15.1  1.5 -1.5  -0.000000019  -0.000011276   0.000000149   0.000002971   0.000002157   0.000000035  -0.000008469   0.000133833
                        -0.000000005  -0.000002843  -0.000000504  -0.000010196  -0.000004932  -0.000000079   0.000003985  -0.000062786

   67   16.1  1.5 -1.5  -0.000000153  -0.000092623  -0.000002013  -0.000040589  -0.000048933  -0.000000750   0.000034858  -0.000548713
                        -0.000000039  -0.000023357   0.000006899   0.000139726   0.000111802   0.000001723  -0.000016401   0.000257853

   68   17.1  1.5 -1.5  -0.000000027  -0.000016154  -0.000007918  -0.000160330   0.000080372   0.000001242  -0.000000388   0.000006220
                         0.000000106   0.000064059  -0.000002298  -0.000046526   0.000035178   0.000000545  -0.000000820   0.000013420

   69    1.1  0.5  0.5  -0.000000001  -0.000000314   0.000760144   0.016387565   0.013403615   0.000217788   0.005632359  -0.088291195
                        -0.000000001  -0.000000061  -0.002925465  -0.059524468  -0.031838986  -0.000521869  -0.002595435   0.041599234

   70    2.1  0.5  0.5  -0.000000001  -0.000000564  -0.005661048  -0.107559020  -0.059644526  -0.000826992  -0.000228389   0.007950564
                         0.000000005   0.000002242  -0.001539552  -0.030735397  -0.025811561  -0.000326306  -0.001127052   0.015058804

   71    3.1  0.5  0.5  -0.000000007   0.000000003  -0.090698669   0.004881255  -0.000218362   0.026117157   0.073951909   0.004713522
                         0.000000071  -0.000000010  -0.001639602   0.000226285   0.000055269   0.002766998  -0.004453807  -0.000380396

   72    4.1  0.5  0.5  -0.000000000   0.000000000   0.003673678  -0.000055464   0.000090990  -0.001053105  -0.002698422  -0.000214336
                         0.000001739  -0.000000005  -0.040121136   0.001990023  -0.001034931   0.068066135  -0.116200069  -0.007376517

   73    5.1  0.5  0.5  -0.000000001  -0.000000787   0.000296866   0.006869747   0.077303811   0.001205048  -0.001167745   0.018863570
                         0.000000005   0.000003117   0.000124886   0.001997954   0.033899870   0.000503758  -0.002573474   0.040015970

   74    6.1  0.5  0.5  -0.000000004  -0.000002605  -0.000054002  -0.001112140  -0.046754002  -0.000719355  -0.000845190   0.013151709
                        -0.000000001  -0.000000659   0.000164184   0.003858881   0.106722500   0.001670864   0.000420209  -0.006237906

   75    7.1  0.5  0.5   0.000000000   0.000000000   0.000025731  -0.000029825   0.000019800  -0.000008113  -0.000139060  -0.000008478
                         0.000001568  -0.000000001  -0.092197339   0.004544457  -0.000929151   0.058199949   0.060958879   0.003881805

   76    8.1  0.5  0.5   0.000000016   0.000000004   0.000000664  -0.000000024  -0.000000032   0.000001374   0.000001170   0.000000045
                         0.000000000  -0.000000001   0.000000001  -0.000000001  -0.000000034  -0.000000001   0.000000006  -0.000000022

   77    9.1  0.5  0.5  -0.000000000   0.000000061   0.000000030   0.000000740  -0.000002112  -0.000000046   0.000000078  -0.000001417
                        -0.000000000  -0.000000190   0.000000008   0.000000203  -0.000001013  -0.000000015   0.000000183  -0.000002885

   78   10.1  0.5  0.5  -0.000000002  -0.000000960  -0.000000009  -0.000000233  -0.000002595  -0.000000034  -0.000000236   0.000003806
                        -0.000000000  -0.000000245   0.000000041   0.000000836   0.000005852   0.000000091   0.000000116  -0.000001831

   79   11.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000006  -0.000000001
                         0.000000038  -0.000000000   0.000005461  -0.000000269   0.000000018  -0.000001210   0.000001934   0.000000122

   80   12.1  0.5  0.5  -0.000003828   0.000000006  -0.000002367   0.000000117  -0.000000064   0.000004153  -0.000000412  -0.000000027
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000002   0.000000000

   81    1.1  0.5 -0.5   0.000000018   0.000000001  -0.000852513   0.000085366   0.000009745  -0.000487827  -0.000340472   0.000031110
                        -0.000000320   0.000000001   0.061733199  -0.003021403  -0.000565406   0.034541858   0.097599772   0.006201515

   82    2.1  0.5 -0.5   0.000002312  -0.000000006  -0.111863285   0.005865818   0.000888439  -0.064989484  -0.017008374  -0.001117846
                         0.000000002  -0.000000000  -0.000461456   0.000099306   0.000032680  -0.000270452  -0.000833208   0.000269869

   83    3.1  0.5 -0.5  -0.000000010  -0.000000070   0.004750892   0.087561482  -0.025035115  -0.000177877  -0.001649434   0.027250627
                         0.000000000  -0.000000011   0.001143187   0.023704931  -0.007937578  -0.000138189  -0.004431858   0.068892123

   84    4.1  0.5 -0.5  -0.000000005  -0.000001686   0.000501394   0.007654475  -0.026328250  -0.000331629   0.006774546  -0.106430580
                        -0.000000001  -0.000000425  -0.001926622  -0.039555158   0.062776835   0.000984573  -0.002926512   0.046714763

   85    5.1  0.5 -0.5   0.000003215  -0.000000005   0.007154385  -0.000319910  -0.001305925   0.084410171  -0.044238959  -0.002825856
                        -0.000000001   0.000000000  -0.000004042   0.000037194  -0.000021710  -0.000058175  -0.000163070   0.000030643

   86    6.1  0.5 -0.5  -0.000000002  -0.000000001   0.000007480   0.000006101  -0.000010986  -0.000037458   0.000088187   0.000023184
                        -0.000002687   0.000000004  -0.004015938   0.000172730   0.001819103  -0.116514495  -0.014555794  -0.000943602

   87    7.1  0.5 -0.5  -0.000000001  -0.000001521   0.001237989   0.025672557  -0.023329436  -0.000354430  -0.003513720   0.055176061
                         0.000000000  -0.000000384  -0.004372683  -0.088550945   0.053319523   0.000859123   0.001649925  -0.025915373

   88    8.1  0.5 -0.5  -0.000000002   0.000000004  -0.000000024  -0.000000638  -0.000001259  -0.000000043   0.000000001   0.000000500
                         0.000000004  -0.000000016  -0.000000005  -0.000000184  -0.000000552   0.000000018  -0.000000050   0.000001058

   89    9.1  0.5 -0.5  -0.000000199   0.000000000   0.000000767  -0.000000030   0.000000048  -0.000002341   0.000003214   0.000000199
                         0.000000013   0.000000000   0.000000011  -0.000000001   0.000000005   0.000000081   0.000000064  -0.000000006

   90   10.1  0.5 -0.5  -0.000000003  -0.000000000   0.000000010  -0.000000003  -0.000000005  -0.000000030   0.000000049   0.000000005
                        -0.000000990   0.000000002  -0.000000868   0.000000042   0.000000097  -0.000006402  -0.000004223  -0.000000263

   91   11.1  0.5 -0.5  -0.000000000  -0.000000037  -0.000000075  -0.000001522   0.000000485   0.000000006  -0.000000110   0.000001750
                        -0.000000000  -0.000000010   0.000000259   0.000005245  -0.000001108  -0.000000017   0.000000052  -0.000000824

   92   12.1  0.5 -0.5  -0.000000002  -0.000000936   0.000000112   0.000002273  -0.000003804  -0.000000059   0.000000011  -0.000000177
                         0.000000006   0.000003712   0.000000032   0.000000660  -0.000001665  -0.000000025   0.000000024  -0.000000372


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.126988184   0.003009721   0.147296375  -0.003167693   0.001312679   0.437522388  -0.000102580  -0.001477924
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000085127  -0.000019717   0.000039406  -0.000051029   0.000093649   0.000004291   0.022180333   0.003851685
                        -0.215744951   0.005086488   0.250939711  -0.005292470   0.000482345   0.167774206  -0.020124814  -0.261415893

    3    3.1  1.5  1.5   0.000321036   0.011489986   0.004420608   0.205454487   0.025457217  -0.000153763  -0.120994420  -0.014293701
                        -0.000347661  -0.013841372  -0.001050305  -0.047628076   0.261130336  -0.000817726   0.283039094  -0.032383361

    4    4.1  1.5  1.5  -0.010052382  -0.425925888   0.005022131   0.238009628   0.021587361   0.000059923   0.146174176   0.017163516
                         0.012337806   0.521310317  -0.001100516  -0.055117855   0.221696771  -0.000642148  -0.341796760   0.038986613

    5    5.1  1.5  1.5   0.000693284   0.029519421   0.001198247   0.055089426  -0.290440005   0.000901983  -0.230726037   0.026415307
                         0.000584280   0.024191435   0.005099615   0.237676272   0.028310885  -0.000143511  -0.098622543  -0.011665936

    6    6.1  1.5  1.5   0.169381151  -0.004001655  -0.101564023   0.002075987   0.000411834   0.124300061   0.030349801   0.393757583
                         0.000030883  -0.000007542   0.000043674  -0.000062045   0.000125702   0.000012032   0.033510230   0.005834544

    7    7.1  1.5  1.5   0.000260213  -0.000058817   0.000010764   0.000006556  -0.000056217  -0.000025992  -0.027271503  -0.004793230
                         0.004835784  -0.000185167   0.351712617  -0.007508435   0.000314424   0.087294745   0.024800920   0.320743466

    8    8.1  1.5  1.5   0.000000032  -0.000000001   0.009969866  -0.000209156  -0.000046193  -0.015566767  -0.000133178  -0.001756854
                        -0.000000000   0.000000000  -0.000001736   0.000001742  -0.000002106   0.000000481  -0.000154518  -0.000025416

    9    9.1  1.5  1.5   0.000000015   0.000000618   0.000137179   0.006519801   0.000560146   0.000002583   0.005135579   0.000603409
                        -0.000000018  -0.000000756  -0.000029686  -0.001509618   0.005753977  -0.000016385  -0.012008992   0.001370245

   10   10.1  1.5  1.5  -0.000000000   0.000000000  -0.000001666   0.000001353  -0.000000748   0.000000884   0.000370520   0.000066595
                         0.000000424  -0.000000010  -0.015954098   0.000337644   0.000023835   0.008410281  -0.000342422  -0.004398219

   11   11.1  1.5  1.5  -0.000007207  -0.000306849  -0.000012537  -0.000588934  -0.000062202   0.000000117  -0.000043219  -0.000004963
                         0.000008878   0.000375722   0.000002852   0.000136448  -0.000638400   0.000001928   0.000100904  -0.000011382

   12   12.1  1.5  1.5   0.000000705   0.000030008  -0.000002247  -0.000103278   0.000544379  -0.000001691   0.000432624  -0.000049530
                         0.000000594   0.000024592  -0.000009561  -0.000445578  -0.000053064   0.000000269   0.000184923   0.000021874

   13   13.1  1.5  1.5  -0.000007266  -0.000306323  -0.000000446  -0.000026667   0.000006879  -0.000000287  -0.000353216  -0.000041592
                         0.000008884   0.000374759  -0.000000014   0.000006108   0.000070227  -0.000000287   0.000826082  -0.000094361

   14   14.1  1.5  1.5   0.000069280  -0.000001646   0.000203444  -0.000004438   0.000002578   0.000851677   0.000017481   0.000226539
                        -0.000000010   0.000000002   0.000000025  -0.000000036   0.000000073   0.000000007   0.000019503   0.000003396

   15   15.1  1.5  1.5   0.000000030  -0.000000006   0.000000059  -0.000000092   0.000000203   0.000000027   0.000058977   0.000010286
                         0.000202012  -0.000004793   0.000156249  -0.000003225   0.000000581   0.000219116  -0.000053556  -0.000694587

   16   16.1  1.5  1.5  -0.000000277   0.000000063   0.000000049  -0.000000028  -0.000000024  -0.000000041  -0.000029423  -0.000005207
                         0.000085938  -0.000001960   0.000794467  -0.000016910   0.000000909   0.000278562   0.000026793   0.000345618

   17   17.1  1.5  1.5   0.000203810  -0.000004818   0.000266243  -0.000005533   0.000000031   0.000033350  -0.000054137  -0.000702459
                         0.000000030  -0.000000007  -0.000000078   0.000000111  -0.000000224  -0.000000021  -0.000059708  -0.000010396

   18    1.1  1.5  0.5  -0.000663105  -0.028434642   0.001798475   0.088337924   0.026670337  -0.000076559   0.203595278  -0.023202622
                        -0.000537657  -0.023210878   0.008056008   0.381401128  -0.002593137   0.000112218   0.087092318   0.010299250

   19    2.1  1.5  0.5  -0.001075708  -0.045186763  -0.006912655  -0.327018516   0.034742135  -0.000114742   0.048100390   0.005519822
                         0.001299115   0.055236732   0.001570290   0.075753015   0.356854547  -0.001033761  -0.112558470   0.012871626

   20    3.1  1.5  0.5   0.000119056  -0.000028008   0.000056058  -0.000057887   0.000074515  -0.000013392   0.007627777   0.001283333
                        -0.450363084   0.010633001   0.411258866  -0.008676880  -0.000510980  -0.174284251  -0.006776324  -0.088890315

   21    4.1  1.5  0.5   0.000108544  -0.000024618   0.000010769  -0.000022795   0.000060916   0.000012901   0.020454831   0.003576855
                        -0.084359385   0.001969286  -0.160443740   0.003467275  -0.000898504  -0.289176315  -0.018509363  -0.239715851

   22    5.1  1.5  0.5   0.439361795  -0.010413243   0.226343574  -0.004783743  -0.001013008  -0.350174395   0.014296247   0.184654336
                        -0.000025366   0.000004866  -0.000023044   0.000012276   0.000015305   0.000020761   0.015577892   0.002754346

   23    6.1  1.5  0.5   0.001694736   0.072812210  -0.000873219  -0.041737650  -0.398507143   0.001159970   0.181566450  -0.020728906
                         0.001321863   0.059213913  -0.003804355  -0.180167889   0.038801645  -0.000091486   0.077622921   0.008998061

   24    7.1  1.5  0.5  -0.000064014  -0.004292097   0.004275288   0.203727343   0.001777699   0.000121841   0.144692736   0.017045280
                         0.000122509   0.005442555  -0.000924339  -0.047168799   0.018337614  -0.000034215  -0.338350035   0.038616455

   25    8.1  1.5  0.5   0.000000018   0.000000747   0.000051163   0.002477537  -0.011154256   0.000033355   0.005496012  -0.000625208
                         0.000000014   0.000000611   0.000227125   0.010694858   0.001086641  -0.000000814   0.002351319   0.000274606

   26    9.1  1.5  0.5  -0.000000000   0.000000000  -0.000000122   0.000000676  -0.000002354  -0.000000699  -0.000909573  -0.000159399
                        -0.000000401   0.000000010   0.010367921  -0.000222612   0.000038730   0.012397293   0.000823929   0.010663009

   27   10.1  1.5  0.5   0.000000010   0.000000426   0.000010383   0.000593309  -0.000116377   0.000005286   0.006542968   0.000770430
                        -0.000000012  -0.000000522  -0.000000234  -0.000136164  -0.001187445   0.000004973  -0.015302312   0.001747910

   28   11.1  1.5  0.5   0.000000163  -0.000000038  -0.000000087   0.000000106  -0.000000179  -0.000000000  -0.000037685  -0.000006525
                        -0.000377240   0.000008890  -0.000311380   0.000006458   0.000001880   0.000617716   0.000033939   0.000440997

   29   12.1  1.5  0.5   0.000446994  -0.000010594  -0.000423655   0.000008954   0.000001898   0.000656074  -0.000026818  -0.000346391
                        -0.000000026   0.000000005   0.000000043  -0.000000023  -0.000000029  -0.000000039  -0.000029223  -0.000005167

   30   13.1  1.5  0.5  -0.000000012   0.000000003   0.000000062  -0.000000050   0.000000023  -0.000000035  -0.000015960  -0.000002860
                         0.000273878  -0.000006482   0.000766956  -0.000016287   0.000000461   0.000134926   0.000014613   0.000187722

   31   14.1  1.5  0.5   0.000000108   0.000004603   0.000002698   0.000133195  -0.000184988   0.000000540   0.000468627  -0.000053428
                         0.000000104   0.000003828   0.000012148   0.000575095   0.000018018   0.000000147   0.000200438   0.000023598

   32   15.1  1.5  0.5   0.000000969   0.000040050  -0.000015110  -0.000715972   0.000057943  -0.000000290  -0.000029682  -0.000003747
                        -0.000001152  -0.000048875   0.000003396   0.000165834   0.000595105  -0.000001739   0.000069272  -0.000007863

   33   16.1  1.5  0.5   0.000000513   0.000023042   0.000001955   0.000095024   0.000029864   0.000000120   0.000284393   0.000033389
                        -0.000000662  -0.000028348  -0.000000364  -0.000021971   0.000306886  -0.000000857  -0.000665088   0.000075927

   34   17.1  1.5  0.5   0.000001848   0.000079383   0.000002602   0.000125732   0.000725261  -0.000002110  -0.000205147   0.000023445
                         0.000001448   0.000064585   0.000011463   0.000542788  -0.000070615   0.000000228  -0.000087674  -0.000010045

   35    1.1  1.5 -0.5  -0.036705221   0.000853681  -0.391497644   0.008254047   0.000087079   0.026796105   0.017007417   0.221417152
                        -0.000021846   0.000003319   0.000058292  -0.000066901   0.000104266  -0.000005035   0.018846326   0.003248638

   36    2.1  1.5 -0.5  -0.000033165   0.000010814   0.000039384  -0.000031041   0.000013968  -0.000022156  -0.010278046  -0.001840739
                        -0.071364830   0.001686633   0.335677863  -0.007088698  -0.001040016  -0.358541746   0.009513620   0.122391456

   37    3.1  1.5 -0.5   0.006707088   0.284906527   0.008465886   0.400651549  -0.016885262   0.000123708   0.034983219   0.004212067
                        -0.008250847  -0.348791045  -0.001902727  -0.092801909  -0.173464372   0.000501348  -0.081727043   0.009293010

   38    4.1  1.5 -0.5   0.001227141   0.053300250  -0.003372593  -0.156298155  -0.028051359   0.000147748   0.094235363   0.011157780
                        -0.001540395  -0.065388080   0.000805068   0.036236451  -0.287812548   0.000888365  -0.220445412   0.025228963

   39    5.1  1.5 -0.5  -0.008059885  -0.340181364   0.001068143   0.051082775   0.348526486  -0.001009719  -0.169809843   0.019396438
                        -0.006593475  -0.278056518   0.004662984   0.220503887  -0.033932227   0.000082989  -0.072590822  -0.008416150

   40    6.1  1.5 -0.5   0.093850166  -0.002148734   0.184939177  -0.003903275  -0.001163375  -0.400391696   0.015276823   0.197441269
                         0.000227738  -0.000048946  -0.000019544   0.000008300   0.000021416   0.000020408   0.016651465   0.002939239

   41    7.1  1.5 -0.5   0.000120790  -0.000027960  -0.000048040   0.000064830  -0.000124585  -0.000008691  -0.031278592  -0.005438907
                        -0.006930290   0.000135368  -0.209116531   0.004373590  -0.000022240  -0.018423578   0.028344697   0.367949932

   42    8.1  1.5 -0.5   0.000000965  -0.000000023  -0.010978077   0.000232812  -0.000033277  -0.011207061   0.000459460   0.005977223
                         0.000000000  -0.000000000   0.000001191  -0.000001440   0.000002424  -0.000000005   0.000505164   0.000087440

   43    9.1  1.5 -0.5   0.000000006   0.000000254   0.000216711   0.010100162   0.001202736  -0.000006099  -0.004191496  -0.000495805
                        -0.000000007  -0.000000311  -0.000050921  -0.002341051   0.012338813  -0.000038320   0.009805943  -0.001122658

   44   10.1  1.5 -0.5  -0.000000000   0.000000000  -0.000001313   0.000002116  -0.000004779  -0.000000694  -0.001414772  -0.000246845
                         0.000000674  -0.000000016  -0.000608732   0.000010168   0.000005462   0.001193135   0.001283422   0.016640620

   45   11.1  1.5 -0.5   0.000005597   0.000238598  -0.000006315  -0.000303359   0.000059894  -0.000000360  -0.000173412  -0.000020623
                        -0.000006907  -0.000292200   0.000001355   0.000070221   0.000614806  -0.000001854   0.000405523  -0.000046332

   46   12.1  1.5 -0.5  -0.000008200  -0.000346090  -0.000001999  -0.000095613  -0.000652987   0.000001892   0.000318545  -0.000036386
                        -0.000006708  -0.000282886  -0.000008728  -0.000412724   0.000063574  -0.000000155   0.000136173   0.000015789

   47   13.1  1.5 -0.5  -0.000004099  -0.000173306   0.000015878   0.000747165   0.000013117  -0.000000022  -0.000073742  -0.000008636
                         0.000005021   0.000212071  -0.000003629  -0.000173107   0.000134287  -0.000000461   0.000172655  -0.000019841

   48   14.1  1.5 -0.5   0.000005987  -0.000000150  -0.000590318   0.000012444  -0.000000524  -0.000185863   0.000039211   0.000509637
                        -0.000000051   0.000000012   0.000000093  -0.000000114   0.000000198   0.000000003   0.000043289   0.000007502

   49   15.1  1.5 -0.5   0.000000081  -0.000000022   0.000000104  -0.000000103   0.000000120  -0.000000031   0.000006621   0.000001060
                         0.000063189  -0.000001505   0.000734926  -0.000015487  -0.000001759  -0.000597920  -0.000005659  -0.000075356

   50   16.1  1.5 -0.5  -0.000000098   0.000000021  -0.000000052   0.000000087  -0.000000202  -0.000000032  -0.000061386  -0.000010715
                         0.000036531  -0.000000837  -0.000097531   0.000001987  -0.000000841  -0.000308336   0.000055782   0.000723261

   51   17.1  1.5 -0.5   0.000102336  -0.000002347  -0.000557160   0.000011754   0.000002123   0.000728690  -0.000017332  -0.000223071
                         0.000000227  -0.000000048   0.000000069  -0.000000054   0.000000022  -0.000000039  -0.000018713  -0.000003348

   52    1.1  1.5 -1.5  -0.002330424  -0.098326829  -0.000715221  -0.033257468   0.435460907  -0.001306494  -0.001350146   0.000093711
                        -0.001904611  -0.080360647  -0.003085894  -0.143492727  -0.042422146   0.000127277  -0.000601137   0.000041724

   53    2.1  1.5 -1.5  -0.003203564  -0.136461780  -0.005167323  -0.244468570  -0.016263107  -0.000046440  -0.102810655  -0.012077024
                         0.003950940   0.167104978   0.001145255   0.056620300  -0.166984118   0.000489152   0.240381101  -0.027406583

   54    3.1  1.5 -1.5  -0.000137589   0.000028571  -0.000009412   0.000025071  -0.000073751  -0.000018088  -0.026229635  -0.004590928
                        -0.017988453   0.000472352   0.210902773  -0.004543599   0.000828782   0.262368295   0.023769691   0.307781907

   55    4.1  1.5 -1.5  -0.000101525   0.000024059   0.000044715  -0.000061830   0.000121903   0.000010059   0.031537165   0.005487483
                         0.673184446  -0.015914498   0.244308328  -0.005140925   0.000633312   0.222745308  -0.028634760  -0.371701227

   56    5.1  1.5 -1.5  -0.038165680   0.000906553   0.243977161  -0.005238475   0.000911648   0.291816556   0.019386449   0.250892095
                         0.000050928  -0.000013684   0.000002857  -0.000015883   0.000055378   0.000016446   0.021401591   0.003750563

   57    6.1  1.5 -1.5   0.003103250   0.131171206   0.000408286   0.022889194   0.123713228  -0.000397706   0.362087337  -0.041355907
                         0.002526487   0.107163847   0.002036387   0.098951187  -0.012064102   0.000165041   0.154828410   0.018268411

   58    7.1  1.5 -1.5   0.000162719   0.003261664  -0.007313064  -0.342632742  -0.008489963   0.000086438   0.126081645   0.014826045
                        -0.000106154  -0.003579675   0.001701687   0.079401320  -0.086880917   0.000307492  -0.294962311   0.033749206

   59    8.1  1.5 -1.5   0.000000001   0.000000025  -0.000045527  -0.002249365  -0.015493467   0.000045771  -0.001615298   0.000184513
                         0.000000001   0.000000020  -0.000204148  -0.009712805   0.001508874  -0.000006575  -0.000691371  -0.000086990

   60    9.1  1.5 -1.5   0.000000000  -0.000000000   0.000001445  -0.000002054   0.000004159   0.000000399   0.001108578   0.000193017
                        -0.000000977   0.000000023   0.006692290  -0.000140339   0.000016058   0.005781178  -0.001006343  -0.013059587

   61   10.1  1.5 -1.5   0.000000006   0.000000268   0.000329230   0.015542490  -0.000814580   0.000003055  -0.001728111  -0.000199207
                        -0.000000008  -0.000000328  -0.000074918  -0.003600590  -0.008370740   0.000023651   0.004045046  -0.000463524

   62   11.1  1.5 -1.5  -0.000000171   0.000000038  -0.000000049   0.000000052  -0.000000071   0.000000010  -0.000009163  -0.000001560
                         0.000485101  -0.000011435  -0.000604534   0.000012857  -0.000001930  -0.000641423   0.000008379   0.000109759

   63   12.1  1.5 -1.5  -0.000038798   0.000000922  -0.000457390   0.000009821  -0.000001709  -0.000546959  -0.000036351  -0.000470437
                         0.000000052  -0.000000014  -0.000000005   0.000000030  -0.000000104  -0.000000031  -0.000040129  -0.000007032

   64   13.1  1.5 -1.5   0.000000031  -0.000000004  -0.000000071   0.000000114  -0.000000258  -0.000000038  -0.000076377  -0.000013326
                         0.000484023  -0.000011477  -0.000027358   0.000000431   0.000000314   0.000070564   0.000069285   0.000898329

   65   14.1  1.5 -1.5   0.000001273   0.000053637  -0.000001037  -0.000045960   0.000847664  -0.000002559   0.000208334  -0.000023903
                         0.000001043   0.000043849  -0.000004315  -0.000198185  -0.000082586   0.000000323   0.000089041   0.000010707

   66   15.1  1.5 -1.5   0.000003038   0.000127860  -0.000003163  -0.000152228  -0.000021218  -0.000000146  -0.000273122  -0.000032095
                        -0.000003707  -0.000156398   0.000000638   0.000035221  -0.000218087   0.000000598   0.000638718  -0.000072915

   67   16.1  1.5 -1.5   0.000001192   0.000054169  -0.000016480  -0.000773963  -0.000027050   0.000000112   0.000135821   0.000015981
                        -0.000001557  -0.000066717   0.000003791   0.000179332  -0.000277246   0.000000903  -0.000317855   0.000036444

   68   17.1  1.5 -1.5   0.000003735   0.000157829  -0.000001142  -0.000060038   0.000033194  -0.000000052  -0.000645955   0.000073742
                         0.000003043   0.000128952  -0.000005415  -0.000259385  -0.000003212  -0.000000220  -0.000276224  -0.000032526

   69    1.1  0.5  0.5  -0.001149392  -0.046521821  -0.000792052  -0.038196539   0.000467527   0.000011807   0.021074703   0.002439991
                         0.001339463   0.056237326   0.000199895   0.008601036   0.009457397  -0.000008244  -0.049203363   0.005648411

   70    2.1  0.5  0.5  -0.001245449  -0.040943015   0.000032464  -0.006961020  -0.058580998   0.000186664   0.004737786  -0.000760465
                        -0.000833190  -0.034151664  -0.000697967  -0.031379770   0.005625249  -0.000045114   0.002443535   0.000106077

   71    3.1  0.5  0.5  -0.073828713   0.001954792   0.046005643  -0.000928657   0.000247753   0.003809598  -0.003595953  -0.048500067
                        -0.000365030   0.000151897  -0.001350027   0.000128104  -0.000049367  -0.001264960  -0.004263196  -0.002692620

   72    4.1  0.5  0.5   0.002931038  -0.000035011  -0.001854856   0.000026440   0.000076190  -0.000150879   0.004350757   0.002694216
                        -0.008555633   0.000275991  -0.033184466   0.000753426  -0.000100586  -0.030920546  -0.003663603  -0.049247463

   73    5.1  0.5  0.5  -0.001936317  -0.080353574   0.000300529   0.013340266  -0.032104587   0.000100897   0.000142423  -0.000026547
                        -0.001560273  -0.065577516   0.001226856   0.057514256   0.003106188   0.000010010   0.000048859  -0.000006054

   74    6.1  0.5  0.5  -0.001162095  -0.049346383   0.000663795   0.031700554  -0.004750437   0.000028587   0.012612549   0.001501687
                         0.001449656   0.060496188  -0.000150214  -0.007363160  -0.049009479   0.000130482  -0.029496048   0.003382000

   75    7.1  0.5  0.5   0.000041516  -0.000023530  -0.000018636  -0.000003450  -0.000036185  -0.000003119  -0.003498496  -0.000594735
                         0.065293537  -0.001599552  -0.014907738   0.000324535  -0.000128903  -0.050710200   0.003197655   0.041317254

   76    8.1  0.5  0.5  -0.000002834   0.000000089   0.071423831  -0.001773893   0.000037457  -0.005921525   0.005982914   0.066273999
                        -0.000000000   0.000000050   0.000013819   0.000094349  -0.000266620  -0.000001570   0.006157466   0.001017167

   77    9.1  0.5  0.5   0.000000116   0.000003681  -0.000744101   0.000023017   0.006855748   0.000024501   0.089022395  -0.010892750
                         0.000000074   0.000003104   0.000028739   0.003653408  -0.001502419   0.000053223   0.038509788   0.004448685

   78   10.1  0.5  0.5   0.000000080   0.000003819   0.001612871   0.062394952   0.006425872  -0.000035015   0.014865406   0.001739192
                        -0.000000108  -0.000004575  -0.000302535  -0.014409182   0.065049597  -0.000191446  -0.031545202   0.003708677

   79   11.1  0.5  0.5   0.000000002   0.000000002  -0.000000903  -0.000009016   0.000021058  -0.000001351   0.002292155   0.000366757
                        -0.000002457   0.000000059   0.082350898  -0.001734197  -0.000133092  -0.045951078  -0.001998810  -0.026303100

   80   12.1  0.5  0.5   0.000002474  -0.000000059  -0.000497114   0.000018715  -0.000293245  -0.097634206  -0.000623628  -0.008033153
                         0.000000001  -0.000000000  -0.000003995   0.000004883  -0.000009659   0.000000829  -0.000713202  -0.000121587

   81    1.1  0.5 -0.5   0.000433703  -0.000042334  -0.000245315  -0.000015899   0.000012551   0.000451665   0.004526492   0.000760540
                         0.072984441  -0.001764503  -0.039152181   0.000816732   0.000007060   0.009458168  -0.004167611  -0.053521357

   82    2.1  0.5 -0.5   0.053313989  -0.001491609  -0.032141148   0.000672613   0.000190158   0.058850405  -0.000651571  -0.005322061
                        -0.000534047  -0.000143006   0.000303849  -0.000189216   0.000026802  -0.000081266  -0.000406220   0.000305207

   83    3.1  0.5 -0.5  -0.001609717  -0.057396500  -0.000084882  -0.009072268   0.003914299  -0.000251372  -0.045402065   0.005019084
                        -0.001119417  -0.046437635  -0.000933600  -0.045122452   0.000889622  -0.000025112  -0.017267287  -0.002431977

   84    4.1  0.5 -0.5  -0.000147543  -0.003144674   0.000739940   0.032746341   0.002847886  -0.000085584  -0.017569827  -0.002484452
                         0.000235855   0.008479438  -0.000144356  -0.005685632   0.030789486  -0.000092725   0.046085492  -0.005116500

   85    5.1  0.5 -0.5   0.103716450  -0.002486660   0.059041106  -0.001263030   0.000099452   0.032254495  -0.000026714  -0.000149983
                         0.000072731  -0.000017222   0.000009862  -0.000015762  -0.000019746  -0.000021307  -0.000005267  -0.000013295

   86    6.1  0.5 -0.5  -0.000074333   0.000017562  -0.000015477  -0.000003541   0.000015800  -0.000023902   0.002747462   0.000475243
                         0.078069512  -0.001857864   0.032544446  -0.000680570  -0.000132639  -0.049239163  -0.002478798  -0.032075962

   87    7.1  0.5 -0.5   0.001030447   0.041351193   0.000315375   0.014526982   0.004913754   0.000023516   0.016262227   0.001895397
                        -0.001223642  -0.050530451  -0.000076637  -0.003347805   0.050471570  -0.000131804  -0.037986961   0.004344185

   88    8.1  0.5 -0.5  -0.000000101  -0.000002194  -0.000308607  -0.016139968  -0.005893472  -0.000063132   0.060957821  -0.007970157
                        -0.000000017  -0.000001793  -0.001749388  -0.069576327   0.000575713  -0.000261731   0.026027323   0.003191591

   89    9.1  0.5 -0.5  -0.000004814   0.000000137   0.003564263   0.000140011   0.000019225  -0.006969120  -0.008141511  -0.096989339
                         0.000000074   0.000000016  -0.000802466   0.000731375  -0.000055348  -0.000830607  -0.008494621  -0.001029003

   90   10.1  0.5 -0.5  -0.000000062  -0.000000007   0.000050819  -0.000069441  -0.000016287  -0.000088390   0.003097307  -0.000749355
                        -0.000005959   0.000000134   0.064037114  -0.001639530   0.000193939   0.065366154  -0.002680627  -0.034864288

   91   11.1  0.5 -0.5  -0.000000038  -0.000001554  -0.001691451  -0.080224140   0.004454069  -0.000033864  -0.010363579  -0.001280976
                         0.000000045   0.000001904   0.000382774   0.018594564   0.045734701  -0.000130423   0.024178169  -0.002758318

   92   12.1  0.5 -0.5   0.000000046   0.000001916   0.000008983   0.000116133  -0.097174262   0.000290927  -0.007388079   0.000859801
                         0.000000037   0.000001565   0.000017129   0.000483375   0.009465782  -0.000038046  -0.003156361  -0.000397883


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.040698854   0.006045258  -0.001937885   0.349084352  -0.038325986  -0.000000000   0.005405382   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.002343340   0.001196580   0.000132247  -0.000293188   0.000074552  -0.000024485   0.000322891  -0.000212993
                         0.283182312   0.044362498  -0.002602075   0.422943188   0.004368527  -0.000007227   0.039762233  -0.000163182

    3    3.1  1.5  1.5   0.041585883  -0.257867552   0.203698090   0.000748010  -0.000033472   0.096766347   0.000024410  -0.003758000
                        -0.020580366   0.135417429   0.071039266   0.000448695  -0.000025285  -0.008001993  -0.000002109  -0.001877848

    4    4.1  1.5  1.5  -0.008742477   0.055747023   0.150476413   0.000889227   0.000012339  -0.037998774  -0.000090135  -0.049573764
                         0.004454374  -0.029546931   0.052109121   0.000281631  -0.000039670   0.003043295  -0.000440950  -0.028255569

    5    5.1  1.5  1.5   0.019722358  -0.129737499  -0.077824022  -0.000484689   0.000009042  -0.000185019   0.000328380   0.031755856
                         0.039889445  -0.247126328   0.223305602   0.000868633  -0.000023259  -0.003590741  -0.000030329  -0.055352437

    6    6.1  1.5  1.5  -0.372430063  -0.058699875   0.001737127  -0.245614475  -0.046022732  -0.000007619  -0.017701460   0.000112560
                         0.003444727   0.001758983   0.000194403  -0.000430990   0.000021955  -0.000013062   0.000181111  -0.000128419

    7    7.1  1.5  1.5  -0.002524488  -0.001289084  -0.000142465   0.000315857   0.000246861  -0.000059229   0.000748009  -0.000460003
                        -0.245247262  -0.038905524  -0.000045458   0.057513329  -0.054731026  -0.000060321   0.095495274  -0.000299512

    8    8.1  1.5  1.5   0.005916029   0.000942658   0.000020755  -0.005011087  -0.000000450   0.000000002  -0.000001673  -0.000000003
                        -0.000065130  -0.000033255  -0.000003675   0.000008149   0.000000004   0.000000003   0.000000033  -0.000000000

    9    9.1  1.5  1.5  -0.001203910   0.007590103   0.009815002   0.000063403   0.000000002  -0.000001001  -0.000000000   0.000001493
                         0.000606184  -0.004007984   0.003392952   0.000017570   0.000000004   0.000000097   0.000000013   0.000000836

   10   10.1  1.5  1.5   0.000065221   0.000033301   0.000003682  -0.000008159   0.000000000   0.000000004   0.000000007   0.000000008
                         0.005924300   0.000943981   0.000020765  -0.005015179  -0.000000904  -0.000000002  -0.000000105   0.000000008

   11   11.1  1.5  1.5  -0.000142421   0.000875977  -0.001597766  -0.000007435   0.000000635  -0.001760339   0.000002205   0.001747327
                         0.000069887  -0.000458748  -0.000555498  -0.000003287   0.000002091   0.000148824   0.000014568   0.000987708

   12   12.1  1.5  1.5  -0.000126376   0.000831332   0.000498703   0.000003106  -0.000000409   0.000008388  -0.000014865  -0.001437567
                        -0.000255604   0.001583537  -0.001430962  -0.000005567   0.000001053   0.000162699   0.000001373   0.002505768

   13   13.1  1.5  1.5   0.000232155  -0.001446322   0.000285937  -0.000000432  -0.000001485   0.004365250   0.000003607   0.001418819
                        -0.000115453   0.000760723   0.000101346   0.000000849   0.000000402  -0.000357901   0.000013650   0.000817374

   14   14.1  1.5  1.5  -0.000492954  -0.000079945  -0.000008343   0.001636684  -0.002296307  -0.000000107  -0.000015691   0.000001581
                         0.000006851   0.000003498   0.000000387  -0.000000857   0.000000307  -0.000000183   0.000002541  -0.000001803

   15   15.1  1.5  1.5   0.000020350   0.000010391   0.000001149  -0.000002546  -0.000001533   0.000000096  -0.000000647  -0.000000198
                         0.002300998   0.000361752  -0.000015064   0.002315999   0.001202085   0.000000828  -0.000142779  -0.000001139

   16   16.1  1.5  1.5  -0.000008543  -0.000004362  -0.000000482   0.000001069   0.000011568  -0.000002899   0.000036863  -0.000022939
                        -0.000683266  -0.000109874  -0.000007135   0.001452183  -0.002174642  -0.000002621   0.004678844  -0.000015393

   17   17.1  1.5  1.5   0.002348342   0.000369395  -0.000014427   0.002188944   0.001441145   0.000000328   0.000837472  -0.000004842
                        -0.000020973  -0.000010709  -0.000001184   0.000002624  -0.000000945   0.000000562  -0.000007790   0.000005525

   18    1.1  1.5  0.5   0.009222044  -0.060375187  -0.118591426  -0.000687977   0.000007256  -0.000278996  -0.000109609  -0.013905027
                         0.018966668  -0.115634256   0.341410220   0.001686510   0.000005891  -0.003050707   0.000008982   0.024141049

   19    2.1  1.5  0.5  -0.014247521   0.088768359  -0.016711942   0.000031074   0.000014725   0.077491584   0.000054340   0.063352191
                         0.007086020  -0.046690724  -0.005929624  -0.000050497   0.000008878  -0.006236282   0.000433035   0.036466956

   20    3.1  1.5  0.5  -0.002584831  -0.001319868  -0.000145875   0.000323410   0.000098595  -0.000038901   0.000522876  -0.000354877
                        -0.285238748  -0.044904916   0.001578576  -0.233853856   0.041371543   0.000001299   0.061271006  -0.000287672

   21    4.1  1.5  0.5   0.003789923   0.001935233   0.000213886  -0.000474181   0.000101870  -0.000025617   0.000325923  -0.000203011
                         0.336876536   0.053757640   0.001558758  -0.354840078  -0.033275803  -0.000022937   0.043383254  -0.000136543

   22    5.1  1.5  0.5   0.233647767   0.036678534  -0.001787474   0.282697163  -0.033283367  -0.000028714  -0.008041626   0.000089831
                        -0.002010861  -0.001026780  -0.000113491   0.000251589  -0.000035405  -0.000003550   0.000069830  -0.000069268

   23    6.1  1.5  0.5   0.006303895  -0.041270524  -0.081093674  -0.000470434  -0.000049239  -0.006670853  -0.000222213  -0.016244828
                         0.012965115  -0.079044031   0.233458881   0.001153295   0.000044375  -0.079660416   0.000005486   0.028967397

   24    7.1  1.5  0.5  -0.062832989   0.391476904  -0.073814469   0.000136393  -0.000034003   0.031109532  -0.000023098  -0.051561109
                         0.031249986  -0.205910416  -0.026189493  -0.000222901  -0.000024360  -0.002682403  -0.000319546  -0.029438771

   25    8.1  1.5  0.5   0.000832777  -0.005489916   0.000049947  -0.000001742  -0.000000004   0.000000004  -0.000000024  -0.000001889
                         0.001671565  -0.010431703  -0.000189096  -0.000015284   0.000000002   0.000000266   0.000000001   0.000003314

   26    9.1  1.5  0.5  -0.000037640  -0.000019214  -0.000002126   0.000004709   0.000000009  -0.000000002   0.000000050  -0.000000017
                        -0.003419637  -0.000544880  -0.000011957   0.002889465   0.000001217  -0.000000002   0.000003850  -0.000000011

   27   10.1  1.5  0.5  -0.000282207   0.001672424  -0.011130373  -0.000057853   0.000000000  -0.000000866  -0.000000001  -0.000000596
                         0.000133208  -0.000864559  -0.003863074  -0.000022004   0.000000002   0.000000079  -0.000000000  -0.000000364

   28   11.1  1.5  0.5  -0.000006260  -0.000003196  -0.000000353   0.000000783  -0.000006418   0.000002053  -0.000026984   0.000017717
                        -0.000312202  -0.000052516  -0.000014202   0.002680590  -0.000192308   0.000000714  -0.003332936   0.000013440

   29   12.1  1.5  0.5  -0.001496381  -0.000234905   0.000011448  -0.001810593   0.001506880   0.000001300   0.000363938  -0.000004066
                         0.000012878   0.000006576   0.000000727  -0.000001611   0.000001603   0.000000160  -0.000003161   0.000003135

   30   13.1  1.5  0.5  -0.000028725  -0.000014668  -0.000001621   0.000003594   0.000000075  -0.000000483   0.000007062  -0.000005359
                        -0.002811707  -0.000445830   0.000000489   0.000473188   0.002396266   0.000000756   0.000665988  -0.000005216

   31   14.1  1.5  0.5   0.000068720  -0.000449900  -0.000883684  -0.000005126  -0.000000380  -0.000105774  -0.000007842  -0.000826877
                         0.000141334  -0.000861676   0.002544018   0.000012567   0.000000877  -0.001251006   0.000000464   0.001446317

   32   15.1  1.5  0.5   0.000082944  -0.000516776   0.000097470  -0.000000180   0.000001242   0.002615128   0.000002672   0.003575600
                        -0.000041252   0.000271815   0.000034582   0.000000294   0.000000821  -0.000207119   0.000023826   0.002053698

   33   16.1  1.5  0.5  -0.000404352   0.002519292  -0.000474727   0.000000879  -0.000001127   0.002728342   0.000000062  -0.000943370
                         0.000201104  -0.001325107  -0.000168436  -0.000001434  -0.000000838  -0.000226938  -0.000005092  -0.000533092

   34   17.1  1.5  0.5  -0.000020077   0.000131440   0.000257858   0.000001496   0.000002220   0.000283018   0.000008019   0.000503494
                        -0.000041290   0.000251739  -0.000742340  -0.000003666  -0.000001826   0.003383612  -0.000000110  -0.000907004

   35    1.1  1.5 -0.5  -0.130435633  -0.021071331  -0.001818819   0.361420555   0.003063301   0.000006464  -0.027857146   0.000061363
                         0.001729131   0.000882941   0.000097588  -0.000216337   0.000029017   0.000006751   0.000345558  -0.000091265

   36    2.1  1.5 -0.5   0.001025639   0.000523704   0.000057890  -0.000128320  -0.000110643   0.000010050  -0.000886468   0.000351356
                         0.100293536   0.015903750  -0.000012819  -0.017732259  -0.077742039   0.000013951  -0.073092771   0.000258884

   37    3.1  1.5 -0.5  -0.040153109   0.252303086   0.221058140   0.001539269   0.000001881   0.041241502   0.000077743   0.053213372
                         0.020147490  -0.133082596   0.076295671   0.000379252   0.000038878  -0.003279144   0.000450166   0.030376744

   38    4.1  1.5 -0.5   0.048237583  -0.298328223   0.335108327   0.001402701   0.000024951  -0.033156419   0.000020019   0.037699638
                        -0.023806819   0.156526149   0.116679541   0.000712673   0.000023659   0.002818036   0.000243837   0.021469751

   39    5.1  1.5 -0.5   0.016501711  -0.109105721   0.092362658   0.000478276   0.000005882  -0.002752410   0.000104315   0.003987902
                         0.032772896  -0.206618644  -0.267183250  -0.001726034   0.000028328  -0.033169384  -0.000044566  -0.006983499

   40    6.1  1.5 -0.5  -0.089161750  -0.014403783  -0.001243764   0.247142087   0.079939108   0.000040207  -0.033211498   0.000113300
                         0.001182070   0.000603601   0.000066707  -0.000147898   0.000145424  -0.000052697   0.000030558  -0.000191237

   41    7.1  1.5 -0.5   0.004523265   0.002309651   0.000255281  -0.000565936   0.000133789  -0.000027055   0.000511194  -0.000267575
                         0.442303974   0.070137091  -0.000055854  -0.078320784  -0.031224676  -0.000031901   0.059371102  -0.000176200

   42    8.1  1.5 -0.5  -0.011787523  -0.001866554   0.000013870  -0.000195024  -0.000000265   0.000000002  -0.000003814   0.000000013
                         0.000117881   0.000060191   0.000006652  -0.000014749   0.000000018  -0.000000005   0.000000030  -0.000000021

   43    9.1  1.5 -0.5  -0.000488739   0.003027939  -0.002728511  -0.000010601   0.000000002   0.000001214   0.000000001   0.000003335
                         0.000241656  -0.001589630  -0.000950923  -0.000005925   0.000000002  -0.000000091   0.000000020   0.000001924

   44   10.1  1.5 -0.5   0.000032623   0.000016665   0.000001840  -0.000004081  -0.000000008   0.000000003   0.000000026   0.000000000
                         0.001882392   0.000311620   0.000061869  -0.011781703   0.000000870   0.000000000   0.000000698  -0.000000001

   45   11.1  1.5 -0.5  -0.000047743   0.000277781  -0.002532446  -0.000013303  -0.000000879  -0.000192190  -0.000003077  -0.002895340
                         0.000022108  -0.000142643  -0.000878795  -0.000004986  -0.000001988   0.000009303  -0.000022024  -0.001651119

   46   12.1  1.5 -0.5  -0.000105684   0.000698760  -0.000591556  -0.000003063  -0.000000266   0.000124613  -0.000004721  -0.000180480
                        -0.000209891   0.001323274   0.001711231   0.000011054  -0.000001282   0.001501720   0.000002017   0.000316050

   47   13.1  1.5 -0.5  -0.000399395   0.002488588  -0.000445905   0.000000993  -0.000000714   0.002388274   0.000001935   0.000577732
                         0.000198655  -0.001308989  -0.000158393  -0.000001372   0.000000543  -0.000195548   0.000007223   0.000331385

   48   14.1  1.5 -0.5  -0.000971972  -0.000157018  -0.000013553   0.002693125   0.001255465   0.000000843  -0.001665930   0.000004234
                         0.000012885   0.000006579   0.000000727  -0.000001612   0.000003294  -0.000000450   0.000015303  -0.000006617

   49   15.1  1.5 -0.5  -0.000005971  -0.000003049  -0.000000337   0.000000747  -0.000007061   0.000000919  -0.000046107   0.000019487
                        -0.000583871  -0.000092586   0.000000074   0.000103421  -0.002623307   0.000001171  -0.004123162   0.000013967

   50   16.1  1.5 -0.5   0.000029108   0.000014864   0.000001643  -0.000003642   0.000003450  -0.000000928   0.000004532  -0.000004474
                         0.002846383   0.000451357  -0.000000361  -0.000503709  -0.002737762  -0.000001055   0.001083565  -0.000002433

   51   17.1  1.5 -0.5   0.000283963   0.000045872   0.000003954  -0.000785850  -0.003395422  -0.000001639   0.001037377  -0.000004012
                        -0.000003763  -0.000001922  -0.000000212   0.000000471  -0.000005848   0.000002361   0.000003538   0.000006944

   52    1.1  1.5 -1.5  -0.002868731   0.019313327  -0.114346174  -0.000634774  -0.000000000   0.003128783   0.000000000   0.002639609
                        -0.005321234   0.035824462   0.329825465   0.001830972  -0.000000000   0.038198062  -0.000000000  -0.004717057

   53    2.1  1.5 -1.5  -0.039617150   0.250378346   0.399705566   0.002501839  -0.000009202  -0.004360032  -0.000038391  -0.034541201
                         0.019998612  -0.132319299   0.138262383   0.000727385  -0.000023813   0.000282326  -0.000265557  -0.019698853

   54    3.1  1.5 -1.5   0.003170209   0.001618749   0.000178923  -0.000396642  -0.000075660   0.000027933   0.000196421   0.000013760
                         0.291244750   0.046371508   0.000853717  -0.215729766   0.097096612   0.000031296  -0.004196462  -0.000020271

   55    4.1  1.5 -1.5  -0.000446145  -0.000227789  -0.000025182   0.000055823  -0.000068934   0.000038531  -0.000449141   0.000340784
                        -0.063091622  -0.009809203   0.000932420  -0.159243551  -0.038120384  -0.000015536  -0.057059036   0.000293986

   56    5.1  1.5 -1.5   0.279094606   0.044471087   0.000979475  -0.236477954  -0.003593861   0.000022443  -0.063811142   0.000186824
                        -0.003072704  -0.001568965  -0.000173419   0.000384443   0.000108733  -0.000010911   0.000681801  -0.000271753

   57    6.1  1.5 -1.5   0.026307259  -0.173701654   0.080046338   0.000385336  -0.000013641   0.003735234  -0.000167032  -0.008802197
                         0.052504262  -0.329459790  -0.232205167  -0.001704969  -0.000006527   0.045870910   0.000035515   0.015358900

   58    7.1  1.5 -1.5   0.034857639  -0.217072637   0.054236872  -0.000003716  -0.000064955   0.054528193  -0.000036739  -0.082969556
                        -0.017327623   0.114158061   0.019137515   0.000149495  -0.000054107  -0.004714063  -0.000547686  -0.047285936

   59    8.1  1.5 -1.5  -0.000418058   0.002750077   0.001649133   0.000010271   0.000000004   0.000000032   0.000000002  -0.000000846
                        -0.000845539   0.005238389  -0.004731957  -0.000018406   0.000000002   0.000000449  -0.000000003   0.000001444

   60    9.1  1.5 -1.5  -0.000073866  -0.000037723  -0.000004168   0.000009241   0.000000015  -0.000000004   0.000000001  -0.000000011
                        -0.008583014  -0.001347381   0.000065660  -0.010384908  -0.000001005  -0.000000002   0.000001711  -0.000000006

   61   10.1  1.5 -1.5  -0.000846726   0.005245713  -0.004735821  -0.000018414  -0.000000002   0.000000901   0.000000003   0.000000095
                         0.000418646  -0.002753921  -0.001650482  -0.000010281   0.000000004  -0.000000074   0.000000011   0.000000045

   62   11.1  1.5 -1.5  -0.000011883  -0.000006068  -0.000000671   0.000001487   0.000004620  -0.000002136   0.000008661  -0.000011636
                        -0.000988759  -0.000158528  -0.000008102   0.001691577  -0.001766612  -0.000000462   0.002007148  -0.000009039

   63   12.1  1.5 -1.5  -0.001788383  -0.000284962  -0.000006277   0.001515372   0.000162841  -0.000001016   0.002888688  -0.000008457
                         0.000019689   0.000010054   0.000001111  -0.000002463  -0.000004922   0.000000494  -0.000030865   0.000012302

   64   13.1  1.5 -1.5   0.000016727   0.000008542   0.000000944  -0.000002093  -0.000000345  -0.000000280   0.000020437  -0.000010150
                         0.001634095   0.000259138  -0.000000130  -0.000303359   0.004379897   0.000001513   0.001637294  -0.000009813

   65   14.1  1.5 -1.5   0.000034858  -0.000227897  -0.000536923  -0.000003098  -0.000000192   0.000187155  -0.000002345  -0.000009880
                         0.000072030  -0.000437165   0.001546108   0.000007756  -0.000000092   0.002288668   0.000000499   0.000012453

   66   15.1  1.5 -1.5  -0.000323357   0.002035071   0.002189060   0.000014609   0.000000833  -0.001197948  -0.000000898   0.000124281
                         0.000162520  -0.001074008   0.000756224   0.000003849   0.000000028   0.000099662  -0.000000729   0.000070288

   67   16.1  1.5 -1.5   0.000098784  -0.000605487   0.001371716   0.000006583  -0.000002849   0.002166439  -0.000002231  -0.004065035
                        -0.000048300   0.000316719   0.000476687   0.000002793  -0.000002675  -0.000189058  -0.000027534  -0.002316987

   68   17.1  1.5 -1.5  -0.000165868   0.001095927  -0.000714532  -0.000003607   0.000000587  -0.000116707   0.000007186   0.000415761
                        -0.000330236   0.002077040   0.002069040   0.000014018   0.000000281  -0.001436412  -0.000001528  -0.000727023

   69    1.1  0.5  0.5   0.000000349  -0.000002041   0.000012781   0.000000077  -0.000379753   0.684306495   0.000075625   0.030070384
                        -0.000000168   0.000001148   0.000004398   0.000000025   0.000121481  -0.059891906   0.000406332   0.016847965

   70    2.1  0.5  0.5  -0.000000670   0.000004651   0.000001496   0.000000045  -0.000729754  -0.040692489  -0.001041440   0.101726904
                        -0.000001419   0.000008811  -0.000004594  -0.000000014  -0.000665099  -0.434840739   0.000540543  -0.175313945

   71    3.1  0.5  0.5   0.000010153   0.000001587  -0.000000070   0.000008991  -0.167331214  -0.000053429  -0.539810447   0.001884447
                         0.000000129  -0.000000058   0.000000018  -0.000000151  -0.019771101   0.001299962   0.023894307  -0.002613575

   72    4.1  0.5  0.5  -0.000000354  -0.000000031   0.000000006  -0.000000370   0.008032463   0.000054433   0.025325745  -0.002326136
                         0.000005228   0.000000821   0.000000026  -0.000003953  -0.517862858   0.000123978   0.480293367  -0.000969504

   73    5.1  0.5  0.5  -0.000000271   0.000001832   0.000004445   0.000000028  -0.000364887   0.004750182  -0.004154289  -0.307662938
                        -0.000000576   0.000003518  -0.000012799  -0.000000063   0.000127005   0.071081833   0.000584731   0.538508256

   74    6.1  0.5  0.5   0.000000979  -0.000006066  -0.000001629  -0.000000016  -0.000057138  -0.027432197   0.000122044  -0.062756806
                        -0.000000478   0.000003190  -0.000000550  -0.000000003   0.000165235   0.002257952   0.000150207  -0.037515679

   75    7.1  0.5  0.5   0.000000059   0.000000028   0.000000008  -0.000000011  -0.000414690   0.000079899  -0.000757573   0.000467492
                         0.000005483   0.000000875   0.000000009  -0.000004544  -0.003171166   0.000062446  -0.097455993   0.000321871

   76    8.1  0.5  0.5  -0.137861456  -0.020986975  -0.000239960  -0.008144686   0.000003486   0.000000000   0.000002665  -0.000000057
                         0.001204557   0.001832019  -0.000331962  -0.000152713   0.000000004  -0.000000025  -0.000000046  -0.000000008

   77    9.1  0.5  0.5  -0.008282235   0.064012862   0.006475038   0.000133942  -0.000000044  -0.000000267  -0.000000037   0.000000173
                        -0.019313753   0.119979362  -0.023216614  -0.000006074   0.000000002  -0.000002966  -0.000000002  -0.000000480

   78   10.1  0.5  0.5   0.006207021  -0.041251895   0.124036200   0.000571662   0.000000022  -0.000000168   0.000000014   0.000010135
                        -0.003591481   0.023439440   0.042761895   0.000243307   0.000000013   0.000000031   0.000000074   0.000005767

   79   11.1  0.5  0.5   0.000783472   0.000418189   0.000053106  -0.000093727   0.000000014  -0.000000016  -0.000000043  -0.000000030
                         0.088506378   0.013948487  -0.000684715   0.107101281   0.000000589   0.000000002   0.000001038  -0.000000027

   80   12.1  0.5  0.5   0.008026433   0.001428899   0.000739262  -0.139382673  -0.000002989   0.000000008  -0.000009122   0.000000013
                        -0.000241641  -0.000134161  -0.000014721   0.000030431   0.000000031   0.000000001   0.000000124  -0.000000031

   81    1.1  0.5 -0.5  -0.000000042   0.000000018  -0.000000002   0.000000031  -0.003827904  -0.000090074   0.000018270  -0.000317660
                         0.000002341   0.000000387   0.000000081  -0.000013517   0.686911761   0.000388403   0.034468559  -0.000264418

   82    2.1  0.5 -0.5  -0.000009963  -0.000001567  -0.000000028   0.000004830  -0.436711305   0.000722453  -0.202665598  -0.000980276
                         0.000000087   0.000000084   0.000000038   0.000000091  -0.005057975   0.000673022   0.003161913   0.000644859

   83    3.1  0.5 -0.5  -0.000000702   0.000004931  -0.000003088  -0.000000040   0.001291261   0.033365373  -0.003200992  -0.284457061
                        -0.000001424   0.000008876   0.000008445   0.000000060  -0.000159374   0.165158661   0.000368194   0.459402260

   84    4.1  0.5 -0.5  -0.000000708   0.000004434  -0.000003614  -0.000000023   0.000128008   0.515478600   0.000289875  -0.406765118
                         0.000000417  -0.000002793  -0.000001645  -0.000000014   0.000044130  -0.050281943  -0.002503362  -0.256642261

   85    5.1  0.5 -0.5  -0.000003966  -0.000000636  -0.000000069   0.000013549   0.071232363  -0.000096793   0.620175142  -0.002538934
                         0.000000057   0.000000035   0.000000006  -0.000000008  -0.001068515   0.000374038  -0.005515322   0.003339737

   86    6.1  0.5 -0.5   0.000000071   0.000000044   0.000000002  -0.000000014   0.000010959  -0.000160019  -0.002092391  -0.000071482
                         0.000006853   0.000001088  -0.000000017   0.000001719  -0.027524964   0.000070437  -0.073085325  -0.000179854

   87    7.1  0.5 -0.5  -0.000000784   0.000004854  -0.000004289  -0.000000006   0.000068760   0.003194435   0.000052593   0.084675925
                         0.000000391  -0.000002549  -0.000001499  -0.000000010   0.000074535   0.000154424   0.000565141   0.048251759

   88    8.1  0.5 -0.5   0.008346604  -0.064360801   0.002523588   0.000235047  -0.000000025  -0.000000289   0.000000021   0.000001341
                         0.019342793  -0.121921776  -0.007745369   0.000335459   0.000000002  -0.000003474  -0.000000054  -0.000002303

   89    9.1  0.5 -0.5  -0.135986568  -0.020930868  -0.000049613   0.024056725  -0.000002978   0.000000002  -0.000000504  -0.000000017
                         0.000589066   0.001874899   0.000124563   0.001487029  -0.000000024   0.000000044  -0.000000083   0.000000033

   90   10.1  0.5 -0.5  -0.001056393  -0.000215845   0.000042630   0.000226601   0.000000017  -0.000000015   0.000000083  -0.000000057
                         0.047434273   0.007167933   0.000619822  -0.131200256  -0.000000169  -0.000000021   0.000011661  -0.000000048

   91   11.1  0.5 -0.5  -0.012476363   0.078277999   0.101223234   0.000664335   0.000000001  -0.000000588  -0.000000009  -0.000000927
                         0.006251043  -0.041310382   0.034993571   0.000174110  -0.000000016   0.000000034  -0.000000039  -0.000000470

   92   12.1  0.5 -0.5  -0.000559980   0.003596182   0.045684982   0.000256061   0.000000002   0.000000213  -0.000000033  -0.000004563
                        -0.001321429   0.007179797  -0.131683002  -0.000693655   0.000000007   0.000002981  -0.000000004   0.000007900


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000089602  -0.011898642   0.000148972   0.095195431  -0.000000237  -0.000009385   0.000032439  -0.000000319
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000019625  -0.000203213   0.000007520  -0.000013752   0.000000043  -0.000000076   0.000000003  -0.000000021
                         0.000091568   0.025018130   0.000025348   0.009031557   0.000001167   0.000052012   0.000030472  -0.000000326

    3    3.1  1.5  1.5  -0.024965026   0.000094253   0.003193517  -0.000031572  -0.000086009   0.000002041   0.000000108   0.000011791
                        -0.002261305   0.000047729  -0.002921877  -0.000001649   0.000048044  -0.000001001  -0.000000566  -0.000059198

    4    4.1  1.5  1.5  -0.089431271   0.000350467   0.044497954  -0.000099914   0.000071715  -0.000001687   0.000000230   0.000023998
                        -0.008029013   0.000031390  -0.041245936   0.000069977  -0.000040110   0.000000764  -0.000001231  -0.000120375

    5    5.1  1.5  1.5  -0.006312817   0.000129141   0.023589262  -0.000041721  -0.000040528   0.000000852   0.000000730   0.000075749
                         0.067957611  -0.000320959   0.025565832  -0.000023801  -0.000072558   0.000001722   0.000000139   0.000015089

    6    6.1  1.5  1.5  -0.000189186  -0.040781980   0.000057265   0.042332708  -0.000002217  -0.000096626   0.000002923   0.000000014
                        -0.000003061  -0.000223521   0.000004985  -0.000029394   0.000000072  -0.000000126   0.000000003  -0.000000035

    7    7.1  1.5  1.5  -0.000075131  -0.000061812   0.000014557   0.000049084  -0.000000080   0.000000135   0.000000004   0.000000037
                        -0.000073733  -0.011539114  -0.000054638  -0.045095304  -0.000002545  -0.000108134   0.000062819  -0.000000571

    8    8.1  1.5  1.5   0.000000037   0.000008289   0.000000011   0.000005754   0.000675776   0.026675556  -0.026005333   0.000210994
                        -0.000000005   0.000000046   0.000000005   0.000000006  -0.000033289   0.000029268   0.000014550   0.000021545

    9    9.1  1.5  1.5  -0.000000220   0.000000001   0.000007865  -0.000000007  -0.119815487   0.002814688  -0.000311491  -0.031300921
                        -0.000000016  -0.000000003  -0.000007282   0.000000011   0.066977947  -0.001324443   0.001624971   0.157069637

   10   10.1  1.5  1.5  -0.000000002   0.000000032   0.000000003   0.000000007  -0.000125141   0.000144207   0.000012731   0.000046674
                        -0.000000028  -0.000006273  -0.000000010  -0.000004638  -0.003056751  -0.128643140   0.112597523  -0.001022712

   11   11.1  1.5  1.5   0.003718599  -0.000014461  -0.001563480   0.000004269  -0.000937781   0.000024019   0.000019331   0.002148225
                         0.000334472  -0.000002518   0.001448027  -0.000002251   0.000522724  -0.000016004  -0.000106860  -0.010775621

   12   12.1  1.5  1.5   0.000285796  -0.000005846  -0.001068082   0.000001889  -0.003772987   0.000081830   0.000060779   0.006443741
                        -0.003076592   0.000014531  -0.001157578   0.000001077  -0.006752851   0.000161171   0.000010182   0.001285200

   13   13.1  1.5  1.5   0.001960866  -0.000007802  -0.001279996   0.000002071   0.009710044  -0.000229678   0.000008052   0.000646711
                         0.000175386   0.000000594   0.001187709  -0.000002232  -0.005426814   0.000111788  -0.000037257  -0.003248611

   14   14.1  1.5  1.5  -0.000006517  -0.001085701   0.000007216   0.004691753   0.000081122   0.003469566  -0.006467542   0.000063374
                        -0.000000043  -0.000003144   0.000000070  -0.000000413  -0.000001750   0.000003543  -0.000000821   0.000001110

   15   15.1  1.5  1.5   0.000000593  -0.000007228   0.000000039  -0.000001483  -0.000011400   0.000010470   0.000001374  -0.000000031
                         0.000005154   0.001247501   0.000002065   0.001213932  -0.000184610  -0.008093452  -0.005693786   0.000060498

   16   16.1  1.5  1.5  -0.000003464  -0.000006340   0.000000741   0.000001767   0.000006348  -0.000008416   0.000000081  -0.000002686
                        -0.000001331  -0.000008803  -0.000001779  -0.001690494   0.000182665   0.007729016  -0.009218116   0.000087067

   17   17.1  1.5  1.5   0.000006880   0.001587270  -0.000000371  -0.000484060  -0.000173731  -0.007649539  -0.005848001   0.000061421
                         0.000000131   0.000009616  -0.000000215   0.000001264   0.000010809  -0.000009951  -0.000001179   0.000000270

   18    1.1  1.5  0.5   0.005793242  -0.000090379  -0.045304056   0.000074201   0.000008116  -0.000000115   0.000001198   0.000119677
                        -0.062664480   0.000299908  -0.049032657   0.000057097   0.000014458  -0.000000321   0.000000217   0.000023861

   19    2.1  1.5  0.5  -0.057353145   0.000239759   0.039491375  -0.000082967   0.000058588  -0.000001423   0.000000001  -0.000001775
                        -0.005305868   0.000144408  -0.036547732   0.000049239  -0.000032724   0.000000688   0.000000047   0.000008876

   20    3.1  1.5  0.5  -0.000022930  -0.000451090   0.000013030  -0.000046423   0.000000049   0.000000008  -0.000000010   0.000000047
                         0.000268521   0.065889356   0.000016767  -0.002804771  -0.000000414  -0.000014917   0.000107427  -0.000001043

   21    4.1  1.5  0.5  -0.000030456  -0.000058377   0.000006562   0.000015170   0.000000039  -0.000000081   0.000000002  -0.000000024
                        -0.000043835  -0.004158363   0.000040901   0.021207461   0.000001594   0.000067475  -0.000020072   0.000000163

   22    5.1  1.5  0.5  -0.000188666  -0.049743236  -0.000133671  -0.079409007  -0.000001491  -0.000063910  -0.000045879   0.000000484
                         0.000016366  -0.000328059   0.000003616  -0.000059210   0.000000123  -0.000000075  -0.000000018   0.000000018

   23    6.1  1.5  0.5  -0.005644556   0.000057110   0.034799245  -0.000059841   0.000035758  -0.000000745   0.000000543   0.000050526
                         0.062220301  -0.000266841   0.037619227  -0.000016105   0.000063999  -0.000001550   0.000000115   0.000010065

   24    7.1  1.5  0.5   0.030044764  -0.000153822   0.010790233  -0.000020208   0.000071322  -0.000001669   0.000000125   0.000015505
                         0.002840705  -0.000076204  -0.009932698   0.000017029  -0.000039874   0.000000737  -0.000000791  -0.000077778

   25    8.1  1.5  0.5   0.000000131  -0.000000001   0.000006272  -0.000000010  -0.014924261   0.000212688  -0.002100705  -0.209548038
                        -0.000001483   0.000000007   0.000006776  -0.000000004  -0.026658533   0.000597303  -0.000385935  -0.041771257

   26    9.1  1.5  0.5  -0.000000006   0.000000025   0.000000003  -0.000000002   0.000159153  -0.000199104   0.000003157  -0.000043518
                        -0.000000018  -0.000003774  -0.000000000  -0.000001088   0.004124650   0.176643035  -0.150030494   0.001406413

   27   10.1  1.5  0.5   0.000002123  -0.000000009   0.000006341  -0.000000007  -0.180846175   0.004277333  -0.000153413  -0.012419924
                         0.000000195  -0.000000007  -0.000005872   0.000000008   0.101072759  -0.002081173   0.000712637   0.062386087

   28   11.1  1.5  0.5   0.000001715   0.000015955  -0.000000621   0.000000945   0.000004804  -0.000005021   0.000000040   0.000000330
                        -0.000006913  -0.001913316  -0.000001867  -0.000610463   0.000089284   0.003976380   0.001496857  -0.000015539

   29   12.1  1.5  0.5   0.000008540   0.002251761   0.000006051   0.003594716  -0.000149698  -0.006407255  -0.000475155   0.000009246
                        -0.000000741   0.000014850  -0.000000164   0.000002680   0.000008141  -0.000007837  -0.000001241  -0.000001220

   30   13.1  1.5  0.5   0.000000193  -0.000013022   0.000000224  -0.000001999   0.000004145  -0.000005974   0.000000124  -0.000002435
                         0.000010197   0.002296793  -0.000000721  -0.000752303   0.000135347   0.005675626  -0.008667231   0.000082435

   31   14.1  1.5  0.5   0.000169991  -0.000003087  -0.001460432   0.000002352  -0.001885177   0.000034658  -0.000095460  -0.009459778
                        -0.001822404   0.000009157  -0.001581248   0.000002231  -0.003371211   0.000077608  -0.000017591  -0.001885743

   32   15.1  1.5  0.5  -0.002926912   0.000012763   0.001427699  -0.000003045  -0.002148917   0.000054390   0.000007239   0.000970389
                        -0.000271917   0.000007379  -0.001322274   0.000001714   0.001200276  -0.000028212  -0.000045716  -0.004862577

   33   16.1  1.5  0.5   0.000168324  -0.000001867   0.001182326  -0.000002382  -0.007621844   0.000180323  -0.000012017  -0.001109184
                         0.000018095  -0.000000447  -0.001092002   0.000001622   0.004260119  -0.000086500   0.000059644   0.005568367

   34   17.1  1.5  0.5   0.000324155  -0.000003726  -0.002133823   0.000003617   0.002664918  -0.000056971  -0.000006308  -0.001035612
                        -0.003556400   0.000015690  -0.002307544   0.000001495   0.004768895  -0.000115819   0.000000261  -0.000207704

   35    1.1  1.5 -0.5   0.000307211   0.062931153  -0.000092297  -0.066758208  -0.000000336  -0.000016581  -0.000122032   0.000001217
                        -0.000061108   0.000262099  -0.000015717   0.000024788   0.000000056  -0.000000052  -0.000000011   0.000000021

   36    2.1  1.5 -0.5   0.000120673  -0.000236249   0.000020174  -0.000023655  -0.000000091   0.000000066   0.000000005   0.000000010
                         0.000252539   0.057597566   0.000094345   0.053808037  -0.000001578  -0.000067107   0.000009051  -0.000000046

   37    3.1  1.5 -0.5   0.065627144  -0.000269481   0.002090862   0.000021157  -0.000013027   0.000000338   0.000000158   0.000021004
                         0.005889714  -0.000003008  -0.001870079  -0.000001816   0.000007268  -0.000000245  -0.000001032  -0.000105353

   38    4.1  1.5 -0.5  -0.004133460   0.000040701  -0.015581437   0.000034486   0.000058902  -0.000001412  -0.000000009  -0.000003924
                        -0.000458150   0.000034532   0.014386641  -0.000022950  -0.000032916   0.000000742   0.000000164   0.000019684

   39    5.1  1.5 -0.5   0.004458879  -0.000034440   0.053954378  -0.000088094  -0.000031175   0.000000618  -0.000000479  -0.000044996
                        -0.049544077   0.000186216   0.058264217  -0.000100600  -0.000055790   0.000001362  -0.000000077  -0.000008957

   40    6.1  1.5 -0.5  -0.000271098  -0.062474730   0.000052451   0.051246401  -0.000001717  -0.000073311  -0.000051519   0.000000555
                         0.000031174  -0.000367364   0.000033003   0.000010869   0.000000104  -0.000000083  -0.000000013  -0.000000006

   41    7.1  1.5 -0.5  -0.000061053   0.000062848   0.000001216   0.000032630  -0.000000169   0.000000113   0.000000010  -0.000000032
                        -0.000160439  -0.030178693   0.000026398   0.014665829  -0.000001817  -0.000081712  -0.000079308   0.000000800

   42    8.1  1.5 -0.5   0.000000007   0.000001489   0.000000010   0.000009233   0.000625292   0.030551716   0.213670815  -0.002135616
                        -0.000000000   0.000000012   0.000000004   0.000000005  -0.000104961   0.000060162   0.000027001  -0.000032455

   43    9.1  1.5 -0.5  -0.000003759   0.000000017   0.000000800   0.000000002   0.154205944  -0.003680474  -0.000232442  -0.029345484
                        -0.000000339   0.000000007  -0.000000738   0.000000002  -0.086158738   0.001868737   0.001387754   0.147132565

   44   10.1  1.5 -0.5  -0.000000006   0.000000010  -0.000000001  -0.000000007   0.000264119  -0.000259230  -0.000023831  -0.000011045
                        -0.000000010  -0.000002132   0.000000011   0.000008642   0.004749432   0.207173778   0.063610359  -0.000728879

   45   11.1  1.5 -0.5  -0.001905977   0.000007046   0.000447578  -0.000001793   0.003471041  -0.000080330   0.000002716   0.000292850
                        -0.000168184  -0.000001042  -0.000415138   0.000000812  -0.001939975   0.000039265  -0.000015304  -0.001467931

   46   12.1  1.5 -0.5  -0.000201843   0.000001559  -0.002442427   0.000003988  -0.003125716   0.000065757  -0.000008828  -0.000466218
                         0.002242745  -0.000008429  -0.002637526   0.000004554  -0.005593109   0.000134729  -0.000003005  -0.000091732

   47   13.1  1.5 -0.5   0.002287392  -0.000010131   0.000553720  -0.000000377   0.004954918  -0.000120247  -0.000013738  -0.001695339
                         0.000207995  -0.000001173  -0.000509272   0.000000654  -0.002767952   0.000062262   0.000081319   0.008499807

   48   14.1  1.5 -0.5   0.000009411   0.001830305  -0.000003235  -0.002152489   0.000084664   0.003862503   0.009645901  -0.000097057
                        -0.000002192   0.000006117  -0.000000212   0.000001220  -0.000007503   0.000005748   0.000001186  -0.000001423

   49   15.1  1.5 -0.5   0.000006117  -0.000010920   0.000000809  -0.000001585   0.000001832  -0.000002445  -0.000000436  -0.000001843
                         0.000013413   0.002939495   0.000003399   0.001945952   0.000061244   0.002461402  -0.004958458   0.000046249

   50   16.1  1.5 -0.5  -0.000000265  -0.000001818   0.000000426   0.000000903   0.000012216  -0.000011241  -0.000001515  -0.000000117
                        -0.000001902  -0.000169284   0.000002850   0.001609460   0.000199623   0.008731609   0.005677763  -0.000060842

   51   17.1  1.5 -0.5   0.000015976   0.003571089  -0.000003554  -0.003142922  -0.000128903  -0.005462976   0.001056235  -0.000006135
                        -0.000002199   0.000019482  -0.000001641  -0.000000120   0.000006612  -0.000006521  -0.000001108  -0.000001490

   52    1.1  1.5 -1.5  -0.001144677   0.000008620   0.064628333  -0.000101137   0.000004568  -0.000000115  -0.000000313  -0.000031812
                         0.011843454  -0.000089187   0.069895269  -0.000109379   0.000008198  -0.000000207  -0.000000062  -0.000006346

   53    2.1  1.5 -1.5  -0.024921641   0.000093031   0.006621897  -0.000023717  -0.000045397   0.000001040  -0.000000085  -0.000005964
                        -0.002204533  -0.000010725  -0.006141635   0.000011687   0.000025385  -0.000000530   0.000000315   0.000029883

   54    3.1  1.5 -1.5  -0.000038440   0.000150878  -0.000022645  -0.000022756  -0.000000119   0.000000101  -0.000000017   0.000000004
                        -0.000098408  -0.025066776  -0.000022062  -0.004328441  -0.000002270  -0.000098518   0.000060361  -0.000000576

   55    4.1  1.5 -1.5   0.000002471   0.000611726  -0.000016452   0.000074240   0.000000154  -0.000000128  -0.000000013   0.000000015
                        -0.000351861  -0.089788881  -0.000120867  -0.060673632   0.000001845   0.000082170   0.000122744  -0.000001252

   56    5.1  1.5 -1.5   0.000331894   0.068249717  -0.000045800  -0.034785970  -0.000001919  -0.000083110   0.000077237  -0.000000743
                        -0.000097665   0.000254145  -0.000014475   0.000036759   0.000000094  -0.000000083   0.000000020  -0.000000007

   57    6.1  1.5 -1.5  -0.003700839   0.000015153   0.028718163  -0.000042538   0.000047145  -0.000001017   0.000000007  -0.000002867
                         0.040614328  -0.000188603   0.031101868  -0.000038661   0.000084345  -0.000001972   0.000000037  -0.000000569

   58    7.1  1.5 -1.5   0.011479647  -0.000066164  -0.033076967   0.000030234   0.000094392  -0.000002262  -0.000000076  -0.000012292
                         0.001171615  -0.000081876   0.030651314  -0.000047782  -0.000052754   0.000001169   0.000000567   0.000061605

   59    8.1  1.5 -1.5   0.000000751  -0.000000008   0.000003911  -0.000000011  -0.013010470   0.000299870   0.000211132   0.025500071
                        -0.000008255   0.000000036   0.000004221  -0.000000004  -0.023287633   0.000606514   0.000020145   0.005101365

   60    9.1  1.5 -1.5   0.000000003   0.000000005   0.000000003   0.000000007  -0.000213170   0.000184420   0.000029363  -0.000012400
                        -0.000000001  -0.000000220  -0.000000013  -0.000010719  -0.003103414  -0.137265299  -0.160158102   0.001654510

   61   10.1  1.5 -1.5   0.000006247  -0.000000027  -0.000003401   0.000000005   0.112303353  -0.002731077  -0.000154288  -0.022038523
                         0.000000572  -0.000000004   0.000003155  -0.000000009  -0.062745798   0.001378625   0.001012084   0.110419681

   62   11.1  1.5 -1.5   0.000001115  -0.000024817   0.000001245  -0.000001734   0.000002288   0.000000129  -0.000001178   0.000001946
                         0.000014636   0.003733528   0.000004663   0.002131021  -0.000028772  -0.001073626   0.010987670  -0.000108577

   63   12.1  1.5 -1.5  -0.000015026  -0.003089816   0.000002074   0.001575050  -0.000180620  -0.007735395   0.006570657  -0.000061596
                         0.000004421  -0.000011505   0.000000656  -0.000001664   0.000006972  -0.000008718   0.000000138  -0.000001904

   64   13.1  1.5 -1.5  -0.000001342  -0.000014068  -0.000000233  -0.000003059   0.000014150  -0.000013907  -0.000001269  -0.000000608
                         0.000007709   0.001968643   0.000003036   0.001746148   0.000255045   0.011123627   0.003312356  -0.000038112

   65   14.1  1.5 -1.5  -0.000101318   0.000000585   0.003184935  -0.000004950  -0.001691982   0.000037959   0.000062367   0.006342752
                         0.001080968  -0.000006491   0.003445103  -0.000005251  -0.003029043   0.000071714   0.000011308   0.001264358

   66   15.1  1.5 -1.5  -0.001242410   0.000005073   0.000890297  -0.000001542   0.007064771  -0.000166812   0.000011804   0.001112456
                        -0.000112818   0.000001087  -0.000825229   0.000001374  -0.003948808   0.000079905  -0.000059335  -0.005584052

   67   16.1  1.5 -1.5   0.000008152  -0.000000991  -0.001240010   0.000000804  -0.006747424   0.000162653   0.000014398   0.001803145
                         0.000007158  -0.000003576   0.001148976  -0.000001752   0.003769617  -0.000083371  -0.000085910  -0.009040041

   68   17.1  1.5 -1.5   0.000143128  -0.000000531  -0.000327701   0.000000409   0.003732271  -0.000075125   0.000060287   0.005735250
                        -0.001580833   0.000006861  -0.000356269   0.000000127   0.006677252  -0.000157021   0.000011750   0.001142815

   69    1.1  0.5  0.5   0.099265964  -0.000566474  -0.193087222   0.000380588   0.414762295  -0.009793450   0.000148256  -0.019540679
                         0.012777628   0.000180963   0.176535656  -0.000364292  -0.230673332   0.004704368   0.000815446   0.097943612

   70    2.1  0.5  0.5  -0.047143364  -0.000467025  -0.163808154   0.001500861   0.058744270  -0.000380512   0.001707126   0.005640033
                         0.508256651  -0.002411335  -0.179831696   0.000399093   0.112456213  -0.002145285  -0.000087997   0.000296030

   71    3.1  0.5  0.5  -0.001306974  -0.341149503   0.001226558   0.338597729   0.004701537   0.229023036   0.405195864  -0.004337860
                        -0.002362024  -0.010858932   0.000848256   0.003772145  -0.000255664   0.017303653  -0.008376041  -0.000072796

   72    4.1  0.5  0.5  -0.000252251   0.014076634   0.000142115  -0.013305555   0.000341516  -0.009735255  -0.016359314   0.000077372
                        -0.001701211  -0.208255360   0.000471377   0.090386262   0.009621291   0.423050215  -0.205934303   0.001884984

   73    5.1  0.5  0.5  -0.009852155  -0.000610000  -0.259497143   0.000607531  -0.067533640   0.001750986   0.004781616   0.469011109
                         0.124735647  -0.000266055  -0.280601717   0.000337477  -0.121082531   0.003057656   0.000909218   0.093466964

   74    6.1  0.5  0.5   0.710405216  -0.003134485   0.140508083   0.000032733   0.119775188  -0.002732579   0.000187678   0.021088867
                         0.064837000  -0.000784844  -0.129134882   0.000455428  -0.066898000   0.001237041  -0.001185856  -0.106857811

   75    7.1  0.5  0.5  -0.000085872  -0.000693608  -0.000180362  -0.000353147  -0.000472621   0.000280423  -0.000062841   0.000111394
                         0.000380429   0.099461186   0.001052092   0.729356834  -0.005954145  -0.263028092  -0.351021457   0.003698978

   76    8.1  0.5  0.5   0.000000033   0.000004635   0.000000116   0.000015531   0.007131739   0.380601570  -0.169452472   0.000580894
                         0.000000071   0.000000020   0.000000273   0.000000021  -0.004047694   0.000532761  -0.000036213  -0.001830786

   77    9.1  0.5  0.5  -0.000000505  -0.000000027   0.000016933  -0.000000180  -0.193493525   0.000096775   0.000382216  -0.118843367
                         0.000006136  -0.000000035   0.000018804  -0.000000020  -0.347565267   0.008206170  -0.000237939  -0.028948021

   78   10.1  0.5  0.5  -0.000004474   0.000000042   0.000020706   0.000000050  -0.053593056   0.002729529  -0.001429981  -0.081722753
                        -0.000000316   0.000000002  -0.000018729   0.000000029   0.024238430  -0.000303033   0.004044629   0.402066755

   79   11.1  0.5  0.5   0.000000012  -0.000000103   0.000000002  -0.000000012  -0.000133865  -0.000059544   0.000032391  -0.000123458
                         0.000000091   0.000019848   0.000000017  -0.000000514   0.000374158   0.015019882  -0.248135241   0.002410041

   80   12.1  0.5  0.5   0.000000089   0.000019649   0.000000028   0.000021528  -0.000543976  -0.024130922   0.183773720  -0.001841534
                        -0.000000013   0.000000118   0.000000016   0.000000015  -0.000020359  -0.000010764   0.000037576  -0.000038502

   81    1.1  0.5 -0.5  -0.000234620   0.003168743  -0.000009092   0.001469588   0.000657771   0.000394602  -0.000003681  -0.000304907
                         0.000546437   0.100034786   0.000526757   0.261620629   0.010844818   0.474592238  -0.099873866   0.000770690

   82    2.1  0.5 -0.5   0.002355222   0.510434556   0.001311962   0.243247312   0.002059192   0.126828838   0.005588977  -0.001656931
                         0.000696835   0.001970785   0.000831031  -0.001815293  -0.000711876  -0.003425653   0.000812978  -0.000420241

   83    3.1  0.5 -0.5  -0.022010821  -0.002225335   0.232644168  -0.001455527  -0.126597160   0.002065245  -0.004268294  -0.395729096
                         0.340611837  -0.001528144   0.246047439  -0.000324692  -0.191635400   0.004231381  -0.000777172  -0.087477592

   84    4.1  0.5 -0.5   0.208643634  -0.001669053   0.057331074  -0.000442581  -0.364807903   0.008570720   0.000444613   0.056327596
                         0.006023313  -0.000414741  -0.071132708   0.000215674   0.214432865  -0.004385048  -0.001833432  -0.198755544

   85    5.1  0.5 -0.5   0.000206137   0.125104898   0.000660239   0.382199019  -0.003523282  -0.138642595   0.478233716  -0.004867096
                         0.000632766   0.002193405   0.000216954   0.000029430  -0.000041157  -0.000053073   0.000085539  -0.000043715

   86    6.1  0.5 -0.5   0.000479659  -0.003806384   0.000356611  -0.000576559   0.000249551  -0.000134200  -0.000221814   0.000047922
                         0.003195450   0.713347684  -0.000285158  -0.190835025   0.002989144   0.137191180   0.108918698  -0.001199659

   87    7.1  0.5 -0.5  -0.099066592   0.000386926   0.535275365  -0.000650028   0.229626237  -0.005431178   0.000832827   0.068727542
                        -0.008878010  -0.000048876  -0.495420831   0.000846694  -0.128279566   0.002485461  -0.003605724  -0.344227530

   88    8.1  0.5 -0.5   0.000000427   0.000000068   0.000010559  -0.000000279  -0.185731422  -0.000064251   0.000211538   0.166185782
                        -0.000004616   0.000000040   0.000011389   0.000000100  -0.332207281   0.008200086   0.001909049   0.033112343

   89    9.1  0.5 -0.5   0.000000033   0.000006156  -0.000000137  -0.000025302  -0.007215437  -0.397795591  -0.122210084  -0.000328287
                         0.000000031   0.000000088  -0.000000119   0.000000333   0.003909995   0.000162646   0.005140920  -0.000308110

   90   10.1  0.5 -0.5   0.000000002   0.000000115   0.000000056  -0.000000306  -0.001063949  -0.004914600  -0.001492628   0.000611154
                        -0.000000042  -0.000004483   0.000000017  -0.000027918  -0.002531831  -0.058613683  -0.410285335   0.004246217

   91   11.1  0.5 -0.5  -0.000019766   0.000000089  -0.000000386  -0.000000014  -0.013091322   0.000261676   0.000350374   0.048507813
                        -0.000001807   0.000000020   0.000000340   0.000000011   0.007363266  -0.000299065  -0.002387630  -0.243347676

   92   12.1  0.5 -0.5   0.000001773  -0.000000022   0.000014626  -0.000000031   0.011755650  -0.000282576  -0.001813488  -0.180230615
                        -0.000019569   0.000000088   0.000015796  -0.000000010   0.021073827  -0.000465269  -0.000322479  -0.035912492


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.000034457   0.000000182   0.000085092  -0.011272434  -0.000095626   0.044395711   0.001257867   0.035687141
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000014   0.000000004  -0.000076111  -0.000004728  -0.000002658   0.000001002  -0.000000795  -0.000002545
                         0.000000488   0.000000016  -0.000090457   0.016966596  -0.000082413   0.047225512  -0.000149152  -0.004318322

    3    3.1  1.5  1.5  -0.000000336   0.000062234   0.047791636   0.000340140  -0.011083774  -0.000035754   0.001488160  -0.000044178
                         0.000000053  -0.000009161  -0.009336538   0.000044624   0.021698256   0.000078884   0.018825290  -0.000667193

    4    4.1  1.5  1.5  -0.000000087   0.000017759  -0.029060978  -0.000189413  -0.025239603  -0.000043973  -0.000011493  -0.000003100
                         0.000000007  -0.000002615   0.005680029  -0.000079234   0.049415610   0.000077102  -0.000180571   0.000004295

    5    5.1  1.5  1.5  -0.000000046   0.000008437   0.008418718  -0.000032716  -0.028607094  -0.000089191  -0.018603999   0.000659654
                        -0.000000311   0.000057318   0.043095524   0.000309232  -0.014612532  -0.000041729   0.001471069  -0.000044168

    6    6.1  1.5  1.5   0.000018445   0.000000074   0.000265019  -0.042511282   0.000006432  -0.018750472   0.000955411   0.027157104
                        -0.000000017   0.000000004  -0.000123037  -0.000008081  -0.000004388   0.000000452  -0.000004467  -0.000002684

    7    7.1  1.5  1.5   0.000000003   0.000000001   0.000123653   0.000009319   0.000004657   0.000002735   0.000013171  -0.000001205
                        -0.000017300  -0.000000119   0.000373278  -0.055108880  -0.000095407   0.024977639  -0.000301464  -0.008744947

    8    8.1  1.5  1.5   0.244450595   0.001309005  -0.000269161   0.025019848   0.000043267   0.012577874   0.018845787   0.536510090
                        -0.000023304   0.000052187   0.000048501   0.000012382   0.000003617   0.000024115   0.000067943  -0.000028690

    9    9.1  1.5  1.5   0.000024061  -0.002029228   0.259423880   0.001720946   0.170087600   0.000279036   0.001646810  -0.000024067
                         0.000008464   0.000307785  -0.050700248   0.000617267  -0.333010082  -0.000472259   0.021085493  -0.000732143

   10   10.1  1.5  1.5  -0.000022775   0.000051601   0.000562898   0.000049821   0.000022726   0.000031963   0.000113074  -0.000029372
                        -0.178635432  -0.000987193   0.001943697  -0.272382266  -0.000597529   0.168257216  -0.015122880  -0.431414780

   11   11.1  1.5  1.5  -0.000019837   0.003952085   0.000943173   0.000007729  -0.002087324  -0.000004545   0.000081753  -0.000002631
                         0.000002519  -0.000582248  -0.000184100  -0.000002160   0.004086566   0.000008864   0.001032117  -0.000036702

   12   12.1  1.5  1.5  -0.000003603   0.000727796   0.000676589  -0.000002633  -0.002301149  -0.000007172  -0.001499720   0.000053175
                        -0.000024166   0.004942794   0.003463472   0.000024851  -0.001175429  -0.000003354   0.000118588  -0.000003565

   13   13.1  1.5  1.5   0.000013864  -0.002969141  -0.004395579  -0.000030322  -0.000746479  -0.000000342  -0.000087776   0.000002419
                        -0.000002623   0.000436773   0.000858865  -0.000006985   0.001461631  -0.000000349  -0.001112300   0.000039304

   14   14.1  1.5  1.5  -0.009440299  -0.000048940  -0.000013110   0.001921317   0.000007133  -0.002917934  -0.000119873  -0.003402209
                         0.000000451  -0.000001081   0.000003071   0.000000202   0.000000110  -0.000000010   0.000000113   0.000000067

   15   15.1  1.5  1.5   0.000000302  -0.000000299   0.000009659   0.000000655   0.000000345   0.000000018   0.000000499   0.000000147
                        -0.000161725  -0.000001912   0.000018997  -0.003068970   0.000002851  -0.002620516   0.000000873   0.000024721

   16   16.1  1.5  1.5   0.000000587  -0.000001289  -0.000006523  -0.000000527  -0.000000253  -0.000000235  -0.000000939   0.000000173
                         0.000313695   0.000004088  -0.000024302   0.003468082   0.000009700  -0.003387019   0.000027079   0.000785174

   17   17.1  1.5  1.5   0.002653831   0.000013178   0.000018108  -0.002963647   0.000002855  -0.002529159   0.000041491   0.001181025
                        -0.000000562   0.000000889  -0.000009378  -0.000000617  -0.000000331   0.000000034  -0.000000345  -0.000000206

   18    1.1  1.5  0.5   0.000000017  -0.000000426  -0.001456045   0.000046603  -0.040412898  -0.000078325   0.033282158  -0.001165750
                         0.000000011  -0.000002939  -0.007446225  -0.000033390  -0.020643568  -0.000041917  -0.002627501   0.000096622

   19    2.1  1.5  0.5  -0.000000335   0.000063909  -0.026108972  -0.000195731   0.000663654   0.000011086   0.004559077  -0.000172294
                         0.000000070  -0.000009408   0.005102009  -0.000027586  -0.001291906  -0.000027416   0.057700386  -0.002023998

   20    3.1  1.5  0.5  -0.000000003   0.000000014  -0.000004679   0.000000902   0.000000046   0.000003192   0.000008513  -0.000003975
                        -0.000060264  -0.000000342   0.000070984  -0.007353769  -0.000073017   0.031024337  -0.001672645  -0.047699202

   21    4.1  1.5  0.5  -0.000000010   0.000000002  -0.000083168  -0.000005879  -0.000003048  -0.000000796  -0.000006014  -0.000000476
                         0.000004382   0.000000051  -0.000258241   0.038602572   0.000078199  -0.024452447  -0.000839074  -0.023756460

   22    5.1  1.5  0.5  -0.000048587  -0.000000253   0.000193834  -0.028777028  -0.000004687  -0.011220023  -0.001700897  -0.048451132
                         0.000000006  -0.000000007  -0.000079301  -0.000006319  -0.000003093  -0.000002698  -0.000010975   0.000001939

   23    6.1  1.5  0.5  -0.000000074   0.000011283  -0.005331093   0.000045248  -0.017091974  -0.000009265  -0.050518064   0.001773351
                        -0.000000414   0.000076616  -0.027278122  -0.000196828  -0.008726810  -0.000008288   0.003992558  -0.000150957

   24    7.1  1.5  0.5   0.000000306  -0.000053349  -0.032315973  -0.000213638  -0.017182662  -0.000027149  -0.001502962   0.000050251
                        -0.000000056   0.000007857   0.006315088  -0.000071688   0.033640229   0.000044401  -0.019047277   0.000668588

   25    8.1  1.5  0.5   0.000033800  -0.008574198   0.002822308  -0.000374738   0.427803457   0.000843921   0.072570273  -0.002586599
                         0.000296691  -0.058178372   0.014351097  -0.000018805   0.218510122   0.000445052  -0.005756092   0.000194758

   26    9.1  1.5  0.5  -0.000000907   0.000001005  -0.000891319  -0.000064835  -0.000033154  -0.000013582  -0.000078091   0.000001214
                        -0.114008568  -0.000557480  -0.002901208   0.428567864   0.000960459  -0.313407401  -0.006447823  -0.182017130

   27   10.1  1.5  0.5  -0.000254919   0.054650698   0.434893273   0.002998885   0.075874781   0.000037654   0.008599655  -0.000236023
                         0.000048441  -0.008039179  -0.084975353   0.000693721  -0.148565030   0.000026705   0.108980855  -0.003850843

   28   11.1  1.5  0.5  -0.000000966   0.000002012  -0.000005114  -0.000000292  -0.000000177   0.000000129   0.000000118  -0.000000247
                        -0.009998437  -0.000052581  -0.000011149   0.001846167   0.000000517   0.000293482  -0.000141336  -0.004020503

   29   12.1  1.5  0.5  -0.009308197  -0.000050767   0.000015573  -0.002311957  -0.000000364  -0.000907173  -0.000136708  -0.003894223
                         0.000000815  -0.000002012  -0.000006379  -0.000000508  -0.000000252  -0.000000218  -0.000000881   0.000000158

   30   13.1  1.5  0.5   0.000000717  -0.000001539  -0.000004310  -0.000000380  -0.000000168  -0.000000231  -0.000000834   0.000000205
                         0.002212382   0.000013738  -0.000018403   0.002560488   0.000008586  -0.003162994   0.000051570   0.001480090

   31   14.1  1.5  0.5  -0.000003044   0.000320383   0.000243797  -0.000004686   0.003519039   0.000006226  -0.001278916   0.000044698
                        -0.000011581   0.002180915   0.001247150   0.000007448   0.001797480   0.000003415   0.000100857  -0.000003604

   32   15.1  1.5  0.5   0.000059928  -0.011156566   0.000840320   0.000007248  -0.000617965  -0.000001712  -0.000383833   0.000014289
                        -0.000011698   0.001641512  -0.000164205  -0.000000357   0.001209311   0.000003479  -0.004858690   0.000170447

   33   16.1  1.5  0.5   0.000008941  -0.001460998   0.003228722   0.000022111   0.001234820   0.000001622  -0.000040630   0.000002012
                        -0.000001303   0.000215316  -0.000630941   0.000006165  -0.002417777  -0.000002339  -0.000512382   0.000017939

   34   17.1  1.5  0.5  -0.000011317   0.001625906  -0.000370525   0.000002292  -0.000298844   0.000001242  -0.004688434   0.000164515
                        -0.000059617   0.011048996  -0.001896003  -0.000014188  -0.000152345   0.000000411   0.000370466  -0.000013940

   35    1.1  1.5 -0.5   0.000002969   0.000000013   0.000023843  -0.007587248   0.000088820  -0.045380163   0.001169739   0.033385712
                        -0.000000006   0.000000015  -0.000052137  -0.000002543  -0.000001704   0.000002505   0.000004438  -0.000003971

   36    2.1  1.5 -0.5  -0.000000003   0.000000021   0.000064573   0.000005606   0.000002598   0.000003399   0.000012226  -0.000003047
                        -0.000064597  -0.000000341   0.000186821  -0.026602799  -0.000029458   0.001452393  -0.002031282  -0.057880218

   37    3.1  1.5 -0.5   0.000000336  -0.000059622   0.007217386   0.000068773  -0.014114378  -0.000033171  -0.003755685   0.000140324
                        -0.000000063   0.000008776  -0.001409704  -0.000018191   0.027627772   0.000065048  -0.047551117   0.001666770

   38    4.1  1.5 -0.5  -0.000000051   0.000004334  -0.037886427  -0.000269390   0.011122996   0.000032855  -0.001872008   0.000060141
                         0.000000005  -0.000000648   0.007401169  -0.000032154  -0.021776159  -0.000071028  -0.023682588   0.000836937

   39    5.1  1.5 -0.5   0.000000044  -0.000007072   0.005519244  -0.000040698   0.009993400  -0.000005581   0.048300547  -0.001694740
                         0.000000249  -0.000048070   0.028242792   0.000205436   0.005101067   0.000000622  -0.003816982   0.000145005

   40    6.1  1.5 -0.5  -0.000077442  -0.000000420   0.000184513  -0.027794181   0.000012021  -0.019190956  -0.001779732  -0.050675589
                        -0.000000001  -0.000000013  -0.000082118  -0.000006463  -0.000003167  -0.000002547  -0.000010712   0.000001693

   41    7.1  1.5 -0.5  -0.000000001  -0.000000011   0.000111289   0.000007091   0.000003982  -0.000000913   0.000002604   0.000003018
                         0.000053924   0.000000310   0.000195947  -0.032927229   0.000051891  -0.037774448   0.000670469   0.019106482

   42    8.1  1.5 -0.5   0.058806801   0.000298449   0.000090248   0.014625970  -0.000954001   0.480377425   0.002593902   0.072798192
                         0.000007248  -0.000009783   0.000364194   0.000020679   0.000012487  -0.000009706  -0.000009724   0.000018201

   43    9.1  1.5 -0.5   0.000551386  -0.112792414  -0.420617259  -0.003018227   0.142566631   0.000407342  -0.014347786   0.000430369
                        -0.000082209   0.016607974   0.082167751  -0.000319002  -0.279103843  -0.000870433  -0.181450755   0.006433918

   44   10.1  1.5 -0.5  -0.000008149   0.000010787  -0.001255392  -0.000085464  -0.000045680  -0.000003852  -0.000068235  -0.000016963
                        -0.055238819  -0.000259256  -0.002810436   0.443117323   0.000006655   0.166818915  -0.003857466  -0.109319626

   45   11.1  1.5 -0.5   0.000051727  -0.009891910  -0.001811916  -0.000011922  -0.000133606   0.000000078  -0.000316649   0.000011257
                        -0.000009651   0.001455625   0.000353972  -0.000002883   0.000261306  -0.000000540  -0.004008014   0.000140887

   46   12.1  1.5 -0.5   0.000009387  -0.001355220   0.000443418  -0.000003277   0.000807997  -0.000000439   0.003882120  -0.000136214
                         0.000049932  -0.009209013   0.002269036   0.000016506   0.000412437   0.000000058  -0.000306785   0.000011653

   47   13.1  1.5 -0.5  -0.000013367   0.002188884  -0.002512988  -0.000018888   0.001438906   0.000003756   0.000116456  -0.000004896
                         0.000003524  -0.000321592   0.000490905  -0.000000705  -0.002816751  -0.000007723   0.001475501  -0.000051344

   48   14.1  1.5 -0.5  -0.002204322  -0.000011901  -0.000006412   0.001270756  -0.000007098   0.003951527  -0.000044843  -0.001282886
                         0.000000753  -0.000001324   0.000006026   0.000000355   0.000000209  -0.000000127  -0.000000069   0.000000261

   49   15.1  1.5 -0.5   0.000001299  -0.000002843  -0.000001038  -0.000000176  -0.000000058  -0.000000279  -0.000000810   0.000000323
                         0.011276680   0.000060993  -0.000007182   0.000856213   0.000003877  -0.001358055   0.000171043   0.004873828

   50   16.1  1.5 -0.5  -0.000000180   0.000000013  -0.000010287  -0.000000703  -0.000000380  -0.000000046  -0.000000592  -0.000000118
                         0.001476779   0.000009036  -0.000020520   0.003289792  -0.000002821   0.002714853   0.000018042   0.000513990

   51   17.1  1.5 -0.5  -0.011167984  -0.000060630   0.000013486  -0.001931868  -0.000001293  -0.000335435  -0.000165102  -0.004703048
                         0.000001067  -0.000002511  -0.000004967  -0.000000430  -0.000000199  -0.000000257  -0.000000929   0.000000229

   52    1.1  1.5 -1.5   0.000000026  -0.000005020  -0.002159549  -0.000016302   0.039537317   0.000085161   0.035576114  -0.001253954
                         0.000000180  -0.000034090  -0.011063639  -0.000083516   0.020193556   0.000043496  -0.002812858   0.000099145

   53    2.1  1.5 -1.5   0.000000017  -0.000000481   0.016651425   0.000103363   0.021481594   0.000039853   0.000337833  -0.000010964
                         0.000000001   0.000000085  -0.003255064   0.000057372  -0.042056987  -0.000072185   0.004305088  -0.000148750

   54    3.1  1.5 -1.5   0.000000003  -0.000000004   0.000108961   0.000007781   0.000004040   0.000001300   0.000008547   0.000000278
                         0.000062905   0.000000340   0.000325290  -0.048695085  -0.000086514   0.024365229   0.000668600   0.018884019

   55    4.1  1.5 -1.5   0.000000000   0.000000006  -0.000114053  -0.000007379  -0.000004091   0.000000660  -0.000003429  -0.000002776
                         0.000017950   0.000000087  -0.000170725   0.029610862  -0.000088666   0.055488198  -0.000004037  -0.000180915

   56    5.1  1.5 -1.5   0.000057935   0.000000314   0.000297237  -0.043910124  -0.000098411   0.032123074   0.000661083   0.018662069
                        -0.000000004   0.000000000  -0.000091352  -0.000006633  -0.000003406  -0.000001382  -0.000007963   0.000000126

   57    6.1  1.5 -1.5   0.000000015  -0.000002670  -0.008152152   0.000069986  -0.016698330  -0.000003733   0.027072827  -0.000952790
                         0.000000072  -0.000018251  -0.041722315  -0.000283682  -0.008529125  -0.000006833  -0.002137845   0.000070853

   58    7.1  1.5 -1.5  -0.000000118   0.000017115  -0.054086336  -0.000390053   0.011363608   0.000039249   0.000688075  -0.000036892
                         0.000000019  -0.000002523   0.010566788  -0.000049851  -0.022242996  -0.000087084   0.008717836  -0.000299488

   59    8.1  1.5 -1.5   0.000242328  -0.035588729   0.004805402   0.000003962   0.011212397  -0.000040178   0.534843199  -0.018781800
                         0.001287437  -0.241846101   0.024554043   0.000273468   0.005699617  -0.000016459  -0.042259084   0.001553155

   60    9.1  1.5 -1.5   0.000008882  -0.000011879   0.000935529   0.000061275   0.000033691  -0.000003370   0.000033715   0.000020270
                        -0.002052418  -0.000022571   0.001570815  -0.264331725   0.000547498  -0.373932489   0.000731763   0.021149695

   61   10.1  1.5 -1.5  -0.000969144   0.176733001  -0.267327498  -0.002015533   0.076560893   0.000251549   0.033974800  -0.001304706
                         0.000194866  -0.026001239   0.052231312  -0.000180102  -0.149829641  -0.000542476   0.430074908  -0.015066918

   62   11.1  1.5 -1.5  -0.000000293   0.000000398  -0.000000639  -0.000000001  -0.000000015   0.000000110   0.000000270  -0.000000147
                         0.003994745   0.000019993   0.000007999  -0.000960973  -0.000009961   0.004588784   0.000036795   0.001035350

   63   12.1  1.5 -1.5   0.004996089   0.000024433   0.000023887  -0.003528939  -0.000007913   0.002583973   0.000053291   0.001504401
                        -0.000000039   0.000000044  -0.000007345  -0.000000533  -0.000000275  -0.000000111  -0.000000637   0.000000011

   64   13.1  1.5 -1.5  -0.000000434   0.000000575  -0.000012665  -0.000000861  -0.000000464  -0.000000040  -0.000000687  -0.000000168
                        -0.003001095  -0.000014098  -0.000028423   0.004478701   0.000000156   0.001641218  -0.000039373  -0.001115758

   65   14.1  1.5 -1.5  -0.000008199   0.001374825   0.000368280  -0.000000503  -0.002598618  -0.000006403  -0.003391629   0.000119509
                        -0.000048261   0.009339652   0.001885691   0.000013456  -0.001327224  -0.000003147   0.000268095  -0.000009336

   66   15.1  1.5 -1.5  -0.000001935   0.000159956  -0.003011999  -0.000020496  -0.001191935  -0.000001604  -0.000001802  -0.000000428
                        -0.000000017  -0.000023859   0.000588590  -0.000005841   0.002333751   0.000002382  -0.000024655   0.000000909

   67   16.1  1.5 -1.5   0.000003857  -0.000310434   0.003403744   0.000025101  -0.001540807  -0.000004187  -0.000061715   0.000003071
                        -0.000001870   0.000045119  -0.000664925   0.000001746   0.003016258   0.000008753  -0.000782745   0.000026920

   68   17.1  1.5 -1.5   0.000002799  -0.000386057  -0.000568374   0.000005736  -0.002252368  -0.000002392   0.001177367  -0.000041389
                         0.000012908  -0.002625601  -0.002908634  -0.000019569  -0.001150428  -0.000001593  -0.000092883   0.000002926

   69    1.1  0.5  0.5  -0.000801661   0.115503486   0.350974140   0.002425791  -0.012693916  -0.000286349  -0.006490217   0.000394666
                         0.000203710  -0.013280246  -0.068041328   0.000564944   0.025769632   0.000273337  -0.117538392   0.004060140

   70    2.1  0.5  0.5  -0.001145053   0.069308269   0.010604740  -0.000700624   0.050697403  -0.001130607   0.365267807  -0.012216389
                        -0.002691295   0.477521984   0.068312874   0.000049314   0.025619771   0.000102472  -0.027910577   0.001097426

   71    3.1  0.5  0.5  -0.178239349  -0.001260616   0.000676852  -0.153933378   0.000172945  -0.304201923   0.004268036   0.161217874
                        -0.006659633  -0.001939671  -0.000683001  -0.013741523  -0.000228763   0.005638155   0.000283696   0.003436671

   72    4.1  0.5  0.5   0.007188945   0.000011313   0.000889882   0.006267294  -0.000047877   0.012281634  -0.000575051  -0.006486106
                        -0.164294581  -0.001307049   0.002190630  -0.341092779  -0.000555312   0.136942105   0.002983469   0.084608760

   73    5.1  0.5  0.5  -0.000048227   0.004301182  -0.026544161  -0.000164127   0.311628504   0.000590070  -0.027967483   0.001018372
                        -0.000028980   0.030543006  -0.136212196  -0.001109577   0.159153836   0.000282452   0.002360048  -0.000171873

   74    6.1  0.5  0.5   0.002427696  -0.462350489   0.118507633   0.000751023   0.022586864   0.000022939   0.027823501  -0.000996259
                        -0.000536114   0.067949330  -0.023095381   0.000269363  -0.044572298   0.000071313   0.352686054  -0.012340593

   75    7.1  0.5  0.5   0.000058798   0.000190329  -0.000655814   0.000009936   0.000074090   0.000100785   0.000051183  -0.000064750
                        -0.237800857  -0.001156788  -0.000970626   0.160868623  -0.000403686   0.303354073   0.005398970   0.156794506

   76    8.1  0.5  0.5   0.104240722   0.001267827  -0.001220155   0.248069029   0.000700501  -0.075557871   0.002680796   0.094520255
                         0.000038519   0.001048419   0.003092543   0.000061933   0.001470577  -0.000007515   0.000287080   0.000029715

   77    9.1  0.5  0.5  -0.001136267   0.016845628   0.048164206  -0.002928019   0.082854193   0.000762880  -0.062001909   0.001241994
                        -0.000640834   0.104749651   0.246950441   0.001696131   0.046191674   0.000083996   0.005410523  -0.000258746

   78   10.1  0.5  0.5   0.001012532  -0.111503910   0.008716908   0.000981285   0.125221097  -0.000042906  -0.004044841   0.000533670
                        -0.000091677   0.017794106   0.001539793   0.000234113  -0.242513544  -0.000471559  -0.041189790   0.001454334

   79   11.1  0.5  0.5   0.000026354  -0.000095546   0.000100933  -0.000046279   0.000044889  -0.000000654  -0.000063770   0.000002738
                         0.349871945   0.001935691  -0.000050875   0.008127478   0.000296964  -0.129835560   0.008523655   0.242954681

   80   12.1  0.5  0.5   0.387052870   0.002043474   0.000295782  -0.043772144  -0.000319649   0.144260487   0.008119603   0.230603610
                        -0.000023440   0.000048233  -0.000041105   0.000000126   0.000011210   0.000004838   0.000014271  -0.000006377

   81    1.1  0.5 -0.5   0.003688085  -0.000084750   0.001019208  -0.000457851  -0.000130684  -0.000416642   0.000073418  -0.002794342
                         0.116205931   0.000822785   0.002272628  -0.357508405  -0.000373672   0.028723437  -0.004078615  -0.117684273

   82    2.1  0.5 -0.5   0.482524494   0.002829396  -0.000085823  -0.069079177  -0.000960271  -0.056802640  -0.012264881  -0.366331321
                        -0.000996973   0.000740767  -0.000697094   0.002678922  -0.000605519  -0.000243804  -0.000131117   0.000966637

   83    3.1  0.5 -0.5  -0.002102626   0.032554655  -0.042977223   0.000540680  -0.268347398  -0.000049965   0.160445426  -0.004232397
                        -0.000964595   0.175367644  -0.148449562  -0.000795163  -0.143388538  -0.000282393  -0.016133159   0.000619219

   84    4.1  0.5 -0.5  -0.001291457   0.161494533  -0.333574185  -0.002320535   0.073226239   0.000295223  -0.013134783   0.000808419
                         0.000201604  -0.031046834   0.071497034  -0.000453723  -0.116369655  -0.000472765  -0.083834297   0.002928862

   85    5.1  0.5 -0.5   0.030843762   0.000035696  -0.001120468   0.138774469   0.000653971  -0.349917516   0.001028751   0.028066491
                        -0.000194237   0.000043491   0.000051484  -0.000042748   0.000016853  -0.000008379   0.000091071   0.000148311

   86    6.1  0.5 -0.5  -0.000131216   0.000176726   0.000408253  -0.000035845   0.000052865   0.000158781  -0.000020475   0.000061749
                        -0.467316882  -0.002479898   0.000685508  -0.120737130  -0.000053075  -0.049968299   0.012380724   0.353781848

   87    7.1  0.5 -0.5  -0.001116720   0.235255343   0.157890825   0.001078287   0.138071497   0.000117637  -0.012423079   0.000374522
                         0.000356820  -0.034701215  -0.030809116   0.000457716  -0.270111025  -0.000393209  -0.156301595   0.005386208

   88    8.1  0.5 -0.5   0.001221932  -0.015223990   0.047585321  -0.002801507  -0.067292700  -0.001292740   0.094223848  -0.002649828
                         0.001101567  -0.103123032   0.243462285   0.001790017  -0.034361089   0.000991020  -0.007479701   0.000497487

   89    9.1  0.5 -0.5   0.106086229   0.000799530   0.001103771  -0.251603477   0.000717601  -0.094797596   0.001258525   0.062235470
                         0.001405888   0.001030788  -0.003198726   0.000038158   0.000272195   0.003450200   0.000160047   0.000506704

   90   10.1  0.5 -0.5   0.001360281  -0.000056807   0.000417770  -0.003181239  -0.000252701  -0.001209472   0.000417379   0.000785681
                        -0.112906606  -0.001015085   0.000918258  -0.008260458   0.000400439  -0.272931638  -0.001491874  -0.041380457

   91   11.1  0.5 -0.5   0.001901121  -0.346143220   0.007968070   0.000030596  -0.059056775  -0.000175052  -0.019146940   0.000735405
                        -0.000376520   0.050943589  -0.001602467  -0.000108810   0.115626856   0.000244048  -0.242199033   0.008492111

   92   12.1  0.5 -0.5   0.000345413  -0.056363023  -0.008385650  -0.000016322   0.128475706   0.000279569   0.229886675  -0.008093217
                         0.002014646  -0.382927062  -0.042961395  -0.000298178   0.065613116   0.000155377  -0.018169802   0.000654214


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.000639565  -0.009392755  -0.002231650   0.066147563   0.003606954  -0.000412184  -0.043316806   0.001981770
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000044633  -0.000047232  -0.000002596  -0.000007215   0.000051712  -0.000007154   0.000004272  -0.000002659
                        -0.002206142   0.032081078  -0.003098243   0.091656396  -0.024140037   0.002807036  -0.058378568   0.002667634

    3    3.1  1.5  1.5  -0.036414159  -0.002542357   0.021499377   0.000716423   0.004721607   0.040747015   0.000631592   0.013686459
                        -0.053406831  -0.003629279  -0.013387205  -0.000450622  -0.000414490  -0.003562368  -0.000597322  -0.013042905

    4    4.1  1.5  1.5   0.002250786   0.000162097   0.027469995   0.000928017  -0.000439467  -0.003765725   0.000694341   0.015192520
                         0.003292156   0.000223144  -0.017121302  -0.000577774   0.000039070   0.000332623  -0.000662748  -0.014488147

    5    5.1  1.5  1.5   0.052372294   0.003559059   0.015719438   0.000529337   0.000404508   0.003477037   0.000686775   0.014998566
                        -0.035707903  -0.002492333   0.025241076   0.000842932   0.004608710   0.039776596   0.000725248   0.015737100

    6    6.1  1.5  1.5   0.003932185  -0.057280240   0.002149950  -0.063464905   0.039384098  -0.004571821   0.039148385  -0.001786324
                         0.000065609  -0.000069432  -0.000003816  -0.000010606   0.000076033  -0.000010513   0.000006279  -0.000003912

    7    7.1  1.5  1.5  -0.000048091   0.000050896   0.000002798   0.000007774  -0.000055785   0.000007697  -0.000004597   0.000002874
                         0.003317712  -0.048381048   0.000057456  -0.001511666   0.031359352  -0.003635805  -0.000767938   0.000038619

    8    8.1  1.5  1.5   0.016876309  -0.246226413  -0.003868055   0.115558856  -0.309296365   0.035838023   0.168309653  -0.007732885
                         0.000227212  -0.000240632  -0.000013241  -0.000036758  -0.000526479   0.000073289  -0.000043488   0.000026925

    9    9.1  1.5  1.5  -0.112447405  -0.007924645  -0.362066263  -0.012253469  -0.033569899  -0.288901637   0.017844448   0.391040521
                        -0.164788047  -0.011189994   0.225693908   0.007618656   0.002960566   0.025358505  -0.017057480  -0.372949881

   10   10.1  1.5  1.5  -0.000227193   0.000240093   0.000013165   0.000036830   0.000527896  -0.000073144   0.000043394  -0.000027082
                         0.016829251  -0.245539131  -0.003872774   0.115693079  -0.310252042   0.035948014   0.168176312  -0.007727061

   11   11.1  1.5  1.5  -0.006262496  -0.000436270   0.009305918   0.000312561   0.001155976   0.009983676   0.000371156   0.008084919
                        -0.009186633  -0.000624393  -0.005797775  -0.000195441  -0.000101337  -0.000871861  -0.000352766  -0.007707631

   12   12.1  1.5  1.5   0.014029127   0.000953377   0.004211790   0.000141828   0.000160030   0.001375581   0.000271679   0.005933228
                        -0.009565186  -0.000667629   0.006762973   0.000225850   0.001823292   0.015736363   0.000286900   0.006225383

   13   13.1  1.5  1.5   0.007503317   0.000524778   0.000873530   0.000031437  -0.001477489  -0.012743280   0.000007306   0.000198174
                         0.011003091   0.000747614  -0.000546935  -0.000018679   0.000129834   0.001115025  -0.000008566  -0.000191577

   14   14.1  1.5  1.5  -0.000489802   0.007154348   0.000389534  -0.011567769  -0.006190891   0.000716205   0.011479552  -0.000525778
                        -0.000005456   0.000005773   0.000000318   0.000000882  -0.000009334   0.000001291  -0.000000771   0.000000480

   15   15.1  1.5  1.5  -0.000016206   0.000017151   0.000000943   0.000002622  -0.000027747   0.000003836  -0.000002292   0.000001428
                         0.000904980  -0.013174964   0.000762774  -0.022544613   0.013820335  -0.001605301   0.020928090  -0.000955743

   16   16.1  1.5  1.5   0.000006795  -0.000007192  -0.000000396  -0.000001099   0.000011630  -0.000001603   0.000000957  -0.000000600
                        -0.000565084   0.008250401   0.000328002  -0.009749251  -0.007340626   0.000849731   0.009784558  -0.000448378

   17   17.1  1.5  1.5   0.000946786  -0.013785526   0.000732384  -0.021641940   0.014328719  -0.001664119   0.019998703  -0.000913176
                         0.000016684  -0.000017656  -0.000000971  -0.000002699   0.000028516  -0.000003944   0.000002356  -0.000001467

   18    1.1  1.5  0.5   0.034548355   0.002348485   0.031732804   0.001070024   0.000250427   0.002156421   0.001283690   0.028051482
                        -0.023548109  -0.001637712   0.050928062   0.001713319   0.002859929   0.024715273   0.001349073   0.029422117

   19    2.1  1.5  0.5   0.010983455   0.000768204   0.001418301   0.000050729  -0.001459842  -0.012590565   0.000010393   0.000265140
                         0.016106425   0.001094359  -0.000887627  -0.000030278   0.000128291   0.001101693  -0.000011494  -0.000255420

   20    3.1  1.5  0.5  -0.000049247   0.000052120   0.000002862   0.000007960  -0.000057156   0.000007935  -0.000004705   0.000002912
                         0.002861118  -0.041667268   0.001930211  -0.057016842   0.029098472  -0.003378693   0.035599182  -0.001625136

   21    4.1  1.5  0.5   0.000072202  -0.000076409  -0.000004199  -0.000011672   0.000083737  -0.000011613   0.000006911  -0.000004303
                        -0.005472740   0.079858068   0.001630575  -0.048618561  -0.049851080   0.005775135   0.034546735  -0.001585751

   22    5.1  1.5  0.5  -0.002039693   0.029681916  -0.002145573   0.063443961  -0.021520056   0.002500733  -0.040199215   0.001836404
                        -0.000038296   0.000040525   0.000002224   0.000006191  -0.000044356   0.000006189  -0.000003667   0.000002247

   23    6.1  1.5  0.5   0.023629788   0.001606279   0.021695504   0.000731568   0.000171740   0.001479067   0.000877227   0.019169248
                        -0.016106031  -0.001120131   0.034819174   0.001171382   0.001961564   0.016952005   0.000921922   0.020105876

   24    7.1  1.5  0.5   0.048471377   0.003390162   0.006248147   0.000223507  -0.006462656  -0.055739506   0.000047255   0.001201956
                         0.071079704   0.004829555  -0.003910347  -0.000133392   0.000567848   0.004877220  -0.000052094  -0.001157538

   25    8.1  1.5  0.5  -0.329663588  -0.022397866   0.060251068   0.002039761   0.005338040   0.045838384  -0.003675204  -0.080508602
                         0.224821823   0.015735815   0.096552257   0.003318004   0.060733700   0.523693907  -0.003783274  -0.084315153

   26    9.1  1.5  0.5   0.000131488  -0.000138901  -0.000007547  -0.000021286  -0.000305098   0.000041886  -0.000025088   0.000015740
                        -0.009741487   0.142133332   0.002247606  -0.067140537   0.179175425  -0.020760870  -0.096326875   0.004426080

   27   10.1  1.5  0.5  -0.094920173  -0.006581560   0.322522307   0.010864001  -0.021997279  -0.190335431  -0.016766606  -0.366034805
                        -0.139297490  -0.009471741  -0.200978720  -0.006778644   0.001922971   0.016577945   0.015969600   0.349007187

   28   11.1  1.5  0.5   0.000004989  -0.000005278  -0.000000291  -0.000000806   0.000008537  -0.000001182   0.000000708  -0.000000445
                        -0.000538545   0.007873546   0.000672789  -0.019961759  -0.006421325   0.000741803   0.019602186  -0.000897347

   29   12.1  1.5  0.5  -0.000546523   0.007953072  -0.000575019   0.017003127  -0.008518428   0.000989881  -0.015910920   0.000726851
                        -0.000010261   0.000010858   0.000000596   0.000001660  -0.000017556   0.000002449  -0.000001452   0.000000890

   30   13.1  1.5  0.5   0.000022881  -0.000024215  -0.000001331  -0.000003700   0.000039221  -0.000005442   0.000003234  -0.000002009
                        -0.001564673   0.022815680  -0.000075544   0.002148102  -0.021932384   0.002543032  -0.000835846   0.000035800

   31   14.1  1.5  0.5  -0.010760323  -0.000731452  -0.009885132  -0.000333325  -0.000115218  -0.000992167  -0.000590064  -0.012894178
                         0.007334222   0.000510076  -0.015864675  -0.000533718  -0.001315845  -0.011371461  -0.000620119  -0.013524205

   32   15.1  1.5  0.5   0.002672828   0.000186941   0.000344160   0.000012313  -0.000527479  -0.004549562   0.000003926   0.000099709
                         0.003919506   0.000266314  -0.000215391  -0.000007348   0.000046340   0.000398083  -0.000004321  -0.000096003

   33   16.1  1.5  0.5  -0.013024105  -0.000910927  -0.001679717  -0.000060087   0.002560253   0.022081761  -0.000018572  -0.000472933
                        -0.019098890  -0.001297687   0.001051235   0.000035860  -0.000224961  -0.001932161   0.000020497   0.000455490

   34   17.1  1.5  0.5   0.003139209   0.000213394   0.002882319   0.000097191   0.000033734   0.000290559   0.000171777   0.003753668
                        -0.002139681  -0.000148809   0.004625842   0.000155622   0.000385338   0.003330179   0.000180531   0.003937075

   35    1.1  1.5 -0.5   0.002862935  -0.041810298  -0.002020003   0.060005319   0.024809140  -0.002870867  -0.040651526   0.001862218
                         0.000032951  -0.000034866  -0.000001918  -0.000005327   0.000038188  -0.000005312   0.000003164  -0.000001980

   36    2.1  1.5 -0.5   0.000019534  -0.000020669  -0.000001135  -0.000003158   0.000022602  -0.000003172   0.000001876  -0.000001146
                        -0.001336928   0.019494942  -0.000059068   0.001673156  -0.012638653   0.001465465  -0.000368151   0.000015453

   37    3.1  1.5 -0.5   0.023481917   0.001650163   0.048384778   0.001639643  -0.003365676  -0.028987321   0.001174118   0.025760252
                         0.034420394   0.002337816  -0.030163449  -0.001018476   0.000296401   0.002541571  -0.001123620  -0.024570535

   38    4.1  1.5 -0.5  -0.044985228  -0.003138241   0.041267717   0.001381613   0.005753052   0.049661868   0.001150594   0.025006602
                        -0.065982165  -0.004484143  -0.025704866  -0.000865989  -0.000504691  -0.004340052  -0.001091218  -0.023835831

   39    5.1  1.5 -0.5   0.024517653   0.001664838  -0.033561305  -0.001132924   0.000219696   0.001881721  -0.001268936  -0.027744284
                        -0.016730287  -0.001179038  -0.053840273  -0.001822079   0.002491072   0.021437675  -0.001327474  -0.029090060

   40    6.1  1.5 -0.5   0.001958141  -0.028596688  -0.001381060   0.041025233   0.017016387  -0.001969065  -0.027779603   0.001272582
                         0.000022534  -0.000023847  -0.000001312  -0.000003642   0.000026189  -0.000003621   0.000002156  -0.000001363

   41    7.1  1.5 -0.5   0.000086183  -0.000091205  -0.000005008  -0.000013931   0.000099993  -0.000013949   0.000008248  -0.000005090
                        -0.005900032   0.086033659  -0.000260238   0.007370886  -0.055952389   0.006487540  -0.001668689   0.000070149

   42    8.1  1.5 -0.5  -0.027369903   0.399027247  -0.003894766   0.113809161   0.525695306  -0.060967691   0.116579046  -0.005274267
                        -0.000410746   0.000434874   0.000023819   0.000066495   0.000954461  -0.000132692   0.000078708  -0.000048932

   43    9.1  1.5 -0.5  -0.080068206  -0.005588530   0.056992012   0.001903504  -0.020681473  -0.178495004  -0.003214063  -0.069730077
                        -0.117435028  -0.007980113  -0.035493137  -0.001195182   0.001814436   0.015603190   0.003043064   0.066457384

   44   10.1  1.5 -0.5  -0.000113431   0.000120075   0.000006829   0.000018410   0.000265278  -0.000037672   0.000021864  -0.000013332
                         0.011533340  -0.168563388  -0.012805331   0.380017216  -0.191055840   0.022081139   0.505754382  -0.023154848

   45   11.1  1.5 -0.5  -0.004433421  -0.000307069   0.016941549   0.000570828   0.000738993   0.006397144   0.000649727   0.014186795
                        -0.006506731  -0.000442453  -0.010557260  -0.000356090  -0.000064518  -0.000556802  -0.000618940  -0.013527031

   46   12.1  1.5 -0.5   0.006569342   0.000446083  -0.008994508  -0.000303626   0.000086962   0.000744853  -0.000502247  -0.010981237
                        -0.004482768  -0.000315915  -0.014429317  -0.000488322   0.000986057   0.008485818  -0.000525415  -0.011513896

   47   13.1  1.5 -0.5  -0.012854381  -0.000899084  -0.001821092  -0.000064817   0.002533280   0.021848935  -0.000024522  -0.000602679
                        -0.018849953  -0.001280771   0.001139290   0.000038826  -0.000222563  -0.001911813   0.000026160   0.000579162

   48   14.1  1.5 -0.5  -0.000891681   0.013022106   0.000629254  -0.018692344  -0.011414649   0.001320877   0.018685929  -0.000855992
                        -0.000010263   0.000010860   0.000000597   0.000001660  -0.000017572   0.000002442  -0.000001455   0.000000911

   49   15.1  1.5 -0.5   0.000004751  -0.000005029  -0.000000276  -0.000000768   0.000008156  -0.000001131   0.000000669  -0.000000417
                        -0.000325342   0.004744103  -0.000014336   0.000406003  -0.004566938   0.000529510  -0.000138412   0.000005823

   50   16.1  1.5 -0.5  -0.000023158   0.000024507   0.000001347   0.000003745  -0.000039615   0.000005528  -0.000003270   0.000002017
                         0.001585321  -0.023116970   0.000069961  -0.001981547   0.022166097  -0.002570111   0.000656602  -0.000027586

   51   17.1  1.5 -0.5   0.000260138  -0.003799061  -0.000183478   0.005450337   0.003342827  -0.000386811  -0.005439723   0.000249196
                         0.000002993  -0.000003169  -0.000000174  -0.000000484   0.000005145  -0.000000708   0.000000421  -0.000000269

   52    1.1  1.5 -1.5   0.007765753   0.000528780   0.034986010   0.001180338   0.000035195   0.000307986   0.001367627   0.029893092
                        -0.005283647  -0.000359771   0.056138037   0.001893954   0.000410678   0.003593781   0.001434228   0.031348824

   53    2.1  1.5 -1.5   0.018085417   0.001277908   0.077783027   0.002630786  -0.002796173  -0.024047459   0.001928759   0.042246230
                         0.026497462   0.001798890  -0.048483972  -0.001636484   0.000246811   0.002112762  -0.001842869  -0.040290362

   54    3.1  1.5 -1.5   0.000060418  -0.000063934  -0.000003511  -0.000009766   0.000070103  -0.000009814   0.000005791  -0.000003575
                        -0.004430755   0.064639589   0.000846351  -0.025326673  -0.040902381   0.004739755   0.018905991  -0.000869304

   55    4.1  1.5 -1.5  -0.000008495   0.000008992   0.000000491   0.000001373  -0.000009866   0.000001402  -0.000000808   0.000000470
                         0.000275675  -0.003988013   0.001093178  -0.032368806   0.003780374  -0.000441198   0.020993310  -0.000959867

   56    5.1  1.5 -1.5  -0.004344560   0.063386968   0.000995350  -0.029735711  -0.039928220   0.004626418   0.021739670  -0.000998816
                        -0.000058559   0.000061966   0.000003403   0.000009466  -0.000067944   0.000009508  -0.000005614   0.000003470

   57    6.1  1.5 -1.5   0.047319166   0.003214149  -0.033576131  -0.001133888   0.000400847   0.003438635  -0.001235580  -0.027020993
                        -0.032278897  -0.002266192  -0.053855713  -0.001826635   0.004554227   0.039233771  -0.001290082  -0.028327762

   58    7.1  1.5 -1.5  -0.027257566  -0.001906052  -0.001278808  -0.000050241   0.003621869   0.031240061   0.000029932   0.000558937
                        -0.039971909  -0.002715969   0.000806131   0.000028014  -0.000318119  -0.002733254  -0.000024571  -0.000526630

   59    8.1  1.5 -1.5   0.203440001   0.013825202   0.061088868   0.002057084  -0.003133113  -0.026934365  -0.005317007  -0.116119655
                        -0.138707139  -0.009681178   0.098091797   0.003275733  -0.035700881  -0.308121824  -0.005614950  -0.121837461

   60    9.1  1.5 -1.5   0.000257310  -0.000272218  -0.000015172  -0.000041711  -0.000597523   0.000083330  -0.000049174   0.000030155
                        -0.013709477   0.199497983  -0.014428832   0.426649408   0.290011814  -0.033700090   0.540374223  -0.024685644

   61   10.1  1.5 -1.5  -0.138320081  -0.009654691   0.098205748   0.003279778  -0.035810482  -0.309073890  -0.005610844  -0.121740896
                        -0.202872072  -0.013786306  -0.061159799  -0.002059516   0.003142361   0.027017379   0.005312874   0.116027704

   62   11.1  1.5 -1.5   0.000009464  -0.000010015  -0.000000551  -0.000001531   0.000016203  -0.000002262   0.000001341  -0.000000836
                        -0.000761648   0.011118138   0.000368634  -0.010964228  -0.010021660   0.001160407   0.011170205  -0.000512054

   63   12.1  1.5 -1.5  -0.001163791   0.016979662   0.000266688  -0.007967244  -0.015796348   0.001830298   0.008599918  -0.000395119
                        -0.000015686   0.000016599   0.000000912   0.000002537  -0.000026881   0.000003760  -0.000002221   0.000001374

   64   13.1  1.5 -1.5  -0.000013326   0.000014102   0.000000775   0.000002155  -0.000022846   0.000003202  -0.000001886   0.000001158
                         0.000913313  -0.013317942   0.000036560  -0.001030625   0.012791949  -0.001483179   0.000275628  -0.000011199

   65   14.1  1.5 -1.5  -0.005911832  -0.000401890  -0.006117543  -0.000206298  -0.000062441  -0.000537920  -0.000362494  -0.007921525
                         0.004029263   0.000280036  -0.009817787  -0.000330422  -0.000713479  -0.006167484  -0.000380843  -0.008308404

   66   15.1  1.5 -1.5  -0.007425409  -0.000522472  -0.019131750  -0.000647849   0.001599110   0.013767493  -0.000690696  -0.015144295
                        -0.010883165  -0.000739104   0.011926263   0.000402637  -0.000140894  -0.001207719   0.000660595   0.014444212

   67   16.1  1.5 -1.5   0.004646992   0.000323491  -0.008274564  -0.000278159  -0.000846491  -0.007312824  -0.000324910  -0.007081847
                         0.006817231   0.000463379   0.005155529   0.000173819   0.000074153   0.000638380   0.000308993   0.006751668

   68   17.1  1.5 -1.5   0.011387682   0.000773399  -0.011448897  -0.000386540   0.000146023   0.001251895  -0.000631248  -0.013802885
                        -0.007769283  -0.000546383  -0.018365629  -0.000622072   0.001657704   0.014273954  -0.000659862  -0.014471644

   69    1.1  0.5  0.5   0.000005524   0.000000404   0.000023046   0.000000791  -0.000003859  -0.000033038   0.000001030   0.000028169
                         0.000008714   0.000000616  -0.000014529  -0.000000469  -0.000000028   0.000001621  -0.000001332  -0.000027567

   70    2.1  0.5  0.5  -0.000037208  -0.000002417  -0.000010045  -0.000000369  -0.000001898  -0.000013788  -0.000003201  -0.000049036
                         0.000025252   0.000001763  -0.000015738  -0.000000575  -0.000018708  -0.000161984  -0.000002286  -0.000051022

   71    3.1  0.5  0.5  -0.000001966   0.000031011   0.000000317  -0.000008166  -0.000089347   0.000010287  -0.000250491   0.000011789
                        -0.000000154   0.000000576   0.000000131  -0.000001817  -0.000002421   0.000001023   0.000006102  -0.000000048

   72    4.1  0.5  0.5   0.000000151  -0.000001257   0.000000018   0.000000327   0.000003681  -0.000000655   0.000010131  -0.000000333
                        -0.000000922   0.000013505   0.000001538  -0.000045016  -0.000056604   0.000006722   0.000148206  -0.000006676

   73    5.1  0.5  0.5   0.000009610   0.000000679  -0.000015512  -0.000000529   0.000000003   0.000001172  -0.000010120  -0.000218984
                        -0.000006588  -0.000000455  -0.000024921  -0.000000837   0.000001326   0.000011873  -0.000010596  -0.000229684

   74    6.1  0.5  0.5  -0.000027769  -0.000001917   0.000024895   0.000000840   0.000019532   0.000169872  -0.000000477  -0.000009790
                        -0.000040737  -0.000002755  -0.000015493  -0.000000523  -0.000001821  -0.000014799   0.000000503   0.000009540

   75    7.1  0.5  0.5   0.000000008  -0.000000014  -0.000000027  -0.000000000   0.000000044   0.000000047   0.000000089  -0.000000177
                        -0.000000750   0.000011001   0.000000322  -0.000010151  -0.000056026   0.000006459   0.000270428  -0.000012531

   76    8.1  0.5  0.5  -0.028254864   0.461820295  -0.003993912   0.151647816  -0.361087730   0.043037326  -0.097015023   0.005288279
                        -0.004198736   0.000210201  -0.001203612  -0.000044708  -0.000196396   0.003794754  -0.000039798  -0.000971261

   77    9.1  0.5  0.5   0.398212711   0.022311679  -0.017653638  -0.002119894   0.007770184   0.034610534   0.000754595  -0.004762520
                        -0.275587153  -0.019184782  -0.037805323  -0.001155952   0.043062156   0.372020277  -0.000583732  -0.010746306

   78   10.1  0.5  0.5   0.161480835   0.013082335  -0.338885469  -0.010760573  -0.023994556  -0.194663949  -0.011075078  -0.232499528
                         0.226196381   0.015383571   0.210522543   0.007123977   0.002512853   0.021758972   0.010117029   0.221493935

   79   11.1  0.5  0.5  -0.000078053   0.000208208  -0.000011330   0.000013926  -0.000297809   0.000046540  -0.000012961   0.000002085
                         0.014049395  -0.205996158   0.014890867  -0.440433567   0.177164543  -0.020423064   0.330665913  -0.015097033

   80   12.1  0.5  0.5   0.010311006  -0.151386990  -0.015556277   0.462094466   0.095632920  -0.011028110  -0.362960767   0.016627646
                         0.000090505  -0.000089458  -0.000015256  -0.000014139   0.000113466  -0.000043970   0.000009123  -0.000018913

   81    1.1  0.5 -0.5   0.000000013  -0.000000334   0.000000020   0.000000142   0.000001206  -0.000000357  -0.000000511   0.000000253
                         0.000000737  -0.000010312   0.000000919  -0.000027243   0.000033056  -0.000003843   0.000039410  -0.000001665

   82    2.1  0.5 -0.5   0.000002990  -0.000044968  -0.000000683   0.000018670   0.000162570  -0.000018802  -0.000070765   0.000003863
                         0.000000098   0.000000053  -0.000000009   0.000000201  -0.000000094  -0.000000293  -0.000000277   0.000000739

   83    3.1  0.5 -0.5  -0.000025315  -0.000001539  -0.000005861  -0.000000279  -0.000001898  -0.000010041   0.000008101   0.000168449
                         0.000017920   0.000001233  -0.000005970  -0.000000200  -0.000010163  -0.000088814   0.000008565   0.000185494

   84    4.1  0.5 -0.5   0.000008636   0.000000643  -0.000038031  -0.000001315  -0.000006641  -0.000056083  -0.000005062  -0.000114250
                         0.000010459   0.000000678   0.000024087   0.000000799   0.000001226   0.000008501   0.000004366   0.000094946

   85    5.1  0.5 -0.5  -0.000000817   0.000011651  -0.000000990   0.000029354  -0.000011930   0.000001322  -0.000317347   0.000014652
                         0.000000006   0.000000041  -0.000000006  -0.000000016  -0.000000154  -0.000000110   0.000000025   0.000000011

   86    6.1  0.5 -0.5   0.000000035  -0.000000043   0.000000001  -0.000000019   0.000000240  -0.000000146   0.000000148  -0.000000035
                        -0.000003356   0.000049301   0.000000990  -0.000029322  -0.000170515   0.000019616  -0.000013669   0.000000692

   87    7.1  0.5 -0.5   0.000006200   0.000000428  -0.000008615  -0.000000259  -0.000006440  -0.000055818  -0.000009191  -0.000195773
                         0.000009087   0.000000616   0.000005369   0.000000194   0.000000505   0.000004828   0.000008520   0.000186559

   88    8.1  0.5 -0.5  -0.381706081  -0.020998701   0.080169880   0.003133894  -0.007455712  -0.031027783   0.002946550   0.066979236
                         0.259958644   0.019365466   0.128723939   0.002752948  -0.042556127  -0.359752226   0.004497453   0.070183319

   89    9.1  0.5 -0.5  -0.029238770   0.484259072  -0.002102262   0.041421737  -0.373616896   0.043568358  -0.011063846  -0.000098296
                        -0.003310768   0.003846187  -0.001187717  -0.005013288  -0.002718533   0.004064869   0.003969381  -0.000948944

   90   10.1  0.5 -0.5  -0.002162605   0.006268492   0.000354610   0.000573386  -0.005057786   0.000454859  -0.000151334   0.000321154
                         0.020077970  -0.277851703  -0.012900203   0.398952094   0.195810941  -0.024121490  -0.321116132   0.014996949

   91   11.1  0.5 -0.5  -0.116049860  -0.007967651  -0.373779283  -0.012631572   0.020344503   0.176492089  -0.010924442  -0.239297422
                        -0.170196623  -0.011571868   0.232960887   0.007885522  -0.001790229  -0.015424224   0.010420028   0.228203176

   92   12.1  0.5 -0.5   0.125113591   0.008474034   0.244393703   0.008240795   0.000985464   0.008278835   0.011461114   0.250473995
                        -0.085232729  -0.005875013   0.392177273   0.013194214   0.010984079   0.095273969   0.012046653   0.262684786


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.000000139   0.000009593  -0.000011042  -0.000526737   0.007697581  -0.036565274  -0.000363688   0.034471462
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000001   0.000743333  -0.000512839  -0.000009073   0.000003610  -0.000002088  -0.000001746
                         0.000000397   0.000027375  -0.000745121  -0.023305389   0.007716446  -0.036632272   0.000020547  -0.001844999

    3    3.1  1.5  1.5  -0.000017658   0.000000256   0.034195190  -0.000730664  -0.025595388  -0.005380364  -0.011408734  -0.000112252
                         0.000024178  -0.000000351  -0.010749566   0.001497805   0.010896179   0.002272322   0.017254275   0.000178708

    4    4.1  1.5  1.5   0.000007596  -0.000000110  -0.034133038   0.000720106  -0.037342057  -0.007864754  -0.000839628  -0.000012592
                        -0.000010401   0.000000151   0.010755303  -0.001457855   0.015919569   0.003367970   0.001271674   0.000012248

    5    5.1  1.5  1.5  -0.000022391   0.000000325   0.009083894  -0.001271601  -0.013080991  -0.002734889  -0.017257599  -0.000178609
                        -0.000016354   0.000000237   0.028908170  -0.000619027  -0.030719854  -0.006459756  -0.011410755  -0.000112897

    6    6.1  1.5  1.5  -0.000000367  -0.000025308   0.001245900   0.038522924  -0.002081495   0.009833209  -0.000261848   0.025007142
                        -0.000000000   0.000000001   0.001252791  -0.000865360  -0.000017115   0.000007765  -0.000004186  -0.000000784

    7    7.1  1.5  1.5  -0.000000000   0.000000000  -0.001398662   0.000968832   0.000023883  -0.000013068   0.000006419  -0.000004771
                         0.000000026   0.000001773   0.001393236   0.042376308   0.006616248  -0.031531913   0.000041283  -0.002757717

    8    8.1  1.5  1.5   0.007256560   0.500138723   0.001569975   0.044797060   0.006381282  -0.030685471   0.004751501  -0.443288081
                         0.000008940  -0.000031670   0.001481452  -0.001042837  -0.000054866   0.000041084  -0.000017682   0.000039974

    9    9.1  1.5  1.5   0.000214811  -0.000003116  -0.268250766   0.005668415  -0.230068580  -0.048466205   0.005627103   0.000025547
                        -0.000294132   0.000004271   0.084500243  -0.011494933   0.098097874   0.020786841  -0.008497590  -0.000094311

   10   10.1  1.5  1.5  -0.000008937   0.000031657   0.006884344  -0.004783012  -0.000142512   0.000087342  -0.000040632   0.000053050
                         0.007254536   0.499999195  -0.006920070  -0.207681862  -0.044193932   0.210661515  -0.003610376   0.331579976

   11   11.1  1.5  1.5  -0.000002663   0.000000039  -0.000612940   0.000009978  -0.020788649  -0.004375063  -0.003925036  -0.000040079
                         0.000003646  -0.000000053   0.000201220  -0.000014274   0.008857588   0.001863423   0.005936749   0.000061175

   12   12.1  1.5  1.5  -0.000008814   0.000000128   0.004219106  -0.000590602  -0.006074931  -0.001270106  -0.008041771  -0.000083236
                        -0.000006438   0.000000093   0.013426679  -0.000287507  -0.014266580  -0.002999971  -0.005317239  -0.000052619

   13   13.1  1.5  1.5   0.000007346  -0.000000106  -0.022469615   0.000477172  -0.003291503  -0.000696747   0.003577159   0.000033797
                        -0.000010058   0.000000146   0.007071607  -0.000972304   0.001408493   0.000309105  -0.005409423  -0.000056316

   14   14.1  1.5  1.5  -0.000000008  -0.000000525  -0.000175575  -0.005346526  -0.003102050   0.014743352   0.000198425  -0.018835195
                         0.000000000  -0.000000000  -0.000181446   0.000125334   0.000002482  -0.000001127   0.000000608   0.000000111

   15   15.1  1.5  1.5   0.000000000  -0.000000000  -0.000583834   0.000403539   0.000008435  -0.000004042   0.000002120  -0.000000175
                        -0.000000131  -0.000009012   0.000583545   0.018021353  -0.002002764   0.009484171  -0.000000941   0.000267515

   16   16.1  1.5  1.5   0.000000000  -0.000000000   0.000448247  -0.000310886  -0.000008347   0.000004827  -0.000002312   0.000002349
                        -0.000000077  -0.000005312  -0.000445614  -0.013431018  -0.004268477   0.020315491  -0.000021253   0.001506984

   17   17.1  1.5  1.5  -0.000000171  -0.000011764   0.000550234   0.017039759  -0.002024977   0.009595153  -0.000062979   0.006052446
                        -0.000000000   0.000000000   0.000551680  -0.000381070  -0.000007539   0.000003422  -0.000001845  -0.000000345

   18    1.1  1.5  0.5  -0.000007080   0.000000103  -0.004123237   0.000542193  -0.015118114  -0.003183870   0.022312177   0.000240999
                        -0.000005172   0.000000075  -0.013053309   0.000265036  -0.035479937  -0.007465763   0.014761851   0.000159193

   19    2.1  1.5  0.5   0.000014268  -0.000000207  -0.023697891   0.000517615   0.009434013   0.001975412  -0.026871175  -0.000294393
                        -0.000019536   0.000000284   0.007450164  -0.001037827  -0.004009075  -0.000823727   0.040618890   0.000436537

   20    3.1  1.5  0.5  -0.000000000   0.000000000  -0.000092773   0.000066863   0.000006032  -0.000004963   0.000002006  -0.000005586
                        -0.000000196  -0.000013473   0.000098031   0.002387728   0.006393545  -0.030416827   0.000422475  -0.039092010

   21    4.1  1.5  0.5  -0.000000000   0.000000001   0.000894805  -0.000619045  -0.000013855   0.000007052  -0.000003567   0.000001381
                         0.000000134   0.000009235  -0.000885146  -0.027035833  -0.005428478   0.025839851   0.000254318  -0.024562610

   22    5.1  1.5  0.5   0.000000551   0.000037993   0.000943617   0.028686429  -0.000104121   0.000413805   0.000444971  -0.041147067
                         0.000000000  -0.000000002   0.000936854  -0.000649593  -0.000017258   0.000009919  -0.000004804   0.000004681

   23    6.1  1.5  0.5   0.000010661  -0.000000155  -0.008854532   0.001220168  -0.002797788  -0.000609607  -0.036329656  -0.000389372
                         0.000007786  -0.000000113  -0.028139264   0.000607752  -0.006540568  -0.001386330  -0.024032614  -0.000263233

   24    7.1  1.5  0.5   0.000020813  -0.000000302  -0.032782912   0.000690463  -0.024530122  -0.005167002   0.008881915   0.000090609
                        -0.000028497   0.000000414   0.010325975  -0.001405909   0.010459504   0.002217418  -0.013426659  -0.000143389

   25    8.1  1.5  0.5   0.232801630  -0.003380938  -0.030970328   0.004045150  -0.146168968  -0.030800589  -0.072711279  -0.000746945
                         0.170030044  -0.002462604  -0.097986704   0.002032916  -0.343000862  -0.072201639  -0.048069595  -0.000501316

   26    9.1  1.5  0.5  -0.000010320   0.000036552  -0.009340943   0.006465613   0.000151594  -0.000080001   0.000040089  -0.000022470
                         0.008375686   0.577271424   0.009249273   0.281588730   0.065312999  -0.310871259  -0.001972319   0.193097545

   27   10.1  1.5  0.5  -0.170229712   0.002465500  -0.367039872   0.007794288  -0.057377407  -0.012140918   0.057970531   0.000547786
                         0.233075025  -0.003384907   0.115515734  -0.015880025   0.024546125   0.005372600  -0.087663567  -0.000912850

   28   11.1  1.5  0.5   0.000000000   0.000000000   0.000272359  -0.000187568  -0.000002750   0.000000794  -0.000000564  -0.000001320
                        -0.000000019  -0.000001284  -0.000267419  -0.008361749   0.000210000  -0.000994245   0.000220994  -0.020796886

   29   12.1  1.5  0.5   0.000000218   0.000015031   0.000439499   0.013360940  -0.000044876   0.000175533   0.000207205  -0.019160066
                         0.000000000  -0.000000001   0.000436355  -0.000302558  -0.000008040   0.000004621  -0.000002240   0.000002183

   30   13.1  1.5  0.5  -0.000000000   0.000000000   0.000316999  -0.000220213  -0.000006465   0.000003931  -0.000001819   0.000002333
                         0.000000108   0.000007422  -0.000315689  -0.009437031  -0.003901642   0.018566298  -0.000061633   0.005373386

   31   14.1  1.5  0.5   0.000001350  -0.000000020   0.003092585  -0.000414683   0.007081732   0.001494343  -0.004619938  -0.000050340
                         0.000000986  -0.000000014   0.009805945  -0.000204334   0.016616105   0.003497842  -0.003057049  -0.000032384

   32   15.1  1.5  0.5  -0.000001895   0.000000027   0.003754668  -0.000086910  -0.008685620  -0.001824552   0.013090497   0.000142130
                         0.000002594  -0.000000038  -0.001176635   0.000170131   0.003697770   0.000772840  -0.019787920  -0.000212489

   33   16.1  1.5  0.5  -0.000009649   0.000000140   0.018364944  -0.000390333   0.008543270   0.001801797   0.001386390   0.000018021
                         0.000013211  -0.000000192  -0.005781878   0.000791709  -0.003645392  -0.000777840  -0.002095426  -0.000022905

   34   17.1  1.5  0.5   0.000004722  -0.000000069  -0.003306272   0.000459344   0.000939335   0.000188841  -0.019233361  -0.000206405
                         0.000003449  -0.000000050  -0.010514372   0.000229519   0.002215677   0.000461800  -0.012723446  -0.000139000

   35    1.1  1.5 -0.5  -0.000000127  -0.000008768   0.000425325   0.013685894  -0.008116320   0.038566609  -0.000288830   0.026753420
                        -0.000000000   0.000000001   0.000428154  -0.000293751  -0.000002352  -0.000000562  -0.000000164  -0.000004393

   36    2.1  1.5 -0.5  -0.000000000   0.000000002  -0.000816229   0.000566861   0.000016593  -0.000010073   0.000004739  -0.000005918
                         0.000000351   0.000024192   0.000823882   0.024834928   0.002140211  -0.010250521   0.000526507  -0.048702713

   37    3.1  1.5 -0.5   0.000007946  -0.000000115   0.002282384  -0.000062987  -0.027984193  -0.005884167   0.021569275   0.000234726
                        -0.000010881   0.000000158  -0.000704582   0.000119371   0.011919241   0.002500806  -0.032602940  -0.000351274

   38    4.1  1.5 -0.5  -0.000005447   0.000000079  -0.025798657   0.000550354   0.023774380   0.004999411   0.013548502   0.000137316
                         0.000007458  -0.000000108   0.008108563  -0.001131932  -0.010123083  -0.002115291  -0.020488042  -0.000214091

   39    5.1  1.5 -0.5  -0.000030682   0.000000445   0.008610470  -0.001190551   0.000171342   0.000056693   0.034317529   0.000368493
                        -0.000022408   0.000000325   0.027371390  -0.000592195   0.000376795   0.000089022   0.022702166   0.000249470

   40    6.1  1.5 -0.5   0.000000192   0.000013201   0.000967872   0.029492001  -0.001514341   0.007113828   0.000469978  -0.043559275
                         0.000000000  -0.000000001   0.000959894  -0.000665445  -0.000017353   0.000009861  -0.000004766   0.000004422

   41    7.1  1.5 -0.5  -0.000000000   0.000000001  -0.001109168   0.000765568   0.000014400  -0.000006181   0.000003524   0.000001616
                         0.000000512   0.000035288   0.001105923   0.034362174  -0.005622691   0.026666985  -0.000169582   0.016098558

   42    8.1  1.5 -0.5   0.004182719   0.288282525   0.003225839   0.102741279  -0.078496828   0.372847098   0.000899560  -0.087164303
                         0.000005156  -0.000018259   0.003176468  -0.002187467  -0.000031277   0.000008564  -0.000006097  -0.000016180

   43    9.1  1.5 -0.5  -0.340476700   0.004931247   0.268708851  -0.005753864  -0.286020320  -0.060144739  -0.106501089  -0.001054567
                         0.466173696  -0.006770157  -0.084436782   0.011819277   0.121792128   0.025464116   0.161071973   0.001667194

   44   10.1  1.5 -0.5   0.000005159  -0.000018272  -0.012529767   0.008660958   0.000183170  -0.000088723   0.000046662  -0.000006209
                        -0.004187632  -0.288621069   0.012487236   0.384690967  -0.013275284   0.062407301  -0.001063573   0.105097495

   45   11.1  1.5 -0.5   0.000000757  -0.000000011  -0.007977858   0.000165622  -0.000914353  -0.000192113   0.011473442   0.000121438
                        -0.000001037   0.000000015   0.002511535  -0.000343892   0.000390488   0.000084853  -0.017345622  -0.000184639

   46   12.1  1.5 -0.5  -0.000012138   0.000000176   0.004010393  -0.000554517   0.000073062   0.000024989   0.015979901   0.000171591
                        -0.000008865   0.000000128   0.012748452  -0.000275819   0.000159672   0.000038132   0.010571230   0.000116170

   47   13.1  1.5 -0.5  -0.000004377   0.000000064  -0.009006515   0.000196971   0.017081783   0.003591886  -0.002966107  -0.000035516
                         0.000005994  -0.000000087   0.002826434  -0.000401684  -0.007274623  -0.001523549   0.004480569   0.000050404

   48   14.1  1.5 -0.5   0.000000024   0.000001672  -0.000326841  -0.010279585   0.003803675  -0.018062277   0.000059852  -0.005539799
                         0.000000000  -0.000000000  -0.000326940   0.000225298   0.000003534  -0.000001170   0.000000758   0.000001305

   49   15.1  1.5 -0.5   0.000000000  -0.000000000   0.000133143  -0.000093374  -0.000004268   0.000003081  -0.000001332   0.000002818
                        -0.000000047  -0.000003212  -0.000137007  -0.003933609  -0.001981478   0.009439994  -0.000255638   0.023725996

   50   16.1  1.5 -0.5   0.000000000  -0.000000001   0.000624119  -0.000431445  -0.000009252   0.000004536  -0.000002396   0.000000450
                        -0.000000237  -0.000016360  -0.000624211  -0.019248770   0.001962504  -0.009288505  -0.000029046   0.002512546

   51   17.1  1.5 -0.5   0.000000085   0.000005848   0.000365051   0.011019099   0.000498865  -0.002406565   0.000248837  -0.023060968
                         0.000000000  -0.000000000   0.000361128  -0.000250793  -0.000007306   0.000004425  -0.000002077   0.000002582

   52    1.1  1.5 -1.5   0.000007747  -0.000000113   0.000169399  -0.000003551   0.014334081   0.003017555   0.028752096   0.000303346
                         0.000005658  -0.000000082   0.000498755  -0.000010455   0.033638570   0.007081462   0.019015748   0.000200624

   53    2.1  1.5 -1.5   0.000016145  -0.000000234   0.022232235  -0.000466480   0.033698790   0.007095261  -0.001019227  -0.000009593
                        -0.000022107   0.000000321  -0.007009416   0.000943475  -0.014363665  -0.003033297   0.001537921   0.000018289

   54    3.1  1.5 -1.5  -0.000000000   0.000000002  -0.001183253   0.000818668   0.000018731  -0.000009694   0.000004955  -0.000002261
                         0.000000434   0.000029940   0.001173542   0.035835652   0.005840498  -0.027818169  -0.000210979   0.020685000

   55    4.1  1.5 -1.5   0.000000000  -0.000000000   0.001148821  -0.000793247  -0.000015307   0.000006768  -0.000003746  -0.000001183
                        -0.000000187  -0.000012880  -0.001150697  -0.035778647   0.008555545  -0.040593864  -0.000017162   0.001523853

   56    5.1  1.5 -1.5   0.000000402   0.000027727   0.000995088   0.030293821   0.007014828  -0.033388945  -0.000211253   0.020688887
                         0.000000000  -0.000000002   0.001004969  -0.000695547  -0.000016324   0.000008615  -0.000004362   0.000002408

   57    6.1  1.5 -1.5  -0.000020438   0.000000297  -0.011569581   0.001586919  -0.003861894  -0.000831719   0.020857625   0.000220712
                        -0.000014926   0.000000216  -0.036754718   0.000776815  -0.009043110  -0.001908182   0.013795530   0.000140954

   58    7.1  1.5 -1.5   0.000001046  -0.000000015  -0.040436670   0.000869412   0.029013205   0.006096042  -0.001525239  -0.000028127
                        -0.000001431   0.000000021   0.012710854  -0.001772423  -0.012348913  -0.002571687   0.002297536   0.000030893

   59    8.1  1.5 -1.5   0.403885428  -0.005865555  -0.013419294   0.001907655   0.011991323   0.002451074  -0.369717457  -0.003953398
                         0.294983565  -0.004272353  -0.042752621   0.001010136   0.028245495   0.005892029  -0.244567633  -0.002635854

   60    9.1  1.5 -1.5   0.000000002  -0.000000013   0.009061310  -0.006258202  -0.000123646   0.000056083  -0.000030717  -0.000005888
                        -0.000005286  -0.000364221  -0.009064053  -0.281175389   0.052735667  -0.250109459   0.000092756  -0.010191825

   61   10.1  1.5 -1.5   0.294901268  -0.004271162   0.198187114  -0.004338441  -0.193834295  -0.040712493   0.182956169   0.002025509
                        -0.403772755   0.005863919  -0.062261552   0.008744111   0.082501804   0.017193512  -0.276536297  -0.002988943

   62   11.1  1.5 -1.5  -0.000000000   0.000000000   0.000010306  -0.000006591   0.000000810  -0.000000809   0.000000317  -0.000001123
                         0.000000065   0.000004515  -0.000014038  -0.000645091   0.004755367  -0.022597008  -0.000073134   0.007116944

   63   12.1  1.5 -1.5   0.000000158   0.000010915   0.000462171   0.014070260   0.003257750  -0.015506130  -0.000098452   0.009640700
                         0.000000000  -0.000000001   0.000466765  -0.000323050  -0.000007583   0.000004001  -0.000002028   0.000001117

   64   13.1  1.5 -1.5   0.000000000  -0.000000001   0.000767193  -0.000530294  -0.000011229   0.000005443  -0.000002877   0.000000389
                        -0.000000181  -0.000012455  -0.000764516  -0.023550160   0.000762153  -0.003580198   0.000065616  -0.006485208

   65   14.1  1.5 -1.5  -0.000000424   0.000000006   0.001600767  -0.000228272  -0.005778556  -0.001213762  -0.015710074  -0.000165838
                        -0.000000310   0.000000005   0.005102803  -0.000107895  -0.013563728  -0.002854733  -0.010390291  -0.000108952

   66   15.1  1.5 -1.5  -0.000005315   0.000000077  -0.017193758   0.000364783  -0.008723468  -0.001839155   0.000147426  -0.000001249
                         0.000007277  -0.000000106   0.005413564  -0.000740486   0.003721641   0.000792871  -0.000223227  -0.000001954

   67   16.1  1.5 -1.5  -0.000003133   0.000000045   0.012817485  -0.000277785  -0.018691320  -0.003930098   0.000833268   0.000013653
                         0.000004290  -0.000000062  -0.004025044   0.000567744   0.007959506   0.001665621  -0.001255655  -0.000016451

   68   17.1  1.5 -1.5  -0.000009500   0.000000138  -0.005119159   0.000699328  -0.003764577  -0.000800754   0.005048058   0.000053548
                        -0.000006938   0.000000101  -0.016257085   0.000343583  -0.008825810  -0.001859942   0.003339044   0.000033202

   69    1.1  0.5  0.5  -0.000043002   0.000000623   0.158734284  -0.003368485  -0.049542327  -0.010317536   0.025184789   0.000346213
                         0.000058305  -0.000000869  -0.049546917   0.006848130   0.021081694   0.004373417  -0.035647057  -0.000421959

   70    2.1  0.5  0.5  -0.000035478   0.000000516   0.012887071  -0.001545296   0.002077888   0.000992410   0.145214081   0.001823688
                        -0.000026597   0.000000463   0.045170922  -0.000837628   0.004024327   0.000784902   0.096487757   0.001092199

   71    3.1  0.5  0.5   0.000000144   0.000000113   0.002875645   0.099969572  -0.027265865   0.129373243  -0.001331785   0.071496398
                         0.000000094   0.000002160   0.003248367   0.003500142   0.000662227  -0.003821452  -0.000385837   0.002270010

   72    4.1  0.5  0.5   0.000000020  -0.000000002  -0.004766327  -0.000779428   0.001151339  -0.005263017  -0.000099864  -0.002895826
                         0.000000837   0.000053832   0.004459618   0.142444933   0.019640552  -0.093552730  -0.000684187   0.055955932

   73    5.1  0.5  0.5   0.000030673  -0.000000445  -0.008453237   0.001324762   0.068414587   0.014432347   0.002406599   0.000040019
                         0.000022395  -0.000000315  -0.027159475   0.000645439   0.160592002   0.033820212   0.001670929  -0.000027373

   74    6.1  0.5  0.5   0.000008754  -0.000000127   0.050553824  -0.001037512   0.022447614   0.004719677  -0.094288732  -0.001001766
                        -0.000012003   0.000000165  -0.015917599   0.002130925  -0.009648805  -0.002081998   0.142494834   0.001545793

   75    7.1  0.5  0.5  -0.000000004  -0.000000002   0.003540459  -0.002492701  -0.000030926  -0.000015259   0.000060430  -0.000020532
                        -0.000000456  -0.000031621  -0.003567683  -0.110587399   0.024473114  -0.115807546  -0.000874744   0.079837458

   76    8.1  0.5  0.5  -0.000002533   0.000021766  -0.014571013  -0.476470513  -0.059003921   0.273189119  -0.003256196   0.148741946
                        -0.000001886  -0.000000022  -0.010223423   0.010731308   0.001935682   0.000259618  -0.000332172   0.000026852

   77    9.1  0.5  0.5  -0.000271647   0.000003723   0.161966749  -0.017591212   0.028867182   0.003434455  -0.125007226  -0.002783657
                        -0.000197794   0.000002996   0.520417590  -0.011226876   0.083078052   0.017442684  -0.080800039  -0.000971179

   78   10.1  0.5  0.5   0.000019037  -0.000000186   0.140821187  -0.005084414   0.485403402   0.103315356   0.066637573   0.001326086
                        -0.000033285   0.000000500  -0.037342702   0.005634080  -0.205739098  -0.043371776  -0.104232440  -0.001098425

   79   11.1  0.5  0.5  -0.000000113  -0.000000017  -0.000350444   0.000347549   0.000006524   0.000002488  -0.000067115   0.000032492
                        -0.000004393  -0.000296721   0.000584534   0.017796888  -0.063654355   0.302926267  -0.005235767   0.482324973

   80   12.1  0.5  0.5   0.000000130   0.000007653  -0.000084341  -0.001605806   0.056133180  -0.266656306  -0.005355467   0.504712204
                         0.000000015   0.000000005   0.000035975  -0.000038702   0.000022810  -0.000013720   0.000018153  -0.000019920

   81    1.1  0.5 -0.5  -0.000000009   0.000000342  -0.005401023   0.004134164   0.000021247  -0.000026956   0.000056003  -0.001341980
                         0.000001069   0.000072447   0.005391895   0.166235913   0.011206153  -0.053841241   0.000542933  -0.043625512

   82    2.1  0.5 -0.5   0.000000689   0.000044337   0.001290097   0.046915727  -0.001111116   0.004516778   0.002123607  -0.174347002
                        -0.000000070  -0.000000556   0.001193822  -0.002324511  -0.000605285   0.000333982   0.000095029   0.000373376

   83    3.1  0.5 -0.5   0.000001365  -0.000000172  -0.035464406   0.004000607  -0.047200474  -0.010079365   0.060886226   0.001323663
                        -0.000001678  -0.000000009  -0.093533107   0.001678204  -0.120516201  -0.025343092   0.037546709   0.000412842

   84    4.1  0.5 -0.5   0.000031746  -0.000000510  -0.134626974   0.002689853   0.088127893   0.018519853   0.028452023   0.000460718
                        -0.000043475   0.000000664   0.046548300  -0.005947332  -0.031832170  -0.006640176  -0.048269395  -0.000515581

   85    5.1  0.5 -0.5  -0.000000545  -0.000037979  -0.001037194  -0.028435206  -0.036770899   0.174557573   0.000018279  -0.002929053
                        -0.000000008  -0.000000004  -0.001046812   0.000730321  -0.000019195  -0.000015583   0.000044907   0.000066125

   86    6.1  0.5 -0.5  -0.000000005   0.000000010  -0.001684057   0.001186118   0.000065177  -0.000076742   0.000017160   0.000039243
                        -0.000000208  -0.000014856   0.001667700   0.052987283  -0.005158083   0.024433357  -0.001841933   0.170865857

   87    7.1  0.5 -0.5  -0.000018650   0.000000272   0.105514167  -0.002239541   0.106544231   0.022502149   0.044024203   0.000432138
                         0.000025535  -0.000000366  -0.033204620   0.004499741  -0.045384082  -0.009622242  -0.066602475  -0.000762946

   88    8.1  0.5 -0.5   0.000017565   0.000003158   0.143071665  -0.014366347  -0.107332656  -0.021349584   0.124078093   0.002899180
                         0.000012854  -0.000000029   0.454609513  -0.010509085  -0.251221144  -0.055040030   0.082029226   0.001519181

   89    9.1  0.5 -0.5   0.000004773   0.000336028   0.016287788   0.544859235  -0.017392915   0.087744765  -0.002857543   0.148838855
                        -0.000000224   0.000000469   0.013046128  -0.014003885   0.003678208  -0.006011079  -0.000725525   0.001564642

   90   10.1  0.5 -0.5   0.000000145   0.000004256  -0.003699627   0.009929187  -0.000600736   0.001013047   0.000500135   0.001917179
                        -0.000000514  -0.000038107   0.006626227   0.145349562  -0.112048261   0.527203958   0.001647698  -0.123698392

   91   11.1  0.5 -0.5  -0.000175006   0.000002682  -0.016963212   0.000440778  -0.278680864  -0.058556869   0.266095602   0.002944225
                         0.000239617  -0.000003481   0.005394393  -0.000519814   0.118748892   0.024959367  -0.402281631  -0.004330046

   92   12.1  0.5 -0.5   0.000006184  -0.000000114   0.000553073   0.000006940   0.104545489   0.022025947   0.420961398   0.004456896
                         0.000004510  -0.000000065   0.001508052  -0.000091430   0.245307616   0.051631309   0.278434751   0.002969417


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5   0.000039808  -0.000120627   0.000054776   0.000044899   0.000121337  -0.000008117   0.000065547  -0.000001460
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000340   0.000001030  -0.000013960  -0.000011443  -0.000097122   0.000006497  -0.000100986   0.000002249

    3    3.1  1.5  1.5  -0.000003287  -0.000001085  -0.000024576   0.000029982   0.000005103   0.000076282  -0.000000052  -0.000002325
                        -0.000084936  -0.000028030  -0.000123922   0.000151184  -0.000000617  -0.000009218  -0.000000270  -0.000012136

    4    4.1  1.5  1.5  -0.000004310  -0.000001422  -0.000000082   0.000000100  -0.000006036  -0.000090237  -0.000000403  -0.000018087
                        -0.000111381  -0.000036757  -0.000000415   0.000000506   0.000000729   0.000010904  -0.000002102  -0.000094404

    5    5.1  1.5  1.5  -0.000019848  -0.000006550  -0.000121100   0.000147742  -0.000000625  -0.000009349  -0.000002007  -0.000090103
                         0.000000768   0.000000253   0.000024016  -0.000029299  -0.000005175  -0.000077368   0.000000384   0.000017263

    6    6.1  1.5  1.5   0.000013642  -0.000041339   0.000032066   0.000026284   0.000045314  -0.000003031  -0.000086836   0.000001934
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    7    7.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000002523  -0.000007646  -0.000064452  -0.000052830  -0.000128501   0.000008596   0.000144224  -0.000003212

    8    8.1  1.5  1.5  -0.000001749   0.000005300   0.000007669   0.000006286  -0.000030387   0.000002033   0.000001513  -0.000000034
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    9    9.1  1.5  1.5   0.000000140   0.000000046  -0.000000955   0.000001165   0.000001580   0.000023621   0.000000151   0.000006793
                         0.000003612   0.000001192  -0.000004816   0.000005876  -0.000000191  -0.000002854   0.000000790   0.000035457

   10   10.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000005  -0.000000016  -0.000001143  -0.000000937   0.000046706  -0.000003124  -0.000027928   0.000000622

   11   11.1  1.5  1.5  -0.013867606  -0.004576410  -0.042809049   0.052226837  -0.002268556  -0.033912287  -0.000847969  -0.038076233
                        -0.358349350  -0.118258175  -0.215862983   0.263351988   0.000274128   0.004097899  -0.004425870  -0.198737164

   12   12.1  1.5  1.5  -0.049486804  -0.016331045  -0.311386968   0.379890873  -0.001542262  -0.023055014  -0.005355313  -0.240472414
                         0.001915068   0.000631987   0.061752968  -0.075338329  -0.012763022  -0.190792434   0.001026044   0.046072327

   13   13.1  1.5  1.5  -0.001489510  -0.000491549   0.045655682  -0.055699717  -0.020857911  -0.311801675  -0.000692837  -0.031110366
                        -0.038490049  -0.012702027   0.230217024  -0.280863862   0.002520435   0.037677552  -0.003616178  -0.162379142

   14   14.1  1.5  1.5  -0.106864664   0.323824404  -0.163188561  -0.133761551  -0.332957116   0.022273101  -0.080971445   0.001803232
                        -0.000000004   0.000000044   0.000000007  -0.000000010   0.000000123  -0.000000005  -0.000000006   0.000000005

   15   15.1  1.5  1.5  -0.000000000   0.000000001  -0.000000002   0.000000003   0.000000034  -0.000000001  -0.000000031   0.000000025
                         0.003371005  -0.010214917  -0.037791946  -0.030977106   0.091263052  -0.006105024   0.398199852  -0.008867903

   16   16.1  1.5  1.5   0.000000000  -0.000000002   0.000000007  -0.000000010   0.000000143  -0.000000006   0.000000017  -0.000000014
                        -0.005013022   0.015190604   0.162589754   0.133270724   0.386717624  -0.025869399  -0.215933111   0.004808826

   17   17.1  1.5  1.5   0.001354070  -0.004103141   0.032905184   0.026971550   0.011233215  -0.000751444  -0.253171874   0.005638133
                        -0.000000000  -0.000000001  -0.000000002   0.000000002  -0.000000004   0.000000000  -0.000000020   0.000000016

   18    1.1  1.5  0.5  -0.000217834  -0.000071887  -0.000019362   0.000023621   0.000000321   0.000004794  -0.000000943  -0.000042360
                         0.000008430   0.000002782   0.000003840  -0.000004684   0.000002654   0.000039670   0.000000181   0.000008116

   19    2.1  1.5  0.5   0.000000553   0.000000182   0.000020174  -0.000024613   0.000002553   0.000038160   0.000000258   0.000011579
                         0.000014278   0.000004712   0.000101728  -0.000124108  -0.000000308  -0.000004611   0.000001346   0.000060434

   20    3.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000033356  -0.000101076   0.000085875   0.000070389   0.000076102  -0.000005091  -0.000145210   0.000003234

   21    4.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000064995  -0.000196950   0.000013225   0.000010840  -0.000006765   0.000000453   0.000138665  -0.000003088

   22    5.1  1.5  0.5  -0.000000948   0.000002873   0.000056878   0.000046621   0.000208149  -0.000013924   0.000005392  -0.000000120
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   23    6.1  1.5  0.5  -0.000065886  -0.000021743   0.000063064  -0.000076938   0.000001342   0.000020054   0.000001176   0.000052792
                         0.000002550   0.000000841  -0.000012507   0.000015258   0.000011102   0.000165957  -0.000000225  -0.000010114

   24    7.1  1.5  0.5  -0.000000399  -0.000000132  -0.000008745   0.000010669   0.000006317   0.000094426   0.000000870   0.000039084
                        -0.000010319  -0.000003405  -0.000044095   0.000053796  -0.000000763  -0.000011410   0.000004543   0.000203996

   25    8.1  1.5  0.5  -0.000002179  -0.000000719   0.000007217  -0.000008805  -0.000000026  -0.000000396  -0.000000458  -0.000020563
                         0.000000084   0.000000028  -0.000001431   0.000001746  -0.000000219  -0.000003275   0.000000088   0.000003940

   26    9.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000001228  -0.000003721  -0.000008110  -0.000006647  -0.000025009   0.000001673   0.000010600  -0.000000236

   27   10.1  1.5  0.5   0.000000024   0.000000008  -0.000000355   0.000000433   0.000001224   0.000018294   0.000000173   0.000007782
                         0.000000618   0.000000204  -0.000001789   0.000002183  -0.000000148  -0.000002210   0.000000904   0.000040617

   28   11.1  1.5  0.5  -0.000000006   0.000000075   0.000000008  -0.000000011   0.000000044  -0.000000002  -0.000000000   0.000000000
                         0.180877546  -0.548100384   0.172889224   0.141712940   0.119546071  -0.007997011   0.004458120  -0.000099282

   29   12.1  1.5  0.5  -0.002547287   0.007718862   0.143378076   0.117523396   0.554054662  -0.037063378   0.014986604  -0.000333751
                        -0.000000000   0.000000001  -0.000000007   0.000000009  -0.000000205   0.000000009   0.000000001  -0.000000001

   30   13.1  1.5  0.5  -0.000000002   0.000000022  -0.000000006   0.000000009  -0.000000060   0.000000003  -0.000000042   0.000000034
                         0.052816700  -0.160046695  -0.138719984  -0.113705275  -0.163425580   0.010932322   0.534057020  -0.011893439

   31   14.1  1.5  0.5   0.578943826   0.191056131  -0.001963621   0.002395610  -0.001813252  -0.027105995   0.001301917   0.058460660
                        -0.022404297  -0.007393579   0.000389417  -0.000475088  -0.015005605  -0.224316453  -0.000249439  -0.011200530

   32   15.1  1.5  0.5  -0.001745562  -0.000576048  -0.056457306   0.068877647   0.001661169   0.024832564   0.000270300   0.012137221
                        -0.045106633  -0.014885553  -0.284683795   0.347313108  -0.000200733  -0.003000722   0.001410795   0.063349674

   33   16.1  1.5  0.5   0.000318431   0.000105085  -0.001319808   0.001610159  -0.016625212  -0.248527718  -0.002204573  -0.098991634
                         0.008228491   0.002715468  -0.006655079   0.008119170   0.002008963   0.030031640  -0.011506499  -0.516682329

   34   17.1  1.5  0.5   0.012683774   0.004185748   0.167418503  -0.204249914   0.002866838   0.042855873   0.003493103   0.156852607
                        -0.000490844  -0.000161982  -0.033201741   0.040505967   0.023724577   0.354655020  -0.000669257  -0.030051533

   35    1.1  1.5 -0.5   0.000071941  -0.000217997  -0.000024081  -0.000019739  -0.000039959   0.000002673  -0.000043130   0.000000961
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000004715  -0.000014289  -0.000126525  -0.000103709  -0.000038438   0.000002571  -0.000061533   0.000001370

   37    3.1  1.5 -0.5  -0.000003909  -0.000001290   0.000013693  -0.000016705   0.000005054   0.000075553  -0.000000609  -0.000027324
                        -0.000101000  -0.000033331   0.000069045  -0.000084234  -0.000000611  -0.000009130  -0.000003176  -0.000142616

   38    4.1  1.5 -0.5  -0.000007616  -0.000002513   0.000002109  -0.000002573  -0.000000449  -0.000006716   0.000000581   0.000026092
                        -0.000196803  -0.000064947   0.000010633  -0.000012972   0.000000054   0.000000812   0.000003033   0.000136188

   39    5.1  1.5 -0.5  -0.000002871  -0.000000947  -0.000045730   0.000055791   0.000001670   0.000024971  -0.000000118  -0.000005296
                         0.000000111   0.000000037   0.000009069  -0.000011064   0.000013824   0.000206646   0.000000023   0.000001015

   40    6.1  1.5 -0.5   0.000021759  -0.000065936   0.000078437   0.000064292  -0.000167164   0.000011182   0.000053752  -0.000001197
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   41    7.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000003408   0.000010327   0.000054843   0.000044954  -0.000095113   0.000006362  -0.000207707   0.000004626

   42    8.1  1.5 -0.5   0.000000720  -0.000002181   0.000008976   0.000007358   0.000003298  -0.000000221  -0.000020937   0.000000466
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   43    9.1  1.5 -0.5  -0.000000144  -0.000000048  -0.000001293   0.000001578  -0.000001661  -0.000024828   0.000000044   0.000001995
                        -0.000003718  -0.000001227  -0.000006520   0.000007955   0.000000201   0.000003000   0.000000232   0.000010411

   44   10.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000204  -0.000000619   0.000002225   0.000001824  -0.000018427   0.000001232  -0.000041355   0.000000921

   45   11.1  1.5 -0.5  -0.021194836  -0.006994448   0.027567053  -0.033631676   0.007939257   0.118682716   0.000018682   0.000838878
                        -0.547690433  -0.180742259   0.139005809  -0.169586539  -0.000959367  -0.014341405   0.000097509   0.004378484

   46   12.1  1.5 -0.5  -0.007713088  -0.002545381  -0.115278356   0.140639140   0.004446332   0.066467450  -0.000327789  -0.014718895
                         0.000298485   0.000098502   0.022861524  -0.027890951   0.036795707   0.550053312   0.000062802   0.002820006

   47   13.1  1.5 -0.5  -0.006188945  -0.002042397  -0.022118795   0.026984825  -0.010853369  -0.162245330   0.002238002   0.100492693
                        -0.159926989  -0.052777196  -0.111533172   0.136070030   0.001311503   0.019605433   0.011680978   0.524517035

   48   14.1  1.5 -0.5  -0.191199137   0.579377170  -0.002442265  -0.002001862   0.225948238  -0.015114763   0.059523950  -0.001325597
                        -0.000000006   0.000000079  -0.000000000   0.000000000  -0.000000084   0.000000004   0.000000004  -0.000000004

   49   15.1  1.5 -0.5   0.000000001  -0.000000006   0.000000016  -0.000000022  -0.000000009   0.000000000   0.000000005  -0.000000004
                        -0.014896695   0.045140396   0.354077005   0.290227998  -0.025013208   0.001673253  -0.064501886   0.001436456

   50   16.1  1.5 -0.5  -0.000000000   0.000000001   0.000000000  -0.000000001   0.000000093  -0.000000004  -0.000000041   0.000000033
                         0.002717501  -0.008234650   0.008277290   0.006784686   0.250335627  -0.016746152   0.526079816  -0.011715787

   51   17.1  1.5 -0.5  -0.004188881   0.012693268   0.208227666   0.170678970  -0.357234949   0.023897161   0.159705463  -0.003556638
                        -0.000000000   0.000000002  -0.000000009   0.000000013   0.000000132  -0.000000006   0.000000013  -0.000000010

   52    1.1  1.5 -1.5  -0.000120536  -0.000039778   0.000044041  -0.000053730  -0.000000974  -0.000014556   0.000001434   0.000064376
                         0.000004665   0.000001539  -0.000008734   0.000010655  -0.000008058  -0.000120461  -0.000000275  -0.000012334

   53    2.1  1.5 -1.5  -0.000000040  -0.000000013   0.000002226  -0.000002716   0.000006450   0.000096420   0.000000423   0.000019002
                        -0.000001030  -0.000000340   0.000011224  -0.000013693  -0.000000779  -0.000011651   0.000002209   0.000099182

   54    3.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000028051  -0.000085000  -0.000154129  -0.000126335   0.000076837  -0.000005140  -0.000012356   0.000000275

   55    4.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000036784  -0.000111464  -0.000000516  -0.000000423  -0.000090894   0.000006080  -0.000096121   0.000002141

   56    5.1  1.5 -1.5  -0.000006555   0.000019863   0.000150619   0.000123458  -0.000077930   0.000005213   0.000091742  -0.000002043
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   57    6.1  1.5 -1.5  -0.000041308  -0.000013632   0.000025781  -0.000031453  -0.000000364  -0.000005436  -0.000001899  -0.000085285
                         0.000001599   0.000000528  -0.000005113   0.000006238  -0.000003009  -0.000044987   0.000000364   0.000016340

   58    7.1  1.5 -1.5   0.000000296   0.000000098   0.000010277  -0.000012538   0.000008534   0.000127573  -0.000000604  -0.000027138
                         0.000007640   0.000002521   0.000051820  -0.000063221  -0.000001031  -0.000015416  -0.000003155  -0.000141647

   59    8.1  1.5 -1.5   0.000005296   0.000001748   0.000006166  -0.000007523   0.000000244   0.000003646   0.000000033   0.000001486
                        -0.000000205  -0.000000068  -0.000001223   0.000001492   0.000002018   0.000030167  -0.000000006  -0.000000285

   60    9.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000001193   0.000003615  -0.000005990  -0.000004910   0.000023793  -0.000001591   0.000036102  -0.000000804

   61   10.1  1.5 -1.5   0.000000001   0.000000000   0.000000182  -0.000000222  -0.000003102  -0.000046368   0.000000117   0.000005255
                         0.000000016   0.000000005   0.000000919  -0.000001122   0.000000375   0.000005603   0.000000611   0.000027429

   62   11.1  1.5 -1.5  -0.000000004   0.000000049  -0.000000012   0.000000017  -0.000000013   0.000000001   0.000000016  -0.000000013
                         0.118346692  -0.358617578  -0.268480749  -0.220066904  -0.034158981   0.002285058  -0.202351822   0.004506371

   63   12.1  1.5 -1.5  -0.016343268   0.049523846   0.387289219   0.317451213  -0.192180349   0.012855866   0.244846158  -0.005452719
                        -0.000000001   0.000000007  -0.000000018   0.000000024   0.000000071  -0.000000003   0.000000019  -0.000000015

   64   13.1  1.5 -1.5  -0.000000000   0.000000005   0.000000013  -0.000000018  -0.000000116   0.000000005   0.000000013  -0.000000010
                         0.012711534  -0.038518859   0.286333664   0.234700489  -0.314069869   0.021009642  -0.165332516   0.003681952

   65   14.1  1.5 -1.5   0.323582199   0.106784735  -0.131206315   0.160071187   0.002672007   0.039943370  -0.001771020  -0.079525033
                        -0.012522168  -0.004132405   0.026020290  -0.031744632   0.022112246   0.330552520   0.000339316   0.015236273

   66   15.1  1.5 -1.5   0.000395007   0.000130355   0.006025897  -0.007351565  -0.006060934  -0.090603956  -0.001668683  -0.074928657
                         0.010207277   0.003368484   0.030385352  -0.037070010   0.000732393   0.010948418  -0.008709489  -0.391086715

   67   16.1  1.5 -1.5  -0.000587415  -0.000193851  -0.025924811   0.031628147  -0.025682572  -0.383924773   0.000904882   0.040631804
                        -0.015179242  -0.005009272  -0.130724864   0.159483819   0.003103439   0.046392777   0.004722923   0.212075848

   68   17.1  1.5 -1.5  -0.004100072  -0.001353057   0.026456315  -0.032276599  -0.000090147  -0.001347599  -0.005537414  -0.248649406
                         0.000158667   0.000052361  -0.005246706   0.006400957  -0.000746017  -0.011152089   0.001060934   0.047638964

   69    1.1  0.5  0.5  -0.000000026  -0.000000010  -0.000000416   0.000000507  -0.000001116  -0.000016675  -0.000000032  -0.000001131
                        -0.000000414  -0.000000136  -0.000001960   0.000002391   0.000000130   0.000001899  -0.000000127  -0.000005667

   70    2.1  0.5  0.5  -0.000001399  -0.000000468  -0.000003460   0.000004214  -0.000000115  -0.000001681  -0.000000181  -0.000005768
                         0.000000058   0.000000017   0.000000703  -0.000000854  -0.000001015  -0.000014982   0.000000023   0.000001149

   71    3.1  0.5  0.5   0.000000520  -0.000001558  -0.000000889  -0.000000758  -0.000000640   0.000000057  -0.000013905   0.000000327
                         0.000000016  -0.000000048   0.000000012   0.000000014  -0.000000303   0.000000072   0.000000043  -0.000000001

   72    4.1  0.5  0.5  -0.000000019   0.000000063   0.000000040   0.000000025   0.000000025  -0.000000007   0.000000561  -0.000000006
                         0.000000391  -0.000001184   0.000000388   0.000000322  -0.000007689   0.000000532   0.000000938  -0.000000025

   73    5.1  0.5  0.5   0.000000312   0.000000102  -0.000002727   0.000003326   0.000000092   0.000001386   0.000000247   0.000011383
                        -0.000000013  -0.000000004   0.000000543  -0.000000659   0.000000764   0.000011457  -0.000000053  -0.000002185

   74    6.1  0.5  0.5  -0.000000057  -0.000000019   0.000000104  -0.000000127   0.000000184   0.000002750  -0.000000039  -0.000001738
                        -0.000001474  -0.000000486   0.000000514  -0.000000631  -0.000000019  -0.000000336  -0.000000197  -0.000009047

   75    7.1  0.5  0.5  -0.000000001   0.000000000  -0.000000002   0.000000003   0.000000000  -0.000000001   0.000000005   0.000000002
                        -0.000000080   0.000000243  -0.000005732  -0.000004699   0.000009905  -0.000000664   0.000013761  -0.000000304

   76    8.1  0.5  0.5  -0.000001669   0.000005127   0.000002424   0.000002087   0.000071488  -0.000004790  -0.000031690   0.000001623
                         0.000000034   0.000000010  -0.000000043   0.000000051  -0.000000024  -0.000000547  -0.000000011  -0.000000053

   77    9.1  0.5  0.5   0.000001912   0.000000572  -0.000003916   0.000004723  -0.000001146  -0.000006195   0.000002289   0.000088157
                         0.000000032   0.000000013   0.000000613  -0.000000747  -0.000003584  -0.000053124  -0.000000344  -0.000016520

   78   10.1  0.5  0.5  -0.000000306  -0.000000079   0.000002359  -0.000002860  -0.000000629  -0.000013742  -0.000000222  -0.000004314
                        -0.000008362  -0.000002759   0.000012104  -0.000014767   0.000000061   0.000000975  -0.000000633  -0.000028580

   79   11.1  0.5  0.5   0.000000001  -0.000000000  -0.000000002   0.000000002  -0.000000014  -0.000000003   0.000000006   0.000000038
                         0.000001288  -0.000003906  -0.000001133  -0.000000931   0.000070356  -0.000004729  -0.000054393   0.000001202

   80   12.1  0.5  0.5   0.000003767  -0.000011416  -0.000020838  -0.000017081   0.000011247  -0.000000751   0.000037722  -0.000000846
                         0.000000001   0.000000000  -0.000000001   0.000000001   0.000000001   0.000000004   0.000000000   0.000000003

   81    1.1  0.5 -0.5  -0.000000004   0.000000010   0.000000032   0.000000027  -0.000000115   0.000000005   0.000000045  -0.000000008
                         0.000000136  -0.000000415  -0.000002444  -0.000002004  -0.000016782   0.000001123  -0.000005778   0.000000130

   82    2.1  0.5 -0.5  -0.000000468   0.000001400   0.000004300   0.000003531  -0.000015075   0.000001021   0.000005881  -0.000000182
                         0.000000001   0.000000003   0.000000017   0.000000017   0.000000128  -0.000000008   0.000000043   0.000000012

   83    3.1  0.5 -0.5  -0.000001555  -0.000000519  -0.000000747   0.000000874   0.000000078   0.000000378  -0.000000321  -0.000013665
                         0.000000108   0.000000036   0.000000134  -0.000000161   0.000000048   0.000000599   0.000000060   0.000002575

   84    4.1  0.5 -0.5   0.000000109   0.000000034  -0.000000038   0.000000036   0.000000527   0.000007631   0.000000002   0.000000375
                         0.000001181   0.000000389  -0.000000320   0.000000389  -0.000000071  -0.000000948  -0.000000025  -0.000001027

   85    5.1  0.5 -0.5   0.000000102  -0.000000312   0.000003391   0.000002781   0.000011541  -0.000000769  -0.000011591   0.000000252
                         0.000000000  -0.000000001  -0.000000001   0.000000002   0.000000001  -0.000000000  -0.000000004   0.000000005

   86    6.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000002  -0.000000002  -0.000000004  -0.000000003   0.000000004  -0.000000001
                         0.000000487  -0.000001475   0.000000643   0.000000524   0.000002770  -0.000000185  -0.000009212   0.000000201

   87    7.1  0.5 -0.5  -0.000000009  -0.000000003   0.000000917  -0.000001113  -0.000000659  -0.000009834  -0.000000059  -0.000002585
                        -0.000000243  -0.000000079   0.000004608  -0.000005622   0.000000079   0.000001188  -0.000000298  -0.000013516

   88    8.1  0.5 -0.5   0.000005123   0.000001669   0.000002037  -0.000002386  -0.000001118  -0.000008552  -0.000001604  -0.000031122
                        -0.000000209  -0.000000030  -0.000000456   0.000000430  -0.000004690  -0.000070974   0.000000253   0.000005974

   89    9.1  0.5 -0.5   0.000000571  -0.000001909   0.000004778   0.000003960  -0.000053483   0.000003695  -0.000089691   0.000002313
                        -0.000000035   0.000000106  -0.000000186  -0.000000160   0.000000222   0.000000708   0.000000363  -0.000000093

   90   10.1  0.5 -0.5   0.000000028  -0.000000017   0.000000067   0.000000041  -0.000000681   0.000000015  -0.000001141  -0.000000098
                         0.000002760  -0.000008368   0.000015041   0.000012332  -0.000013760   0.000000632  -0.000028882   0.000000664

   91   11.1  0.5 -0.5   0.000000151   0.000000049   0.000000183  -0.000000218  -0.000004696  -0.000069846   0.000000189   0.000010241
                         0.000003903   0.000001287   0.000000913  -0.000001112   0.000000565   0.000008454   0.000001188   0.000053420

   92   12.1  0.5 -0.5  -0.000011408  -0.000003765  -0.000016755   0.000020440  -0.000000086  -0.000001350   0.000000832   0.000037048
                         0.000000441   0.000000146   0.000003322  -0.000004054  -0.000000746  -0.000011166  -0.000000156  -0.000007098


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5  -0.000112919   0.000000000  -0.000013142  -0.000105650  -0.000002309  -0.000239672  -0.000009014  -0.000186699
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000225657   0.000000000  -0.000015276  -0.000122806   0.000000338   0.000035040  -0.000001756  -0.000036370

    3    3.1  1.5  1.5  -0.000000000  -0.000011768  -0.000034294   0.000004266  -0.000211021   0.000002033  -0.000004013   0.000000194
                         0.000000000  -0.000011407   0.000029025  -0.000003611  -0.000100159   0.000000965  -0.000004359   0.000000210

    4    4.1  1.5  1.5   0.000000000   0.000042291   0.000307071  -0.000038198   0.000005878  -0.000000057   0.000003360  -0.000000162
                        -0.000000000   0.000040992  -0.000259893   0.000032329   0.000002790  -0.000000027   0.000003650  -0.000000176

    5    5.1  1.5  1.5  -0.000000000   0.000021777   0.000000124  -0.000000015  -0.000028107   0.000000271   0.000227291  -0.000010974
                        -0.000000000  -0.000022467   0.000000146  -0.000000018   0.000059218  -0.000000570  -0.000209262   0.000010104

    6    6.1  1.5  1.5   0.000239963   0.000000000   0.000010761   0.000086505  -0.000001760  -0.000182696  -0.000006337  -0.000131238
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    7    7.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000019098   0.000000000   0.000006272   0.000050423   0.000000811   0.000084175  -0.000008399  -0.000173945

    8    8.1  1.5  1.5  -0.000016205  -0.000000000  -0.000000240  -0.000001930   0.000000001   0.000000072  -0.000000429  -0.000008878
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    9    9.1  1.5  1.5   0.000000000  -0.000011203  -0.000001183   0.000000147  -0.000006860   0.000000066  -0.000005374   0.000000260
                        -0.000000000  -0.000010859   0.000001001  -0.000000125  -0.000003256   0.000000031  -0.000005837   0.000000282

   10   10.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000009902  -0.000000000   0.000000026   0.000000211  -0.000000038  -0.000003906   0.000000765   0.000015841

   11   11.1  1.5  1.5  -0.000000002   0.057449596   0.335389439  -0.041720820  -0.236639362   0.002279588  -0.001145393   0.000055305
                        -0.000000003   0.055684790  -0.283860133   0.035310832  -0.112318033   0.001081981  -0.001244069   0.000060068

   12   12.1  1.5  1.5  -0.000000003   0.057594446   0.000066572  -0.000008278  -0.045754629   0.000440759   0.384080310  -0.018544665
                         0.000000002  -0.059419774   0.000078659  -0.000009784   0.096398983  -0.000928626  -0.353614962   0.017073699

   13   13.1  1.5  1.5  -0.000000003   0.098848767   0.396867375  -0.049368376   0.268293504  -0.002584519   0.012013139  -0.000580035
                        -0.000000006   0.095812212  -0.335892584   0.041783413   0.127342296  -0.001226705   0.013048109  -0.000630010

   14   14.1  1.5  1.5   0.089070857   0.000000004   0.015314078   0.123108301   0.004626407   0.480257453   0.017647112   0.365490914
                         0.000000007  -0.000000001   0.000000003   0.000000005   0.000000001   0.000000010   0.000000001  -0.000000003

   15   15.1  1.5  1.5   0.000000043  -0.000000008  -0.000000003  -0.000000007   0.000000001   0.000000000  -0.000000001  -0.000000001
                        -0.572131277  -0.000000026   0.027082553   0.217713885   0.000082382   0.008551827  -0.003012864  -0.062399695

   16   16.1  1.5  1.5   0.000000014  -0.000000003   0.000000002   0.000000002   0.000000002  -0.000000004   0.000000001   0.000000007
                        -0.188538077  -0.000000009   0.000907298   0.007293688  -0.001452251  -0.150755099   0.013825154   0.286334052

   17   17.1  1.5  1.5   0.648580076   0.000000029   0.023404996   0.188150376  -0.001572470  -0.163234864  -0.005350597  -0.110816688
                         0.000000048  -0.000000009   0.000000002   0.000000005  -0.000000002  -0.000000002   0.000000000  -0.000000000

   18    1.1  1.5  0.5   0.000000000   0.000006724  -0.000010500   0.000001306  -0.000024382   0.000000235  -0.000204949   0.000009896
                        -0.000000000  -0.000006937  -0.000012407   0.000001543   0.000051370  -0.000000495   0.000188693  -0.000009111

   19    2.1  1.5  0.5   0.000000000  -0.000027910   0.000028788  -0.000003581  -0.000356715   0.000003436   0.000098081  -0.000004736
                         0.000000000  -0.000027053  -0.000024365   0.000003031  -0.000169311   0.000001631   0.000106531  -0.000005144

   20    3.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000042884  -0.000000000  -0.000031171  -0.000250580   0.000001400   0.000145287   0.000001857   0.000038462

   21    4.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000079905  -0.000000000  -0.000005377  -0.000043228  -0.000000546  -0.000056681  -0.000006570  -0.000136075

   22    5.1  1.5  0.5   0.000041320   0.000000000   0.000035727   0.000287206   0.000000760   0.000078887   0.000000312   0.000006466
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   23    6.1  1.5  0.5   0.000000000  -0.000000010   0.000006922  -0.000000861  -0.000034700   0.000000334   0.000074591  -0.000003602
                        -0.000000000   0.000000010   0.000008179  -0.000001017   0.000073108  -0.000000704  -0.000068675   0.000003316

   24    7.1  1.5  0.5   0.000000000  -0.000087173  -0.000000477   0.000000059  -0.000007436   0.000000072  -0.000144448   0.000006974
                        -0.000000000  -0.000084495   0.000000404  -0.000000050  -0.000003530   0.000000034  -0.000156892   0.000007575

   25    8.1  1.5  0.5   0.000000000  -0.000015512  -0.000003448   0.000000429   0.000002156  -0.000000021   0.000000095  -0.000000005
                        -0.000000000   0.000016003  -0.000004074   0.000000507  -0.000004543   0.000000044  -0.000000087   0.000000004

   26    9.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000023166   0.000000000   0.000000252   0.000002029   0.000000001   0.000000088  -0.000000545  -0.000011285

   27   10.1  1.5  0.5   0.000000000   0.000015130  -0.000005124   0.000000637  -0.000010320   0.000000099  -0.000007059   0.000000341
                        -0.000000000   0.000014665   0.000004337  -0.000000540  -0.000004898   0.000000047  -0.000007667   0.000000370

   28   11.1  1.5  0.5  -0.000000006   0.000000001   0.000000004   0.000000009  -0.000000003   0.000000003   0.000000001  -0.000000004
                         0.074327426   0.000000003  -0.042604484  -0.342493111   0.000960502   0.099707751  -0.005901886  -0.122234542

   29   12.1  1.5  0.5   0.120010728   0.000000005   0.060262030   0.484440315   0.001275292   0.132385255   0.000801030   0.016590210
                         0.000000009  -0.000000002   0.000000008   0.000000015  -0.000000002   0.000000003   0.000000002  -0.000000001

   30   13.1  1.5  0.5  -0.000000018   0.000000003  -0.000000003  -0.000000007   0.000000002   0.000000004  -0.000000001  -0.000000001
                         0.241268848   0.000000011   0.032036169   0.257535496  -0.002305569  -0.239336298  -0.010043814  -0.208018315

   31   14.1  1.5  0.5   0.000000001  -0.018307012   0.013060204  -0.001624626   0.056802532  -0.000547190   0.289031524  -0.013955397
                        -0.000000001   0.018887212   0.015431031  -0.001919545  -0.119675494   0.001152857  -0.266105474   0.012848453

   32   15.1  1.5  0.5   0.000000001  -0.025781558  -0.044077307   0.005483004   0.542410350  -0.005225134  -0.252938740   0.012212716
                         0.000000002  -0.024989569   0.037305264  -0.004640601   0.257448574  -0.002480042  -0.274730437   0.013264889

   33   16.1  1.5  0.5  -0.000000007   0.222642618  -0.018854405   0.002345397   0.253862321  -0.002445501   0.150344041  -0.007259109
                        -0.000000013   0.215803216   0.015957611  -0.001985051   0.120492702  -0.001160727   0.163296776  -0.007884509

   34   17.1  1.5  0.5   0.000000000  -0.005804500   0.016209992  -0.002016442  -0.042433026   0.000408761   0.222432671  -0.010739781
                        -0.000000000   0.005988460   0.019152601  -0.002382490   0.089400812  -0.000861210  -0.204789252   0.009887902

   35    1.1  1.5 -0.5  -0.000009661   0.000000000   0.000002022   0.000016254   0.000000548   0.000056862   0.000013451   0.000278584
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000038870  -0.000000000  -0.000004692  -0.000037715  -0.000003804  -0.000394857   0.000006992   0.000144806

   37    3.1  1.5 -0.5  -0.000000000   0.000030793  -0.000191270   0.000023793  -0.000131253   0.000001264  -0.000026051   0.000001258
                        -0.000000000   0.000029847   0.000161883  -0.000020138  -0.000062298   0.000000600  -0.000028296   0.000001366

   38    4.1  1.5 -0.5   0.000000000  -0.000057375  -0.000032996   0.000004105   0.000051205  -0.000000493   0.000092167  -0.000004450
                        -0.000000000  -0.000055613   0.000027927  -0.000003474   0.000024304  -0.000000234   0.000100108  -0.000004834

   39    5.1  1.5 -0.5  -0.000000000   0.000028758   0.000185545  -0.000023081   0.000033826  -0.000000326   0.000004757  -0.000000230
                        -0.000000000  -0.000029670   0.000219227  -0.000027271  -0.000071267   0.000000687  -0.000004379   0.000000211

   40    6.1  1.5 -0.5   0.000000014   0.000000000  -0.000001333  -0.000010715   0.000000780   0.000080925  -0.000004895  -0.000101391
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   41    7.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000121403  -0.000000000   0.000000078   0.000000625  -0.000000079  -0.000008232  -0.000010297  -0.000213261

   42    8.1  1.5 -0.5   0.000022287   0.000000000   0.000000664   0.000005338  -0.000000048  -0.000005029  -0.000000006  -0.000000128
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   43    9.1  1.5 -0.5  -0.000000000  -0.000016635   0.000001548  -0.000000193  -0.000000080   0.000000001   0.000007643  -0.000000369
                         0.000000000  -0.000016124  -0.000001310   0.000000163  -0.000000038   0.000000000   0.000008302  -0.000000401

   44   10.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000021071   0.000000000   0.000000835   0.000006713  -0.000000110  -0.000011423  -0.000000503  -0.000010421

   45   11.1  1.5 -0.5   0.000000002  -0.053370788  -0.261427995   0.032520375  -0.090076400   0.000867723   0.082792794  -0.003997510
                         0.000000003  -0.051731280   0.221262139  -0.027523941  -0.042753687   0.000411851   0.089925728  -0.004341910

   46   12.1  1.5 -0.5  -0.000000005   0.083526484   0.312964839  -0.038931315   0.056765468  -0.000546835   0.012205116  -0.000589302
                         0.000000003  -0.086173670   0.369777539  -0.045998532  -0.119597397   0.001152103  -0.011237003   0.000542561

   47   13.1  1.5 -0.5   0.000000006  -0.173243029   0.196579102  -0.024453487   0.216217419  -0.002082862   0.140896492  -0.006802949
                         0.000000010  -0.167921142  -0.166376646   0.020696451   0.102625003  -0.000988603   0.153035284  -0.007389051

   48   14.1  1.5 -0.5   0.026303488   0.000000001  -0.002514769  -0.020215975  -0.001276126  -0.132471701  -0.018969340  -0.392875737
                         0.000000002  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000007  -0.000000001   0.000000007

   49   15.1  1.5 -0.5   0.000000003  -0.000000001  -0.000000005  -0.000000005  -0.000000004  -0.000000002   0.000000000  -0.000000016
                        -0.035904976  -0.000000002   0.007183210   0.057745058   0.005783825   0.600407158  -0.018030744  -0.373436499

   50   16.1  1.5 -0.5  -0.000000023   0.000000004  -0.000000001  -0.000000001  -0.000000001  -0.000000007  -0.000000000   0.000000001
                         0.310065741   0.000000014   0.003072672   0.024700889   0.002706984   0.281006351   0.010717283   0.221966591

   51   17.1  1.5 -0.5   0.008339896   0.000000000  -0.003121265  -0.025091552   0.000953294   0.098959925  -0.014598408  -0.302349022
                         0.000000001  -0.000000000   0.000000001  -0.000000001   0.000000002  -0.000000001  -0.000000002   0.000000010

   52    1.1  1.5 -1.5  -0.000000000   0.000078591   0.000068253  -0.000008490   0.000102769  -0.000000990   0.000137351  -0.000006632
                        -0.000000000  -0.000081081   0.000080643  -0.000010032  -0.000216520   0.000002086  -0.000126456   0.000006106

   53    2.1  1.5 -1.5  -0.000000000   0.000162033   0.000093739  -0.000011661   0.000031655  -0.000000305  -0.000024635   0.000001189
                        -0.000000000   0.000157056  -0.000079337   0.000009869   0.000015025  -0.000000145  -0.000026757   0.000001292

   54    3.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000016389   0.000000000  -0.000005589  -0.000044928   0.000002250   0.000233585   0.000000286   0.000005925

   55    4.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000058898  -0.000000000   0.000050043   0.000402290  -0.000000063  -0.000006507  -0.000000240  -0.000004961

   56    5.1  1.5 -1.5   0.000031289   0.000000000   0.000000024   0.000000192  -0.000000631  -0.000065550   0.000014917   0.000308953
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   57    6.1  1.5 -1.5   0.000000000  -0.000167012  -0.000055885   0.000006952   0.000078338  -0.000000755   0.000096550  -0.000004662
                         0.000000000   0.000172306  -0.000066030   0.000008214  -0.000165048   0.000001590  -0.000088891   0.000004292

   58    7.1  1.5 -1.5   0.000000000  -0.000013713  -0.000038488   0.000004788   0.000076044  -0.000000733  -0.000117818   0.000005689
                        -0.000000000  -0.000013292   0.000032575  -0.000004052   0.000036093  -0.000000348  -0.000127968   0.000006179

   59    8.1  1.5 -1.5  -0.000000000   0.000011278   0.000001247  -0.000000155  -0.000000031   0.000000000   0.000006531  -0.000000315
                         0.000000000  -0.000011636   0.000001473  -0.000000183   0.000000065  -0.000000001  -0.000006013   0.000000290

   60    9.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000015603  -0.000000000  -0.000000193  -0.000001550   0.000000073   0.000007594   0.000000383   0.000007935

   61   10.1  1.5 -1.5   0.000000000  -0.000007110  -0.000000161   0.000000020  -0.000003529   0.000000034   0.000010729  -0.000000518
                         0.000000000  -0.000006892   0.000000136  -0.000000017  -0.000001675   0.000000016   0.000011654  -0.000000563

   62   11.1  1.5 -1.5   0.000000006  -0.000000001  -0.000000007  -0.000000013   0.000000001  -0.000000006  -0.000000001  -0.000000003
                        -0.080007824  -0.000000004   0.054657860   0.439388951   0.002523331   0.261941841   0.000081651   0.001691045

   63   12.1  1.5 -1.5   0.082751615   0.000000004   0.000012816   0.000103049  -0.001027918  -0.106706373   0.025207455   0.522073966
                         0.000000006  -0.000000001  -0.000000002  -0.000000002  -0.000000002   0.000000006   0.000000001  -0.000000013

   64   13.1  1.5 -1.5   0.000000010  -0.000000002  -0.000000006  -0.000000015   0.000000005   0.000000002  -0.000000002   0.000000006
                        -0.137662844  -0.000000006   0.064676814   0.519930324  -0.002860864  -0.296980579  -0.000856360  -0.017736084

   65   14.1  1.5 -1.5   0.000000004  -0.061992587  -0.079532130   0.009893415  -0.205929576   0.001983756  -0.268885005   0.012982658
                        -0.000000002   0.063957304  -0.093969645   0.011689368   0.433866605  -0.004179516   0.247556988  -0.011952872

   66   15.1  1.5 -1.5   0.000000013  -0.410818704  -0.166182917   0.020672349   0.007725756  -0.000074424  -0.042265019   0.002040695
                         0.000000024  -0.398198682   0.140650538  -0.017496248   0.003666938  -0.000035326  -0.045906318   0.002216510

   67   16.1  1.5 -1.5   0.000000004  -0.135379714  -0.005567338   0.000692550  -0.136192788   0.001311970   0.193941878  -0.009364154
                         0.000000008  -0.131220957   0.004711968  -0.000586144  -0.064642280   0.000622709   0.210650748  -0.010170914

   68   17.1  1.5 -1.5   0.000000027  -0.451406420  -0.121551510   0.015120420   0.069993473  -0.000674258   0.081525817  -0.003936337
                        -0.000000014   0.465712743  -0.143616832   0.017865238  -0.147467063   0.001420577  -0.075059173   0.003624106

   69    1.1  0.5  0.5   0.000000002  -0.000004826  -0.003066726   0.000382821  -0.002695725   0.000023899  -0.000152405   0.000007070
                        -0.000000002  -0.000004670   0.002575580  -0.000320704  -0.001235244   0.000012600  -0.000192583   0.000011258

   70    2.1  0.5  0.5   0.000000013  -0.000000525  -0.001276062   0.000168655  -0.002232371   0.000006133   0.001780725  -0.000088120
                         0.000000008   0.000000614  -0.001555439   0.000195564   0.004755764  -0.000046759  -0.001638278   0.000073642

   71    3.1  0.5  0.5   0.000003352   0.000000005   0.000328909   0.002579757  -0.000029376  -0.004061250  -0.000032582  -0.000564080
                         0.000000243  -0.000000000   0.000010044   0.000028701  -0.000018006  -0.000068059  -0.000003977  -0.000189585

   72    4.1  0.5  0.5  -0.000000135  -0.000000001  -0.000012906  -0.000104112   0.000002895   0.000163813  -0.000000986   0.000022866
                         0.000006018  -0.000000003   0.000097624   0.000762080  -0.000021831  -0.001657699  -0.000224121  -0.004679581

   73    5.1  0.5  0.5   0.000000002  -0.000000921  -0.003061016   0.000382017   0.000261303  -0.000004441  -0.002885285   0.000139043
                        -0.000000000   0.000000946  -0.003614740   0.000450723  -0.000549997   0.000006433   0.002653224  -0.000127617

   74    6.1  0.5  0.5   0.000000000  -0.000004940  -0.002114804   0.000263107   0.000446847  -0.000004359  -0.003412981   0.000164782
                         0.000000000  -0.000004790   0.001793027  -0.000224240   0.000211566  -0.000003330  -0.003709255   0.000178506

   75    7.1  0.5  0.5  -0.000000001   0.000000001  -0.000000687  -0.000000809  -0.000000719   0.000001394   0.000000807   0.000000154
                         0.000000113   0.000000002  -0.000458974  -0.003672802  -0.000037069  -0.003969339  -0.000081242  -0.001713182

   76    8.1  0.5  0.5  -0.000080820  -0.000000147  -0.000002138  -0.000017474  -0.000000204  -0.000001738   0.000002171   0.000050988
                         0.000000011   0.000000141   0.000000073  -0.000000005   0.000000341  -0.000000007   0.000000237  -0.000000006

   77    9.1  0.5  0.5   0.000000825  -0.000013963   0.000004911  -0.000000430  -0.000016456   0.000000178  -0.000027182   0.000000792
                        -0.000000028   0.000014375   0.000005869  -0.000000741   0.000034510  -0.000000323   0.000024908  -0.000001216

   78   10.1  0.5  0.5  -0.000000326   0.000001029   0.000003738  -0.000000537   0.000004687  -0.000000051   0.000003370   0.000000044
                        -0.000000004   0.000001352  -0.000003045   0.000000377   0.000002762  -0.000000025   0.000004340  -0.000000211

   79   11.1  0.5  0.5   0.000000015  -0.000000006   0.000000003   0.000000003  -0.000000007   0.000000000  -0.000000012  -0.000000009
                         0.000063475   0.000000006   0.000002942   0.000023628  -0.000000203  -0.000022606   0.000001441   0.000029607

   80   12.1  0.5  0.5   0.000003140   0.000000001  -0.000000994  -0.000007988   0.000000172   0.000017745   0.000000286   0.000005888
                         0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000003   0.000000000  -0.000000002   0.000000000

   81    1.1  0.5 -0.5  -0.000000006  -0.000000003  -0.000002520  -0.000015246   0.000001135  -0.000039975   0.000002424   0.000018320
                         0.000006716  -0.000000001  -0.000499396  -0.004004771   0.000026993   0.002964990   0.000013071   0.000244908

   82    2.1  0.5 -0.5  -0.000000807  -0.000000003  -0.000258232  -0.002011659  -0.000044872  -0.005253596   0.000114708   0.002419697
                        -0.000000050   0.000000014  -0.000002395   0.000030837  -0.000014510  -0.000022490  -0.000005509  -0.000000882

   83    3.1  0.5 -0.5   0.000000004  -0.000002159  -0.001688518   0.000220153   0.001679938   0.000003670   0.000286572  -0.000021276
                        -0.000000003   0.000002576  -0.001950610   0.000244570  -0.003698133   0.000034260  -0.000521541   0.000024994

   84    4.1  0.5 -0.5   0.000000001   0.000004416  -0.000514442   0.000066179  -0.001567814   0.000020963  -0.003186430   0.000151078
                         0.000000003   0.000004092   0.000571799  -0.000072919  -0.000562815   0.000006745  -0.003427195   0.000165549

   85    5.1  0.5 -0.5  -0.000001320  -0.000000001  -0.000590837  -0.004736683   0.000007716   0.000608913  -0.000188730  -0.003919753
                         0.000000003   0.000000001  -0.000000415  -0.000001256  -0.000001254  -0.000000229   0.000000292   0.000002354

   86    6.1  0.5 -0.5   0.000000001   0.000000000   0.000001189   0.000002399  -0.000001139   0.000000474  -0.000000320   0.000001512
                         0.000006881   0.000000000  -0.000345699  -0.002772605  -0.000005366  -0.000494400   0.000242935   0.005040537

   87    7.1  0.5 -0.5  -0.000000001   0.000000082   0.002804005  -0.000350782  -0.003586515   0.000033180  -0.001160498   0.000055621
                        -0.000000002   0.000000078  -0.002372137   0.000295988  -0.001700754   0.000016544  -0.001260252   0.000059222

   88    8.1  0.5 -0.5  -0.000000204   0.000056258   0.000011292  -0.000001326   0.000000738  -0.000000395  -0.000037515   0.000001436
                         0.000000007  -0.000058025   0.000013335  -0.000001679  -0.000001573   0.000000038   0.000034531  -0.000001644

   89    9.1  0.5 -0.5  -0.000020040  -0.000000594   0.000000843   0.000007652  -0.000000368  -0.000038233  -0.000001406  -0.000036869
                         0.000000021   0.000000573  -0.000000150  -0.000000044   0.000000022   0.000000068  -0.000000358   0.000000087

   90   10.1  0.5 -0.5  -0.000000254   0.000000224   0.000000059   0.000000091  -0.000000001  -0.000000485  -0.000000175  -0.000000460
                        -0.000001680  -0.000000236   0.000000654   0.000004821  -0.000000057  -0.000005419  -0.000000126  -0.000005475

   91   11.1  0.5 -0.5  -0.000000009   0.000045568  -0.000018037   0.000002247  -0.000020423   0.000000180   0.000020060  -0.000000985
                        -0.000000000   0.000044189   0.000015262  -0.000001898  -0.000009693   0.000000093   0.000021775  -0.000001052

   92   12.1  0.5 -0.5   0.000000002  -0.000002186   0.000005160  -0.000000642  -0.000007609   0.000000076  -0.000004332   0.000000212
                         0.000000000   0.000002255   0.000006097  -0.000000759   0.000016031  -0.000000154   0.000003988  -0.000000192


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5   0.000005953   0.000063526   0.002058846  -0.000116659  -0.000602321   0.000016593   0.000784023  -0.000096998
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000000  -0.000000000   0.000000004   0.000000005   0.000000015  -0.000000009   0.000000003   0.000000005
                        -0.000007690  -0.000082065   0.000471020  -0.000026690  -0.001692729   0.000046607   0.000909436  -0.000112509

    3    3.1  1.5  1.5  -0.000039717   0.000003722  -0.000115351  -0.002035712   0.000001141   0.000041422  -0.000038867  -0.000314203
                         0.000204199  -0.000019135  -0.000012411  -0.000219021  -0.000004639  -0.000168354   0.000110579   0.000893774

    4    4.1  1.5  1.5  -0.000009489   0.000000889  -0.000025981  -0.000458501   0.000012636   0.000459275   0.000060602   0.000489903
                         0.000048789  -0.000004572  -0.000002790  -0.000049335  -0.000051403  -0.001866797  -0.000172406  -0.001393555

    5    5.1  1.5  1.5   0.000022495  -0.000002108   0.000012683   0.000223830   0.000012016   0.000436259  -0.000084531  -0.000683229
                         0.000004375  -0.000000410  -0.000117883  -0.002080399   0.000002954   0.000107332  -0.000029711  -0.000240186

    6    6.1  1.5  1.5   0.000004973   0.000053065   0.001251713  -0.000070925   0.001381243  -0.000038025  -0.000994485   0.000123032
                         0.000000000  -0.000000000   0.000000004   0.000000006   0.000000016  -0.000000009   0.000000003   0.000000008

    7    7.1  1.5  1.5   0.000000000   0.000000000   0.000000001   0.000000001   0.000000008  -0.000000008   0.000000004  -0.000000007
                        -0.000030553  -0.000326039   0.001495367  -0.000084736  -0.000771478   0.000021239  -0.001702984   0.000210696

    8    8.1  1.5  1.5   0.000001331   0.000014204  -0.007021746   0.000397852  -0.005918507   0.000162890  -0.006142719   0.000760005
                        -0.000000000   0.000000000  -0.000000020  -0.000000026  -0.000000092   0.000000065  -0.000000024  -0.000000003

    9    9.1  1.5  1.5   0.000000114  -0.000000011  -0.000034474  -0.000608330   0.000047014   0.001708842   0.000249847   0.002019751
                        -0.000000585   0.000000055  -0.000003687  -0.000065467  -0.000191256  -0.006945865  -0.000710789  -0.005745286

   10   10.1  1.5  1.5  -0.000000000   0.000000000  -0.000000018  -0.000000024  -0.000000095   0.000000073  -0.000000028   0.000000012
                        -0.000000479  -0.000005112   0.000847719  -0.000048009   0.007232234  -0.000199073   0.008280864  -0.001024540

   11   11.1  1.5  1.5  -0.058320423   0.005465114   0.020023465   0.353372006  -0.002033072  -0.073890640  -0.003534828  -0.028575484
                         0.299846195  -0.028098151   0.002153609   0.038019825   0.008270415   0.300338720   0.010055435   0.081283234

   12   12.1  1.5  1.5   0.031878819  -0.002987319  -0.002588861  -0.045687018  -0.002445257  -0.088780524   0.017235577   0.139307207
                         0.006200467  -0.000581036   0.024061708   0.424640663  -0.000601117  -0.021842566   0.006058053   0.048972782

   13   13.1  1.5  1.5   0.038113044  -0.003571513  -0.013452357  -0.237409273  -0.001602831  -0.058261188  -0.014264474  -0.115313071
                        -0.195952828   0.018362455  -0.001448343  -0.025542078   0.006520294   0.236813231   0.040581639   0.328015045

   14   14.1  1.5  1.5  -0.012776858  -0.136346767   0.478691014  -0.027123845  -0.029566144   0.000816060   0.088697090  -0.010973726
                        -0.000000002  -0.000000014   0.000000264   0.000000331   0.000000969  -0.000000561   0.000000149   0.000000482

   15   15.1  1.5  1.5   0.000000003   0.000000012   0.000000655   0.000000843   0.000002094  -0.000001213   0.000000164   0.000001369
                        -0.009633608  -0.102803950  -0.038603957   0.002187541  -0.250057812   0.006885236   0.312684539  -0.038684352

   16   16.1  1.5  1.5  -0.000000017  -0.000000063   0.000000499   0.000000696   0.000002799  -0.000002260   0.000000916  -0.000000823
                         0.051784894   0.552616587   0.318506866  -0.018048365  -0.286572448   0.007889717  -0.240569190   0.029764230

   17   17.1  1.5  1.5   0.004715228   0.050318012  -0.112699968   0.006385811  -0.306766817   0.008445924   0.243233359  -0.030091584
                         0.000000001   0.000000005  -0.000000851  -0.000001103  -0.000003007   0.000001876  -0.000000402  -0.000001367

   18    1.1  1.5  0.5  -0.000109852   0.000010294  -0.000000656  -0.000011452   0.000059818   0.002172681   0.000000525   0.000004303
                        -0.000021366   0.000002002   0.000006030   0.000106490   0.000014700   0.000534525   0.000000181   0.000001519

   19    2.1  1.5  0.5  -0.000000264   0.000000025  -0.000048671  -0.000859066  -0.000007959  -0.000289673   0.000082304   0.000665244
                         0.000001359  -0.000000127  -0.000005242  -0.000092423   0.000032409   0.001177458  -0.000234127  -0.001892347

   20    3.1  1.5  0.5   0.000000000  -0.000000000   0.000000005   0.000000007   0.000000024  -0.000000018   0.000000006   0.000000001
                        -0.000010503  -0.000112077  -0.000432995   0.000024530  -0.002023892   0.000055714  -0.000899986   0.000111355

   21    4.1  1.5  0.5   0.000000000   0.000000000   0.000000001   0.000000002   0.000000003  -0.000000000  -0.000000000   0.000000005
                        -0.000009641  -0.000102886  -0.001953844   0.000110711   0.000105143  -0.000002900   0.000523382  -0.000064753

   22    5.1  1.5  0.5  -0.000009478  -0.000101141  -0.000828829   0.000046960  -0.000584862   0.000016091  -0.002006439   0.000248240
                        -0.000000000  -0.000000000  -0.000000002  -0.000000003  -0.000000012   0.000000009  -0.000000005   0.000000003

   23    6.1  1.5  0.5   0.000349358  -0.000032738   0.000006478   0.000114302  -0.000010110  -0.000367559   0.000244628   0.001977239
                         0.000067951  -0.000006368  -0.000060195  -0.001062404  -0.000002478  -0.000090420   0.000085994   0.000695090

   24    7.1  1.5  0.5  -0.000021172   0.000001984   0.000025476   0.000449640   0.000011676   0.000424509   0.000042366   0.000342505
                         0.000108854  -0.000010201   0.000002747   0.000048372  -0.000047508  -0.001725495  -0.000120531  -0.000974271

   25    8.1  1.5  0.5   0.000012374  -0.000001160   0.000035624   0.000629042   0.000196107   0.007121750   0.000399552   0.003229644
                         0.000002407  -0.000000226  -0.000331288  -0.005846527   0.000048209   0.001752121   0.000140449   0.001135386

   26    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000002  -0.000000002   0.000000006  -0.000000012   0.000000008  -0.000000026
                        -0.000001560  -0.000016651   0.010694474  -0.000605988  -0.002282248   0.000062858  -0.003701666   0.000457975

   27   10.1  1.5  0.5  -0.000000989   0.000000093   0.000271291   0.004787798   0.000033153   0.001205085   0.000292335   0.002363233
                         0.000005083  -0.000000476   0.000029208   0.000515103  -0.000134866  -0.004898292  -0.000831681  -0.006722358

   28   11.1  1.5  0.5   0.000000008   0.000000029  -0.000000923  -0.000001208  -0.000003744   0.000002518  -0.000000754  -0.000000832
                        -0.024431668  -0.260719759   0.350093238  -0.019836723   0.268027020  -0.007377427   0.048453727  -0.005995933

   29   12.1  1.5  0.5  -0.016083777  -0.171636187   0.169051307  -0.009578002   0.119351267  -0.003283621   0.409575564  -0.050673288
                        -0.000000005  -0.000000020   0.000000422   0.000000581   0.000002495  -0.000001992   0.000000857  -0.000000772

   30   13.1  1.5  0.5   0.000000000  -0.000000000   0.000000648   0.000000885   0.000003282  -0.000002528   0.000000960  -0.000000499
                         0.001626809   0.017360303   0.209844785  -0.011891260  -0.315108485   0.008675055  -0.206757680   0.025581230

   31   14.1  1.5  0.5  -0.006342875   0.000594381   0.000284435   0.005043031   0.010960894   0.398091408   0.015593701   0.126049661
                        -0.001233695   0.000115607  -0.002655989  -0.046863338   0.002693969   0.097939221   0.005480943   0.044313262

   32   15.1  1.5  0.5  -0.013462600   0.001261561  -0.011191958  -0.197541166  -0.002461680  -0.089556170   0.011733799   0.094835819
                         0.069216053  -0.006486134  -0.001205602  -0.021252361   0.010020779   0.364022841  -0.033377466  -0.269770495

   33   16.1  1.5  0.5   0.032485391  -0.003044154   0.000649780   0.011464478   0.001505332   0.054697855   0.014834329   0.119915811
                        -0.167019045   0.015651112   0.000070661   0.001232876  -0.006122250  -0.222327068  -0.042201555  -0.341108133

   34   17.1  1.5  0.5   0.611622465  -0.057314253  -0.001301424  -0.022952665   0.005761793   0.209347324  -0.047518056  -0.384068664
                         0.118961258  -0.011147672   0.012087331   0.213341076   0.001414751   0.051502458  -0.016704283  -0.135017285

   35    1.1  1.5 -0.5  -0.000010487  -0.000111911   0.000107104  -0.000006065   0.002237467  -0.000061598  -0.000004564   0.000000556
                        -0.000000000  -0.000000000   0.000000006   0.000000008   0.000000024  -0.000000017   0.000000005   0.000000003

   36    2.1  1.5 -0.5   0.000000000  -0.000000000   0.000000004   0.000000005   0.000000019  -0.000000014   0.000000006  -0.000000003
                        -0.000000130  -0.000001384  -0.000864024   0.000048953  -0.001212566   0.000033372  -0.002005873   0.000248172

   37    3.1  1.5 -0.5   0.000021398  -0.000002005   0.000024388   0.000430511   0.000013293   0.000483500  -0.000036932  -0.000298476
                        -0.000110015   0.000010309   0.000002631   0.000046313  -0.000054105  -0.001965290   0.000105053   0.000849051

   38    4.1  1.5 -0.5   0.000019643  -0.000001841   0.000110076   0.001942633  -0.000000693  -0.000025122   0.000021471   0.000173580
                        -0.000100994   0.000009464   0.000011845   0.000209007   0.000002816   0.000102098  -0.000061090  -0.000493760

   39    5.1  1.5 -0.5   0.000099280  -0.000009303  -0.000005026  -0.000088660   0.000015627   0.000567929  -0.000234191  -0.001892881
                         0.000019310  -0.000001810   0.000046690   0.000824073   0.000003835   0.000139716  -0.000082326  -0.000665433

   40    6.1  1.5 -0.5   0.000033351   0.000355905  -0.001068535   0.000060542  -0.000378518   0.000010409  -0.002095859   0.000259302
                         0.000000000   0.000000000  -0.000000002  -0.000000002  -0.000000011   0.000000009  -0.000000004   0.000000004

   41    7.1  1.5 -0.5   0.000000000   0.000000000  -0.000000005  -0.000000006  -0.000000018   0.000000012  -0.000000003  -0.000000006
                        -0.000010392  -0.000110894   0.000452234  -0.000025623   0.001776947  -0.000048922  -0.001032721   0.000127760

   42    8.1  1.5 -0.5   0.000001181   0.000012606  -0.005880269   0.000333198   0.007334115  -0.000201946  -0.003423405   0.000423518
                        -0.000000000  -0.000000000   0.000000014   0.000000019   0.000000057  -0.000000038   0.000000012   0.000000012

   43    9.1  1.5 -0.5   0.000003179  -0.000000298  -0.000602511  -0.010633109   0.000015006   0.000545241  -0.000151863  -0.001227653
                        -0.000016344   0.000001532  -0.000064826  -0.001144014  -0.000061041  -0.002216161   0.000432063   0.003492162

   44   10.1  1.5 -0.5   0.000000000   0.000000000  -0.000000016  -0.000000020  -0.000000051   0.000000028  -0.000000004  -0.000000038
                        -0.000000485  -0.000005178   0.004815428  -0.000272859   0.005044353  -0.000138881  -0.007125655   0.000881563

   45   11.1  1.5 -0.5   0.049777470  -0.004664568  -0.019722770  -0.348084489  -0.001760078  -0.064030072   0.001989341   0.016069008
                        -0.255923809   0.023982248  -0.002123188  -0.037449482   0.007164395   0.260266466  -0.005656301  -0.045711603

   46   12.1  1.5 -0.5   0.168478933  -0.015787916   0.001025161   0.018083446  -0.003189010  -0.115895724   0.047805548   0.386394777
                         0.032769341  -0.003070765  -0.009522981  -0.168081330  -0.000782548  -0.028511509   0.016805110   0.135835266

   47   13.1  1.5 -0.5  -0.003314488   0.000310596  -0.011823122  -0.208640618   0.002070082   0.075278643  -0.008483566  -0.068570450
                         0.017040959  -0.001596884  -0.001271159  -0.022448295  -0.008424450  -0.305984450   0.024133555   0.195055971

   48   14.1  1.5 -0.5  -0.000605519  -0.006461739  -0.047133901   0.002671176   0.409962022  -0.011287102  -0.133612058   0.016528891
                        -0.000000001  -0.000000002   0.000000999   0.000001316   0.000003960  -0.000002684   0.000000755   0.000000931

   49   15.1  1.5 -0.5  -0.000000000   0.000000008   0.000001086   0.000001451   0.000005016  -0.000003646   0.000001286   0.000000027
                        -0.006607683  -0.070513145  -0.198681089   0.011256705  -0.374877228   0.010318715  -0.285954459   0.035379899

   50   16.1  1.5 -0.5  -0.000000007  -0.000000021  -0.000000583  -0.000000747  -0.000001708   0.000000912  -0.000000046  -0.000001442
                         0.015944409   0.170148941   0.011530578  -0.000653610   0.228956722  -0.006304599  -0.361572344   0.044732857

   51   17.1  1.5 -0.5   0.058388306   0.623084120   0.214572224  -0.012157190   0.215589437  -0.005932940   0.407109820  -0.050368629
                         0.000000021   0.000000070   0.000000697   0.000000943   0.000003614  -0.000002753   0.000001085  -0.000000546

   52    1.1  1.5 -1.5   0.000062357  -0.000005843  -0.000012479  -0.000220240  -0.000016112  -0.000584879  -0.000091508  -0.000739649
                         0.000012129  -0.000001137   0.000115990   0.002047032  -0.000003964  -0.000143899  -0.000032169  -0.000260022

   53    2.1  1.5 -1.5  -0.000015668   0.000001468   0.000026538   0.000468317  -0.000011126  -0.000404391  -0.000037309  -0.000301618
                         0.000080556  -0.000007549   0.000002850   0.000050390   0.000045259   0.001643715   0.000106143   0.000857963

   54    3.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000001  -0.000000006
                         0.000019494   0.000208025   0.002047460  -0.000116016  -0.000173375   0.000004777  -0.000947394   0.000117211

   55    4.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000004   0.000000006   0.000000016  -0.000000011   0.000000002   0.000000006
                         0.000004658   0.000049703   0.000461148  -0.000026131  -0.001922463   0.000052933   0.001477160  -0.000182747

   56    5.1  1.5 -1.5  -0.000002147  -0.000022917   0.002092406  -0.000118563  -0.000449268   0.000012374  -0.000724218   0.000089601
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000002   0.000000005

   57    6.1  1.5 -1.5   0.000052089  -0.000004881  -0.000007593  -0.000133895   0.000036926   0.001341249   0.000116071   0.000938199
                         0.000010131  -0.000000949   0.000070518   0.001244531   0.000009076   0.000329974   0.000040796   0.000329824

   58    7.1  1.5 -1.5  -0.000062248   0.000005833   0.000084250   0.001486786  -0.000005066  -0.000184304   0.000069871   0.000564793
                         0.000320042  -0.000029991   0.000009063   0.000159964   0.000020625   0.000749140  -0.000198774  -0.001606600

   59    8.1  1.5 -1.5   0.000013943  -0.000001307   0.000042585   0.000751115  -0.000158189  -0.005747143   0.000716989   0.005795063
                         0.000002712  -0.000000254  -0.000395567  -0.006981457  -0.000038852  -0.001413888   0.000252059   0.002037215

   60    9.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000017   0.000000022   0.000000062  -0.000000040   0.000000008   0.000000027
                        -0.000000056  -0.000000596   0.000611842  -0.000034670  -0.007152984   0.000196949   0.006089968  -0.000753422

   61   10.1  1.5 -1.5  -0.000000976   0.000000091   0.000047731   0.000842857   0.000047490   0.001727744  -0.000339778  -0.002746328
                         0.000005018  -0.000000470   0.000005160   0.000090664  -0.000193326  -0.007022827   0.000966558   0.007812195

   62   11.1  1.5 -1.5  -0.000000011  -0.000000034  -0.000000528  -0.000000711  -0.000002283   0.000001666  -0.000000523  -0.000000129
                         0.028624702   0.305465240  -0.355411426   0.020138947   0.309294639  -0.008516639  -0.086159865   0.010658648

   63   12.1  1.5 -1.5  -0.003043301  -0.032476221  -0.427091321   0.024200578   0.091428000  -0.002518059   0.147664590  -0.018269240
                        -0.000000002  -0.000000002  -0.000000070  -0.000000061   0.000000292  -0.000000481   0.000000320  -0.000001012

   64   13.1  1.5 -1.5   0.000000007   0.000000025  -0.000000781  -0.000000998  -0.000002417   0.000001331  -0.000000145  -0.000001797
                        -0.018706562  -0.199624936   0.238779314  -0.013530100   0.243874706  -0.006714410  -0.347693793   0.043015632

   65   14.1  1.5 -1.5  -0.133838663   0.012541827  -0.002901838  -0.051206582  -0.000792295  -0.028709745  -0.010352477  -0.083677080
                        -0.026031773   0.002439399   0.026968172   0.475944296  -0.000195508  -0.007064519  -0.003639900  -0.029416323

   66   15.1  1.5 -1.5  -0.019627666   0.001839278  -0.002174898  -0.038382516  -0.001643758  -0.059738693  -0.012828406  -0.103702240
                         0.100912868  -0.009456398  -0.000234845  -0.004128916   0.006686145   0.242817211   0.036495357   0.294987230

   67   16.1  1.5 -1.5   0.105507365  -0.009886930   0.017944878   0.316679209  -0.001882719  -0.068461634   0.009870555   0.079784107
                        -0.542451185   0.050832311   0.001929990   0.034072018   0.007661789   0.278274635  -0.028079914  -0.226953810

   68   17.1  1.5 -1.5   0.049392411  -0.004628491   0.000684204   0.012054968  -0.008201797  -0.297884271  -0.028388920  -0.229466754
                         0.009606881  -0.000900246  -0.006349051  -0.112053383  -0.002015974  -0.073286021  -0.009978609  -0.080668924

   69    1.1  0.5  0.5  -0.000746171   0.000072066  -0.000016724  -0.000295835   0.000001167   0.000028446  -0.000030599  -0.000246318
                         0.003912323  -0.000364958  -0.000001871  -0.000028073  -0.000002873  -0.000105358   0.000085311   0.000688104

   70    2.1  0.5  0.5   0.001850046  -0.000157447  -0.000002547  -0.000050124   0.000011516   0.000314403  -0.000064776  -0.000515963
                         0.000327727  -0.000036663   0.000028287   0.000486051   0.000002183   0.000078299  -0.000023893  -0.000187252

   71    3.1  0.5  0.5   0.000383218   0.004169816   0.000077649  -0.000004027   0.000755857  -0.000021744  -0.000244115   0.000032286
                        -0.000018180  -0.000158607   0.000026964  -0.000003619  -0.000002641  -0.000000118  -0.000016777   0.000002450

   72    4.1  0.5  0.5  -0.000018124  -0.000167959  -0.000003136   0.000000107  -0.000030502   0.000000490   0.000009916  -0.000000752
                        -0.000370176  -0.003965001   0.000668306  -0.000038415  -0.000062338   0.000001578  -0.000422203   0.000052754

   73    5.1  0.5  0.5   0.001573226  -0.000145432  -0.000003066  -0.000054775  -0.000016085  -0.000597167   0.000010549   0.000086192
                         0.000304550  -0.000029390   0.000028601   0.000506555  -0.000003926  -0.000146659   0.000003566   0.000030240

   74    6.1  0.5  0.5   0.000525413  -0.000049179  -0.000032595  -0.000575286  -0.000003498  -0.000127628   0.000006055   0.000048945
                        -0.002706559   0.000254555  -0.000003406  -0.000062211   0.000014186   0.000519793  -0.000017022  -0.000139151

   75    7.1  0.5  0.5   0.000000689  -0.000001501  -0.000000017   0.000000156  -0.000000257  -0.000000031   0.000000066  -0.000000152
                         0.000276927   0.002943717   0.000358797  -0.000020022  -0.000378827   0.000010246   0.000607089  -0.000075107

   76    8.1  0.5  0.5   0.000000725   0.000004618  -0.017856390   0.000931004   0.013602914  -0.000553924   0.035560409  -0.004672080
                        -0.000000082   0.000000005  -0.000009848  -0.000216607   0.000002012  -0.000177372  -0.000016732  -0.000158600

   77    9.1  0.5  0.5   0.000026078  -0.000002496   0.000290603   0.001854763  -0.000706199  -0.020608902  -0.003868614  -0.028300025
                         0.000004653  -0.000000430  -0.001154487  -0.020272532  -0.000166772  -0.005474726  -0.001263254  -0.010157650

   78   10.1  0.5  0.5  -0.000005903   0.000000568   0.001331252   0.024725866  -0.000156184  -0.007676341  -0.000493589  -0.005176687
                         0.000032116  -0.000003009   0.000135143   0.002400199   0.000825660   0.030063129   0.001672044   0.013522737

   79   11.1  0.5  0.5   0.000000011  -0.000000002   0.000003327   0.000001951  -0.000003234  -0.000008994  -0.000008261  -0.000011805
                        -0.000001250  -0.000013383   0.013264179  -0.000760169   0.037121422  -0.001022452   0.015249321  -0.001890457

   80   12.1  0.5  0.5  -0.000005592  -0.000059658   0.038132147  -0.002162304   0.002306605  -0.000061353   0.018051068  -0.002230939
                        -0.000000002   0.000000000   0.000000108   0.000001335   0.000000116  -0.000001573   0.000000026  -0.000000102

   81    1.1  0.5 -0.5   0.000001061  -0.000014509  -0.000003734  -0.000000072  -0.000002452   0.000000447  -0.000004167   0.000000574
                         0.000372003   0.003982817   0.000297140  -0.000016828  -0.000109104   0.000003069  -0.000730850   0.000090630

   82    2.1  0.5 -0.5  -0.000161551  -0.001878585  -0.000488624   0.000028397  -0.000324005   0.000011704  -0.000548862   0.000069034
                         0.000005928  -0.000031519  -0.000002158   0.000000494   0.000000919   0.000000632   0.000005534  -0.000001058

   83    3.1  0.5 -0.5   0.004062830  -0.000372698   0.000003167   0.000018503   0.000021143   0.000733338   0.000031271   0.000235863
                         0.000951805  -0.000091011   0.000004391   0.000080087   0.000005080   0.000183145   0.000008396   0.000065134

   84    4.1  0.5 -0.5  -0.000921881   0.000088466   0.000038206   0.000664806  -0.000000853  -0.000044512   0.000016786   0.000130669
                         0.003859997  -0.000359906   0.000004003   0.000068373   0.000001416   0.000053245  -0.000050018  -0.000401596

   85    5.1  0.5 -0.5  -0.000148368  -0.001602432  -0.000509508   0.000028765   0.000614912  -0.000016557   0.000091343  -0.000011134
                         0.000001083  -0.000001418   0.000000273   0.000000011   0.000000256  -0.000000030   0.000000058  -0.000000135

   86    6.1  0.5 -0.5   0.000000326   0.000000997   0.000000314   0.000000101  -0.000000250  -0.000000008   0.000000026  -0.000000067
                        -0.000259261  -0.002757086   0.000578640  -0.000032773   0.000535232  -0.000014611   0.000147508  -0.000018067

   87    7.1  0.5 -0.5   0.000560551  -0.000053548   0.000019923   0.000356740  -0.000002417  -0.000090754  -0.000025053  -0.000201404
                        -0.002889854   0.000271701   0.000001986   0.000038364   0.000009957   0.000367795   0.000070806   0.000572708

   88    8.1  0.5 -0.5   0.000004534  -0.000000696   0.000314956   0.001900354   0.000580259   0.013209485  -0.004460250  -0.033542219
                         0.000000876  -0.000000219  -0.000902491  -0.017754983  -0.000039899   0.003247886  -0.001399875  -0.011809424

   89    9.1  0.5 -0.5  -0.000002532  -0.000026487   0.020354616  -0.001178949   0.021320069  -0.000725593  -0.030067099   0.004068618
                        -0.000000054  -0.000000412   0.000324486   0.000165437  -0.000392566  -0.000006774   0.000197023   0.000091272

   90   10.1  0.5 -0.5  -0.000000017  -0.000000337   0.000258565  -0.000008040   0.000271739   0.000045596  -0.000398870  -0.000088882
                         0.000003062   0.000032653  -0.024840744   0.001338069   0.031026507  -0.000839064  -0.014474233   0.001741109

   91   11.1  0.5 -0.5  -0.000002557   0.000000228   0.000756016   0.013187713   0.000253005   0.008865451  -0.000638109  -0.005049657
                         0.000013137  -0.000001229   0.000079378   0.001422212  -0.000990696  -0.036047243   0.001779546   0.014388983

   92   12.1  0.5 -0.5  -0.000058561   0.000005490  -0.000232635  -0.004078989   0.000059952   0.002239839  -0.002104706  -0.017029426
                        -0.000011390   0.000001065   0.002149753   0.037913355   0.000013130   0.000550953  -0.000739797  -0.005986627


   Nr   State  S   Sz       89            90            91            92

    1    1.1  1.5  1.5   0.002740702   0.000000000   0.000000000   0.001689193
                        -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000005   0.000000004   0.000000008  -0.000000009
                         0.002406838   0.000000003   0.000000002   0.004012317

    3    3.1  1.5  1.5   0.000000006   0.001193029   0.000058809  -0.000000011
                        -0.000000000  -0.002674768  -0.001613997   0.000000001

    4    4.1  1.5  1.5  -0.000000001   0.000437452  -0.000041645   0.000000002
                         0.000000000  -0.000980759   0.001142756   0.000000000

    5    5.1  1.5  1.5   0.000000000   0.002788247   0.001431995  -0.000000001
                         0.000000006   0.001243644   0.000052176  -0.000000011

    6    6.1  1.5  1.5  -0.000584961  -0.000000004  -0.000000003  -0.004077637
                         0.000000008   0.000000006   0.000000012  -0.000000013

    7    7.1  1.5  1.5  -0.000000006  -0.000000005  -0.000000009   0.000000010
                         0.001436093  -0.000000003  -0.000000002  -0.001838484

    8    8.1  1.5  1.5  -0.003057429   0.000000002   0.000000002   0.001438401
                        -0.000000007  -0.000000004  -0.000000009   0.000000011

    9    9.1  1.5  1.5  -0.000000007   0.001010745  -0.000192714   0.000000014
                         0.000000000  -0.002266056   0.005288266  -0.000000000

   10   10.1  1.5  1.5   0.000000007   0.000000007   0.000000012  -0.000000013
                        -0.003061014   0.000000005   0.000000003   0.001430617

   11   11.1  1.5  1.5  -0.000000433  -0.127079848  -0.001132282   0.000000708
                         0.000000031   0.284912039   0.031089869  -0.000000079

   12   12.1  1.5  1.5  -0.000000060  -0.311593318  -0.160008237   0.000000140
                        -0.000000718  -0.138980260  -0.005830098   0.000001189

   13   13.1  1.5  1.5   0.000000611   0.063278137   0.007971697  -0.000001022
                        -0.000000057  -0.141870142  -0.218766938   0.000000126

   14   14.1  1.5  1.5   0.270725183  -0.000000114  -0.000000056   0.037897485
                         0.000000273   0.000000222   0.000000400  -0.000000435

   15   15.1  1.5  1.5   0.000000802   0.000000646   0.000001261  -0.000001352
                         0.178795519   0.000000387   0.000000223   0.493164452

   16   16.1  1.5  1.5  -0.000000340  -0.000000276  -0.000000506   0.000000548
                         0.257388952  -0.000000147  -0.000000075  -0.002298169

   17   17.1  1.5  1.5   0.157365986   0.000000398   0.000000229   0.492162495
                        -0.000000828  -0.000000666  -0.000001299   0.000001393

   18    1.1  1.5  0.5   0.000000000   0.003204866  -0.000297259  -0.000000001
                         0.000000003   0.001429474  -0.000010840  -0.000000006

   19    2.1  1.5  0.5  -0.000000002  -0.000219557  -0.000028225   0.000000003
                         0.000000000   0.000492248   0.000774558  -0.000000000

   20    3.1  1.5  0.5  -0.000000006  -0.000000005  -0.000000009   0.000000010
                        -0.000826421  -0.000000003  -0.000000002  -0.003298286

   21    4.1  1.5  0.5   0.000000008   0.000000007   0.000000013  -0.000000014
                        -0.004262521   0.000000004   0.000000002   0.001461477

   22    5.1  1.5  0.5   0.001434002   0.000000002   0.000000001   0.003054410
                        -0.000000004  -0.000000003  -0.000000007   0.000000007

   23    6.1  1.5  0.5   0.000000000   0.002191547  -0.000204560  -0.000000001
                         0.000000003   0.000977501  -0.000007460  -0.000000004

   24    7.1  1.5  0.5  -0.000000009  -0.000969227  -0.000124303   0.000000016
                         0.000000001   0.002173014   0.003411246  -0.000000002

   25    8.1  1.5  0.5   0.000000001   0.001906021   0.004713222  -0.000000003
                         0.000000011   0.000850136   0.000171749  -0.000000018

   26    9.1  1.5  0.5  -0.000000004  -0.000000003  -0.000000006   0.000000007
                         0.001770628  -0.000000003  -0.000000003  -0.000828289

   27   10.1  1.5  0.5  -0.000000003  -0.002024343   0.000051133   0.000000007
                        -0.000000001   0.004538551  -0.001402881   0.000000002

   28   11.1  1.5  0.5  -0.000000251  -0.000000205  -0.000000353   0.000000388
                         0.409302784  -0.000000096  -0.000000042   0.134433272

   29   12.1  1.5  0.5  -0.160219956  -0.000000246  -0.000000142  -0.341223863
                         0.000000507   0.000000407   0.000000802  -0.000000858

   30   13.1  1.5  0.5  -0.000001136  -0.000000919  -0.000001744   0.000001877
                         0.260262819  -0.000000521  -0.000000284  -0.379975564

   31   14.1  1.5  0.5   0.000000028   0.416360880  -0.038585208  -0.000000080
                         0.000000469   0.185710413  -0.001407029  -0.000000759

   32   15.1  1.5  0.5   0.000000219   0.022334161   0.002855163  -0.000000365
                        -0.000000021  -0.050073392  -0.078354092   0.000000046

   33   16.1  1.5  0.5  -0.000001065  -0.108927436  -0.013968865   0.000001780
                         0.000000101   0.244216308   0.383346701  -0.000000221

   34   17.1  1.5  0.5  -0.000000009  -0.121773982   0.011375270   0.000000024
                        -0.000000138  -0.054315133   0.000414804   0.000000223

   35    1.1  1.5 -0.5   0.003509210  -0.000000002  -0.000000001   0.000297456
                         0.000000004   0.000000003   0.000000006  -0.000000006

   36    2.1  1.5 -0.5   0.000000002   0.000000002   0.000000003  -0.000000004
                        -0.000538993   0.000000001   0.000000000   0.000775072

   37    3.1  1.5 -0.5  -0.000000006   0.000336648  -0.000120114   0.000000010
                         0.000000001  -0.000754745   0.003296098  -0.000000001

   38    4.1  1.5 -0.5   0.000000008   0.001736331   0.000053213  -0.000000013
                        -0.000000001  -0.003892845  -0.001460508   0.000000002

   39    5.1  1.5 -0.5   0.000000000  -0.001309632   0.003052384  -0.000000001
                         0.000000004  -0.000584145   0.000111234  -0.000000007

   40    6.1  1.5 -0.5   0.002399664  -0.000000001  -0.000000001   0.000204696
                         0.000000003   0.000000002   0.000000004  -0.000000005

   41    7.1  1.5 -0.5   0.000000010   0.000000008   0.000000016  -0.000000017
                        -0.002379368   0.000000005   0.000000002   0.003413510

   42    8.1  1.5 -0.5   0.002087019  -0.000000006  -0.000000003  -0.004716350
                         0.000000013   0.000000010   0.000000018  -0.000000021

   43    9.1  1.5 -0.5  -0.000000004  -0.000721262  -0.000030159   0.000000006
                         0.000000002   0.001617066   0.000827739  -0.000000003

   44   10.1  1.5 -0.5   0.000000003   0.000000003   0.000000007  -0.000000006
                        -0.004969548   0.000000000  -0.000000001  -0.001403812

   45   11.1  1.5 -0.5  -0.000000226  -0.166729303   0.004896452   0.000000354
                         0.000000005   0.373804907  -0.134344071  -0.000000029

   46   12.1  1.5 -0.5  -0.000000058   0.146324205  -0.340997517   0.000000113
                        -0.000000472   0.065266079  -0.012426529   0.000000807

   47   13.1  1.5 -0.5  -0.000001051  -0.106017049  -0.013836849   0.000001753
                         0.000000101   0.237691229   0.379723545  -0.000000220

   48   14.1  1.5 -0.5   0.455899923  -0.000000217  -0.000000107   0.038610853
                         0.000000514   0.000000417   0.000000756  -0.000000821

   49   15.1  1.5 -0.5  -0.000000236  -0.000000191  -0.000000363   0.000000390
                         0.054828454  -0.000000109  -0.000000059  -0.078406094

   50   16.1  1.5 -0.5   0.000001153   0.000000932   0.000001770  -0.000001904
                        -0.267407538   0.000000526   0.000000285   0.383601124

   51   17.1  1.5 -0.5  -0.133338053   0.000000064   0.000000032  -0.011382830
                        -0.000000150  -0.000000122  -0.000000222   0.000000241

   52    1.1  1.5 -1.5   0.000000000   0.002503007  -0.001688072  -0.000000000
                         0.000000000   0.001116425  -0.000061520  -0.000000000

   53    2.1  1.5 -1.5  -0.000000005   0.000980430  -0.000146120   0.000000008
                         0.000000001  -0.002198095   0.004009655  -0.000000001

   54    3.1  1.5 -1.5   0.000000007   0.000000006   0.000000011  -0.000000012
                        -0.002928771   0.000000003   0.000000001   0.001615068

   55    4.1  1.5 -1.5  -0.000000001  -0.000000001  -0.000000002   0.000000002
                        -0.001073896  -0.000000000  -0.000000000  -0.001143515

   56    5.1  1.5 -1.5  -0.003053026   0.000000003   0.000000001   0.001432945
                        -0.000000007  -0.000000006  -0.000000011   0.000000012

   57    6.1  1.5 -1.5   0.000000001  -0.000534226   0.004074933  -0.000000002
                         0.000000007  -0.000238291   0.000148495  -0.000000012

   58    7.1  1.5 -1.5   0.000000006   0.000584987   0.000066948  -0.000000009
                        -0.000000001  -0.001311546  -0.001837265   0.000000002

   59    8.1  1.5 -1.5  -0.000000000  -0.002792267  -0.001437447   0.000000001
                        -0.000000005  -0.001245438  -0.000052376   0.000000009

   60    9.1  1.5 -1.5  -0.000000007  -0.000000006  -0.000000014   0.000000013
                        -0.002481253  -0.000000003  -0.000000001  -0.005291776

   61   10.1  1.5 -1.5  -0.000000008  -0.001246898  -0.000052091   0.000000012
                         0.000000002   0.002795541   0.001429669  -0.000000003

   62   11.1  1.5 -1.5  -0.000000472  -0.000000383  -0.000000705   0.000000763
                         0.311968200  -0.000000204  -0.000000105  -0.031110481

   63   12.1  1.5 -1.5   0.341183101  -0.000000347  -0.000000183  -0.160114416
                         0.000000781   0.000000632   0.000001184  -0.000001276

   64   13.1  1.5 -1.5   0.000000662   0.000000535   0.000001016  -0.000001092
                        -0.155342396   0.000000301   0.000000163   0.218912131

   65   14.1  1.5 -1.5   0.000000014   0.247245862  -0.037872327  -0.000000041
                         0.000000249   0.110279683  -0.001380663  -0.000000402

   66   15.1  1.5 -1.5  -0.000000747   0.072833106  -0.017959717   0.000001268
                         0.000000090  -0.163288629   0.492837321  -0.000000177

   67   16.1  1.5 -1.5   0.000000312   0.104847106   0.000083151  -0.000000509
                        -0.000000022  -0.235066282  -0.002296665   0.000000056

   68   17.1  1.5 -1.5  -0.000000092   0.143717624  -0.491836030   0.000000181
                        -0.000000771   0.064103807  -0.017923184   0.000001306

   69    1.1  0.5  0.5  -0.000000001   0.000000254   0.000000015  -0.000000000
                         0.000000000  -0.000000564  -0.000000400  -0.000000001

   70    2.1  0.5  0.5   0.000000001   0.000000292   0.000000053  -0.000000001
                         0.000000000   0.000000136   0.000000006   0.000000000

   71    3.1  0.5  0.5   0.000000450  -0.000000002   0.000000000  -0.000000434
                         0.000000051  -0.000000001  -0.000000001  -0.000000001

   72    4.1  0.5  0.5  -0.000000018  -0.000000000   0.000000000   0.000000018
                         0.000001242  -0.000000001  -0.000000001  -0.000000043

   73    5.1  0.5  0.5   0.000000001   0.000001605  -0.000002591  -0.000000001
                        -0.000000000   0.000000716  -0.000000094  -0.000000001

   74    6.1  0.5  0.5   0.000000001  -0.000000413  -0.000000050  -0.000000001
                         0.000000001   0.000000924   0.000001402  -0.000000000

   75    7.1  0.5  0.5   0.000000000   0.000000001  -0.000000001  -0.000000000
                         0.000001991   0.000000000   0.000000000   0.000000321

   76    8.1  0.5  0.5  -0.015884918   0.000301519   0.000358440   0.040109307
                        -0.000003424  -0.000061287   0.000028068  -0.000006893

   77    9.1  0.5  0.5   0.000164910   0.022748687   0.035360591  -0.000408073
                         0.000008081   0.009551779   0.001334625   0.000016822

   78   10.1  0.5  0.5  -0.000061588  -0.017214233   0.000581428   0.000162707
                         0.000001078   0.039362357  -0.003625573   0.000002277

   79   11.1  0.5  0.5   0.000002877   0.000008790   0.000015266  -0.000007332
                        -0.018365279   0.000006445   0.000000347  -0.039086593

   80   12.1  0.5  0.5   0.040149228  -0.000000559  -0.000002551   0.015876939
                         0.000000016  -0.000003096   0.000000155  -0.000000036

   81    1.1  0.5 -0.5  -0.000000003  -0.000000000   0.000000001   0.000000001
                        -0.000000618  -0.000000001  -0.000000001   0.000000400

   82    2.1  0.5 -0.5  -0.000000322   0.000000001   0.000000001   0.000000054
                         0.000000005   0.000000000   0.000000000  -0.000000004

   83    3.1  0.5 -0.5   0.000000002   0.000000431   0.000000434   0.000000000
                        -0.000000000   0.000000136   0.000000014   0.000000001

   84    4.1  0.5 -0.5   0.000000001   0.000000489  -0.000000016   0.000000000
                        -0.000000001  -0.000001141  -0.000000044   0.000000001

   85    5.1  0.5 -0.5  -0.000001757   0.000000001   0.000000001  -0.000002592
                         0.000000001   0.000000000  -0.000000001  -0.000000000

   86    6.1  0.5 -0.5   0.000000001   0.000000001   0.000000001   0.000000001
                         0.000001012  -0.000000001  -0.000000000  -0.000001403

   87    7.1  0.5 -0.5  -0.000000001   0.000000811  -0.000000012  -0.000000001
                        -0.000000000  -0.000001819   0.000000321  -0.000000000

   88    8.1  0.5 -0.5  -0.000250403  -0.014508646  -0.040082446   0.000359224
                        -0.000178796  -0.006467596  -0.001467671  -0.000014994

   89    9.1  0.5 -0.5  -0.024666659   0.000153900   0.000407190   0.035385738
                        -0.000543307   0.000059796   0.000031673  -0.000045906

   90   10.1  0.5 -0.5  -0.000312982  -0.000055808  -0.000162682   0.000448998
                         0.042960761  -0.000026072  -0.000003650   0.003644344

   91   11.1  0.5 -0.5  -0.000010653  -0.007478471   0.001430862   0.000015268
                         0.000002305   0.016773669  -0.039060395   0.000000209

   92   12.1  0.5 -0.5   0.000001772   0.036667176  -0.015866404  -0.000002544
                        -0.000002600   0.016354778  -0.000578274  -0.000000248


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%  32.038%   0.234%   0.011%   0.008%   0.287%   0.000%   0.005%   1.788%   0.000%
    2    2.1  1.5  1.5   0.000%  26.686%   0.051%   0.002%   0.527%  19.343%   0.000%   1.186%   1.639%   0.000%
    3    3.1  1.5  1.5   0.073%   0.000%   1.378%  29.120%   1.338%   0.036%   2.916%   0.000%   0.000%   0.608%
    4    4.1  1.5  1.5   0.449%   0.000%   0.194%   4.108%   6.538%   0.178%  11.901%   0.000%   0.000%   0.685%
    5    5.1  1.5  1.5   0.258%   0.000%   1.205%  25.454%   0.601%   0.016%   2.809%   0.000%   0.000%   5.370%
    6    6.1  1.5  1.5   0.000%   3.949%   0.000%   0.000%   0.593%  21.759%   0.000%  11.783%   4.923%   0.000%
    7    7.1  1.5  1.5   0.000%   3.692%   0.244%   0.012%   0.287%  10.519%   0.000%   8.755%   4.440%   0.000%
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
   18    1.1  1.5  0.5   2.857%   0.000%   0.702%  14.831%   6.790%   0.185%   6.813%   0.000%   0.000%   4.887%
   19    2.1  1.5  0.5   2.571%   0.000%   0.691%  14.602%   0.736%   0.020%   0.504%   0.000%   0.000%   2.876%
   20    3.1  1.5  0.5   0.000%  15.335%   0.304%   0.014%   0.473%  17.352%   0.000%   0.032%   2.456%   0.000%
   21    4.1  1.5  0.5   0.000%   1.783%   1.978%   0.094%   0.010%   0.370%   0.000%   1.143%  41.988%   0.000%
   22    5.1  1.5  0.5   0.000%   9.772%   0.804%   0.038%   0.009%   0.349%   0.000%  24.339%   0.403%   0.000%
   23    6.1  1.5  0.5   0.111%   0.000%   0.172%   3.624%   1.583%   0.043%  17.955%   0.000%   0.000%   4.926%
   24    7.1  1.5  0.5   0.425%   0.000%   0.006%   0.127%   9.783%   0.267%   9.858%   0.000%   0.000%  23.012%
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
   35    1.1  1.5 -0.5   0.000%   2.857%  14.831%   0.702%   0.185%   6.790%   0.000%   6.813%   4.887%   0.000%
   36    2.1  1.5 -0.5   0.000%   2.571%  14.602%   0.691%   0.020%   0.736%   0.000%   0.504%   2.876%   0.000%
   37    3.1  1.5 -0.5  15.335%   0.000%   0.014%   0.304%  17.352%   0.473%   0.032%   0.000%   0.000%   2.456%
   38    4.1  1.5 -0.5   1.783%   0.000%   0.094%   1.978%   0.370%   0.010%   1.143%   0.000%   0.000%  41.988%
   39    5.1  1.5 -0.5   9.772%   0.000%   0.038%   0.804%   0.349%   0.009%  24.339%   0.000%   0.000%   0.403%
   40    6.1  1.5 -0.5   0.000%   0.111%   3.624%   0.172%   0.043%   1.583%   0.000%  17.955%   4.926%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.425%   0.127%   0.006%   0.267%   9.783%   0.000%   9.858%  23.012%   0.000%
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
   52    1.1  1.5 -1.5  32.038%   0.000%   0.011%   0.234%   0.287%   0.008%   0.005%   0.000%   0.000%   1.788%
   53    2.1  1.5 -1.5  26.686%   0.000%   0.002%   0.051%  19.343%   0.527%   1.186%   0.000%   0.000%   1.639%
   54    3.1  1.5 -1.5   0.000%   0.073%  29.120%   1.378%   0.036%   1.338%   0.000%   2.916%   0.608%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.449%   4.108%   0.194%   0.178%   6.538%   0.000%  11.901%   0.685%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.258%  25.454%   1.205%   0.016%   0.601%   0.000%   2.809%   5.370%   0.000%
   57    6.1  1.5 -1.5   3.949%   0.000%   0.000%   0.000%  21.759%   0.593%  11.783%   0.000%   0.000%   4.923%
   58    7.1  1.5 -1.5   3.692%   0.000%   0.012%   0.244%  10.519%   0.287%   8.755%   0.000%   0.000%   4.440%
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
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5  17.738%   0.043%   0.002%  10.140%   0.118%   0.000%   1.613%   0.001%   2.170%   0.001%
    2    2.1  1.5  1.5   0.243%   0.001%   0.000%   0.201%   1.287%   0.005%   4.655%   0.003%   6.297%   0.003%
    3    3.1  1.5  1.5   0.035%  14.364%   1.494%   0.000%   0.048%  11.986%   0.000%   0.032%   0.002%   4.448%
    4    4.1  1.5  1.5   0.000%   0.001%   0.183%   0.000%   0.000%   0.048%   0.025%  45.318%   0.003%   5.969%
    5    5.1  1.5  1.5   0.001%   0.543%  25.316%   0.006%   0.006%   1.556%   0.000%   0.146%   0.003%   5.952%
    6    6.1  1.5  1.5   9.622%   0.023%   0.001%   3.790%   0.002%   0.000%   2.869%   0.002%   1.032%   0.000%
    7    7.1  1.5  1.5   1.813%   0.004%   0.000%   1.243%  36.358%   0.147%   0.002%   0.000%  12.370%   0.006%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.004%   1.562%  23.653%   0.006%   0.001%   0.138%   0.000%   0.135%   0.007%  15.327%
   19    2.1  1.5  0.5   0.099%  40.397%   7.196%   0.002%   0.002%   0.555%   0.000%   0.509%   0.005%  11.268%
   20    3.1  1.5  0.5   5.673%   0.014%   0.000%   0.293%   0.915%   0.004%  20.283%   0.011%  16.913%   0.008%
   21    4.1  1.5  0.5   1.024%   0.002%   0.001%   2.811%   5.005%   0.020%   0.712%   0.000%   2.574%   0.001%
   22    5.1  1.5  0.5   2.048%   0.005%   0.000%   1.208%   4.980%   0.020%  19.304%   0.011%   5.123%   0.002%
   23    6.1  1.5  0.5   0.003%   1.191%  11.185%   0.003%   0.103%  25.479%   0.000%   0.881%   0.002%   3.420%
   24    7.1  1.5  0.5   0.000%   0.062%   7.782%   0.002%   0.031%   7.702%   0.000%   0.005%   0.002%   4.373%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   1.562%   0.004%   0.006%  23.653%   0.138%   0.001%   0.135%   0.000%  15.327%   0.007%
   36    2.1  1.5 -0.5  40.397%   0.099%   0.002%   7.196%   0.555%   0.002%   0.509%   0.000%  11.268%   0.005%
   37    3.1  1.5 -0.5   0.014%   5.673%   0.293%   0.000%   0.004%   0.915%   0.011%  20.283%   0.008%  16.913%
   38    4.1  1.5 -0.5   0.002%   1.024%   2.811%   0.001%   0.020%   5.005%   0.000%   0.712%   0.001%   2.574%
   39    5.1  1.5 -0.5   0.005%   2.048%   1.208%   0.000%   0.020%   4.980%   0.011%  19.304%   0.002%   5.123%
   40    6.1  1.5 -0.5   1.191%   0.003%   0.003%  11.185%  25.479%   0.103%   0.881%   0.000%   3.420%   0.002%
   41    7.1  1.5 -0.5   0.062%   0.000%   0.002%   7.782%   7.702%   0.031%   0.005%   0.000%   4.373%   0.002%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.043%  17.738%  10.140%   0.002%   0.000%   0.118%   0.001%   1.613%   0.001%   2.170%
   53    2.1  1.5 -1.5   0.001%   0.243%   0.201%   0.000%   0.005%   1.287%   0.003%   4.655%   0.003%   6.297%
   54    3.1  1.5 -1.5  14.364%   0.035%   0.000%   1.494%  11.986%   0.048%   0.032%   0.000%   4.448%   0.002%
   55    4.1  1.5 -1.5   0.001%   0.000%   0.000%   0.183%   0.048%   0.000%  45.318%   0.025%   5.969%   0.003%
   56    5.1  1.5 -1.5   0.543%   0.001%   0.006%  25.316%   1.556%   0.006%   0.146%   0.000%   5.952%   0.003%
   57    6.1  1.5 -1.5   0.023%   9.622%   3.790%   0.001%   0.000%   0.002%   0.002%   2.869%   0.000%   1.032%
   58    7.1  1.5 -1.5   0.004%   1.813%   1.243%   0.000%   0.147%  36.358%   0.000%   0.002%   0.006%  12.370%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.001%   0.381%   0.119%   0.000%   0.004%   0.953%   0.000%   0.533%   0.000%   0.153%
   70    2.1  0.5  0.5   0.003%   1.251%   0.422%   0.000%   0.000%   0.029%   0.000%   0.284%   0.000%   0.103%
   71    3.1  0.5  0.5   0.823%   0.002%   0.000%   0.069%   0.549%   0.002%   0.545%   0.000%   0.212%   0.000%
   72    4.1  0.5  0.5   0.162%   0.000%   0.000%   0.463%   1.351%   0.005%   0.008%   0.000%   0.110%   0.000%
   73    5.1  0.5  0.5   0.000%   0.005%   0.713%   0.000%   0.001%   0.196%   0.001%   1.076%   0.000%   0.349%
   74    6.1  0.5  0.5   0.000%   0.002%   1.358%   0.000%   0.000%   0.021%   0.000%   0.609%   0.000%   0.106%
   75    7.1  0.5  0.5   0.850%   0.002%   0.000%   0.339%   0.372%   0.002%   0.426%   0.000%   0.022%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.510%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.410%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.678%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.381%   0.001%   0.000%   0.119%   0.953%   0.004%   0.533%   0.000%   0.153%   0.000%
   82    2.1  0.5 -0.5   1.251%   0.003%   0.000%   0.422%   0.029%   0.000%   0.284%   0.000%   0.103%   0.000%
   83    3.1  0.5 -0.5   0.002%   0.823%   0.069%   0.000%   0.002%   0.549%   0.000%   0.545%   0.000%   0.212%
   84    4.1  0.5 -0.5   0.000%   0.162%   0.463%   0.000%   0.005%   1.351%   0.000%   0.008%   0.000%   0.110%
   85    5.1  0.5 -0.5   0.005%   0.000%   0.000%   0.713%   0.196%   0.001%   1.076%   0.001%   0.349%   0.000%
   86    6.1  0.5 -0.5   0.002%   0.000%   0.000%   1.358%   0.021%   0.000%   0.609%   0.000%   0.106%   0.000%
   87    7.1  0.5 -0.5   0.002%   0.850%   0.339%   0.000%   0.002%   0.372%   0.000%   0.426%   0.000%   0.022%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.510%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.410%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.678%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.000%  19.143%   0.000%   0.000%   0.166%   0.004%   0.000%  12.186%   0.147%   0.000%
    2    2.1  1.5  1.5   0.000%   2.815%   0.090%   6.835%   8.020%   0.197%   0.001%  17.888%   0.002%   0.000%
    3    3.1  1.5  1.5   6.884%   0.000%   9.475%   0.125%   0.215%   8.483%   4.654%   0.000%   0.000%   0.943%
    4    4.1  1.5  1.5   4.962%   0.000%  13.819%   0.181%   0.010%   0.398%   2.536%   0.000%   0.000%   0.145%
    5    5.1  1.5  1.5   8.516%   0.000%   6.296%   0.083%   0.198%   7.790%   5.592%   0.000%   0.000%   0.001%
    6    6.1  1.5  1.5   0.000%   1.545%   0.204%  15.508%  13.872%   0.345%   0.000%   6.033%   0.212%   0.000%
    7    7.1  1.5  1.5   0.000%   0.762%   0.136%  10.290%   6.015%   0.152%   0.000%   0.331%   0.300%   0.000%
    8    8.1  1.5  1.5   0.000%   0.024%   0.000%   0.000%   0.004%   0.000%   0.000%   0.003%   0.000%   0.000%
    9    9.1  1.5  1.5   0.003%   0.000%   0.017%   0.000%   0.000%   0.007%   0.011%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.007%   0.000%   0.002%   0.004%   0.000%   0.000%   0.003%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.072%   0.000%   4.904%   0.064%   0.044%   1.702%  13.062%   0.000%   0.000%   0.001%
   19    2.1  1.5  0.5  12.855%   0.000%   1.498%   0.020%   0.025%   1.006%   0.031%   0.000%   0.000%   0.604%
   20    3.1  1.5  0.5   0.000%   3.038%   0.010%   0.790%   8.137%   0.202%   0.000%   5.469%   0.171%   0.000%
   21    4.1  1.5  0.5   0.000%   8.362%   0.076%   5.748%  11.350%   0.289%   0.000%  12.591%   0.111%   0.000%
   22    5.1  1.5  0.5   0.000%  12.262%   0.045%   3.410%   5.460%   0.135%   0.000%   7.992%   0.111%   0.000%
   23    6.1  1.5  0.5  16.031%   0.000%   3.899%   0.051%   0.021%   0.795%   6.108%   0.000%   0.000%   0.639%
   24    7.1  1.5  0.5   0.034%   0.000%  13.542%   0.178%   0.492%  19.565%   0.613%   0.000%   0.000%   0.097%
   25    8.1  1.5  0.5   0.013%   0.000%   0.004%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.015%   0.000%   0.011%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.028%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    1.1  1.5 -0.5   0.000%   0.072%   0.064%   4.904%   1.702%   0.044%   0.000%  13.062%   0.001%   0.000%
   36    2.1  1.5 -0.5   0.000%  12.855%   0.020%   1.498%   1.006%   0.025%   0.000%   0.031%   0.604%   0.000%
   37    3.1  1.5 -0.5   3.038%   0.000%   0.790%   0.010%   0.202%   8.137%   5.469%   0.000%   0.000%   0.171%
   38    4.1  1.5 -0.5   8.362%   0.000%   5.748%   0.076%   0.289%  11.350%  12.591%   0.000%   0.000%   0.111%
   39    5.1  1.5 -0.5  12.262%   0.000%   3.410%   0.045%   0.135%   5.460%   7.992%   0.000%   0.000%   0.111%
   40    6.1  1.5 -0.5   0.000%  16.031%   0.051%   3.899%   0.795%   0.021%   0.000%   6.108%   0.639%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.034%   0.178%  13.542%  19.565%   0.492%   0.000%   0.613%   0.097%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.013%   0.000%   0.004%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.015%   0.000%   0.011%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.028%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.1  1.5 -1.5  19.143%   0.000%   0.000%   0.000%   0.004%   0.166%  12.186%   0.000%   0.000%   0.147%
   53    2.1  1.5 -1.5   2.815%   0.000%   6.835%   0.090%   0.197%   8.020%  17.888%   0.001%   0.000%   0.002%
   54    3.1  1.5 -1.5   0.000%   6.884%   0.125%   9.475%   8.483%   0.215%   0.000%   4.654%   0.943%   0.000%
   55    4.1  1.5 -1.5   0.000%   4.962%   0.181%  13.819%   0.398%   0.010%   0.000%   2.536%   0.145%   0.000%
   56    5.1  1.5 -1.5   0.000%   8.516%   0.083%   6.296%   7.790%   0.198%   0.000%   5.592%   0.001%   0.000%
   57    6.1  1.5 -1.5   1.545%   0.000%  15.508%   0.204%   0.345%  13.872%   6.033%   0.000%   0.000%   0.212%
   58    7.1  1.5 -1.5   0.762%   0.000%  10.290%   0.136%   0.152%   6.015%   0.331%   0.000%   0.000%   0.300%
   59    8.1  1.5 -1.5   0.024%   0.000%   0.000%   0.000%   0.000%   0.004%   0.003%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.003%   0.000%   0.017%   0.007%   0.000%   0.000%   0.011%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.007%   0.000%   0.002%   0.000%   0.000%   0.004%   0.003%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.009%   0.000%   0.287%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%  47.186%
   70    2.1  0.5  0.5   0.346%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.074%
   71    3.1  0.5  0.5   0.000%   0.002%   0.003%   0.236%   0.000%   0.000%   0.000%   0.000%   2.839%   0.000%
   72    4.1  0.5  0.5   0.000%   0.096%   0.003%   0.243%   0.000%   0.000%   0.000%   0.000%  26.825%   0.000%
   73    5.1  0.5  0.5   0.104%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.508%
   74    6.1  0.5  0.5   0.242%   0.000%   0.103%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.076%
   75    7.1  0.5  0.5   0.000%   0.257%   0.002%   0.171%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   76    8.1  0.5  0.5   0.000%   0.004%   0.007%   0.439%   1.901%   0.044%   0.000%   0.007%   0.000%   0.000%
   77    9.1  0.5  0.5   0.005%   0.000%   0.941%   0.014%   0.044%   1.849%   0.058%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.427%   0.000%   0.122%   0.002%   0.005%   0.225%   1.721%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.211%   0.001%   0.069%   0.783%   0.019%   0.000%   1.147%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.953%   0.000%   0.006%   0.006%   0.000%   0.000%   1.943%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.009%   0.004%   0.287%   0.000%   0.000%   0.000%   0.000%  47.186%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.346%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%  19.074%   0.000%
   83    3.1  0.5 -0.5   0.002%   0.000%   0.236%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   2.839%
   84    4.1  0.5 -0.5   0.096%   0.000%   0.243%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%  26.825%
   85    5.1  0.5 -0.5   0.000%   0.104%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.508%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.242%   0.001%   0.103%   0.000%   0.000%   0.000%   0.000%   0.076%   0.000%
   87    7.1  0.5 -0.5   0.257%   0.000%   0.171%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   88    8.1  0.5 -0.5   0.004%   0.000%   0.439%   0.007%   0.044%   1.901%   0.007%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.005%   0.014%   0.941%   1.849%   0.044%   0.000%   0.058%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.427%   0.002%   0.122%   0.225%   0.005%   0.000%   1.721%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.211%   0.000%   0.069%   0.001%   0.019%   0.783%   1.147%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.953%   0.000%   0.006%   0.000%   0.000%   0.006%   1.943%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.003%   0.000%   0.000%   0.014%   0.000%   0.906%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.158%   0.000%   0.000%   0.063%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.002%   0.063%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.326%   0.806%   0.000%   0.368%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.407%   0.466%   0.000%   0.121%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.031%   0.000%   0.000%   0.166%   0.000%   0.179%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.912%   0.000%   0.000%   0.013%   0.000%   0.203%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.071%   0.068%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.884%   0.001%   0.000%   2.565%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.655%   1.268%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%
   12   12.1  1.5  1.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.004%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.001%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.004%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.003%   0.000%
   16   16.1  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.008%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.003%   0.000%
   18    1.1  1.5  0.5   0.000%   0.078%   0.396%   0.000%   0.446%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.534%   0.332%   0.000%   0.290%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.375%   0.000%   0.000%   0.434%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.188%   0.000%   0.000%   0.002%   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.006%   0.000%   0.000%   0.247%   0.000%   0.631%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.110%   0.390%   0.000%   0.263%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.353%   0.091%   0.000%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.093%   0.000%   0.000%   4.566%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   3.120%   2.251%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.292%   0.002%   0.000%   0.405%
   28   11.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.008%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.009%
   32   15.1  1.5  0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.003%
   34   17.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.078%   0.000%   0.000%   0.396%   0.000%   0.446%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.534%   0.000%   0.000%   0.332%   0.000%   0.290%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.375%   0.434%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.188%   0.002%   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.006%   0.247%   0.000%   0.631%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.110%   0.000%   0.000%   0.390%   0.000%   0.263%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.353%   0.000%   0.000%   0.091%   0.000%   0.022%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.093%   4.566%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.120%   0.002%   0.000%   2.251%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   4.292%   0.405%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.008%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.009%   0.000%
   49   15.1  1.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.003%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.003%   0.014%   0.000%   0.906%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.158%   0.063%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.002%   0.000%   0.000%   0.063%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.326%   0.000%   0.000%   0.806%   0.000%   0.368%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.407%   0.000%   0.000%   0.466%   0.000%   0.121%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.031%   0.166%   0.000%   0.179%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.912%   0.013%   0.000%   0.203%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.071%   0.000%   0.000%   0.068%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.884%   2.565%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.655%   0.001%   0.000%   1.268%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%
   63   12.1  1.5 -1.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.006%   0.004%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.001%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.004%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.003%
   67   16.1  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.008%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.003%
   69    1.1  0.5  0.5   0.000%   0.119%   1.002%   0.000%   6.845%   0.000%  22.524%   0.012%   0.000%   0.997%
   70    2.1  0.5  0.5   0.000%   4.108%  26.055%   0.001%   5.917%   0.000%   1.610%   0.000%   0.000%   0.003%
   71    3.1  0.5  0.5  29.197%   0.001%   0.001%  11.650%   0.000%  11.466%   0.002%   5.275%  16.425%   0.002%
   72    4.1  0.5  0.5  23.132%   0.001%   0.000%   4.357%   0.000%   0.835%   0.009%  17.907%   4.268%   0.000%
   73    5.1  0.5  0.5   0.002%  38.465%   1.566%   0.000%  14.608%   0.000%   1.922%   0.001%   0.002%  22.871%
   74    6.1  0.5  0.5   0.000%   0.535%  50.888%   0.001%   3.642%   0.000%   1.882%   0.001%   0.000%   1.186%
   75    7.1  0.5  0.5   0.950%   0.000%   0.000%   0.989%   0.000%  53.196%   0.004%   6.918%  12.322%   0.001%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%  14.486%   2.871%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.824%   0.007%   0.000%   1.496%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.346%   0.001%   0.002%  16.834%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   6.157%   0.001%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%   3.377%   0.000%
   81    1.1  0.5 -0.5   0.119%   0.000%   0.000%   1.002%   0.000%   6.845%   0.012%  22.524%   0.997%   0.000%
   82    2.1  0.5 -0.5   4.108%   0.000%   0.001%  26.055%   0.000%   5.917%   0.000%   1.610%   0.003%   0.000%
   83    3.1  0.5 -0.5   0.001%  29.197%  11.650%   0.001%  11.466%   0.000%   5.275%   0.002%   0.002%  16.425%
   84    4.1  0.5 -0.5   0.001%  23.132%   4.357%   0.000%   0.835%   0.000%  17.907%   0.009%   0.000%   4.268%
   85    5.1  0.5 -0.5  38.465%   0.002%   0.000%   1.566%   0.000%  14.608%   0.001%   1.922%  22.871%   0.002%
   86    6.1  0.5 -0.5   0.535%   0.000%   0.001%  50.888%   0.000%   3.642%   0.001%   1.882%   1.186%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.950%   0.989%   0.000%  53.196%   0.000%   6.918%   0.004%   0.001%  12.322%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.486%   0.007%   0.000%   2.871%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%  15.824%   1.496%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.346%  16.834%   0.002%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.000%   0.001%   6.157%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%   0.000%   0.000%   3.377%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.013%   0.000%   0.197%   0.000%   0.127%   0.000%   0.009%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.223%   0.000%   0.002%   0.000%   0.103%
    3    3.1  1.5  1.5   0.000%   0.000%   0.237%   0.000%   0.059%   0.000%   0.036%   0.000%   0.418%   0.002%
    4    4.1  1.5  1.5   0.000%   0.000%   0.088%   0.000%   0.308%   0.000%   0.000%   0.000%   0.002%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.193%   0.000%   0.103%   0.000%   0.035%   0.000%   0.402%   0.002%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.181%   0.000%   0.035%   0.000%   0.074%   0.002%   0.328%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.304%   0.000%   0.062%   0.000%   0.008%   0.001%   0.234%
    8    8.1  1.5  1.5   5.976%   0.000%   0.000%   0.063%   0.000%   0.016%   0.036%  28.784%   0.028%   6.063%
    9    9.1  1.5  1.5   0.000%   0.000%   6.987%   0.000%  13.983%   0.000%   0.045%   0.000%   3.980%   0.019%
   10   10.1  1.5  1.5   3.191%   0.000%   0.000%   7.419%   0.000%   2.831%   0.023%  18.612%   0.028%   6.029%
   11   11.1  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.012%   0.000%
   12   12.1  1.5  1.5   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.029%   0.000%
   13   13.1  1.5  1.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%
   14   14.1  1.5  1.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.005%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.017%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.007%
   17   17.1  1.5  1.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.019%
   18    1.1  1.5  0.5   0.000%   0.000%   0.006%   0.000%   0.206%   0.000%   0.111%   0.000%   0.175%   0.001%
   19    2.1  1.5  0.5   0.000%   0.000%   0.071%   0.000%   0.000%   0.000%   0.335%   0.000%   0.038%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.096%   0.000%   0.228%   0.001%   0.174%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.149%   0.000%   0.060%   0.000%   0.056%   0.003%   0.638%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.083%   0.000%   0.013%   0.000%   0.235%   0.000%   0.088%
   23    6.1  1.5  0.5   0.000%   0.000%   0.077%   0.000%   0.037%   0.000%   0.257%   0.000%   0.082%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.108%   0.000%   0.143%   0.000%   0.037%   0.000%   0.740%   0.003%
   25    8.1  1.5  0.5   0.000%   0.346%   0.021%   0.000%  23.076%   0.000%   0.530%   0.001%  15.922%   0.075%
   26    9.1  1.5  0.5   1.300%   0.000%   0.001%  18.367%   0.000%   9.822%   0.004%   3.313%   0.009%   2.020%
   27   10.1  1.5  0.5   0.000%   0.305%  19.635%   0.001%   2.783%   0.000%   1.195%   0.001%   2.841%   0.013%
   28   11.1  1.5  0.5   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.006%
   29   12.1  1.5  0.5   0.009%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.006%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.052%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.017%   0.000%
   32   15.1  1.5  0.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.053%   0.000%
   34   17.1  1.5  0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.206%   0.000%   0.111%   0.001%   0.175%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.071%   0.000%   0.000%   0.000%   0.335%   0.000%   0.038%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.005%   0.000%   0.096%   0.000%   0.228%   0.000%   0.174%   0.001%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.149%   0.000%   0.060%   0.000%   0.056%   0.000%   0.638%   0.003%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.083%   0.000%   0.013%   0.000%   0.235%   0.000%   0.088%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.077%   0.000%   0.037%   0.000%   0.257%   0.000%   0.082%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.108%   0.000%   0.143%   0.000%   0.037%   0.003%   0.740%
   42    8.1  1.5 -0.5   0.346%   0.000%   0.000%   0.021%   0.000%  23.076%   0.001%   0.530%   0.075%  15.922%
   43    9.1  1.5 -0.5   0.000%   1.300%  18.367%   0.001%   9.822%   0.000%   3.313%   0.004%   2.020%   0.009%
   44   10.1  1.5 -0.5   0.305%   0.000%   0.001%  19.635%   0.000%   2.783%   0.001%   1.195%   0.013%   2.841%
   45   11.1  1.5 -0.5   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.006%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.009%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.006%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.052%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.017%
   49   15.1  1.5 -0.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.053%
   51   17.1  1.5 -0.5   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.013%   0.000%   0.197%   0.000%   0.127%   0.000%   0.009%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.029%   0.000%   0.223%   0.000%   0.002%   0.000%   0.103%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.237%   0.000%   0.059%   0.000%   0.036%   0.002%   0.418%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.088%   0.000%   0.308%   0.000%   0.000%   0.000%   0.002%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.193%   0.000%   0.103%   0.000%   0.035%   0.002%   0.402%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.181%   0.000%   0.035%   0.000%   0.074%   0.000%   0.328%   0.002%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.304%   0.000%   0.062%   0.000%   0.008%   0.000%   0.234%   0.001%
   59    8.1  1.5 -1.5   0.000%   5.976%   0.063%   0.000%   0.016%   0.000%  28.784%   0.036%   6.063%   0.028%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   6.987%   0.000%  13.983%   0.000%   0.045%   0.019%   3.980%
   61   10.1  1.5 -1.5   0.000%   3.191%   7.419%   0.000%   2.831%   0.000%  18.612%   0.023%   6.029%   0.028%
   62   11.1  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.012%
   63   12.1  1.5 -1.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.029%
   64   13.1  1.5 -1.5   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%
   65   14.1  1.5 -1.5   0.000%   0.009%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.005%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.017%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.007%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.001%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.019%   0.000%
   69    1.1  0.5  0.5   0.000%   1.352%  12.781%   0.001%   0.083%   0.000%   1.386%   0.002%   0.000%   0.000%
   70    2.1  0.5  0.5   0.001%  23.283%   0.478%   0.000%   0.323%   0.000%  13.420%   0.015%   0.000%   0.000%
   71    3.1  0.5  0.5   3.181%   0.001%   0.000%   2.388%   0.000%   9.257%   0.002%   2.600%   0.000%   0.000%
   72    4.1  0.5  0.5   2.704%   0.000%   0.001%  11.638%   0.000%   1.890%   0.001%   0.720%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.095%   1.926%   0.000%  12.244%   0.000%   0.079%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.001%  21.839%   1.458%   0.000%   0.250%   0.000%  12.516%   0.015%   0.000%   0.000%
   75    7.1  0.5  0.5   5.655%   0.000%   0.000%   2.588%   0.000%   9.202%   0.003%   2.458%   0.000%   0.000%
   76    8.1  0.5  0.5   1.087%   0.000%   0.001%   6.154%   0.000%   0.571%   0.001%   0.893%   0.082%  21.328%
   77    9.1  0.5  0.5   0.000%   1.126%   6.330%   0.001%   0.900%   0.000%   0.387%   0.000%  23.452%   0.087%
   78   10.1  0.5  0.5   0.000%   1.275%   0.008%   0.000%   7.449%   0.000%   0.171%   0.000%   7.724%   0.041%
   79   11.1  0.5  0.5  12.241%   0.000%   0.000%   0.007%   0.000%   1.686%   0.007%   5.903%   0.020%   4.243%
   80   12.1  0.5  0.5  14.981%   0.000%   0.000%   0.192%   0.000%   2.081%   0.007%   5.318%   0.011%   2.292%
   81    1.1  0.5 -0.5   1.352%   0.000%   0.001%  12.781%   0.000%   0.083%   0.002%   1.386%   0.000%   0.000%
   82    2.1  0.5 -0.5  23.283%   0.001%   0.000%   0.478%   0.000%   0.323%   0.015%  13.420%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.001%   3.181%   2.388%   0.000%   9.257%   0.000%   2.600%   0.002%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   2.704%  11.638%   0.001%   1.890%   0.000%   0.720%   0.001%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.095%   0.000%   0.000%   1.926%   0.000%  12.244%   0.000%   0.079%   0.000%   0.000%
   86    6.1  0.5 -0.5  21.839%   0.001%   0.000%   1.458%   0.000%   0.250%   0.015%  12.516%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   5.655%   2.588%   0.000%   9.202%   0.000%   2.458%   0.003%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   1.087%   6.154%   0.001%   0.571%   0.000%   0.893%   0.001%  21.328%   0.082%
   89    9.1  0.5 -0.5   1.126%   0.000%   0.001%   6.330%   0.000%   0.900%   0.000%   0.387%   0.087%  23.452%
   90   10.1  0.5 -0.5   1.275%   0.000%   0.000%   0.008%   0.000%   7.449%   0.000%   0.171%   0.041%   7.724%
   91   11.1  0.5 -0.5   0.000%  12.241%   0.007%   0.000%   1.686%   0.000%   5.903%   0.007%   4.243%   0.020%
   92   12.1  0.5 -0.5   0.000%  14.981%   0.192%   0.000%   2.081%   0.000%   5.318%   0.007%   2.292%   0.011%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.438%   0.001%   0.000%   0.188%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.001%   0.840%   0.058%   0.001%   0.341%   0.001%   0.000%   0.000%   0.000%   0.054%
    3    3.1  1.5  1.5   0.064%   0.000%   0.002%   0.167%   0.000%   0.036%   0.000%   0.000%   0.128%   0.000%
    4    4.1  1.5  1.5   0.105%   0.000%   0.000%   0.001%   0.000%   0.044%   0.000%   0.000%   0.128%   0.000%
    5    5.1  1.5  1.5   0.088%   0.000%   0.002%   0.159%   0.000%   0.047%   0.000%   0.000%   0.092%   0.000%
    6    6.1  1.5  1.5   0.000%   0.403%   0.155%   0.002%   0.153%   0.000%   0.000%   0.000%   0.000%   0.148%
    7    7.1  1.5  1.5   0.000%   0.000%   0.098%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.180%
    8    8.1  1.5  1.5   0.001%   1.335%   9.566%   0.128%   2.833%   0.006%   0.005%  25.014%   0.000%   0.201%
    9    9.1  1.5  1.5  18.203%   0.021%   0.114%   8.411%   0.061%  29.200%   0.000%   0.000%   7.910%   0.016%
   10   10.1  1.5  1.5   0.001%   1.338%   9.626%   0.129%   2.828%   0.006%   0.005%  25.000%   0.010%   4.315%
   11   11.1  1.5  1.5   0.012%   0.000%   0.000%   0.010%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.006%   0.000%   0.000%   0.025%   0.000%   0.007%   0.000%   0.000%   0.020%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.016%   0.000%   0.000%   0.000%   0.000%   0.055%   0.000%
   14   14.1  1.5  1.5   0.000%   0.013%   0.004%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.003%
   15   15.1  1.5  1.5   0.000%   0.051%   0.019%   0.000%   0.044%   0.000%   0.000%   0.000%   0.000%   0.032%
   16   16.1  1.5  1.5   0.000%   0.010%   0.005%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.018%
   17   17.1  1.5  1.5   0.000%   0.047%   0.021%   0.000%   0.040%   0.000%   0.000%   0.000%   0.000%   0.029%
   18    1.1  1.5  0.5   0.360%   0.000%   0.001%   0.062%   0.000%   0.165%   0.000%   0.000%   0.019%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.016%   0.000%   0.000%   0.000%   0.000%   0.062%   0.000%
   20    3.1  1.5  0.5   0.000%   0.325%   0.085%   0.001%   0.127%   0.000%   0.000%   0.000%   0.000%   0.001%
   21    4.1  1.5  0.5   0.000%   0.236%   0.249%   0.003%   0.119%   0.000%   0.000%   0.000%   0.000%   0.073%
   22    5.1  1.5  0.5   0.000%   0.403%   0.046%   0.001%   0.162%   0.000%   0.000%   0.000%   0.000%   0.082%
   23    6.1  1.5  0.5   0.168%   0.000%   0.000%   0.029%   0.000%   0.077%   0.000%   0.000%   0.087%   0.000%
   24    7.1  1.5  0.5   0.005%   0.000%   0.004%   0.313%   0.000%   0.000%   0.000%   0.000%   0.118%   0.000%
   25    8.1  1.5  0.5   1.295%   0.002%   0.372%  27.636%   0.003%   1.359%   8.311%   0.002%   1.056%   0.002%
   26    9.1  1.5  0.5   0.001%   0.451%   3.210%   0.043%   0.928%   0.002%   0.007%  33.324%   0.017%   7.933%
   27   10.1  1.5  0.5  14.441%   0.016%   0.049%   3.650%   0.054%  25.579%   8.330%   0.002%  14.806%   0.031%
   28   11.1  1.5  0.5   0.000%   0.040%   0.004%   0.000%   0.038%   0.000%   0.000%   0.000%   0.000%   0.007%
   29   12.1  1.5  0.5   0.000%   0.029%   0.007%   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.018%
   30   13.1  1.5  0.5   0.000%   0.000%   0.048%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%
   31   14.1  1.5  0.5   0.035%   0.000%   0.000%   0.013%   0.000%   0.035%   0.000%   0.000%   0.011%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.001%   0.049%   0.000%   0.000%   0.000%   0.000%   0.037%   0.000%
   34   17.1  1.5  0.5   0.003%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.012%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.360%   0.062%   0.001%   0.165%   0.000%   0.000%   0.000%   0.000%   0.019%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.062%
   37    3.1  1.5 -0.5   0.325%   0.000%   0.001%   0.085%   0.000%   0.127%   0.000%   0.000%   0.001%   0.000%
   38    4.1  1.5 -0.5   0.236%   0.000%   0.003%   0.249%   0.000%   0.119%   0.000%   0.000%   0.073%   0.000%
   39    5.1  1.5 -0.5   0.403%   0.000%   0.001%   0.046%   0.000%   0.162%   0.000%   0.000%   0.082%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.168%   0.029%   0.000%   0.077%   0.000%   0.000%   0.000%   0.000%   0.087%
   41    7.1  1.5 -0.5   0.000%   0.005%   0.313%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.118%
   42    8.1  1.5 -0.5   0.002%   1.295%  27.636%   0.372%   1.359%   0.003%   0.002%   8.311%   0.002%   1.056%
   43    9.1  1.5 -0.5   0.451%   0.001%   0.043%   3.210%   0.002%   0.928%  33.324%   0.007%   7.933%   0.017%
   44   10.1  1.5 -0.5   0.016%  14.441%   3.650%   0.049%  25.579%   0.054%   0.002%   8.330%   0.031%  14.806%
   45   11.1  1.5 -0.5   0.040%   0.000%   0.000%   0.004%   0.000%   0.038%   0.000%   0.000%   0.007%   0.000%
   46   12.1  1.5 -0.5   0.029%   0.000%   0.000%   0.007%   0.000%   0.025%   0.000%   0.000%   0.018%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.001%   0.048%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.035%   0.013%   0.000%   0.035%   0.000%   0.000%   0.000%   0.000%   0.011%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.049%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%
   51   17.1  1.5 -0.5   0.000%   0.003%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.012%
   52    1.1  1.5 -1.5   0.438%   0.000%   0.000%   0.001%   0.000%   0.188%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.840%   0.001%   0.001%   0.058%   0.001%   0.341%   0.000%   0.000%   0.054%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.064%   0.167%   0.002%   0.036%   0.000%   0.000%   0.000%   0.000%   0.128%
   55    4.1  1.5 -1.5   0.000%   0.105%   0.001%   0.000%   0.044%   0.000%   0.000%   0.000%   0.000%   0.128%
   56    5.1  1.5 -1.5   0.000%   0.088%   0.159%   0.002%   0.047%   0.000%   0.000%   0.000%   0.000%   0.092%
   57    6.1  1.5 -1.5   0.403%   0.000%   0.002%   0.155%   0.000%   0.153%   0.000%   0.000%   0.148%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.001%   0.098%   0.000%   0.000%   0.000%   0.000%   0.180%   0.000%
   59    8.1  1.5 -1.5   1.335%   0.001%   0.128%   9.566%   0.006%   2.833%  25.014%   0.005%   0.201%   0.000%
   60    9.1  1.5 -1.5   0.021%  18.203%   8.411%   0.114%  29.200%   0.061%   0.000%   0.000%   0.016%   7.910%
   61   10.1  1.5 -1.5   1.338%   0.001%   0.129%   9.626%   0.006%   2.828%  25.000%   0.005%   4.315%   0.010%
   62   11.1  1.5 -1.5   0.000%   0.012%   0.010%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.006%   0.025%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.020%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.055%
   65   14.1  1.5 -1.5   0.013%   0.000%   0.000%   0.004%   0.000%   0.013%   0.000%   0.000%   0.003%   0.000%
   66   15.1  1.5 -1.5   0.051%   0.000%   0.000%   0.019%   0.000%   0.044%   0.000%   0.000%   0.032%   0.000%
   67   16.1  1.5 -1.5   0.010%   0.000%   0.000%   0.005%   0.000%   0.010%   0.000%   0.000%   0.018%   0.000%
   68   17.1  1.5 -1.5   0.047%   0.000%   0.000%   0.021%   0.000%   0.040%   0.000%   0.000%   0.029%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.765%   0.006%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.221%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   1.001%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   2.029%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.081%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.281%   0.001%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   1.224%
   76    8.1  0.5  0.5   0.002%   2.300%  13.038%   0.187%   0.941%   0.003%   0.000%   0.000%   0.032%  22.714%
   77    9.1  0.5  0.5   0.174%   0.001%   0.191%  13.960%   0.000%   0.014%   0.000%   0.000%  29.707%   0.044%
   78   10.1  0.5  0.5  15.916%   0.017%   0.058%   3.837%   0.023%  10.312%   0.000%   0.000%   2.123%   0.006%
   79   11.1  0.5  0.5   0.022%  19.398%   3.139%   0.042%  10.934%   0.023%   0.000%   0.000%   0.000%   0.032%
   80   12.1  0.5  0.5   0.024%  21.353%   0.915%   0.012%  13.174%   0.028%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   2.765%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.221%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.001%   0.002%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.029%   0.004%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.081%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.281%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.224%   0.003%
   88    8.1  0.5 -0.5   2.300%   0.002%   0.187%  13.038%   0.003%   0.941%   0.000%   0.000%  22.714%   0.032%
   89    9.1  0.5 -0.5   0.001%   0.174%  13.960%   0.191%   0.014%   0.000%   0.000%   0.000%   0.044%  29.707%
   90   10.1  0.5 -0.5   0.017%  15.916%   3.837%   0.058%  10.312%   0.023%   0.000%   0.000%   0.006%   2.123%
   91   11.1  0.5 -0.5  19.398%   0.022%   0.042%   3.139%   0.023%  10.934%   0.000%   0.000%   0.032%   0.000%
   92   12.1  0.5 -0.5  21.353%   0.024%   0.012%   0.915%   0.028%  13.174%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.006%   0.134%   0.000%   0.119%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.006%   0.134%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.077%   0.003%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.165%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.111%   0.005%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.010%   0.000%   0.063%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.004%   0.099%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.004%   0.094%   0.002%  19.650%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   6.255%   0.278%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.195%   4.438%   0.001%  10.995%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.051%   0.002%   0.005%   0.000%  12.861%   1.401%   4.843%   7.208%   0.001%   0.117%
   12   12.1  1.5  1.5   0.024%   0.001%   0.009%   0.000%   0.245%   0.027%  10.078%  14.999%   0.017%   3.693%
   13   13.1  1.5  1.5   0.001%   0.000%   0.004%   0.000%   0.148%   0.016%   5.508%   8.199%   0.044%   9.864%
   14   14.1  1.5  1.5   0.001%   0.022%   0.000%   0.035%   1.142%  10.486%   2.663%   1.789%  11.086%   0.050%
   15   15.1  1.5  1.5   0.000%   0.009%   0.000%   0.000%   0.001%   0.010%   0.143%   0.096%   0.833%   0.004%
   16   16.1  1.5  1.5   0.002%   0.041%   0.000%   0.000%   0.003%   0.023%   2.644%   1.776%  14.955%   0.067%
   17   17.1  1.5  1.5   0.000%   0.009%   0.000%   0.004%   0.000%   0.002%   0.108%   0.073%   0.013%   0.000%
   18    1.1  1.5  0.5   0.149%   0.007%   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.011%   0.000%   0.237%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.004%   0.093%   0.000%   0.153%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.003%   0.067%   0.000%   0.060%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.169%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.005%   0.000%   0.190%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.071%   0.003%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5  13.901%   0.616%   0.760%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.427%   9.664%   0.000%   3.729%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.389%   0.018%   1.105%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.043%   3.272%  30.041%   2.989%   2.008%   1.429%   0.006%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.037%   0.001%   0.006%   2.056%   1.381%  30.698%   0.137%
   30   13.1  1.5  0.5   0.002%   0.034%   0.000%   0.003%   0.279%   2.561%   1.924%   1.293%   2.671%   0.012%
   31   14.1  1.5  0.5   0.033%   0.001%   0.003%   0.000%  33.568%   3.656%   0.000%   0.001%   0.023%   5.105%
   32   15.1  1.5  0.5   0.009%   0.000%   0.056%   0.000%   0.204%   0.022%   8.423%  12.537%   0.000%   0.063%
   33   16.1  1.5  0.5   0.009%   0.000%   0.001%   0.000%   0.007%   0.001%   0.005%   0.007%   0.028%   6.267%
   34   17.1  1.5  0.5   0.001%   0.000%   0.053%   0.000%   0.016%   0.002%   2.913%   4.336%   0.057%  12.762%
   35    1.1  1.5 -0.5   0.007%   0.149%   0.000%   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.011%   0.000%   0.237%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.093%   0.004%   0.153%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.067%   0.003%   0.060%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.169%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.005%   0.000%   0.190%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.003%   0.071%   0.000%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.616%  13.901%   0.000%   0.760%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   9.664%   0.427%   3.729%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.018%   0.389%   0.000%   1.105%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.043%   0.000%  30.041%   3.272%   2.008%   2.989%   0.006%   1.429%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.037%   0.000%   0.006%   0.001%   1.381%   2.056%   0.137%  30.698%
   47   13.1  1.5 -0.5   0.034%   0.002%   0.003%   0.000%   2.561%   0.279%   1.293%   1.924%   0.012%   2.671%
   48   14.1  1.5 -0.5   0.001%   0.033%   0.000%   0.003%   3.656%  33.568%   0.001%   0.000%   5.105%   0.023%
   49   15.1  1.5 -0.5   0.000%   0.009%   0.000%   0.056%   0.022%   0.204%  12.537%   8.423%   0.063%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.009%   0.000%   0.001%   0.001%   0.007%   0.007%   0.005%   6.267%   0.028%
   51   17.1  1.5 -0.5   0.000%   0.001%   0.000%   0.053%   0.002%   0.016%   4.336%   2.913%  12.762%   0.057%
   52    1.1  1.5 -1.5   0.134%   0.006%   0.119%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.134%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.003%   0.077%   0.000%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.007%   0.165%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.005%   0.111%   0.000%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.010%   0.000%   0.063%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.099%   0.004%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.094%   0.004%  19.650%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.278%   6.255%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   4.438%   0.195%  10.995%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.002%   0.051%   0.000%   0.005%   1.401%  12.861%   7.208%   4.843%   0.117%   0.001%
   63   12.1  1.5 -1.5   0.001%   0.024%   0.000%   0.009%   0.027%   0.245%  14.999%  10.078%   3.693%   0.017%
   64   13.1  1.5 -1.5   0.000%   0.001%   0.000%   0.004%   0.016%   0.148%   8.199%   5.508%   9.864%   0.044%
   65   14.1  1.5 -1.5   0.022%   0.001%   0.035%   0.000%  10.486%   1.142%   1.789%   2.663%   0.050%  11.086%
   66   15.1  1.5 -1.5   0.009%   0.000%   0.000%   0.000%   0.010%   0.001%   0.096%   0.143%   0.004%   0.833%
   67   16.1  1.5 -1.5   0.041%   0.002%   0.000%   0.000%   0.023%   0.003%   1.776%   2.644%   0.067%  14.955%
   68   17.1  1.5 -1.5   0.009%   0.000%   0.004%   0.000%   0.002%   0.000%   0.073%   0.108%   0.000%   0.013%
   69    1.1  0.5  0.5   0.290%   0.013%   0.190%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.002%   0.000%   3.040%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.074%   1.675%   0.000%   0.512%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.039%   0.878%   0.000%   0.314%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   3.047%   0.135%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.060%   0.003%   2.920%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.060%   1.341%   0.000%   0.637%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.349%   7.463%   0.001%   2.212%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.774%   0.032%   2.216%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5  27.795%   1.256%   1.530%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.405%   9.176%   0.003%  23.264%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.315%   7.111%   0.003%  25.473%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.013%   0.290%   0.000%   0.190%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.002%   0.000%   3.040%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   1.675%   0.074%   0.512%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.878%   0.039%   0.314%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.135%   3.047%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.003%   0.060%   0.000%   2.920%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   1.341%   0.060%   0.637%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   7.463%   0.349%   2.212%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.032%   0.774%   0.001%   2.216%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   1.256%  27.795%   0.000%   1.530%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   9.176%   0.405%  23.264%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   7.111%   0.315%  25.473%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

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
   11   11.1  1.5  1.5   0.002%   4.095%   0.000%   0.640%  19.306%   0.299%   6.861%   0.001%   0.000%   0.000%
   12   12.1  1.5  1.5   0.003%   5.995%   0.000%   0.685%   0.000%   0.000%   1.139%   0.000%  27.256%   0.064%
   13   13.1  1.5  1.5   0.001%   2.733%   0.000%   1.895%  27.033%   0.418%   8.820%   0.001%   0.031%   0.000%
   14   14.1  1.5  1.5   0.656%   0.000%   0.793%   0.000%   0.023%   1.516%   0.002%  23.065%   0.031%  13.358%
   15   15.1  1.5  1.5  15.856%   0.008%  32.733%   0.000%   0.073%   4.740%   0.000%   0.007%   0.001%   0.389%
   16   16.1  1.5  1.5   4.663%   0.002%   3.555%   0.000%   0.000%   0.005%   0.000%   2.273%   0.019%   8.199%
   17   17.1  1.5  1.5   6.410%   0.003%  42.066%   0.000%   0.055%   3.540%   0.000%   2.665%   0.003%   1.228%
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
   28   11.1  1.5  0.5   0.002%   0.000%   0.552%   0.000%   0.182%  11.730%   0.000%   0.994%   0.003%   1.494%
   29   12.1  1.5  0.5   0.022%   0.000%   1.440%   0.000%   0.363%  23.468%   0.000%   1.753%   0.000%   0.028%
   30   13.1  1.5  0.5  28.522%   0.014%   5.821%   0.000%   0.103%   6.632%   0.001%   5.728%   0.010%   4.327%
   31   14.1  1.5  0.5   0.000%   0.354%   0.000%   0.069%   0.041%   0.001%   1.755%   0.000%  15.435%   0.036%
   32   15.1  1.5  0.5   0.000%   0.416%   0.000%   0.129%   0.333%   0.005%  36.049%   0.003%  13.945%   0.033%
   33   16.1  1.5  0.5   0.014%  27.676%   0.000%   9.614%   0.061%   0.001%   7.896%   0.001%   4.927%   0.011%
   34   17.1  1.5  0.5   0.001%   2.551%   0.000%   0.007%   0.063%   0.001%   0.979%   0.000%   9.141%   0.021%
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
   45   11.1  1.5 -0.5   0.000%   0.002%   0.000%   0.552%  11.730%   0.182%   0.994%   0.000%   1.494%   0.003%
   46   12.1  1.5 -0.5   0.000%   0.022%   0.000%   1.440%  23.468%   0.363%   1.753%   0.000%   0.028%   0.000%
   47   13.1  1.5 -0.5   0.014%  28.522%   0.000%   5.821%   6.632%   0.103%   5.728%   0.001%   4.327%   0.010%
   48   14.1  1.5 -0.5   0.354%   0.000%   0.069%   0.000%   0.001%   0.041%   0.000%   1.755%   0.036%  15.435%
   49   15.1  1.5 -0.5   0.416%   0.000%   0.129%   0.000%   0.005%   0.333%   0.003%  36.049%   0.033%  13.945%
   50   16.1  1.5 -0.5  27.676%   0.014%   9.614%   0.000%   0.001%   0.061%   0.001%   7.896%   0.011%   4.927%
   51   17.1  1.5 -0.5   2.551%   0.001%   0.007%   0.000%   0.001%   0.063%   0.000%   0.979%   0.021%   9.141%
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
   62   11.1  1.5 -1.5   4.095%   0.002%   0.640%   0.000%   0.299%  19.306%   0.001%   6.861%   0.000%   0.000%
   63   12.1  1.5 -1.5   5.995%   0.003%   0.685%   0.000%   0.000%   0.000%   0.000%   1.139%   0.064%  27.256%
   64   13.1  1.5 -1.5   2.733%   0.001%   1.895%   0.000%   0.418%  27.033%   0.001%   8.820%   0.000%   0.031%
   65   14.1  1.5 -1.5   0.000%   0.656%   0.000%   0.793%   1.516%   0.023%  23.065%   0.002%  13.358%   0.031%
   66   15.1  1.5 -1.5   0.008%  15.856%   0.000%  32.733%   4.740%   0.073%   0.007%   0.000%   0.389%   0.001%
   67   16.1  1.5 -1.5   0.002%   4.663%   0.000%   3.555%   0.005%   0.000%   2.273%   0.000%   8.199%   0.019%
   68   17.1  1.5 -1.5   0.003%   6.410%   0.000%  42.066%   3.540%   0.055%   2.665%   0.000%   1.228%   0.003%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.005%   0.000%   0.004%   0.000%   0.004%   0.000%   0.001%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.004%   0.000%   0.001%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.007%   0.000%   0.001%   0.000%
   11   11.1  1.5  1.5   9.331%   0.082%   0.041%  12.632%   0.007%   9.566%   0.011%   0.742%   0.000%   9.732%
   12   12.1  1.5  1.5   0.105%   0.001%   0.059%  18.241%   0.001%   0.836%   0.033%   2.180%   0.000%  11.641%
   13   13.1  1.5  1.5   3.985%   0.035%   0.018%   5.702%   0.005%   5.947%   0.185%  12.089%   0.000%   2.413%
   14   14.1  1.5  1.5   0.016%   1.859%  22.915%   0.074%   0.087%   0.000%   0.787%   0.012%   7.329%   0.000%
   15   15.1  1.5  1.5   0.009%   1.057%   0.149%   0.000%   6.253%   0.005%   9.777%   0.150%   3.197%   0.000%
   16   16.1  1.5  1.5   0.268%  30.539%  10.145%   0.033%   8.212%   0.006%   5.787%   0.089%   6.625%   0.000%
   17   17.1  1.5  1.5   0.002%   0.253%   1.270%   0.004%   9.411%   0.007%   5.916%   0.091%   2.476%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.011%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%   0.000%   0.005%   0.000%   0.002%
   28   11.1  1.5  0.5   0.060%   6.797%  12.257%   0.039%   7.184%   0.005%   0.235%   0.004%  16.753%   0.000%
   29   12.1  1.5  0.5   0.026%   2.946%   2.858%   0.009%   1.424%   0.001%  16.775%   0.257%   2.567%   0.000%
   30   13.1  1.5  0.5   0.000%   0.030%   4.403%   0.014%   9.929%   0.008%   4.275%   0.065%   6.774%   0.000%
   31   14.1  1.5  0.5   0.004%   0.000%   0.001%   0.222%   0.013%  16.807%   0.027%   1.785%   0.000%  20.784%
   32   15.1  1.5  0.5   0.497%   0.004%   0.013%   3.947%   0.011%  14.053%   0.125%   8.177%   0.000%   0.301%
   33   16.1  1.5  0.5   2.895%   0.025%   0.000%   0.013%   0.004%   5.242%   0.200%  13.073%   0.000%   7.151%
   34   17.1  1.5  0.5  38.823%   0.341%   0.015%   4.604%   0.004%   4.648%   0.254%  16.574%   0.000%   1.778%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.003%   0.000%   0.005%   0.000%   0.002%   0.000%
   45   11.1  1.5 -0.5   6.797%   0.060%   0.039%  12.257%   0.005%   7.184%   0.004%   0.235%   0.000%  16.753%
   46   12.1  1.5 -0.5   2.946%   0.026%   0.009%   2.858%   0.001%   1.424%   0.257%  16.775%   0.000%   2.567%
   47   13.1  1.5 -0.5   0.030%   0.000%   0.014%   4.403%   0.008%   9.929%   0.065%   4.275%   0.000%   6.774%
   48   14.1  1.5 -0.5   0.000%   0.004%   0.222%   0.001%  16.807%   0.013%   1.785%   0.027%  20.784%   0.000%
   49   15.1  1.5 -0.5   0.004%   0.497%   3.947%   0.013%  14.053%   0.011%   8.177%   0.125%   0.301%   0.000%
   50   16.1  1.5 -0.5   0.025%   2.895%   0.013%   0.000%   5.242%   0.004%  13.073%   0.200%   7.151%   0.000%
   51   17.1  1.5 -0.5   0.341%  38.823%   4.604%   0.015%   4.648%   0.004%  16.574%   0.254%   1.778%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.004%   0.000%   0.004%   0.000%   0.001%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.004%   0.000%   0.001%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.007%   0.000%   0.001%
   62   11.1  1.5 -1.5   0.082%   9.331%  12.632%   0.041%   9.566%   0.007%   0.742%   0.011%   9.732%   0.000%
   63   12.1  1.5 -1.5   0.001%   0.105%  18.241%   0.059%   0.836%   0.001%   2.180%   0.033%  11.641%   0.000%
   64   13.1  1.5 -1.5   0.035%   3.985%   5.702%   0.018%   5.947%   0.005%  12.089%   0.185%   2.413%   0.000%
   65   14.1  1.5 -1.5   1.859%   0.016%   0.074%  22.915%   0.000%   0.087%   0.012%   0.787%   0.000%   7.329%
   66   15.1  1.5 -1.5   1.057%   0.009%   0.000%   0.149%   0.005%   6.253%   0.150%   9.777%   0.000%   3.197%
   67   16.1  1.5 -1.5  30.539%   0.268%   0.033%  10.145%   0.006%   8.212%   0.089%   5.787%   0.000%   6.625%
   68   17.1  1.5 -1.5   0.253%   0.002%   0.004%   1.270%   0.007%   9.411%   0.091%   5.916%   0.000%   2.476%
   69    1.1  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.032%   0.000%   0.019%   0.000%   0.126%   0.002%   0.025%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.041%   0.000%   0.045%   0.002%   0.090%   0.000%   0.061%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.062%   0.000%   0.096%   0.000%   0.021%   0.000%   0.185%
   79   11.1  0.5  0.5   0.000%   0.000%   0.018%   0.000%   0.138%   0.000%   0.023%   0.000%   0.034%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.145%   0.000%   0.001%   0.000%   0.033%   0.000%   0.161%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.032%   0.000%   0.019%   0.002%   0.126%   0.000%   0.025%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.041%   0.000%   0.045%   0.000%   0.090%   0.002%   0.061%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.062%   0.000%   0.096%   0.000%   0.021%   0.000%   0.185%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.018%   0.000%   0.138%   0.000%   0.023%   0.000%   0.034%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.145%   0.000%   0.001%   0.000%   0.033%   0.000%   0.161%

   Nr   State  S   Sz      91       92

    1    1.1  1.5  1.5   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.002%
    3    3.1  1.5  1.5   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.002%
    7    7.1  1.5  1.5   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%
    9    9.1  1.5  1.5   0.003%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%
   11   11.1  1.5  1.5   0.097%   0.000%
   12   12.1  1.5  1.5   2.564%   0.000%
   13   13.1  1.5  1.5   4.792%   0.000%
   14   14.1  1.5  1.5   0.000%   0.144%
   15   15.1  1.5  1.5   0.000%  24.321%
   16   16.1  1.5  1.5   0.000%   0.001%
   17   17.1  1.5  1.5   0.000%  24.222%
   18    1.1  1.5  0.5   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.001%
   21    4.1  1.5  0.5   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.001%
   23    6.1  1.5  0.5   0.000%   0.000%
   24    7.1  1.5  0.5   0.001%   0.000%
   25    8.1  1.5  0.5   0.002%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   1.807%
   29   12.1  1.5  0.5   0.000%  11.643%
   30   13.1  1.5  0.5   0.000%  14.438%
   31   14.1  1.5  0.5   0.149%   0.000%
   32   15.1  1.5  0.5   0.615%   0.000%
   33   16.1  1.5  0.5  14.715%   0.000%
   34   17.1  1.5  0.5   0.013%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%
   37    3.1  1.5 -0.5   0.001%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%
   39    5.1  1.5 -0.5   0.001%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.001%
   42    8.1  1.5 -0.5   0.000%   0.002%
   43    9.1  1.5 -0.5   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%
   45   11.1  1.5 -0.5   1.807%   0.000%
   46   12.1  1.5 -0.5  11.643%   0.000%
   47   13.1  1.5 -0.5  14.438%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.149%
   49   15.1  1.5 -0.5   0.000%   0.615%
   50   16.1  1.5 -0.5   0.000%  14.715%
   51   17.1  1.5 -0.5   0.000%   0.013%
   52    1.1  1.5 -1.5   0.000%   0.000%
   53    2.1  1.5 -1.5   0.002%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%
   57    6.1  1.5 -1.5   0.002%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.003%
   61   10.1  1.5 -1.5   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.097%
   63   12.1  1.5 -1.5   0.000%   2.564%
   64   13.1  1.5 -1.5   0.000%   4.792%
   65   14.1  1.5 -1.5   0.144%   0.000%
   66   15.1  1.5 -1.5  24.321%   0.000%
   67   16.1  1.5 -1.5   0.001%   0.000%
   68   17.1  1.5 -1.5  24.222%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.161%
   77    9.1  0.5  0.5   0.125%   0.000%
   78   10.1  0.5  0.5   0.001%   0.000%
   79   11.1  0.5  0.5   0.000%   0.153%
   80   12.1  0.5  0.5   0.000%   0.025%
   81    1.1  0.5 -0.5   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%
   88    8.1  0.5 -0.5   0.161%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.125%
   90   10.1  0.5 -0.5   0.000%   0.001%
   91   11.1  0.5 -0.5   0.153%   0.000%
   92   12.1  0.5 -0.5   0.025%   0.000%


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

              2       6      620.12       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      9058.51   7790.00    511.87    751.23      3.92      1.12
 REAL TIME  *      9601.54 SEC
 DISK USED  *       652.22 MB (local),       12.82 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.951590714454

              CI              CI           MULTI
   -109.92115394   -109.89843468   -109.32974875
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
