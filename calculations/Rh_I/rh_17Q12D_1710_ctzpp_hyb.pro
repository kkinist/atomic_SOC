
 Working directory              : /wrk/irikura/molpro.CDZ6rDFxxJ/
 Global scratch directory       : /wrk/irikura/molpro.CDZ6rDFxxJ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CDZ6rDFxxJ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! 4F,4P,4F + 2F,2D
                                                                                 ! Hybrid using opt+MRCI+Q for all terms but (b 4F)
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
  64 bit mpp version                                                                     DATE: 20-Feb-24          TIME: 15:04:57  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  45000 MW

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

     16.777 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     192330.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     192330      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    10862098. AND WROTE       37800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.13 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      190791.  Node maximum:      197199. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.70      1.35
 REAL TIME  *         3.29 SEC
 DISK USED  *        29.10 MB (local),     1002.23 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.358D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.382D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.339D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 5 3 1 7 9111415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.250D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.179D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 9 7 4 5 2
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
   1    3    6    0   -109.31126972    -109.34016912   -0.02889940    0.28048360 0.00187323 0.00000000  0.17E+00      0.33
   2    3    6    0   -109.33921879    -109.33928387   -0.00006508    0.01282398 0.00000413 0.00000000  0.86E-02      0.64
   3   20   40    0   -109.33928399    -109.33928399   -0.00000000    0.00003327 0.00000113 0.00000000  0.27E-04      2.19
   4   20   40    0   -109.33928399    -109.33928399   -0.00000000    0.00000010 0.00000017 0.00000000  0.71E-07      3.79

 CONVERGENCE REACHED!  Final gradient:    0.00000013 ( 0.13E-06)
                       Final energy:   -109.33928399
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.378384834722
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925304
 One electron energy                          -194.13353856
 Two electron energy                            84.75515373
 Virial ratio                                    3.64267598
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.378384833851
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925310
 One electron energy                          -194.13353863
 Two electron energy                            84.75515379
 Virial ratio                                    3.64267598
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.378384832372
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925319
 One electron energy                          -194.13353873
 Two electron energy                            84.75515389
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.378384832315
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925320
 One electron energy                          -194.13353873
 Two electron energy                            84.75515390
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.378384830978
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925325
 One electron energy                          -194.13353879
 Two electron energy                            84.75515396
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.378384830925
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925329
 One electron energy                          -194.13353883
 Two electron energy                            84.75515400
 Virial ratio                                    3.64267596
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.378384830807
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.38925325
 One electron energy                          -194.13353880
 Two electron energy                            84.75515397
 Virial ratio                                    3.64267597
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.324150268574
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.39010794
 One electron energy                          -194.12376034
 Two electron energy                            84.79961007
 Virial ratio                                    3.64131107
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.324150268278
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.39010794
 One electron energy                          -194.12376035
 Two electron energy                            84.79961009
 Virial ratio                                    3.64131107
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.324150266895
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.39010795
 One electron energy                          -194.12376038
 Two electron energy                            84.79961011
 Virial ratio                                    3.64131107
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.304388568654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427136
 One electron energy                          -189.65103128
 Two electron energy                            80.34664271
 Virial ratio                                    3.80668722
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.304388566974
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427129
 One electron energy                          -189.65103122
 Two electron energy                            80.34664265
 Virial ratio                                    3.80668722
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.304388564620
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427120
 One electron energy                          -189.65103112
 Two electron energy                            80.34664255
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.304388564530
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427120
 One electron energy                          -189.65103111
 Two electron energy                            80.34664255
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.304388563160
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427114
 One electron energy                          -189.65103105
 Two electron energy                            80.34664249
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.304388562970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427114
 One electron energy                          -189.65103104
 Two electron energy                            80.34664248
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.304388561983
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.94427111
 One electron energy                          -189.65103101
 Two electron energy                            80.34664245
 Virial ratio                                    3.80668723
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.348375343939
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871252
 One electron energy                          -194.09793025
 Two electron energy                            84.74955491
 Virial ratio                                    3.64326271
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.348375342644
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871259
 One electron energy                          -194.09793031
 Two electron energy                            84.74955497
 Virial ratio                                    3.64326271
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.348375340347
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871268
 One electron energy                          -194.09793041
 Two electron energy                            84.74955507
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.348375340266
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871268
 One electron energy                          -194.09793042
 Two electron energy                            84.74955508
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.348375338483
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871273
 One electron energy                          -194.09793047
 Two electron energy                            84.74955514
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.348375338200
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871274
 One electron energy                          -194.09793049
 Two electron energy                            84.74955515
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.348375338108
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.36871277
 One electron energy                          -194.09793051
 Two electron energy                            84.74955517
 Virial ratio                                    3.64326270
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.329748748144
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030432
 One electron energy                          -194.13438318
 Two electron energy                            84.80463443
 Virial ratio                                    3.64079578
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.329748748063
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030430
 One electron energy                          -194.13438316
 Two electron energy                            84.80463441
 Virial ratio                                    3.64079578
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.329748747708
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030435
 One electron energy                          -194.13438321
 Two electron energy                            84.80463446
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.329748746868
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030438
 One electron energy                          -194.13438324
 Two electron energy                            84.80463449
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.329748746839
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.40030438
 One electron energy                          -194.13438324
 Two electron energy                            84.80463449
 Virial ratio                                    3.64079577
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.937121726193
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     3.999999996612
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     1.102963869959
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     8.875932947248
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     1.123941148833
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     6.062854841067
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     2.897165140410
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999998612238
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.000001506872
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     1.000000000000
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     4.001190446964
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     4.000000001269
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     0.448694304640
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     8.597406594157
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     1.402639987551
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     3.551327187516
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     5.998809551692
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.959999329942
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     3.999999987984
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     0.973203181522
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     8.901704006408
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     1.098299282723
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     3.026786173867
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     6.039962727027
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     0.999999999995
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     3.742630259497
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     0.257316915452
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000005432630
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     3.999995542393
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.063142980600
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     4.000000002936
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     8.909892678793
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     1.993942174680
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     2.006188115271
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     5.936880649827
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     1.089971911094
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.000001387764
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.999998493178
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     1.000000000000
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     3.998809647475
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     3.999999999872
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     8.220095383678
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     0.703670755617
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     3.296400806921
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     1.779916346190
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     6.001190353838
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     4.040107628410
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     4.000000015139
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     8.836979553989
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     1.938937729056
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     2.061043767095
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     1.162992447400
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     5.959929906716
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     1.000000000006
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.978643504865
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     2.021464078933
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     3.999994590454
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     1.000004461168
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     3.999735293207
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     4.000000000452
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     1.987143451247
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     1.130124878072
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     8.869870735896
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     0.000264509106
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     8.012862948496
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.999999999997
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999999950
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>    -0.000000000000
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     3.999999905561
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     3.999999998859
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     3.331210311682
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     2.698922650225
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     7.300959205528
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     6.668756466294
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     0.000000094470
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.999893041648
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     3.999999996877
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     2.189817264488
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     1.159358264537
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     8.840656950182
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     7.810221378733
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     0.000107366258
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     3.999999999999
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     0.278726235638
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     3.721219005615
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     0.999999976916
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     0.999999996439
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 5 6 3 1 1 5 3   2 4 6 1 5 2 3 4 6 5   3 6 2 4 113101415 8  1112 7 9 3 5 6 2 4 1
                                       13101415 81112 7 9 3   5 6 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 2 1 3 2   1 3 9 710 5 4 6 8 2   1 3 7 910 8 5 6 4 2   1 3 9 7 810 5 6 4 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99989    -3.75712     1  1  s    1.00111
    2.1     1.55170    -0.32037     1  1  d1+  1.00402
    3.1     1.55169    -0.32037     1  1  d0   1.00402
    4.1     1.55169    -0.32037     1  1  d2+  1.00402
    5.1     1.55169    -0.32037     1  1  d1-  1.00402
    6.1     1.55169    -0.32037     1  1  d2-  1.00402
    7.1     1.24286    -0.13633     1  2  s    0.97849
    1.2     1.99959    -2.38340     1  1  py   0.99973
    2.2     1.99959    -2.38340     1  1  pz   0.99973
    3.2     1.99959    -2.38340     1  1  px   0.99973
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 22aa22a 222     -0.00000000      0.99999994      0.00002936     -0.00000725      0.00001042      0.00000068     -0.00000875
 22a22aa 222      0.99996685      0.00000001     -0.00000006     -0.00000002     -0.00000035     -0.00813491      0.00000000
 2a22aa2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2aa22 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a22a2a 222      0.00727608     -0.00000061      0.00000655      0.00000187      0.00003851      0.89439754     -0.00000005
 22aa2a2 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 222a2aa 222     -0.00363804      0.00000031     -0.00000328     -0.00000093     -0.00001926     -0.44719877      0.00000002
 2aa22a2 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22a2aa2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222aa2a 222     -0.00000000     -0.00000028      0.26442492      0.00117976     -0.00012288     -0.00000189      0.85444599
 22aaa22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aaa222 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22a2a2a 222      0.00000000      0.00001542     -0.59214478     -0.00256781      0.00000102      0.00000433     -0.22216649
 2aa222a 222      0.00000000      0.00000379     -0.00271466      0.62728539      0.08065762     -0.00000476     -0.00001441
 2a2a22a 222      0.00000000     -0.00000469     -0.00200284      0.45306776      0.77118446     -0.00003414      0.00010516
 2a222aa 222      0.00000000     -0.00002643      0.76119987      0.00326783      0.00012111     -0.00000561     -0.46964238
 2222aaa 222      0.00000000      0.00001125     -0.00269908      0.63342235     -0.63148137      0.00002589     -0.00013011
 222aaa2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a2a2a2 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2aa2a22 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 
 Energy:       -109.37838483   -109.37838483   -109.37838483   -109.37838483   -109.37838483   -109.37838483   -109.37838483

 State:                8               9              10              11              12              13              14
 22aa22a 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a22aa 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a22aa2 222     -0.00000000      0.00000000     -0.00000000     -0.00000053      0.99956241      0.00000656     -0.00001643
 2a2aa22 222     -0.00000000     -0.00000000      0.00000000      0.99956239      0.00000053     -0.00000231      0.00000047
 2a22a2a 222     -0.00000071     -0.00000315      0.44687681     -0.00000000     -0.00000000      0.00000000      0.00000000
 22aa2a2 222     -0.00000000     -0.00000000      0.00010130     -0.00013740     -0.00000111      0.00000011      0.00000117
 222a2aa 222     -0.00000142     -0.00000630      0.89375362     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aa22a2 222      0.00000012      0.00010130      0.00000000      0.00000084     -0.00000138     -0.07932116      0.00011764
 22a2aa2 222      0.00010130     -0.00000012      0.00000000      0.00000223     -0.00001567     -0.00017626     -0.16017020
 222aa2a 222      0.00052644      0.44687652      0.00000315     -0.00000000      0.00000000     -0.00000001      0.00000000
 22aaa22 222     -0.00000012     -0.00010130     -0.00000000      0.00000229     -0.00000618      0.84240181     -0.00093596
 2aaa222 222     -0.00010131      0.00000012     -0.00000000      0.00000054      0.00000778      0.00091251      0.81159805
 22a2a2a 222      0.00091181      0.77401279      0.00000546      0.00000000     -0.00000000     -0.00000001      0.00000000
 2aa222a 222      0.77401279     -0.00091181      0.00000122      0.00000000     -0.00000000     -0.00000000     -0.00000001
 2a2a22a 222     -0.44687652      0.00052644     -0.00000070     -0.00000000     -0.00000000      0.00000000      0.00000001
 2a222aa 222      0.00052644      0.44687651      0.00000315      0.00000000     -0.00000000     -0.00000000      0.00000000
 2222aaa 222     -0.44687651      0.00052644     -0.00000070     -0.00000000      0.00000000      0.00000000      0.00000001
 222aaa2 222      0.00017549     -0.00000021      0.00000000     -0.00000098      0.00001354      0.00062860      0.56105067
 2a2a2a2 222     -0.00000021     -0.00017549     -0.00000000     -0.00000084      0.00000277     -0.53215701      0.00060830
 2aa2a22 222      0.00000000      0.00000000     -0.00020263     -0.00006870     -0.00000056      0.00000005      0.00000059
 
 Energy:       -109.32415027   -109.32415027   -109.32415027   -109.30438857   -109.30438857   -109.30438856   -109.30438856

 State:               15              16              17
 22aa22a 222      0.00000000     -0.00000000     -0.00000000
 22a22aa 222     -0.00000000      0.00000000     -0.00000000
 2a22aa2 222      0.00001481      0.00000214      0.00000125
 2a2aa22 222     -0.00000245     -0.00000115      0.00015361
 2a22a2a 222      0.00000000     -0.00000000      0.00000001
 22aa2a2 222      0.00000047     -0.00000175      0.89403577
 222a2aa 222      0.00000000     -0.00000000      0.00000001
 2aa22a2 222     -0.00020017      0.89051002      0.00000175
 22a2aa2 222      0.87957116      0.00020317     -0.00000025
 222aa2a 222     -0.00000000      0.00000000      0.00000000
 22aaa22 222     -0.00007079      0.29942997      0.00000049
 2aaa222 222      0.37497703      0.00005836     -0.00000126
 22a2a2a 222     -0.00000000      0.00000001     -0.00000000
 2aa222a 222      0.00000001      0.00000000      0.00000000
 2a2a22a 222     -0.00000000     -0.00000000      0.00000000
 2a222aa 222     -0.00000000      0.00000001     -0.00000000
 2222aaa 222     -0.00000001     -0.00000000     -0.00000000
 222aaa2 222     -0.29132758     -0.00008361     -0.00000058
 2a2a2a2 222     -0.00007470      0.34126024      0.00000073
 2aa2a22 222      0.00000024     -0.00000087      0.44701792
 
 Energy:       -109.30438856   -109.30438856   -109.30438856
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 22aa22b 222     -0.00001008      0.81351251     -0.00004538      0.00000891     -0.00001189      0.00000430     -0.00000722
 22a22ab 222      0.81350164      0.00001004      0.00000417     -0.00000600      0.00000630     -0.00000041     -0.00420670
 2a22a2b 222      0.00376259      0.00000651      0.00003571     -0.00004372     -0.00006937      0.00003082      0.72761798
 222aa2b 222     -0.00000082      0.00000684      0.18926842      0.00020795     -0.00014544      0.70258058     -0.00003905
 2a222ab 222     -0.00000350      0.00003719      0.63295301      0.00086325      0.00012307     -0.35890361     -0.00001578
 2a2a22b 222     -0.00000181      0.00000527     -0.00052051      0.35993100      0.63236970      0.00016461      0.00008195
 2222aab 222      0.00000769     -0.00001317     -0.00066013      0.52230608     -0.50659450     -0.00008163     -0.00001692
 22a22ba 222     -0.40675081     -0.00000502     -0.00000208      0.00000300     -0.00000315      0.00000020      0.00210335
 22b22aa 222     -0.40675083     -0.00000502     -0.00000208      0.00000300     -0.00000315      0.00000020      0.00210335
 2aa222b 222      0.00000339     -0.00000456     -0.00068165      0.50935986      0.07261636      0.00004791      0.00003755
 222202a 222      0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 220222a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22ab22a 222      0.00000504     -0.40675624      0.00002269     -0.00000446      0.00000595     -0.00000215      0.00000361
 22ba22a 222      0.00000504     -0.40675627      0.00002269     -0.00000446      0.00000595     -0.00000215      0.00000361
 222220a 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222022a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22a2a2b 222      0.00000249     -0.00002542     -0.47470979     -0.00061846      0.00001292     -0.19842201      0.00003166
 2a22b2a 222     -0.00188130     -0.00000325     -0.00001786      0.00002186      0.00003469     -0.00001541     -0.36380899
 2b22a2a 222     -0.00188129     -0.00000325     -0.00001786      0.00002186      0.00003469     -0.00001541     -0.36380899
 2b222aa 222      0.00000175     -0.00001860     -0.31647650     -0.00043163     -0.00006154      0.17945181      0.00000789
 2a222ba 222      0.00000175     -0.00001860     -0.31647651     -0.00043163     -0.00006154      0.17945181      0.00000789
 2222baa 222     -0.00000384      0.00000658      0.00033007     -0.26115304      0.25329724      0.00004081      0.00000846
 222ab2a 222      0.00000041     -0.00000342     -0.09463420     -0.00010397      0.00007272     -0.35129029      0.00001953
 2b2a22a 222      0.00000091     -0.00000264      0.00026026     -0.17996550     -0.31618485     -0.00008230     -0.00004097
 222ba2a 222      0.00000041     -0.00000342     -0.09463421     -0.00010397      0.00007272     -0.35129029      0.00001953
 2a2b22a 222      0.00000091     -0.00000264      0.00026026     -0.17996550     -0.31618485     -0.00008230     -0.00004097
 2222aba 222     -0.00000384      0.00000658      0.00033007     -0.26115305      0.25329725      0.00004081      0.00000846
 202222a 222     -0.00000000      0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222a2ab 222     -0.00188130     -0.00000325     -0.00001786      0.00002186      0.00003469     -0.00001541     -0.36380899
 22a2b2a 222     -0.00000125      0.00001271      0.23735489      0.00030923     -0.00000646      0.09921100     -0.00001583
 2ba222a 222     -0.00000170      0.00000228      0.00034082     -0.25467992     -0.03630818     -0.00002395     -0.00001877
 22b2a2a 222     -0.00000125      0.00001271      0.23735490      0.00030923     -0.00000646      0.09921101     -0.00001583
 2ab222a 222     -0.00000170      0.00000228      0.00034082     -0.25467994     -0.03630818     -0.00002395     -0.00001877
 222a2ba 222      0.00094065      0.00000163      0.00000893     -0.00001093     -0.00001734      0.00000771      0.18190450
 222b2aa 222      0.00094065      0.00000163      0.00000893     -0.00001093     -0.00001734      0.00000771      0.18190449
 22222a0 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a22220 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2222a20 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a2220 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222a220 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 22022a2 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22a0222 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22a2202 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 220a222 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 222a022 222      0.00000030     -0.02460958      0.00000137     -0.00000027      0.00000036     -0.00000013      0.00000022
 202a222 222      0.00000030     -0.02460958      0.00000137     -0.00000027      0.00000036     -0.00000013      0.00000022
 22220a2 222     -0.02451068     -0.00000013      0.00000081     -0.00000096     -0.00000201      0.00000082      0.01918950
 20222a2 222     -0.02470782     -0.00000047     -0.00000106      0.00000133      0.00000163     -0.00000080     -0.01893499
 2a22022 222     -0.00000021      0.00000028      0.00004124     -0.03081730     -0.00439344     -0.00000290     -0.00000227
 2022a22 222      0.00000015     -0.00000154     -0.02872090     -0.00003742      0.00000078     -0.01200493      0.00000192
 2220a22 222      0.00000011     -0.00000118     -0.01880394     -0.00002652     -0.00000684      0.02480768     -0.00000013
 2a20222 222     -0.00000030      0.00000055      0.00001397     -0.01195825      0.02874039      0.00000573      0.00000202
 2222a02 222     -0.00000003      0.00000041      0.00444349      0.00000781      0.00000723     -0.03081015      0.00000109
 2a22202 222      0.00000020     -0.00000041      0.00000665     -0.00345040     -0.03093711     -0.00000718     -0.00000316
 2a2ba22 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2b2a2a2 222      0.00000023     -0.00000231     -0.04308135     -0.00005613      0.00000117     -0.01800740      0.00000287
 222aba2 222     -0.00000031      0.00000041      0.00006186     -0.04622595     -0.00659015     -0.00000435     -0.00000341
 2a22ba2 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a22ab2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:       -109.34837534   -109.34837534   -109.34837534   -109.34837534   -109.34837534   -109.34837534   -109.34837534

 State:                8               9              10              11              12
 22aa22b 222     -0.00000000      0.00000001      0.00000002      0.00000000      0.00000000
 22a22ab 222     -0.00000002     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2a22a2b 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 222aa2b 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001
 2a222ab 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001
 2a2a22b 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2222aab 222     -0.00000000      0.00000000     -0.00000000      0.00000001      0.00000000
 22a22ba 222      0.52000556     -0.00000072     -0.00000310      0.00000026      0.00000005
 22b22aa 222     -0.52000555      0.00000072      0.00000310     -0.00000026     -0.00000005
 2aa222b 222      0.00000000      0.00000000      0.00000000      0.00000001      0.00000000
 222202a 222      0.00000281     -0.13190359      0.50299820     -0.00005984      0.00002374
 220222a 222      0.00000012     -0.50156106      0.13726724     -0.00008980      0.00003307
 22ab22a 222     -0.00000318     -0.13726724     -0.50156105      0.00001725     -0.00000832
 22ba22a 222      0.00000318      0.13726723      0.50156104     -0.00001725      0.00000832
 222220a 222     -0.00000012      0.50156103     -0.13726723      0.00008980     -0.00003307
 222022a 222     -0.00000012      0.50156101     -0.13726722      0.00008980     -0.00003307
 22a2a2b 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000001
 2a22b2a 222     -0.45033800      0.00000063      0.00000268     -0.00000022     -0.00000004
 2b22a2a 222      0.45033800     -0.00000063     -0.00000268      0.00000022      0.00000004
 2b222aa 222      0.00000004     -0.00002582      0.00001456      0.00060431     -0.45033761
 2a222ba 222     -0.00000004      0.00002582     -0.00001456     -0.00060431      0.45033760
 2222baa 222      0.00000022      0.00007104     -0.00003492     -0.45033760     -0.00060431
 222ab2a 222      0.00000004     -0.00002582      0.00001456      0.00060431     -0.45033760
 2b2a22a 222      0.00000022      0.00007104     -0.00003492     -0.45033759     -0.00060431
 222ba2a 222     -0.00000004      0.00002582     -0.00001456     -0.00060431      0.45033759
 2a2b22a 222     -0.00000022     -0.00007104      0.00003492      0.45033759      0.00060431
 2222aba 222     -0.00000022     -0.00007104      0.00003492      0.45033759      0.00060431
 202222a 222     -0.00000269     -0.36965741     -0.36573098     -0.00002996      0.00000933
 222a2ab 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22a2b2a 222     -0.00000002      0.00001490     -0.00000840     -0.00034890      0.26000255
 2ba222a 222      0.00000013      0.00004101     -0.00002016     -0.26000255     -0.00034890
 22b2a2a 222      0.00000002     -0.00001490      0.00000840      0.00034890     -0.26000255
 2ab222a 222     -0.00000013     -0.00004101      0.00002016      0.26000254      0.00034890
 222a2ba 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 222b2aa 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22222a0 222      0.16317165     -0.00000023     -0.00000097      0.00000008      0.00000001
 2a22220 222      0.00000008      0.00002574     -0.00001265     -0.16317150     -0.00021896
 2222a20 222      0.00000001     -0.00000935      0.00000527      0.00021896     -0.16317150
 22a2220 222      0.00000004     -0.15738399      0.04307285     -0.00002818      0.00001038
 222a220 222     -0.00000100     -0.04307285     -0.15738398      0.00000541     -0.00000261
 22022a2 222     -0.08647420      0.00000012      0.00000052     -0.00000004     -0.00000001
 22a0222 222     -0.00000002      0.08340699     -0.02282683      0.00001493     -0.00000550
 22a2202 222     -0.00000002      0.08340698     -0.02282682      0.00001493     -0.00000550
 220a222 222      0.00000053      0.02282682      0.08340698     -0.00000287      0.00000138
 222a022 222      0.00000036     -0.03292146      0.06878786     -0.00001053      0.00000410
 202a222 222      0.00000034      0.06336151      0.04243713      0.00000671     -0.00000225
 22220a2 222     -0.05765760      0.00000008      0.00000034     -0.00000003     -0.00000001
 20222a2 222     -0.05765760      0.00000008      0.00000034     -0.00000003     -0.00000001
 2a22022 222     -0.00000003     -0.00000909      0.00000447      0.05765755      0.00007737
 2022a22 222     -0.00000001      0.00000331     -0.00000186     -0.00007737      0.05765755
 2220a22 222     -0.00000001      0.00000331     -0.00000186     -0.00007737      0.05765755
 2a20222 222     -0.00000003     -0.00000909      0.00000447      0.05765754      0.00007737
 2222a02 222     -0.00000001      0.00000331     -0.00000186     -0.00007737      0.05765754
 2a22202 222     -0.00000003     -0.00000909      0.00000447      0.05765754      0.00007737
 2a2ba22 222     -0.05763324      0.00000008      0.00000034     -0.00000003     -0.00000001
 2b2a2a2 222      0.00000001     -0.00000330      0.00000186      0.00007734     -0.05763319
 222aba2 222      0.00000003      0.00000909     -0.00000447     -0.05763319     -0.00007734
 2a22ba2 222     -0.00000016     -0.05574828     -0.01461914     -0.00000766      0.00000271
 2a22ab2 222      0.00000035      0.01521360      0.05558900     -0.00000191      0.00000092
 
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
 CPU TIMES  *         5.58      3.87      1.35
 REAL TIME  *         7.48 SEC
 DISK USED  *        32.59 MB (local),        1.08 GB (total)
 SF USED    *        11.35 MB
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
 Smallest eigenvalue of S: -0.1227112E-14. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.2226175E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.5035957E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.7171495E-15. Vector removed

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
    12      -109.30438857
    13      -109.30438856
    14      -109.30438856
    15      -109.30438856
    16      -109.30438856
    17      -109.30438856

 Number of blocks in overlap matrix:    66   Smallest eigenvalue:  0.13D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  934002 words, CPU-Time:      0.19 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  564595 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68193509  0.30D-01  0.10D+00     4.08
    1     2     2     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68263016  0.30D-01  0.10D+00     4.08
    1     3     3     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68021937  0.30D-01  0.10D+00     4.08
    1     4     4     1.00000000     0.00000000  -109.37838483     0.00000000    -0.68015861  0.30D-01  0.10D+00     4.08
    1     5     5     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68055520  0.30D-01  0.10D+00     4.08
    1     6     6     1.00000000     0.00000000  -109.37838483     0.00000000    -0.67928720  0.30D-01  0.99D-01     4.08
    1     7     7     1.00000000     0.00000000  -109.37838483    -0.00000000    -0.68041257  0.30D-01  0.10D+00     4.08
    1     8     8     1.00000000     0.00000000  -109.32415027     0.00000000    -0.69310069  0.38D-01  0.10D+00     4.08
    1     9     9     1.00000000     0.00000000  -109.32415027     0.00000000    -0.69303908  0.38D-01  0.10D+00     4.08
    1    10    10     1.00000000     0.00000000  -109.32415027     0.00000000    -0.69319504  0.38D-01  0.10D+00     4.08
    1    11    11     1.00000000     0.00000000  -109.30438857     0.00000000    -0.68422820  0.71D-01  0.87D-01     4.08
    1    12    12     1.00000000     0.00000000  -109.30438857    -0.00000000    -0.68303801  0.71D-01  0.86D-01     4.08
    1    13    13     1.00000000     0.00000000  -109.30438856     0.00000000    -0.68165970  0.69D-01  0.86D-01     4.08
    1    14    14     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68130173  0.69D-01  0.86D-01     4.08
    1    15    15     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68281731  0.69D-01  0.87D-01     4.08
    1    16    16     1.00000000     0.00000000  -109.30438856     0.00000000    -0.68254341  0.69D-01  0.86D-01     4.08
    1    17    17     1.00000000     0.00000000  -109.30438856    -0.00000000    -0.68149432  0.69D-01  0.86D-01     4.08
    2     1     1     1.08887225    -0.56227634  -109.94066117    -0.56227634    -0.02086876  0.22D-02  0.26D-02    59.90
    2     2     2     1.08880301    -0.56203235  -109.94041719    -0.56203235    -0.02093882  0.22D-02  0.26D-02    59.90
    2     3     3     1.08864498    -0.56175627  -109.94014110    -0.56175627    -0.02092157  0.21D-02  0.26D-02    59.90
    2     4     4     1.08868156    -0.56172384  -109.94010867    -0.56172384    -0.02094426  0.21D-02  0.26D-02    59.90
    2     5     5     1.08856805    -0.56157420  -109.93995903    -0.56157420    -0.02094187  0.21D-02  0.26D-02    59.90
    2     6     6     1.08860710    -0.56153465  -109.93991948    -0.56153465    -0.02097426  0.21D-02  0.26D-02    59.90
    2     7     7     1.08853710    -0.56131075  -109.93969558    -0.56131075    -0.02103940  0.21D-02  0.26D-02    59.90
    2     8     8     1.09520475    -0.57148961  -109.89563988    -0.57148961    -0.02164056  0.30D-02  0.27D-02    59.90
    2     9     9     1.09525923    -0.57134557  -109.89549584    -0.57134557    -0.02178783  0.31D-02  0.27D-02    59.90
    2    10    10     1.09525924    -0.57130649  -109.89545676    -0.57130649    -0.02180687  0.31D-02  0.27D-02    59.90
    2    11    11     1.10597826    -0.56241796  -109.86680653    -0.56241796    -0.02644207  0.37D-02  0.32D-02    59.90
    2    12    12     1.10582781    -0.56226477  -109.86665334    -0.56226477    -0.02638959  0.37D-02  0.32D-02    59.90
    2    13    13     1.10611065    -0.56225411  -109.86664268    -0.56225411    -0.02654280  0.38D-02  0.32D-02    59.90
    2    14    14     1.10570252    -0.56206308  -109.86645164    -0.56206308    -0.02642742  0.37D-02  0.32D-02    59.90
    2    15    15     1.10540157    -0.56205442  -109.86644298    -0.56205442    -0.02623964  0.36D-02  0.32D-02    59.90
    2    16    16     1.10530945    -0.56190383  -109.86629239    -0.56190383    -0.02623261  0.36D-02  0.32D-02    59.90
    2    17    17     1.10589748    -0.56158055  -109.86596912    -0.56158055    -0.02665042  0.39D-02  0.32D-02    59.90
    3     1     1     1.08584899    -0.58401117  -109.96239600    -0.02173483    -0.00150192  0.96D-04  0.24D-03   112.94
    3     2     2     1.08575835    -0.58390694  -109.96229177    -0.02187459    -0.00154400  0.98D-04  0.25D-03   112.94
    3     3     3     1.08560917    -0.58379182  -109.96217665    -0.02203554    -0.00159078  0.96D-04  0.25D-03   112.94
    3     4     4     1.08560576    -0.58376935  -109.96215418    -0.02204551    -0.00159896  0.98D-04  0.25D-03   112.94
    3     5     5     1.08551384    -0.58369161  -109.96207644    -0.02211741    -0.00162391  0.97D-04  0.25D-03   112.94
    3     6     6     1.08551700    -0.58368222  -109.96206705    -0.02214756    -0.00163149  0.10D-03  0.25D-03   112.94
    3     7     7     1.08544789    -0.58360447  -109.96198931    -0.02229372    -0.00167131  0.10D-03  0.26D-03   112.94
    3     8     8     1.09021767    -0.59386786  -109.91801813    -0.02237825    -0.00171242  0.15D-03  0.26D-03   112.94
    3     9     9     1.09021976    -0.59383664  -109.91798691    -0.02249108    -0.00174002  0.16D-03  0.27D-03   112.94
    3    10    10     1.09020971    -0.59382019  -109.91797046    -0.02251370    -0.00174744  0.16D-03  0.27D-03   112.94
    3    11    11     1.09573727    -0.58922366  -109.89361222    -0.02680569    -0.00254425  0.16D-03  0.44D-03   112.94
    3    12    12     1.09560494    -0.58910336  -109.89349193    -0.02683859    -0.00257726  0.16D-03  0.44D-03   112.94
    3    13    13     1.09553679    -0.58904651  -109.89343508    -0.02679240    -0.00259211  0.16D-03  0.44D-03   112.94
    3    14    14     1.09540292    -0.58886851  -109.89325707    -0.02680543    -0.00256469  0.16D-03  0.43D-03   112.94
    3    15    15     1.09516681    -0.58875630  -109.89314486    -0.02670188    -0.00260428  0.16D-03  0.43D-03   112.94
    3    16    16     1.09509264    -0.58868180  -109.89307037    -0.02677797    -0.00263376  0.16D-03  0.43D-03   112.94
    3    17    17     1.09495620    -0.58846546  -109.89285402    -0.02688490    -0.00264139  0.17D-03  0.43D-03   112.94
    4     1     1     1.08880130    -0.58610795  -109.96449278    -0.00209678    -0.00025447  0.15D-04  0.42D-04   166.19
    4     2     2     1.08874925    -0.58607798  -109.96446281    -0.00217104    -0.00026779  0.16D-04  0.43D-04   166.19
    4     3     3     1.08873166    -0.58606155  -109.96444638    -0.00226973    -0.00027245  0.16D-04  0.43D-04   166.19
    4     4     4     1.08871469    -0.58605061  -109.96443544    -0.00228126    -0.00027721  0.16D-04  0.44D-04   166.19
    4     5     5     1.08867612    -0.58602775  -109.96441258    -0.00233614    -0.00028500  0.16D-04  0.45D-04   166.19
    4     6     6     1.08866904    -0.58602553  -109.96441036    -0.00234331    -0.00028733  0.17D-04  0.45D-04   166.19
    4     7     7     1.08864504    -0.58601227  -109.96439710    -0.00240780    -0.00029520  0.17D-04  0.46D-04   166.19
    4     8     8     1.09282776    -0.59620121  -109.92035148    -0.00233335    -0.00031721  0.28D-04  0.48D-04   166.19
    4     9     9     1.09279739    -0.59619179  -109.92034206    -0.00235515    -0.00032497  0.29D-04  0.49D-04   166.19
    4    10    10     1.09278745    -0.59618591  -109.92033618    -0.00236572    -0.00032760  0.30D-04  0.49D-04   166.19
    4    11    11     1.10278098    -0.59307949  -109.89746805    -0.00385583    -0.00056444  0.55D-04  0.79D-04   166.19
    4    12    12     1.10266605    -0.59302612  -109.89741469    -0.00392276    -0.00058957  0.56D-04  0.83D-04   166.19
    4    13    13     1.10262406    -0.59300413  -109.89739269    -0.00395762    -0.00061230  0.55D-04  0.88D-04   166.19
    4    14    14     1.10234492    -0.59284040  -109.89722896    -0.00397189    -0.00064493  0.63D-04  0.88D-04   166.19
    4    15    15     1.10226277    -0.59282201  -109.89721058    -0.00406572    -0.00065156  0.61D-04  0.92D-04   166.19
    4    16    16     1.10230570    -0.59281873  -109.89720729    -0.00413693    -0.00065296  0.64D-04  0.89D-04   166.19
    4    17    17     1.10194469    -0.59264904  -109.89703761    -0.00418358    -0.00071156  0.68D-04  0.96D-04   166.19
    5     1     1     1.09029964    -0.58643337  -109.96481821    -0.00032543    -0.00004960  0.29D-05  0.88D-05   219.36
    5     2     2     1.09027626    -0.58642266  -109.96480749    -0.00034468    -0.00005375  0.30D-05  0.94D-05   219.36
    5     3     3     1.09026065    -0.58641703  -109.96480186    -0.00035548    -0.00005494  0.33D-05  0.93D-05   219.36
    5     4     4     1.09025609    -0.58641279  -109.96479763    -0.00036219    -0.00005636  0.34D-05  0.95D-05   219.36
    5     5     5     1.09023369    -0.58640311  -109.96478794    -0.00037536    -0.00006019  0.35D-05  0.10D-04   219.36
    5     6     6     1.09022927    -0.58640246  -109.96478729    -0.00037693    -0.00006079  0.36D-05  0.10D-04   219.36
    5     7     7     1.09020326    -0.58639719  -109.96478202    -0.00038491    -0.00006407  0.35D-05  0.11D-04   219.36
    5     8     8     1.09450881    -0.59660882  -109.92075908    -0.00040760    -0.00006206  0.38D-05  0.11D-04   219.36
    5     9     9     1.09449689    -0.59660688  -109.92075715    -0.00041509    -0.00006381  0.37D-05  0.11D-04   219.36
    5    10    10     1.09449273    -0.59660449  -109.92075476    -0.00041858    -0.00006462  0.38D-05  0.11D-04   219.36
    5    11    11     1.10526178    -0.59384305  -109.89823162    -0.00076357    -0.00011228  0.51D-05  0.19D-04   219.36
    5    12    12     1.10517930    -0.59381715  -109.89820572    -0.00079103    -0.00013019  0.53D-05  0.23D-04   219.36
    5    13    13     1.10512790    -0.59379834  -109.89818690    -0.00079421    -0.00014673  0.56D-05  0.27D-04   219.36
    5    14    14     1.10503357    -0.59375469  -109.89814326    -0.00091429    -0.00014611  0.68D-05  0.22D-04   219.36
    5    15    15     1.10500317    -0.59374588  -109.89813444    -0.00092386    -0.00014961  0.69D-05  0.23D-04   219.36
    5    16    16     1.10503730    -0.59374174  -109.89813031    -0.00092301    -0.00016114  0.69D-05  0.27D-04   219.36
    5    17    17     1.10489792    -0.59368655  -109.89807511    -0.00103750    -0.00017448  0.84D-05  0.25D-04   219.36
    6     1     1     1.09035486    -0.58650234  -109.96488717    -0.00006896    -0.00001515  0.79D-06  0.26D-05   272.58
    6     2     2     1.09032732    -0.58649861  -109.96488345    -0.00007596    -0.00001676  0.90D-06  0.28D-05   272.58
    6     3     3     1.09030192    -0.58649814  -109.96488297    -0.00008111    -0.00001606  0.90D-06  0.25D-05   272.58
    6     4     4     1.09029387    -0.58649658  -109.96488142    -0.00008379    -0.00001651  0.95D-06  0.25D-05   272.58
    6     5     5     1.09026889    -0.58649274  -109.96487758    -0.00008964    -0.00001850  0.10D-05  0.28D-05   272.58
    6     6     6     1.09026849    -0.58649225  -109.96487708    -0.00008979    -0.00001899  0.10D-05  0.29D-05   272.58
    6     7     7     1.09025828    -0.58648886  -109.96487369    -0.00009167    -0.00002162  0.11D-05  0.34D-05   272.58
    6     8     8     1.09456371    -0.59670090  -109.92085117    -0.00009208    -0.00001978  0.19D-05  0.30D-05   272.58
    6     9     9     1.09456147    -0.59669963  -109.92084990    -0.00009275    -0.00002113  0.21D-05  0.32D-05   272.58
    6    10    10     1.09455650    -0.59669856  -109.92084882    -0.00009407    -0.00002155  0.21D-05  0.33D-05   272.58
    6    11    11     1.10533921    -0.59399301  -109.89838157    -0.00014995    -0.00003415  0.28D-05  0.56D-05   272.58
    6    12    12     1.10524971    -0.59397689  -109.89836546    -0.00015974    -0.00004565  0.30D-05  0.82D-05   272.58
    6    13    13     1.10516112    -0.59397220  -109.89836076    -0.00017386    -0.00004294  0.41D-05  0.65D-05   272.58
    6    14    14     1.10505003    -0.59396514  -109.89835371    -0.00021045    -0.00004438  0.45D-05  0.60D-05   272.58
    6    15    15     1.10501805    -0.59396221  -109.89835078    -0.00021634    -0.00004550  0.47D-05  0.60D-05   272.58
    6    16    16     1.10506646    -0.59394725  -109.89833582    -0.00020551    -0.00005816  0.45D-05  0.96D-05   272.58
    6    17    17     1.10483769    -0.59393894  -109.89832751    -0.00025240    -0.00005496  0.63D-05  0.69D-05   272.58
    7     1     1     1.09048785    -0.58651901  -109.96490384    -0.00001667    -0.00000453  0.31D-06  0.83D-06   325.76
    7     2     2     1.09048778    -0.58651766  -109.96490249    -0.00001904    -0.00000511  0.40D-06  0.87D-06   325.76
    7     3     3     1.09047262    -0.58651751  -109.96490234    -0.00001937    -0.00000526  0.38D-06  0.95D-06   325.76
    7     4     4     1.09048724    -0.58651707  -109.96490190    -0.00002049    -0.00000529  0.45D-06  0.87D-06   325.76
    7     5     5     1.09046392    -0.58651545  -109.96490028    -0.00002270    -0.00000610  0.51D-06  0.10D-05   325.76
    7     6     6     1.09045637    -0.58651511  -109.96489994    -0.00002286    -0.00000633  0.51D-06  0.11D-05   325.76
    7     7     7     1.09042398    -0.58651342  -109.96489825    -0.00002457    -0.00000716  0.52D-06  0.13D-05   325.76
    7     8     8     1.09479130    -0.59672489  -109.92087516    -0.00002399    -0.00000654  0.84D-06  0.11D-05   325.76
    7     9     9     1.09477218    -0.59672430  -109.92087457    -0.00002467    -0.00000691  0.84D-06  0.11D-05   325.76
    7    10    10     1.09476834    -0.59672378  -109.92087405    -0.00002523    -0.00000715  0.87D-06  0.12D-05   325.76
    7    11    11     1.10587473    -0.59402965  -109.89841822    -0.00003665    -0.00000986  0.72D-06  0.17D-05   325.76
    7    12    12     1.10576003    -0.59402381  -109.89841238    -0.00004692    -0.00001230  0.85D-06  0.20D-05   325.76
    7    13    13     1.10580751    -0.59402312  -109.89841168    -0.00005092    -0.00001229  0.13D-05  0.18D-05   325.76
    7    14    14     1.10580945    -0.59401945  -109.89840801    -0.00005431    -0.00001389  0.17D-05  0.19D-05   325.76
    7    15    15     1.10580006    -0.59401819  -109.89840675    -0.00005597    -0.00001450  0.18D-05  0.20D-05   325.76
    7    16    16     1.10569064    -0.59401342  -109.89840198    -0.00006616    -0.00001635  0.16D-05  0.24D-05   325.76
    7    17    17     1.10572091    -0.59400817  -109.89839674    -0.00006923    -0.00001869  0.26D-05  0.24D-05   325.76
    8     1     1     1.09063156    -0.58652430  -109.96490914    -0.00000530    -0.00000129  0.10D-06  0.22D-06   378.96
    8     2     2     1.09062490    -0.58652368  -109.96490852    -0.00000603    -0.00000158  0.12D-06  0.26D-06   378.96
    8     3     3     1.09062698    -0.58652368  -109.96490851    -0.00000617    -0.00000160  0.12D-06  0.27D-06   378.96
    8     4     4     1.09062703    -0.58652342  -109.96490825    -0.00000635    -0.00000171  0.13D-06  0.28D-06   378.96
    8     5     5     1.09061798    -0.58652280  -109.96490763    -0.00000735    -0.00000199  0.15D-06  0.33D-06   378.96
    8     6     6     1.09061532    -0.58652264  -109.96490747    -0.00000752    -0.00000206  0.15D-06  0.34D-06   378.96
    8     7     7     1.09060510    -0.58652204  -109.96490687    -0.00000861    -0.00000231  0.17D-06  0.37D-06   378.96
    8     8     8     1.09495084    -0.59673252  -109.92088279    -0.00000763    -0.00000208  0.20D-06  0.33D-06   378.96
    8     9     9     1.09494552    -0.59673237  -109.92088264    -0.00000807    -0.00000215  0.20D-06  0.34D-06   378.96
    8    10    10     1.09494434    -0.59673213  -109.92088240    -0.00000835    -0.00000225  0.21D-06  0.36D-06   378.96
    8    11    11     1.10612389    -0.59404111  -109.89842968    -0.00001146    -0.00000274  0.21D-06  0.45D-06   378.96
    8    12    12     1.10608521    -0.59403931  -109.89842788    -0.00001550    -0.00000359  0.28D-06  0.57D-06   378.96
    8    13    13     1.10605924    -0.59403893  -109.89842750    -0.00001581    -0.00000398  0.26D-06  0.69D-06   378.96
    8    14    14     1.10603036    -0.59403717  -109.89842573    -0.00001772    -0.00000450  0.35D-06  0.66D-06   378.96
    8    15    15     1.10602122    -0.59403660  -109.89842516    -0.00001841    -0.00000476  0.36D-06  0.70D-06   378.96
    8    16    16     1.10600171    -0.59403508  -109.89842364    -0.00002166    -0.00000587  0.36D-06  0.10D-05   378.96
    8    17    17     1.10595632    -0.59403269  -109.89842125    -0.00002452    -0.00000647  0.54D-06  0.88D-06   378.96
    9     1     1     1.09065141    -0.58652599  -109.96491083    -0.00000169    -0.00000046  0.24D-07  0.80D-07   432.30
    9     2     2     1.09064437    -0.58652575  -109.96491058    -0.00000206    -0.00000058  0.32D-07  0.98D-07   432.30
    9     3     3     1.09064086    -0.58652575  -109.96491058    -0.00000207    -0.00000055  0.38D-07  0.87D-07   432.30
    9     4     4     1.09063898    -0.58652563  -109.96491046    -0.00000221    -0.00000060  0.42D-07  0.95D-07   432.30
    9     5     5     1.09063028    -0.58652539  -109.96491023    -0.00000260    -0.00000072  0.48D-07  0.11D-06   432.30
    9     6     6     1.09062958    -0.58652532  -109.96491016    -0.00000269    -0.00000076  0.49D-07  0.12D-06   432.30
    9     7     7     1.09062479    -0.58652508  -109.96490991    -0.00000304    -0.00000093  0.46D-07  0.16D-06   432.30
    9     8     8     1.09496076    -0.59673525  -109.92088552    -0.00000272    -0.00000076  0.79D-07  0.12D-06   432.30
    9     9     9     1.09495984    -0.59673520  -109.92088547    -0.00000283    -0.00000081  0.79D-07  0.13D-06   432.30
    9    10    10     1.09495797    -0.59673510  -109.92088536    -0.00000297    -0.00000086  0.85D-07  0.14D-06   432.30
    9    11    11     1.10617685    -0.59404464  -109.89843321    -0.00000353    -0.00000092  0.95D-07  0.14D-06   432.30
    9    12    12     1.10615495    -0.59404391  -109.89843248    -0.00000460    -0.00000146  0.76D-07  0.28D-06   432.30
    9    13    13     1.10614481    -0.59404368  -109.89843224    -0.00000475    -0.00000145  0.10D-06  0.25D-06   432.30
    9    14    14     1.10611892    -0.59404317  -109.89843173    -0.00000600    -0.00000162  0.14D-06  0.24D-06   432.30
    9    15    15     1.10610848    -0.59404295  -109.89843152    -0.00000636    -0.00000171  0.16D-06  0.24D-06   432.30
    9    16    16     1.10610480    -0.59404183  -109.89843039    -0.00000675    -0.00000259  0.99D-07  0.50D-06   432.30
    9    17    17     1.10605401    -0.59404146  -109.89843002    -0.00000877    -0.00000234  0.23D-06  0.31D-06   432.30
   10     1     1     1.09066832    -0.58652650  -109.96491133    -0.00000051    -0.00000017  0.56D-08  0.34D-07   485.58
   10     2     2     1.09066439    -0.58652642  -109.96491126    -0.00000067    -0.00000020  0.12D-07  0.35D-07   485.58
   10     3     3     1.09066289    -0.58652640  -109.96491124    -0.00000066    -0.00000022  0.84D-08  0.43D-07   485.58
   10     4     4     1.09066311    -0.58652637  -109.96491120    -0.00000074    -0.00000022  0.14D-07  0.38D-07   485.58
   10     5     5     1.09065621    -0.58652627  -109.96491110    -0.00000088    -0.00000027  0.16D-07  0.47D-07   485.58
   10     6     6     1.09065456    -0.58652624  -109.96491107    -0.00000091    -0.00000029  0.16D-07  0.52D-07   485.58
   10     7     7     1.09064661    -0.58652611  -109.96491094    -0.00000103    -0.00000037  0.15D-07  0.70D-07   485.58
   10     8     8     1.09499130    -0.59673619  -109.92088646    -0.00000094    -0.00000029  0.32D-07  0.47D-07   485.58
   10     9     9     1.09498780    -0.59673616  -109.92088643    -0.00000096    -0.00000032  0.28D-07  0.56D-07   485.58
   10    10    10     1.09498644    -0.59673611  -109.92088638    -0.00000102    -0.00000034  0.31D-07  0.59D-07   485.58
   10    11    11     1.10627506    -0.59404568  -109.89843425    -0.00000104    -0.00000031  0.22D-07  0.58D-07   485.58
   10    12    12     1.10624024    -0.59404533  -109.89843389    -0.00000141    -0.00000050  0.24D-07  0.98D-07   485.58
   10    13    13     1.10625419    -0.59404530  -109.89843387    -0.00000163    -0.00000047  0.54D-07  0.74D-07   485.58
   10    14    14     1.10624969    -0.59404509  -109.89843365    -0.00000192    -0.00000058  0.69D-07  0.88D-07   485.58
   10    15    15     1.10624977    -0.59404502  -109.89843358    -0.00000206    -0.00000061  0.81D-07  0.87D-07   485.58
   10    16    16     1.10620831    -0.59404450  -109.89843306    -0.00000267    -0.00000084  0.67D-07  0.14D-06   485.58
   10    17    17     1.10622767    -0.59404439  -109.89843295    -0.00000293    -0.00000089  0.13D-06  0.12D-06   485.58
   11     1     1     1.09068626    -0.58652668  -109.96491151    -0.00000018    -0.00000006  0.39D-08  0.11D-07   538.71
   11     2     2     1.09068456    -0.58652665  -109.96491148    -0.00000023    -0.00000008  0.53D-08  0.13D-07   538.71
   11     3     3     1.09068349    -0.58652664  -109.96491147    -0.00000023    -0.00000008  0.50D-08  0.14D-07   538.71
   11     4     4     1.09068434    -0.58652663  -109.96491146    -0.00000026    -0.00000008  0.67D-08  0.14D-07   538.71
   11     5     5     1.09068073    -0.58652659  -109.96491142    -0.00000032    -0.00000010  0.84D-08  0.17D-07   538.71
   11     6     6     1.09067964    -0.58652657  -109.96491140    -0.00000033    -0.00000011  0.80D-08  0.19D-07   538.71
   11     7     7     1.09067529    -0.58652651  -109.96491134    -0.00000040    -0.00000014  0.91D-08  0.24D-07   538.71
   11     8     8     1.09501511    -0.59673651  -109.92088678    -0.00000032    -0.00000011  0.10D-07  0.18D-07   538.71
   11     9     9     1.09501338    -0.59673650  -109.92088677    -0.00000034    -0.00000012  0.97D-08  0.19D-07   538.71
   11    10    10     1.09501270    -0.59673648  -109.92088675    -0.00000037    -0.00000013  0.10D-07  0.21D-07   538.71
   11    11    11     1.10630517    -0.59404600  -109.89843457    -0.00000032    -0.00000011  0.60D-08  0.21D-07   538.71
   11    12    12     1.10628630    -0.59404588  -109.89843444    -0.00000055    -0.00000017  0.12D-07  0.28D-07   538.71
   11    13    13     1.10629249    -0.59404588  -109.89843444    -0.00000057    -0.00000017  0.13D-07  0.29D-07   538.71
   11    14    14     1.10628039    -0.59404578  -109.89843435    -0.00000070    -0.00000020  0.18D-07  0.31D-07   538.71
   11    15    15     1.10627611    -0.59404576  -109.89843432    -0.00000074    -0.00000022  0.19D-07  0.32D-07   538.71
   11    16    16     1.10626365    -0.59404553  -109.89843409    -0.00000103    -0.00000036  0.14D-07  0.72D-07   538.71
   11    17    17     1.10625422    -0.59404550  -109.89843406    -0.00000111    -0.00000033  0.34D-07  0.45D-07   538.71
   12     1     1     1.09069303    -0.58652675  -109.96491158    -0.00000007    -0.00000002  0.70D-09  0.46D-08   591.83
   12     2     2     1.09069085    -0.58652673  -109.96491157    -0.00000009    -0.00000003  0.13D-08  0.52D-08   591.83
   12     3     3     1.09069094    -0.58652673  -109.96491156    -0.00000009    -0.00000003  0.10D-08  0.64D-08   591.83
   12     4     4     1.09069030    -0.58652673  -109.96491156    -0.00000010    -0.00000003  0.16D-08  0.59D-08   591.83
   12     5     5     1.09068765    -0.58652671  -109.96491154    -0.00000012    -0.00000004  0.19D-08  0.76D-08   591.83
   12     6     6     1.09068713    -0.58652670  -109.96491153    -0.00000013    -0.00000005  0.19D-08  0.88D-08   591.83
   12     7     7     1.09068470    -0.58652667  -109.96491151    -0.00000016    -0.00000006  0.16D-08  0.13D-07   591.83
   12     8     8     1.09502172    -0.59673664  -109.92088691    -0.00000013    -0.00000004  0.34D-08  0.79D-08   591.83
   12     9     9     1.09502105    -0.59673664  -109.92088691    -0.00000014    -0.00000005  0.33D-08  0.91D-08   591.83
   12    10    10     1.09502039    -0.59673663  -109.92088689    -0.00000015    -0.00000005  0.38D-08  0.99D-08   591.83
   12    11    11     1.10631446    -0.59404612  -109.89843469    -0.00000012    -0.00000004  0.36D-08  0.70D-08   591.83
   12    12    12     1.10630854    -0.59404608  -109.89843465    -0.00000020    -0.00000006  0.42D-08  0.10D-07   591.83
   12    13    13     1.10630720    -0.59404608  -109.89843464    -0.00000020    -0.00000007  0.35D-08  0.13D-07   591.83
   12    14    14     1.10630272    -0.59404604  -109.89843461    -0.00000026    -0.00000008  0.52D-08  0.14D-07   591.83
   12    15    15     1.10630044    -0.59404604  -109.89843460    -0.00000028    -0.00000008  0.65D-08  0.13D-07   591.83
   12    16    16     1.10628677    -0.59404594  -109.89843450    -0.00000041    -0.00000013  0.11D-07  0.17D-07   591.83
   12    17    17     1.10629408    -0.59404591  -109.89843447    -0.00000041    -0.00000016  0.53D-08  0.32D-07   591.83
   13     1     1     1.09069232    -0.58652675  -109.96491159    -0.00000000    -0.00000002  0.96D-09  0.37D-08   630.35
   13     2     2     1.09069308    -0.58652675  -109.96491158    -0.00000001    -0.00000002  0.72D-09  0.45D-08   630.35
   13     3     3     1.09068986    -0.58652674  -109.96491157    -0.00000001    -0.00000003  0.10D-08  0.50D-08   630.35
   13     4     4     1.09069087    -0.58652674  -109.96491157    -0.00000001    -0.00000003  0.13D-08  0.52D-08   630.35
   13     5     5     1.09069093    -0.58652673  -109.96491156    -0.00000002    -0.00000003  0.10D-08  0.64D-08   630.35
   13     6     6     1.09069035    -0.58652673  -109.96491156    -0.00000003    -0.00000003  0.16D-08  0.58D-08   630.35
   13     7     7     1.09068769    -0.58652671  -109.96491154    -0.00000004    -0.00000004  0.19D-08  0.74D-08   630.35
   13     8     8     1.09502804    -0.59673669  -109.92088696    -0.00000005    -0.00000002  0.21D-08  0.30D-08   630.35
   13     9     9     1.09502708    -0.59673669  -109.92088696    -0.00000005    -0.00000002  0.15D-08  0.36D-08   630.35
   13    10    10     1.09502663    -0.59673669  -109.92088695    -0.00000006    -0.00000002  0.18D-08  0.40D-08   630.35
   13    11    11     1.10634538    -0.59404618  -109.89843475    -0.00000006    -0.00000001  0.19D-09  0.16D-08   630.35
   13    12    12     1.10634461    -0.59404618  -109.89843475    -0.00000010    -0.00000001  0.43D-09  0.24D-08   630.35
   13    13    13     1.10634344    -0.59404618  -109.89843475    -0.00000011    -0.00000002  0.47D-09  0.31D-08   630.35
   13    14    14     1.10634529    -0.59404618  -109.89843475    -0.00000014    -0.00000001  0.51D-09  0.20D-08   630.35
   13    15    15     1.10634890    -0.59404617  -109.89843474    -0.00000014    -0.00000002  0.11D-08  0.29D-08   630.35
   13    16    16     1.10633300    -0.59404617  -109.89843473    -0.00000024    -0.00000001  0.82D-09  0.29D-08   630.35
   13    17    17     1.10632374    -0.59404615  -109.89843471    -0.00000024    -0.00000003  0.12D-08  0.58D-08   630.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%  11.0%  55.1%

 Initialization:   0.6%
 Other:           33.0%

 Total CPU:      630.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//22/222          -0.0000000   0.9575215  -0.0000922   0.0000000   0.0000577   0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.0000000  -0.0000002  -0.0000000   0.0000000   0.0003566  -0.0000001   0.0000000   0.0000000
 2/22//2222           0.0000000  -0.0003194   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0004927   0.0000000  -0.0000000   0.9504952  -0.0001515  -0.0000000   0.0000000
 22/22//222           0.0000000  -0.0000441   0.1353168  -0.0000000   0.9479127   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0003223  -0.0000000  -0.0000000   0.0000002   0.0001528  -0.0000000  -0.0000000
 2/2//22222           0.0000000   0.0000000  -0.0000450  -0.0000000  -0.0003158  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0000000   0.8588722  -0.0000000  -0.0000000   0.0005101   0.4071608  -0.0000000  -0.0000000
 2/222//222           0.8564294   0.0000000  -0.0000000   0.0026808   0.0000000   0.0000000  -0.0000001   0.0000000   0.0002167
                      0.4271908   0.0000000   0.0001807  -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0002628
 222/2//222           0.0000000  -0.0000445  -0.4239195  -0.0000000   0.0605155   0.0000000  -0.0000000   0.8543801   0.0000000
                      0.0000000   0.0000684   0.0000000  -0.0000000   0.0000000  -0.0001442   0.0000000   0.0000000
 2/22/2/222          -0.0000000   0.0000889   0.8478395  -0.0000000  -0.1210311  -0.0000000   0.0000000   0.4271909  -0.0000000
                     -0.0000000  -0.0001365  -0.0000000  -0.0000000  -0.0000000   0.0002882   0.0000000  -0.0000000
 222//2/222          -0.2167027   0.0000000  -0.0000000   0.8285646  -0.0000000   0.0000000  -0.0000029   0.0000000   0.0002167
                      0.4271906  -0.0000000   0.0002093   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0002410
 2/2/22/222           0.0000000   0.0000000   0.0000000   0.0000009  -0.0000000   0.8176364   0.2548545  -0.0000000  -0.4271899
                      0.0002167   0.0000000   0.0000001   0.0002215  -0.0000000  -0.0000000  -0.0002295  -0.0000000
 22//2/2222           0.0000000  -0.0000000  -0.0002825   0.0000000   0.0000404   0.0000000   0.0000000   0.0001996  -0.0000000
                     -0.0000000  -0.3641761   0.0000000   0.0000000  -0.0000663   0.7682047  -0.0000000  -0.0000000
 2//222/222           0.0000001  -0.0000000  -0.0000000   0.0000020   0.0000000   0.2115793   0.5674281   0.0000000   0.7399153
                     -0.0003753  -0.0000000  -0.0000000   0.0002241   0.0000000   0.0000000   0.0000244   0.0000000
 22/2/2/222          -0.3693462   0.0000000  -0.0000000  -0.4799196  -0.0000000  -0.0000000   0.0000017   0.0000000   0.0003753
                      0.7399153  -0.0000000  -0.0002251  -0.0000000  -0.0000000   0.0000000  -0.0000001   0.0000128
 2222///222           0.0000001   0.0000000   0.0000000   0.0000026  -0.0000000  -0.4511702   0.7279605  -0.0000000  -0.4271909
                      0.0002167   0.0000000  -0.0000001   0.0001669   0.0000000  -0.0000000   0.0002719   0.0000000
 2///222222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0001503  -0.0002427  -0.0000000  -0.0001997
                      0.0000001  -0.0000000  -0.0002007   0.4448261  -0.0000000  -0.0000000   0.7244959   0.0000559
 22///22222           0.0002854   0.0000000   0.0000000   0.0000012   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000001
                     -0.0001997   0.0000000  -0.4821333  -0.0000001  -0.0000000  -0.0000000  -0.0001875   0.7002296
 2//22/2222           0.0000716  -0.0000000  -0.0000000  -0.0002762  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000001
                      0.0001998  -0.0000000   0.5574499   0.0000010   0.0000000  -0.0000000   0.0001043   0.6418753
 22/2//2222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0002722   0.0000851   0.0000000   0.0001996
                     -0.0000001  -0.0000000  -0.0001685  -0.5902781   0.0000000   0.0000000   0.6118224   0.0000478
 2/2/2/2222          -0.0001224  -0.0000000  -0.0000000  -0.0001595  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002
                     -0.0003457   0.0000000   0.6001992   0.0000006  -0.0000000   0.0000000   0.0001685  -0.0336708
 222///2222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000703  -0.0001874  -0.0000000   0.0003457
                     -0.0000002   0.0000000  -0.0000186   0.5976157  -0.0000000   0.0000000   0.0650421   0.0000047
 2//2/22222          -0.0000000  -0.0000000  -0.0001406  -0.0000000   0.0000202  -0.0000000  -0.0000000  -0.0003989   0.0000000
                     -0.0000000  -0.1820862   0.0000000   0.0000000  -0.0000332   0.3840834   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.813313    0.000000   -0.000000   -0.000000   -0.505341   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000298   -0.000000    0.000000    0.000107   -0.000000
 2          -0.000043    0.957521   -0.000000    0.000000    0.000000    0.000100    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000317    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.143030   -0.000092   -0.000000    0.000000   -0.000000    0.946780    0.000000   -0.000000   -0.000000    0.000000
            -0.000045    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000313
 4          -0.000000    0.000000    0.505342    0.000003   -0.000001   -0.000000    0.813313   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000107   -0.000000    0.000000   -0.000298    0.000000
 5           0.946779    0.000058    0.000000   -0.000000    0.000000   -0.143030   -0.000000    0.000000   -0.000000    0.000000
            -0.000314   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000045
 6           0.000000    0.000000    0.000000    0.217414    0.932513   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000039    0.000314    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000002    0.932514   -0.217414    0.000000   -0.000003   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000314    0.000038    0.000000    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000001    0.000000    0.000000    0.000000    0.955577
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000001   -0.000000    0.000000    0.955577    0.000485    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 10          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000485    0.955577    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 11          0.000321   -0.000000    0.000000    0.000000    0.000000   -0.000155   -0.000000   -0.000000   -0.000000    0.000000
             0.859054   -0.000493    0.000000    0.000000   -0.000000   -0.000000   -0.407247
 12         -0.000000   -0.000000    0.000326   -0.000000    0.000000   -0.000000    0.000144    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.770229   -0.000139   -0.000222    0.557290    0.000000
 13         -0.000000    0.000000    0.000000    0.000347    0.000084    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000006    0.791385   -0.526816   -0.000003    0.000000
 14          0.000000    0.000357   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000510    0.950696    0.000000   -0.000000    0.000000   -0.000000   -0.000074
 15          0.000155   -0.000000   -0.000000   -0.000000    0.000000    0.000321   -0.000000    0.000000   -0.000000   -0.000000
             0.407247   -0.000152   -0.000000   -0.000000    0.000000   -0.000000    0.859052
 16         -0.000000    0.000000    0.000000    0.000084   -0.000347    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000255    0.526818    0.791389    0.000094   -0.000000
 17         -0.000000    0.000000   -0.000144    0.000000   -0.000000   -0.000000    0.000326    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.557295    0.000040    0.000062    0.770237   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957522   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000012    0.000000    0.000000    0.000000    0.000000   -0.000018
 2          -0.000000    0.957521    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000021   -0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.957523   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000006   -0.000000   -0.000000   -0.000000    0.000020    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.957522   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000017    0.000000   -0.000000   -0.000000    0.000000    0.000012
 5           0.000000   -0.000000   -0.000000   -0.000000    0.957522    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000020   -0.000000    0.000000    0.000000    0.000006   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957522    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000010   -0.000000   -0.000000   -0.000019   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.957524    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000019    0.000000   -0.000000    0.000010    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.955577    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.955577    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 10          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.955577
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 11          0.000000   -0.000000   -0.000006   -0.000000    0.000020    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.950697   -0.000000   -0.000000    0.000000    0.000001   -0.000000    0.000000
 12          0.000012   -0.000000   -0.000000    0.000017   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.950697    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 13          0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000010    0.000019   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.950698   -0.000000   -0.000000   -0.000000    0.000000
 14          0.000000    0.000021   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.950697   -0.000000   -0.000000    0.000000
 15          0.000000   -0.000000    0.000020   -0.000000    0.000006   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000001   -0.000000   -0.000000   -0.000000    0.950695   -0.000000   -0.000000
 16          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000019    0.000010    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.950702   -0.000000
 17         -0.000018    0.000000   -0.000000    0.000012   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.950706


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.81331289 (fixed)   0.95752224 (relaxed)   0.95752155 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676040
 Singles      0.01537361   -0.07743487   -0.07926154
 Pairs        0.07531885    0.00000000   -0.04050480
 Total        1.09069390   -0.07743487   -0.58652675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55673906
 One electron energy                 -193.36944271
 Two electron energy                   83.40453112
 Virial quotient                       -2.64613909
 Correlation energy                    -0.58652676
 !MRCI STATE 1.1 Energy              -109.964911585136

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810599 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810506 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810599 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360909 (Pople, fixed reference)
 Cluster corrected energies          -110.01360819 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360909 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95752116 (fixed)   0.95752191 (relaxed)   0.95752122 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676551
 Singles      0.01537030   -0.07742896   -0.07926003
 Pairs        0.07532292    0.00000001   -0.04050121
 Total        1.09069466   -0.07742895   -0.58652675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55692065
 One electron energy                 -193.36971071
 Two electron energy                   83.40479913
 Virial quotient                       -2.64612752
 Correlation energy                    -0.58652676
 !MRCI STATE 2.1 Energy              -109.964911582737

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810643 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810550 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810643 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360952 (Pople, fixed reference)
 Cluster corrected energies          -110.01360862 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360952 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94677972 (fixed)   0.95752333 (relaxed)   0.95752263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46686750
 Singles      0.01537252   -0.07743225   -0.07926105
 Pairs        0.07531747    0.00011305   -0.04039819
 Total        1.09069144   -0.07731920   -0.58652674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55674861
 One electron energy                 -193.36947323
 Two electron energy                   83.40456165
 Virial quotient                       -2.64613848
 Correlation energy                    -0.58652675
 !MRCI STATE 3.1 Energy              -109.964911571647

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810453 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810360 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810453 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360767 (Pople, fixed reference)
 Cluster corrected energies          -110.01360676 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360767 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.81331331 (fixed)   0.95752288 (relaxed)   0.95752219 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676826
 Singles      0.01536945   -0.07742697   -0.07925964
 Pairs        0.07532156    0.00000000   -0.04049884
 Total        1.09069245   -0.07742697   -0.58652674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55692364
 One electron energy                 -193.36972946
 Two electron energy                   83.40481790
 Virial quotient                       -2.64612733
 Correlation energy                    -0.58652675
 !MRCI STATE 4.1 Energy              -109.964911568066

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810512 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810419 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810512 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360824 (Pople, fixed reference)
 Cluster corrected energies          -110.01360734 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360824 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94677924 (fixed)   0.95752285 (relaxed)   0.95752216 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46675232
 Singles      0.01536978   -0.07742811   -0.07925992
 Pairs        0.07532128   -0.00001621   -0.04051449
 Total        1.09069251   -0.07744432   -0.58652673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838483
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55695741
 One electron energy                 -193.36976279
 Two electron energy                   83.40485123
 Virial quotient                       -2.64612518
 Correlation energy                    -0.58652674
 !MRCI STATE 5.1 Energy              -109.964911564649

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810515 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810422 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810515 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360827 (Pople, fixed reference)
 Cluster corrected energies          -110.01360737 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360827 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93251295 (fixed)   0.95752311 (relaxed)   0.95752242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46676886
 Singles      0.01536945   -0.07742655   -0.07925959
 Pairs        0.07532103    0.00000000   -0.04049828
 Total        1.09069193   -0.07742655   -0.58652673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55688947
 One electron energy                 -193.36969468
 Two electron energy                   83.40478312
 Virial quotient                       -2.64612951
 Correlation energy                    -0.58652674
 !MRCI STATE 6.1 Energy              -109.964911559611

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810480 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810388 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810480 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360793 (Pople, fixed reference)
 Cluster corrected energies          -110.01360703 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360793 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.93251414 (fixed)   0.95752428 (relaxed)   0.95752358 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000145   -0.00000000   -0.46677054
 Singles      0.01536916   -0.07742594   -0.07925960
 Pairs        0.07531866    0.00000000   -0.04049657
 Total        1.09068927   -0.07742594   -0.58652671
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.37838482
 Nuclear energy                         0.00000000
 Kinetic energy                        41.55689310
 One electron energy                 -193.36970433
 Two electron energy                   83.40479278
 Virial quotient                       -2.64612928
 Correlation energy                    -0.58652672
 !MRCI STATE 7.1 Energy              -109.964911542944

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01810322 (Davidson, fixed reference)
 Cluster corrected energies          -110.01810230 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01810322 (Davidson, rotated reference)

 Cluster corrected energies          -110.01360639 (Pople, fixed reference)
 Cluster corrected energies          -110.01360549 (Pople, relaxed reference)
 Cluster corrected energies          -110.01360639 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95557662 (fixed)   0.95562473 (relaxed)   0.95557662 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010070    0.00000000   -0.46873141
 Singles      0.01898131   -0.08347106   -0.08655943
 Pairs        0.07605630   -0.00000000   -0.04144585
 Total        1.09513831   -0.08347106   -0.59673669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32415027
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53586166
 One electron energy                 -193.31401787
 Two electron energy                   83.39313091
 Virial quotient                       -2.64640921
 Correlation energy                    -0.59673669
 !MRCI STATE 8.1 Energy              -109.920886961140

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97765948 (Davidson, fixed reference)
 Cluster corrected energies          -109.97759368 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97765948 (Davidson, rotated reference)

 Cluster corrected energies          -109.97303067 (Pople, fixed reference)
 Cluster corrected energies          -109.97296599 (Pople, relaxed reference)
 Cluster corrected energies          -109.97303067 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95557692 (fixed)   0.95562515 (relaxed)   0.95557704 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010070   -0.00000000   -0.46873323
 Singles      0.01898031   -0.08346952   -0.08655898
 Pairs        0.07605634   -0.00000000   -0.04144448
 Total        1.09513734   -0.08346952   -0.59673669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32415027
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53590726
 One electron energy                 -193.31408664
 Two electron energy                   83.39319968
 Virial quotient                       -2.64640631
 Correlation energy                    -0.59673669
 !MRCI STATE 9.1 Energy              -109.920886958525

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97765890 (Davidson, fixed reference)
 Cluster corrected energies          -109.97759310 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97765890 (Davidson, rotated reference)

 Cluster corrected energies          -109.97303010 (Pople, fixed reference)
 Cluster corrected energies          -109.97296543 (Pople, relaxed reference)
 Cluster corrected energies          -109.97303010 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95557711 (fixed)   0.95562534 (relaxed)   0.95557723 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010070    0.00000000   -0.46873323
 Singles      0.01898048   -0.08346972   -0.08655910
 Pairs        0.07605572    0.00000000   -0.04144436
 Total        1.09513690   -0.08346972   -0.59673669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32415027
 Nuclear energy                         0.00000000
 Kinetic energy                        41.53588606
 One electron energy                 -193.31406127
 Two electron energy                   83.39317432
 Virial quotient                       -2.64640766
 Correlation energy                    -0.59673669
 !MRCI STATE 10.1 Energy             -109.920886953947

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97765863 (Davidson, fixed reference)
 Cluster corrected energies          -109.97759283 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97765863 (Davidson, rotated reference)

 Cluster corrected energies          -109.97302983 (Pople, fixed reference)
 Cluster corrected energies          -109.97296516 (Pople, relaxed reference)
 Cluster corrected energies          -109.97302983 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.85905415 (fixed)   0.95072439 (relaxed)   0.95069667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.60292198
 Singles      0.03231138   -0.12704769   -0.13217955
 Pairs        0.07404021    0.20004571    0.14105534
 Total        1.10640991    0.07299802   -0.59404618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438858
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36581638
 One electron energy                 -190.60372584
 Two electron energy                   80.70529109
 Virial quotient                       -2.72256193
 Correlation energy                    -0.59404617
 !MRCI STATE 11.1 Energy             -109.898434751617

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164715 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160882 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164715 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697887 (Pople, fixed reference)
 Cluster corrected energies          -109.95694057 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697887 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.77022915 (fixed)   0.95072472 (relaxed)   0.95069700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.42211644
 Singles      0.03231123   -0.12704734   -0.13217954
 Pairs        0.07403959   -0.00000000   -0.03975020
 Total        1.10640914   -0.12704734   -0.59404618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36581037
 One electron energy                 -190.60371943
 Two electron energy                   80.70528468
 Virial quotient                       -2.72256233
 Correlation energy                    -0.59404617
 !MRCI STATE 12.1 Energy             -109.898434747667

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164669 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160836 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164669 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697841 (Pople, fixed reference)
 Cluster corrected energies          -109.95694011 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697841 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.79138500 (fixed)   0.95072523 (relaxed)   0.95069750 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.42211818
 Singles      0.03231047   -0.12704591   -0.13217925
 Pairs        0.07403917   -0.00000000   -0.03974875
 Total        1.10640796   -0.12704591   -0.59404618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36579194
 One electron energy                 -190.60369824
 Two electron energy                   80.70526350
 Virial quotient                       -2.72256357
 Correlation energy                    -0.59404617
 !MRCI STATE 13.1 Energy             -109.898434746038

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164599 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160766 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164599 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697771 (Pople, fixed reference)
 Cluster corrected energies          -109.95693941 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697771 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95069650 (fixed)   0.95072443 (relaxed)   0.95069670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.42214966
 Singles      0.03231028   -0.12704672   -0.13217904
 Pairs        0.07404121    0.00003643   -0.03971748
 Total        1.10640982   -0.12701030   -0.59404618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438858
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36578824
 One electron energy                 -190.60367802
 Two electron energy                   80.70524327
 Virial quotient                       -2.72256382
 Correlation energy                    -0.59404617
 !MRCI STATE 14.1 Energy             -109.898434745051

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164709 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160876 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164709 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697881 (Pople, fixed reference)
 Cluster corrected energies          -109.95694051 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697881 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.85905241 (fixed)   0.95072288 (relaxed)   0.95069515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.04071880
 Singles      0.03231207   -0.12705061   -0.13217959
 Pairs        0.07404304   -0.42197838   -0.42114778
 Total        1.10641344   -0.54902899   -0.59404617
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36571765
 One electron energy                 -190.60364788
 Two electron energy                   80.70521315
 Virial quotient                       -2.72256858
 Correlation energy                    -0.59404616
 !MRCI STATE 15.1 Energy             -109.898434737263

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96164923 (Davidson, fixed reference)
 Cluster corrected energies          -109.96161090 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96164923 (Davidson, rotated reference)

 Cluster corrected energies          -109.95698095 (Pople, fixed reference)
 Cluster corrected energies          -109.95694265 (Pople, relaxed reference)
 Cluster corrected energies          -109.95698095 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.79138902 (fixed)   0.95072971 (relaxed)   0.95070199 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005833   -0.00000000   -0.42211862
 Singles      0.03231545   -0.12704983   -0.13218282
 Pairs        0.07402375    0.00000000   -0.03974474
 Total        1.10639753   -0.12704983   -0.59404617
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36600262
 One electron energy                 -190.60395608
 Two electron energy                   80.70552135
 Virial quotient                       -2.72254936
 Correlation energy                    -0.59404616
 !MRCI STATE 16.1 Energy             -109.898434733446

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96163978 (Davidson, fixed reference)
 Cluster corrected energies          -109.96160144 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96163978 (Davidson, rotated reference)

 Cluster corrected energies          -109.95697150 (Pople, fixed reference)
 Cluster corrected energies          -109.95693321 (Pople, relaxed reference)
 Cluster corrected energies          -109.95697150 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.77023651 (fixed)   0.95073369 (relaxed)   0.95070597 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005832   -0.00000000   -0.42212416
 Singles      0.03231283   -0.12704757   -0.13218298
 Pairs        0.07401712    0.00000000   -0.03973900
 Total        1.10638827   -0.12704757   -0.59404615
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30438857
 Nuclear energy                         0.00000000
 Kinetic energy                        40.36590099
 One electron energy                 -190.60381603
 Two electron energy                   80.70538132
 Virial quotient                       -2.72255622
 Correlation energy                    -0.59404614
 !MRCI STATE 17.1 Energy             -109.898434709623

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96163425 (Davidson, fixed reference)
 Cluster corrected energies          -109.96159592 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96163425 (Davidson, rotated reference)

 Cluster corrected energies          -109.95696598 (Pople, fixed reference)
 Cluster corrected energies          -109.95692769 (Pople, relaxed reference)
 Cluster corrected energies          -109.95696598 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      402.31       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       692.50    686.91      3.87      1.35
 REAL TIME  *       806.86 SEC
 DISK USED  *       434.42 MB (local),       12.85 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01810599  AU                              
 SETTING HLSDIAG(2)     =      -110.01810643  AU                              
 SETTING HLSDIAG(3)     =      -110.01810453  AU                              
 SETTING HLSDIAG(4)     =      -110.01810512  AU                              
 SETTING HLSDIAG(5)     =      -110.01810515  AU                              
 SETTING HLSDIAG(6)     =      -110.01810480  AU                              
 SETTING HLSDIAG(7)     =      -110.01810322  AU                              
 SETTING HLSDIAG(8)     =      -109.97765948  AU                              
 SETTING HLSDIAG(9)     =      -109.97765890  AU                              
 SETTING HLSDIAG(10)    =      -109.97765863  AU                              
 SETTING HLSDIAG(11)    =      -109.96164715  AU                              
 SETTING HLSDIAG(12)    =      -109.96164669  AU                              
 SETTING HLSDIAG(13)    =      -109.96164599  AU                              
 SETTING HLSDIAG(14)    =      -109.96164709  AU                              
 SETTING HLSDIAG(15)    =      -109.96164923  AU                              
 SETTING HLSDIAG(16)    =      -109.96163978  AU                              
 SETTING HLSDIAG(17)    =      -109.96163425  AU                              


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

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.88D-05
 Number of N-2 electron functions:    1200
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2279808
 Total number of contracted configurations:      2359039
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  824859 words, CPU-Time:      0.21 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  507037 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70017252  0.38D-01  0.10D+00     0.51
    1     2     2     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70114575  0.38D-01  0.11D+00     0.51
    1     3     3     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70018655  0.37D-01  0.10D+00     0.51
    1     4     4     1.00000000     0.00000000  -109.34837534     0.00000000    -0.69984487  0.37D-01  0.10D+00     0.51
    1     5     5     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70120577  0.38D-01  0.11D+00     0.51
    1     6     6     1.00000000     0.00000000  -109.34837534     0.00000000    -0.70091710  0.37D-01  0.11D+00     0.51
    1     7     7     1.00000000     0.00000000  -109.34837534    -0.00000000    -0.69971634  0.37D-01  0.10D+00     0.51
    1     8     8     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70501311  0.38D-01  0.11D+00     0.51
    1     9     9     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70400620  0.37D-01  0.11D+00     0.51
    1    10    10     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70499291  0.37D-01  0.11D+00     0.51
    1    11    11     1.00000000     0.00000000  -109.32974875     0.00000000    -0.70476490  0.37D-01  0.11D+00     0.51
    1    12    12     1.00000000     0.00000000  -109.32974875    -0.00000000    -0.70461956  0.37D-01  0.11D+00     0.51
    2     1     1     1.09412358    -0.56967324  -109.91804858    -0.56967324    -0.01918969  0.28D-02  0.23D-02    36.07
    2     2     2     1.09413657    -0.56966785  -109.91804319    -0.56966785    -0.01917799  0.29D-02  0.23D-02    36.07
    2     3     3     1.09394885    -0.56950554  -109.91788088    -0.56950554    -0.01923269  0.28D-02  0.23D-02    36.07
    2     4     4     1.09400081    -0.56946514  -109.91784048    -0.56946514    -0.01929463  0.28D-02  0.24D-02    36.07
    2     5     5     1.09404857    -0.56944498  -109.91782032    -0.56944498    -0.01933600  0.28D-02  0.24D-02    36.07
    2     6     6     1.09442674    -0.56931685  -109.91769219    -0.56931685    -0.01960044  0.31D-02  0.24D-02    36.07
    2     7     7     1.09435792    -0.56907153  -109.91744686    -0.56907153    -0.01975582  0.31D-02  0.24D-02    36.07
    2     8     8     1.09544212    -0.57233374  -109.90208249    -0.57233374    -0.01827126  0.29D-02  0.21D-02    36.07
    2     9     9     1.09552994    -0.57209659  -109.90184534    -0.57209659    -0.01850687  0.30D-02  0.21D-02    36.07
    2    10    10     1.09551046    -0.57182430  -109.90157305    -0.57182430    -0.01871488  0.30D-02  0.21D-02    36.07
    2    11    11     1.09550899    -0.57181588  -109.90156462    -0.57181588    -0.01873338  0.31D-02  0.21D-02    36.07
    2    12    12     1.09560191    -0.57179724  -109.90154599    -0.57179724    -0.01880672  0.31D-02  0.21D-02    36.07
    3     1     1     1.08909654    -0.58872969  -109.93710504    -0.01905646    -0.00097958  0.69D-04  0.20D-03    70.48
    3     2     2     1.08908626    -0.58872075  -109.93709609    -0.01905290    -0.00098024  0.70D-04  0.20D-03    70.48
    3     3     3     1.08909497    -0.58869546  -109.93707080    -0.01918992    -0.00101283  0.69D-04  0.21D-03    70.48
    3     4     4     1.08901364    -0.58867209  -109.93704743    -0.01920695    -0.00102613  0.68D-04  0.21D-03    70.48
    3     5     5     1.08896455    -0.58866669  -109.93704203    -0.01922170    -0.00100810  0.69D-04  0.20D-03    70.48
    3     6     6     1.08897742    -0.58866412  -109.93703946    -0.01934727    -0.00101603  0.68D-04  0.21D-03    70.48
    3     7     7     1.08901935    -0.58865389  -109.93702923    -0.01958237    -0.00104252  0.70D-04  0.21D-03    70.48
    3     8     8     1.09001994    -0.59002197  -109.91977072    -0.01768823    -0.00086510  0.86D-04  0.16D-03    70.48
    3     9     9     1.09000597    -0.58998851  -109.91973726    -0.01789192    -0.00087729  0.88D-04  0.16D-03    70.48
    3    10    10     1.08997049    -0.58995577  -109.91970452    -0.01813147    -0.00090263  0.92D-04  0.16D-03    70.48
    3    11    11     1.08993479    -0.58994741  -109.91969616    -0.01813154    -0.00089868  0.91D-04  0.16D-03    70.48
    3    12    12     1.08993765    -0.58994741  -109.91969616    -0.01815017    -0.00090271  0.92D-04  0.16D-03    70.48
    4     1     1     1.09120514    -0.59000788  -109.93838323    -0.00127819    -0.00019464  0.11D-04  0.41D-04   105.15
    4     2     2     1.09120517    -0.59000653  -109.93838188    -0.00128578    -0.00019450  0.12D-04  0.40D-04   105.15
    4     3     3     1.09116919    -0.58999611  -109.93837145    -0.00130064    -0.00020412  0.11D-04  0.43D-04   105.15
    4     4     4     1.09115577    -0.58999441  -109.93836975    -0.00132232    -0.00020202  0.11D-04  0.42D-04   105.15
    4     5     5     1.09114258    -0.58999359  -109.93836893    -0.00132690    -0.00020408  0.11D-04  0.43D-04   105.15
    4     6     6     1.09115808    -0.58999171  -109.93836705    -0.00132759    -0.00020899  0.11D-04  0.44D-04   105.15
    4     7     7     1.09114314    -0.58999016  -109.93836549    -0.00133626    -0.00021538  0.10D-04  0.47D-04   105.15
    4     8     8     1.09157975    -0.59107278  -109.92082153    -0.00105081    -0.00020093  0.74D-05  0.41D-04   105.15
    4     9     9     1.09155020    -0.59106086  -109.92080961    -0.00107235    -0.00020682  0.80D-05  0.42D-04   105.15
    4    10    10     1.09152168    -0.59105679  -109.92080554    -0.00110102    -0.00020842  0.83D-05  0.42D-04   105.15
    4    11    11     1.09152821    -0.59105604  -109.92080479    -0.00110863    -0.00020922  0.87D-05  0.42D-04   105.15
    4    12    12     1.09152364    -0.59105600  -109.92080475    -0.00110859    -0.00020984  0.85D-05  0.42D-04   105.15
    5     1     1     1.09246148    -0.59023309  -109.93860843    -0.00022521    -0.00004307  0.98D-06  0.11D-04   139.83
    5     2     2     1.09245250    -0.59023249  -109.93860784    -0.00022596    -0.00004395  0.97D-06  0.11D-04   139.83
    5     3     3     1.09243156    -0.59023050  -109.93860584    -0.00023439    -0.00004417  0.10D-05  0.11D-04   139.83
    5     4     4     1.09243991    -0.59022953  -109.93860487    -0.00023512    -0.00004485  0.11D-05  0.11D-04   139.83
    5     5     5     1.09242398    -0.59022828  -109.93860362    -0.00023469    -0.00004759  0.10D-05  0.12D-04   139.83
    5     6     6     1.09241042    -0.59022675  -109.93860209    -0.00023504    -0.00004835  0.11D-05  0.12D-04   139.83
    5     7     7     1.09237754    -0.59022434  -109.93859968    -0.00023418    -0.00005150  0.13D-05  0.13D-04   139.83
    5     8     8     1.09296618    -0.59132505  -109.92107380    -0.00025227    -0.00005508  0.20D-05  0.13D-04   139.83
    5     9     9     1.09295477    -0.59132045  -109.92106920    -0.00025959    -0.00005864  0.20D-05  0.13D-04   139.83
    5    10    10     1.09295691    -0.59131975  -109.92106849    -0.00026295    -0.00005947  0.20D-05  0.14D-04   139.83
    5    11    11     1.09294651    -0.59131948  -109.92106822    -0.00026344    -0.00006134  0.20D-05  0.15D-04   139.83
    5    12    12     1.09295034    -0.59131938  -109.92106812    -0.00026337    -0.00005976  0.20D-05  0.14D-04   139.83
    6     1     1     1.09254586    -0.59027713  -109.93865247    -0.00004404    -0.00001270  0.11D-05  0.30D-05   174.54
    6     2     2     1.09254770    -0.59027662  -109.93865196    -0.00004413    -0.00001287  0.11D-05  0.31D-05   174.54
    6     3     3     1.09253753    -0.59027616  -109.93865150    -0.00004566    -0.00001360  0.11D-05  0.33D-05   174.54
    6     4     4     1.09253279    -0.59027532  -109.93865066    -0.00004580    -0.00001385  0.12D-05  0.33D-05   174.54
    6     5     5     1.09254204    -0.59027531  -109.93865065    -0.00004704    -0.00001427  0.11D-05  0.36D-05   174.54
    6     6     6     1.09252894    -0.59027518  -109.93865052    -0.00004843    -0.00001385  0.12D-05  0.33D-05   174.54
    6     7     7     1.09252230    -0.59027430  -109.93864964    -0.00004997    -0.00001416  0.12D-05  0.33D-05   174.54
    6     8     8     1.09306456    -0.59138052  -109.92112927    -0.00005547    -0.00001631  0.20D-05  0.33D-05   174.54
    6     9     9     1.09305628    -0.59137834  -109.92112709    -0.00005789    -0.00001772  0.21D-05  0.36D-05   174.54
    6    10    10     1.09305167    -0.59137778  -109.92112653    -0.00005804    -0.00001801  0.21D-05  0.37D-05   174.54
    6    11    11     1.09305219    -0.59137777  -109.92112651    -0.00005829    -0.00001816  0.21D-05  0.38D-05   174.54
    6    12    12     1.09305566    -0.59137686  -109.92112561    -0.00005749    -0.00001923  0.20D-05  0.44D-05   174.54
    7     1     1     1.09257574    -0.59029040  -109.93866574    -0.00001327    -0.00000370  0.14D-06  0.91D-06   209.16
    7     2     2     1.09257810    -0.59029024  -109.93866559    -0.00001362    -0.00000374  0.14D-06  0.90D-06   209.16
    7     3     3     1.09257410    -0.59028982  -109.93866516    -0.00001367    -0.00000415  0.10D-06  0.11D-05   209.16
    7     4     4     1.09256518    -0.59028968  -109.93866502    -0.00001435    -0.00000428  0.12D-06  0.11D-05   209.16
    7     5     5     1.09256473    -0.59028961  -109.93866495    -0.00001430    -0.00000437  0.10D-06  0.12D-05   209.16
    7     6     6     1.09257100    -0.59028933  -109.93866466    -0.00001414    -0.00000451  0.93D-07  0.12D-05   209.16
    7     7     7     1.09256502    -0.59028924  -109.93866458    -0.00001494    -0.00000471  0.87D-07  0.13D-05   209.16
    7     8     8     1.09307776    -0.59139763  -109.92114637    -0.00001710    -0.00000485  0.11D-06  0.11D-05   209.16
    7     9     9     1.09306295    -0.59139691  -109.92114566    -0.00001857    -0.00000524  0.12D-06  0.12D-05   209.16
    7    10    10     1.09305867    -0.59139673  -109.92114548    -0.00001895    -0.00000537  0.13D-06  0.12D-05   209.16
    7    11    11     1.09305750    -0.59139665  -109.92114540    -0.00001889    -0.00000543  0.13D-06  0.13D-05   209.16
    7    12    12     1.09305752    -0.59139577  -109.92114451    -0.00001890    -0.00000623  0.11D-06  0.16D-05   209.16
    8     1     1     1.09266210    -0.59029402  -109.93866937    -0.00000362    -0.00000130  0.33D-07  0.36D-06   243.75
    8     2     2     1.09266422    -0.59029401  -109.93866935    -0.00000376    -0.00000130  0.34D-07  0.35D-06   243.75
    8     3     3     1.09265823    -0.59029382  -109.93866916    -0.00000400    -0.00000141  0.50D-07  0.38D-06   243.75
    8     4     4     1.09265065    -0.59029372  -109.93866906    -0.00000405    -0.00000149  0.44D-07  0.41D-06   243.75
    8     5     5     1.09264860    -0.59029370  -109.93866903    -0.00000408    -0.00000150  0.47D-07  0.41D-06   243.75
    8     6     6     1.09265312    -0.59029361  -109.93866894    -0.00000428    -0.00000154  0.57D-07  0.41D-06   243.75
    8     7     7     1.09264478    -0.59029353  -109.93866886    -0.00000428    -0.00000163  0.59D-07  0.45D-06   243.75
    8     8     8     1.09315601    -0.59140251  -109.92115126    -0.00000488    -0.00000183  0.61D-07  0.46D-06   243.75
    8     9     9     1.09314934    -0.59140223  -109.92115098    -0.00000532    -0.00000201  0.65D-07  0.50D-06   243.75
    8    10    10     1.09314618    -0.59140214  -109.92115089    -0.00000541    -0.00000209  0.62D-07  0.52D-06   243.75
    8    11    11     1.09314528    -0.59140210  -109.92115085    -0.00000545    -0.00000211  0.63D-07  0.53D-06   243.75
    8    12    12     1.09313419    -0.59140161  -109.92115035    -0.00000584    -0.00000239  0.73D-07  0.61D-06   243.75
    9     1     1     1.09270666    -0.59029524  -109.93867058    -0.00000121    -0.00000042  0.22D-07  0.11D-06   278.44
    9     2     2     1.09270502    -0.59029524  -109.93867058    -0.00000123    -0.00000043  0.21D-07  0.11D-06   278.44
    9     3     3     1.09270286    -0.59029516  -109.93867050    -0.00000134    -0.00000049  0.19D-07  0.13D-06   278.44
    9     4     4     1.09269997    -0.59029513  -109.93867047    -0.00000141    -0.00000051  0.21D-07  0.13D-06   278.44
    9     5     5     1.09269886    -0.59029512  -109.93867046    -0.00000142    -0.00000052  0.20D-07  0.14D-06   278.44
    9     6     6     1.09269985    -0.59029507  -109.93867041    -0.00000146    -0.00000056  0.19D-07  0.15D-06   278.44
    9     7     7     1.09269770    -0.59029507  -109.93867040    -0.00000154    -0.00000055  0.21D-07  0.15D-06   278.44
    9     8     8     1.09320695    -0.59140425  -109.92115300    -0.00000174    -0.00000063  0.46D-07  0.14D-06   278.44
    9     9     9     1.09320374    -0.59140414  -109.92115289    -0.00000191    -0.00000069  0.49D-07  0.16D-06   278.44
    9    10    10     1.09320150    -0.59140410  -109.92115285    -0.00000196    -0.00000072  0.49D-07  0.17D-06   278.44
    9    11    11     1.09320082    -0.59140408  -109.92115283    -0.00000198    -0.00000074  0.48D-07  0.17D-06   278.44
    9    12    12     1.09319433    -0.59140387  -109.92115262    -0.00000227    -0.00000091  0.45D-07  0.23D-06   278.44
   10     1     1     1.09271693    -0.59029566  -109.93867101    -0.00000043    -0.00000016  0.14D-08  0.47D-07   313.12
   10     2     2     1.09271580    -0.59029566  -109.93867100    -0.00000043    -0.00000017  0.13D-08  0.49D-07   313.12
   10     3     3     1.09271489    -0.59029563  -109.93867097    -0.00000047    -0.00000020  0.14D-08  0.60D-07   313.12
   10     4     4     1.09271295    -0.59029561  -109.93867095    -0.00000048    -0.00000021  0.13D-08  0.65D-07   313.12
   10     5     5     1.09271247    -0.59029560  -109.93867094    -0.00000048    -0.00000022  0.13D-08  0.70D-07   313.12
   10     6     6     1.09271284    -0.59029559  -109.93867092    -0.00000051    -0.00000023  0.18D-08  0.72D-07   313.12
   10     7     7     1.09271274    -0.59029558  -109.93867092    -0.00000051    -0.00000023  0.13D-08  0.73D-07   313.12
   10     8     8     1.09322634    -0.59140486  -109.92115361    -0.00000061    -0.00000025  0.39D-08  0.67D-07   313.12
   10     9     9     1.09322282    -0.59140481  -109.92115356    -0.00000067    -0.00000028  0.38D-08  0.77D-07   313.12
   10    10    10     1.09322125    -0.59140479  -109.92115354    -0.00000069    -0.00000029  0.38D-08  0.81D-07   313.12
   10    11    11     1.09322057    -0.59140478  -109.92115353    -0.00000070    -0.00000030  0.40D-08  0.85D-07   313.12
   10    12    12     1.09321650    -0.59140466  -109.92115341    -0.00000079    -0.00000039  0.78D-08  0.12D-06   313.12
   11     1     1     1.09272641    -0.59029581  -109.93867116    -0.00000015    -0.00000006  0.14D-08  0.18D-07   347.83
   11     2     2     1.09272546    -0.59029581  -109.93867115    -0.00000015    -0.00000007  0.13D-08  0.20D-07   347.83
   11     3     3     1.09272400    -0.59029580  -109.93867114    -0.00000017    -0.00000008  0.15D-08  0.23D-07   347.83
   11     4     4     1.09272281    -0.59029579  -109.93867113    -0.00000018    -0.00000008  0.16D-08  0.25D-07   347.83
   11     5     5     1.09272217    -0.59029579  -109.93867112    -0.00000018    -0.00000009  0.16D-08  0.26D-07   347.83
   11     6     6     1.09272236    -0.59029578  -109.93867112    -0.00000019    -0.00000009  0.20D-08  0.28D-07   347.83
   11     7     7     1.09272204    -0.59029578  -109.93867112    -0.00000020    -0.00000009  0.15D-08  0.28D-07   347.83
   11     8     8     1.09323802    -0.59140508  -109.92115383    -0.00000022    -0.00000010  0.17D-08  0.26D-07   347.83
   11     9     9     1.09323544    -0.59140506  -109.92115381    -0.00000024    -0.00000011  0.21D-08  0.30D-07   347.83
   11    10    10     1.09323436    -0.59140505  -109.92115380    -0.00000025    -0.00000012  0.21D-08  0.32D-07   347.83
   11    11    11     1.09323379    -0.59140504  -109.92115379    -0.00000026    -0.00000012  0.20D-08  0.33D-07   347.83
   11    12    12     1.09323030    -0.59140498  -109.92115373    -0.00000032    -0.00000016  0.21D-08  0.47D-07   347.83
   12     1     1     1.09273469    -0.59029587  -109.93867121    -0.00000006    -0.00000002  0.43D-09  0.69D-08   382.59
   12     2     2     1.09273382    -0.59029587  -109.93867121    -0.00000006    -0.00000003  0.34D-09  0.80D-08   382.59
   12     3     3     1.09273251    -0.59029586  -109.93867120    -0.00000007    -0.00000003  0.21D-09  0.96D-08   382.59
   12     4     4     1.09273189    -0.59029586  -109.93867120    -0.00000007    -0.00000003  0.24D-09  0.10D-07   382.59
   12     5     5     1.09273132    -0.59029586  -109.93867120    -0.00000007    -0.00000004  0.19D-09  0.11D-07   382.59
   12     6     6     1.09273123    -0.59029586  -109.93867119    -0.00000008    -0.00000004  0.15D-09  0.11D-07   382.59
   12     7     7     1.09273097    -0.59029586  -109.93867119    -0.00000008    -0.00000004  0.18D-09  0.12D-07   382.59
   12     8     8     1.09324789    -0.59140517  -109.92115392    -0.00000009    -0.00000004  0.15D-08  0.11D-07   382.59
   12     9     9     1.09324652    -0.59140516  -109.92115391    -0.00000010    -0.00000005  0.15D-08  0.12D-07   382.59
   12    10    10     1.09324566    -0.59140515  -109.92115390    -0.00000010    -0.00000005  0.15D-08  0.13D-07   382.59
   12    11    11     1.09324519    -0.59140515  -109.92115390    -0.00000011    -0.00000005  0.14D-08  0.14D-07   382.59
   12    12    12     1.09324167    -0.59140512  -109.92115387    -0.00000014    -0.00000007  0.11D-08  0.21D-07   382.59
   13     1     1     1.09273689    -0.59029589  -109.93867123    -0.00000002    -0.00000001  0.19D-09  0.43D-08   410.05
   13     2     2     1.09273654    -0.59029589  -109.93867123    -0.00000002    -0.00000002  0.19D-09  0.48D-08   410.05
   13     3     3     1.09273621    -0.59029589  -109.93867123    -0.00000002    -0.00000002  0.20D-09  0.53D-08   410.05
   13     4     4     1.09273637    -0.59029589  -109.93867123    -0.00000003    -0.00000002  0.22D-09  0.50D-08   410.05
   13     5     5     1.09273470    -0.59029587  -109.93867121    -0.00000002    -0.00000002  0.43D-09  0.69D-08   410.05
   13     6     6     1.09273385    -0.59029587  -109.93867121    -0.00000002    -0.00000003  0.34D-09  0.79D-08   410.05
   13     7     7     1.09273254    -0.59029587  -109.93867120    -0.00000001    -0.00000003  0.21D-09  0.95D-08   410.05
   13     8     8     1.09326121    -0.59140522  -109.92115397    -0.00000005    -0.00000001  0.10D-08  0.28D-08   410.05
   13     9     9     1.09326116    -0.59140522  -109.92115397    -0.00000006    -0.00000001  0.10D-08  0.29D-08   410.05
   13    10    10     1.09326066    -0.59140522  -109.92115396    -0.00000006    -0.00000002  0.11D-08  0.39D-08   410.05
   13    11    11     1.09325381    -0.59140520  -109.92115395    -0.00000005    -0.00000002  0.42D-09  0.46D-08   410.05
   13    12    12     1.09325287    -0.59140520  -109.92115395    -0.00000008    -0.00000002  0.43D-09  0.52D-08   410.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.2%   9.9%  61.5%

 Initialization:   0.1%
 Other:           28.0%

 Total CPU:      410.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//22\222           0.0014590  -0.0038213   0.9531640   0.0027935  -0.0000318   0.0002231   0.0001828  -0.0000000  -0.0000000
                      0.0000000   0.0000002   0.0000000
 22/22/\222          -0.0003593  -0.0002905   0.0002786  -0.1568952  -0.0008809   0.0012090   0.9401758  -0.0000000  -0.0000000
                      0.0000000   0.0000000  -0.0000003
 2222//\222           0.0705520   0.0001043  -0.0003063   0.0000222  -0.0002895   0.8496231  -0.0010621  -0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0000000
 2/22/2\222          -0.0000519  -0.0004904  -0.0024934   0.8409167  -0.0001368   0.0001569   0.1403317   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000002
 222//2\222          -0.0000138   0.1814974   0.0007550   0.0001012   0.8330048   0.0002640   0.0008529  -0.0000001   0.0000000
                     -0.0000000   0.0000000   0.0000000
 2/2/22\222           0.8050049  -0.0000293  -0.0011667  -0.0000127   0.0001091  -0.2807172   0.0006670   0.0000000  -0.0000002
                     -0.0000000   0.0000000  -0.0000000
 2/222/\222           0.0000062   0.7611722   0.0030377   0.0004002  -0.3839853  -0.0002238  -0.0000584  -0.0000002  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 22/22\/222           0.0000000   0.0000000  -0.0000000   0.0000008   0.0000000  -0.0000000  -0.0000010  -0.0000001   0.0001046
                      0.0000803  -0.0003346   0.6936952
 22/\22/222          -0.0000000   0.0000000  -0.0000017  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0037093  -0.0015192
                      0.6464825  -0.2514487  -0.0001959
 2/22\2/222          -0.0000000  -0.0000000   0.0000000  -0.0000011  -0.0000000   0.0000000   0.0000025   0.0000001  -0.0000905
                     -0.0000696   0.0002898  -0.6007619
 2222/\/222           0.0000051  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000007   0.0000000  -0.0000000   0.6007349
                      0.0014116  -0.0000002  -0.0000907
 2/2\22/222           0.0000023   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000050  -0.0000000  -0.0000000   0.6007343
                      0.0014116  -0.0000002  -0.0000907
 2/222\/222           0.0000000   0.0000036   0.0000000   0.0000000   0.0000040   0.0000000   0.0000000   0.6007271  -0.0000079
                      0.0033809  -0.0001692  -0.0000004
 222/\2/222           0.0000000  -0.0000030  -0.0000000  -0.0000000   0.0000002   0.0000000  -0.0000000  -0.6007268   0.0000079
                     -0.0033809   0.0001692   0.0000004
 22/2/2\222           0.0000044  -0.5442484  -0.0021897  -0.0002895  -0.2592390  -0.0000232  -0.0004587   0.0000002  -0.0000000
                      0.0000000  -0.0000000  -0.0000000
 2//222\222           0.5055025   0.0000433  -0.0008505   0.0000055  -0.0001042   0.3284582  -0.0002281  -0.0000000  -0.0000003
                     -0.0000000   0.0000000  -0.0000000
 202222/222          -0.0000000   0.0000000  -0.0000003  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0027074  -0.0011391
                      0.4847880   0.0745976  -0.0000200
 222022/222          -0.0000000   0.0000000  -0.0000011  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0008719   0.0004176
                     -0.1777940  -0.4571598  -0.0002000
 220222/222           0.0000000  -0.0000000   0.0000002   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0008719  -0.0004176
                      0.1777938   0.4571588   0.0002000
 222220/222          -0.0000000   0.0000000  -0.0000007  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0008719   0.0004176
                     -0.1777940  -0.4571581  -0.0002000
 222/2/\222           0.0000260   0.0002452   0.0012467  -0.4204533   0.0000684  -0.0000784  -0.0701648  -0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 222202/222           0.0000000  -0.0000000   0.0000016   0.0000000  -0.0000000   0.0000000   0.0000000   0.0018355   0.0007215
                     -0.3069934   0.3825614   0.0002200
 2/\222/222           0.0000006  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000018   0.0000000  -0.0000000   0.3468341
                      0.0008150  -0.0000001  -0.0000524
 22/2\2/222          -0.0000000  -0.0000010  -0.0000000  -0.0000000   0.0000026   0.0000000   0.0000000   0.3468292  -0.0000046
                      0.0019520  -0.0000977  -0.0000002
 2/22220222           0.0000195   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000088   0.0000000   0.0000000  -0.2216659
                     -0.0005208   0.0000001   0.0000335
 2222/20222          -0.0000000   0.0000152   0.0000001   0.0000000   0.0000143   0.0000000   0.0000000  -0.2216624   0.0000029
                     -0.0012475   0.0000625   0.0000001
 22222/0222          -0.0000000  -0.0000000   0.0000000  -0.0000054  -0.0000000   0.0000000   0.0000101  -0.0000000   0.0000334
                      0.0000257  -0.0001069   0.2215369
 222/220222           0.0000000  -0.0000000   0.0000089   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0011853  -0.0004854
                      0.2065805  -0.0803050  -0.0000626
 22/2220222          -0.0000000   0.0000000  -0.0000058  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0003940  -0.0001887
                      0.0803405   0.2064683   0.0000903
 22022/2222           0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000122
                     -0.0000094   0.0000391  -0.0811223
 220/222222           0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000   0.0000000   0.0000000   0.0004338   0.0001777
                     -0.0756069   0.0294054   0.0000229
 22/0222222           0.0000000  -0.0000000   0.0000002   0.0000000  -0.0000000   0.0000000   0.0000000   0.0001442   0.0000691
                     -0.0294059  -0.0756063  -0.0000331
 22/2202222           0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0001442   0.0000691
                     -0.0294059  -0.0756062  -0.0000331
 202/222222          -0.0000358   0.0000938  -0.0234020  -0.0000686   0.0000008  -0.0000055  -0.0000045   0.0003728   0.0001584
                     -0.0674238  -0.0237817  -0.0000037
 22/\/22222           0.0000006   0.0069127   0.0000265   0.0000034  -0.0355899  -0.0000131  -0.0000306   0.0659065  -0.0000009
                      0.0003709  -0.0000186  -0.0000000
 222/022222          -0.0000358   0.0000938  -0.0234022  -0.0000686   0.0000008  -0.0000055  -0.0000045   0.0002071   0.0000791
                     -0.0336385   0.0630870   0.0000343
 2/22\/2222          -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0001172  -0.0000561
                      0.0238898   0.0614254   0.0000269
 2/22/\2222          -0.0000000   0.0000000  -0.0000002   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0003524   0.0001443
                     -0.0614246   0.0238903   0.0000186
 2/2\/22222          -0.0000008  -0.0000074  -0.0000375   0.0126433  -0.0000021   0.0000024   0.0021099   0.0000000  -0.0000086
                     -0.0000066   0.0000275  -0.0570775
 2//\222222           0.0220851  -0.0000040  -0.0000259  -0.0000010   0.0000120  -0.0339895   0.0000520   0.0000000  -0.0570774
                     -0.0001341   0.0000000   0.0000086
 22/2/\2222           0.0220851  -0.0000040  -0.0000259  -0.0000010   0.0000120  -0.0339894   0.0000520  -0.0000000   0.0570774
                      0.0001341  -0.0000000  -0.0000086
 222/\/2222          -0.0284496  -0.0000054   0.0000535  -0.0000010   0.0000141  -0.0426553   0.0000438   0.0000000  -0.0570773
                     -0.0001341   0.0000000   0.0000086
 2//2\22222          -0.0000172  -0.0000004   0.0000895  -0.0334579  -0.0000418   0.0000583   0.0447467   0.0000000  -0.0000086
                     -0.0000066   0.0000275  -0.0570768
 2//22\2222           0.0000006   0.0174308   0.0000686   0.0000090  -0.0365949  -0.0000147  -0.0000274  -0.0570766   0.0000008
                     -0.0003212   0.0000161   0.0000000
 2/2\2/2222          -0.0000000   0.0512347   0.0002054   0.0000271   0.0019555  -0.0000055   0.0000221   0.0570765  -0.0000008
                      0.0003212  -0.0000161  -0.0000000
 2/22202222          -0.0218224   0.0000023   0.0000287   0.0000007  -0.0000072   0.0200017  -0.0000340  -0.0000000   0.0542194
                      0.0001274  -0.0000000  -0.0000082
 2/22022222          -0.0248226  -0.0000021   0.0000418  -0.0000003   0.0000051  -0.0161287   0.0000112  -0.0000000   0.0542192
                      0.0001274  -0.0000000  -0.0000082
 2/20222222           0.0094108  -0.0000034  -0.0000079  -0.0000008   0.0000098  -0.0280664   0.0000396  -0.0000000   0.0542192
                      0.0001274  -0.0000000  -0.0000082
 2222/02222           0.0000005   0.0056441   0.0000217   0.0000028  -0.0290587  -0.0000107  -0.0000250   0.0542186  -0.0000007
                      0.0003051  -0.0000153  -0.0000000
 2022/22222           0.0000002  -0.0267252  -0.0001075  -0.0000142  -0.0127301  -0.0000011  -0.0000225   0.0542185  -0.0000007
                      0.0003051  -0.0000153  -0.0000000
 2220/22222          -0.0000004  -0.0190068  -0.0000754  -0.0000099   0.0226944   0.0000101   0.0000137   0.0542184  -0.0000007
                      0.0003051  -0.0000153  -0.0000000
 22220/2222           0.0000077  -0.0000033  -0.0000599   0.0217327   0.0000187  -0.0000263  -0.0200992   0.0000000  -0.0000082
                     -0.0000063   0.0000262  -0.0542167
 20222/2222           0.0000099   0.0000176   0.0000462  -0.0140285   0.0000245  -0.0000330  -0.0260668   0.0000000  -0.0000082
                     -0.0000063   0.0000262  -0.0542166

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000361    0.001464   -0.000001    0.720674    0.629092   -0.000016   -0.000056    0.000000    0.000000   -0.000000
             0.000002    0.000000
 2          -0.000294   -0.003835    0.955485    0.000081   -0.000084   -0.046512   -0.000549    0.000000   -0.000000    0.000000
             0.000000    0.000001
 3           0.000265    0.956611    0.003831   -0.001250   -0.000795   -0.000155   -0.002799   -0.000000    0.000000   -0.000001
            -0.000000    0.000000
 4          -0.152589    0.002804    0.000506    0.000012   -0.000023   -0.000019    0.944372    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000885   -0.000032    0.046512   -0.000204    0.000257    0.955493   -0.000149    0.000000   -0.000000    0.000000
            -0.000000    0.000001
 6           0.001214    0.000224   -0.000099    0.629093   -0.720675    0.000334    0.000170   -0.000000    0.000000    0.000000
             0.000001    0.000000
 7           0.944377    0.000184    0.000422   -0.000531    0.001164    0.000877    0.152589   -0.000001   -0.000000   -0.000000
             0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.002982   -0.004473
            -0.000000    0.954029
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000144   -0.001335   -0.001801
             0.954041   -0.000013
 10          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000110    0.568260    0.766321
             0.002242    0.005369
 11          0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000460    0.766346   -0.568276
            -0.000000   -0.000269
 12         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.954057    0.000304   -0.000363
            -0.000144   -0.000001

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956624    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001    0.000000
             0.000000    0.000000
 2           0.000000    0.956624   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000001    0.000000    0.000000
            -0.000000    0.000000
 3           0.000000   -0.000000    0.956624    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.956624   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.956625   -0.000000   -0.000000    0.000001   -0.000000    0.000000
            -0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956625    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956626    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 8          -0.000000    0.000001    0.000000    0.000000    0.000001    0.000000    0.000000    0.954044   -0.000000   -0.000000
             0.000000    0.000000
 9           0.000001    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954044   -0.000000
            -0.000000    0.000000
 10          0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.954045
             0.000000    0.000000
 11          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.954056   -0.000000
 12          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.954057

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00435495    -1.23395490       2222120222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00435513    -1.23399714       2122220222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00378192    -1.07170229       2221220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00376756    -1.06967331       2212220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00433779    -1.23152424       2222210222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72067391 (fixed)   0.95662604 (relaxed)   0.95662400 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427    0.00000000   -0.46779018
 Singles      0.01644032   -0.07912464   -0.08128989
 Pairs        0.07629697   -0.00000000   -0.04121582
 Total        1.09274156   -0.07912464   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57047468
 One electron energy                 -193.32064468
 Two electron energy                   83.38197345
 Virial quotient                       -2.64463353
 Correlation energy                    -0.59029589
 !MRCI STATE 1.1 Energy              -109.938671229754

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341619 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341344 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341619 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009819 (Pople, fixed reference)
 Cluster corrected energies          -109.99009542 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009819 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95548483 (fixed)   0.95662619 (relaxed)   0.95662415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46778931
 Singles      0.01644036   -0.07912472   -0.08128995
 Pairs        0.07629657   -0.00000103   -0.04121662
 Total        1.09274120   -0.07912575   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57048185
 One electron energy                 -193.32065219
 Two electron energy                   83.38198096
 Virial quotient                       -2.64463307
 Correlation energy                    -0.59029589
 !MRCI STATE 2.1 Energy              -109.938671228439

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341598 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341322 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341598 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009798 (Pople, fixed reference)
 Cluster corrected energies          -109.99009521 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009798 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95661133 (fixed)   0.95662634 (relaxed)   0.95662429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427    0.00000000   -0.46779039
 Singles      0.01644033   -0.07912472   -0.08128996
 Pairs        0.07629627   -0.00000000   -0.04121554
 Total        1.09274087   -0.07912472   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57049027
 One electron energy                 -193.32066314
 Two electron energy                   83.38199192
 Virial quotient                       -2.64463254
 Correlation energy                    -0.59029588
 !MRCI STATE 3.1 Energy              -109.938671227098

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341578 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341303 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341578 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009778 (Pople, fixed reference)
 Cluster corrected energies          -109.99009501 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009778 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94437191 (fixed)   0.95662626 (relaxed)   0.95662422 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779040
 Singles      0.01644026   -0.07912463   -0.08128992
 Pairs        0.07629651   -0.00000000   -0.04121556
 Total        1.09274104   -0.07912463   -0.59029589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57049619
 One electron energy                 -193.32066970
 Two electron energy                   83.38199848
 Virial quotient                       -2.64463216
 Correlation energy                    -0.59029589
 !MRCI STATE 4.1 Energy              -109.938671226170

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341588 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341313 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341588 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009788 (Pople, fixed reference)
 Cluster corrected energies          -109.99009511 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009788 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95549306 (fixed)   0.95662699 (relaxed)   0.95662495 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427    0.00000000   -0.46778930
 Singles      0.01644092   -0.07912588   -0.08129048
 Pairs        0.07629418   -0.00000074   -0.04121610
 Total        1.09273937   -0.07912661   -0.59029587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57054256
 One electron energy                 -193.32070946
 Two electron energy                   83.38203825
 Virial quotient                       -2.64462921
 Correlation energy                    -0.59029587
 !MRCI STATE 5.1 Energy              -109.938671213022

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341488 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341213 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341488 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009687 (Pople, fixed reference)
 Cluster corrected energies          -109.99009410 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009687 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72067492 (fixed)   0.95662737 (relaxed)   0.95662533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779006
 Singles      0.01644121   -0.07912618   -0.08129071
 Pairs        0.07629303   -0.00000000   -0.04121510
 Total        1.09273851   -0.07912618   -0.59029587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57052658
 One electron energy                 -193.32068722
 Two electron energy                   83.38201601
 Virial quotient                       -2.64463023
 Correlation energy                    -0.59029587
 !MRCI STATE 6.1 Energy              -109.938671209946

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341437 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341162 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341437 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009636 (Pople, fixed reference)
 Cluster corrected energies          -109.99009359 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009636 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94437653 (fixed)   0.95662794 (relaxed)   0.95662590 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000427   -0.00000000   -0.46779018
 Singles      0.01644160   -0.07912665   -0.08129103
 Pairs        0.07629133   -0.00000000   -0.04121466
 Total        1.09273720   -0.07912665   -0.59029587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.34837534
 Nuclear energy                         0.00000000
 Kinetic energy                        41.57048754
 One electron energy                 -193.32063631
 Two electron energy                   83.38196511
 Virial quotient                       -2.64463271
 Correlation energy                    -0.59029586
 !MRCI STATE 7.1 Energy              -109.938671204808

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99341359 (Davidson, fixed reference)
 Cluster corrected energies          -109.99341084 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99341359 (Davidson, rotated reference)

 Cluster corrected energies          -109.99009557 (Pople, fixed reference)
 Cluster corrected energies          -109.99009280 (Pople, relaxed reference)
 Cluster corrected energies          -109.99009557 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95402865 (fixed)   0.95639662 (relaxed)   0.95404380 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493839    0.00000000   -0.00266575
 Singles      0.01716302   -0.07662689   -0.07898447
 Pairs        0.07655874   -0.51477016   -0.50975499
 Total        1.09866016   -0.59139705   -0.59140522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56095133
 One electron energy                 -193.40080268
 Two electron energy                   83.47964872
 Virial quotient                       -2.64481804
 Correlation energy                    -0.59140522
 !MRCI STATE 8.1 Energy              -109.921153965165

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97950210 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630913 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97950210 (Davidson, rotated reference)

 Cluster corrected energies          -109.97621996 (Pople, fixed reference)
 Cluster corrected energies          -109.97298731 (Pople, relaxed reference)
 Cluster corrected energies          -109.97621996 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95404114 (fixed)   0.95639664 (relaxed)   0.95404378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493847    0.00000000   -0.47121548
 Singles      0.01716308   -0.07662695   -0.07898451
 Pairs        0.07655865    0.00000679   -0.04120523
 Total        1.09866019   -0.07662016   -0.59140522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56094810
 One electron energy                 -193.40079873
 Two electron energy                   83.47964476
 Virial quotient                       -2.64481825
 Correlation energy                    -0.59140522
 !MRCI STATE 9.1 Energy              -109.921153965003

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97950212 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630910 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97950212 (Davidson, rotated reference)

 Cluster corrected energies          -109.97621999 (Pople, fixed reference)
 Cluster corrected energies          -109.97298728 (Pople, relaxed reference)
 Cluster corrected energies          -109.97621999 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.76632085 (fixed)   0.95639686 (relaxed)   0.95404467 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493706    0.00000000   -0.46857231
 Singles      0.01716312   -0.07662710   -0.07898468
 Pairs        0.07655797   -0.00289714   -0.04384823
 Total        1.09865815   -0.07952424   -0.59140522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56090499
 One electron energy                 -193.40073255
 Two electron energy                   83.47957858
 Virial quotient                       -2.64482099
 Correlation energy                    -0.59140522
 !MRCI STATE 10.1 Energy             -109.921153963606

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97950091 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630880 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97950091 (Davidson, rotated reference)

 Cluster corrected energies          -109.97621875 (Pople, fixed reference)
 Cluster corrected energies          -109.97298697 (Pople, relaxed reference)
 Cluster corrected energies          -109.97621875 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.76634572 (fixed)   0.95639985 (relaxed)   0.95405643 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00491857   -0.00000000   -0.47134459
 Singles      0.01716025   -0.07662524   -0.07898398
 Pairs        0.07655223    0.00014497   -0.04107663
 Total        1.09863105   -0.07648027   -0.59140520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56085645
 One electron energy                 -193.40059926
 Two electron energy                   83.47944531
 Virial quotient                       -2.64482408
 Correlation energy                    -0.59140520
 !MRCI STATE 11.1 Energy             -109.921153950117

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97948487 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630474 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97948487 (Davidson, rotated reference)

 Cluster corrected energies          -109.97620245 (Pople, fixed reference)
 Cluster corrected energies          -109.97298287 (Pople, relaxed reference)
 Cluster corrected energies          -109.97620245 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95405663 (fixed)   0.95640026 (relaxed)   0.95405676 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00491875    0.00000000   -0.47121321
 Singles      0.01716034   -0.07662540   -0.07898408
 Pairs        0.07655123    0.00000034   -0.04120790
 Total        1.09863031   -0.07662506   -0.59140520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32974875
 Nuclear energy                         0.00000000
 Kinetic energy                        41.56086695
 One electron energy                 -193.40061382
 Two electron energy                   83.47945988
 Virial quotient                       -2.64482341
 Correlation energy                    -0.59140520
 !MRCI STATE 12.1 Energy             -109.921153946550

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97948443 (Davidson, fixed reference)
 Cluster corrected energies          -109.97630418 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97948443 (Davidson, rotated reference)

 Cluster corrected energies          -109.97620200 (Pople, fixed reference)
 Cluster corrected energies          -109.97298231 (Pople, relaxed reference)
 Cluster corrected energies          -109.97620200 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      621.47       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1126.34    433.82    686.91      3.87      1.35
 REAL TIME  *      1303.63 SEC
 DISK USED  *       653.57 MB (local),       19.27 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =      -109.99341619  AU                              
 SETTING HLSDIAG(19)    =      -109.99341598  AU                              
 SETTING HLSDIAG(20)    =      -109.99341578  AU                              
 SETTING HLSDIAG(21)    =      -109.99341588  AU                              
 SETTING HLSDIAG(22)    =      -109.99341488  AU                              
 SETTING HLSDIAG(23)    =      -109.99341437  AU                              
 SETTING HLSDIAG(24)    =      -109.99341359  AU                              
 SETTING HLSDIAG(25)    =      -109.97950210  AU                              
 SETTING HLSDIAG(26)    =      -109.97950212  AU                              
 SETTING HLSDIAG(27)    =      -109.97950091  AU                              
 SETTING HLSDIAG(28)    =      -109.97948487  AU                              
 SETTING HLSDIAG(29)    =      -109.97948443  AU                              


         HLSDIAG
    -110.0181060
    -110.0181064
    -110.0181045
    -110.0181051
    -110.0181051
    -110.0181048
    -110.0181032
    -109.9776595
    -109.9776589
    -109.9776586
    -109.9616472
    -109.9616467
    -109.9616460
    -109.9616471
    -109.9616492
    -109.9616398
    -109.9616342
    -109.9934162
    -109.9934160
    -109.9934158
    -109.9934159
    -109.9934149
    -109.9934144
    -109.9934136
    -109.9795021
    -109.9795021
    -109.9795009
    -109.9794849
    -109.9794844
                                                  
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
 Replaced energies:   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -109.975123
                      -109.975123   -109.975123   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822
                      -109.991822

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.938671   -109.938671   -109.938671   -109.938671   -109.938671   -109.938671   -109.938671   -109.921154
                      -109.921154   -109.921154   -109.921154   -109.921154
 Replaced energies:   -109.960044   -109.960044   -109.960044   -109.960044   -109.960044   -109.960044   -109.960044   -109.995136
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
                            0.00       0.00       0.00       0.00       0.00   -1261.64     133.97      -0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     146.10       0.00    1023.46      -0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -146.10      -0.00      -0.00      -0.11       0.00       0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     743.08    -714.28       0.00      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1023.46       0.11       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1261.64       0.00      -0.00    -743.08      -0.00       0.00       0.00       0.00      -0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -133.97      -0.00      -0.00     714.28       0.00      -0.00       0.00       0.00       0.00      -0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -527.46

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     527.46      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.90      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.30       1.60       0.00       0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.39       0.00       0.00      -0.94       0.00      -0.00       0.00      -0.00      -0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.45       0.00      -3.18      -0.00      -0.00      -0.00       0.00      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.37      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.69       0.00       0.00      -3.06       0.00       0.00       0.00      -0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -4.53       1.59       0.00      -0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.02     522.98       0.00     508.66      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       1.87      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   19   2.1  1.5  0.5      -0.02      -0.00      -0.00      -0.05      -0.00    -507.34    -314.44      -0.00       0.00       0.00
                           -1.87      -0.00       0.00     596.88      -0.00       0.02       0.10       0.00      -0.00       0.00

   20   3.1  1.5  0.5    -522.98       0.00       0.00    -594.86       0.00       0.05       0.03      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.06       0.00     277.94     597.56       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.05     594.86      -0.00      67.64       0.00       0.00      -0.00      -0.00       0.00
                           -0.00    -596.88       0.06      -0.00      -0.03       0.00       0.00      -0.00      -0.00       0.00

   22   5.1  1.5  0.5    -508.66       0.00      -0.00     -67.64      -0.00      -0.03      -0.02      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.03      -0.00     139.74    -660.93      -0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00     507.34      -0.05      -0.00       0.03       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.02    -277.94      -0.00    -139.74      -0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00     314.44      -0.03      -0.00       0.02      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.10    -597.56      -0.00     660.93      -0.00       0.00      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.15     304.53
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     304.53      -0.15

   26   9.1  1.5  0.5       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.15       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -304.53      -0.00       0.00

   27  10.1  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -304.53       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.15      -0.00      -0.00

   28  11.1  1.5  0.5       1.03      -0.00       0.00      -0.35      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.16       2.51       0.00      -0.00       0.00

   29  12.1  1.5  0.5      -0.00      -0.00      -2.44      -0.00      -1.06       0.00       0.00      -0.00       0.00      -0.00
                            0.00       1.53      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5      -0.00      -1.58       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       2.04       0.00      -1.64       0.00       0.00       0.00       0.00      -0.00

   31  14.1  1.5  0.5       0.00      -0.00       0.00       0.00      -0.00       1.58       0.98      -0.00      -0.00       0.00
                            0.01      -0.00       0.00      -1.85       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32  15.1  1.5  0.5       2.01      -0.00      -0.00       1.82      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.95      -1.16       0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.97      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.06       0.00      -1.31      -0.00       0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.30      -0.00       1.18      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       1.05      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

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

   69   1.1  0.5  0.5      -0.17    -408.30       0.04      -0.06      -0.03       0.53       0.33       0.00       0.00       0.00
                            0.00       0.04     397.47      -0.63    -193.01       0.06      -0.12      -0.00      -0.00       0.00

   70   2.1  0.5  0.5      -0.30      -0.03    -505.03      -0.26    -332.27      -1.40      -0.87       0.00      -0.00       0.00
                           -0.01     184.53       0.01       1.64      -0.04       0.14       0.15       0.00      -0.00      -0.00

   71   3.1  0.5  0.5      -0.78       0.62      -2.03      -1.13      -1.33     348.23     215.83       0.00       0.00       0.00
                            1.28       0.75      -0.66    -409.69       0.39       0.48       1.49       0.00       0.00       0.00

   72   4.1  0.5  0.5     236.61       0.00      -0.27     375.16      -0.18       1.02       0.63       0.00       0.00      -0.00
                            0.00       0.10       0.00      -1.20      -0.01    -152.85    -528.12       0.00      -0.00       0.00

   73   5.1  0.5  0.5      -0.42      -0.04    -201.29      -0.16     116.84      -0.01      -0.01       0.00      -0.00       0.00
                           -0.00     365.79      -0.10       0.01       0.16       0.14      -0.29       0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.56      33.90      -0.01       0.20       0.08       0.08       0.05       0.00       0.00      -0.00
                            0.00       0.15     215.98      -0.10    -421.60      -0.19       0.41      -0.00       0.00       0.00

   75   7.1  0.5  0.5     441.33      -0.20      -0.39     167.71      -0.02       0.07       0.04       0.00      -0.00      -0.00
                            0.00       0.42      -0.13      -0.08       0.47    -149.11     308.42      -0.00       0.00      -0.00

   76   8.1  0.5  0.5      -0.00       0.07     333.54       0.00    -586.26      -2.59       3.04     727.89       4.64      -0.00
                           -2.68     533.24      -0.05       2.24       0.03       0.00      -0.00       0.00       0.00       3.15

   77   9.1  0.5  0.5       0.06    -533.25       0.05      -0.08      -0.02      -1.04       1.31      -0.01       1.95       0.11
                           -1.06      -0.03    -484.27       0.97    -469.52      -0.10       0.01    -727.89      -0.11       1.24

   78  10.1  0.5  0.5       0.05      -1.25       1.88      -0.06      -3.30     441.43    -558.30       4.10    -830.71       0.51
                          449.07       3.00      -1.14    -414.48      -1.10      -0.08       0.01      -1.71      -0.35    -526.05

   79  11.1  0.5  0.5      -0.20       0.00      -0.09       0.26       0.17    -390.68    -370.14      -0.20    -127.83      -0.29
                         -556.95      -0.15       0.00    -335.51       0.00       0.32      -0.03       0.00       0.68     655.54

   80  12.1  0.5  0.5     414.73       0.08      -0.00    -531.97       0.00      -0.24      -0.11      -0.00       0.40     727.92
                           -0.32      -0.00       0.07      -0.11       0.07    -670.88      70.18       0.11    -727.92       0.75

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

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02    -522.98
                           -0.00       0.00       1.39       0.00       0.00      -3.69      -0.00      -0.00       1.87      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02      -0.00       0.00
                           -2.90      -0.00      -0.00      -0.00      -1.37      -0.00      -0.00      -1.87       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     522.98      -0.00       0.00
                            0.00       0.00      -0.00       0.45       0.00      -0.00      -0.00       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.05    -594.86
                           -0.00      -0.00       0.94      -0.00       0.00       3.06       0.00      -0.00    -596.88       0.06

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     508.66      -0.00       0.00
                           -0.00       0.00      -0.00       3.18      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -507.34       0.05
                            0.00      -0.30       0.00       0.00       0.00      -0.00       4.53       0.00      -0.02    -277.94

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -314.44       0.03
                            0.00      -1.60      -0.00       0.00      -0.00      -0.00      -1.59      -0.00      -0.10    -597.56

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   11  11.1  1.5  1.5    5417.73       0.00       0.00       0.00       0.00       0.00       0.00      -1.03       0.00      -0.00
                            0.00      -0.00      -0.00    -984.35      -0.08       0.00      -0.00      -0.00       0.00      -0.00

   12  12.1  1.5  1.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.44
                            0.00      -0.00    -530.72       0.00      -0.00    -149.87      -0.46       0.00       1.53      -0.00

   13  13.1  1.5  1.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       1.58      -0.00
                            0.00     530.72       0.00       0.00      -0.00       0.16    -206.87      -0.00       0.00       2.04

   14  14.1  1.5  1.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00      -0.00       0.00      -0.00
                          984.35      -0.00      -0.00      -0.00     466.65       0.00       0.00       0.01      -0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00      -2.01       0.00       0.00
                            0.08       0.00       0.00    -466.65       0.00       0.00      -0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00      -0.00      -0.97       0.00
                           -0.00     149.87      -0.16      -0.00      -0.00       0.00    1618.60      -0.00       0.00       0.06

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73      -0.00      -0.00      -0.30
                            0.00       0.46     206.87      -0.00       0.00   -1618.60      -0.00       0.00       1.05      -0.00

   18   1.1  1.5  0.5      -1.03       0.00       0.00      -0.00      -2.01      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       1.58       0.00       0.00      -0.97      -0.00       0.00       0.00       0.00
                           -0.00      -1.53      -0.00       0.00      -0.00      -0.00      -1.05      -0.00      -0.00      48.70

   20   3.1  1.5  0.5      -0.00       2.44      -0.00      -0.00       0.00       0.00      -0.30       0.00       0.00       0.00
                            0.00       0.00      -2.04      -0.00      -0.00      -0.06       0.00      -0.00     -48.70      -0.00

   21   4.1  1.5  0.5       0.35       0.00       0.00      -0.00      -1.82      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       1.85      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00       1.06       0.00       0.00       0.00       0.00      -1.18       0.00       0.00       0.00
                            0.00      -0.00       1.64      -0.00       0.00       1.31       0.00      -0.00    -341.15       0.04

   23   6.1  1.5  0.5       0.00      -0.00      -0.00      -1.58       0.00       0.00       0.00       0.00       0.00       0.00
                            0.16       0.00      -0.00       0.00       0.95       0.00       0.00     420.55       0.00      -0.00

   24   7.1  1.5  0.5       0.00      -0.00       0.00      -0.98       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.51      -0.00      -0.00      -0.00       1.16      -0.00       0.00     -44.66      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   27  10.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5      -0.00     -99.64       0.28       0.00       0.00      -0.23     354.16       0.00       0.00       0.00
                            0.00      -0.15    -737.03       0.00      -0.00    -430.30      -0.22       0.00       0.97      -0.00

   29  12.1  1.5  0.5      99.64       0.00      -0.00       0.29     898.36      -0.00       0.00       0.00       0.00       0.00
                            0.15      -0.00       0.00    -518.02       0.05       0.00       0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5      -0.28       0.00       0.00     535.98      -0.08      -0.00      -0.00       0.00       0.00       0.00
                          737.03      -0.00       0.00       0.30    -498.06       0.00       0.00      -0.46       0.00       0.00

   31  14.1  1.5  0.5      -0.00      -0.29    -535.98       0.00       0.00     329.08       0.24       0.00       0.00       0.00
                           -0.00     518.02      -0.30       0.00      -0.00      -0.13     356.68      -0.00       0.00      -0.15

   32  15.1  1.5  0.5      -0.00    -898.36       0.08      -0.00      -0.00      -0.32     215.66       0.00       0.00       0.00
                            0.00      -0.05     498.06       0.00      -0.00    -111.75      -0.07      -0.00       0.46      -0.00

   33  16.1  1.5  0.5       0.23       0.00       0.00    -329.08       0.32       0.00       0.00       0.00       0.00       0.00
                          430.30      -0.00      -0.00       0.13     111.75      -0.00       0.00       1.23       0.00       0.00

   34  17.1  1.5  0.5    -354.16      -0.00       0.00      -0.24    -215.66      -0.00       0.00       0.00       0.00       0.00
                            0.22      -0.00      -0.00    -356.68       0.07      -0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02     603.89
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.16      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.16      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -603.89       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.06     686.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -689.22       0.06

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -587.34       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     585.83      -0.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.02    -320.94

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     363.09      -0.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.11    -690.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.19      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.82
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.76      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.82       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.36

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01      -0.00       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.33      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.12      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.07

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.21      -0.00

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

   69   1.1  0.5  0.5       0.02      -0.01       0.04     -31.59       0.01      -0.03       0.01       0.00       0.00       0.00
                          -23.38      -0.04      -0.01      -0.01      24.95      -0.01      -0.03     427.37       0.18       0.10

   70   2.1  0.5  0.5     -12.97      -0.03      -0.11      -0.01     -44.94       0.07       0.01       0.00       0.00       0.00
                           -0.01       0.10       0.02      14.28      -0.00      -0.00       0.07      -0.05       0.14      -0.27

   71   3.1  0.5  0.5      -0.05      -0.10      27.01       0.05      -0.18     -16.59      -0.00       0.00       0.00       0.00
                            0.04     -26.11       0.12       0.06      -0.04       0.01     -17.98      -0.56      -0.16      66.86

   72   4.1  0.5  0.5      -0.01      34.29       0.08       0.00      -0.02      -0.04       1.28       0.00       0.00       0.00
                           -0.00      -0.07     -41.82       0.01       0.00      -7.77      -0.05      -0.01      77.87       0.19

   73   5.1  0.5  0.5      13.25      -0.03      -0.00       0.00     -12.20       0.00       0.02       0.00       0.00       0.00
                           -0.00       0.00      -0.01      28.30      -0.01      -0.02       0.00       0.14       0.44      -0.00

   74   6.1  0.5  0.5       0.00       0.04       0.01       2.62       0.00      -0.00      -0.03       0.00       0.00       0.00
                          -36.11      -0.01       0.02      -0.01       6.29       0.03      -0.00    -392.96      -0.60       0.02

   75   7.1  0.5  0.5       0.01      29.99       0.01      -0.02      -0.03       0.01     -20.86       0.00       0.00       0.00
                            0.04      -0.01      16.15       0.03       0.00      21.02      -0.00       0.67    -466.63       0.06

   76   8.1  0.5  0.5     167.04       0.00      -0.39       0.08     -36.72      -0.93      -0.00       0.00       0.00       0.00
                            0.07      -0.08      -0.00    -135.21       0.02       0.00      -0.88       0.00      -0.00      -0.99

   77   9.1  0.5  0.5      -0.07       0.01      -0.18     135.21      -0.02      -0.38       0.02       0.00       0.00       0.00
                           77.31      -0.05       0.01       0.07     152.56      -0.02      -0.36    -475.02       0.09      -0.51

   78  10.1  0.5  0.5       0.94      -0.04      76.29       0.32      -0.21     163.56       0.03       0.00       0.00       0.00
                            0.18      22.47       0.01      -0.76       0.36      -0.02     153.32      -1.12       0.13     215.34

   79  11.1  0.5  0.5      -0.05      -0.01     128.32      -0.00       0.01     -46.41      -0.08       0.00       0.00       0.00
                           -0.00     149.94      -0.03       0.04      -0.00       0.12     -68.54       0.00      -0.23     793.77

   80  12.1  0.5  0.5      -0.00      51.97       0.05      -0.02       0.00      -0.04     162.94       0.00       0.00       0.00
                           -0.01       0.11      60.42       0.00      -0.02    -160.00      -0.06       0.07     615.76       0.30

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.10    -235.73       0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.03     229.48

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.17      -0.02    -291.58
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     106.54       0.01

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.45       0.36      -1.17
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.74       0.43      -0.38

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     136.61       0.00      -0.15
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.06       0.00

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.24      -0.03    -116.21
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     211.19      -0.06

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.32      19.57      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.09     124.70

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     254.80      -0.12      -0.22
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.24      -0.07

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.04     192.57
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.55     307.87      -0.03

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04    -307.87       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.61      -0.01    -279.59

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03      -0.72       1.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     259.27       1.73      -0.66

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.12       0.00      -0.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -321.55      -0.09       0.00

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     239.45       0.05      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.19      -0.00       0.04


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5      -0.00    -508.66       0.00      -0.00      -0.00       0.00       0.00       1.03      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.05       0.00     507.34     314.44       0.00      -0.00      -0.00      -0.00      -0.00      -1.58
                          596.88      -0.00       0.02       0.10       0.00      -0.00       0.00      -0.00      -1.53      -0.00

    3   3.1  1.5  1.5     594.86      -0.00      -0.05      -0.03       0.00       0.00       0.00       0.00      -2.44       0.00
                           -0.06       0.00     277.94     597.56       0.00       0.00       0.00       0.00       0.00      -2.04

    4   4.1  1.5  1.5      -0.00     -67.64      -0.00      -0.00       0.00       0.00      -0.00      -0.35      -0.00      -0.00
                            0.00      -0.03       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    5   5.1  1.5  1.5      67.64      -0.00       0.03       0.02       0.00      -0.00       0.00      -0.00      -1.06      -0.00
                            0.03       0.00     139.74    -660.93      -0.00       0.00      -0.00       0.00      -0.00       1.64

    6   6.1  1.5  1.5       0.00      -0.03       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00    -139.74       0.00       0.00       0.00       0.00       0.00       0.16       0.00      -0.00

    7   7.1  1.5  1.5       0.00      -0.02       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00     660.93      -0.00      -0.00      -0.00      -0.00      -0.00      -2.51      -0.00      -0.00

    8   8.1  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.15    -304.53      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     304.53      -0.15      -0.00       0.00      -0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.15       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00    -304.53       0.00       0.00       0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00      -0.00      -0.00      -0.00     304.53      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.15      -0.00       0.00      -0.00       0.00       0.00

   11  11.1  1.5  1.5       0.35       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      99.64      -0.28
                            0.00      -0.00      -0.16       2.51       0.00      -0.00       0.00      -0.00      -0.15    -737.03

   12  12.1  1.5  1.5       0.00       1.06      -0.00      -0.00       0.00      -0.00       0.00     -99.64       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.15       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.28      -0.00       0.00
                            0.00      -1.64       0.00       0.00       0.00       0.00      -0.00     737.03      -0.00      -0.00

   14  14.1  1.5  1.5      -0.00       0.00      -1.58      -0.98       0.00       0.00      -0.00       0.00       0.29     535.98
                           -1.85       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     518.02      -0.30

   15  15.1  1.5  1.5      -1.82       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     898.36      -0.08
                            0.00      -0.00      -0.95      -1.16       0.00       0.00      -0.00       0.00      -0.05     498.06

   16  16.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.23      -0.00      -0.00
                            0.00      -1.31      -0.00       0.00       0.00       0.00      -0.00     430.30      -0.00      -0.00

   17  17.1  1.5  1.5       0.00      -1.18       0.00       0.00      -0.00       0.00      -0.00     354.16       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.22      -0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -420.55      44.66      -0.00      -0.00       0.00      -0.00       0.00       0.46

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     341.15      -0.00       0.00       0.00      -0.00      -0.00      -0.97      -0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     247.69    -238.09       0.00      -0.00       0.00      -0.00      -0.00       0.31

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -247.69      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.10       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          238.09       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.53      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    9082.74       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00    -175.82      -0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00     175.82      -0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00
                            0.00      -0.00       0.10       0.53       0.00       0.00      -0.00       0.00      -0.00    -176.91

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73
                           -0.31       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     176.91       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.06      -0.00      -0.00      -0.00       0.00      -0.00     328.12      -0.00      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.03       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.02       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      49.96      -0.05

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.51       0.53       0.00      -0.00      -0.00       0.00       0.15      68.96

   35   1.1  1.5 -0.5       0.00     587.34      -0.00       0.00       0.00      -0.00      -0.00      -1.19       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   36   2.1  1.5 -0.5      -0.06      -0.00    -585.83    -363.09      -0.00       0.00       0.00       0.00       0.00       1.82
                          689.22      -0.00       0.02       0.11       0.00      -0.00       0.00      -0.00      -1.76      -0.00

   37   3.1  1.5 -0.5    -686.88       0.00       0.06       0.04      -0.00      -0.00      -0.00      -0.00       2.82      -0.00
                           -0.06       0.00     320.94     690.00       0.00       0.00       0.00       0.00       0.00      -2.36

   38   4.1  1.5 -0.5      -0.00      78.11       0.00       0.00      -0.00      -0.00       0.00       0.40       0.00       0.00
                           -0.00      -0.04       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   39   5.1  1.5 -0.5     -78.11      -0.00      -0.04      -0.02      -0.00       0.00      -0.00       0.00       1.23       0.00
                            0.04      -0.00     161.36    -763.17      -0.00       0.00      -0.00       0.00      -0.00       1.89

   40   6.1  1.5 -0.5      -0.00       0.04       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00    -161.36      -0.00       0.00       0.00       0.00       0.00       0.18       0.00      -0.00

   41   7.1  1.5 -0.5      -0.00       0.02      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00     763.17      -0.00       0.00      -0.00      -0.00      -0.00      -2.90      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.18     351.64       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00     351.64      -0.18      -0.00       0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.18       0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00    -351.64      -0.00       0.00       0.00      -0.00      -0.00

   44  10.1  1.5 -0.5      -0.00       0.00       0.00       0.00    -351.64       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.18      -0.00      -0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5      -0.40      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -115.05       0.32
                            0.00      -0.00      -0.18       2.90       0.00      -0.00       0.00       0.00      -0.17    -851.05

   46  12.1  1.5 -0.5      -0.00      -1.23       0.00       0.00      -0.00       0.00      -0.00     115.05       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.17      -0.00       0.00

   47  13.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.32       0.00       0.00
                            0.00      -1.89       0.00       0.00       0.00       0.00      -0.00     851.05      -0.00       0.00

   48  14.1  1.5 -0.5       0.00      -0.00       1.82       1.13      -0.00      -0.00       0.00      -0.00      -0.33    -618.89
                           -2.14       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     598.16      -0.35

   49  15.1  1.5 -0.5       2.10      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00   -1037.33       0.10
                            0.00      -0.00      -1.10      -1.34       0.00       0.00      -0.00       0.00      -0.06     575.11

   50  16.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.26       0.00       0.00
                            0.00      -1.51      -0.00       0.00       0.00       0.00      -0.00     496.87      -0.00      -0.00

   51  17.1  1.5 -0.5      -0.00       1.37      -0.00      -0.00       0.00      -0.00       0.00    -408.95      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.25      -0.00      -0.00

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
                          -78.63       0.72      -0.01       0.01      -0.00      -0.00      -0.00       0.05      13.65       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06      -1.88    -360.53     -93.47       0.00      -0.00       0.00      -0.13      -0.00     -18.98

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     468.33      -1.43      -0.39      -0.00      -0.00       0.00      33.07      -0.02      -0.08

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       1.38      -0.19      -0.05      -0.00      -0.00       0.00       0.09       0.00      -0.01

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16      -0.02     564.74    -319.14       0.00      -0.00       0.00      -0.00       0.01      -2.46

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          465.04       0.11       0.24      -0.10      -0.00      -0.00      -0.00       0.01      12.53       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.63       0.06       0.39      -0.34      -0.00      -0.00      -0.00       0.03      -0.01      -0.01

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.47     272.11     729.77       1.73    -840.49       0.43      -0.91       0.01    -196.33

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -617.23       1.43      -0.00      -0.01       0.83      -0.42    -840.50      -0.39     197.18       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.45    -610.41       1.53       4.11    -351.79      -4.73      -1.97     164.01       0.46      -1.10

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     112.15      -0.08      -0.21    -904.56       0.24       0.00      32.49      -0.00       0.06

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09       0.16      -0.00      -0.00      -0.40       0.00       0.13       0.08      -0.03       0.00

   81   1.1  0.5 -0.5      -0.04      -0.02       0.31       0.19       0.00       0.00       0.00       0.01      -0.01       0.02
                           -0.36    -111.44       0.03      -0.07      -0.00      -0.00       0.00     -13.50      -0.02      -0.00

   82   2.1  0.5 -0.5      -0.15    -191.84      -0.81      -0.50       0.00      -0.00       0.00      -7.49      -0.02      -0.06
                            0.95      -0.02       0.08       0.09       0.00      -0.00      -0.00      -0.01       0.06       0.01

   83   3.1  0.5 -0.5      -0.65      -0.77     201.05     124.61       0.00       0.00       0.00      -0.03      -0.06      15.60
                         -236.54       0.23       0.28       0.86       0.00       0.00       0.00       0.03     -15.07       0.07

   84   4.1  0.5 -0.5     216.60      -0.10       0.59       0.36       0.00       0.00      -0.00      -0.00      19.80       0.05
                           -0.69      -0.01     -88.25    -304.91       0.00      -0.00       0.00      -0.00      -0.04     -24.15

   85   5.1  0.5 -0.5      -0.09      67.46      -0.01      -0.00       0.00      -0.00       0.00       7.65      -0.02      -0.00
                            0.01       0.09       0.08      -0.17       0.00      -0.00      -0.00      -0.00       0.00      -0.01

   86   6.1  0.5 -0.5       0.12       0.05       0.05       0.03       0.00       0.00      -0.00       0.00       0.02       0.00
                           -0.06    -243.41      -0.11       0.24      -0.00       0.00       0.00     -20.85      -0.00       0.01

   87   7.1  0.5 -0.5      96.83      -0.01       0.04       0.02       0.00      -0.00      -0.00       0.00      17.31       0.00
                           -0.04       0.27     -86.09     178.06      -0.00       0.00      -0.00       0.02      -0.01       9.32

   88   8.1  0.5 -0.5       0.00    -338.48      -1.50       1.75     420.24       2.68      -0.00      96.44       0.00      -0.23
                            1.29       0.02       0.00      -0.00       0.00       0.00       1.82       0.04      -0.05      -0.00

   89   9.1  0.5 -0.5      -0.05      -0.01      -0.60       0.76      -0.01       1.13       0.06      -0.04       0.00      -0.10
                            0.56    -271.08      -0.06       0.01    -420.25      -0.06       0.71      44.64      -0.03       0.01

   90  10.1  0.5 -0.5      -0.04      -1.91     254.86    -322.34       2.37    -479.61       0.29       0.54      -0.02      44.05
                         -239.30      -0.64      -0.04       0.01      -0.99      -0.20    -303.72       0.11      12.97       0.00

   91  11.1  0.5 -0.5       0.15       0.10    -225.56    -213.70      -0.12     -73.80      -0.17      -0.03      -0.01      74.08
                         -193.71       0.00       0.19      -0.02       0.00       0.39     378.48      -0.00      86.57      -0.02

   92  12.1  0.5 -0.5    -307.14       0.00      -0.14      -0.06      -0.00       0.23     420.27      -0.00      30.00       0.03
                           -0.07       0.04    -387.33      40.52       0.06    -420.27       0.43      -0.01       0.07      34.89


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00       2.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -0.00      -0.00       0.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -1.05       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00      -0.00      -0.00       0.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       1.82       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.85      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00      -0.00      -0.00       1.18       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       1.58      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.98      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5      -0.00      -0.00       0.23    -354.16       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -430.30      -0.22       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.29    -898.36       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -518.02       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5    -535.98       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.30    -498.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00      -0.00    -329.08      -0.24       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.13     356.68       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00      -0.00       0.32    -215.66       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -111.75      -0.07       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5     329.08      -0.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.13     111.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.24     215.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -356.68       0.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.02    -603.89      -0.00    -587.34       0.00
                            0.00       0.00      -1.23      -0.00      -0.00       2.16      -0.00       0.00       0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.02      -0.00       0.00       0.06       0.00     585.83
                           -0.00      -0.46      -0.00      -0.00      -2.16       0.00       0.00     689.22      -0.00       0.02

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00     603.89      -0.00       0.00     686.88      -0.00      -0.06
                            0.15       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.06       0.00     320.94

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.06    -686.88      -0.00     -78.11      -0.00
                           -0.00       0.00       1.02       0.00      -0.00    -689.22       0.06       0.00      -0.04       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00     587.34      -0.00       0.00      78.11      -0.00       0.04
                            1.06      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.04       0.00     161.36

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    -585.83       0.06       0.00      -0.04       0.00
                            0.00       0.00      -0.00       1.51       0.00      -0.02    -320.94      -0.00    -161.36       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    -363.09       0.04       0.00      -0.02       0.00
                            0.00      -0.00      -0.00      -0.53      -0.00      -0.11    -690.00      -0.00     763.17      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -1.19       0.00      -0.00       0.40       0.00       0.00
                         -328.12      -0.03       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.18

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       2.82       0.00       1.23      -0.00
                            0.00      -0.00     -49.96      -0.15       0.00       1.76      -0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       1.82      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.05     -68.96      -0.00       0.00       2.36       0.00      -1.89       0.00

   31  14.1  1.5  0.5    5417.73       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -1.82
                           -0.00     155.55       0.00       0.00       0.01      -0.00       0.00      -2.14       0.00      -0.00

   32  15.1  1.5  0.5       0.00    5417.73       0.00       0.00      -2.33       0.00       0.00      -2.10       0.00       0.00
                         -155.55       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -1.10

   33  16.1  1.5  0.5       0.00       0.00    5417.73       0.00      -0.00      -1.12       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00     539.53      -0.00       0.00       0.07       0.00      -1.51      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00    5417.73      -0.00      -0.00      -0.34       0.00      -1.37       0.00
                           -0.00       0.00    -539.53      -0.00       0.00       1.21      -0.00       0.00      -0.00      -0.00

   35   1.1  1.5 -0.5      -0.00      -2.33      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     420.55

   36   2.1  1.5 -0.5       0.00       0.00      -1.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -1.21       0.00       0.00     -48.70      -0.00    -341.15       0.00

   37   3.1  1.5 -0.5      -0.00       0.00       0.00      -0.34       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.07       0.00       0.00      48.70       0.00       0.00       0.04      -0.00

   38   4.1  1.5 -0.5      -0.00      -2.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.14      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -247.69

   39   5.1  1.5 -0.5       0.00       0.00       0.00      -1.37       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.51       0.00       0.00     341.15      -0.04      -0.00      -0.00      -0.00

   40   6.1  1.5 -0.5      -1.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.10       0.00       0.00    -420.55      -0.00       0.00     247.69       0.00      -0.00

   41   7.1  1.5 -0.5      -1.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.34      -0.00       0.00      44.66       0.00       0.00    -238.09      -0.00       0.00

   42   8.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00      -0.26     408.95       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -496.87      -0.25      -0.00      -0.97       0.00      -0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.33    1037.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -598.16       0.06       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.10

   47  13.1  1.5 -0.5     618.89      -0.10      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.35    -575.11       0.00       0.00       0.46      -0.00      -0.00       0.31      -0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00     379.99       0.28       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.14     411.86       0.00      -0.00       0.15      -0.00       1.06       0.00

   49  15.1  1.5 -0.5      -0.00      -0.00      -0.37     249.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -129.04      -0.08       0.00      -0.46       0.00       0.00      -0.00       0.00

   50  16.1  1.5 -0.5    -379.99       0.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14     129.04      -0.00       0.00      -1.23      -0.00      -0.00       1.02      -0.00      -0.00

   51  17.1  1.5 -0.5      -0.28    -249.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -411.86       0.08      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       1.51

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.02     522.98       0.00     508.66      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       1.87      -0.00       0.00       0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.02      -0.00      -0.00      -0.05      -0.00    -507.34
                           -0.00      -0.00      -0.00      -0.00      -1.87      -0.00       0.00     596.88      -0.00       0.02

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00    -522.98       0.00       0.00    -594.86       0.00       0.05
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.06       0.00     277.94

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.05     594.86      -0.00      67.64       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -596.88       0.06      -0.00      -0.03       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00    -508.66       0.00      -0.00     -67.64      -0.00      -0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.03      -0.00     139.74

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     507.34      -0.05      -0.00       0.03       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.02    -277.94      -0.00    -139.74      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00     314.44      -0.03      -0.00       0.02      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.10    -597.56      -0.00     660.93      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       1.03      -0.00       0.00      -0.35      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.16

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.44      -0.00      -1.06       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       1.53      -0.00      -0.00       0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -1.58       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.04       0.00      -1.64       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       1.58
                           -0.00      -0.00      -0.00      -0.00       0.01      -0.00       0.00      -1.85       0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       2.01      -0.00      -0.00       1.82      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.95

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.97      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.06       0.00      -1.31      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.30      -0.00       1.18      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       1.05      -0.00       0.00      -0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.10    -235.73       0.02      -0.04      -0.02       0.31
                            0.01       0.02       0.01     -30.73      -0.00      -0.03    -229.48       0.36     111.44      -0.03

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.17      -0.02    -291.58      -0.15    -191.84      -0.81
                            0.01      -0.06      21.68       0.01       0.00    -106.54      -0.01      -0.95       0.02      -0.08

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.45       0.36      -1.17      -0.65      -0.77     201.05
                            0.01      15.68       0.09       0.04      -0.74      -0.43       0.38     236.54      -0.23      -0.28

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00     136.61       0.00      -0.15     216.60      -0.10       0.59
                            6.02       0.04       0.01       0.00      -0.00      -0.06      -0.00       0.69       0.01      88.25

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.24      -0.03    -116.21      -0.09      67.46      -0.01
                            0.03      -0.00     -50.13      -0.02       0.00    -211.19       0.06      -0.01      -0.09      -0.08

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.32      19.57      -0.01       0.12       0.05       0.05
                           -0.05       0.00      -0.02      45.41      -0.00      -0.09    -124.70       0.06     243.41       0.11

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00     254.80      -0.12      -0.22      96.83      -0.01       0.04
                          -36.10       0.01      -0.04      -0.07      -0.00      -0.24       0.07       0.04      -0.27      86.09

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.04     192.57       0.00    -338.48      -1.50
                           -0.00      -0.02     -21.37      -0.00       1.55    -307.87       0.03      -1.29      -0.02      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.04    -307.87       0.03      -0.05      -0.01      -0.60
                           -0.02       0.01       0.06     -11.07       0.61       0.01     279.59      -0.56     271.08       0.06

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.03      -0.72       1.08      -0.04      -1.91     254.86
                            0.07      -6.28      -0.12      -0.03    -259.27      -1.73       0.66     239.30       0.64       0.04

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.12       0.00      -0.05       0.15       0.10    -225.56
                            0.06    -200.65       0.01       0.00     321.55       0.09      -0.00     193.71      -0.00      -0.19

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00     239.45       0.05      -0.00    -307.14       0.00      -0.14
                         -156.12      -0.07       0.00       0.00       0.19       0.00      -0.04       0.07      -0.04     387.33

   81   1.1  0.5 -0.5     -18.24       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      14.40      -0.00      -0.02     427.37       0.18       0.10     -78.63       0.72      -0.01

   82   2.1  0.5 -0.5      -0.01     -25.95       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.24      -0.00      -0.00       0.04      -0.05       0.14      -0.27       0.06      -1.88    -360.53

   83   3.1  0.5 -0.5       0.03      -0.10      -9.58      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.02       0.01     -10.38      -0.56      -0.16      66.86       0.01     468.33      -1.43

   84   4.1  0.5 -0.5       0.00      -0.01      -0.02       0.74       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -4.48      -0.03      -0.01      77.87       0.19       0.01       1.38      -0.19

   85   5.1  0.5 -0.5       0.00      -7.04       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           16.34      -0.00      -0.01       0.00       0.14       0.44      -0.00      -0.16      -0.02     564.74

   86   6.1  0.5 -0.5       1.51       0.00      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       3.63       0.02      -0.00    -392.96      -0.60       0.02     465.04       0.11       0.24

   87   7.1  0.5 -0.5      -0.01      -0.02       0.00     -12.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00      12.13      -0.00       0.67    -466.63       0.06      -0.63       0.06       0.39

   88   8.1  0.5 -0.5       0.05     -21.20      -0.54      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -78.06       0.01       0.00      -0.51       0.00      -0.00      -0.99       0.00       3.47     272.11

   89   9.1  0.5 -0.5      78.07      -0.01      -0.22       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04      88.08      -0.01      -0.21    -475.02       0.09      -0.51    -617.23       1.43      -0.00

   90  10.1  0.5 -0.5       0.18      -0.12      94.43       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.44       0.21      -0.01      88.52      -1.12       0.13     215.34      -1.45    -610.41       1.53

   91  11.1  0.5 -0.5      -0.00       0.01     -26.80      -0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.07     -39.57       0.00      -0.23     793.77       0.00     112.15      -0.08

   92  12.1  0.5 -0.5      -0.01       0.00      -0.02      94.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01     -92.37      -0.04       0.07     615.76       0.30       0.09       0.16      -0.00


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

   18   1.1  1.5  0.5      -0.00      -0.00       0.00       0.00       1.19      -0.00      -0.00       0.00       2.33       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.01      -0.00       0.00

   19   2.1  1.5  0.5     363.09       0.00      -0.00      -0.00      -0.00      -0.00      -1.82      -0.00      -0.00       1.12
                            0.11       0.00      -0.00       0.00      -0.00      -1.76      -0.00       0.00      -0.00      -0.00

   20   3.1  1.5  0.5      -0.04       0.00       0.00       0.00       0.00      -2.82       0.00       0.00      -0.00      -0.00
                          690.00       0.00       0.00       0.00       0.00       0.00      -2.36      -0.00      -0.00      -0.07

   21   4.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.40      -0.00      -0.00       0.00       2.10       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       2.14      -0.00      -0.00

   22   5.1  1.5  0.5       0.02       0.00      -0.00       0.00      -0.00      -1.23      -0.00      -0.00      -0.00      -0.00
                         -763.17      -0.00       0.00      -0.00       0.00      -0.00       1.89      -0.00       0.00       1.51

   23   6.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       1.82      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.18       0.00      -0.00       0.00       1.10       0.00

   24   7.1  1.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       1.13      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -2.90      -0.00      -0.00      -0.00       1.34      -0.00

   25   8.1  1.5  0.5       0.00      -0.00      -0.18    -351.64      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00     351.64      -0.18      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.18       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00    -351.64       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   27  10.1  1.5  0.5      -0.00     351.64      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.18      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00     115.05      -0.32      -0.00      -0.00       0.26
                            2.90       0.00      -0.00       0.00      -0.00      -0.17    -851.05       0.00      -0.00    -496.87

   29  12.1  1.5  0.5      -0.00       0.00      -0.00       0.00    -115.05       0.00       0.00      -0.33   -1037.33       0.00
                            0.00      -0.00       0.00      -0.00       0.17       0.00       0.00    -598.16       0.06       0.00

   30  13.1  1.5  0.5       0.00      -0.00       0.00      -0.00       0.32      -0.00       0.00    -618.89       0.10       0.00
                            0.00       0.00       0.00      -0.00     851.05      -0.00      -0.00       0.35    -575.11       0.00

   31  14.1  1.5  0.5      -1.13       0.00       0.00      -0.00       0.00       0.33     618.89       0.00      -0.00    -379.99
                            0.00      -0.00      -0.00      -0.00      -0.00     598.16      -0.35      -0.00      -0.00      -0.14

   32  15.1  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.00    1037.33      -0.10       0.00      -0.00       0.37
                           -1.34       0.00       0.00      -0.00       0.00      -0.06     575.11       0.00       0.00    -129.04

   33  16.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.26      -0.00      -0.00     379.99      -0.37       0.00
                            0.00       0.00       0.00      -0.00     496.87      -0.00      -0.00       0.14     129.04       0.00

   34  17.1  1.5  0.5       0.00      -0.00       0.00      -0.00     408.95       0.00      -0.00       0.28     249.02       0.00
                           -0.00      -0.00       0.00      -0.00       0.25      -0.00      -0.00    -411.86       0.08      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.66       0.00       0.00      -0.00       0.00      -0.00      -0.46      -0.00      -0.00       1.23

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.97       0.00       0.00       0.00       0.46       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.15      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          238.09      -0.00       0.00      -0.00       0.00       0.00      -0.31       0.00      -0.00      -1.02

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -1.06       0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.10      -0.00      -0.00      -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.53       0.00      -0.00       0.00       0.00

   42   8.1  1.5 -0.5       0.00    9082.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00    9082.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     175.82       0.00       0.00      -0.00       0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    9082.74       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -175.82       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     328.12       0.03      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                           -0.53      -0.00      -0.00       0.00      -0.00       0.00     176.91      -0.00       0.00      49.96

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00    -176.91      -0.00      -0.00       0.00      -0.05

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                            0.00       0.00      -0.00       0.00    -328.12       0.00       0.00       0.00    -155.55      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00
                           -0.00       0.00      -0.00      -0.00      -0.03      -0.00      -0.00     155.55      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73
                           -0.00       0.00       0.00      -0.00       0.00     -49.96       0.05       0.00       0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.53      -0.00       0.00       0.00      -0.00      -0.15     -68.96       0.00      -0.00     539.53

   52   1.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -1.03       0.00       0.00      -0.00      -2.01      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.01      -0.00       0.00

   53   2.1  1.5 -1.5    -314.44      -0.00       0.00       0.00       0.00       0.00       1.58       0.00       0.00      -0.97
                            0.10       0.00      -0.00       0.00      -0.00      -1.53      -0.00       0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.03      -0.00      -0.00      -0.00      -0.00       2.44      -0.00      -0.00       0.00       0.00
                          597.56       0.00       0.00       0.00       0.00       0.00      -2.04      -0.00      -0.00      -0.06

   55   4.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.35       0.00       0.00      -0.00      -1.82      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       1.85      -0.00      -0.00

   56   5.1  1.5 -1.5      -0.02      -0.00       0.00      -0.00       0.00       1.06       0.00       0.00       0.00       0.00
                         -660.93      -0.00       0.00      -0.00       0.00      -0.00       1.64      -0.00       0.00       1.31

   57   6.1  1.5 -1.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -1.58       0.00       0.00
                            0.00       0.00       0.00       0.00       0.16       0.00      -0.00       0.00       0.95       0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.98       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -2.51      -0.00      -0.00      -0.00       1.16      -0.00

   59   8.1  1.5 -1.5      -0.00      -0.00       0.15     304.53       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00     304.53      -0.15      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5      -0.00      -0.15       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00    -304.53      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00    -304.53       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.15      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00      -0.00     -99.64       0.28       0.00       0.00      -0.23
                            2.51       0.00      -0.00       0.00       0.00      -0.15    -737.03       0.00      -0.00    -430.30

   63  12.1  1.5 -1.5       0.00      -0.00       0.00      -0.00      99.64       0.00      -0.00       0.29     898.36      -0.00
                            0.00      -0.00       0.00      -0.00       0.15      -0.00       0.00    -518.02       0.05       0.00

   64  13.1  1.5 -1.5      -0.00       0.00      -0.00       0.00      -0.28       0.00       0.00     535.98      -0.08      -0.00
                            0.00       0.00       0.00      -0.00     737.03      -0.00       0.00       0.30    -498.06       0.00

   65  14.1  1.5 -1.5       0.98      -0.00      -0.00       0.00      -0.00      -0.29    -535.98       0.00       0.00     329.08
                            0.00      -0.00      -0.00      -0.00      -0.00     518.02      -0.30       0.00      -0.00      -0.13

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00      -0.00    -898.36       0.08      -0.00      -0.00      -0.32
                           -1.16       0.00       0.00      -0.00       0.00      -0.05     498.06       0.00      -0.00    -111.75

   67  16.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00       0.23       0.00       0.00    -329.08       0.32       0.00
                            0.00       0.00       0.00      -0.00     430.30      -0.00      -0.00       0.13     111.75      -0.00

   68  17.1  1.5 -1.5      -0.00       0.00      -0.00       0.00    -354.16      -0.00       0.00      -0.24    -215.66      -0.00
                           -0.00      -0.00       0.00      -0.00       0.22      -0.00      -0.00    -356.68       0.07      -0.00

   69   1.1  0.5  0.5       0.19       0.00       0.00       0.00       0.01      -0.01       0.02     -18.24       0.00      -0.01
                            0.07       0.00       0.00      -0.00      13.50       0.02       0.00       0.00     -14.40       0.00

   70   2.1  0.5  0.5      -0.50       0.00      -0.00       0.00      -7.49      -0.02      -0.06      -0.01     -25.95       0.04
                           -0.09      -0.00       0.00       0.00       0.01      -0.06      -0.01      -8.24       0.00       0.00

   71   3.1  0.5  0.5     124.61       0.00       0.00       0.00      -0.03      -0.06      15.60       0.03      -0.10      -9.58
                           -0.86      -0.00      -0.00      -0.00      -0.03      15.07      -0.07      -0.03       0.02      -0.01

   72   4.1  0.5  0.5       0.36       0.00       0.00      -0.00      -0.00      19.80       0.05       0.00      -0.01      -0.02
                          304.91      -0.00       0.00      -0.00       0.00       0.04      24.15      -0.00      -0.00       4.48

   73   5.1  0.5  0.5      -0.00       0.00      -0.00       0.00       7.65      -0.02      -0.00       0.00      -7.04       0.00
                            0.17      -0.00       0.00       0.00       0.00      -0.00       0.01     -16.34       0.00       0.01

   74   6.1  0.5  0.5       0.03       0.00       0.00      -0.00       0.00       0.02       0.00       1.51       0.00      -0.00
                           -0.24       0.00      -0.00      -0.00      20.85       0.00      -0.01       0.01      -3.63      -0.02

   75   7.1  0.5  0.5       0.02       0.00      -0.00      -0.00       0.00      17.31       0.00      -0.01      -0.02       0.00
                         -178.06       0.00      -0.00       0.00      -0.02       0.01      -9.32      -0.02      -0.00     -12.13

   76   8.1  0.5  0.5       1.75     420.24       2.68      -0.00      96.44       0.00      -0.23       0.05     -21.20      -0.54
                            0.00      -0.00      -0.00      -1.82      -0.04       0.05       0.00      78.06      -0.01      -0.00

   77   9.1  0.5  0.5       0.76      -0.01       1.13       0.06      -0.04       0.00      -0.10      78.07      -0.01      -0.22
                           -0.01     420.25       0.06      -0.71     -44.64       0.03      -0.01      -0.04     -88.08       0.01

   78  10.1  0.5  0.5    -322.34       2.37    -479.61       0.29       0.54      -0.02      44.05       0.18      -0.12      94.43
                           -0.01       0.99       0.20     303.72      -0.11     -12.97      -0.00       0.44      -0.21       0.01

   79  11.1  0.5  0.5    -213.70      -0.12     -73.80      -0.17      -0.03      -0.01      74.08      -0.00       0.01     -26.80
                            0.02      -0.00      -0.39    -378.48       0.00     -86.57       0.02      -0.02       0.00      -0.07

   80  12.1  0.5  0.5      -0.06      -0.00       0.23     420.27      -0.00      30.00       0.03      -0.01       0.00      -0.02
                          -40.52      -0.06     420.27      -0.43       0.01      -0.07     -34.89      -0.00       0.01      92.37

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00      -0.00       0.05      13.65       0.00       0.01       0.02       0.01

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -93.47       0.00      -0.00       0.00      -0.13      -0.00     -18.98       0.01      -0.06      21.68

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.39      -0.00      -0.00       0.00      33.07      -0.02      -0.08       0.01      15.68       0.09

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05      -0.00      -0.00       0.00       0.09       0.00      -0.01       6.02       0.04       0.01

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -319.14       0.00      -0.00       0.00      -0.00       0.01      -2.46       0.03      -0.00     -50.13

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10      -0.00      -0.00      -0.00       0.01      12.53       0.00      -0.05       0.00      -0.02

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.34      -0.00      -0.00      -0.00       0.03      -0.01      -0.01     -36.10       0.01      -0.04

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          729.77       1.73    -840.49       0.43      -0.91       0.01    -196.33      -0.00      -0.02     -21.37

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.83      -0.42    -840.50      -0.39     197.18       0.00      -0.02       0.01       0.06

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.11    -351.79      -4.73      -1.97     164.01       0.46      -1.10       0.07      -6.28      -0.12

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21    -904.56       0.24       0.00      32.49      -0.00       0.06       0.06    -200.65       0.01

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.40       0.00       0.13       0.08      -0.03       0.00    -156.12      -0.07       0.00


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
                           -1.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5       1.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5    -408.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          411.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5    -249.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00      -0.02    -522.98      -0.00    -508.66       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       1.87      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.02      -0.00       0.00       0.05       0.00     507.34     314.44       0.00      -0.00
                            0.00      -1.87       0.00       0.00     596.88      -0.00       0.02       0.10       0.00      -0.00

   37   3.1  1.5 -0.5       0.00     522.98      -0.00       0.00     594.86      -0.00      -0.05      -0.03       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.06       0.00     277.94     597.56       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00      -0.05    -594.86      -0.00     -67.64      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -596.88       0.06       0.00      -0.03       0.00       0.00      -0.00      -0.00

   39   5.1  1.5 -0.5       0.00     508.66      -0.00       0.00      67.64      -0.00       0.03       0.02       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.03       0.00     139.74    -660.93      -0.00       0.00

   40   6.1  1.5 -0.5       0.00      -0.00    -507.34       0.05       0.00      -0.03       0.00      -0.00       0.00      -0.00
                           -1.51       0.00      -0.02    -277.94      -0.00    -139.74       0.00       0.00       0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00    -314.44       0.03       0.00      -0.02       0.00      -0.00      -0.00      -0.00
                            0.53      -0.00      -0.10    -597.56      -0.00     660.93      -0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.15
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     304.53

   43   9.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.15       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -304.53       0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     304.53      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.15      -0.00

   45  11.1  1.5 -0.5       0.00      -1.03       0.00      -0.00       0.35       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.16       2.51       0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       2.44       0.00       1.06      -0.00      -0.00       0.00      -0.00
                            0.15       0.00       1.53      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       1.58      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           68.96      -0.00       0.00       2.04       0.00      -1.64       0.00       0.00       0.00       0.00

   48  14.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00      -1.58      -0.98       0.00       0.00
                           -0.00       0.01      -0.00       0.00      -1.85       0.00      -0.00       0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00      -2.01       0.00       0.00      -1.82       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.95      -1.16       0.00       0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.97       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                         -539.53      -0.00       0.00       0.06       0.00      -1.31      -0.00       0.00       0.00       0.00

   51  17.1  1.5 -0.5    5417.73      -0.00      -0.00      -0.30       0.00      -1.18       0.00       0.00      -0.00       0.00
                            0.00       0.00       1.05      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   52   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1261.64    -133.97       0.00       0.00

   53   2.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.05       0.00       0.00    -146.10      -0.00   -1023.46       0.00      -0.00      -0.00       0.00

   54   3.1  1.5 -1.5      -0.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     146.10       0.00       0.00       0.11      -0.00      -0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00    -743.08     714.28      -0.00       0.00

   56   5.1  1.5 -1.5      -1.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1023.46      -0.11      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1261.64      -0.00       0.00     743.08       0.00      -0.00      -0.00      -0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     133.97       0.00       0.00    -714.28      -0.00       0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   61  10.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -527.46

   62  11.1  1.5 -1.5     354.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.22      -0.00      -2.90       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.30      -1.60      -0.00      -0.00

   64  13.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.39      -0.00      -0.00       0.94      -0.00       0.00      -0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          356.68       0.00      -0.00       0.45      -0.00       3.18       0.00       0.00       0.00      -0.00

   66  15.1  1.5 -1.5     215.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07       0.00      -1.37       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.69      -0.00      -0.00       3.06      -0.00      -0.00      -0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       4.53      -1.59      -0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.38      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5     -12.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.51      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.21      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.52      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           39.57      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5      94.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5 -0.5       0.00      -0.17    -408.30       0.04      -0.06      -0.03       0.53       0.33       0.00       0.00
                          -30.73      -0.00      -0.04    -397.47       0.63     193.01      -0.06       0.12       0.00       0.00

   82   2.1  0.5 -0.5       0.00      -0.30      -0.03    -505.03      -0.26    -332.27      -1.40      -0.87       0.00      -0.00
                            0.01       0.01    -184.53      -0.01      -1.64       0.04      -0.14      -0.15      -0.00       0.00

   83   3.1  0.5 -0.5       0.00      -0.78       0.62      -2.03      -1.13      -1.33     348.23     215.83       0.00       0.00
                            0.04      -1.28      -0.75       0.66     409.69      -0.39      -0.48      -1.49      -0.00      -0.00

   84   4.1  0.5 -0.5       0.00     236.61       0.00      -0.27     375.16      -0.18       1.02       0.63       0.00       0.00
                            0.00      -0.00      -0.10      -0.00       1.20       0.01     152.85     528.12      -0.00       0.00

   85   5.1  0.5 -0.5       0.00      -0.42      -0.04    -201.29      -0.16     116.84      -0.01      -0.01       0.00      -0.00
                           -0.02       0.00    -365.79       0.10      -0.01      -0.16      -0.14       0.29      -0.00       0.00

   86   6.1  0.5 -0.5       0.00       0.56      33.90      -0.01       0.20       0.08       0.08       0.05       0.00       0.00
                           45.41      -0.00      -0.15    -215.98       0.10     421.60       0.19      -0.41       0.00      -0.00

   87   7.1  0.5 -0.5       0.00     441.33      -0.20      -0.39     167.71      -0.02       0.07       0.04       0.00      -0.00
                           -0.07      -0.00      -0.42       0.13       0.08      -0.47     149.11    -308.42       0.00      -0.00

   88   8.1  0.5 -0.5       0.00      -0.00       0.07     333.54       0.00    -586.26      -2.59       3.04     727.89       4.64
                           -0.00       2.68    -533.24       0.05      -2.24      -0.03      -0.00       0.00      -0.00      -0.00

   89   9.1  0.5 -0.5       0.00       0.06    -533.25       0.05      -0.08      -0.02      -1.04       1.31      -0.01       1.95
                          -11.07       1.06       0.03     484.27      -0.97     469.52       0.10      -0.01     727.89       0.11

   90  10.1  0.5 -0.5       0.00       0.05      -1.25       1.88      -0.06      -3.30     441.43    -558.30       4.10    -830.71
                           -0.03    -449.07      -3.00       1.14     414.48       1.10       0.08      -0.01       1.71       0.35

   91  11.1  0.5 -0.5       0.00      -0.20       0.00      -0.09       0.26       0.17    -390.68    -370.14      -0.20    -127.83
                            0.00     556.95       0.15      -0.00     335.51      -0.00      -0.32       0.03      -0.00      -0.68

   92  12.1  0.5 -0.5       0.00     414.73       0.08      -0.00    -531.97       0.00      -0.24      -0.11      -0.00       0.40
                            0.00       0.32       0.00      -0.07       0.11      -0.07     670.88     -70.18      -0.11     727.92


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.17      -0.30
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -408.30      -0.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.04    -184.53

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04    -505.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -397.47      -0.01

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.06      -0.26
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.63      -1.64

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03    -332.27
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     193.01       0.04

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.53      -1.40
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.06      -0.14

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.33      -0.87
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.12      -0.15

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02     -12.97
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      23.38       0.01

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.10

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.11
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.02

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -31.59      -0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     -14.28

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     -44.94
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -24.95       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03       0.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03      -0.07

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -427.37       0.05

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.18      -0.14

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.10       0.27

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      78.63      -0.06

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.72       1.88

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     360.53

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      93.47

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.05       0.13

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.65       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      18.98

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.01

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02       0.06

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01     -21.68

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      30.73      -0.01

   35   1.1  1.5 -0.5       0.00       1.03      -0.00      -0.00       0.00       2.01       0.00       0.00      -0.10      -0.17
                           -0.00       0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.00       0.00      -0.00

   36   2.1  1.5 -0.5      -0.00      -0.00      -0.00      -1.58      -0.00      -0.00       0.97       0.00    -235.73      -0.02
                            0.00      -0.00      -1.53      -0.00       0.00      -0.00      -0.00      -1.05       0.03     106.54

   37   3.1  1.5 -0.5       0.00       0.00      -2.44       0.00       0.00      -0.00      -0.00       0.30       0.02    -291.58
                            0.00       0.00       0.00      -2.04      -0.00      -0.00      -0.06       0.00     229.48       0.01

   38   4.1  1.5 -0.5      -0.00      -0.35      -0.00      -0.00       0.00       1.82       0.00      -0.00      -0.04      -0.15
                            0.00      -0.00       0.00      -0.00       1.85      -0.00      -0.00      -0.00      -0.36       0.95

   39   5.1  1.5 -0.5       0.00      -0.00      -1.06      -0.00      -0.00      -0.00      -0.00       1.18      -0.02    -191.84
                           -0.00       0.00      -0.00       1.64      -0.00       0.00       1.31       0.00    -111.44      -0.02

   40   6.1  1.5 -0.5       0.00      -0.00       0.00       0.00       1.58      -0.00      -0.00      -0.00       0.31      -0.81
                            0.00       0.16       0.00      -0.00       0.00       0.95       0.00       0.00       0.03       0.08

   41   7.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.98      -0.00      -0.00      -0.00       0.19      -0.50
                           -0.00      -2.51      -0.00      -0.00      -0.00       1.16      -0.00       0.00      -0.07       0.09

   42   8.1  1.5 -0.5    -304.53      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.15      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   45  11.1  1.5 -0.5      -0.00      -0.00      99.64      -0.28      -0.00      -0.00       0.23    -354.16       0.01      -7.49
                            0.00      -0.00      -0.15    -737.03       0.00      -0.00    -430.30      -0.22     -13.50      -0.01

   46  12.1  1.5 -0.5       0.00     -99.64       0.00       0.00      -0.29    -898.36       0.00      -0.00      -0.01      -0.02
                           -0.00       0.15       0.00       0.00    -518.02       0.05       0.00       0.00      -0.02       0.06

   47  13.1  1.5 -0.5      -0.00       0.28      -0.00       0.00    -535.98       0.08       0.00       0.00       0.02      -0.06
                           -0.00     737.03      -0.00      -0.00       0.30    -498.06       0.00       0.00      -0.00       0.01

   48  14.1  1.5 -0.5      -0.00       0.00       0.29     535.98       0.00      -0.00    -329.08      -0.24     -18.24      -0.01
                           -0.00      -0.00     518.02      -0.30      -0.00      -0.00      -0.13     356.68      -0.00       8.24

   49  15.1  1.5 -0.5      -0.00       0.00     898.36      -0.08       0.00      -0.00       0.32    -215.66       0.00     -25.95
                           -0.00       0.00      -0.05     498.06       0.00       0.00    -111.75      -0.07      14.40      -0.00

   50  16.1  1.5 -0.5       0.00      -0.23      -0.00      -0.00     329.08      -0.32       0.00      -0.00      -0.01       0.04
                           -0.00     430.30      -0.00      -0.00       0.13     111.75       0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5      -0.00     354.16       0.00      -0.00       0.24     215.66       0.00       0.00       0.00       0.00
                           -0.00       0.22      -0.00      -0.00    -356.68       0.07      -0.00      -0.00      -0.02       0.04

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -1.39      -0.00      -0.00       3.69       0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.90       0.00       0.00       0.00       1.37       0.00       0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.45      -0.00       0.00       0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.94       0.00      -0.00      -3.06      -0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -3.18       0.00       0.00      -0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.30      -0.00      -0.00      -0.00       0.00      -4.53       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       1.60       0.00      -0.00       0.00       0.00       1.59       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          527.46       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5    9082.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     984.35       0.08      -0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     530.72      -0.00       0.00     149.87       0.46       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -530.72      -0.00      -0.00       0.00      -0.16     206.87       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                            0.00    -984.35       0.00       0.00       0.00    -466.65      -0.00      -0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                           -0.00      -0.08      -0.00      -0.00     466.65      -0.00      -0.00       0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                           -0.00       0.00    -149.87       0.16       0.00       0.00      -0.00   -1618.60       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                            0.00      -0.00      -0.46    -206.87       0.00      -0.00    1618.60       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12392.20       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     491.08

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12392.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -491.08      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.21      -0.91

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.09      -0.45

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     375.08      -0.03

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.17    -198.41

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.86       3.10

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -459.03      -0.04

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     494.22

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.72       1.16

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.22       0.36

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.66       1.66

   81   1.1  0.5 -0.5       0.00       0.02      -0.01       0.04     -31.59       0.01      -0.03       0.01      -0.00      -2.39
                           -0.00      23.38       0.04       0.01       0.01     -24.95       0.01       0.03       0.00       0.79

   82   2.1  0.5 -0.5       0.00     -12.97      -0.03      -0.11      -0.01     -44.94       0.07       0.01       2.39      -0.00
                            0.00       0.01      -0.10      -0.02     -14.28       0.00       0.00      -0.07      -0.79      -0.00

   83   3.1  0.5 -0.5       0.00      -0.05      -0.10      27.01       0.05      -0.18     -16.59      -0.00    -670.42       1.99
                           -0.00      -0.04      26.11      -0.12      -0.06       0.04      -0.01      17.98      -2.10     302.99

   84   4.1  0.5 -0.5      -0.00      -0.01      34.29       0.08       0.00      -0.02      -0.04       1.28      -1.96    -625.50
                           -0.00       0.00       0.07      41.82      -0.01      -0.00       7.77       0.05     717.92       0.96

   85   5.1  0.5 -0.5       0.00      13.25      -0.03      -0.00       0.00     -12.20       0.00       0.02       0.05       0.57
                            0.00       0.00      -0.00       0.01     -28.30       0.01       0.02      -0.00      -0.83       2.40

   86   6.1  0.5 -0.5      -0.00       0.00       0.04       0.01       2.62       0.00      -0.00      -0.03      -0.24      -0.75
                           -0.00      36.11       0.01      -0.02       0.01      -6.29      -0.03       0.00      -0.37       0.14

   87   7.1  0.5 -0.5      -0.00       0.01      29.99       0.01      -0.02      -0.03       0.01     -20.86      -0.13    -770.77
                            0.00      -0.04       0.01     -16.15      -0.03      -0.00     -21.02       0.00    -104.76      -0.01

   88   8.1  0.5 -0.5      -0.00     167.04       0.00      -0.39       0.08     -36.72      -0.93      -0.00      -0.08      -0.06
                           -3.15      -0.07       0.08       0.00     135.21      -0.02      -0.00       0.88       0.66      -2.85

   89   9.1  0.5 -0.5       0.11      -0.07       0.01      -0.18     135.21      -0.02      -0.38       0.02      -0.71       1.75
                           -1.24     -77.31       0.05      -0.01      -0.07    -152.56       0.02       0.36       0.12      -0.08

   90  10.1  0.5 -0.5       0.51       0.94      -0.04      76.29       0.32      -0.21     163.56       0.03      18.10      -0.05
                          526.05      -0.18     -22.47      -0.01       0.76      -0.36       0.02    -153.32      -0.03     172.43

   91  11.1  0.5 -0.5      -0.29      -0.05      -0.01     128.32      -0.00       0.01     -46.41      -0.08    -433.61      -0.06
                         -655.54       0.00    -149.94       0.03      -0.04       0.00      -0.12      68.54       0.20    -526.33

   92  12.1  0.5 -0.5     727.92      -0.00      51.97       0.05      -0.02       0.00      -0.04     162.94      -0.20     104.38
                           -0.75       0.01      -0.11     -60.42      -0.00       0.02     160.00       0.06    -403.57      -0.23


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5      -0.78     236.61      -0.42       0.56     441.33      -0.00       0.06       0.05      -0.20     414.73
                           -1.28      -0.00       0.00      -0.00      -0.00       2.68       1.06    -449.07     556.95       0.32

    2   2.1  1.5  1.5       0.62       0.00      -0.04      33.90      -0.20       0.07    -533.25      -1.25       0.00       0.08
                           -0.75      -0.10    -365.79      -0.15      -0.42    -533.24       0.03      -3.00       0.15       0.00

    3   3.1  1.5  1.5      -2.03      -0.27    -201.29      -0.01      -0.39     333.54       0.05       1.88      -0.09      -0.00
                            0.66      -0.00       0.10    -215.98       0.13       0.05     484.27       1.14      -0.00      -0.07

    4   4.1  1.5  1.5      -1.13     375.16      -0.16       0.20     167.71       0.00      -0.08      -0.06       0.26    -531.97
                          409.69       1.20      -0.01       0.10       0.08      -2.24      -0.97     414.48     335.51       0.11

    5   5.1  1.5  1.5      -1.33      -0.18     116.84       0.08      -0.02    -586.26      -0.02      -3.30       0.17       0.00
                           -0.39       0.01      -0.16     421.60      -0.47      -0.03     469.52       1.10      -0.00      -0.07

    6   6.1  1.5  1.5     348.23       1.02      -0.01       0.08       0.07      -2.59      -1.04     441.43    -390.68      -0.24
                           -0.48     152.85      -0.14       0.19     149.11      -0.00       0.10       0.08      -0.32     670.88

    7   7.1  1.5  1.5     215.83       0.63      -0.01       0.05       0.04       3.04       1.31    -558.30    -370.14      -0.11
                           -1.49     528.12       0.29      -0.41    -308.42       0.00      -0.01      -0.01       0.03     -70.18

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00     727.89      -0.01       4.10      -0.20      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     727.89       1.71      -0.00      -0.11

    9   9.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00       4.64       1.95    -830.71    -127.83       0.40
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.11       0.35      -0.68     727.92

   10  10.1  1.5  1.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.11       0.51      -0.29     727.92
                           -0.00      -0.00       0.00      -0.00       0.00      -3.15      -1.24     526.05    -655.54      -0.75

   11  11.1  1.5  1.5      -0.05      -0.01      13.25       0.00       0.01     167.04      -0.07       0.94      -0.05      -0.00
                           -0.04       0.00       0.00      36.11      -0.04      -0.07     -77.31      -0.18       0.00       0.01

   12  12.1  1.5  1.5      -0.10      34.29      -0.03       0.04      29.99       0.00       0.01      -0.04      -0.01      51.97
                           26.11       0.07      -0.00       0.01       0.01       0.08       0.05     -22.47    -149.94      -0.11

   13  13.1  1.5  1.5      27.01       0.08      -0.00       0.01       0.01      -0.39      -0.18      76.29     128.32       0.05
                           -0.12      41.82       0.01      -0.02     -16.15       0.00      -0.01      -0.01       0.03     -60.42

   14  14.1  1.5  1.5       0.05       0.00       0.00       2.62      -0.02       0.08     135.21       0.32      -0.00      -0.02
                           -0.06      -0.01     -28.30       0.01      -0.03     135.21      -0.07       0.76      -0.04      -0.00

   15  15.1  1.5  1.5      -0.18      -0.02     -12.20       0.00      -0.03     -36.72      -0.02      -0.21       0.01       0.00
                            0.04      -0.00       0.01      -6.29      -0.00      -0.02    -152.56      -0.36       0.00       0.02

   16  16.1  1.5  1.5     -16.59      -0.04       0.00      -0.00       0.01      -0.93      -0.38     163.56     -46.41      -0.04
                           -0.01       7.77       0.02      -0.03     -21.02      -0.00       0.02       0.02      -0.12     160.00

   17  17.1  1.5  1.5      -0.00       1.28       0.02      -0.03     -20.86      -0.00       0.02       0.03      -0.08     162.94
                           17.98       0.05      -0.00       0.00       0.00       0.88       0.36    -153.32      68.54       0.06

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.56       0.01      -0.14     392.96      -0.67      -0.00     475.02       1.12      -0.00      -0.07

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.16     -77.87      -0.44       0.60     466.63       0.00      -0.09      -0.13       0.23    -615.76

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -66.86      -0.19       0.00      -0.02      -0.06       0.99       0.51    -215.34    -793.77      -0.30

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.01       0.16    -465.04       0.63      -0.00     617.23       1.45      -0.00      -0.09

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -468.33      -1.38       0.02      -0.11      -0.06      -3.47      -1.43     610.41    -112.15      -0.16

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.43       0.19    -564.74      -0.24      -0.39    -272.11       0.00      -1.53       0.08       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.39       0.05     319.14       0.10       0.34    -729.77       0.01      -4.11       0.21       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -1.73      -0.83     351.79     904.56       0.40

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     840.49       0.42       4.73      -0.24      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.43     840.50       1.97      -0.00      -0.13

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.07      -0.09       0.00      -0.01      -0.03       0.91       0.39    -164.01     -32.49      -0.08

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.01     -12.53       0.01      -0.01    -197.18      -0.46       0.00       0.03

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.08       0.01       2.46      -0.00       0.01     196.33      -0.00       1.10      -0.06      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -6.02      -0.03       0.05      36.10       0.00       0.02      -0.07      -0.06     156.12

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.68      -0.04       0.00      -0.00      -0.01       0.02      -0.01       6.28     200.65       0.07

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09      -0.01      50.13       0.02       0.04      21.37      -0.06       0.12      -0.01      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00       0.02     -45.41       0.07       0.00      11.07       0.03      -0.00      -0.00

   35   1.1  1.5 -0.5      -0.45     136.61      -0.24       0.32     254.80      -0.00       0.04       0.03      -0.12     239.45
                            0.74       0.00      -0.00       0.00       0.00      -1.55      -0.61     259.27    -321.55      -0.19

   36   2.1  1.5 -0.5       0.36       0.00      -0.03      19.57      -0.12       0.04    -307.87      -0.72       0.00       0.05
                            0.43       0.06     211.19       0.09       0.24     307.87      -0.01       1.73      -0.09      -0.00

   37   3.1  1.5 -0.5      -1.17      -0.15    -116.21      -0.01      -0.22     192.57       0.03       1.08      -0.05      -0.00
                           -0.38       0.00      -0.06     124.70      -0.07      -0.03    -279.59      -0.66       0.00       0.04

   38   4.1  1.5 -0.5      -0.65     216.60      -0.09       0.12      96.83       0.00      -0.05      -0.04       0.15    -307.14
                         -236.54      -0.69       0.01      -0.06      -0.04       1.29       0.56    -239.30    -193.71      -0.07

   39   5.1  1.5 -0.5      -0.77      -0.10      67.46       0.05      -0.01    -338.48      -0.01      -1.91       0.10       0.00
                            0.23      -0.01       0.09    -243.41       0.27       0.02    -271.08      -0.64       0.00       0.04

   40   6.1  1.5 -0.5     201.05       0.59      -0.01       0.05       0.04      -1.50      -0.60     254.86    -225.56      -0.14
                            0.28     -88.25       0.08      -0.11     -86.09       0.00      -0.06      -0.04       0.19    -387.33

   41   7.1  1.5 -0.5     124.61       0.36      -0.00       0.03       0.02       1.75       0.76    -322.34    -213.70      -0.06
                            0.86    -304.91      -0.17       0.24     178.06      -0.00       0.01       0.01      -0.02      40.52

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00     420.24      -0.01       2.37      -0.12      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00    -420.25      -0.99       0.00       0.06

   43   9.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       2.68       1.13    -479.61     -73.80       0.23
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.06      -0.20       0.39    -420.27

   44  10.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.06       0.29      -0.17     420.27
                            0.00       0.00      -0.00       0.00      -0.00       1.82       0.71    -303.72     378.48       0.43

   45  11.1  1.5 -0.5      -0.03      -0.00       7.65       0.00       0.00      96.44      -0.04       0.54      -0.03      -0.00
                            0.03      -0.00      -0.00     -20.85       0.02       0.04      44.64       0.11      -0.00      -0.01

   46  12.1  1.5 -0.5      -0.06      19.80      -0.02       0.02      17.31       0.00       0.00      -0.02      -0.01      30.00
                          -15.07      -0.04       0.00      -0.00      -0.01      -0.05      -0.03      12.97      86.57       0.07

   47  13.1  1.5 -0.5      15.60       0.05      -0.00       0.00       0.00      -0.23      -0.10      44.05      74.08       0.03
                            0.07     -24.15      -0.01       0.01       9.32      -0.00       0.01       0.00      -0.02      34.89

   48  14.1  1.5 -0.5       0.03       0.00       0.00       1.51      -0.01       0.05      78.07       0.18      -0.00      -0.01
                            0.03       0.00      16.34      -0.01       0.02     -78.06       0.04      -0.44       0.02       0.00

   49  15.1  1.5 -0.5      -0.10      -0.01      -7.04       0.00      -0.02     -21.20      -0.01      -0.12       0.01       0.00
                           -0.02       0.00      -0.00       3.63       0.00       0.01      88.08       0.21      -0.00      -0.01

   50  16.1  1.5 -0.5      -9.58      -0.02       0.00      -0.00       0.00      -0.54      -0.22      94.43     -26.80      -0.02
                            0.01      -4.48      -0.01       0.02      12.13       0.00      -0.01      -0.01       0.07     -92.37

   51  17.1  1.5 -0.5      -0.00       0.74       0.01      -0.02     -12.04      -0.00       0.01       0.02      -0.05      94.07
                          -10.38      -0.03       0.00      -0.00      -0.00      -0.51      -0.21      88.52     -39.57      -0.04

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
                            2.21       0.09    -375.08      -0.17       0.86     459.03      -0.00       2.72      -0.22       0.66

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.91       0.45       0.03     198.41      -3.10       0.04    -494.22      -1.16      -0.36      -1.66

   71   3.1  0.5  0.5   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -110.73      -0.24       1.62     663.54      -0.77      -1.92      -0.69      -1.75     432.79

   72   4.1  0.5  0.5       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          110.73      -0.00       0.02       0.13       1.97      -1.39      -0.91     273.98     507.96       1.48

   73   5.1  0.5  0.5       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24      -0.02       0.00    -842.74       1.20      -0.10    -235.41      -0.21      -0.23       0.02

   74   6.1  0.5  0.5       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.62      -0.13     842.74      -0.00       0.87     298.26      -0.02       1.21       0.21       0.10

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00
                         -663.54      -1.97      -1.20      -0.87       0.00       1.91       0.44    -363.20     243.82       0.24

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00       0.00
                            0.77       1.39       0.10    -298.26      -1.91      -0.00     -41.96      -0.10       0.00      -0.44

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00
                            1.92       0.91     235.41       0.02      -0.44      41.96      -0.00       0.22      -0.01      -0.18

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00
                            0.69    -273.98       0.21      -1.21     363.20       0.10      -0.22       0.00      -0.03      78.17

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00
                            1.75    -507.96       0.23      -0.21    -243.82      -0.00       0.01       0.03       0.00     -30.39

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                         -432.79      -1.48      -0.02      -0.10      -0.24       0.44       0.18     -78.17      30.39      -0.00

   81   1.1  0.5 -0.5     670.42       1.96      -0.05       0.24       0.13       0.08       0.71     -18.10     433.61       0.20
                            2.10    -717.92       0.83       0.37     104.76      -0.66      -0.12       0.03      -0.20     403.57

   82   2.1  0.5 -0.5      -1.99     625.50      -0.57       0.75     770.77       0.06      -1.75       0.05       0.06    -104.38
                         -302.99      -0.96      -2.40      -0.14       0.01       2.85       0.08    -172.43     526.33       0.23

   83   3.1  0.5 -0.5      -0.00       2.52       1.05      55.68       2.76       1.11     432.77       0.92      -0.68      -0.47
                           -0.00       1.39     600.62      -1.33       0.39    -432.76      -0.85      -3.11       2.23      -0.53

   84   4.1  0.5 -0.5      -2.52      -0.00    -373.05       0.11      -0.19    -401.89       1.27      -2.24       0.11      -0.05
                           -1.39      -0.00       1.58     547.35      -0.41      -1.27     259.42       0.51       0.28      -0.05

   85   5.1  0.5 -0.5      -1.05     373.05      -0.00      -0.12     -82.95      -0.35       0.07      -0.14      -0.27     537.40
                         -600.62      -1.58       0.00       0.37      -0.30      -2.59      -1.55     465.03      37.88       0.10

   86   6.1  0.5 -0.5     -55.68      -0.11       0.12      -0.00      -0.13      -2.75      -1.26     577.35      52.61       0.16
                            1.33    -547.35      -0.37      -0.00     552.66      -0.10       0.55       0.14       0.13    -369.91

   87   7.1  0.5 -0.5      -2.76       0.19      82.95       0.13       0.00     371.69       0.08       1.35      -0.01       0.46
                           -0.39       0.41       0.30    -552.66      -0.00      -0.09     482.05       1.50       0.24       0.56

   88   8.1  0.5 -0.5      -1.11     401.89       0.35       2.75    -371.69       0.00       0.10       0.01      -0.02      41.94
                          432.76       1.27       2.59       0.10       0.09       0.00       0.15     -65.44     -52.50      -0.02

   89   9.1  0.5 -0.5    -432.77      -1.27      -0.07       1.26      -0.08      -0.10       0.00      12.76     -82.91      -0.04
                            0.85    -259.42       1.55      -0.55    -482.05      -0.15      -0.00       0.00      -0.02      41.94

   90  10.1  0.5 -0.5      -0.92       2.24       0.14    -577.35      -1.35      -0.01     -12.76       0.00      -0.19       0.24
                            3.11      -0.51    -465.03      -0.14      -1.50      65.44      -0.00      -0.00      -0.31       0.10

   91  11.1  0.5 -0.5       0.68      -0.11       0.27     -52.61       0.01       0.02      82.91       0.19      -0.00      -0.02
                           -2.23      -0.28     -37.88      -0.13      -0.24      52.50       0.02       0.31       0.00      -0.00

   92  12.1  0.5 -0.5       0.47       0.05    -537.40      -0.16      -0.46     -41.94       0.04      -0.24       0.02      -0.00
                            0.53       0.05      -0.10     369.91      -0.56       0.02     -41.94      -0.10       0.00      -0.00


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

   18   1.1  1.5  0.5      -0.10      -0.17      -0.45     136.61      -0.24       0.32     254.80      -0.00       0.04       0.03
                           -0.00       0.00      -0.74      -0.00       0.00      -0.00      -0.00       1.55       0.61    -259.27

   19   2.1  1.5  0.5    -235.73      -0.02       0.36       0.00      -0.03      19.57      -0.12       0.04    -307.87      -0.72
                           -0.03    -106.54      -0.43      -0.06    -211.19      -0.09      -0.24    -307.87       0.01      -1.73

   20   3.1  1.5  0.5       0.02    -291.58      -1.17      -0.15    -116.21      -0.01      -0.22     192.57       0.03       1.08
                         -229.48      -0.01       0.38      -0.00       0.06    -124.70       0.07       0.03     279.59       0.66

   21   4.1  1.5  0.5      -0.04      -0.15      -0.65     216.60      -0.09       0.12      96.83       0.00      -0.05      -0.04
                            0.36      -0.95     236.54       0.69      -0.01       0.06       0.04      -1.29      -0.56     239.30

   22   5.1  1.5  0.5      -0.02    -191.84      -0.77      -0.10      67.46       0.05      -0.01    -338.48      -0.01      -1.91
                          111.44       0.02      -0.23       0.01      -0.09     243.41      -0.27      -0.02     271.08       0.64

   23   6.1  1.5  0.5       0.31      -0.81     201.05       0.59      -0.01       0.05       0.04      -1.50      -0.60     254.86
                           -0.03      -0.08      -0.28      88.25      -0.08       0.11      86.09      -0.00       0.06       0.04

   24   7.1  1.5  0.5       0.19      -0.50     124.61       0.36      -0.00       0.03       0.02       1.75       0.76    -322.34
                            0.07      -0.09      -0.86     304.91       0.17      -0.24    -178.06       0.00      -0.01      -0.01

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     420.24      -0.01       2.37
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     420.25       0.99

   26   9.1  1.5  0.5       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       2.68       1.13    -479.61
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.06       0.20

   27  10.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.06       0.29
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -1.82      -0.71     303.72

   28  11.1  1.5  0.5       0.01      -7.49      -0.03      -0.00       7.65       0.00       0.00      96.44      -0.04       0.54
                           13.50       0.01      -0.03       0.00       0.00      20.85      -0.02      -0.04     -44.64      -0.11

   29  12.1  1.5  0.5      -0.01      -0.02      -0.06      19.80      -0.02       0.02      17.31       0.00       0.00      -0.02
                            0.02      -0.06      15.07       0.04      -0.00       0.00       0.01       0.05       0.03     -12.97

   30  13.1  1.5  0.5       0.02      -0.06      15.60       0.05      -0.00       0.00       0.00      -0.23      -0.10      44.05
                            0.00      -0.01      -0.07      24.15       0.01      -0.01      -9.32       0.00      -0.01      -0.00

   31  14.1  1.5  0.5     -18.24      -0.01       0.03       0.00       0.00       1.51      -0.01       0.05      78.07       0.18
                            0.00      -8.24      -0.03      -0.00     -16.34       0.01      -0.02      78.06      -0.04       0.44

   32  15.1  1.5  0.5       0.00     -25.95      -0.10      -0.01      -7.04       0.00      -0.02     -21.20      -0.01      -0.12
                          -14.40       0.00       0.02      -0.00       0.00      -3.63      -0.00      -0.01     -88.08      -0.21

   33  16.1  1.5  0.5      -0.01       0.04      -9.58      -0.02       0.00      -0.00       0.00      -0.54      -0.22      94.43
                            0.00       0.00      -0.01       4.48       0.01      -0.02     -12.13      -0.00       0.01       0.01

   34  17.1  1.5  0.5       0.00       0.00      -0.00       0.74       0.01      -0.02     -12.04      -0.00       0.01       0.02
                            0.02      -0.04      10.38       0.03      -0.00       0.00       0.00       0.51       0.21     -88.52

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -427.37       0.05       0.56       0.01      -0.14     392.96      -0.67      -0.00     475.02       1.12

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18      -0.14       0.16     -77.87      -0.44       0.60     466.63       0.00      -0.09      -0.13

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10       0.27     -66.86      -0.19       0.00      -0.02      -0.06       0.99       0.51    -215.34

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.63      -0.06      -0.01      -0.01       0.16    -465.04       0.63      -0.00     617.23       1.45

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.72       1.88    -468.33      -1.38       0.02      -0.11      -0.06      -3.47      -1.43     610.41

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     360.53       1.43       0.19    -564.74      -0.24      -0.39    -272.11       0.00      -1.53

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      93.47       0.39       0.05     319.14       0.10       0.34    -729.77       0.01      -4.11

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -1.73      -0.83     351.79

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     840.49       0.42       4.73

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.43     840.50       1.97

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05       0.13     -33.07      -0.09       0.00      -0.01      -0.03       0.91       0.39    -164.01

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.65       0.00       0.02      -0.00      -0.01     -12.53       0.01      -0.01    -197.18      -0.46

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      18.98       0.08       0.01       2.46      -0.00       0.01     196.33      -0.00       1.10

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.01      -0.01      -6.02      -0.03       0.05      36.10       0.00       0.02      -0.07

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.06     -15.68      -0.04       0.00      -0.00      -0.01       0.02      -0.01       6.28

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01     -21.68      -0.09      -0.01      50.13       0.02       0.04      21.37      -0.06       0.12

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.73      -0.01      -0.04      -0.00       0.02     -45.41       0.07       0.00      11.07       0.03

   52   1.1  1.5 -1.5      -0.17      -0.30      -0.78     236.61      -0.42       0.56     441.33      -0.00       0.06       0.05
                            0.00      -0.01       1.28       0.00      -0.00       0.00       0.00      -2.68      -1.06     449.07

   53   2.1  1.5 -1.5    -408.30      -0.03       0.62       0.00      -0.04      33.90      -0.20       0.07    -533.25      -1.25
                            0.04     184.53       0.75       0.10     365.79       0.15       0.42     533.24      -0.03       3.00

   54   3.1  1.5 -1.5       0.04    -505.03      -2.03      -0.27    -201.29      -0.01      -0.39     333.54       0.05       1.88
                          397.47       0.01      -0.66       0.00      -0.10     215.98      -0.13      -0.05    -484.27      -1.14

   55   4.1  1.5 -1.5      -0.06      -0.26      -1.13     375.16      -0.16       0.20     167.71       0.00      -0.08      -0.06
                           -0.63       1.64    -409.69      -1.20       0.01      -0.10      -0.08       2.24       0.97    -414.48

   56   5.1  1.5 -1.5      -0.03    -332.27      -1.33      -0.18     116.84       0.08      -0.02    -586.26      -0.02      -3.30
                         -193.01      -0.04       0.39      -0.01       0.16    -421.60       0.47       0.03    -469.52      -1.10

   57   6.1  1.5 -1.5       0.53      -1.40     348.23       1.02      -0.01       0.08       0.07      -2.59      -1.04     441.43
                            0.06       0.14       0.48    -152.85       0.14      -0.19    -149.11       0.00      -0.10      -0.08

   58   7.1  1.5 -1.5       0.33      -0.87     215.83       0.63      -0.01       0.05       0.04       3.04       1.31    -558.30
                           -0.12       0.15       1.49    -528.12      -0.29       0.41     308.42      -0.00       0.01       0.01

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     727.89      -0.01       4.10
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -727.89      -1.71

   60   9.1  1.5 -1.5       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       4.64       1.95    -830.71
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.11      -0.35

   61  10.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.11       0.51
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       3.15       1.24    -526.05

   62  11.1  1.5 -1.5       0.02     -12.97      -0.05      -0.01      13.25       0.00       0.01     167.04      -0.07       0.94
                          -23.38      -0.01       0.04      -0.00      -0.00     -36.11       0.04       0.07      77.31       0.18

   63  12.1  1.5 -1.5      -0.01      -0.03      -0.10      34.29      -0.03       0.04      29.99       0.00       0.01      -0.04
                           -0.04       0.10     -26.11      -0.07       0.00      -0.01      -0.01      -0.08      -0.05      22.47

   64  13.1  1.5 -1.5       0.04      -0.11      27.01       0.08      -0.00       0.01       0.01      -0.39      -0.18      76.29
                           -0.01       0.02       0.12     -41.82      -0.01       0.02      16.15      -0.00       0.01       0.01

   65  14.1  1.5 -1.5     -31.59      -0.01       0.05       0.00       0.00       2.62      -0.02       0.08     135.21       0.32
                           -0.01      14.28       0.06       0.01      28.30      -0.01       0.03    -135.21       0.07      -0.76

   66  15.1  1.5 -1.5       0.01     -44.94      -0.18      -0.02     -12.20       0.00      -0.03     -36.72      -0.02      -0.21
                           24.95      -0.00      -0.04       0.00      -0.01       6.29       0.00       0.02     152.56       0.36

   67  16.1  1.5 -1.5      -0.03       0.07     -16.59      -0.04       0.00      -0.00       0.01      -0.93      -0.38     163.56
                           -0.01      -0.00       0.01      -7.77      -0.02       0.03      21.02       0.00      -0.02      -0.02

   68  17.1  1.5 -1.5       0.01       0.01      -0.00       1.28       0.02      -0.03     -20.86      -0.00       0.02       0.03
                           -0.03       0.07     -17.98      -0.05       0.00      -0.00      -0.00      -0.88      -0.36     153.32

   69   1.1  0.5  0.5      -0.00       2.39    -670.42      -1.96       0.05      -0.24      -0.13      -0.08      -0.71      18.10
                           -0.00       0.79       2.10    -717.92       0.83       0.37     104.76      -0.66      -0.12       0.03

   70   2.1  0.5  0.5      -2.39      -0.00       1.99    -625.50       0.57      -0.75    -770.77      -0.06       1.75      -0.05
                           -0.79       0.00    -302.99      -0.96      -2.40      -0.14       0.01       2.85       0.08    -172.43

   71   3.1  0.5  0.5     670.42      -1.99      -0.00      -2.52      -1.05     -55.68      -2.76      -1.11    -432.77      -0.92
                           -2.10     302.99       0.00       1.39     600.62      -1.33       0.39    -432.76      -0.85      -3.11

   72   4.1  0.5  0.5       1.96     625.50       2.52      -0.00     373.05      -0.11       0.19     401.89      -1.27       2.24
                          717.92       0.96      -1.39       0.00       1.58     547.35      -0.41      -1.27     259.42       0.51

   73   5.1  0.5  0.5      -0.05      -0.57       1.05    -373.05      -0.00       0.12      82.95       0.35      -0.07       0.14
                           -0.83       2.40    -600.62      -1.58      -0.00       0.37      -0.30      -2.59      -1.55     465.03

   74   6.1  0.5  0.5       0.24       0.75      55.68       0.11      -0.12      -0.00       0.13       2.75       1.26    -577.35
                           -0.37       0.14       1.33    -547.35      -0.37       0.00     552.66      -0.10       0.55       0.14

   75   7.1  0.5  0.5       0.13     770.77       2.76      -0.19     -82.95      -0.13       0.00    -371.69      -0.08      -1.35
                         -104.76      -0.01      -0.39       0.41       0.30    -552.66       0.00      -0.09     482.05       1.50

   76   8.1  0.5  0.5       0.08       0.06       1.11    -401.89      -0.35      -2.75     371.69       0.00      -0.10      -0.01
                            0.66      -2.85     432.76       1.27       2.59       0.10       0.09      -0.00       0.15     -65.44

   77   9.1  0.5  0.5       0.71      -1.75     432.77       1.27       0.07      -1.26       0.08       0.10       0.00     -12.76
                            0.12      -0.08       0.85    -259.42       1.55      -0.55    -482.05      -0.15       0.00       0.00

   78  10.1  0.5  0.5     -18.10       0.05       0.92      -2.24      -0.14     577.35       1.35       0.01      12.76       0.00
                           -0.03     172.43       3.11      -0.51    -465.03      -0.14      -1.50      65.44      -0.00       0.00

   79  11.1  0.5  0.5     433.61       0.06      -0.68       0.11      -0.27      52.61      -0.01      -0.02     -82.91      -0.19
                            0.20    -526.33      -2.23      -0.28     -37.88      -0.13      -0.24      52.50       0.02       0.31

   80  12.1  0.5  0.5       0.20    -104.38      -0.47      -0.05     537.40       0.16       0.46      41.94      -0.04       0.24
                         -403.57      -0.23       0.53       0.05      -0.10     369.91      -0.56       0.02     -41.94      -0.10

   81   1.1  0.5 -0.5   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -491.08      -2.21      -0.09     375.08       0.17      -0.86    -459.03       0.00      -2.72

   82   2.1  0.5 -0.5       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          491.08       0.00      -0.91      -0.45      -0.03    -198.41       3.10      -0.04     494.22       1.16

   83   3.1  0.5 -0.5       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.21       0.91      -0.00     110.73       0.24      -1.62    -663.54       0.77       1.92       0.69

   84   4.1  0.5 -0.5       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09       0.45    -110.73       0.00      -0.02      -0.13      -1.97       1.39       0.91    -273.98

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00       0.00
                         -375.08       0.03      -0.24       0.02      -0.00     842.74      -1.20       0.10     235.41       0.21

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00       0.00
                           -0.17     198.41       1.62       0.13    -842.74       0.00      -0.87    -298.26       0.02      -1.21

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12392.20       0.00       0.00       0.00
                            0.86      -3.10     663.54       1.97       1.20       0.87      -0.00      -1.91      -0.44     363.20

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00
                          459.03       0.04      -0.77      -1.39      -0.10     298.26       1.91       0.00      41.96       0.10

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00
                           -0.00    -494.22      -1.92      -0.91    -235.41      -0.02       0.44     -41.96       0.00      -0.22

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                            2.72      -1.16      -0.69     273.98      -0.21       1.21    -363.20      -0.10       0.22      -0.00

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.22      -0.36      -1.75     507.96      -0.23       0.21     243.82       0.00      -0.01      -0.03

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.66      -1.66     432.79       1.48       0.02       0.10       0.24      -0.44      -0.18      78.17


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

   18   1.1  1.5  0.5      -0.12     239.45
                          321.55       0.19

   19   2.1  1.5  0.5       0.00       0.05
                            0.09       0.00

   20   3.1  1.5  0.5      -0.05      -0.00
                           -0.00      -0.04

   21   4.1  1.5  0.5       0.15    -307.14
                          193.71       0.07

   22   5.1  1.5  0.5       0.10       0.00
                           -0.00      -0.04

   23   6.1  1.5  0.5    -225.56      -0.14
                           -0.19     387.33

   24   7.1  1.5  0.5    -213.70      -0.06
                            0.02     -40.52

   25   8.1  1.5  0.5      -0.12      -0.00
                           -0.00      -0.06

   26   9.1  1.5  0.5     -73.80       0.23
                           -0.39     420.27

   27  10.1  1.5  0.5      -0.17     420.27
                         -378.48      -0.43

   28  11.1  1.5  0.5      -0.03      -0.00
                            0.00       0.01

   29  12.1  1.5  0.5      -0.01      30.00
                          -86.57      -0.07

   30  13.1  1.5  0.5      74.08       0.03
                            0.02     -34.89

   31  14.1  1.5  0.5      -0.00      -0.01
                           -0.02      -0.00

   32  15.1  1.5  0.5       0.01       0.00
                            0.00       0.01

   33  16.1  1.5  0.5     -26.80      -0.02
                           -0.07      92.37

   34  17.1  1.5  0.5      -0.05      94.07
                           39.57       0.04

   35   1.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.07

   36   2.1  1.5 -0.5       0.00       0.00
                            0.23    -615.76

   37   3.1  1.5 -0.5       0.00       0.00
                         -793.77      -0.30

   38   4.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.09

   39   5.1  1.5 -0.5       0.00       0.00
                         -112.15      -0.16

   40   6.1  1.5 -0.5       0.00       0.00
                            0.08       0.00

   41   7.1  1.5 -0.5       0.00       0.00
                            0.21       0.00

   42   8.1  1.5 -0.5       0.00       0.00
                          904.56       0.40

   43   9.1  1.5 -0.5       0.00       0.00
                           -0.24      -0.00

   44  10.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.13

   45  11.1  1.5 -0.5       0.00       0.00
                          -32.49      -0.08

   46  12.1  1.5 -0.5       0.00       0.00
                            0.00       0.03

   47  13.1  1.5 -0.5       0.00       0.00
                           -0.06      -0.00

   48  14.1  1.5 -0.5       0.00       0.00
                           -0.06     156.12

   49  15.1  1.5 -0.5       0.00       0.00
                          200.65       0.07

   50  16.1  1.5 -0.5       0.00       0.00
                           -0.01      -0.00

   51  17.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   52   1.1  1.5 -1.5      -0.20     414.73
                         -556.95      -0.32

   53   2.1  1.5 -1.5       0.00       0.08
                           -0.15      -0.00

   54   3.1  1.5 -1.5      -0.09      -0.00
                            0.00       0.07

   55   4.1  1.5 -1.5       0.26    -531.97
                         -335.51      -0.11

   56   5.1  1.5 -1.5       0.17       0.00
                            0.00       0.07

   57   6.1  1.5 -1.5    -390.68      -0.24
                            0.32    -670.88

   58   7.1  1.5 -1.5    -370.14      -0.11
                           -0.03      70.18

   59   8.1  1.5 -1.5      -0.20      -0.00
                            0.00       0.11

   60   9.1  1.5 -1.5    -127.83       0.40
                            0.68    -727.92

   61  10.1  1.5 -1.5      -0.29     727.92
                          655.54       0.75

   62  11.1  1.5 -1.5      -0.05      -0.00
                           -0.00      -0.01

   63  12.1  1.5 -1.5      -0.01      51.97
                          149.94       0.11

   64  13.1  1.5 -1.5     128.32       0.05
                           -0.03      60.42

   65  14.1  1.5 -1.5      -0.00      -0.02
                            0.04       0.00

   66  15.1  1.5 -1.5       0.01       0.00
                           -0.00      -0.02

   67  16.1  1.5 -1.5     -46.41      -0.04
                            0.12    -160.00

   68  17.1  1.5 -1.5      -0.08     162.94
                          -68.54      -0.06

   69   1.1  0.5  0.5    -433.61      -0.20
                           -0.20     403.57

   70   2.1  0.5  0.5      -0.06     104.38
                          526.33       0.23

   71   3.1  0.5  0.5       0.68       0.47
                            2.23      -0.53

   72   4.1  0.5  0.5      -0.11       0.05
                            0.28      -0.05

   73   5.1  0.5  0.5       0.27    -537.40
                           37.88       0.10

   74   6.1  0.5  0.5     -52.61      -0.16
                            0.13    -369.91

   75   7.1  0.5  0.5       0.01      -0.46
                            0.24       0.56

   76   8.1  0.5  0.5       0.02     -41.94
                          -52.50      -0.02

   77   9.1  0.5  0.5      82.91       0.04
                           -0.02      41.94

   78  10.1  0.5  0.5       0.19      -0.24
                           -0.31       0.10

   79  11.1  0.5  0.5      -0.00       0.02
                           -0.00      -0.00

   80  12.1  0.5  0.5      -0.02      -0.00
                            0.00       0.00

   81   1.1  0.5 -0.5       0.00       0.00
                            0.22      -0.66

   82   2.1  0.5 -0.5       0.00       0.00
                            0.36       1.66

   83   3.1  0.5 -0.5       0.00       0.00
                            1.75    -432.79

   84   4.1  0.5 -0.5       0.00       0.00
                         -507.96      -1.48

   85   5.1  0.5 -0.5       0.00       0.00
                            0.23      -0.02

   86   6.1  0.5 -0.5       0.00       0.00
                           -0.21      -0.10

   87   7.1  0.5 -0.5       0.00       0.00
                         -243.82      -0.24

   88   8.1  0.5 -0.5       0.00       0.00
                           -0.00       0.44

   89   9.1  0.5 -0.5       0.00       0.00
                            0.01       0.18

   90  10.1  0.5 -0.5       0.00       0.00
                            0.03     -78.17

   91  11.1  0.5 -0.5    4690.39       0.00
                           -0.00      30.39

   92  12.1  0.5 -0.5       0.00    4690.39
                          -30.39       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02357280    -0.00706580    -1550.76      0.00000000        0.00      0.0000
     2  -110.02357280    -0.00706580    -1550.76      0.00000000        0.00      0.0000
     3  -110.02357279    -0.00706579    -1550.76      0.00000001        0.00      0.0000
     4  -110.02357279    -0.00706579    -1550.76      0.00000001        0.00      0.0000
     5  -110.02357277    -0.00706577    -1550.76      0.00000003        0.01      0.0000
     6  -110.02357277    -0.00706577    -1550.76      0.00000003        0.01      0.0000
     7  -110.02357276    -0.00706576    -1550.75      0.00000004        0.01      0.0000
     8  -110.02357276    -0.00706576    -1550.75      0.00000004        0.01      0.0000
     9  -110.02357273    -0.00706573    -1550.75      0.00000007        0.02      0.0000
    10  -110.02357273    -0.00706573    -1550.75      0.00000007        0.02      0.0000
    11  -110.01680764    -0.00030064      -65.98      0.00676517     1484.78      0.1841
    12  -110.01680764    -0.00030064      -65.98      0.00676517     1484.78      0.1841
    13  -110.01680762    -0.00030062      -65.98      0.00676518     1484.79      0.1841
    14  -110.01680762    -0.00030062      -65.98      0.00676518     1484.79      0.1841
    15  -110.01680762    -0.00030062      -65.98      0.00676519     1484.79      0.1841
    16  -110.01680762    -0.00030062      -65.98      0.00676519     1484.79      0.1841
    17  -110.01680761    -0.00030061      -65.98      0.00676519     1484.79      0.1841
    18  -110.01680761    -0.00030061      -65.98      0.00676519     1484.79      0.1841
    19  -110.01247900     0.00402800      884.04      0.01109380     2434.81      0.3019
    20  -110.01247900     0.00402800      884.04      0.01109380     2434.81      0.3019
    21  -110.01247897     0.00402803      884.05      0.01109383     2434.81      0.3019
    22  -110.01247897     0.00402803      884.05      0.01109383     2434.81      0.3019
    23  -110.01247893     0.00402807      884.06      0.01109387     2434.82      0.3019
    24  -110.01247893     0.00402807      884.06      0.01109387     2434.82      0.3019
    25  -110.01029926     0.00620774     1362.44      0.01327354     2913.21      0.3612
    26  -110.01029926     0.00620774     1362.44      0.01327354     2913.21      0.3612
    27  -110.01029916     0.00620784     1362.46      0.01327365     2913.23      0.3612
    28  -110.01029916     0.00620784     1362.46      0.01327365     2913.23      0.3612
    29  -109.99926726     0.01723974     3783.69      0.02430555     5334.45      0.6614
    30  -109.99926726     0.01723974     3783.69      0.02430555     5334.45      0.6614
    31  -109.99926723     0.01723977     3783.69      0.02430557     5334.46      0.6614
    32  -109.99926723     0.01723977     3783.69      0.02430557     5334.46      0.6614
    33  -109.99926722     0.01723978     3783.70      0.02430559     5334.46      0.6614
    34  -109.99926722     0.01723978     3783.70      0.02430559     5334.46      0.6614
    35  -109.99926720     0.01723980     3783.70      0.02430561     5334.46      0.6614
    36  -109.99926720     0.01723980     3783.70      0.02430561     5334.46      0.6614
    37  -109.99926717     0.01723983     3783.70      0.02430563     5334.47      0.6614
    38  -109.99926717     0.01723983     3783.70      0.02430563     5334.47      0.6614
    39  -109.99721328     0.01929372     4234.48      0.02635952     5785.25      0.7173
    40  -109.99721328     0.01929372     4234.48      0.02635952     5785.25      0.7173
    41  -109.99721322     0.01929378     4234.50      0.02635959     5785.26      0.7173
    42  -109.99721322     0.01929378     4234.50      0.02635959     5785.26      0.7173
    43  -109.99721318     0.01929382     4234.51      0.02635963     5785.27      0.7173
    44  -109.99721318     0.01929382     4234.51      0.02635963     5785.27      0.7173
    45  -109.99199434     0.02451266     5379.91      0.03157847     6930.67      0.8593
    46  -109.99199434     0.02451266     5379.91      0.03157847     6930.67      0.8593
    47  -109.99199429     0.02451271     5379.92      0.03157851     6930.68      0.8593
    48  -109.99199429     0.02451271     5379.92      0.03157851     6930.68      0.8593
    49  -109.99182538     0.02468162     5416.99      0.03174743     6967.75      0.8639
    50  -109.99182538     0.02468162     5416.99      0.03174743     6967.75      0.8639
    51  -109.99182538     0.02468162     5416.99      0.03174743     6967.75      0.8639
    52  -109.99182538     0.02468162     5416.99      0.03174743     6967.75      0.8639
    53  -109.99182537     0.02468163     5416.99      0.03174743     6967.75      0.8639
    54  -109.99182537     0.02468163     5416.99      0.03174743     6967.75      0.8639
    55  -109.99182537     0.02468163     5416.99      0.03174743     6967.76      0.8639
    56  -109.99182537     0.02468163     5416.99      0.03174743     6967.76      0.8639
    57  -109.98593075     0.03057625     6710.71      0.03764205     8261.48      1.0243
    58  -109.98593075     0.03057625     6710.71      0.03764205     8261.48      1.0243
    59  -109.98593073     0.03057627     6710.71      0.03764207     8261.48      1.0243
    60  -109.98593073     0.03057627     6710.71      0.03764207     8261.48      1.0243
    61  -109.98593071     0.03057629     6710.72      0.03764209     8261.48      1.0243
    62  -109.98593071     0.03057629     6710.72      0.03764209     8261.48      1.0243
    63  -109.98162457     0.03488243     7655.81      0.04194824     9206.57      1.1415
    64  -109.98162457     0.03488243     7655.81      0.04194824     9206.57      1.1415
    65  -109.98162451     0.03488249     7655.82      0.04194829     9206.59      1.1415
    66  -109.98162451     0.03488249     7655.82      0.04194829     9206.59      1.1415
    67  -109.97541190     0.04109510     9019.33      0.04816090    10570.10      1.3105
    68  -109.97541190     0.04109510     9019.33      0.04816090    10570.10      1.3105
    69  -109.97541183     0.04109517     9019.35      0.04816097    10570.11      1.3105
    70  -109.97541183     0.04109517     9019.35      0.04816097    10570.11      1.3105
    71  -109.97541180     0.04109520     9019.35      0.04816100    10570.12      1.3105
    72  -109.97541180     0.04109520     9019.35      0.04816100    10570.12      1.3105
    73  -109.97314645     0.04336055     9516.54      0.05042635    11067.30      1.3722
    74  -109.97314645     0.04336055     9516.54      0.05042635    11067.30      1.3722
    75  -109.97314644     0.04336056     9516.54      0.05042636    11067.31      1.3722
    76  -109.97314644     0.04336056     9516.54      0.05042636    11067.31      1.3722
    77  -109.97111754     0.04538946     9961.84      0.05245526    11512.60      1.4274
    78  -109.97111754     0.04538946     9961.84      0.05245526    11512.60      1.4274
    79  -109.96433780     0.05216920    11449.82      0.05923500    13000.58      1.6119
    80  -109.96433780     0.05216920    11449.82      0.05923500    13000.58      1.6119
    81  -109.96433779     0.05216921    11449.82      0.05923501    13000.58      1.6119
    82  -109.96433779     0.05216921    11449.82      0.05923501    13000.58      1.6119
    83  -109.96433778     0.05216922    11449.82      0.05923503    13000.59      1.6119
    84  -109.96433778     0.05216922    11449.82      0.05923503    13000.59      1.6119
    85  -109.96433777     0.05216923    11449.82      0.05923504    13000.59      1.6119
    86  -109.96433777     0.05216923    11449.82      0.05923504    13000.59      1.6119
    87  -109.95296610     0.06354090    13945.61      0.07060670    15496.38      1.9213
    88  -109.95296610     0.06354090    13945.61      0.07060670    15496.38      1.9213
    89  -109.95296602     0.06354098    13945.63      0.07060678    15496.40      1.9213
    90  -109.95296602     0.06354098    13945.63      0.07060678    15496.40      1.9213
    91  -109.95296600     0.06354100    13945.64      0.07060681    15496.40      1.9213
    92  -109.95296600     0.06354100    13945.64      0.07060681    15496.40      1.9213


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.001097789   0.200562113   0.003785486  -0.205063605   0.208398957  -0.012752641  -0.001117748   0.382773081
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.039108963   0.000214810   0.038851915   0.000716412  -0.015569206  -0.254515020  -0.325944248  -0.000955437
                        -0.008386398  -0.000045100   0.045108073   0.000831077  -0.023750872  -0.388180534  -0.160539212  -0.000471458

    3    3.1  1.5  1.5  -0.021968043  -0.000120677   0.227269907   0.004194220  -0.004292179  -0.070119098   0.107561568   0.000314049
                        -0.102641044  -0.000561571  -0.196283375  -0.003622825   0.002807963   0.045875811  -0.218218698  -0.000637723

    4    4.1  1.5  1.5   0.002577969  -0.470919225  -0.006206459   0.336266575  -0.060460533   0.003697629  -0.000088103   0.029717079
                         0.000000156  -0.000134491  -0.000001685   0.000096624  -0.000021728   0.000001087   0.000000325   0.000073871

    5    5.1  1.5  1.5   0.025703395   0.000139984  -0.200855598  -0.003705833   0.017721481   0.289628721   0.133413722   0.000391610
                         0.120008769   0.000657530   0.173396693   0.003199598  -0.011613364  -0.189845696  -0.270889665  -0.000793967

    6    6.1  1.5  1.5  -0.000000071   0.000030770   0.000001118  -0.000074719  -0.000012974   0.000001329  -0.000000313  -0.000038247
                         0.001803596  -0.329489661  -0.005253811   0.284607158  -0.329619060   0.020169188   0.001164717  -0.399167345

    7    7.1  1.5  1.5  -0.000000214  -0.000039687  -0.000002500   0.000125701   0.000043606  -0.000002112   0.000000025   0.000027209
                        -0.002754022   0.503101874  -0.000261368   0.014146420  -0.186367317   0.011403803   0.000218347  -0.074786700

    8    8.1  1.5  1.5  -0.000000009  -0.000000000   0.000000040   0.000000001   0.000000001   0.000000016   0.000000008   0.000000000
                        -0.000000042  -0.000000000  -0.000000034  -0.000000001  -0.000000001  -0.000000010  -0.000000016  -0.000000000

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000046   0.000000000  -0.000000012  -0.000000058   0.000000004   0.000000000  -0.000000142

   10   10.1  1.5  1.5  -0.000000001   0.000000190  -0.000000001   0.000000046  -0.000000110   0.000000007   0.000000000  -0.000000069
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   11   11.1  1.5  1.5  -0.000028001  -0.000000153   0.000233851   0.000004315  -0.000016432  -0.000268550  -0.000086434  -0.000000254
                        -0.000130860  -0.000000717  -0.000201861  -0.000003725   0.000010749   0.000175703   0.000175099   0.000000514

   12   12.1  1.5  1.5  -0.000001362   0.000248784   0.000002697  -0.000146134  -0.000061078   0.000003739   0.000000635  -0.000217031
                        -0.000000001   0.000000231   0.000000002  -0.000000134   0.000000068  -0.000000004  -0.000000000   0.000000025

   13   13.1  1.5  1.5   0.000000000   0.000000021   0.000000002  -0.000000072  -0.000000030   0.000000001   0.000000000  -0.000000007
                         0.000001490  -0.000272144   0.000002338  -0.000126617   0.000283747  -0.000017362  -0.000000648   0.000221993

   14   14.1  1.5  1.5  -0.000035344  -0.000000194  -0.000034978  -0.000000645   0.000014049   0.000229666   0.000294226   0.000000862
                         0.000007501   0.000000040  -0.000040872  -0.000000753   0.000021454   0.000350639   0.000145076   0.000000426

   15   15.1  1.5  1.5   0.000012024   0.000000066  -0.000141822  -0.000002618  -0.000001046  -0.000017120  -0.000128258  -0.000000375
                         0.000056188   0.000000307   0.000122512   0.000002261   0.000000687   0.000011253   0.000260203   0.000000761

   16   16.1  1.5  1.5  -0.000000000   0.000000080   0.000000002  -0.000000127  -0.000000059   0.000000004  -0.000000000  -0.000000123
                         0.000002569  -0.000469271  -0.000004130   0.000223752  -0.000190324   0.000011646   0.000000851  -0.000291501

   17   17.1  1.5  1.5  -0.000002130   0.000389173   0.000005979  -0.000323939   0.000185881  -0.000011374  -0.000000787   0.000269668
                         0.000000000   0.000000033   0.000000001  -0.000000032  -0.000000004   0.000000000  -0.000000000  -0.000000061

   18    1.1  1.5  0.5   0.018793285   0.000103355   0.000823967   0.000014909  -0.004686240  -0.076598121  -0.095320872  -0.000278772
                         0.087259936   0.000477297  -0.000772703  -0.000013741   0.003074949   0.050274534   0.193429126   0.000566106

   19    2.1  1.5  0.5  -0.000000011  -0.000124318  -0.000000764   0.000022074  -0.000110779   0.000007398  -0.000000131   0.000039809
                        -0.001375325   0.251208309   0.004434576  -0.240313790  -0.290569437   0.017781923   0.001134715  -0.388470530

   20    3.1  1.5  0.5  -0.000487458   0.089083613  -0.006021665   0.326243823  -0.278782810   0.017055819  -0.000246684   0.083783086
                         0.000000582  -0.000134885  -0.000000061   0.000030149  -0.000032446   0.000000717   0.000000416   0.000108020

   21    4.1  1.5  0.5  -0.004636938  -0.000025392  -0.129670329  -0.002391815   0.024421442   0.399108749  -0.020993179  -0.000059387
                        -0.021092330  -0.000115287   0.111862340   0.002064303  -0.016001811  -0.261553198   0.042500255   0.000122089

   22    5.1  1.5  0.5   0.002358241  -0.430805021   0.004753459  -0.257534341   0.154566293  -0.009457596  -0.000326841   0.111875887
                        -0.000000422   0.000040955  -0.000003547   0.000196953   0.000088015  -0.000005259   0.000000311   0.000006211

   23    6.1  1.5  0.5  -0.096740580  -0.000530210   0.074792709   0.001380752   0.006740735   0.110217249   0.373478525   0.001093238
                         0.020864219   0.000113392   0.086407277   0.001595405   0.010279778   0.168035237   0.183960906   0.000539065

   24    7.1  1.5  0.5   0.265558675   0.001453553   0.373397451   0.006891434  -0.000984541  -0.016076064   0.101342537   0.000296008
                        -0.056920625  -0.000311695   0.432289519   0.007978075  -0.001521714  -0.024837288   0.049916506   0.000145660

   25    8.1  1.5  0.5  -0.000000000   0.000000092  -0.000000001   0.000000029   0.000000054  -0.000000003  -0.000000000   0.000000005
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   26    9.1  1.5  0.5   0.000000001  -0.000000000  -0.000000003  -0.000000000  -0.000000001  -0.000000011   0.000000015   0.000000000
                        -0.000000000  -0.000000000  -0.000000004  -0.000000000  -0.000000001  -0.000000017   0.000000007   0.000000000

   27   10.1  1.5  0.5  -0.000000010  -0.000000000   0.000000044   0.000000001   0.000000003   0.000000048   0.000000007   0.000000000
                        -0.000000045  -0.000000000  -0.000000038  -0.000000001  -0.000000002  -0.000000032  -0.000000014  -0.000000000

   28   11.1  1.5  0.5  -0.000002163   0.000395073  -0.000005705   0.000309078  -0.000207705   0.000012708   0.000000216  -0.000074043
                        -0.000000000   0.000000066   0.000000005  -0.000000293  -0.000000243   0.000000014   0.000000000  -0.000000188

   29   12.1  1.5  0.5  -0.000006059  -0.000000033   0.000096239   0.000001775  -0.000015814  -0.000258427   0.000064096   0.000000186
                        -0.000028712  -0.000000157  -0.000082937  -0.000001531   0.000010356   0.000169262  -0.000130172  -0.000000379

   30   13.1  1.5  0.5  -0.000174845  -0.000000957  -0.000331284  -0.000006114  -0.000001936  -0.000031672  -0.000232985  -0.000000681
                         0.000037425   0.000000205  -0.000383461  -0.000007077  -0.000002936  -0.000048020  -0.000114759  -0.000000336

   31   14.1  1.5  0.5  -0.000000001   0.000000354  -0.000000002   0.000000149  -0.000000009  -0.000000000   0.000000000  -0.000000089
                         0.000001242  -0.000226850  -0.000004004   0.000216993   0.000262389  -0.000016057  -0.000001025   0.000350760

   32   15.1  1.5  0.5  -0.000000212   0.000038664   0.000003910  -0.000211857   0.000198641  -0.000012152   0.000000300  -0.000102002
                        -0.000000000   0.000000124   0.000000001  -0.000000097  -0.000000018   0.000000002  -0.000000000  -0.000000125

   33   16.1  1.5  0.5  -0.000185484  -0.000001016  -0.000090779  -0.000001675   0.000005831   0.000095329   0.000260138   0.000000762
                         0.000039847   0.000000218  -0.000105287  -0.000001943   0.000008907   0.000145583   0.000128077   0.000000376

   34   17.1  1.5  0.5   0.000016335   0.000000090   0.000066677   0.000001230  -0.000015931  -0.000260361  -0.000060207  -0.000000177
                         0.000075692   0.000000414  -0.000057579  -0.000001062   0.000010443   0.000170699   0.000122278   0.000000359

   35    1.1  1.5 -0.5  -0.000488359   0.089260761   0.000020265  -0.001128674  -0.091623132   0.005605011  -0.000631023   0.215640663
                        -0.000000673   0.000023236   0.000000645  -0.000045681  -0.000049757   0.000002354  -0.000000161  -0.000007089

   36    2.1  1.5 -0.5  -0.245564956  -0.001344574   0.157180343   0.002900761  -0.009742857  -0.159213759   0.348480317   0.001017910
                         0.052947918   0.000289205   0.181782998   0.003354258  -0.014875267  -0.243067046   0.171670680   0.000501433

   37    3.1  1.5 -0.5  -0.018601447  -0.000101938   0.246783805   0.004555351   0.014263570   0.233131241   0.036935750   0.000109409
                        -0.087120001  -0.000476680  -0.213384129  -0.003938175  -0.009351553  -0.152871452  -0.075202178  -0.000221095

   38    4.1  1.5 -0.5   0.000118049  -0.021595788  -0.003159449   0.171252868   0.477176973  -0.029196999  -0.000135765   0.047402354
                         0.000000580  -0.000097764   0.000002586  -0.000179661  -0.000073999   0.000006715  -0.000000693  -0.000045757

   39    5.1  1.5 -0.5   0.090553579   0.000495500  -0.194953589  -0.003598313  -0.007906604  -0.129217181   0.049444266   0.000144745
                         0.421180505   0.002305597   0.168276775   0.003106048   0.005189581   0.084815489  -0.100356757  -0.000293042

   40    6.1  1.5 -0.5   0.000000641   0.000054186   0.000001155  -0.000070908   0.000049551  -0.000001400  -0.000000330  -0.000064691
                         0.000542199  -0.098964905  -0.002109927   0.114281065  -0.200956912   0.012292736  -0.001218917   0.416326577

   41    7.1  1.5 -0.5  -0.000000941   0.000196269  -0.000004237   0.000239260   0.000172606  -0.000010907   0.000000179  -0.000018327
                        -0.001486597   0.271590369  -0.010542368   0.571226599   0.029585486  -0.001812406  -0.000329905   0.112968877

   42    8.1  1.5 -0.5  -0.000000019  -0.000000000   0.000000022   0.000000000  -0.000000003  -0.000000045   0.000000002   0.000000000
                        -0.000000090  -0.000000000  -0.000000019  -0.000000000   0.000000002   0.000000030  -0.000000004  -0.000000000

   43    9.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000001   0.000000000  -0.000000005   0.000000021  -0.000000001  -0.000000000   0.000000017

   44   10.1  1.5 -0.5   0.000000000  -0.000000046   0.000000001  -0.000000058   0.000000058  -0.000000004   0.000000000  -0.000000015
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   45   11.1  1.5 -0.5  -0.000083144  -0.000000455   0.000234009   0.000004319   0.000010620   0.000173572  -0.000032559  -0.000000095
                        -0.000386225  -0.000002114  -0.000201913  -0.000003727  -0.000006980  -0.000114079   0.000066501   0.000000194

   46   12.1  1.5 -0.5   0.000000161  -0.000029344   0.000002344  -0.000127045  -0.000308925   0.000018903   0.000000422  -0.000145097
                        -0.000000000   0.000000114  -0.000000003   0.000000197   0.000000129  -0.000000009   0.000000001  -0.000000042

   47   13.1  1.5 -0.5   0.000000000  -0.000000180   0.000000003  -0.000000165  -0.000000161   0.000000009  -0.000000000   0.000000041
                         0.000000979  -0.000178805   0.000009353  -0.000506746   0.000057524  -0.000003517   0.000000760  -0.000259714

   48   14.1  1.5 -0.5   0.000221702   0.000001214  -0.000141800  -0.000002617   0.000008804   0.000143863  -0.000314676  -0.000000919
                        -0.000048051  -0.000000262  -0.000164253  -0.000003031   0.000013429   0.000219434  -0.000154958  -0.000000453

   49   15.1  1.5 -0.5  -0.000008252  -0.000000045  -0.000160206  -0.000002957  -0.000010164  -0.000166135  -0.000044974  -0.000000133
                        -0.000037773  -0.000000207   0.000138626   0.000002558   0.000006661   0.000108891   0.000091553   0.000000269

   50   16.1  1.5 -0.5   0.000000001  -0.000000050   0.000000003  -0.000000183  -0.000000092   0.000000007  -0.000000000  -0.000000095
                         0.000001039  -0.000189716   0.000002565  -0.000139018  -0.000174017   0.000010646  -0.000000849   0.000289958

   51   17.1  1.5 -0.5  -0.000000424   0.000077434   0.000001625  -0.000088097  -0.000311329   0.000019048  -0.000000400   0.000136297
                        -0.000000001   0.000000053  -0.000000001   0.000000048  -0.000000013  -0.000000001   0.000000000   0.000000041

   52    1.1  1.5 -1.5   0.042176034   0.000230853   0.155130661   0.002863721   0.010665170   0.174286265  -0.169188080  -0.000494051
                         0.196077391   0.001073242  -0.134110254  -0.002475683  -0.006991711  -0.114255956   0.343352042   0.001002633

   53    2.1  1.5 -1.5   0.000001081  -0.000025318   0.000001553  -0.000108902   0.000031356   0.000000863  -0.000000594  -0.000063786
                         0.000219491  -0.039998025   0.001097239  -0.059533164  -0.464178868   0.028399016  -0.001065426   0.363335226

   54    3.1  1.5 -1.5  -0.000574391   0.104965552  -0.005542232   0.300297774   0.083793031  -0.005129078  -0.000710857   0.243287669
                         0.000000113  -0.000107476   0.000002324  -0.000144614  -0.000076780   0.000004883  -0.000000172  -0.000029996

   55    4.1  1.5 -1.5  -0.099160683  -0.000542272  -0.254322545  -0.004694086  -0.003091770  -0.050551874  -0.013068870  -0.000039234
                        -0.460360829  -0.002520291   0.219989233   0.004060258   0.002028156   0.033166014   0.026689227   0.000078886

   56    5.1  1.5 -1.5   0.000672264  -0.122730426   0.004895980  -0.265347603  -0.346303601   0.021187759  -0.000885292   0.301960971
                        -0.000001417   0.000107893  -0.000003094   0.000183609   0.000020676  -0.000003526   0.000000341   0.000061208

   57    6.1  1.5 -1.5  -0.322115550  -0.001763251   0.186187741   0.003436804   0.011056765   0.180704740  -0.358040988  -0.001044904
                         0.069318180   0.000379346   0.215256510   0.003973777   0.016868435   0.275671039  -0.176468755  -0.000514531

   58    7.1  1.5 -1.5   0.491843786   0.002692485   0.009156572   0.000169041   0.006253968   0.102213447  -0.067096593  -0.000195848
                        -0.105835660  -0.000578931   0.010783976   0.000199360   0.009535964   0.155837062  -0.033031779  -0.000096533

   59    8.1  1.5 -1.5  -0.000000000   0.000000043  -0.000000001   0.000000053  -0.000000019   0.000000001  -0.000000000   0.000000018
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   60    9.1  1.5 -1.5   0.000000045   0.000000000  -0.000000008  -0.000000000   0.000000002   0.000000032  -0.000000128  -0.000000000
                        -0.000000010  -0.000000000  -0.000000009  -0.000000000   0.000000003   0.000000049  -0.000000063  -0.000000000

   61   10.1  1.5 -1.5   0.000000040   0.000000000  -0.000000035  -0.000000001  -0.000000006  -0.000000092   0.000000031   0.000000000
                         0.000000185   0.000000001   0.000000030   0.000000001   0.000000004   0.000000060  -0.000000062  -0.000000000

   62   11.1  1.5 -1.5  -0.000000733   0.000133822  -0.000005700   0.000308924   0.000320922  -0.000019635   0.000000573  -0.000195270
                         0.000000001  -0.000000143   0.000000004  -0.000000229  -0.000000292   0.000000020  -0.000000001   0.000000138

   63   12.1  1.5 -1.5   0.000052543   0.000000287   0.000110463   0.000002039  -0.000003129  -0.000051117   0.000095951   0.000000281
                         0.000243173   0.000001331  -0.000095672  -0.000001766   0.000002047   0.000033429  -0.000194668  -0.000000569

   64   13.1  1.5 -1.5  -0.000266054  -0.000001456  -0.000082752  -0.000001528  -0.000009520  -0.000155591   0.000199134   0.000000581
                         0.000057250   0.000000313  -0.000095833  -0.000001769  -0.000014520  -0.000237284   0.000098116   0.000000286

   65   14.1  1.5 -1.5  -0.000000001   0.000000099  -0.000000005   0.000000269   0.000000167  -0.000000013   0.000000001  -0.000000085
                        -0.000000198   0.000036132  -0.000000991   0.000053796   0.000419159  -0.000025645   0.000000962  -0.000328049

   66   15.1  1.5 -1.5   0.000000314  -0.000057460   0.000003459  -0.000187410   0.000020487  -0.000001251   0.000000848  -0.000290096
                         0.000000000   0.000000060  -0.000000001   0.000000071   0.000000025  -0.000000001  -0.000000000   0.000000037

   67   16.1  1.5 -1.5  -0.000458761  -0.000002511   0.000146428   0.000002703   0.000006382   0.000104297  -0.000261426  -0.000000763
                         0.000098761   0.000000540   0.000169185   0.000003123   0.000009742   0.000159202  -0.000128955  -0.000000376

   68   17.1  1.5 -1.5   0.000081871   0.000000448   0.000245039   0.000004523   0.000009512   0.000155457  -0.000119249  -0.000000348
                         0.000380464   0.000002083  -0.000211878  -0.000003911  -0.000006235  -0.000101907   0.000241869   0.000000706

   69    1.1  0.5  0.5  -0.000000032  -0.000000000  -0.000000043  -0.000000001   0.000000004   0.000000060  -0.000000035  -0.000000000
                         0.000000007  -0.000000000  -0.000000049  -0.000000001   0.000000006   0.000000091  -0.000000017  -0.000000000

   70    2.1  0.5  0.5   0.000000001  -0.000000000   0.000000153   0.000000003   0.000000002   0.000000032   0.000000050   0.000000000
                         0.000000003   0.000000000  -0.000000133  -0.000000003  -0.000000001  -0.000000021  -0.000000102  -0.000000000

   71    3.1  0.5  0.5   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000063  -0.000000001   0.000000022   0.000000028  -0.000000002  -0.000000000  -0.000000013

   72    4.1  0.5  0.5  -0.000000000   0.000000071   0.000000001  -0.000000037   0.000000021  -0.000000001  -0.000000000   0.000000057
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   73    5.1  0.5  0.5   0.000000004  -0.000000000  -0.000000076  -0.000000001   0.000000004   0.000000061  -0.000000009  -0.000000000
                         0.000000020   0.000000000   0.000000066   0.000000001  -0.000000002  -0.000000040   0.000000018   0.000000000

   74    6.1  0.5  0.5   0.000000027   0.000000000  -0.000000009  -0.000000000   0.000000000   0.000000001  -0.000000127  -0.000000000
                        -0.000000006  -0.000000000  -0.000000010  -0.000000000   0.000000000   0.000000002  -0.000000062  -0.000000000

   75    7.1  0.5  0.5  -0.000000001   0.000000121   0.000000001  -0.000000055  -0.000000038   0.000000003   0.000000000  -0.000000020
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   76    8.1  0.5  0.5   0.000000006   0.000000000   0.000000073   0.000000001   0.000000000   0.000000000   0.000000049   0.000000000
                         0.000000028  -0.000000001  -0.000000063  -0.000000001   0.000000000  -0.000000000  -0.000000100   0.000000001

   77    9.1  0.5  0.5  -0.000000023  -0.000000000  -0.000000085  -0.000000002   0.000000003   0.000000048   0.000000010  -0.000000000
                         0.000000005  -0.000000001  -0.000000098  -0.000000002   0.000000004   0.000000073   0.000000005   0.000000001

   78   10.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000220   0.000000001  -0.000000067  -0.000000009   0.000000001   0.000000000  -0.000000263

   79   11.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000002  -0.000000426   0.000000007  -0.000000353   0.000000288  -0.000000018  -0.000000000   0.000000053

   80   12.1  0.5  0.5   0.000000002  -0.000000272  -0.000000003   0.000000163   0.000000198  -0.000000012  -0.000000001   0.000000252
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   81    1.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000033  -0.000000001   0.000000065   0.000000109  -0.000000007  -0.000000000   0.000000039

   82    2.1  0.5 -0.5   0.000000000  -0.000000003  -0.000000004   0.000000203  -0.000000039   0.000000002  -0.000000000   0.000000114
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   83    3.1  0.5 -0.5  -0.000000062  -0.000000000   0.000000015   0.000000001  -0.000000001  -0.000000016  -0.000000012   0.000000001
                         0.000000013   0.000000000   0.000000017   0.000000000  -0.000000002  -0.000000024  -0.000000006  -0.000000000

   84    4.1  0.5 -0.5   0.000000015   0.000000000   0.000000028   0.000000001   0.000000001   0.000000018  -0.000000025   0.000000000
                         0.000000070   0.000000000  -0.000000024  -0.000000000  -0.000000001  -0.000000012   0.000000051   0.000000000

   85    5.1  0.5 -0.5   0.000000000  -0.000000020   0.000000002  -0.000000101  -0.000000073   0.000000005   0.000000000  -0.000000020
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   86    6.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000027  -0.000000000   0.000000013   0.000000002  -0.000000000  -0.000000000   0.000000141

   87    7.1  0.5 -0.5   0.000000025   0.000000000   0.000000042   0.000000001  -0.000000002  -0.000000032   0.000000009   0.000000000
                         0.000000118   0.000000001  -0.000000036  -0.000000001   0.000000001   0.000000021  -0.000000018  -0.000000000

   88    8.1  0.5 -0.5  -0.000000001  -0.000000029  -0.000000002   0.000000096  -0.000000000  -0.000000000   0.000000001   0.000000112
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000

   89    9.1  0.5 -0.5  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000
                         0.000000000   0.000000023  -0.000000002   0.000000129   0.000000087  -0.000000005   0.000000000  -0.000000011

   90   10.1  0.5 -0.5   0.000000215   0.000000001  -0.000000044  -0.000000000   0.000000000   0.000000005  -0.000000236  -0.000000000
                        -0.000000046  -0.000000000  -0.000000050  -0.000000001   0.000000001   0.000000008  -0.000000116  -0.000000000

   91   11.1  0.5 -0.5  -0.000000417  -0.000000002  -0.000000231  -0.000000004  -0.000000010  -0.000000158   0.000000048   0.000000000
                         0.000000090   0.000000000  -0.000000268  -0.000000005  -0.000000015  -0.000000240   0.000000023   0.000000000

   92   12.1  0.5 -0.5  -0.000000057  -0.000000000  -0.000000123  -0.000000002   0.000000010   0.000000166  -0.000000111  -0.000000000
                        -0.000000266  -0.000000001   0.000000106   0.000000002  -0.000000007  -0.000000109   0.000000226   0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.000000000   0.380769766  -0.005812021   0.012581924   0.002805322  -0.331397033  -0.011528907   0.108137499
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.047068289  -0.000000139   0.355257200   0.164308217   0.016665209   0.000141564  -0.019460329  -0.002079825
                        -0.038729279  -0.000000379   0.083572851   0.038657858  -0.008872917  -0.000071062  -0.000880880  -0.000111205

    3    3.1  1.5  1.5   0.171703129   0.000000370  -0.006618336  -0.003063705   0.086812592   0.000715654  -0.015424578  -0.001624664
                        -0.208627947   0.000000318   0.028516821   0.013187667   0.163886887   0.001365927   0.655026705   0.069723113

    4    4.1  1.5  1.5  -0.000000458   0.130326234  -0.001876747   0.004079230   0.002849538  -0.334785690   0.021229248  -0.199679640
                         0.000000003   0.000061135  -0.000029986   0.000067590  -0.000000110   0.000384000  -0.000001637   0.000109381

    5    5.1  1.5  1.5   0.152609250   0.000000430  -0.085405699  -0.039504318  -0.004109602  -0.000033040   0.000956263   0.000085153
                        -0.185534072  -0.000000260   0.362596165   0.167703766  -0.007494088  -0.000045562  -0.052949050  -0.005620653

    6    6.1  1.5  1.5  -0.000000154  -0.000010899  -0.000008726   0.000020146   0.000002326   0.000242239  -0.000052573   0.000445269
                        -0.000000178  -0.137485185   0.000142841  -0.000318063  -0.000930117   0.109049673  -0.026930030   0.253007831

    7    7.1  1.5  1.5   0.000000010   0.000038357   0.000029012  -0.000064107   0.000006397  -0.000016765  -0.000138262   0.001004390
                         0.000000252   0.056086708   0.010290051  -0.022271041  -0.003883292   0.459725318  -0.009012979   0.084675024

    8    8.1  1.5  1.5   0.000000008   0.000000000  -0.000000018  -0.000000008   0.000000025   0.000000000   0.000000000   0.000000000
                        -0.000000009   0.000000000   0.000000075   0.000000035   0.000000048   0.000000000  -0.000000003  -0.000000000

    9    9.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000156  -0.000000010   0.000000022  -0.000000003   0.000000311  -0.000000001   0.000000012

   10   10.1  1.5  1.5   0.000000000  -0.000000015  -0.000000013   0.000000027  -0.000000004   0.000000419  -0.000000005   0.000000044
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001

   11   11.1  1.5  1.5  -0.000085643  -0.000000000  -0.000074290  -0.000034362  -0.000027606  -0.000000227   0.000005117   0.000000525
                         0.000104100   0.000000000   0.000314391   0.000145409  -0.000051859  -0.000000417  -0.000227810  -0.000024235

   12   12.1  1.5  1.5   0.000000000  -0.000290902  -0.000004494   0.000009741   0.000003664  -0.000431474   0.000010255  -0.000096614
                        -0.000000000  -0.000000009  -0.000000024   0.000000054   0.000000000   0.000000265  -0.000000006   0.000000132

   13   13.1  1.5  1.5   0.000000000  -0.000000027   0.000000020  -0.000000045   0.000000006   0.000000086  -0.000000137   0.000001021
                        -0.000000000   0.000010503   0.000008625  -0.000018670  -0.000003620   0.000428094  -0.000018747   0.000176129

   14   14.1  1.5  1.5   0.000042403   0.000000000   0.000330650   0.000152927   0.000015481   0.000000131  -0.000018143  -0.000001939
                         0.000035029   0.000000000   0.000077996   0.000036078  -0.000008267  -0.000000066  -0.000000910  -0.000000113

   15   15.1  1.5  1.5  -0.000188541  -0.000000000  -0.000029446  -0.000013622   0.000076084   0.000000627  -0.000013448  -0.000001421
                         0.000229107  -0.000000000   0.000125261   0.000057933   0.000143711   0.000001202   0.000567770   0.000060439

   16   16.1  1.5  1.5  -0.000000000  -0.000000122   0.000000018  -0.000000040   0.000000002  -0.000000334  -0.000000013   0.000000037
                        -0.000000000  -0.000133448   0.000004178  -0.000009036  -0.000000848   0.000101218   0.000018642  -0.000175143

   17   17.1  1.5  1.5   0.000000000   0.000216898   0.000003478  -0.000007521  -0.000000658   0.000078670   0.000020019  -0.000188063
                        -0.000000000  -0.000000041  -0.000000015   0.000000035  -0.000000000   0.000000208   0.000000001   0.000000044

   18    1.1  1.5  0.5  -0.307334462  -0.000000575  -0.096708865  -0.044732034  -0.144263670  -0.001229301  -0.001985163  -0.000206865
                         0.373558091   0.000000011   0.410896567   0.190033777  -0.275431869  -0.002328357   0.083804409   0.008904922

   19    2.1  1.5  0.5  -0.000000331   0.000107037  -0.000038609   0.000086677  -0.000001919   0.000387235   0.000040972  -0.000203479
                         0.000000346  -0.024630131  -0.011374794   0.024606156   0.003201814  -0.380384600  -0.039276365   0.368924157

   20    3.1  1.5  0.5  -0.000000299   0.523807960   0.001163064  -0.002516153  -0.000159595   0.019217263  -0.010511987   0.098669215
                         0.000000106   0.000026570  -0.000010202   0.000022561  -0.000002964   0.000034669   0.000061150  -0.000454591

   21    4.1  1.5  0.5  -0.198174928  -0.000000138   0.075745056   0.035034693   0.111500846   0.000947976   0.003034260   0.000341315
                         0.240809277  -0.000000352  -0.321567578  -0.148721205   0.212603207   0.001787443  -0.105693524  -0.011254794

   22    5.1  1.5  0.5  -0.000000202   0.266604544  -0.003510000   0.007573612  -0.001131945   0.131042210  -0.053469875   0.502444220
                         0.000000273   0.000011153   0.000040068  -0.000090676  -0.000001165  -0.000625075   0.000032795  -0.000387632

   23    6.1  1.5  0.5   0.020011038  -0.000000142   0.464339200   0.214769689   0.368769318   0.003135093  -0.083801083  -0.008897489
                         0.016501103   0.000000285   0.109332389   0.050574635  -0.193351679  -0.001639012  -0.002413039  -0.000262515

   24    7.1  1.5  0.5  -0.046047201  -0.000000453  -0.168620497  -0.077991140  -0.138038991  -0.001165230   0.066093243   0.007040595
                        -0.037819112   0.000000095  -0.039650451  -0.018341988   0.072498141   0.000612759   0.002174106   0.000251932

   25    8.1  1.5  0.5  -0.000000000   0.000000046   0.000000044  -0.000000094   0.000000001  -0.000000075   0.000000002  -0.000000015
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   26    9.1  1.5  0.5   0.000000062  -0.000000000  -0.000000008  -0.000000004  -0.000000056  -0.000000000  -0.000000101  -0.000000011
                         0.000000051   0.000000000  -0.000000002  -0.000000001   0.000000030   0.000000000  -0.000000002  -0.000000000

   27   10.1  1.5  0.5  -0.000000004   0.000000000  -0.000000009  -0.000000004  -0.000000003  -0.000000000  -0.000000002  -0.000000000
                         0.000000004   0.000000000   0.000000039   0.000000018  -0.000000007  -0.000000000   0.000000091   0.000000010

   28   11.1  1.5  0.5   0.000000000  -0.000089739  -0.000003425   0.000007392  -0.000000962   0.000111187  -0.000044642   0.000419518
                        -0.000000000  -0.000000016   0.000000045  -0.000000100  -0.000000002  -0.000000351   0.000000034  -0.000000427

   29   12.1  1.5  0.5   0.000304052   0.000000000   0.000007495   0.000003466   0.000009933   0.000000083   0.000001262   0.000000151
                        -0.000369538   0.000000000  -0.000031079  -0.000014374   0.000018505   0.000000149  -0.000037206  -0.000003972

   30   13.1  1.5  0.5   0.000028996   0.000000000   0.000053671   0.000024825   0.000039179   0.000000340   0.000019912   0.000002133
                         0.000023786  -0.000000000   0.000012680   0.000005865  -0.000020440  -0.000000175   0.000000799   0.000000100

   31   14.1  1.5  0.5   0.000000000  -0.000000195  -0.000000038   0.000000085  -0.000000002   0.000000432   0.000000009   0.000000084
                        -0.000000000   0.000022214  -0.000010578   0.000022882   0.000002980  -0.000354029  -0.000036560   0.000343412

   32   15.1  1.5  0.5   0.000000000  -0.000521926   0.000000115  -0.000000253  -0.000000455   0.000053308  -0.000024106   0.000226423
                        -0.000000000  -0.000000028   0.000000003  -0.000000007  -0.000000003  -0.000000111   0.000000067  -0.000000541

   33   16.1  1.5  0.5   0.000034826   0.000000000  -0.000456721  -0.000211246  -0.000364461  -0.000003095   0.000097350   0.000010346
                         0.000028464   0.000000000  -0.000107486  -0.000049721   0.000191119   0.000001619   0.000002915   0.000000324

   34   17.1  1.5  0.5  -0.000127686  -0.000000000   0.000114074   0.000052764   0.000169426   0.000001443   0.000003128   0.000000339
                         0.000155240   0.000000000  -0.000484700  -0.000224167   0.000323395   0.000002729  -0.000119981  -0.000012762

   35    1.1  1.5 -0.5   0.000000374  -0.483735588  -0.195227532   0.422123892   0.002632941  -0.310925497   0.008907325  -0.083827904
                        -0.000000438  -0.000002415  -0.000046659   0.000112609   0.000006650   0.000236871  -0.000000559   0.000043605

   36    2.1  1.5 -0.5  -0.019088203  -0.000000477  -0.023930315  -0.011062705   0.336647303   0.002834286   0.368829900   0.039266777
                        -0.015565837   0.000000036  -0.005728043  -0.002646506  -0.177090904  -0.001489441   0.008341374   0.000868734

   37    3.1  1.5 -0.5  -0.332775370  -0.000000272  -0.000599065  -0.000276690  -0.008960116  -0.000076781  -0.002739786  -0.000304606
                         0.404518643   0.000000164   0.002443902   0.001129718  -0.017000609  -0.000139943   0.098632217   0.010507751

   38    4.1  1.5 -0.5  -0.000000184  -0.311869216   0.152792102  -0.330368007  -0.002023248   0.240067823  -0.011259679   0.105735448
                        -0.000000330   0.000041562   0.000010019  -0.000029030  -0.000008879  -0.000054346   0.000080546  -0.000585436

   39    5.1  1.5 -0.5  -0.169375786  -0.000000339   0.001825345   0.000844055  -0.060336059  -0.000526996  -0.012024835  -0.001271222
                         0.205887897  -0.000000017  -0.007350914  -0.003407239  -0.116327172  -0.001001786   0.502300456   0.053454771

   40    6.1  1.5 -0.5   0.000000310  -0.000028892   0.000033250  -0.000083227  -0.000005409   0.000139681  -0.000056367   0.000471443
                         0.000000072  -0.025936985  -0.220644085   0.477037165  -0.003537674   0.416384032  -0.008901182   0.083834490

   41    7.1  1.5 -0.5   0.000000361  -0.000050441  -0.000035054   0.000081419  -0.000001162   0.000055815   0.000088795  -0.000642711
                        -0.000000289   0.059587142   0.080118944  -0.173219582   0.001316523  -0.155919018   0.007044541  -0.066125869

   42    8.1  1.5 -0.5  -0.000000029  -0.000000000  -0.000000022  -0.000000010   0.000000035   0.000000000   0.000000001   0.000000000
                         0.000000036   0.000000000   0.000000092   0.000000042   0.000000066   0.000000001  -0.000000015  -0.000000002

   43    9.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000080   0.000000004  -0.000000009   0.000000001  -0.000000064  -0.000000011   0.000000101

   44   10.1  1.5 -0.5  -0.000000000  -0.000000006  -0.000000018   0.000000040   0.000000000  -0.000000008   0.000000010  -0.000000091
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   45   11.1  1.5 -0.5   0.000057002   0.000000000   0.000001793   0.000000829  -0.000051352  -0.000000449  -0.000010143  -0.000001068
                        -0.000069310   0.000000000  -0.000007172  -0.000003323  -0.000098618  -0.000000851   0.000419395   0.000044629

   46   12.1  1.5 -0.5  -0.000000000   0.000478546   0.000014786  -0.000031970  -0.000000170   0.000021001  -0.000003974   0.000037225
                         0.000000000  -0.000000017  -0.000000077   0.000000167  -0.000000004   0.000000197   0.000000059  -0.000000400

   47   13.1  1.5 -0.5  -0.000000000   0.000000054  -0.000000015   0.000000032  -0.000000003   0.000000106   0.000000050  -0.000000337
                         0.000000000  -0.000037504  -0.000025508   0.000055148  -0.000000382   0.000044190   0.000002135  -0.000019925

   48   14.1  1.5 -0.5   0.000017278   0.000000000  -0.000022252  -0.000010287   0.000313289   0.000002638   0.000343318   0.000036551
                         0.000013962  -0.000000000  -0.000005331  -0.000002463  -0.000164885  -0.000001387   0.000008038   0.000000838

   49   15.1  1.5 -0.5   0.000331579   0.000000000  -0.000000051  -0.000000023  -0.000024671  -0.000000214  -0.000005785  -0.000000625
                        -0.000403066  -0.000000000   0.000000248   0.000000112  -0.000047255  -0.000000401   0.000226350   0.000024098

   50   16.1  1.5 -0.5   0.000000000   0.000000145  -0.000000056   0.000000133   0.000000004  -0.000000115   0.000000084  -0.000000660
                         0.000000000  -0.000044978   0.000217018  -0.000469199   0.000003493  -0.000411531   0.000010350  -0.000097391

   51   17.1  1.5 -0.5   0.000000000  -0.000201005   0.000230293  -0.000497942  -0.000003087   0.000365088  -0.000012766   0.000120021
                        -0.000000000  -0.000000026   0.000000058  -0.000000138  -0.000000010  -0.000000242   0.000000044  -0.000000349

   52    1.1  1.5 -1.5   0.241918074   0.000000000  -0.002885794  -0.001333047  -0.153985641  -0.001303510   0.002504616   0.000267026
                        -0.294042957  -0.000000000   0.012246510   0.005657081  -0.293449172  -0.002484088  -0.108108488  -0.011525814

   53    2.1  1.5 -1.5   0.000000204  -0.000003682  -0.000058485   0.000136974   0.000002854   0.000113301   0.000063003  -0.000429915
                         0.000000348  -0.060953924   0.168794599  -0.364954902   0.000158373  -0.018879752   0.002081843  -0.019475512

   54    3.1  1.5 -1.5  -0.000000010  -0.270199154   0.013538798  -0.029274592   0.001542049  -0.185458398  -0.069742038   0.655208242
                        -0.000000488   0.000045237   0.000042696  -0.000098725  -0.000000981  -0.000720756   0.000009343  -0.000249109

   55    4.1  1.5 -1.5   0.082754194   0.000000293  -0.000869826  -0.000401265  -0.155220172  -0.001323957  -0.004734209  -0.000493335
                        -0.100681053  -0.000000352   0.003985986   0.001833593  -0.296628224  -0.002523292   0.199623542   0.021223515

   56    5.1  1.5 -1.5   0.000000474  -0.240234207   0.172293772  -0.372518605  -0.000055697   0.008545500   0.005621118  -0.052956994
                        -0.000000167  -0.000027235   0.000013394  -0.000036254  -0.000008086   0.000156844   0.000045052  -0.000270366

   57    6.1  1.5 -1.5   0.106163664  -0.000000040  -0.000314205  -0.000141034   0.096675088   0.000822530  -0.252929646  -0.026921588
                         0.087358185  -0.000000232  -0.000053342  -0.000024269  -0.050456091  -0.000434244  -0.006305163  -0.000676296

   58    7.1  1.5 -1.5  -0.043287634   0.000000188  -0.021662626  -0.010009081   0.407074954   0.003435649  -0.084629047  -0.009007359
                        -0.035663722   0.000000167  -0.005170491  -0.002388367  -0.213629000  -0.001810059  -0.002965313  -0.000346978

   59    8.1  1.5 -1.5   0.000000000  -0.000000012   0.000000036  -0.000000077   0.000000000  -0.000000054   0.000000000  -0.000000003
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   60    9.1  1.5 -1.5   0.000000120  -0.000000000   0.000000022   0.000000010   0.000000276   0.000000002  -0.000000012  -0.000000001
                         0.000000099   0.000000000   0.000000005   0.000000002  -0.000000145  -0.000000001  -0.000000000  -0.000000000

   61   10.1  1.5 -1.5  -0.000000010  -0.000000000  -0.000000006  -0.000000003   0.000000195   0.000000002   0.000000002   0.000000000
                         0.000000012  -0.000000000   0.000000026   0.000000012   0.000000371   0.000000003  -0.000000044  -0.000000005

   62   11.1  1.5 -1.5  -0.000000000   0.000134802   0.000149414  -0.000323049  -0.000000475   0.000058748   0.000024241  -0.000227867
                         0.000000000   0.000000002  -0.000000095   0.000000200  -0.000000007   0.000000349   0.000000036  -0.000000161

   63   12.1  1.5 -1.5  -0.000184815  -0.000000000  -0.000002181  -0.000001007  -0.000200252  -0.000001703  -0.000002370  -0.000000244
                         0.000224650   0.000000000   0.000009494   0.000004380  -0.000382190  -0.000003245   0.000096585   0.000010252

   64   13.1  1.5 -1.5  -0.000008128  -0.000000000  -0.000018162  -0.000008390   0.000379114   0.000003202  -0.000176059  -0.000018739
                        -0.000006652  -0.000000000  -0.000004326  -0.000001998  -0.000198841  -0.000001688  -0.000005100  -0.000000571

   65   14.1  1.5 -1.5  -0.000000000   0.000000110   0.000000041  -0.000000079   0.000000002   0.000000127   0.000000068  -0.000000489
                        -0.000000000   0.000055000   0.000157125  -0.000339725   0.000000147  -0.000017549   0.000001941  -0.000018159

   66   15.1  1.5 -1.5  -0.000000000   0.000296712   0.000059513  -0.000128675   0.000001356  -0.000162607  -0.000060456   0.000567929
                         0.000000000  -0.000000036   0.000000028  -0.000000069  -0.000000003  -0.000000596   0.000000021  -0.000000294

   67   16.1  1.5 -1.5   0.000102975  -0.000000000  -0.000008786  -0.000004063   0.000089472   0.000000750   0.000175097   0.000018637
                         0.000084879  -0.000000000  -0.000002112  -0.000000976  -0.000047328  -0.000000395   0.000004020   0.000000419

   68   17.1  1.5 -1.5   0.000137836  -0.000000000   0.000001759   0.000000813   0.000036739   0.000000306  -0.000004399  -0.000000463
                        -0.000167469   0.000000000  -0.000007313  -0.000003382   0.000069565   0.000000582   0.000188011   0.000020014

   69    1.1  0.5  0.5  -0.000000061  -0.000000000   0.024480796   0.011323265   0.000809035  -0.000015482   0.037300908   0.003974728
                        -0.000000050  -0.000000000   0.005752466   0.002662158  -0.000486423  -0.000063838   0.000854337   0.000025944

   70    2.1  0.5  0.5   0.000000007  -0.000000000  -0.004478341  -0.002071112   0.009476072   0.000062554  -0.000956912  -0.000094365
                        -0.000000008  -0.000000000   0.019018683   0.008793309   0.017977908   0.000312238   0.039917687   0.004414683

   71    3.1  0.5  0.5   0.000000000  -0.000000000  -0.000041818  -0.000029181   0.000031704  -0.000032829  -0.000058124  -0.000065452
                         0.000000000   0.000000022  -0.000226431   0.000671440   0.000414824  -0.039995631   0.004471172  -0.040506509

   72    4.1  0.5  0.5  -0.000000000   0.000000020  -0.000504037   0.001080727   0.000082091  -0.009205801   0.000276227  -0.002581631
                        -0.000000000   0.000000000   0.000012141  -0.000001535   0.000010675  -0.000134338   0.000023176  -0.000042560

   73    5.1  0.5  0.5  -0.000000001  -0.000000000   0.010027945   0.004641360  -0.006748712  -0.000108686  -0.000608021  -0.000051557
                         0.000000002   0.000000000  -0.042526274  -0.019669160  -0.012887616  -0.000109057   0.023500664   0.002502338

   74    6.1  0.5  0.5  -0.000000160   0.000000000  -0.041170023  -0.019044951   0.018541485   0.000225108   0.016172054   0.001701904
                        -0.000000131  -0.000000000  -0.009718326  -0.004494903  -0.009761723  -0.000091697   0.000354362   0.000026300

   75    7.1  0.5  0.5   0.000000000   0.000000005   0.001207846  -0.002430976  -0.000487494   0.054594647   0.001555335  -0.014665459
                         0.000000000  -0.000000000  -0.000019637  -0.000003900   0.000007150   0.000001472   0.000044335  -0.000043597

   76    8.1  0.5  0.5   0.000000018   0.000000000   0.000000059   0.000000027  -0.000000096  -0.000000001   0.000000007   0.000000001
                        -0.000000022   0.000000003  -0.000000250  -0.000000117  -0.000000182  -0.000000004  -0.000000325  -0.000000034

   77    9.1  0.5  0.5  -0.000000070  -0.000000000  -0.000000308  -0.000000142   0.000000184   0.000000001  -0.000000383  -0.000000041
                        -0.000000057   0.000000001  -0.000000072  -0.000000034  -0.000000096  -0.000000002  -0.000000009  -0.000000001

   78   10.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000000
                        -0.000000000  -0.000000597  -0.000000119   0.000000254  -0.000000005   0.000000390   0.000000001  -0.000000027

   79   11.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000002
                        -0.000000000   0.000000055   0.000000071  -0.000000153   0.000000007  -0.000000877   0.000000001  -0.000000009

   80   12.1  0.5  0.5   0.000000000  -0.000000044   0.000000057  -0.000000123   0.000000003  -0.000000384  -0.000000019   0.000000177
                         0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000

   81    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000005919   0.000015809  -0.000063722   0.000054800   0.000066123  -0.000009833
                         0.000000000  -0.000000079   0.011631998  -0.025147565   0.000015954  -0.000942413  -0.003974262   0.037310689

   82    2.1  0.5 -0.5   0.000000000  -0.000000011   0.009033924  -0.019538829   0.000305551  -0.020322394  -0.004415685   0.039929142
                         0.000000000  -0.000000000   0.000000937  -0.000003176  -0.000089692  -0.000037435  -0.000007910  -0.000032106

   83    3.1  0.5 -0.5  -0.000000017  -0.000000000   0.000660234   0.000210804  -0.035431035  -0.000382054   0.040494127   0.004471319
                        -0.000000014   0.000000000   0.000125599   0.000092638   0.018555143   0.000164677   0.001003621   0.000045450

   84    4.1  0.5 -0.5   0.000000013  -0.000000000  -0.000249370  -0.000127424  -0.004396486  -0.000047596  -0.000017246   0.000016772
                        -0.000000016  -0.000000000   0.001051564   0.000487815  -0.008089235  -0.000067730   0.002581925   0.000276690

   85    5.1  0.5 -0.5  -0.000000000   0.000000002  -0.020209355   0.043692603  -0.000147070   0.014547701  -0.002502861   0.023508442
                        -0.000000000   0.000000000   0.000006304  -0.000006776  -0.000045567  -0.000012384  -0.000006415  -0.000063550

   86    6.1  0.5 -0.5   0.000000000  -0.000000000  -0.000006920   0.000016481   0.000023401   0.000028507   0.000013126  -0.000020300
                         0.000000000  -0.000000207  -0.019568195   0.042301494   0.000241939  -0.020954166  -0.001702056   0.016175923

   87    7.1  0.5 -0.5   0.000000003  -0.000000000   0.000553774   0.000296146   0.025369037   0.000220186  -0.000296088   0.000008300
                        -0.000000004   0.000000000  -0.002367064  -0.001171142   0.048342397   0.000434994   0.014662534   0.001555945

   88    8.1  0.5 -0.5  -0.000000003  -0.000000029  -0.000000120   0.000000256  -0.000000004   0.000000206   0.000000034  -0.000000325
                        -0.000000002  -0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000001

   89    9.1  0.5 -0.5  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000
                        -0.000000001  -0.000000090  -0.000000146   0.000000316   0.000000002  -0.000000208   0.000000041  -0.000000384

   90   10.1  0.5 -0.5   0.000000461  -0.000000000   0.000000247   0.000000116   0.000000345   0.000000004   0.000000027   0.000000001
                         0.000000379  -0.000000000   0.000000058   0.000000028  -0.000000181  -0.000000002   0.000000001  -0.000000001

   91   11.1  0.5 -0.5  -0.000000042   0.000000000  -0.000000149  -0.000000069  -0.000000776  -0.000000007   0.000000009   0.000000001
                        -0.000000035  -0.000000000  -0.000000035  -0.000000016   0.000000408   0.000000003   0.000000002   0.000000000

   92   12.1  0.5 -0.5  -0.000000028  -0.000000000   0.000000027   0.000000013  -0.000000180  -0.000000001   0.000000004   0.000000000
                         0.000000034   0.000000000  -0.000000120  -0.000000055  -0.000000340  -0.000000003  -0.000000177  -0.000000019


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.034133635   0.255389024   0.214175151   0.020352851   0.004440095   0.307700678   0.000000000  -0.189928382
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.158064675  -0.021133093   0.001793245  -0.018955832   0.039580159  -0.000595057   0.071091382  -0.000047893
                         0.307463993  -0.041083658   0.019525266  -0.205493467   0.340740662  -0.004924076  -0.176800264  -0.000014594

    3    3.1  1.5  1.5  -0.007554594   0.000976683  -0.000812291   0.008556384   0.296745674  -0.004277250   0.354866673   0.000008637
                         0.004745613  -0.000615544   0.000063368  -0.000805477  -0.034537380   0.000489641   0.142556941  -0.000028999

    4    4.1  1.5  1.5   0.048254569   0.361193167   0.327745584   0.031142078   0.001049625   0.072091652   0.000004462   0.289220142
                         0.000058494   0.000439525   0.000043525  -0.000014394   0.000014201  -0.000046754  -0.000048680  -0.000028370

    5    5.1  1.5  1.5   0.300896532  -0.040203905   0.019839253  -0.208799069   0.301835865  -0.004363435  -0.229267618  -0.000015972
                        -0.154636607   0.020670319  -0.001820860   0.019267086  -0.035024660   0.000530810  -0.092122496   0.000052520

    6    6.1  1.5  1.5   0.000007655   0.000121259   0.000044937  -0.000006253  -0.000003074  -0.000034417  -0.000008230  -0.000005849
                         0.017259034   0.129036489  -0.027830612  -0.002644143   0.004748360   0.329157250  -0.000000927  -0.219589782

    7    7.1  1.5  1.5  -0.000081449  -0.000441067   0.000043405   0.000008250  -0.000033013  -0.000009179   0.000062908   0.000034865
                         0.053098933   0.397293353   0.011688985   0.001106639   0.004495431   0.310655606   0.000005303   0.346780434

    8    8.1  1.5  1.5  -0.000000086   0.000000011  -0.000246873   0.002598721   0.017184793  -0.000247575   0.026259476   0.000000739
                         0.000000044  -0.000000006   0.000022040  -0.000242351  -0.001998652   0.000028003   0.010547695  -0.000002473

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000011290  -0.000002080  -0.000002312  -0.000002396   0.000002788   0.000004616
                        -0.000000025  -0.000000189  -0.027145866  -0.002579825   0.000326873   0.022610840   0.000000207   0.016352975

   10   10.1  1.5  1.5   0.000000026   0.000000193  -0.038087208  -0.003619394   0.000063935   0.004425569  -0.000000023   0.006250979
                         0.000000000   0.000000000   0.000006384   0.000002030   0.000000970  -0.000006336  -0.000000144  -0.000008202

   11   11.1  1.5  1.5   0.000269552  -0.000036007  -0.000231113   0.002432383  -0.002412694   0.000034924   0.003905116   0.000000214
                        -0.000138985   0.000018573   0.000021315  -0.000226015   0.000282111  -0.000004394   0.001567510  -0.000000708

   12   12.1  1.5  1.5   0.000055003   0.000411653  -0.004714895  -0.000448019  -0.000040632  -0.002809348  -0.000000044  -0.001583839
                         0.000000043   0.000000320  -0.000000332   0.000000153  -0.000000148  -0.000000034   0.000000484   0.000001468

   13   13.1  1.5  1.5  -0.000000064  -0.000000315  -0.000000728  -0.000000057   0.000000372   0.000000281  -0.000000633  -0.000000359
                         0.000051381   0.000384397   0.000024540   0.000002374  -0.000074058  -0.005123272  -0.000000052  -0.002546418

   14   14.1  1.5  1.5   0.000147292  -0.000019693  -0.000021743   0.000229834  -0.000478566   0.000007194  -0.000854252   0.000000577
                         0.000286093  -0.000038228  -0.000235154   0.002474873  -0.004103844   0.000059305   0.002130489   0.000000175

   15   15.1  1.5  1.5   0.000076279  -0.000010221  -0.000061472   0.000646882  -0.004491943   0.000064792  -0.003264810  -0.000000042
                        -0.000038465   0.000005158   0.000005791  -0.000059721   0.000522784  -0.000007534  -0.001311674   0.000000146

   16   16.1  1.5  1.5  -0.000000025  -0.000000170  -0.000001052  -0.000000236   0.000000131  -0.000001298  -0.000000429  -0.000000395
                         0.000007834   0.000058697  -0.000362761  -0.000034444   0.000026817   0.001864178  -0.000000039  -0.004238395

   17   17.1  1.5  1.5  -0.000000872  -0.000006448  -0.000098855  -0.000009372   0.000037014   0.002569477  -0.000000030  -0.003855391
                         0.000000031   0.000000235  -0.000000324   0.000000095  -0.000000094   0.000000473   0.000000331  -0.000000126

   18    1.1  1.5  0.5  -0.215603740   0.028806575  -0.032267909   0.339539069   0.306219804  -0.004418088   0.062507746  -0.000001053
                         0.110877670  -0.014813586   0.002970874  -0.031463548  -0.035638841   0.000528716   0.025104731   0.000001901

   19    2.1  1.5  0.5   0.000087410   0.000606711  -0.000073562   0.000000915   0.000022413  -0.000003514  -0.000029963  -0.000032129
                        -0.004152068  -0.031220491   0.341012995   0.032408075  -0.000771411  -0.053018573  -0.000002290  -0.277202151

   20    3.1  1.5  0.5   0.039355054   0.294454375  -0.234957887  -0.022324898  -0.003899394  -0.269630192  -0.000003852  -0.173119200
                         0.000032682   0.000174665  -0.000035716   0.000006170  -0.000018004   0.000022775   0.000043891   0.000052530

   21    4.1  1.5  0.5  -0.251703135   0.033636546   0.025575220  -0.269108926   0.104231626  -0.001500126   0.310598098   0.000008695
                         0.129277430  -0.017291268  -0.002364367   0.024896134  -0.012090710   0.000156122   0.124754999  -0.000028041

   22    5.1  1.5  0.5  -0.011624635  -0.087213806  -0.339641367  -0.032276274   0.004076894   0.282376605   0.000000275  -0.006615250
                        -0.000073528  -0.000592844  -0.000076427   0.000010122   0.000017557   0.000061907  -0.000008256  -0.000019269

   23    6.1  1.5  0.5  -0.060379420   0.008058151  -0.003349923   0.035360267   0.013660642  -0.000223389   0.101605651  -0.000030905
                        -0.117771712   0.015736426  -0.036290702   0.381858585   0.117174224  -0.001694728  -0.252951814  -0.000009795

   24    7.1  1.5  0.5  -0.158996845   0.021262126   0.001882176  -0.019997524  -0.023098162   0.000327665   0.111654973  -0.000029621
                        -0.309308293   0.041331660   0.020511843  -0.215852502  -0.198393505   0.002857713  -0.277970894  -0.000008701

   25    8.1  1.5  0.5  -0.000000013  -0.000000096   0.018949689   0.001800466   0.000455414   0.031497246   0.000000396   0.017496964
                        -0.000000000  -0.000000000  -0.000001114  -0.000000826   0.000002093  -0.000000851  -0.000004580  -0.000002663

   26    9.1  1.5  0.5  -0.000000007   0.000000001  -0.000101133   0.001077170  -0.000070059   0.000002834  -0.012388655   0.000004340
                        -0.000000013   0.000000002  -0.001110284   0.011685611  -0.000760862   0.000011657   0.030861883   0.000001310

   27   10.1  1.5  0.5  -0.000000120   0.000000016   0.000682558  -0.007183137   0.030526670  -0.000440483   0.014630113  -0.000000032
                         0.000000062  -0.000000008  -0.000062727   0.000654977  -0.003547229   0.000051559   0.005857414   0.000000057

   28   11.1  1.5  0.5  -0.000021194  -0.000158782   0.003068382   0.000291601  -0.000060824  -0.004211193  -0.000000017  -0.000541973
                        -0.000000072  -0.000000558   0.000003234   0.000000142  -0.000000272  -0.000001017   0.000000252  -0.000001609

   29   12.1  1.5  0.5  -0.000306618   0.000040972  -0.000034825   0.000366381  -0.003118704   0.000044959  -0.003513102  -0.000000079
                         0.000157569  -0.000021067   0.000003443  -0.000035022   0.000361904  -0.000005138  -0.001410685   0.000000266

   30   13.1  1.5  0.5  -0.000157478   0.000021052  -0.000002157   0.000024169   0.000174802  -0.000002320  -0.001751102   0.000000486
                        -0.000306480   0.000040953  -0.000024663   0.000259756   0.001502313  -0.000021602   0.004359409   0.000000147

   31   14.1  1.5  0.5   0.000000071   0.000000489   0.000003075   0.000000197  -0.000000304  -0.000002324   0.000000361   0.000000231
                        -0.000003853  -0.000028974  -0.004107496  -0.000390355   0.000009292   0.000638625   0.000000028   0.003338983

   32   15.1  1.5  0.5   0.000031781   0.000237717   0.003916263   0.000372127   0.000030317   0.002094651   0.000000043   0.002015669
                         0.000000009  -0.000000006   0.000001034  -0.000000074   0.000000144  -0.000000538  -0.000000475  -0.000000820

   33   16.1  1.5  0.5  -0.000016286   0.000002191  -0.000046207   0.000488445   0.000270871  -0.000004161   0.000489439  -0.000000173
                        -0.000031207   0.000004171  -0.000501541   0.005277443   0.002333933  -0.000033693  -0.001220966  -0.000000058

   34   17.1  1.5  0.5   0.000033438  -0.000004464  -0.000494779   0.005206266   0.002336118  -0.000033730  -0.001490652  -0.000000070
                        -0.000017285   0.000002299   0.000045581  -0.000481755  -0.000271980   0.000004193  -0.000598878   0.000000210

   35    1.1  1.5 -0.5   0.032392279   0.242443300  -0.340993731  -0.032404382   0.004449585   0.308286702  -0.000000269  -0.067360714
                         0.000036470   0.000277330  -0.000099714   0.000009689   0.000015426   0.000069189  -0.000002156   0.000001043

   36    2.1  1.5 -0.5   0.014786289  -0.001972437   0.002979951  -0.031439279  -0.006113791   0.000111269  -0.103336578   0.000028658
                         0.027503686  -0.003654696   0.032270780  -0.339560657  -0.052664890   0.000763673   0.257220888   0.000009042

   37    3.1  1.5 -0.5   0.261930953  -0.035003902   0.022230829  -0.233958604   0.267832076  -0.003871275  -0.160628338  -0.000012782
                        -0.134519833   0.017987445  -0.002047277   0.021646752  -0.031087304   0.000467796  -0.064566226   0.000042164

   38    4.1  1.5 -0.5   0.037820679   0.282961288   0.270258080   0.025684278   0.001508121   0.104930533  -0.000002382  -0.334716280
                         0.000037159   0.000177006   0.000038233   0.000001961  -0.000018005  -0.000016282   0.000029262   0.000015156

   39    5.1  1.5 -0.5  -0.077333844   0.010310251   0.032140385  -0.338194580  -0.280483590   0.004047640  -0.006145877   0.000002821
                         0.040324629  -0.005369941  -0.002958659   0.031315970   0.032642101  -0.000487831  -0.002447468  -0.000007764

   40    6.1  1.5 -0.5  -0.000010509  -0.000014522  -0.000087408   0.000002260   0.000026359   0.000049849  -0.000032328  -0.000016880
                        -0.017679615  -0.132347461   0.383492268   0.036444987  -0.001709185  -0.117967832  -0.000002428  -0.272595540

   41    7.1  1.5 -0.5   0.000059090   0.000335673   0.000058859  -0.000012461   0.000004247  -0.000053259  -0.000030730  -0.000018235
                        -0.046479895  -0.347780827  -0.216776844  -0.020598013   0.002876434   0.199733586  -0.000002965  -0.299557424

   42    8.1  1.5 -0.5  -0.000000085   0.000000011  -0.001792910   0.018869463  -0.031286987   0.000452131   0.016235513   0.000001340
                         0.000000044  -0.000000006   0.000164783  -0.001741864   0.003633306  -0.000054624   0.006523181  -0.000004398

   43    9.1  1.5 -0.5   0.000000000   0.000000000   0.000002227   0.000001419  -0.000001470   0.000018197   0.000004516  -0.000005311
                        -0.000000002  -0.000000014   0.011735152   0.001114879   0.000011906   0.000763864   0.000000402   0.033255595

   44   10.1  1.5 -0.5   0.000000018   0.000000134   0.007212931   0.000685434   0.000443490   0.030732074  -0.000000008  -0.015759100
                         0.000000000   0.000000000  -0.000008497  -0.000000320   0.000000392   0.000001372  -0.000000064  -0.000016848

   45   11.1  1.5 -0.5  -0.000141033   0.000018826  -0.000290352   0.003055078   0.004182951  -0.000060386  -0.000503529  -0.000000078
                         0.000072951  -0.000009735   0.000026962  -0.000285447  -0.000486897   0.000007288  -0.000200487   0.000000240

   46   12.1  1.5 -0.5   0.000046071   0.000344735  -0.000368049  -0.000034994  -0.000045252  -0.003139632   0.000000026   0.003785752
                         0.000000049   0.000000293  -0.000001175  -0.000000225   0.000000084   0.000000349  -0.000000276   0.000000190

   47   13.1  1.5 -0.5   0.000000045   0.000000275  -0.000000175   0.000000120  -0.000000188   0.000000298   0.000000506   0.000000305
                        -0.000046048  -0.000344571   0.000260877   0.000024757  -0.000021726  -0.001512449   0.000000045   0.004697958

   48   14.1  1.5 -0.5   0.000013656  -0.000001822  -0.000036100   0.000380865   0.000075993  -0.000001374   0.001244576  -0.000000345
                         0.000025558  -0.000003396  -0.000388682   0.004089801   0.000634091  -0.000009195  -0.003098361  -0.000000109

   49   15.1  1.5 -0.5   0.000211527  -0.000028275  -0.000370556   0.003899566  -0.002080723   0.000030098   0.001870157   0.000000137
                        -0.000108469   0.000014510   0.000034154  -0.000361244   0.000241147  -0.000003641   0.000751954  -0.000000457

   50   16.1  1.5 -0.5   0.000000047   0.000000251  -0.000000961   0.000000120   0.000000246  -0.000000228  -0.000000182   0.000000845
                        -0.000004711  -0.000035200   0.005299999   0.000503665  -0.000033948  -0.002349599  -0.000000010  -0.001315412

   51   17.1  1.5 -0.5  -0.000005021  -0.000037641  -0.005228508  -0.000496874   0.000033989   0.002351898   0.000000014   0.001606455
                        -0.000000009  -0.000000122  -0.000000846   0.000000122   0.000000273   0.000000622  -0.000000221  -0.000000204

   52    1.1  1.5 -1.5  -0.227249623   0.030372706   0.020266574  -0.213267252   0.305645677  -0.004410441   0.176246184   0.000000000
                         0.116538246  -0.015575744  -0.001872035   0.019699613  -0.035502499   0.000512298   0.070781869   0.000000000

   53    2.1  1.5 -1.5   0.000057441   0.000347797   0.000025603   0.000010271  -0.000022943  -0.000001168   0.000049882   0.000080723
                        -0.046200338  -0.345714373   0.206365908   0.019607438   0.004959848   0.343031759   0.000004306   0.190557896

   54    3.1  1.5 -1.5  -0.001149952  -0.008887714   0.008594200   0.000814677  -0.004305179  -0.298748759   0.000002793   0.382430171
                        -0.000102045  -0.000775442   0.000015055  -0.000011615   0.000007138  -0.000068209  -0.000030129  -0.000036805

   55    4.1  1.5 -1.5  -0.321195437   0.042911068   0.031011389  -0.326352250   0.071615578  -0.001040977  -0.268374519  -0.000014002
                         0.165209528  -0.022071409  -0.002850083   0.030189046  -0.008271492   0.000135212  -0.107811914   0.000046836

   56    5.1  1.5 -1.5   0.045206347   0.338306247  -0.209686126  -0.019922634  -0.004395538  -0.303861177  -0.000004752  -0.247083373
                         0.000047103   0.000294282   0.000019714   0.000011653  -0.000023812   0.000035072   0.000054689   0.000043426

   57    6.1  1.5 -1.5   0.058773590  -0.007868772   0.000236979  -0.002604578  -0.038012346   0.000550920   0.081841408  -0.000007982
                         0.114874259  -0.015360883   0.002633510  -0.027708503  -0.326954979   0.004716293  -0.203768634  -0.000002207

   58    7.1  1.5 -1.5   0.181684012  -0.024302398  -0.000093573   0.001031919  -0.035852557   0.000551475  -0.129269317   0.000060352
                         0.353317312  -0.047211193  -0.001102707   0.011643427  -0.308579811   0.004461599   0.321785821   0.000018524

   59    8.1  1.5 -1.5  -0.000000013  -0.000000096   0.002609996   0.000247853  -0.000249153  -0.017300628   0.000000236   0.028298656
                        -0.000000000  -0.000000000   0.000002296  -0.000000760   0.000000749  -0.000002523  -0.000002570  -0.000001559

   60    9.1  1.5 -1.5  -0.000000086   0.000000012   0.000235218  -0.002485607  -0.002611218   0.000040011  -0.006098655   0.000002664
                        -0.000000168   0.000000022   0.002569080  -0.027031831  -0.022459556   0.000324423   0.015173207   0.000000847

   61   10.1  1.5 -1.5  -0.000000172   0.000000023  -0.003604238   0.037926342   0.004396743  -0.000063396  -0.005797610  -0.000000075
                         0.000000089  -0.000000012   0.000330887  -0.003496866  -0.000504328   0.000008341  -0.002337205   0.000000125

   62   11.1  1.5 -1.5   0.000040515   0.000303273   0.002442860   0.000232094   0.000035197   0.002429131   0.000000065   0.004207970
                         0.000000096   0.000000670   0.000001329  -0.000000033   0.000000335   0.000001851  -0.000000737   0.000000756

   63   12.1  1.5 -1.5  -0.000366150   0.000048924  -0.000446134   0.004694878  -0.002790581   0.000040343   0.001469194   0.000000139
                         0.000188129  -0.000025137   0.000041056  -0.000434002   0.000324176  -0.000004835   0.000591622  -0.000000465

   64   13.1  1.5 -1.5   0.000175687  -0.000023503  -0.000000275   0.000002982   0.000591402  -0.000008914   0.000949323  -0.000000607
                         0.000341899  -0.000045690  -0.000002358   0.000024369   0.005089023  -0.000073520  -0.002362844  -0.000000187

   65   14.1  1.5 -1.5   0.000000079   0.000000514   0.000001224   0.000000022   0.000000303   0.000001868  -0.000000601   0.000001271
                        -0.000043002  -0.000321782  -0.002485521  -0.000236157  -0.000059739  -0.004131654  -0.000000052  -0.002295371

   66   15.1  1.5 -1.5   0.000011449   0.000085426   0.000649633   0.000061744   0.000065229   0.004522262  -0.000000015  -0.003518448
                        -0.000000074  -0.000000581  -0.000000031   0.000000112   0.000000008   0.000001012   0.000000151   0.000000464

   67   16.1  1.5 -1.5   0.000026936  -0.000003597   0.000002934  -0.000032319  -0.000216378   0.000002964   0.001579918  -0.000000412
                         0.000052152  -0.000006959   0.000034320  -0.000361320  -0.001851578   0.000026653  -0.003932919  -0.000000124

   68   17.1  1.5 -1.5   0.000005845  -0.000000791  -0.000009341   0.000098406   0.002552262  -0.000036777   0.003577700   0.000000095
                        -0.000002734   0.000000370   0.000000767  -0.000009415  -0.000296936   0.000004177   0.001436697  -0.000000318

   69    1.1  0.5  0.5   0.015055307  -0.002008417   0.000150298  -0.001561763   0.000183672   0.000000319   0.004092890  -0.000008185
                         0.029190275  -0.003892968   0.001617403  -0.016878652   0.001604286  -0.000042840  -0.010187926   0.000019758

   70    2.1  0.5  0.5   0.024715047  -0.003271650   0.001312931  -0.013739562   0.013820402  -0.000188461   0.004856946  -0.000000711
                        -0.012638381   0.001675772  -0.000155545   0.001267692  -0.001602683   0.000074048   0.001948257  -0.000052660

   71    3.1  0.5  0.5   0.000093099   0.000121629   0.000027928  -0.000049463   0.000055931   0.000045706   0.000012908   0.000031593
                         0.000380180   0.003622959   0.008727961   0.000858098  -0.000193759  -0.012663326   0.000026600   0.013260083

   72    4.1  0.5  0.5  -0.007458004  -0.055908918  -0.008363465  -0.000801816  -0.000200916  -0.014403553   0.000002445  -0.011620580
                        -0.000013797  -0.000041019   0.000026109   0.000003934  -0.000002306  -0.000036634   0.000003272   0.000040341

   73    5.1  0.5  0.5   0.012038317  -0.001601321  -0.001238998   0.013109948   0.014708652  -0.000203717  -0.004035885  -0.000015863
                        -0.006178971   0.000827169   0.000114943  -0.001219095  -0.001714504   0.000026258  -0.001616297   0.000000641

   74    6.1  0.5  0.5   0.009060227  -0.001220223  -0.000099305   0.000950194   0.001142117  -0.000029213   0.005402401   0.000019519
                         0.017586123  -0.002348109  -0.000966713   0.010192814   0.009790942  -0.000144536  -0.013454407   0.000002453

   75    7.1  0.5  0.5  -0.001083448  -0.008218732  -0.007296237  -0.000688359  -0.000113572  -0.009128456  -0.000007106   0.016616190
                        -0.000017419   0.000031696   0.000003247  -0.000020227  -0.000013590  -0.000002466   0.000011249   0.000001757

   76    8.1  0.5  0.5   0.000000265  -0.000000035   0.006754197  -0.071089471   0.004622568  -0.000070715  -0.187760699  -0.000008038
                        -0.000000137   0.000000022   0.000087348   0.006642296  -0.000527207  -0.000413517  -0.075423741  -0.000854628

   77    9.1  0.5  0.5  -0.000000147   0.000000020   0.000411863  -0.004017789   0.021584183  -0.000331301  -0.035733700   0.000001884
                        -0.000000286   0.000000040   0.004429042  -0.043676444   0.185727853  -0.002877456   0.088983289  -0.000372395

   78   10.1  0.5  0.5   0.000000001  -0.000000000   0.000093946  -0.000406504   0.000062158  -0.000030833  -0.001118435   0.000013929
                        -0.000000086  -0.000000634  -0.117558222  -0.011239182   0.001651021   0.084050281  -0.000213610   0.158410861

   79   11.1  0.5  0.5   0.000000000   0.000000001  -0.000095186   0.000016079  -0.000006731   0.000067479   0.000070125   0.000003063
                        -0.000000058  -0.000000432   0.152870960   0.014524174   0.002101477   0.145393346   0.000022758   0.037316635

   80   12.1  0.5  0.5  -0.000000032  -0.000000241   0.178747841   0.016986929  -0.001689502  -0.116824248   0.000005657   0.015004163
                        -0.000000000  -0.000000001   0.000133343   0.000010345  -0.000034369   0.000028448  -0.000012432  -0.000000826

   81    1.1  0.5 -0.5   0.000010699   0.000076469  -0.000002661  -0.000000894   0.000005260   0.000002657   0.000000232   0.000001242
                        -0.004380505  -0.032844003   0.016950752   0.001624371   0.000042517   0.001614764   0.000021385   0.010979325

   82    2.1  0.5 -0.5   0.003675854   0.027758984  -0.013797921  -0.001321672  -0.000195746  -0.013913019   0.000020284   0.005233128
                        -0.000001777  -0.000032034   0.000001433  -0.000034124  -0.000051809   0.000002618  -0.000048601   0.000002163

   83    3.1  0.5 -0.5   0.001544989  -0.000090642  -0.000128181   0.000774980   0.001506495  -0.000077913  -0.004971041   0.000021891
                         0.003279274  -0.000380773  -0.000849911   0.008693532   0.012573480  -0.000186011   0.012293070  -0.000019873

   84    4.1  0.5 -0.5   0.049730015  -0.006629967  -0.000798779   0.008330413  -0.014303131   0.000199308   0.010768414   0.000003488
                        -0.025548666   0.003415487   0.000069833  -0.000743265   0.001698271  -0.000025472   0.004368154  -0.000002125

   85    5.1  0.5 -0.5   0.001802334   0.013531472   0.013166506   0.001244318  -0.000205386  -0.014808238   0.000014481  -0.004347501
                         0.000005320   0.000004873   0.000008088   0.000000494  -0.000002578  -0.000005969   0.000006507  -0.000004219

   86    6.1  0.5 -0.5   0.000014295   0.000037109   0.000008642   0.000009967  -0.000012341  -0.000004811  -0.000019027  -0.000000924
                        -0.002646196  -0.019782771  -0.010237004  -0.000971749   0.000146941   0.009857330  -0.000004998   0.014498517

   87    7.1  0.5 -0.5   0.007327635  -0.000956123  -0.000683581   0.007265607  -0.009067206   0.000111246  -0.015419836  -0.000002401
                        -0.003722141   0.000509895   0.000083456  -0.000667867   0.001055691  -0.000026603  -0.006190835  -0.000013087

   88    8.1  0.5 -0.5   0.000000041   0.000000298  -0.071399070  -0.006717531  -0.000022531  -0.004652525   0.000325959  -0.202343323
                         0.000000003   0.000000001  -0.000075401   0.000708222   0.000418915   0.000009665  -0.000790067   0.000016287

   89    9.1  0.5 -0.5   0.000000001  -0.000000001   0.000016558  -0.000002738   0.000002913  -0.000010754   0.000137035   0.000002502
                         0.000000044   0.000000321   0.043860849   0.004448150   0.002896465   0.186977839  -0.000346271  -0.095890162

   90   10.1  0.5 -0.5  -0.000000289   0.000000040   0.000628988  -0.010906433  -0.009728347   0.000128752  -0.059048951  -0.001117472
                        -0.000000564   0.000000076   0.011228929  -0.117051246  -0.083485388   0.001647167   0.146993954  -0.000218593

   91   11.1  0.5 -0.5  -0.000000198   0.000000026  -0.001319908   0.014155698  -0.016708453   0.000249155  -0.013909880   0.000073555
                        -0.000000384   0.000000051  -0.014464084   0.152214177  -0.144430112   0.002086665   0.034627251   0.000005015

   92   12.1  0.5 -0.5   0.000000214  -0.000000029   0.016913969  -0.177977855  -0.116047311   0.001674253  -0.013922974   0.000000617
                        -0.000000111   0.000000015  -0.001572742   0.016573823   0.013450922  -0.000229074  -0.005592467   0.000013645


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.386320963  -0.007802068  -0.128487072   0.003397021   0.000439224  -0.000001624   0.000052071  -0.000000473
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.002424964  -0.119281802  -0.004614247  -0.172710550   0.000000083   0.000022479   0.000004531   0.000498526
                         0.003453575   0.171136661   0.005577938   0.211280482  -0.000000034  -0.000009115  -0.000001065  -0.000117217

    3    3.1  1.5  1.5   0.002490642   0.123323110  -0.001100210  -0.041617291  -0.000000005  -0.000001451  -0.000000080  -0.000008801
                         0.001735478   0.085941224  -0.000900873  -0.034054019  -0.000000013  -0.000003572  -0.000000339  -0.000037254

    4    4.1  1.5  1.5  -0.130860522   0.002637295   0.316645242  -0.008390961  -0.000452648   0.000001674  -0.000006855   0.000000062
                         0.000006336   0.000011543   0.000020391   0.000033184   0.000000051  -0.000000000   0.000000012  -0.000000000

    5    5.1  1.5  1.5   0.003132884   0.155259105   0.005791714   0.219369780   0.000000014   0.000003759   0.000001048   0.000115341
                         0.002202009   0.108232885   0.004789432   0.179315353   0.000000034   0.000009303   0.000004460   0.000490626

    6    6.1  1.5  1.5   0.000001876   0.000003400   0.000005770   0.000009781  -0.000000018   0.000000000   0.000000034  -0.000000000
                         0.407727126  -0.008232751  -0.216060672   0.005718031  -0.000561768   0.000002077  -0.000009277   0.000000084

    7    7.1  1.5  1.5  -0.000005691  -0.000011040  -0.000019681  -0.000031708   0.000000049  -0.000000000   0.000000004   0.000000000
                        -0.011251138   0.000221930   0.264755101  -0.007018202   0.000281883  -0.000001042   0.000006631  -0.000000060

    8    8.1  1.5  1.5   0.000311466   0.015419156  -0.000293833  -0.011120966  -0.000000000  -0.000000041   0.000000000   0.000000007
                         0.000216697   0.010748557  -0.000241470  -0.009090192  -0.000000001  -0.000000101   0.000000000   0.000000028

    9    9.1  1.5  1.5  -0.000004524  -0.000000490  -0.000006472  -0.000001509  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.008294864  -0.000167798   0.010850067  -0.000287823   0.000000284  -0.000000001   0.000000048  -0.000000000

   10   10.1  1.5  1.5  -0.008293458   0.000167770  -0.010850858   0.000287844   0.000000396  -0.000000001  -0.000000175   0.000000002
                        -0.000004525  -0.000000490  -0.000006471  -0.000001509   0.000000000  -0.000000000   0.000000000   0.000000000

   11   11.1  1.5  1.5  -0.000062385  -0.003092528  -0.000162104  -0.006139440   0.000016202   0.004368267   0.001132116   0.124552752
                        -0.000043886  -0.002151821  -0.000133821  -0.005012847   0.000040075   0.010848375   0.004828777   0.531250145

   12   12.1  1.5  1.5  -0.003045289   0.000061629  -0.005222707   0.000138521  -0.139932975   0.000517442   0.026798486  -0.000243615
                        -0.000002964  -0.000000207   0.000001944  -0.000000821  -0.000146102   0.000000543   0.000007624  -0.000000044

   13   13.1  1.5  1.5   0.000000131   0.000000230   0.000000377   0.000000663   0.000036572  -0.000000133   0.000021248  -0.000000193
                        -0.004782307   0.000096693  -0.003863349   0.000102527  -0.000898726   0.000003327   0.002327929  -0.000021124

   14   14.1  1.5  1.5   0.000067026   0.003296948   0.000127530   0.004773378   0.000092847   0.025119230   0.005023402   0.552662983
                        -0.000095554  -0.004735022  -0.000154367  -0.005847066  -0.000037683  -0.010177982  -0.001177957  -0.129597203

   15   15.1  1.5  1.5  -0.000091496  -0.004531497  -0.000018421  -0.000699186  -0.000001365  -0.000370507   0.000259020   0.028497035
                        -0.000063898  -0.003157600  -0.000015448  -0.000569751  -0.000003300  -0.000889295   0.001105493   0.121624219

   16   16.1  1.5  1.5  -0.000001561   0.000000255  -0.000000459   0.000000658   0.000055139  -0.000000192  -0.000019927   0.000000248
                         0.010218655  -0.000206268  -0.008627522   0.000228469   0.697259907  -0.002578317   0.012530391  -0.000113865

   17   17.1  1.5  1.5   0.010864918  -0.000219339  -0.007878575   0.000208600  -0.684638719   0.002531647  -0.052008806   0.000472709
                         0.000000695  -0.000000197  -0.000000971  -0.000000501   0.000085652  -0.000000311   0.000008857  -0.000000015

   18    1.1  1.5  0.5   0.004051780   0.200695487   0.002080824   0.078866379   0.000000048   0.000012994  -0.000000397  -0.000043711
                         0.002833839   0.139894824   0.001729761   0.064453327   0.000000118   0.000031977  -0.000001691  -0.000186046

   19    2.1  1.5  0.5  -0.000019229  -0.000004642  -0.000056033  -0.000013058   0.000000039  -0.000000000   0.000000095  -0.000000001
                        -0.272919947   0.005509452   0.208549644  -0.005522094   0.000083548  -0.000000309   0.000060358  -0.000000549

   20    3.1  1.5  0.5  -0.315600346   0.006382692  -0.332950837   0.008833702  -0.000047667   0.000000176   0.000054790  -0.000000498
                         0.000016040  -0.000019039  -0.000051225  -0.000052713   0.000000004  -0.000000000  -0.000000024   0.000000000

   21    4.1  1.5  0.5   0.005264696   0.260774394   0.002704199   0.102493243   0.000000009   0.000002494   0.000000678   0.000074624
                         0.003682167   0.181773048   0.002248009   0.083764053   0.000000023   0.000006151   0.000002886   0.000317469

   22    5.1  1.5  0.5  -0.230639986   0.004654280   0.258215817  -0.006839696  -0.000085130   0.000000315   0.000079213  -0.000000720
                        -0.000012216   0.000008003   0.000025520   0.000021737   0.000000051  -0.000000000  -0.000000061   0.000000001

   23    6.1  1.5  0.5  -0.000232808  -0.011164874  -0.002540312  -0.095250206  -0.000000169  -0.000045795  -0.000002713  -0.000298492
                         0.000322376   0.016023148   0.003077408   0.116537441   0.000000069   0.000018587   0.000000638   0.000070179

   24    7.1  1.5  0.5  -0.000624246  -0.029936775  -0.006813459  -0.255473774   0.000000008   0.000002147   0.000001858   0.000204410
                         0.000864358   0.042961402   0.008254001   0.312568221  -0.000000003  -0.000000856  -0.000000436  -0.000048022

   25    8.1  1.5  0.5   0.004789217  -0.000096882   0.006265243  -0.000166199  -0.000000461   0.000000002   0.000000353  -0.000000003
                         0.000000184   0.000000332   0.000000559   0.000000955   0.000000001   0.000000000   0.000000000   0.000000000

   26    9.1  1.5  0.5   0.000236442   0.011681991   0.000072623   0.002688314  -0.000000000  -0.000000117  -0.000000001  -0.000000149
                        -0.000338398  -0.016760141  -0.000086278  -0.003273173   0.000000000   0.000000047   0.000000000   0.000000035

   27   10.1  1.5  0.5  -0.000021411  -0.001052286   0.000425718   0.016120226  -0.000000001  -0.000000132  -0.000000000  -0.000000046
                        -0.000013619  -0.000721474   0.000351284   0.013178531  -0.000000001  -0.000000325  -0.000000002  -0.000000195

   28   11.1  1.5  0.5   0.003505420  -0.000070625  -0.009551307   0.000253116  -0.074390673   0.000275076   0.065933056  -0.000599338
                        -0.000004109  -0.000000275   0.000002393  -0.000001099  -0.000002914   0.000000025  -0.000096760   0.000000885

   29   12.1  1.5  0.5  -0.000183463  -0.009087384  -0.000094237  -0.003571713   0.000038839   0.010498022   0.000370503   0.040763091
                        -0.000128313  -0.006334304  -0.000078325  -0.002918493   0.000095711   0.025884602   0.001580254   0.173855721

   30   13.1  1.5  0.5   0.000018319   0.000878539   0.000199957   0.007497490  -0.000077259  -0.020891260   0.000491010   0.054018853
                        -0.000025367  -0.001260844  -0.000242234  -0.009173093   0.000031400   0.008495049  -0.000115112  -0.012662535

   31   14.1  1.5  0.5   0.000003524   0.000000068  -0.000003653   0.000000499  -0.000008637   0.000000023   0.000152054  -0.000001365
                         0.007548949  -0.000152391  -0.005768717   0.000152747   0.092403284  -0.000341685   0.066837222  -0.000607480

   32   15.1  1.5  0.5   0.010230182  -0.000206812   0.006681086  -0.000177351  -0.077207383   0.000285500   0.083438020  -0.000758413
                        -0.000000968   0.000000450   0.000001637   0.000001202   0.000011887  -0.000000039  -0.000051223   0.000000490

   33   16.1  1.5  0.5   0.000001942   0.000093049   0.000021746   0.000815358   0.000172548   0.046670857   0.003611505   0.397327311
                        -0.000002796  -0.000138976  -0.000026397  -0.000999626  -0.000070015  -0.018924613  -0.000848744  -0.093377371

   34   17.1  1.5  0.5   0.000010306   0.000510487   0.000005287   0.000200399  -0.000038626  -0.010454269   0.000787785   0.086670336
                         0.000007208   0.000355820   0.000004392   0.000163656  -0.000095159  -0.025726718   0.003350928   0.368663007

   35    1.1  1.5 -0.5  -0.244641044   0.004944442  -0.101853507   0.002705809   0.000034517  -0.000000128   0.000191112  -0.000001737
                        -0.000004275  -0.000007744  -0.000012966  -0.000022276  -0.000000007   0.000000000  -0.000000216   0.000000002

   36    2.1  1.5 -0.5  -0.003146780  -0.156085436   0.003505058   0.131948261  -0.000000286  -0.000077410   0.000000534   0.000058765
                         0.004522373   0.223880848  -0.004267113  -0.161501125   0.000000116   0.000031433  -0.000000125  -0.000013779

   37    3.1  1.5 -0.5  -0.005225200  -0.258895845  -0.006805966  -0.257813380   0.000000066   0.000017950   0.000000114   0.000012568
                        -0.003665570  -0.180489668  -0.005631686  -0.210685841   0.000000163   0.000044158   0.000000485   0.000053329

   38    4.1  1.5 -0.5  -0.317875330   0.006424584  -0.132367977   0.003516447   0.000006637  -0.000000025  -0.000326122   0.000002964
                        -0.000005381  -0.000010068  -0.000015504  -0.000028984  -0.000000007  -0.000000000   0.000000333  -0.000000003

   39    5.1  1.5 -0.5  -0.003822749  -0.189214159   0.005281750   0.199934920   0.000000118   0.000032017   0.000000165   0.000018145
                        -0.002654991  -0.131881784   0.004345692   0.163405743   0.000000292   0.000078879   0.000000701   0.000077107

   40    6.1  1.5 -0.5  -0.000003676  -0.000006634  -0.000011176  -0.000019089  -0.000000030   0.000000000   0.000000297  -0.000000003
                         0.019529354  -0.000397595   0.150511051  -0.003990397  -0.000049423   0.000000183   0.000306631  -0.000002787

   41    7.1  1.5 -0.5  -0.000008690  -0.000017820  -0.000029495  -0.000051213   0.000000016  -0.000000000  -0.000000239   0.000000002
                         0.052363083  -0.001066058   0.403690155  -0.010702763   0.000002311  -0.000000009  -0.000209975   0.000001908

   42    8.1  1.5 -0.5   0.000079288   0.003928974   0.000128072   0.004851101   0.000000001   0.000000173   0.000000001   0.000000081
                         0.000055674   0.002738570   0.000105928   0.003964857   0.000000001   0.000000428   0.000000003   0.000000343

   43    9.1  1.5 -0.5   0.000000905   0.000000453  -0.000009777   0.000001621  -0.000000001  -0.000000000   0.000000000  -0.000000000
                        -0.020429666   0.000412817  -0.004235634   0.000112762  -0.000000126   0.000000000   0.000000153  -0.000000001

   44   10.1  1.5 -0.5   0.001275827  -0.000025353  -0.020821512   0.000551933  -0.000000350   0.000000001   0.000000200  -0.000000002
                         0.000009885  -0.000001071   0.000000696  -0.000002537   0.000000000  -0.000000000  -0.000000000   0.000000000

   45   11.1  1.5 -0.5   0.000058095   0.002873347  -0.000195275  -0.007393406   0.000103631   0.028021880   0.000136876   0.015058296
                         0.000040161   0.002007950  -0.000161048  -0.006046901   0.000254809   0.068911149   0.000583500   0.064190536

   46   12.1  1.5 -0.5   0.011077182  -0.000223881   0.004612454  -0.000122533   0.027932427  -0.000103291  -0.178570326   0.001623104
                         0.000000242   0.000000349   0.000000958   0.000000999  -0.000024507   0.000000071   0.000282780  -0.000002581

   47   13.1  1.5 -0.5   0.000000300   0.000000522   0.000000884   0.000001502   0.000000765   0.000000012  -0.000090781   0.000000811
                        -0.001536736   0.000031286  -0.011847278   0.000314099  -0.022552397   0.000083396  -0.055483043   0.000504322

   48   14.1  1.5 -0.5   0.000087089   0.004319768  -0.000097060  -0.003653865  -0.000316513  -0.085595084   0.000591534   0.065083210
                        -0.000125054  -0.006190819   0.000117946   0.004464009   0.000128717   0.034811615  -0.000138280  -0.015212273

   49   15.1  1.5 -0.5   0.000169402   0.008391850   0.000136550   0.005173741   0.000107497   0.029069079   0.000173818   0.019125533
                         0.000118635   0.005850938   0.000113176   0.004227210   0.000264490   0.071526000   0.000738226   0.081216500

   50   16.1  1.5 -0.5   0.000003140  -0.000000006   0.000001390   0.000000129   0.000047608  -0.000000131  -0.000434094   0.000003955
                        -0.000167221   0.000003404  -0.001289984   0.000034201   0.050361767  -0.000186212  -0.408152101   0.003709895

   51   17.1  1.5 -0.5  -0.000622258   0.000012577  -0.000258734   0.000006874  -0.027769691   0.000102699  -0.378713639   0.003442283
                        -0.000000023  -0.000000020  -0.000000126  -0.000000054   0.000005570  -0.000000060   0.000374097  -0.000003397

   52    1.1  1.5 -1.5  -0.006400482  -0.316921185   0.002630080   0.099478713   0.000000612   0.000165433  -0.000000109  -0.000011967
                        -0.004461624  -0.220918195   0.002149984   0.081319821   0.000001505   0.000406878  -0.000000461  -0.000050677

   53    2.1  1.5 -1.5   0.000011058   0.000014405   0.000002085   0.000042202  -0.000000023   0.000000000   0.000000489  -0.000000004
                        -0.208604662   0.004219884  -0.272888945   0.007238984  -0.000024256   0.000000090   0.000512121  -0.000004655

   54    3.1  1.5 -1.5   0.150314613  -0.003035652  -0.053774292   0.001421982   0.000003855  -0.000000014  -0.000038279   0.000000348
                         0.000019995  -0.000000565   0.000025990  -0.000001158  -0.000000001  -0.000000000  -0.000000004   0.000000000

   55    4.1  1.5 -1.5   0.002170125   0.107348749  -0.006475543  -0.245169563  -0.000000630  -0.000170442   0.000000014   0.000001563
                         0.001498671   0.074837975  -0.005336354  -0.200389858  -0.000001551  -0.000419333   0.000000061   0.000006674

   56    5.1  1.5 -1.5   0.189261055  -0.003829306   0.283332130  -0.007515371  -0.000010034   0.000000037   0.000504001  -0.000004581
                        -0.000004486   0.000014890   0.000008179   0.000042536   0.000000022   0.000000000  -0.000000500   0.000000005

   57    6.1  1.5 -1.5  -0.004705121  -0.233160880   0.003626530   0.136740927  -0.000001924  -0.000520404   0.000000082   0.000009021
                         0.006755741   0.334480812  -0.004420888  -0.167284587   0.000000782   0.000211573  -0.000000020  -0.000002165

   58    7.1  1.5 -1.5   0.000117854   0.006438649  -0.004466389  -0.167548995   0.000000966   0.000261142  -0.000000059  -0.000006454
                        -0.000188375  -0.009226698   0.005413644   0.204994143  -0.000000392  -0.000106126   0.000000014   0.000001519

   59    8.1  1.5 -1.5   0.018795793  -0.000379432  -0.014363408   0.000380322   0.000000109  -0.000000001   0.000000028  -0.000000000
                        -0.000000190  -0.000000343  -0.000000579  -0.000000986   0.000000000   0.000000000   0.000000000   0.000000000

   60    9.1  1.5 -1.5  -0.000096357  -0.004739718  -0.000183332  -0.006862026   0.000000001   0.000000263  -0.000000000  -0.000000047
                         0.000137374   0.006807338   0.000221887   0.008404557  -0.000000000  -0.000000107   0.000000000   0.000000011

   61   10.1  1.5 -1.5   0.000137351   0.006806186   0.000221903   0.008405170   0.000000001   0.000000149   0.000000000   0.000000040
                         0.000096341   0.004738913   0.000183345   0.006862528   0.000000001   0.000000367   0.000000002   0.000000170

   62   11.1  1.5 -1.5  -0.003767499   0.000076274  -0.007925991   0.000210201  -0.011694761   0.000043226   0.545654970  -0.004959708
                        -0.000003205  -0.000000327  -0.000004565  -0.000001012   0.000039461  -0.000000085  -0.000870748   0.000007915

   63   12.1  1.5 -1.5   0.000050439   0.002499920   0.000106728   0.004042353  -0.000195397  -0.052840972  -0.000056029  -0.006166138
                         0.000035412   0.001739021   0.000088306   0.003306971  -0.000479131  -0.129572723  -0.000237084  -0.026079449

   64   13.1  1.5 -1.5   0.000055483   0.002734661   0.000065403   0.002444832  -0.000003032  -0.000818765  -0.000020603  -0.002270503
                        -0.000079191  -0.003923275  -0.000078960  -0.002991364   0.000001376   0.000372383   0.000004667   0.000514315

   65   14.1  1.5 -1.5  -0.000003054  -0.000000343  -0.000004925  -0.000001038  -0.000032701   0.000000063   0.000882327  -0.000008030
                         0.005769774  -0.000116718   0.007548065  -0.000200230  -0.027102878   0.000100202   0.567653970  -0.005159660

   66   15.1  1.5 -1.5  -0.005523124   0.000111600  -0.000901929   0.000024039   0.000963355  -0.000003571   0.124917912  -0.001135431
                        -0.000000984  -0.000000097  -0.000001398  -0.000000301   0.000008269  -0.000000021  -0.000216894   0.000001973

   67   16.1  1.5 -1.5  -0.000117745  -0.005842272   0.000145108   0.005460738   0.002388511   0.645931671  -0.000110760  -0.012190424
                         0.000169359   0.008383840  -0.000176471  -0.006679407  -0.000970943  -0.262571242   0.000026409   0.002899077

   68   17.1  1.5 -1.5  -0.000180049  -0.008913511   0.000161188   0.006100453  -0.000953255  -0.257789217   0.000108621   0.011943831
                        -0.000125268  -0.006212548   0.000132412   0.004985620  -0.002345323  -0.634251451   0.000460060   0.050618780

   69    1.1  0.5  0.5  -0.000000011  -0.000000518  -0.000000029  -0.000001096  -0.000000001  -0.000000190  -0.000000002  -0.000000231
                         0.000000017   0.000000743   0.000000034   0.000001341   0.000000000   0.000000077   0.000000000   0.000000054

   70    2.1  0.5  0.5   0.000000018   0.000000962   0.000000031   0.000001176   0.000000001   0.000000104   0.000000000   0.000000033
                         0.000000009   0.000000671   0.000000029   0.000000961   0.000000001   0.000000256   0.000000001   0.000000141

   71    3.1  0.5  0.5  -0.000000003   0.000000005  -0.000000002   0.000000006   0.000000000   0.000000001  -0.000000000   0.000000000
                         0.000001140  -0.000000021  -0.000000781   0.000000023   0.000000012   0.000000001  -0.000000032   0.000000001

   72    4.1  0.5  0.5   0.000001089  -0.000000021   0.000000666  -0.000000017  -0.000000133   0.000000001   0.000000169  -0.000000002
                         0.000000003   0.000000000  -0.000000002   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   73    5.1  0.5  0.5   0.000000020   0.000001013  -0.000000009  -0.000000350   0.000000000  -0.000000005   0.000000000   0.000000041
                         0.000000014   0.000000706  -0.000000008  -0.000000286  -0.000000000  -0.000000013   0.000000002   0.000000176

   74    6.1  0.5  0.5  -0.000000012  -0.000000654   0.000000007   0.000000236  -0.000000000   0.000000016   0.000000000   0.000000029
                         0.000000019   0.000000939  -0.000000008  -0.000000289  -0.000000000  -0.000000007  -0.000000000  -0.000000007

   75    7.1  0.5  0.5   0.000000759  -0.000000014   0.000000143  -0.000000004  -0.000000170   0.000000001   0.000000029  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000

   76    8.1  0.5  0.5   0.000557085   0.027686598   0.005318557   0.201405090  -0.000000001  -0.000000186  -0.000000002  -0.000000194
                         0.001233672   0.019275125   0.003168101   0.164647844  -0.000000005  -0.000000461  -0.000000008  -0.000000822

   77    9.1  0.5  0.5  -0.002836745  -0.138487132  -0.001688611  -0.063816283   0.000000004   0.000001115   0.000000006   0.000000699
                         0.004331864   0.198669689   0.001533825   0.078094776  -0.000000003  -0.000000453  -0.000000002  -0.000000165

   78   10.1  0.5  0.5  -0.000031763  -0.000176650   0.000031623   0.000961367  -0.000000002   0.000000001  -0.000000001   0.000000000
                        -0.136501733   0.003328794   0.224017015  -0.004824600   0.000000608  -0.000000006   0.000000162  -0.000000007

   79   11.1  0.5  0.5   0.000095463  -0.000018709  -0.000093335  -0.000080322  -0.000000001  -0.000000000   0.000000000  -0.000000000
                         0.224022793  -0.004534094   0.136493429  -0.003670022  -0.000002094   0.000000008   0.000001217  -0.000000011

   80   12.1  0.5  0.5  -0.208438081   0.004228650   0.159279387  -0.004207985  -0.000000755   0.000000002   0.000000137  -0.000000002
                         0.000125324  -0.000028713   0.000046100  -0.000002024  -0.000000002   0.000000000   0.000000001  -0.000000000

   81    1.1  0.5 -0.5   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000905   0.000000020  -0.000001732   0.000000045   0.000000205  -0.000000001  -0.000000238   0.000000002

   82    2.1  0.5 -0.5   0.000001173  -0.000000020   0.000001519  -0.000000042  -0.000000276   0.000000001   0.000000145  -0.000000001
                        -0.000000000  -0.000000003   0.000000000   0.000000003   0.000000000   0.000000000   0.000000000   0.000000000

   83    3.1  0.5 -0.5  -0.000000008  -0.000000650   0.000000019   0.000000496  -0.000000001   0.000000011   0.000000001   0.000000031
                         0.000000020   0.000000937  -0.000000013  -0.000000604  -0.000000000  -0.000000004   0.000000000  -0.000000007

   84    4.1  0.5 -0.5  -0.000000017  -0.000000895  -0.000000013  -0.000000514  -0.000000000  -0.000000050  -0.000000000  -0.000000039
                        -0.000000013  -0.000000620  -0.000000011  -0.000000424  -0.000000000  -0.000000123  -0.000000002  -0.000000164

   85    5.1  0.5 -0.5   0.000001235  -0.000000024  -0.000000452   0.000000012   0.000000014   0.000000000   0.000000180  -0.000000002
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   86    6.1  0.5 -0.5   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000001144   0.000000023   0.000000373  -0.000000010  -0.000000017  -0.000000000   0.000000030  -0.000000000

   87    7.1  0.5 -0.5  -0.000000011  -0.000000623  -0.000000003  -0.000000111  -0.000000000  -0.000000064   0.000000000  -0.000000007
                        -0.000000008  -0.000000434  -0.000000003  -0.000000091  -0.000000001  -0.000000158  -0.000000000  -0.000000028

   88    8.1  0.5 -0.5   0.033735408  -0.001162485   0.260140198  -0.006122893   0.000000497  -0.000000005  -0.000000845   0.000000009
                         0.000020133   0.000693482  -0.000005679  -0.000913287  -0.000000001   0.000000001  -0.000000000  -0.000000000

   89    9.1  0.5 -0.5   0.000000630  -0.000150039   0.000017835   0.000336614  -0.000000000  -0.000000001  -0.000000000   0.000000000
                        -0.242174175   0.005175872  -0.100852921   0.002256262  -0.000001203   0.000000005   0.000000719  -0.000000007

   90   10.1  0.5 -0.5   0.001758659   0.078084768  -0.002309182  -0.141805469   0.000000005   0.000000562  -0.000000006  -0.000000157
                        -0.002831817  -0.111962017   0.004343808   0.173420971  -0.000000004  -0.000000231   0.000000002   0.000000038

   91   11.1  0.5 -0.5  -0.002608176  -0.128186069  -0.002384955  -0.086314803  -0.000000007  -0.000001940  -0.000000011  -0.000001184
                         0.003708878   0.183724121   0.002790610   0.105736557   0.000000003   0.000000788   0.000000003   0.000000280

   92   12.1  0.5 -0.5   0.003452584   0.170922014  -0.003259235  -0.123348264  -0.000000001  -0.000000286  -0.000000000  -0.000000032
                         0.002441714   0.119298425  -0.002661678  -0.100772670  -0.000000002  -0.000000699  -0.000000002  -0.000000134


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000291038   0.000007436  -0.000003281   0.000000161   0.000200251  -0.000140393  -0.073733510   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000058  -0.000002264  -0.000007920  -0.000161022  -0.000005276  -0.000007526  -0.000004680   0.024795925
                         0.000000473   0.000018503  -0.000000841  -0.000017134  -0.000019063  -0.000027190  -0.000001060  -0.019556606

    3    3.1  1.5  1.5   0.000001879   0.000073548   0.000002029   0.000041317  -0.000106100  -0.000151336  -0.000001065   0.072362728
                         0.000000236   0.000009231  -0.000019078  -0.000387893   0.000029132   0.000041553  -0.000004694   0.091648404

    4    4.1  1.5  1.5  -0.000213127   0.000005445   0.000088872  -0.000004371   0.000144488  -0.000101298   0.062936987   0.000006249
                         0.000000093  -0.000000002  -0.000001556   0.000000076  -0.000000005   0.000000003  -0.000000152  -0.000003407

    5    5.1  1.5  1.5   0.000000713   0.000027919  -0.000000061  -0.000001233  -0.000102271  -0.000145875  -0.000000918  -0.030094926
                         0.000000088   0.000003434   0.000000573   0.000011659   0.000028092   0.000040069   0.000005398  -0.038122403

    6    6.1  1.5  1.5   0.000000012  -0.000000000  -0.000000444   0.000000022   0.000000027  -0.000000019   0.000001923  -0.000000416
                         0.000266156  -0.000006800  -0.000021001   0.000001033   0.000000855  -0.000000599  -0.071496102  -0.000003301

    7    7.1  1.5  1.5   0.000000057  -0.000000001   0.000002169  -0.000000105   0.000000009  -0.000000006   0.000005710   0.000004832
                         0.000366218  -0.000009357   0.000134083  -0.000006595   0.000082452  -0.000057806   0.085371457   0.000002056

    8    8.1  1.5  1.5   0.000000005   0.000000192  -0.000000003  -0.000000064   0.000000128   0.000000183   0.000001277  -0.104819395
                         0.000000000   0.000000024   0.000000029   0.000000601  -0.000000035  -0.000000050   0.000007472  -0.132749237

    9    9.1  1.5  1.5   0.000000000  -0.000000000  -0.000000006   0.000000000   0.000000000  -0.000000000  -0.000046178  -0.000004837
                        -0.000000025   0.000000001  -0.000000345   0.000000017   0.000000198  -0.000000139  -0.101649858   0.000005455

   10   10.1  1.5  1.5   0.000000037  -0.000000001  -0.000000399   0.000000020  -0.000000047   0.000000033  -0.067863963   0.000008685
                        -0.000000000   0.000000000   0.000000007  -0.000000000  -0.000000000   0.000000000   0.000059600   0.000000846

   11   11.1  1.5  1.5   0.000134464   0.005262984  -0.000724186  -0.014749156  -0.073470671  -0.104795745  -0.000000203  -0.018206971
                         0.000014627   0.000573873   0.006865355   0.139586046   0.020198049   0.028809679   0.000002374  -0.023050552

   12   12.1  1.5  1.5  -0.376998883   0.009632267   0.079657485  -0.003917798   0.258569713  -0.181279217   0.003744923   0.000001870
                         0.000105894  -0.000002775  -0.001454923   0.000070839  -0.000016166   0.000011283  -0.000010396  -0.000001020

   13   13.1  1.5  1.5   0.000061265  -0.000001658   0.001930587  -0.000093884   0.000022676  -0.000015878   0.000002259   0.000001498
                         0.495071698  -0.012649017   0.122570164  -0.006028373   0.083174685  -0.058312462   0.016033424   0.000000129

   14   14.1  1.5  1.5  -0.000063481  -0.002482821  -0.008777465  -0.178462576  -0.005872082  -0.008375698  -0.000001698   0.008983145
                         0.000520604   0.020376001  -0.000929916  -0.018939393  -0.020993432  -0.029944260  -0.000000384  -0.007103813

   15   15.1  1.5  1.5   0.002224298   0.087056569   0.002125639   0.043291529  -0.145734268  -0.207869762  -0.000000468   0.021827950
                         0.000278515   0.010900889  -0.019981127  -0.406255198   0.040020161   0.057083213  -0.000001046   0.027646254

   16   16.1  1.5  1.5  -0.000098125   0.000002525   0.001529230  -0.000074435   0.000056412  -0.000039547  -0.000001332   0.000000920
                        -0.082258212   0.002101689   0.087066877  -0.004282203   0.040587379  -0.028455178   0.037065231   0.000001403

   17   17.1  1.5  1.5   0.132323097  -0.003380835   0.058072353  -0.002856167  -0.092856880   0.065100516   0.034956252   0.000001280
                         0.000050102  -0.000001252  -0.000958513   0.000046651  -0.000000249   0.000000175   0.000002774  -0.000000697

   18    1.1  1.5  0.5   0.000001037   0.000040574  -0.000001133  -0.000023082   0.000217106   0.000309671  -0.000004047   0.008497589
                         0.000000126   0.000004941   0.000010658   0.000216701  -0.000059653  -0.000085087  -0.000004183   0.010753034

   19    2.1  1.5  0.5   0.000000201  -0.000000005  -0.000004096   0.000000199   0.000000086  -0.000000060  -0.000008407  -0.000002514
                         0.000475473  -0.000012148  -0.000233330   0.000011476   0.000002838  -0.000001990  -0.091379205   0.000002020

   20    3.1  1.5  0.5   0.000071692  -0.000001832   0.000221847  -0.000010911   0.000468523  -0.000328474  -0.027948687  -0.000003464
                        -0.000000028   0.000000001  -0.000003666   0.000000178  -0.000000036   0.000000025   0.000011134   0.000003227

   21    4.1  1.5  0.5  -0.000005646  -0.000220969  -0.000000761  -0.000015498   0.000186479   0.000265986   0.000001908   0.067954418
                        -0.000000701  -0.000027420   0.000007110   0.000144556  -0.000051250  -0.000073101  -0.000001334   0.086066379

   22    5.1  1.5  0.5  -0.000395702   0.000010110  -0.000321349   0.000015805   0.000111729  -0.000078332   0.004090779  -0.000005172
                        -0.000000002   0.000000000   0.000005382  -0.000000262  -0.000000028   0.000000019  -0.000011114  -0.000001023

   23    6.1  1.5  0.5  -0.000000532  -0.000020840   0.000012577   0.000255714   0.000005937   0.000008469   0.000000486   0.070482314
                         0.000004292   0.000167972   0.000001337   0.000027229   0.000021458   0.000030607  -0.000003896  -0.055645246

   24    7.1  1.5  0.5   0.000000207   0.000008101   0.000025171   0.000511772   0.000023909   0.000034103  -0.000005855   0.063171303
                        -0.000001706  -0.000066783   0.000002670   0.000054388   0.000086865   0.000123901   0.000002061  -0.049882946

   25    8.1  1.5  0.5  -0.000000095   0.000000002  -0.000000089   0.000000004   0.000000154  -0.000000108  -0.058518691  -0.000005591
                        -0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000000   0.000000000   0.000006433   0.000006916

   26    9.1  1.5  0.5  -0.000000001  -0.000000029  -0.000000016  -0.000000333   0.000000059   0.000000085  -0.000010807   0.137893269
                         0.000000006   0.000000238  -0.000000002  -0.000000035   0.000000217   0.000000309   0.000000126  -0.108952904

   27   10.1  1.5  0.5   0.000000006   0.000000219  -0.000000002  -0.000000035  -0.000000073  -0.000000104   0.000002093  -0.072716646
                         0.000000001   0.000000027   0.000000017   0.000000335   0.000000020   0.000000028   0.000002134  -0.091943600

   28   11.1  1.5  0.5  -0.442704007   0.011311021  -0.413135199   0.020319209  -0.035201426   0.024679152   0.004423045  -0.000001418
                        -0.000311917   0.000007885   0.007059667  -0.000343600  -0.000019148   0.000013457   0.000014985  -0.000000702

   29   12.1  1.5  0.5  -0.004512526  -0.176615740  -0.001408445  -0.028684468   0.307335079   0.438371001  -0.000000258   0.022086179
                        -0.000560066  -0.021919114   0.013201487   0.268412442  -0.084462918  -0.120474597  -0.000001256   0.027963970

   30   13.1  1.5  0.5  -0.000059386  -0.002324415   0.031240568   0.635181006   0.026728465   0.038124367  -0.000001819   0.031944972
                         0.000440732   0.017249394   0.003315759   0.067530441   0.097048305   0.138426025   0.000000034  -0.025223229

   31   14.1  1.5  0.5  -0.000049627   0.000001172  -0.004764818   0.000232076   0.000119272  -0.000083641  -0.000001164  -0.000000913
                         0.526583752  -0.013454154  -0.257817897   0.012680231   0.002878564  -0.002018104  -0.033139608   0.000000730

   32   15.1  1.5  0.5  -0.054234054   0.001385661   0.128980502  -0.006343670   0.531786693  -0.372827384  -0.009240263  -0.000001755
                        -0.000075200   0.000001912  -0.002086193   0.000101447  -0.000047330   0.000033087   0.000005490   0.000001007

   33   16.1  1.5  0.5   0.000628809   0.024610721   0.000045647   0.000928145   0.006143808   0.008763283  -0.000001110  -0.012558370
                        -0.005094424  -0.199391654   0.000006363   0.000129323   0.022075880   0.031488184   0.000001597   0.009923976

   34   17.1  1.5  0.5  -0.004474692  -0.175135899   0.000558910   0.011383060  -0.082110763  -0.117119626   0.000001602   0.011367775
                        -0.000553523  -0.021662020  -0.005286041  -0.107475384   0.022555050   0.032171632   0.000000979   0.014402592

   35    1.1  1.5 -0.5   0.000040873  -0.000001044   0.000217894  -0.000010717  -0.000321148   0.000225152  -0.013705354  -0.000005791
                         0.000000070  -0.000000002  -0.000003763   0.000000183   0.000000074  -0.000000052  -0.000005413  -0.000000584

   36    2.1  1.5 -0.5  -0.000001494  -0.000058482   0.000011413   0.000232047  -0.000000469  -0.000000669  -0.000000027  -0.071722453
                         0.000012056   0.000471862   0.000001217   0.000024784  -0.000001934  -0.000002759   0.000003224   0.056621982

   37    3.1  1.5 -0.5  -0.000001818  -0.000071148   0.000001146   0.000023337   0.000316722   0.000451760  -0.000000385  -0.017311334
                        -0.000000225  -0.000008816  -0.000010852  -0.000220647  -0.000087077  -0.000124203   0.000004719  -0.021941899

   38    4.1  1.5 -0.5  -0.000222664   0.000005689   0.000145361  -0.000007149  -0.000275849   0.000193393  -0.109659584   0.000000136
                         0.000000127  -0.000000003  -0.000002610   0.000000127   0.000000047  -0.000000033   0.000003429   0.000002324

   39    5.1  1.5 -0.5   0.000010034   0.000392718  -0.000001663  -0.000033875   0.000075533   0.000107737   0.000004008   0.002526373
                         0.000001239   0.000048502   0.000015719   0.000319604  -0.000020752  -0.000029601   0.000003425   0.003217458

   40    6.1  1.5 -0.5  -0.000000093   0.000000002   0.000004432  -0.000000216  -0.000000050   0.000000035  -0.000006453  -0.000002757
                        -0.000169260   0.000004325   0.000257122  -0.000012646   0.000031757  -0.000022264  -0.089800612   0.000002796

   41    7.1  1.5 -0.5  -0.000000146   0.000000004   0.000008763  -0.000000426  -0.000000028   0.000000019   0.000001818  -0.000002011
                         0.000067272  -0.000001719   0.000514579  -0.000025309   0.000128509  -0.000090096  -0.080491750  -0.000005873

   42    8.1  1.5 -0.5   0.000000002   0.000000094  -0.000000000  -0.000000010   0.000000104   0.000000149  -0.000001963  -0.036259552
                         0.000000000   0.000000011   0.000000004   0.000000089  -0.000000029  -0.000000041   0.000008674  -0.045931276

   43    9.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000006   0.000000000   0.000000000  -0.000000000   0.000055832  -0.000006599
                        -0.000000240   0.000000006  -0.000000335   0.000000016   0.000000321  -0.000000225  -0.175742100  -0.000008560

   44   10.1  1.5 -0.5   0.000000221  -0.000000006   0.000000337  -0.000000017   0.000000108  -0.000000076   0.117223409   0.000002972
                         0.000000000  -0.000000000  -0.000000005   0.000000000  -0.000000000   0.000000000   0.000091945   0.000000320

   45   11.1  1.5 -0.5   0.011226688   0.439403703  -0.002145205  -0.043690079  -0.023792123  -0.033936212   0.000001429   0.002752765
                         0.001378669   0.053956657   0.020208572   0.410879190   0.006557106   0.009352768   0.000000678   0.003462057

   46   12.1  1.5 -0.5  -0.177970661   0.004547148   0.269898929  -0.013274388  -0.454624302   0.318730030  -0.035634013  -0.000001146
                         0.000104432  -0.000002701  -0.004754586   0.000231496   0.000080273  -0.000056226  -0.000004377   0.000000576

   47   13.1  1.5 -0.5  -0.000192472   0.000004914   0.010903274  -0.000530646  -0.000053388   0.000037499  -0.000000634  -0.000001101
                        -0.017404237   0.000444688   0.638667667  -0.031411554   0.143580043  -0.100661726  -0.040702488  -0.000001449

   48   14.1  1.5 -0.5  -0.001648034  -0.064498866   0.012609622   0.256378156  -0.000454490  -0.000648302  -0.000000007  -0.026009717
                         0.013352836   0.522618739   0.001356301   0.027622686  -0.001968039  -0.002807144   0.000001169   0.020536023

   49   15.1  1.5 -0.5   0.001375445   0.053834279   0.000663933   0.013522645   0.359489727   0.512762406   0.000000298  -0.005721972
                         0.000167955   0.006573324  -0.006309646  -0.128286633  -0.098830137  -0.140967388   0.000002001  -0.007255448

   50   16.1  1.5 -0.5  -0.000016107   0.000000402   0.000046457  -0.000002287  -0.000099905   0.000070047  -0.000006102   0.000000566
                         0.200904751  -0.005133085   0.000935959  -0.000046032   0.032684720  -0.022914754   0.016006184  -0.000001861

   51   17.1  1.5 -0.5  -0.176470466   0.004508798  -0.108061492   0.005314783   0.121457891  -0.085152258  -0.018348323   0.000001761
                         0.000030674  -0.000000845   0.001801669  -0.000087665  -0.000036467   0.000025552   0.000003643   0.000000651

   52    1.1  1.5 -1.5  -0.000007380  -0.000288843   0.000000014   0.000000291  -0.000135367  -0.000193083   0.000000000   0.045693372
                        -0.000000911  -0.000035675  -0.000000161  -0.000003268   0.000037228   0.000053100   0.000000000   0.057868353

   53    2.1  1.5 -1.5  -0.000000021   0.000000001   0.000002778  -0.000000135  -0.000000047   0.000000033   0.000017643   0.000003732
                         0.000018641  -0.000000476   0.000161907  -0.000007963   0.000028213  -0.000019779   0.031580032   0.000003017

   54    3.1  1.5 -1.5  -0.000074125   0.000001894   0.000390029  -0.000019183  -0.000156937   0.000110026   0.116772404   0.000004344
                         0.000000146  -0.000000004  -0.000006736   0.000000328   0.000000064  -0.000000045  -0.000002885  -0.000002073

   55    4.1  1.5 -1.5  -0.000005404  -0.000211509  -0.000000463  -0.000009436  -0.000097673  -0.000139317   0.000001198  -0.039002542
                        -0.000000670  -0.000026217   0.000004347   0.000088384   0.000026858   0.000038309   0.000007016  -0.049395000

   56    5.1  1.5 -1.5  -0.000028129   0.000000719  -0.000011722   0.000000576  -0.000151278   0.000106058  -0.048569766  -0.000003668
                        -0.000000015   0.000000001   0.000000193  -0.000000009   0.000000047  -0.000000033   0.000005389   0.000004065

   57    6.1  1.5 -1.5   0.000000834   0.000032637  -0.000001027  -0.000020879   0.000000141   0.000000201  -0.000002848   0.056111174
                        -0.000006749  -0.000264147  -0.000000113  -0.000002306   0.000000583   0.000000831   0.000001719  -0.044308338

   58    7.1  1.5 -1.5   0.000001148   0.000044947   0.000006559   0.000133362   0.000015323   0.000021855   0.000004608  -0.067005715
                        -0.000009286  -0.000363449   0.000000690   0.000014058   0.000055738   0.000079502   0.000002518   0.052901039

   59    8.1  1.5 -1.5  -0.000000194   0.000000005  -0.000000604   0.000000030   0.000000190  -0.000000133  -0.169143328  -0.000006656
                        -0.000000000   0.000000000   0.000000010  -0.000000001  -0.000000000   0.000000000   0.000000468   0.000003628

   60    9.1  1.5 -1.5   0.000000000  -0.000000003  -0.000000017  -0.000000343   0.000000037   0.000000052   0.000001284   0.079806589
                         0.000000001   0.000000025  -0.000000002  -0.000000037   0.000000134   0.000000191  -0.000007177  -0.062957162

   61   10.1  1.5 -1.5   0.000000001   0.000000036   0.000000002   0.000000042   0.000000031   0.000000045   0.000006046   0.042009181
                         0.000000000   0.000000005  -0.000000020  -0.000000397  -0.000000009  -0.000000013   0.000006292   0.053298685

   62   11.1  1.5 -1.5  -0.005293640   0.000135243  -0.140344176   0.006902534  -0.108683695   0.076196461  -0.029373828  -0.000001738
                        -0.000075585   0.000001965   0.002305248  -0.000112153   0.000010166  -0.000007098  -0.000004746   0.000001630

   63   12.1  1.5 -1.5  -0.009559288  -0.374142862  -0.000418193  -0.008517342  -0.174792797  -0.249317751   0.000000358  -0.002312606
                        -0.001183468  -0.046317247   0.003896059   0.079214182   0.048058640   0.068548929   0.000002100  -0.002945575

   64   13.1  1.5 -1.5   0.001552150   0.060746205   0.005996264   0.121915387   0.015447312   0.022033433   0.000001029  -0.012584930
                        -0.012553425  -0.491330732   0.000628423   0.012798851   0.056229209   0.080203220   0.000001096   0.009934296

   65   14.1  1.5 -1.5  -0.000033573   0.000000813   0.003029370  -0.000147407  -0.000135595   0.000095079  -0.000008351   0.000001353
                         0.020526683  -0.000524459   0.179439167  -0.008825356   0.031093289  -0.021799003   0.011452554   0.000001095

   66   15.1  1.5 -1.5  -0.087736275   0.002241664   0.408494082  -0.020090924  -0.215565129   0.151129371   0.035224633   0.000001111
                         0.000147374  -0.000003762  -0.007072986   0.000344291   0.000080737  -0.000056598  -0.000001397  -0.000000281

   67   16.1  1.5 -1.5  -0.000260129  -0.010180516   0.004258707   0.086587754   0.007507283   0.010708098   0.000001672  -0.029089121
                         0.002085530   0.081625854   0.000454109   0.009248804   0.027447029   0.039149395  -0.000000147   0.022970729

   68   17.1  1.5 -1.5   0.003355493   0.131331357  -0.000299900  -0.006107601   0.062770009   0.089532735   0.000000246  -0.021664906
                         0.000413177   0.016170310   0.002840761   0.057758238  -0.017262768  -0.024622950   0.000001436  -0.027433035

   69    1.1  0.5  0.5   0.000000000   0.000000002  -0.000000004  -0.000000080   0.000000047   0.000000066  -0.000034452   0.025644492
                        -0.000000000  -0.000000013  -0.000000000  -0.000000009   0.000000169   0.000000242   0.000085468  -0.020249288

   70    2.1  0.5  0.5  -0.000000000  -0.000000014   0.000000002   0.000000050   0.000000075   0.000000108  -0.000012616   0.023638571
                        -0.000000001  -0.000000002  -0.000000024  -0.000000472  -0.000000020  -0.000000030  -0.000219408   0.029924713

   71    3.1  0.5  0.5   0.000000000  -0.000000000   0.000000003   0.000000000  -0.000000000   0.000000001   0.000085031   0.000044802
                         0.000000188  -0.000000005   0.000000184  -0.000000011  -0.000000075   0.000000052   0.055036661   0.000163190

   72    4.1  0.5  0.5  -0.000000059   0.000000001  -0.000000021   0.000000001   0.000000151  -0.000000106  -0.034611131   0.000011286
                         0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000163908   0.000017665

   73    5.1  0.5  0.5   0.000000001   0.000000062  -0.000000001  -0.000000006   0.000000034   0.000000048  -0.000075720  -0.011953882
                         0.000000000   0.000000007   0.000000003   0.000000059  -0.000000009  -0.000000013  -0.000002917  -0.015112871

   74    6.1  0.5  0.5   0.000000000  -0.000000005  -0.000000017  -0.000000351   0.000000067   0.000000096   0.000099704   0.048289861
                         0.000000001   0.000000039  -0.000000002  -0.000000037   0.000000246   0.000000351   0.000010532  -0.038138776

   75    7.1  0.5  0.5   0.000000135  -0.000000003   0.000000230  -0.000000011  -0.000000057   0.000000040   0.077997941  -0.000052745
                         0.000000000  -0.000000000  -0.000000004   0.000000000  -0.000000000  -0.000000000   0.000009168   0.000037326

   76    8.1  0.5  0.5  -0.000000021  -0.000000814   0.000000008   0.000000161  -0.000000783  -0.000001117  -0.000000233   0.373231493
                         0.000000001  -0.000000100  -0.000000065  -0.000001509   0.000000210   0.000000310   0.002959063   0.472698766

   77    9.1  0.5  0.5  -0.000000002  -0.000000078  -0.000000068  -0.000001376  -0.000000054  -0.000000078  -0.000007149   0.315287438
                         0.000000017   0.000000627  -0.000000004  -0.000000146  -0.000000200  -0.000000281   0.001255669  -0.248976167

   78   10.1  0.5  0.5   0.000000001  -0.000000005  -0.000000027  -0.000000001  -0.000000004  -0.000000007  -0.000034911   0.002821082
                        -0.000000553   0.000000015  -0.000001571   0.000000069   0.000000874  -0.000000611  -0.531334663   0.002079676

   79   11.1  0.5  0.5   0.000000001   0.000000000   0.000000012  -0.000000001   0.000000000   0.000000000  -0.000007155  -0.000119297
                        -0.000000001   0.000000000   0.000000747  -0.000000037   0.000000746  -0.000000523   0.020298120  -0.000152545

   80   12.1  0.5  0.5  -0.000000537   0.000000014   0.000000622  -0.000000031   0.000000008  -0.000000006   0.000548782  -0.000078717
                         0.000000000  -0.000000000  -0.000000011   0.000000001   0.000000001  -0.000000001   0.000042428   0.000034213

   81    1.1  0.5 -0.5  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000131  -0.000045728
                        -0.000000014   0.000000000   0.000000080  -0.000000004  -0.000000251   0.000000176   0.032675275   0.000080004

   82    2.1  0.5 -0.5   0.000000014  -0.000000000   0.000000475  -0.000000024   0.000000112  -0.000000078   0.038134898   0.000180016
                         0.000000000   0.000000001  -0.000000008   0.000000000   0.000000000   0.000000000   0.000007651  -0.000126068

   83    3.1  0.5 -0.5   0.000000001   0.000000023   0.000000011   0.000000183  -0.000000013  -0.000000020   0.000155841  -0.043247178
                        -0.000000005  -0.000000186   0.000000001   0.000000019  -0.000000050  -0.000000073  -0.000065969   0.034040017

   84    4.1  0.5 -0.5  -0.000000001  -0.000000059   0.000000000   0.000000003  -0.000000102  -0.000000145   0.000020858   0.021320213
                        -0.000000000  -0.000000008  -0.000000001  -0.000000021   0.000000028   0.000000040  -0.000002089   0.027265468

   85    5.1  0.5 -0.5  -0.000000062   0.000000001  -0.000000059   0.000000003   0.000000050  -0.000000035  -0.019268988   0.000049214
                        -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000016186   0.000057620

   86    6.1  0.5 -0.5  -0.000000000   0.000000000   0.000000006  -0.000000000  -0.000000000   0.000000000  -0.000006803  -0.000070053
                         0.000000040  -0.000000001   0.000000353  -0.000000017  -0.000000364   0.000000255   0.061534355  -0.000071724

   87    7.1  0.5 -0.5   0.000000003   0.000000134  -0.000000001  -0.000000024   0.000000039   0.000000055  -0.000003392  -0.048343276
                         0.000000000   0.000000017   0.000000011   0.000000229  -0.000000010  -0.000000015  -0.000064527  -0.061209530

   88    8.1  0.5 -0.5   0.000000820  -0.000000020   0.000001517  -0.000000065  -0.000001159   0.000000810   0.602283878  -0.002322220
                         0.000000001  -0.000000004  -0.000000026   0.000000002  -0.000000003  -0.000000005  -0.000012323   0.001833943

   89    9.1  0.5 -0.5   0.000000000   0.000000000   0.000000023   0.000000002  -0.000000000  -0.000000001  -0.000017558  -0.000981058
                         0.000000631  -0.000000017   0.000001383  -0.000000068   0.000000292  -0.000000208   0.401740339   0.000783761

   90   10.1  0.5 -0.5   0.000000003  -0.000000067  -0.000000068  -0.000001562   0.000000155   0.000000236   0.003380446   0.417029612
                         0.000000015   0.000000549  -0.000000005  -0.000000167   0.000000591   0.000000842   0.000925278  -0.329245847

   91   11.1  0.5 -0.5  -0.000000000   0.000000001   0.000000037   0.000000743   0.000000139   0.000000198  -0.000193652  -0.015926162
                         0.000000000   0.000000001   0.000000004   0.000000078   0.000000505   0.000000720   0.000000905   0.012584557

   92   12.1  0.5 -0.5  -0.000000014  -0.000000533  -0.000000003  -0.000000066  -0.000000005  -0.000000008  -0.000021931  -0.000373385
                        -0.000000002  -0.000000066   0.000000031   0.000000619   0.000000002   0.000000003  -0.000082981  -0.000404408


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.073517905   0.001582901  -0.059519473  -0.000000000   0.001302126   0.179208209   0.007471456   0.046535961
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.001910977  -0.088767190   0.000005484   0.076835407   0.039276702  -0.000292530  -0.090400922   0.014541593
                         0.000728766   0.033703411  -0.000002521  -0.009198727  -0.077410224   0.000571830  -0.091158392   0.014599617

    3    3.1  1.5  1.5   0.000559001   0.025954684   0.000001100   0.001523629  -0.062276685   0.000452399   0.014068602  -0.002258351
                         0.001470788   0.068311727   0.000005844   0.012732864  -0.031592471   0.000229471  -0.013936369   0.002237826

    4    4.1  1.5  1.5  -0.017404930   0.000374848  -0.108452801   0.000008828  -0.000489501  -0.068641452  -0.022195366  -0.138274832
                         0.000006955   0.000000176  -0.000008524   0.000000864  -0.000001690   0.000001537  -0.000035987  -0.000000757

    5    5.1  1.5  1.5   0.000656228   0.030334097  -0.000002705  -0.009511996  -0.069302090   0.000513026  -0.094088088   0.015069564
                         0.001720440   0.079917700  -0.000006373  -0.079431803  -0.035170421   0.000262777   0.093309748  -0.015008934

    6    6.1  1.5  1.5   0.000002537  -0.000001761  -0.000005569  -0.000000495  -0.000000498   0.000000464  -0.000010584  -0.000000117
                        -0.087103819   0.001875902   0.009190972  -0.000003680   0.001388546   0.191476889   0.013678398   0.085205030

    7    7.1  1.5  1.5  -0.000005828  -0.000005019   0.000000165  -0.000002837   0.000001616  -0.000001298   0.000034403   0.000000800
                        -0.097225464   0.002094831  -0.029667066   0.000005542  -0.000084187  -0.012802653  -0.019009324  -0.118429193

    8    8.1  1.5  1.5  -0.000635975  -0.029554923  -0.000002033  -0.003950995   0.074705232  -0.000540730  -0.039207892   0.006286918
                        -0.001675340  -0.077810230  -0.000009234  -0.032913213   0.037909081  -0.000273863   0.038887987  -0.006249661

    9    9.1  1.5  1.5   0.000029200   0.000009697  -0.000091126   0.000004626  -0.000000668   0.000017117  -0.000020631  -0.000024376
                         0.157191864  -0.003387439  -0.123804934   0.000002150  -0.000238958  -0.032293676   0.007664906   0.047755360

   10   10.1  1.5  1.5   0.055605980  -0.001199286  -0.206598447   0.000008297   0.000238923   0.032289329  -0.007665785  -0.047760847
                        -0.000074842  -0.000005514   0.000046588  -0.000002641  -0.000000665   0.000017118  -0.000020629  -0.000024373

   11   11.1  1.5  1.5   0.000167632   0.007736528  -0.000001056  -0.003475277  -0.018249234   0.000136071  -0.035907448   0.005751654
                         0.000437662   0.020331182  -0.000002834  -0.028879329  -0.009240313   0.000069784   0.035650356  -0.005733935

   12   12.1  1.5  1.5  -0.020261784   0.000436284  -0.044648418   0.000002642   0.000126503   0.017008656  -0.005388406  -0.033571465
                        -0.000001195   0.000000123  -0.000000356   0.000000258  -0.000000401   0.000019141  -0.000009131   0.000013564

   13   13.1  1.5  1.5  -0.000001508  -0.000001913  -0.000001027  -0.000001000   0.000000465  -0.000000483   0.000009894   0.000000018
                        -0.045683537   0.000984165  -0.008118742   0.000001197   0.000209255   0.028448658  -0.004145260  -0.025827290

   14   14.1  1.5  1.5  -0.000692953  -0.032188453   0.000001988   0.027865424   0.014992208  -0.000111660  -0.034564400   0.005559899
                         0.000264634   0.012238627  -0.000000917  -0.003354109  -0.029581855   0.000218523  -0.034809628   0.005574977

   15   15.1  1.5  1.5   0.000264223   0.012253464   0.000000090  -0.000496984  -0.030573358   0.000223181  -0.005514129   0.000881319
                         0.000694355   0.032250916   0.000001338  -0.004126732  -0.015508054   0.000113471   0.005480195  -0.000882893

   16   16.1  1.5  1.5  -0.000008812  -0.000000096  -0.000010229  -0.000000300   0.000000523   0.000009800   0.000008565  -0.000005736
                         0.012406701  -0.000267043  -0.007802332   0.000002095  -0.000488544  -0.067573526  -0.007929783  -0.049398820

   17   17.1  1.5  1.5   0.018439708  -0.000397001  -0.004386569   0.000001808  -0.000516210  -0.071319223  -0.007144002  -0.044503094
                         0.000002478   0.000000015  -0.000002325   0.000000177  -0.000000404  -0.000004907  -0.000008362  -0.000003889

   18    1.1  1.5  0.5   0.000743523   0.034303033  -0.000001103   0.010712067  -0.096442971   0.000705769  -0.037426474   0.005989594
                         0.001944395   0.090326970   0.000005698   0.089348947  -0.048938041   0.000359408   0.037121236  -0.005974629

   19    2.1  1.5  0.5   0.000013543   0.000004513   0.000008300   0.000002208   0.000000682  -0.000006782   0.000018997   0.000021990
                         0.034961993  -0.000754140  -0.080207771   0.000000279  -0.000940773  -0.130024980  -0.013758835  -0.085710309

   20    3.1  1.5  0.5   0.072790734  -0.001567828   0.082387852  -0.000005847  -0.000986061  -0.133668546   0.025424261   0.158404721
                        -0.000008677  -0.000001809   0.000011309  -0.000001399   0.000002800   0.000009975   0.000058911   0.000008774

   21    4.1  1.5  0.5   0.000074973   0.003638707   0.000001801  -0.007386345  -0.125316809   0.000917067  -0.048630499   0.007782644
                         0.000206458   0.009575998   0.000001313  -0.061656348  -0.063589533   0.000467012   0.048233027  -0.007763063

   22    5.1  1.5  0.5  -0.091075728   0.001962354   0.087327430  -0.000004580  -0.000809537  -0.112260246  -0.017527477  -0.109190488
                        -0.000000305   0.000004952   0.000005237   0.000001928  -0.000001180  -0.000006789  -0.000024700  -0.000005400

   23    6.1  1.5  0.5  -0.001098096  -0.051023977  -0.000001204  -0.089811193   0.002031360  -0.000018037  -0.047938849   0.007709316
                         0.000423023   0.019374353  -0.000002433   0.010763789  -0.004005155   0.000033399  -0.048333111   0.007743442

   24    7.1  1.5  0.5   0.001105064   0.051330176   0.000007403   0.069437606   0.005449283  -0.000048385  -0.128563670   0.020675049
                        -0.000421152  -0.019497623  -0.000000880  -0.008325146  -0.010743002   0.000089585  -0.129621370   0.020766624

   25    8.1  1.5  0.5   0.175950625  -0.003789967   0.143401285  -0.000010647  -0.000137973  -0.018646337   0.004425940   0.027575303
                        -0.000010187  -0.000005324   0.000004410  -0.000003433   0.000000453  -0.000000428   0.000009667   0.000000087

   26    9.1  1.5  0.5  -0.000320313  -0.014888636   0.000013078   0.099698036   0.038753819  -0.000283743  -0.016348909   0.002633162
                         0.000122778   0.005554148  -0.000004099  -0.011928736  -0.076384653   0.000557833  -0.016545972   0.002645626

   27   10.1  1.5  0.5  -0.001225813  -0.056814076   0.000000570   0.005056310  -0.009904172   0.000066742   0.061797571  -0.009901632
                        -0.003221582  -0.149636433  -0.000002913   0.042692574  -0.004978321   0.000032187  -0.061276844   0.009853482

   28   11.1  1.5  0.5  -0.039369091   0.000848202   0.021393392  -0.000000957  -0.000183796  -0.025834678  -0.009274559  -0.057779712
                        -0.000006836   0.000002076   0.000018180   0.000000818  -0.000000530   0.000026413  -0.000012505   0.000016829

   29   12.1  1.5  0.5   0.000174525   0.008105603   0.000000312  -0.000029175  -0.060325258   0.000441461  -0.023408785   0.003746254
                         0.000459962   0.021363006   0.000001558  -0.000162282  -0.030610672   0.000224807   0.023221136  -0.003737420

   30   13.1  1.5  0.5   0.000179463   0.008333261   0.000002203   0.007890594   0.002208700  -0.000019610  -0.052118634   0.008381491
                        -0.000067659  -0.003166475  -0.000000681  -0.000946782  -0.004354937   0.000036316  -0.052547227   0.008418585

   31   14.1  1.5  0.5  -0.000017569   0.000002120   0.000019177   0.000000800   0.000000113  -0.000023434   0.000002272  -0.000022637
                         0.012677205  -0.000273451  -0.029085372   0.000000103  -0.000359434  -0.049677883  -0.005256392  -0.032744533

   32   15.1  1.5  0.5   0.015420346  -0.000332062   0.037919502  -0.000002516  -0.000451505  -0.061490550   0.007293038   0.045440501
                        -0.000004121  -0.000000071   0.000006962  -0.000000277   0.000000918   0.000007112   0.000019149   0.000005385

   33   16.1  1.5  0.5   0.000535770   0.024892139   0.000001595   0.040407371   0.000225451  -0.000002027  -0.005680836   0.000913561
                        -0.000205461  -0.009443966   0.000000646  -0.004840277  -0.000486467   0.000004045  -0.005714420   0.000915502

   34   17.1  1.5  0.5  -0.000207178  -0.009521491   0.000000699  -0.004715626   0.003387154  -0.000024786   0.001308936  -0.000209476
                        -0.000539787  -0.025078865  -0.000001437  -0.039368559   0.001718687  -0.000012621  -0.001299048   0.000209085

   35    1.1  1.5 -0.5  -0.096621217   0.002081700   0.089988791  -0.000005526  -0.000792012  -0.108148872   0.008459955   0.052713634
                        -0.000003237   0.000004846   0.000010834   0.000001773   0.000001134  -0.000001063   0.000024088   0.000000189

   36    2.1  1.5 -0.5   0.000703419   0.032689669   0.000000540   0.079637634   0.058844304  -0.000425105   0.060373074  -0.009702502
                        -0.000271935  -0.012398657   0.000002159  -0.009546409  -0.115947589   0.000839249   0.060838717  -0.009755376

   37    3.1  1.5 -0.5   0.000558261   0.025832203  -0.000002084  -0.009808648   0.119195319  -0.000878059   0.112460956  -0.018009705
                         0.001465071   0.068052834  -0.000005639  -0.081801887   0.060495920  -0.000448704  -0.111555319   0.017945669

   38    4.1  1.5 -0.5  -0.010244019   0.000219626  -0.062097209  -0.000001518  -0.001029131  -0.140527333   0.010992439   0.068493433
                        -0.000002285  -0.000003202  -0.000001867  -0.000001632   0.000001474  -0.000001341   0.000031202  -0.000000363

   39    5.1  1.5 -0.5  -0.000701254  -0.032331674   0.000001370  -0.010390024   0.100111907  -0.000722444  -0.077521294   0.012427091
                        -0.001832785  -0.085143708  -0.000004777  -0.086707136   0.050793394  -0.000365275   0.076896110  -0.012360440

   40    6.1  1.5 -0.5   0.000000765   0.000005652   0.000007220   0.000002559   0.000000971  -0.000000914   0.000020648   0.000000192
                         0.054578492  -0.001176746  -0.090453908   0.000000906   0.000037946   0.004490845  -0.010926757  -0.068075126

   41    7.1  1.5 -0.5   0.000005777  -0.000001430  -0.000008673  -0.000000007   0.000002609  -0.000001935   0.000055336   0.000000265
                        -0.054908508   0.001182596   0.069934892  -0.000007455   0.000101783   0.012046027  -0.029303707  -0.182565925

   42    8.1  1.5 -0.5   0.001350395   0.062451993  -0.000004675  -0.017057408   0.016628191  -0.000122833   0.019578366  -0.003135604
                         0.003541230   0.164494289  -0.000010163  -0.142383193   0.008437366  -0.000062839  -0.019418675   0.003123624

   43    9.1  1.5 -0.5   0.000092988   0.000001072   0.000011825   0.000002515   0.000000602  -0.000006222   0.000006484  -0.000044020
                         0.015890607  -0.000343036   0.100409128  -0.000013473   0.000625849   0.085653218  -0.003732671  -0.023260569

   44   10.1  1.5 -0.5   0.160059056  -0.003446912   0.042990917   0.000002825  -0.000074083  -0.011084877  -0.013968998  -0.087027532
                        -0.000006439  -0.000002330  -0.000056495  -0.000000913  -0.000001499  -0.000042335  -0.000023199   0.000011563

   45   11.1  1.5 -0.5  -0.000303048  -0.013982204   0.000000698  -0.002562115   0.023026297  -0.000164141  -0.041035368   0.006576118
                        -0.000792220  -0.036802491  -0.000001047  -0.021239423   0.011714133  -0.000082698   0.040676701  -0.006540051

   46   12.1  1.5 -0.5  -0.022849044   0.000491960  -0.000164600  -0.000001584  -0.000495405  -0.067647247   0.005291738   0.032972600
                         0.000006079  -0.000000126  -0.000009670  -0.000000125   0.000000706  -0.000000812   0.000015439   0.000002437

   47   13.1  1.5 -0.5   0.000001975   0.000000456  -0.000001728   0.000000414   0.000001054  -0.000001051   0.000022454   0.000000241
                        -0.008914583   0.000191793   0.007947193  -0.000002268   0.000041259   0.004883015  -0.011879455  -0.074010561

   48   14.1  1.5 -0.5   0.000254888   0.011845281   0.000000197   0.028876703   0.022500886  -0.000162548   0.023042728  -0.003703181
                        -0.000099056  -0.004516763   0.000000782  -0.003477822  -0.044289985   0.000320579   0.023264514  -0.003730431

   49   15.1  1.5 -0.5   0.000117946   0.005470287  -0.000000574  -0.004516233   0.054831397  -0.000402217   0.032258902  -0.005164562
                         0.000310409   0.014417456  -0.000002465  -0.037649599   0.027831739  -0.000205131  -0.032003163   0.005149376

   50   16.1  1.5 -0.5  -0.000007709  -0.000001884  -0.000000757  -0.000000831  -0.000000023  -0.000019086   0.000003928   0.000009274
                        -0.026623430   0.000573813   0.040696240  -0.000001507   0.000004524   0.000535830  -0.001293337  -0.008057693

   51   17.1  1.5 -0.5   0.026825515  -0.000578177  -0.039649976   0.000001343   0.000027814   0.003798249  -0.000295966  -0.001844136
                        -0.000001520  -0.000002063  -0.000000524  -0.000000865  -0.000000039   0.000000087  -0.000000936  -0.000000566

   52    1.1  1.5 -1.5   0.000561921   0.026098457   0.000000000  -0.007077951   0.159810136  -0.001161179  -0.033040469   0.005304723
                         0.001479804   0.068729564   0.000000000  -0.059097126   0.081094406  -0.000589231   0.032770766  -0.005261422

   53    2.1  1.5 -1.5  -0.000003617  -0.000002914  -0.000003679  -0.000001851  -0.000002104   0.000004023  -0.000043416   0.000009487
                        -0.094950166   0.002045219  -0.077384083   0.000005744  -0.000642307  -0.086804390   0.020605942   0.128382939

   54    3.1  1.5 -1.5   0.073076244  -0.001573435  -0.012823699   0.000005933   0.000507269   0.069831724   0.003179309   0.019802722
                         0.000013921  -0.000000471   0.000001352   0.000000397   0.000000085   0.000008335  -0.000001484  -0.000012349

   55    4.1  1.5 -1.5   0.000133233   0.006172154  -0.000001907  -0.012905481  -0.061210785   0.000437281   0.098174408  -0.015733337
                         0.000350371   0.016273787  -0.000008663  -0.107682212  -0.031062659   0.000220000  -0.097374097   0.015655595

   56    5.1  1.5 -1.5   0.085480969  -0.001841342   0.079999309  -0.000006650   0.000576405   0.077715753  -0.021268707  -0.132511423
                        -0.000011962  -0.000002740  -0.000001392  -0.000001927  -0.000002182  -0.000003224  -0.000044290   0.000007326

   57    6.1  1.5 -1.5   0.001753097   0.081429704   0.000003713   0.009125091   0.086646582  -0.000627894   0.060001726  -0.009639884
                        -0.000667582  -0.030923755   0.000000054  -0.001098504  -0.170750604   0.001238470   0.060495372  -0.009704190

   58    7.1  1.5 -1.5   0.001956609   0.090895079  -0.000005165  -0.029456531  -0.005794550   0.000036654  -0.083398768   0.013410850
                        -0.000748346  -0.034509063   0.000003475   0.003528119   0.011416265  -0.000075806  -0.084084002   0.013472367

   59    8.1  1.5 -1.5  -0.083234160   0.001791991   0.033149508  -0.000009410  -0.000606127  -0.083773326  -0.008864734  -0.055222589
                        -0.000007753  -0.000000184   0.000008977  -0.000000920  -0.000000469   0.000000440  -0.000009984  -0.000000100

   60    9.1  1.5 -1.5  -0.003163368  -0.146964066  -0.000002685  -0.122937257  -0.014598109   0.000108727   0.033646778  -0.005412298
                         0.001211588   0.055774959  -0.000004338   0.014632186   0.028805850  -0.000212790   0.033889074  -0.005427544

   61   10.1  1.5 -1.5  -0.000430894  -0.019669854   0.000001636  -0.024522067   0.028801974  -0.000212761   0.033892973  -0.005428170
                        -0.001119217  -0.052010840  -0.000008552  -0.205137975   0.014596141  -0.000108709  -0.033650639   0.005412916

   62   11.1  1.5 -1.5   0.021753404  -0.000468665   0.029087677  -0.000002940   0.000152920   0.020455259  -0.008121521  -0.050599329
                         0.000015176  -0.000001346   0.000016338  -0.000000712  -0.000000656   0.000017940  -0.000020753  -0.000025570

   63   12.1  1.5 -1.5   0.000154994   0.007193940  -0.000000570  -0.005309865   0.015176245  -0.000112629   0.023845246  -0.003819331
                         0.000407824   0.018941676  -0.000002593  -0.044331553   0.007679603  -0.000057602  -0.023631498   0.003801015

   64   13.1  1.5 -1.5   0.000919386   0.042708629  -0.000001069  -0.008061254   0.012873014  -0.000095106  -0.018187670   0.002926130
                        -0.000351161  -0.016215998   0.000001135   0.000964447  -0.025369502   0.000186394  -0.018337328   0.002936161

   65   14.1  1.5 -1.5   0.000014779  -0.000001403   0.000016602  -0.000000674  -0.000000688   0.000016830  -0.000021605  -0.000027630
                        -0.034436612   0.000741763  -0.028066557   0.000002083  -0.000245397  -0.033164019   0.007873523   0.049055144

   66   15.1  1.5 -1.5   0.034500274  -0.000742928   0.004156549   0.000001339   0.000250371   0.034281627  -0.001247472  -0.007774194
                         0.000006476  -0.000000521   0.000002713  -0.000000070  -0.000000196   0.000005491  -0.000006225  -0.000007865

   67   16.1  1.5 -1.5  -0.000249684  -0.011595504  -0.000002044  -0.007748183  -0.030569296   0.000220607  -0.034782727   0.005590258
                         0.000094709   0.004412550   0.000000547   0.000917683   0.060263584  -0.000435899  -0.035077134   0.005624103

   68   17.1  1.5 -1.5  -0.000140920  -0.006548313  -0.000000391  -0.000523952  -0.063601621   0.000460517   0.031594398  -0.005066343
                        -0.000371149  -0.017237819  -0.000001774  -0.004355166  -0.032268644   0.000233233  -0.031341976   0.005036765

   69    1.1  0.5  0.5  -0.000065988  -0.002591260  -0.000002476   0.078221894  -0.000000151   0.000000001   0.000000787  -0.000000126
                         0.000098960   0.000976161  -0.000062768  -0.009375540   0.000000298  -0.000000004   0.000000794  -0.000000128

   70    2.1  0.5  0.5   0.000327110   0.017142479  -0.000034402  -0.007032558   0.000000460  -0.000000003   0.000000792  -0.000000127
                         0.000767186   0.045167953   0.000160349  -0.058680182   0.000000233   0.000000003  -0.000000785   0.000000129

   71    3.1  0.5  0.5  -0.000184114   0.000090227  -0.000142668  -0.000141159   0.000000002   0.000000001   0.000000001   0.000000000
                         0.051196015  -0.000925253  -0.040382015  -0.000215413  -0.000000006  -0.000000891  -0.000000089  -0.000000534

   72    4.1  0.5  0.5   0.060446428  -0.001294168   0.049278820  -0.000009226  -0.000000002  -0.000000336  -0.000000000  -0.000000006
                         0.000146443   0.000019395  -0.000116568  -0.000031991  -0.000000000  -0.000000003  -0.000000001  -0.000000002

   73    5.1  0.5  0.5   0.000513789   0.024867771  -0.000022207   0.005345209   0.000000732  -0.000000005  -0.000000199   0.000000032
                         0.001406848   0.065436094   0.000003097   0.044491393   0.000000371  -0.000000003   0.000000197  -0.000000031

   74    6.1  0.5  0.5  -0.001021367  -0.048976210   0.000027667  -0.027168775  -0.000000392   0.000000003  -0.000000214   0.000000034
                         0.000416781   0.018614285  -0.000011493   0.003279679   0.000000774  -0.000000006  -0.000000216   0.000000035

   75    7.1  0.5  0.5   0.026871269  -0.000486282   0.021810189   0.000069192  -0.000000002  -0.000000411   0.000000015   0.000000086
                         0.000013205   0.000056736  -0.000008685   0.000011458  -0.000000001  -0.000000000   0.000000001  -0.000000000

   76    8.1  0.5  0.5  -0.000426427  -0.019295859   0.000013834   0.040954086   0.032528425  -0.000271335   0.392490279  -0.062880761
                        -0.003052033  -0.050886423   0.001647034   0.341657908   0.016484003  -0.002087937  -0.389683576   0.060139818

   77    9.1  0.5  0.5   0.010974169   0.512808455   0.000091251  -0.146292735  -0.227656422   0.001742269   0.172686086  -0.027746064
                        -0.005067197  -0.194713107   0.000605673   0.017497433   0.448640652  -0.004039888   0.173937364  -0.028929602

   78   10.1  0.5  0.5  -0.000011011   0.001127698   0.000086706  -0.000098253  -0.000356668   0.000061298   0.002510060  -0.000384642
                         0.368459730  -0.008686587  -0.256834293   0.001953974   0.003458047   0.321957578   0.071041840   0.453964252

   79   11.1  0.5  0.5   0.000238134   0.000005926  -0.000283688  -0.000006386  -0.000016860  -0.000219265  -0.000264777  -0.000131836
                         0.417001705  -0.008965694   0.556548247  -0.000126241  -0.003376897  -0.459478196   0.051132800   0.317893150

   80   12.1  0.5  0.5  -0.439302955   0.009388359   0.539493877  -0.000007406   0.003410543   0.466625598   0.049350685   0.307597303
                         0.000141993   0.000051777   0.000355759   0.000006528  -0.000067036  -0.000260771   0.000045773   0.000105716

   81    1.1  0.5 -0.5  -0.000007301  -0.000069089   0.000007001  -0.000062617  -0.000000001   0.000000000  -0.000000001  -0.000000000
                        -0.002769019   0.000096820  -0.078781759   0.000005006   0.000000003   0.000000334  -0.000000180  -0.000001118

   82    2.1  0.5 -0.5   0.048311577  -0.000833340   0.059100090   0.000155121  -0.000000002  -0.000000516   0.000000181   0.000001115
                        -0.000008417  -0.000033458   0.000004511  -0.000053226  -0.000000004  -0.000000000   0.000000002  -0.000000001

   83    3.1  0.5 -0.5  -0.000832960  -0.047796176   0.000230671  -0.040112432  -0.000000402   0.000000001  -0.000000376   0.000000064
                         0.000412810   0.018346429   0.000114541   0.004660503   0.000000795  -0.000000007  -0.000000379   0.000000062

   84    4.1  0.5 -0.5  -0.000441291  -0.021595059   0.000032861   0.005744410  -0.000000301   0.000000002   0.000000003   0.000000000
                        -0.001216762  -0.056457467   0.000005356   0.048943002  -0.000000150   0.000000001  -0.000000005   0.000000001

   85    5.1  0.5 -0.5   0.070002058  -0.001497610  -0.044811327   0.000000434  -0.000000006  -0.000000820  -0.000000044  -0.000000280
                         0.000018634   0.000019098  -0.000016441  -0.000022417   0.000000000  -0.000000000   0.000000001   0.000000000

   86    6.1  0.5 -0.5   0.000015617  -0.000027055  -0.000025543  -0.000008122  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.052394279   0.001102799   0.027366001   0.000028837   0.000000007   0.000000867   0.000000049   0.000000303

   87    7.1  0.5 -0.5  -0.000119587  -0.009551500  -0.000019605   0.002585006  -0.000000367   0.000000002  -0.000000061   0.000000010
                        -0.000474751  -0.025116412  -0.000067338   0.021656458  -0.000000186   0.000000000   0.000000061  -0.000000011

   88    8.1  0.5 -0.5  -0.054422033   0.003004628  -0.344103708   0.001636992  -0.001186788  -0.036466702   0.086995898   0.553083926
                         0.000025316  -0.000684803  -0.000034118  -0.000182126   0.001739148  -0.000019879  -0.001581636   0.000281951

   89    9.1  0.5 -0.5   0.000013094   0.000841392   0.000023604   0.000612227  -0.000274430  -0.000002476  -0.000672646   0.000119661
                         0.548530496  -0.012058231   0.147335412   0.000018578   0.004391001   0.503096294  -0.040078841  -0.245101360

   90   10.1  0.5 -0.5  -0.007720488  -0.344457436  -0.001928425  -0.255001498   0.145745303  -0.001246758   0.319956109  -0.048245741
                         0.004137941   0.130811497   0.000329919   0.030628375  -0.287080115   0.003245135   0.322043131  -0.052207201

   91   11.1  0.5 -0.5  -0.008379640  -0.389926238   0.000126105   0.552565272  -0.208116316   0.001543132   0.223954931  -0.036195865
                         0.003188313   0.147810717  -0.000008672  -0.066465416   0.409643576  -0.003003742   0.225610862  -0.036117762

   92   12.1  0.5 -0.5   0.003381221   0.155817418  -0.000005601   0.064508900   0.415998538  -0.003011040  -0.218319219   0.035006686
                         0.008758499   0.410740841   0.000008130   0.535623349   0.211387636  -0.001603102   0.216686019  -0.034785402


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.000368336   0.000017022  -0.000341810  -0.000103061  -0.000133497   0.000006510   0.000556740   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000009949   0.000215388   0.000018812  -0.000062380   0.000005538   0.000113477  -0.000000001  -0.000014530
                         0.000041391  -0.000895621   0.000044693  -0.000148227   0.000000447   0.000009233  -0.000000002   0.000008680

    3    3.1  1.5  1.5  -0.000003987   0.000086295  -0.000099718   0.000330726   0.000004246   0.000087377  -0.000000004  -0.000144492
                        -0.000000975   0.000021175   0.000043465  -0.000144140  -0.000054174  -0.001110457  -0.000000005  -0.000244353

    4    4.1  1.5  1.5   0.000528823   0.000024438  -0.000319238  -0.000096254   0.000422812  -0.000020630   0.000570891   0.000000006
                        -0.000000144  -0.000000006   0.000000051   0.000000018   0.000001553  -0.000000085   0.000000498  -0.000000000

    5    5.1  1.5  1.5   0.000001911  -0.000041364  -0.000232902   0.000772440  -0.000001355  -0.000027891   0.000000001   0.000046491
                         0.000000379  -0.000008154   0.000100961  -0.000334826   0.000016829   0.000344905   0.000000005   0.000078712

    6    6.1  1.5  1.5  -0.000000004  -0.000000001   0.000000040   0.000000015   0.000001375  -0.000000075   0.000000354   0.000000001
                         0.000165880   0.000007667  -0.000230130  -0.000069388  -0.000398503   0.000019442  -0.000219809  -0.000000004

    7    7.1  1.5  1.5   0.000000242   0.000000009   0.000000017   0.000000009   0.000000974  -0.000000052   0.000000073   0.000000004
                         0.000533224   0.000024644  -0.000399730  -0.000120525  -0.000027976   0.000001369  -0.000855556   0.000000001

    8    8.1  1.5  1.5   0.000000026  -0.000000566   0.000000126  -0.000000417   0.000000000  -0.000000001   0.000000000   0.000000180
                         0.000000006  -0.000000136  -0.000000054   0.000000178   0.000000002   0.000000045   0.000000001   0.000000295

    9    9.1  1.5  1.5  -0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000003  -0.000000000   0.000000001  -0.000000000
                        -0.000000059  -0.000000003  -0.000000258  -0.000000078  -0.000000744   0.000000036  -0.000000581  -0.000000000

   10   10.1  1.5  1.5  -0.000000305  -0.000000014   0.000000109   0.000000033   0.000000575  -0.000000028   0.000000165   0.000000000
                        -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000002  -0.000000000   0.000000001  -0.000000000

   11   11.1  1.5  1.5  -0.001690374   0.036584915   0.109273453  -0.362414889   0.001443640   0.029715973  -0.000001358  -0.049604639
                        -0.000350638   0.007573861  -0.047310515   0.156902642  -0.018148687  -0.371979095  -0.000003261  -0.083921224

   12   12.1  1.5  1.5  -0.364691979  -0.016853075   0.258468988   0.077931744  -0.154381618   0.007534066  -0.444148239  -0.000002586
                         0.000081531   0.000003306  -0.000021356  -0.000007776  -0.000670320   0.000037017  -0.000263857  -0.000000032

   13   13.1  1.5  1.5  -0.000121729  -0.000004154  -0.000018259  -0.000008328  -0.000844204   0.000045419  -0.000129388  -0.000002220
                        -0.311899969  -0.014414954   0.260712721   0.078609365   0.115948823  -0.005658614   0.488817473   0.000000503

   14   14.1  1.5  1.5   0.005628993  -0.121868793  -0.010537071   0.034939452  -0.003177254  -0.065104041   0.000000045   0.008671676
                        -0.023423617   0.506840167  -0.025243284   0.083721307  -0.000265193  -0.005474242   0.000001156  -0.005235583

   15   15.1  1.5  1.5   0.001832225  -0.039655426   0.092994089  -0.308425209  -0.002069176  -0.042579528   0.000001620   0.070087408
                         0.000465053  -0.010112338  -0.040438670   0.134106283   0.026480634   0.542804424   0.000001515   0.118518394

   16   16.1  1.5  1.5  -0.000163311  -0.000006870   0.000096258   0.000029497   0.000417397  -0.000023051   0.000036088  -0.000000134
                        -0.050798508  -0.002347395  -0.014478169  -0.004365445  -0.194724225   0.009499351   0.106065039  -0.000001034

   17   17.1  1.5  1.5   0.003689524   0.000170757  -0.057176416  -0.017239638  -0.197787984   0.009648895   0.077557572  -0.000000939
                         0.000041323   0.000001421  -0.000022201  -0.000007397  -0.000508808   0.000027716  -0.000157051  -0.000000106

   18    1.1  1.5  0.5  -0.000038104   0.000824529  -0.000094584   0.000313696  -0.000000045  -0.000000897  -0.000000000   0.000300483
                        -0.000009173   0.000198592   0.000040510  -0.000134329  -0.000000121  -0.000002455  -0.000000000   0.000504067

   19    2.1  1.5  0.5  -0.000000163  -0.000000005   0.000000043   0.000000014   0.000001321  -0.000000072   0.000000519  -0.000000000
                        -0.000038353  -0.000001772  -0.000161024  -0.000048551  -0.000658240   0.000032110   0.000654105  -0.000000001

   20    3.1  1.5  0.5   0.000408343   0.000018871  -0.000343948  -0.000103705  -0.000097407   0.000004751  -0.000069015   0.000000000
                        -0.000000089  -0.000000003   0.000000006   0.000000000  -0.000000386   0.000000021  -0.000000113  -0.000000001

   21    4.1  1.5  0.5  -0.000000194   0.000004179   0.000211317  -0.000700853   0.000000214   0.000004374   0.000000000  -0.000256395
                         0.000000023  -0.000000539  -0.000091639   0.000303906  -0.000002058  -0.000042177  -0.000000003  -0.000430330

   22    5.1  1.5  0.5  -0.000144806  -0.000006690  -0.000110004  -0.000033169  -0.000883065   0.000043083  -0.000253620  -0.000000004
                         0.000000163   0.000000006  -0.000000117  -0.000000040  -0.000002719   0.000000148  -0.000000797  -0.000000002

   23    6.1  1.5  0.5  -0.000004110   0.000089048   0.000099824  -0.000331062   0.000018815   0.000385524   0.000000004  -0.000570095
                         0.000016781  -0.000363074   0.000230861  -0.000765671   0.000001480   0.000030551  -0.000000004   0.000340229

   24    7.1  1.5  0.5   0.000007472  -0.000161777   0.000013948  -0.000046262  -0.000005122  -0.000104951  -0.000000001   0.000248321
                        -0.000031179   0.000674635   0.000031159  -0.000103342  -0.000000394  -0.000008150   0.000000002  -0.000148049

   25    8.1  1.5  0.5   0.000000368   0.000000017  -0.000000198  -0.000000060  -0.000000541   0.000000026  -0.000000270  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000000

   26    9.1  1.5  0.5   0.000000002  -0.000000033  -0.000000003   0.000000008  -0.000000043  -0.000000884   0.000000000   0.000000451
                        -0.000000006   0.000000142  -0.000000007   0.000000022  -0.000000004  -0.000000071  -0.000000000  -0.000000272

   27   10.1  1.5  0.5  -0.000000016   0.000000344  -0.000000105   0.000000347   0.000000001   0.000000021  -0.000000000   0.000000133
                        -0.000000004   0.000000084   0.000000045  -0.000000149  -0.000000014  -0.000000284  -0.000000001   0.000000228

   28   11.1  1.5  0.5   0.147145928   0.006799252   0.002177470   0.000657034   0.461224876  -0.022501987   0.125661350   0.000003122
                        -0.000118475  -0.000004466   0.000006425   0.000004208   0.001182800  -0.000065736   0.000632922   0.000000429

   29   12.1  1.5  0.5   0.012261372  -0.265312663  -0.068467182   0.227078082  -0.000093793  -0.001923425  -0.000000361   0.023547460
                         0.002914356  -0.063076578   0.029817526  -0.098889319   0.001063856   0.021802959   0.000001337   0.039388989

   30   13.1  1.5  0.5  -0.002740620   0.059312316  -0.032370612   0.107357169  -0.002211575  -0.045319097  -0.000001514   0.019654928
                         0.011527358  -0.249433077  -0.074304362   0.246437469  -0.000178491  -0.003674053  -0.000000045  -0.011800691

   31   14.1  1.5  0.5   0.000165624   0.000006263  -0.000002644  -0.000001337  -0.000453742   0.000026569  -0.000207778   0.000000389
                         0.022181250   0.001024891   0.091377931   0.027551776   0.372288850  -0.018160745  -0.370333326   0.000001499

   32   15.1  1.5  0.5  -0.196265000  -0.009070640   0.204055592   0.061526069   0.199532542  -0.009734537   0.078989281   0.000000642
                         0.000020845   0.000000671   0.000007920   0.000004036   0.000630276  -0.000034467   0.000223454   0.000001063

   33   16.1  1.5  0.5  -0.003971262   0.086010565   0.046941371  -0.155678128   0.010810359   0.221505277   0.000002046  -0.351424152
                         0.016404875  -0.354948803   0.108868269  -0.361070586   0.000848395   0.017516106  -0.000002748   0.209666501

   34   17.1  1.5  0.5  -0.017734935   0.383763740  -0.111693921   0.370443994  -0.000088325  -0.001796480  -0.000000316   0.222292944
                        -0.004290184   0.092897223   0.048210266  -0.159874117   0.000599251   0.012292835   0.000000912   0.373032794

   35    1.1  1.5 -0.5   0.000848105   0.000039193   0.000341239   0.000102891   0.000002374  -0.000000117   0.000586833   0.000000000
                        -0.000002179  -0.000000096  -0.000002377  -0.000000709   0.000001093  -0.000000055   0.000000110   0.000000000

   36    2.1  1.5 -0.5  -0.000000415   0.000009044   0.000019434  -0.000064454  -0.000032010  -0.000656178  -0.000000001  -0.000562179
                         0.000001723  -0.000037272   0.000044492  -0.000147562  -0.000002533  -0.000052083   0.000000000   0.000334378

   37    3.1  1.5 -0.5   0.000018357  -0.000397214  -0.000095046   0.000315231   0.000000365   0.000007518  -0.000000001   0.000035424
                         0.000004375  -0.000094684   0.000041485  -0.000137585  -0.000004737  -0.000097117   0.000000001   0.000059230

   38    4.1  1.5 -0.5   0.000003941   0.000000183  -0.000763905  -0.000230331   0.000042393  -0.000002068  -0.000500921   0.000000002
                         0.000001492   0.000000067   0.000001835   0.000000547  -0.000000938   0.000000046   0.000000019  -0.000000002

   39    5.1  1.5 -0.5  -0.000006507   0.000140829  -0.000030383   0.000100772   0.000003347   0.000068929  -0.000000004   0.000130507
                        -0.000001555   0.000033705   0.000013305  -0.000044113  -0.000042953  -0.000880375  -0.000000003   0.000217466

   40    6.1  1.5 -0.5   0.000002515   0.000000111   0.000002876   0.000000864   0.000000825  -0.000000051   0.000000456   0.000000002
                         0.000373826   0.000017277   0.000834174   0.000251517  -0.000386731   0.000018873  -0.000663901  -0.000000006

   41    7.1  1.5 -0.5  -0.000001090  -0.000000046  -0.000001059  -0.000000319  -0.000000391   0.000000023  -0.000000072  -0.000000002
                        -0.000693760  -0.000032062   0.000113219   0.000034137   0.000105266  -0.000005137   0.000289105   0.000000002

   42    8.1  1.5 -0.5   0.000000017  -0.000000358  -0.000000055   0.000000181   0.000000002   0.000000042   0.000000000   0.000000139
                         0.000000004  -0.000000085   0.000000024  -0.000000079  -0.000000026  -0.000000540  -0.000000000   0.000000232

   43    9.1  1.5 -0.5   0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000003   0.000000000
                        -0.000000145  -0.000000007  -0.000000023  -0.000000007   0.000000887  -0.000000043   0.000000527  -0.000000000

   44   10.1  1.5 -0.5   0.000000355   0.000000016   0.000000378   0.000000114   0.000000284  -0.000000014   0.000000264   0.000000001
                        -0.000000002  -0.000000000  -0.000000003  -0.000000001   0.000000002  -0.000000000  -0.000000002  -0.000000000

   45   11.1  1.5 -0.5   0.006613255  -0.143115618   0.000600487  -0.001993080  -0.001759969  -0.036238266   0.000001967  -0.064867265
                         0.001579465  -0.034203190  -0.000266691   0.000876949   0.022433150   0.459800579   0.000002462  -0.107626268

   46   12.1  1.5 -0.5  -0.272707637  -0.012602965   0.247676217   0.074678214  -0.021887133   0.001067958   0.045890860  -0.000000963
                        -0.000101855  -0.000005404  -0.000206900  -0.000061440   0.000148308  -0.000007178   0.000066166   0.000000995

   47   13.1  1.5 -0.5  -0.000085039  -0.000004372  -0.000190530  -0.000056607  -0.000014597   0.000001513  -0.000076497   0.000000814
                         0.256387998   0.011848671  -0.268806529  -0.081049313   0.045467780  -0.002218765   0.022925240   0.000001277

   48   14.1  1.5 -0.5   0.000243520  -0.005299643  -0.011022875   0.036556715   0.018103040   0.371098552   0.000001486   0.318243749
                        -0.000995561   0.021539480  -0.025250674   0.083746838   0.001446820   0.029749929  -0.000000433  -0.189387782

   49   15.1  1.5 -0.5  -0.008823731   0.190921099   0.056387045  -0.187013833  -0.000755367  -0.015559010   0.000001242  -0.040625004
                        -0.002101964   0.045487180  -0.024616226   0.081636462   0.009705247   0.198925991   0.000000007  -0.067741903

   50   16.1  1.5 -0.5   0.001443073   0.000062864   0.001761521   0.000529248   0.000511389  -0.000031398   0.000228407   0.000001313
                         0.365218268   0.016878590   0.393197848   0.118555948  -0.222196175   0.010843552  -0.409217454  -0.000003164

   51   17.1  1.5 -0.5   0.394844711   0.018246349   0.403467118   0.121653261  -0.012398056   0.000604440   0.434243730  -0.000000621
                        -0.001467101  -0.000064988  -0.001665579  -0.000496663   0.000793294  -0.000039419   0.000014205   0.000000739

   52    1.1  1.5 -1.5  -0.000016559   0.000358316   0.000094455  -0.000313269  -0.000000528  -0.000010830  -0.000000000   0.000284984
                        -0.000003943   0.000085329  -0.000041228   0.000136736   0.000006488   0.000133057  -0.000000000   0.000478271

   53    2.1  1.5 -1.5  -0.000002049  -0.000000089  -0.000002125  -0.000000637  -0.000000004   0.000000004  -0.000000019  -0.000000002
                        -0.000921154  -0.000042570  -0.000160804  -0.000048486   0.000113852  -0.000005556   0.000016925   0.000000001

   54    3.1  1.5 -1.5  -0.000088853  -0.000004105  -0.000360771  -0.000108779  -0.001113886   0.000054340   0.000283876  -0.000000006
                         0.000000608   0.000000025   0.000000198   0.000000054  -0.000002998   0.000000163  -0.000000953  -0.000000001

   55    4.1  1.5 -1.5  -0.000023771   0.000514403   0.000088224  -0.000292602   0.000001589   0.000032753  -0.000000003   0.000292656
                        -0.000005667   0.000122648  -0.000038488   0.000127659  -0.000020569  -0.000421544  -0.000000005   0.000490173

   56    5.1  1.5 -1.5   0.000042128   0.000001947  -0.000841883  -0.000253842   0.000346031  -0.000016883  -0.000091416   0.000000005
                         0.000001650   0.000000074   0.000002134   0.000000638   0.000000181  -0.000000015   0.000000353  -0.000000002

   57    6.1  1.5 -1.5  -0.000001776   0.000038424  -0.000027772   0.000092097   0.000019384   0.000397301   0.000000002  -0.000188647
                         0.000007459  -0.000161369  -0.000063588   0.000210898   0.000001503   0.000030959  -0.000000003   0.000112820

   58    7.1  1.5 -1.5  -0.000005717   0.000123762  -0.000048223   0.000159921   0.000001368   0.000027963  -0.000000003  -0.000734934
                         0.000023971  -0.000518662  -0.000110458   0.000366345   0.000000059   0.000001298  -0.000000003   0.000438005

   59    8.1  1.5 -1.5   0.000000582   0.000000027   0.000000453   0.000000137   0.000000045  -0.000000002  -0.000000346   0.000000001
                        -0.000000002  -0.000000000  -0.000000003  -0.000000001   0.000000003  -0.000000000  -0.000000004  -0.000000000

   60    9.1  1.5 -1.5   0.000000001  -0.000000015  -0.000000031   0.000000103   0.000000036   0.000000741   0.000000000  -0.000000499
                        -0.000000003   0.000000057  -0.000000071   0.000000236   0.000000003   0.000000058   0.000000000   0.000000298

   61   10.1  1.5 -1.5   0.000000014  -0.000000297  -0.000000030   0.000000100   0.000000002   0.000000045   0.000000000   0.000000085
                         0.000000003  -0.000000070   0.000000013  -0.000000044  -0.000000028  -0.000000573  -0.000000000   0.000000141

   62   11.1  1.5 -1.5  -0.037344254  -0.001725622   0.394919746   0.119074966  -0.373163736   0.018205982   0.097484734  -0.000003496
                        -0.001107462  -0.000050495  -0.001177020  -0.000353014  -0.000559019   0.000033443  -0.000344402   0.000000503

   63   12.1  1.5 -1.5   0.016393847  -0.354752237  -0.071427576   0.236895436  -0.000574312  -0.011856196   0.000001351  -0.227577332
                         0.003907413  -0.084564138   0.031168233  -0.103376848   0.007512236   0.153927137   0.000002205  -0.381413538

   64   13.1  1.5 -1.5   0.003343420  -0.072373406   0.031454062  -0.104310725  -0.005643647  -0.115635129   0.000000705   0.419855781
                        -0.014021854   0.303387036   0.072042173  -0.238935970  -0.000413789  -0.008565004   0.000002165  -0.250327108

   65   14.1  1.5 -1.5   0.001138566   0.000049532   0.001469365   0.000440949  -0.000174589   0.000006563   0.000058805   0.000001016
                         0.521284625   0.024090432   0.090707578   0.027350668  -0.065333551   0.003188294  -0.010129455  -0.000000553

   66   15.1  1.5 -1.5   0.040919291   0.001890114   0.336318870   0.101405955   0.544469569  -0.026561215  -0.137690395   0.000002132
                        -0.000650644  -0.000027947  -0.000472172  -0.000138758   0.001596182  -0.000085903   0.000458143   0.000000616

   67   16.1  1.5 -1.5   0.000550483  -0.011926890  -0.001773361   0.005879982   0.009469910   0.194116252   0.000000956   0.091134374
                        -0.002281947   0.049378785  -0.003989130   0.013230739   0.000747666   0.015381108  -0.000000414  -0.054261585

   68   17.1  1.5 -1.5  -0.000166440   0.003598728   0.015797173  -0.052393318  -0.000755148  -0.015538548   0.000000572   0.039565265
                        -0.000038175   0.000814520  -0.006903222   0.022892865   0.009619339   0.197177329   0.000000752   0.066706757

   69    1.1  0.5  0.5   0.000069283  -0.001509102  -0.000189675   0.000631152   0.000242205   0.004947730  -0.000002945  -0.000066099
                        -0.000291235   0.006279343  -0.000446108   0.001475219   0.000010058   0.000386446  -0.000009163   0.000045036

   70    2.1  0.5  0.5  -0.000054218   0.001092048   0.001752837  -0.005802248  -0.000016153  -0.000338698  -0.000002175   0.001183823
                        -0.000008873   0.000250573  -0.000757293   0.002522872   0.000234507   0.004338987   0.000023973   0.001992116

   71    3.1  0.5  0.5  -0.000019732   0.000005878   0.000022064  -0.000019044   0.000018669  -0.000010999   0.000009584   0.000004116
                        -0.000679421  -0.000039572  -0.000788451  -0.000227896  -0.005683898   0.000294237  -0.005980504   0.000008246

   72    4.1  0.5  0.5   0.006389442   0.000295917  -0.004742274  -0.001433266   0.000818354  -0.000040022  -0.001781311   0.000000722
                        -0.000004030  -0.000000109  -0.000002564   0.000000496  -0.000017579   0.000003192  -0.000016304   0.000000972

   73    5.1  0.5  0.5  -0.000257437   0.005546865  -0.000898904   0.002986963  -0.000016000  -0.000369727  -0.000007270  -0.000953446
                        -0.000061899   0.001340713   0.000385438  -0.001278163   0.000226582   0.004639809   0.000000227  -0.001589465

   74    6.1  0.5  0.5  -0.000017976   0.000416384   0.000676400  -0.002250329   0.000206281   0.004283033   0.000010082   0.003062925
                         0.000077156  -0.001672904   0.001570172  -0.005208285   0.000015518   0.000346720  -0.000001414  -0.001821909

   75    7.1  0.5  0.5   0.001107401   0.000055707  -0.001643920  -0.000491705  -0.002072920   0.000097001   0.007798538  -0.000004371
                         0.000000671   0.000005925  -0.000002388   0.000006969  -0.000000167   0.000005796  -0.000001874   0.000001661

   76    8.1  0.5  0.5  -0.000000063   0.000001374  -0.000000738   0.000002450   0.000000018   0.000000364   0.000000000   0.000001054
                        -0.000000002   0.000000341   0.000000335  -0.000001051  -0.000000222  -0.000004727  -0.000000004   0.000001779

   77    9.1  0.5  0.5  -0.000000021   0.000000437  -0.000000018   0.000000062   0.000000228   0.000004683   0.000000000  -0.000003332
                         0.000000091  -0.000001852  -0.000000030   0.000000127   0.000000022   0.000000376   0.000000002   0.000002002

   78   10.1  0.5  0.5  -0.000000012   0.000000007  -0.000000024   0.000000009   0.000000019   0.000000012  -0.000000018  -0.000000004
                        -0.000002591  -0.000000122  -0.000002995  -0.000000909  -0.000001377   0.000000040  -0.000000218   0.000000010

   79   11.1  0.5  0.5  -0.000000005  -0.000000001   0.000000007   0.000000001   0.000000010  -0.000000000   0.000000013  -0.000000002
                         0.000002494   0.000000115  -0.000000992  -0.000000298  -0.000006083   0.000000297  -0.000003831  -0.000000000

   80   12.1  0.5  0.5  -0.000002494  -0.000000115  -0.000002100  -0.000000634   0.000001415  -0.000000071   0.000001760  -0.000000004
                         0.000000009   0.000000002   0.000000017   0.000000004  -0.000000013   0.000000001   0.000000020   0.000000001

   81    1.1  0.5 -0.5   0.000013372  -0.000000069   0.000011687   0.000004621  -0.000016216   0.000009624  -0.000004854  -0.000009380
                         0.006458123   0.000299363   0.001604521   0.000484734   0.004962772  -0.000242222   0.000079836   0.000002160

   82    2.1  0.5 -0.5  -0.001120389  -0.000054799   0.006326997   0.001909419   0.004352162  -0.000235045  -0.002317317   0.000019481
                        -0.000009228  -0.000003928  -0.000008884  -0.000007135   0.000014421  -0.000002925   0.000002754  -0.000014140

   83    3.1  0.5 -0.5   0.000003449  -0.000176591  -0.000073712   0.000335629   0.000294160   0.005666677  -0.000009190  -0.005132688
                        -0.000039857   0.000656368  -0.000216485   0.000713789   0.000012908   0.000442502   0.000000685   0.003069534

   84    4.1  0.5 -0.5  -0.000287842   0.006214694   0.001313787  -0.004345270   0.000006429   0.000083910  -0.000001205  -0.000925824
                        -0.000068658   0.001484104  -0.000572901   0.001899422  -0.000039631  -0.000814230  -0.000000123  -0.001521902

   85    5.1  0.5 -0.5  -0.005706562  -0.000264773  -0.003248861  -0.000978035   0.004654510  -0.000227133   0.001853491  -0.000003526
                         0.000019250   0.000000577   0.000023451   0.000006338   0.000007900  -0.000002435   0.000005449  -0.000006362

   86    6.1  0.5 -0.5  -0.000017510   0.000000387  -0.000021065  -0.000008202  -0.000001886   0.000001268  -0.000002727   0.000003946
                        -0.001723855  -0.000079221  -0.005673602  -0.001709647   0.004297043  -0.000206860  -0.003563826   0.000009384

   87    7.1  0.5 -0.5  -0.000055565   0.001077432   0.000453435  -0.001505698  -0.000002093  -0.000168001   0.000000811   0.003990307
                        -0.000007141   0.000255889  -0.000190311   0.000659813   0.000097151   0.002066101   0.000004606   0.006700347

   88    8.1  0.5 -0.5  -0.000001415  -0.000000062  -0.000002666  -0.000000810  -0.000004741   0.000000223  -0.000002068  -0.000000004
                         0.000000013  -0.000000013   0.000000017  -0.000000012  -0.000000021   0.000000000   0.000000005   0.000000003

   89    9.1  0.5 -0.5   0.000000004   0.000000001  -0.000000006  -0.000000004  -0.000000005  -0.000000003  -0.000000014   0.000000002
                        -0.000001902  -0.000000094   0.000000141   0.000000034   0.000004698  -0.000000229   0.000003888  -0.000000001

   90   10.1  0.5 -0.5   0.000000021  -0.000000612  -0.000000372   0.000001176   0.000000039   0.000001374  -0.000000007  -0.000000197
                        -0.000000121   0.000002518  -0.000000830   0.000002754   0.000000015   0.000000093   0.000000008   0.000000096

   91   11.1  0.5 -0.5  -0.000000026   0.000000573  -0.000000120   0.000000404   0.000000296   0.000006064   0.000000001  -0.000003284
                         0.000000112  -0.000002427  -0.000000273   0.000000907   0.000000024   0.000000483   0.000000001   0.000001972

   92   12.1  0.5 -0.5   0.000000112  -0.000002424   0.000000583  -0.000001932   0.000000006   0.000000128   0.000000001   0.000000918
                         0.000000028  -0.000000586  -0.000000250   0.000000824  -0.000000071  -0.000001409   0.000000004   0.000001502


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5  -0.005802243   0.000012454  -0.001351197  -0.000053824  -0.002944765  -0.000000000   0.010407618  -0.000450812
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000001068  -0.000548624  -0.000114581   0.002867790  -0.000000058   0.000320392  -0.000157470  -0.003632323
                        -0.000013258  -0.006200168   0.000031359  -0.000791497  -0.000000021   0.001199059   0.000651136   0.015033759

    3    3.1  1.5  1.5  -0.000009403  -0.004360464  -0.000060989   0.001535591   0.000000004  -0.002423677   0.000165925   0.003830600
                         0.000000912   0.000386122  -0.000221859   0.005559852   0.000000013   0.000647282   0.000040022   0.000924006

    4    4.1  1.5  1.5  -0.002959841   0.000006275   0.006346360   0.000253281  -0.000311464   0.000000007   0.004333027  -0.000187666
                        -0.000000146  -0.000000122   0.000003503  -0.000000269  -0.000001325  -0.000000008   0.000000494   0.000000094

    5    5.1  1.5  1.5  -0.000012050  -0.005640689   0.000040409  -0.001019378  -0.000000022   0.001557077   0.000634048   0.014639280
                         0.000000948   0.000498706   0.000147408  -0.003690426   0.000000056  -0.000416303   0.000153361   0.003537420

    6    6.1  1.5  1.5   0.000000078  -0.000000035   0.000002056  -0.000000096  -0.000001096  -0.000000040   0.000000139   0.000000028
                        -0.004686561   0.000010085  -0.004127268  -0.000164622  -0.000472110   0.000000018   0.008669237  -0.000375520

    7    7.1  1.5  1.5   0.000000448   0.000000119  -0.000000607   0.000000213  -0.000000596  -0.000000093  -0.000000464  -0.000000090
                        -0.004575277   0.000009755   0.003074753   0.000122738   0.004869668   0.000000060   0.007206754  -0.000312144

    8    8.1  1.5  1.5   0.000040663   0.018816240   0.000353380  -0.008898912  -0.000000037   0.014003214  -0.000402194  -0.009284048
                        -0.000004105  -0.001663312   0.001285549  -0.032213423  -0.000000027  -0.003740843  -0.000097073  -0.002243669

    9    9.1  1.5  1.5  -0.000009178  -0.000000218  -0.000004089   0.000000381  -0.000007080   0.000000809   0.000011730  -0.000000306
                         0.013149091  -0.000028163   0.011952396   0.000476917  -0.044739287  -0.000000448  -0.021518100   0.000932033

   10   10.1  1.5  1.5  -0.012625346   0.000026913   0.024271942   0.000968847  -0.039599438  -0.000000300   0.021517974  -0.000932025
                        -0.000005071  -0.000000183   0.000016007  -0.000000964   0.000009422  -0.000000602   0.000011729  -0.000000308

   11   11.1  1.5  1.5   0.000572589   0.268831321  -0.003725317   0.093918595   0.000001471  -0.144801096  -0.012986451  -0.299841439
                        -0.000042238  -0.024004193  -0.013559693   0.339579025  -0.000003272   0.038751309  -0.003132154  -0.072240090

   12   12.1  1.5  1.5   0.375507886  -0.000801788  -0.293875107  -0.011732208   0.126028751  -0.000000368  -0.220581628   0.009554209
                         0.000045345   0.000006552  -0.000097253   0.000018296   0.000120322   0.000000450  -0.000037878  -0.000000578

   13   13.1  1.5  1.5  -0.000027663  -0.000005966  -0.000026729  -0.000009760   0.000067368   0.000006649   0.000007746   0.000001603
                         0.406579451  -0.000869636  -0.058828752  -0.002352133  -0.271826605  -0.000004043  -0.241084746   0.010442367

   14   14.1  1.5  1.5   0.000070571   0.036216059   0.007521131  -0.188242542   0.000003774  -0.021115095   0.003666291   0.084569188
                         0.000870429   0.407065564  -0.002066203   0.052149603   0.000001416  -0.078713275  -0.015197411  -0.350885456

   15   15.1  1.5  1.5   0.000824128   0.383190646   0.003037661  -0.076444544   0.000000205   0.121686150  -0.008083738  -0.186633490
                        -0.000075738  -0.033951588   0.011044503  -0.276849848  -0.000001907  -0.032482075  -0.001951412  -0.045030212

   16   16.1  1.5  1.5   0.000111343  -0.000005857   0.000080558  -0.000014218  -0.000000408   0.000000385  -0.000064478   0.000004664
                        -0.140235991   0.000304478  -0.332807306  -0.013277350  -0.171151226  -0.000000716   0.105341408  -0.004563280

   17   17.1  1.5  1.5  -0.204768606   0.000442408  -0.308506368  -0.012306859  -0.148027009  -0.000000254   0.143394155  -0.006211493
                        -0.000006293   0.000004582  -0.000155236   0.000008975   0.000036626   0.000000312   0.000002122  -0.000001620

   18    1.1  1.5  0.5  -0.000005388  -0.002496618  -0.000055726   0.001403313  -0.000000023   0.004327698   0.000499394   0.011529931
                         0.000000510   0.000221045  -0.000202528   0.005074121   0.000000114  -0.001160251   0.000120727   0.002785484

   19    2.1  1.5  0.5   0.000000298  -0.000000039  -0.000001730  -0.000000037   0.000001106   0.000000096  -0.000002174   0.000000044
                        -0.001280546   0.000002762   0.000195202   0.000007833  -0.006889443  -0.000000054  -0.003963494   0.000171691

   20    3.1  1.5  0.5   0.005319568  -0.000011361  -0.003320366  -0.000132566  -0.000411104  -0.000000025  -0.021101975   0.000914010
                         0.000000337   0.000000096  -0.000001752   0.000000194   0.000001033  -0.000000030  -0.000000369  -0.000000169

   21    4.1  1.5  0.5  -0.000006827  -0.003171270  -0.000018688   0.000470169   0.000000020  -0.005780956   0.000648910   0.014981949
                         0.000000653   0.000280177  -0.000068041   0.001706410  -0.000000069   0.001547423   0.000156874   0.003619494

   22    5.1  1.5  0.5  -0.002126582   0.000004588  -0.004430357  -0.000176773   0.004976867   0.000000054  -0.000991229   0.000042950
                        -0.000000378   0.000000020  -0.000003464   0.000000094   0.000001771   0.000000106   0.000000073   0.000000074

   23    6.1  1.5  0.5   0.000000147   0.000050627   0.000034886  -0.000872967  -0.000000127   0.001967938  -0.000051356  -0.001184210
                         0.000001246   0.000577036  -0.000009646   0.000243047  -0.000000032   0.007348420   0.000212322   0.004902372

   24    7.1  1.5  0.5   0.000000413   0.000148123  -0.000247051   0.006189522   0.000000041  -0.000055265  -0.000137735  -0.003175996
                         0.000003647   0.001674920   0.000067912  -0.001710576   0.000000002  -0.000200467   0.000569426   0.013147696

   25    8.1  1.5  0.5   0.044642702  -0.000095393  -0.021337930  -0.000852039  -0.008902345  -0.000000256  -0.012422915   0.000538085
                         0.000002038   0.000000744  -0.000009820   0.000001440   0.000000458  -0.000000359  -0.000000471  -0.000000095

   26    9.1  1.5  0.5  -0.000000234  -0.000507184  -0.001524070   0.038178140  -0.000000183   0.004394028  -0.000309402  -0.007139449
                        -0.000012334  -0.005941532   0.000418951  -0.010556594  -0.000000109   0.016426683   0.001278172   0.029509916

   27   10.1  1.5  0.5   0.000082758   0.038529897   0.000194234  -0.004884674   0.000000046   0.007825570  -0.000813718  -0.018788707
                        -0.000007379  -0.003404578   0.000702199  -0.017607889  -0.000000229  -0.002097942  -0.000197547  -0.004554217

   28   11.1  1.5  0.5   0.236873792  -0.000508774   0.213204979   0.008505363  -0.320094103  -0.000003866  -0.123852289   0.005364173
                        -0.000020567   0.000000741   0.000190901  -0.000001816  -0.000364416  -0.000007244  -0.000060087  -0.000000387

   29   12.1  1.5  0.5   0.000569619   0.264383006   0.003075950  -0.077437121  -0.000000218   0.152863128  -0.019079097  -0.440495457
                        -0.000054274  -0.023370570   0.011196143  -0.280600554  -0.000000463  -0.040979253  -0.004611830  -0.106407300

   30   13.1  1.5  0.5  -0.000028565  -0.010185641   0.013468267  -0.337459887   0.000001366  -0.054739901   0.003410263   0.078636319
                        -0.000250823  -0.115320812  -0.003700609   0.093209335   0.000000839  -0.204755008  -0.014099089  -0.325539197

   31   14.1  1.5  0.5   0.000098669   0.000002309   0.000267581   0.000008575  -0.000272176  -0.000006309   0.000016598   0.000000448
                         0.084062018  -0.000181331  -0.012838626  -0.000515185   0.452375339   0.000003542   0.092496765  -0.004006774

   32   15.1  1.5  0.5  -0.292233787   0.000623206   0.294425591   0.011752802  -0.071078640   0.000000488   0.477179432  -0.020668642
                        -0.000020955  -0.000006398   0.000178374  -0.000013955  -0.000137863  -0.000000189  -0.000000176   0.000003590

   33   16.1  1.5  0.5  -0.000003382  -0.001318951   0.009327250  -0.233618989  -0.000008634   0.117111457   0.000365849   0.008435853
                        -0.000034351  -0.015498380  -0.002563206   0.064568042  -0.000001917   0.437096700  -0.001535958  -0.035464288

   34   17.1  1.5  0.5  -0.000038970  -0.017763330  -0.002326877   0.058612895  -0.000001987   0.448835164   0.001070633   0.024718610
                         0.000003475   0.001594062  -0.008454835   0.211764041   0.000008771  -0.120205155   0.000258705   0.005969009

   35    1.1  1.5 -0.5  -0.002506384   0.000005412  -0.005264597  -0.000210054   0.004480530   0.000000052  -0.011861629   0.000513779
                        -0.000000277   0.000000034  -0.000003807   0.000000124   0.000002291   0.000000105  -0.000000312  -0.000000064

   36    2.1  1.5 -0.5  -0.000000283  -0.000113091  -0.000007541   0.000187717   0.000000107  -0.001781713  -0.000040366  -0.000932968
                        -0.000002748  -0.001275543   0.000002118  -0.000053564   0.000000027  -0.006655068   0.000166878   0.003852124

   37    3.1  1.5 -0.5  -0.000011325  -0.005298862   0.000035057  -0.000884440  -0.000000016   0.000397402  -0.000888406  -0.020511838
                         0.000000905   0.000468897   0.000127847  -0.003200406   0.000000035  -0.000105256  -0.000214826  -0.004955590

   38    4.1  1.5 -0.5  -0.003183622   0.000006857  -0.001769998  -0.000070561  -0.005984477  -0.000000037  -0.015412967   0.000667603
                         0.000000246   0.000000049   0.000000417   0.000000074  -0.000000700  -0.000000062  -0.000000360  -0.000000085

   39    5.1  1.5 -0.5   0.000004568   0.002118283   0.000046906  -0.001181192   0.000000025  -0.004807305  -0.000041766  -0.000963487
                        -0.000000424  -0.000187691   0.000170436  -0.004269996  -0.000000117   0.001288032  -0.000010016  -0.000232868

   40    6.1  1.5 -0.5  -0.000000397  -0.000000037  -0.000002213  -0.000000024   0.000001799   0.000000114  -0.000000270  -0.000000055
                        -0.000579252   0.000001254   0.000906167   0.000036195  -0.007607368  -0.000000063   0.005043373  -0.000218444

   41    7.1  1.5 -0.5   0.000000015  -0.000000090   0.000003472  -0.000000213  -0.000001574  -0.000000039  -0.000000667  -0.000000149
                        -0.001681457   0.000003670  -0.006421545  -0.000256215   0.000207939   0.000000012   0.013525859  -0.000585847

   42    8.1  1.5 -0.5  -0.000095088  -0.044469004   0.000225134  -0.005682361  -0.000000155   0.008599980  -0.000523012  -0.012075555
                         0.000007662   0.003934278   0.000821759  -0.020567404   0.000000413  -0.002300456  -0.000126466  -0.002917152

   43    9.1  1.5 -0.5   0.000018133  -0.000000853   0.000026654  -0.000001315  -0.000000911   0.000000149   0.000009145  -0.000000560
                         0.005963113  -0.000012307  -0.039610748  -0.001580603  -0.017004217  -0.000000153   0.030361271  -0.001315086

   44   10.1  1.5 -0.5   0.038680022  -0.000083087   0.018272849   0.000728567   0.008101907  -0.000000103   0.019332775  -0.000837354
                        -0.000002471  -0.000000061   0.000027656   0.000000558   0.000004063  -0.000000210  -0.000014174   0.000000914

   45   11.1  1.5 -0.5  -0.000506862  -0.235954915  -0.002259483   0.056866632  -0.000001862   0.309123755  -0.005214046  -0.120402241
                         0.000044076   0.020843991  -0.008199753   0.205481352   0.000007997  -0.083083520  -0.001260190  -0.029029182

   46   12.1  1.5 -0.5   0.265413936  -0.000572186   0.291089636   0.011610984   0.158260636   0.000000091   0.453165268  -0.019628574
                        -0.000007830  -0.000003890   0.000049930  -0.000011350   0.000077872  -0.000000504   0.000022402   0.000001976

   47   13.1  1.5 -0.5   0.000011715   0.000006361  -0.000137927   0.000013238   0.000041009  -0.000001103   0.000018334   0.000003606
                         0.115769758  -0.000252364   0.350095896   0.013967411   0.211945909   0.000001163  -0.334902134   0.014505660

   48   14.1  1.5 -0.5   0.000018272   0.007306122   0.000494364  -0.012305448  -0.000007010   0.117183807   0.000940584   0.021739655
                         0.000180422   0.083743974  -0.000145233   0.003671224  -0.000001791   0.436934178  -0.003894809  -0.089905724

   49   15.1  1.5 -0.5   0.000621347   0.291096078  -0.003111143   0.078447838   0.000000520   0.068627897   0.020089695   0.463832640
                        -0.000048521  -0.025761608  -0.011333550   0.283782305   0.000000056  -0.018504157   0.004857667   0.112069143

   50   16.1  1.5 -0.5   0.000051315   0.000000343  -0.000134489   0.000008779   0.000160278   0.000007846   0.000129138  -0.000005115
                         0.015554317  -0.000034515   0.242377486   0.009673032  -0.452513638  -0.000004084  -0.036453568   0.001578919

   51   17.1  1.5 -0.5  -0.017834696   0.000039124  -0.219725826  -0.008769183   0.464652849   0.000004187  -0.025429093   0.001101446
                        -0.000023225   0.000000029  -0.000204006   0.000004663   0.000114937   0.000007959  -0.000003285  -0.000000023

   52    1.1  1.5 -1.5  -0.000012406  -0.005779690  -0.000014310   0.000359229  -0.000000000  -0.002844707  -0.000438203  -0.010116516
                         0.000001097   0.000511077  -0.000051887   0.001302570  -0.000000000   0.000761104  -0.000105876  -0.002444303

   53    2.1  1.5 -1.5   0.000000364   0.000000104  -0.000000583   0.000000232   0.000000403  -0.000000050   0.000000058   0.000000142
                        -0.006224393   0.000013300   0.002975010   0.000118794   0.001241126   0.000000036  -0.015466341   0.000669907

   54    3.1  1.5 -1.5   0.004377527  -0.000009447   0.005768015   0.000230090   0.002508622   0.000000000   0.003940467  -0.000170684
                         0.000000540  -0.000000081   0.000002188  -0.000000189  -0.000001135  -0.000000014   0.000001482  -0.000000066

   55    4.1  1.5 -1.5  -0.000006262  -0.002948324   0.000067077  -0.001690618  -0.000000009  -0.000300538  -0.000182395  -0.004211948
                         0.000000431   0.000260856   0.000244237  -0.006117034  -0.000000006   0.000081781  -0.000044166  -0.001017162

   56    5.1  1.5 -1.5   0.005662692  -0.000012087  -0.003828626  -0.000152847  -0.001611768  -0.000000036   0.015060606  -0.000652332
                        -0.000000080   0.000000117  -0.000001557   0.000000235   0.000000284  -0.000000049  -0.000000339   0.000000161

   57    6.1  1.5 -1.5   0.000000923   0.000412883  -0.000158723   0.003978188   0.000000043   0.000120963  -0.000088166  -0.002036167
                         0.000010043   0.004668338   0.000043674  -0.001099256   0.000000007   0.000456352   0.000365023   0.008426725

   58    7.1  1.5 -1.5   0.000000740   0.000403449   0.000118377  -0.002963936   0.000000106  -0.001259190  -0.000073397  -0.001692106
                         0.000009728   0.004557454  -0.000032425   0.000818038   0.000000034  -0.004704053   0.000303392   0.007005289

   59    8.1  1.5 -1.5  -0.018889613   0.000040866  -0.033419979  -0.001333234  -0.014494270  -0.000000028  -0.009551314   0.000413743
                         0.000000538   0.000000507  -0.000014406   0.000001113   0.000005533   0.000000036   0.000000489   0.000000100

   60    9.1  1.5 -1.5  -0.000002263  -0.001167349   0.000459855  -0.011521163  -0.000000898   0.011556471   0.000218597   0.005042276
                        -0.000028073  -0.013097174  -0.000126425   0.003181602  -0.000000223   0.043220965  -0.000906036  -0.020918992

   61   10.1  1.5 -1.5  -0.000026824  -0.012575827   0.000256648  -0.006468361   0.000000134  -0.038256363  -0.000906029  -0.020918869
                         0.000002188   0.001117125   0.000934236  -0.023394182  -0.000000659   0.010225764  -0.000218593  -0.005042248

   62   11.1  1.5 -1.5  -0.269900772   0.000574084   0.352327334   0.014062114   0.149896702   0.000002266  -0.308420944   0.013358827
                        -0.000231510  -0.000008361   0.000258269  -0.000013725   0.000009342   0.000002781  -0.000200359   0.000005412

   63   12.1  1.5 -1.5   0.000799248   0.374044356  -0.003101483   0.078223285   0.000000472   0.121715447   0.009286841   0.214420836
                        -0.000064097  -0.033120909  -0.011314851   0.283273200   0.000000339  -0.032689611   0.002244436   0.051768340

   64   13.1  1.5 -1.5  -0.000070657  -0.035840162  -0.002270078   0.056718714  -0.000007468   0.070321353   0.002454022   0.056612932
                        -0.000866781  -0.404996708   0.000615929  -0.015614424  -0.000002187   0.262573067  -0.010149917  -0.234343403

   65   14.1  1.5 -1.5  -0.000219869  -0.000006373   0.000226734  -0.000007721   0.000053422   0.000003279  -0.000204157   0.000005476
                         0.408673375  -0.000873261  -0.195332497  -0.007799778  -0.081496160  -0.000002344   0.360932832  -0.015633392

   66   15.1  1.5 -1.5  -0.384691795   0.000827596  -0.287210025  -0.011454623  -0.125946810   0.000000691  -0.191988999   0.008315938
                        -0.000067165   0.000002852  -0.000090235   0.000007947   0.000072590   0.000001790  -0.000061485   0.000001692

   67   16.1  1.5 -1.5   0.000032654   0.012463272  -0.012803302   0.320808736  -0.000000557   0.044235332  -0.001067185  -0.024677502
                         0.000302779   0.139681109   0.003516205  -0.088557692  -0.000000592   0.165335953   0.004436740   0.102410142

   68   17.1  1.5 -1.5  -0.000440285  -0.203972150  -0.003263246   0.082169044   0.000000326  -0.143006813  -0.006038137  -0.139383906
                         0.000043533   0.018042835  -0.011866342   0.297362492   0.000000236   0.038223662  -0.001457238  -0.033675071

   69    1.1  0.5  0.5  -0.000001193  -0.000150356  -0.000155552   0.003874077  -0.000001107  -0.000241714   0.000000001   0.000000020
                        -0.000000721  -0.001700344   0.000048676  -0.001070670  -0.000000363  -0.000899272  -0.000000004  -0.000000083

   70    2.1  0.5  0.5  -0.000011359  -0.003969136   0.000003038  -0.000069675  -0.000000499  -0.001936004  -0.000000003  -0.000000075
                        -0.000006833   0.000350854  -0.000006115  -0.000251284   0.000000941   0.000518792  -0.000000000  -0.000000018

   71    3.1  0.5  0.5  -0.000011124  -0.000015643   0.000004362  -0.000005934   0.000004296  -0.000007501  -0.000000000  -0.000000000
                         0.001887066   0.000000195   0.004039892   0.000161903  -0.000235713   0.000002443  -0.000000078   0.000000003

   72    4.1  0.5  0.5   0.003605736  -0.000009810  -0.002298372  -0.000091803  -0.001293123  -0.000000997   0.000000185  -0.000000008
                         0.000005733   0.000000229   0.000010874   0.000000497  -0.000000646   0.000000349   0.000000000  -0.000000000

   73    5.1  0.5  0.5  -0.000006482  -0.001918756  -0.000021481   0.000487732  -0.000002772   0.003469295   0.000000004   0.000000085
                         0.000000291   0.000170275  -0.000070476   0.001762562   0.000000090  -0.000931082   0.000000001   0.000000021

   74    6.1  0.5  0.5   0.000002932  -0.000100826  -0.000016661   0.000491296   0.000003728   0.001111109   0.000000001   0.000000017
                        -0.000001976  -0.001134962   0.000006255  -0.000134024  -0.000000077   0.004143837  -0.000000003  -0.000000069

   75    7.1  0.5  0.5   0.002493780  -0.000008675   0.002252964   0.000091135   0.002943236   0.000000985   0.000000017  -0.000000001
                         0.000000256   0.000001064   0.000001236   0.000001272  -0.000000066  -0.000006302  -0.000000000   0.000000000

   76    8.1  0.5  0.5   0.000018062   0.008690078  -0.000612367   0.015431902   0.000000084  -0.024033065  -0.002828944  -0.065318198
                        -0.000038738  -0.000770535  -0.002191406   0.055862191   0.000354604   0.006422461  -0.000647175  -0.015779771

   77    9.1  0.5  0.5   0.000008961   0.004985486  -0.001034335   0.025769900   0.000006977   0.003057165   0.000925008   0.021261207
                         0.000098402   0.056372179   0.000302206  -0.007118527   0.000146803   0.011451057  -0.003785242  -0.088004396

   78   10.1  0.5  0.5  -0.000005131   0.000059966  -0.000020667   0.000146244   0.000017160  -0.000127098  -0.000008690  -0.000317294
                         0.009660551   0.000107700  -0.008154167  -0.000027143  -0.062444367   0.000062478  -0.011272392   0.000192021

   79   11.1  0.5  0.5   0.000004649  -0.000003215   0.000038576  -0.000005090  -0.000026648   0.000006874  -0.000007674   0.000019443
                         0.056932778  -0.000121538  -0.025841190  -0.001047742   0.012183619  -0.000001937  -0.093330510   0.004047014

   80   12.1  0.5  0.5  -0.012297158   0.000025918  -0.044117178  -0.001764304   0.044244401   0.000000009   0.023336496  -0.001014063
                         0.000023902  -0.000008270  -0.000045063   0.000001670   0.000033233  -0.000000817  -0.000044341   0.000014952

   81    1.1  0.5 -0.5   0.000000001  -0.000001125  -0.000002178  -0.000005569   0.000001075  -0.000000976  -0.000000000   0.000000000
                        -0.001706979   0.000000823   0.004019303   0.000162894  -0.000931190   0.000000637   0.000000086  -0.000000004

   82    2.1  0.5 -0.5   0.003984613  -0.000010713  -0.000260765   0.000005088   0.002004309  -0.000000726  -0.000000077   0.000000003
                        -0.000000122   0.000007807  -0.000000361  -0.000004554   0.000000785  -0.000000780  -0.000000000   0.000000000

   83    3.1  0.5 -0.5   0.000015599  -0.000177299   0.000154499  -0.003895663   0.000007878   0.000065072   0.000000001   0.000000019
                        -0.000001184  -0.001878752  -0.000048764   0.001069840   0.000000422   0.000226594  -0.000000003  -0.000000076

   84    4.1  0.5 -0.5   0.000009792   0.003591216  -0.000023928   0.000600561   0.000001053  -0.001249019  -0.000000008  -0.000000180
                        -0.000000636  -0.000323313  -0.000088631   0.002218549   0.000000080   0.000334845  -0.000000002  -0.000000043

   85    5.1  0.5 -0.5   0.001926296  -0.000006482   0.001828799   0.000073651  -0.003592063  -0.000002701   0.000000088  -0.000000004
                         0.000000604   0.000000281   0.000001585   0.000001971  -0.000002772   0.000000630  -0.000000000  -0.000000000

   86    6.1  0.5 -0.5   0.000000464   0.000003094   0.000001415  -0.000001600  -0.000002340   0.000003621   0.000000000   0.000000000
                        -0.001139432   0.000001710   0.000509247   0.000017725   0.004290215  -0.000000889   0.000000071  -0.000000003

   87    7.1  0.5 -0.5   0.000008735   0.002484065   0.000025455  -0.000600164  -0.000002580   0.002843247  -0.000000001  -0.000000017
                         0.000000296  -0.000219914   0.000087517  -0.002171555  -0.000005834  -0.000760645  -0.000000000  -0.000000004

   88    8.1  0.5 -0.5  -0.008724172   0.000021404   0.057954528   0.002275345   0.024876418  -0.000091569  -0.067197234   0.002901812
                        -0.000002094   0.000036997   0.000025032   0.000007722  -0.000007345  -0.000342577  -0.000002032   0.000035324

   89    9.1  0.5 -0.5  -0.000000696   0.000000259  -0.000011168  -0.000016342   0.000006350  -0.000031203  -0.000001927  -0.000010144
                         0.056592205  -0.000098809   0.026735015   0.001077455   0.011852127  -0.000143618   0.090536250  -0.003896613

   90   10.1  0.5 -0.5  -0.000050247  -0.000856039   0.000012715   0.007866207   0.000138927   0.016155941  -0.000263322   0.002655848
                         0.000112563  -0.009622550   0.000148197  -0.002147941   0.000027505   0.060318196  -0.000261169  -0.010955062

   91   11.1  0.5 -0.5  -0.000007503  -0.005010160  -0.001011388   0.024900955  -0.000007141  -0.003174720   0.000969369   0.021926792
                        -0.000121349  -0.056711899   0.000273646  -0.006907317  -0.000000095  -0.011762756  -0.003929252  -0.090718245

   92   12.1  0.5 -0.5  -0.000026546  -0.012251466  -0.000467447   0.011772418  -0.000000220   0.042732475  -0.000982188  -0.022673359
                        -0.000005955   0.001059358  -0.001701254   0.042517497  -0.000000787  -0.011467507  -0.000252694  -0.005523842


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5   0.015819341  -0.000036475   0.003115180  -0.008104091   0.008527972  -0.000002873   0.000307954  -0.007366971
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000004285   0.001820177  -0.003565601  -0.001371988  -0.000003356  -0.007498588   0.009355436   0.000391639
                        -0.000008088  -0.003525116  -0.000201742  -0.000077310  -0.000002392  -0.007728888  -0.002635237  -0.000110175

    3    3.1  1.5  1.5   0.000012892   0.005591746   0.000716943   0.000275499  -0.000002399  -0.006425622   0.000337856   0.000013951
                         0.000006657   0.002886772  -0.012766923  -0.004908319   0.000002250   0.006235078   0.001202777   0.000051293

    4    4.1  1.5  1.5  -0.015340878   0.000035376  -0.002643415   0.006873559   0.001348345  -0.000000176   0.000545073  -0.013007851
                        -0.000000343  -0.000000076  -0.000000190  -0.000000111   0.000000095  -0.000000211  -0.000000607   0.000000111

    5    5.1  1.5  1.5  -0.000010011  -0.004359422  -0.000304730  -0.000116883  -0.000002074  -0.006890528  -0.002710464  -0.000113296
                        -0.000005277  -0.002250078   0.005424403   0.002086627   0.000003069   0.006683980  -0.009621954  -0.000402931

    6    6.1  1.5  1.5  -0.000000092  -0.000000023   0.000000040  -0.000000074  -0.000000044   0.000000314  -0.000000422   0.000000029
                         0.019636511  -0.000045278   0.002980917  -0.007754417   0.010510386  -0.000004059  -0.000029630   0.000690709

    7    7.1  1.5  1.5   0.000000345   0.000000073   0.000000428   0.000000029  -0.000000224   0.000001210  -0.000000073  -0.000000093
                        -0.009999884   0.000023061  -0.003686171   0.009584899   0.011197453  -0.000004676   0.000173521  -0.004144490

    8    8.1  1.5  1.5  -0.000076400  -0.033149488   0.027461345   0.010551447  -0.000076004  -0.196654659   0.026223243   0.001089943
                        -0.000039527  -0.017110739  -0.489247323  -0.188100129   0.000065474   0.190777709   0.093078156   0.003931200

    9    9.1  1.5  1.5  -0.000003332  -0.000000127  -0.000024448   0.000102052   0.000091943   0.000058568  -0.000042605   0.000320082
                         0.005520526  -0.000012736  -0.118546853   0.308275029   0.505080373  -0.000231990  -0.015147878   0.361430662

   10   10.1  1.5  1.5  -0.005518775   0.000012733  -0.079698584   0.207312573   0.200650642  -0.000117409  -0.026649197   0.636198864
                        -0.000003334  -0.000000128   0.000052294  -0.000151185  -0.000250250  -0.000037501   0.000040754  -0.000184018

   11   11.1  1.5  1.5   0.000312362   0.135862410   0.000555011   0.000213045   0.000001403   0.005172172   0.002982894   0.000124628
                         0.000163553   0.070065661  -0.009923772  -0.003816504  -0.000002507  -0.005026493   0.010566198   0.000442776

   12   12.1  1.5  1.5   0.087089248  -0.000200883   0.000468528  -0.001215907  -0.006560761   0.000001956  -0.000690438   0.016488030
                        -0.000136196   0.000001802  -0.000001161   0.000003575  -0.000001369   0.000000193   0.000000587  -0.000000876

   13   13.1  1.5  1.5  -0.000004747  -0.000001291  -0.000000431  -0.000000024   0.000000234  -0.000001353   0.000000279   0.000000142
                         0.002927190  -0.000006819   0.002166088  -0.005630671  -0.016297339   0.000006642  -0.000156905   0.003756052

   14   14.1  1.5  1.5  -0.000099831  -0.042402083   0.003947394   0.001518895   0.000003716   0.008305148  -0.010355064  -0.000433486
                         0.000188836   0.082301267   0.000218329   0.000083659   0.000002646   0.008552413   0.002923880   0.000122244

   15   15.1  1.5  1.5  -0.000218104  -0.094475608  -0.000658366  -0.000253061   0.000003217   0.009053818   0.000532966   0.000022459
                        -0.000111890  -0.048785925   0.011718481   0.004504851  -0.000003386  -0.008786028   0.001884998   0.000077958

   16   16.1  1.5  1.5  -0.000020205  -0.000001200  -0.000000388   0.000000472  -0.000002286  -0.000000290  -0.000000568   0.000004547
                         0.514247586  -0.001185781   0.004780154  -0.012432816   0.004834262  -0.000001691  -0.000115460   0.002740904

   17   17.1  1.5  1.5   0.506827926  -0.001168661   0.004498525  -0.011700813   0.006948003  -0.000002514  -0.000059206   0.001396618
                         0.000043931   0.000000915   0.000000481  -0.000000871   0.000000349   0.000000132   0.000000371   0.000000132

   18    1.1  1.5  0.5   0.000006825   0.002950743   0.000070042   0.000027060  -0.000003135  -0.008591732   0.002749804   0.000114519
                         0.000003465   0.001523343  -0.001245745  -0.000478632   0.000004372   0.008335279   0.009758994   0.000409505

   19    2.1  1.5  0.5   0.000001399   0.000000030  -0.000000162  -0.000000301  -0.000001284  -0.000001043   0.000000444   0.000000443
                        -0.015480610   0.000035696   0.003948084  -0.010268466  -0.004409422   0.000002545   0.000385176  -0.009200363

   20    3.1  1.5  0.5   0.003081647  -0.000007112   0.001202583  -0.003125424  -0.008122444   0.000002941  -0.000426496   0.010186652
                         0.000001982   0.000000119  -0.000000152   0.000001071   0.000000323   0.000000528   0.000000202   0.000000780

   21    4.1  1.5  0.5   0.000008868   0.003834180   0.000683220   0.000262446  -0.000000306  -0.000776852  -0.001975440  -0.000082430
                         0.000004503   0.001979374  -0.012174506  -0.004680698  -0.000000724   0.000753500  -0.007010632  -0.000293238

   22    5.1  1.5  0.5  -0.016077292   0.000037073  -0.000273251   0.000709869   0.011264658  -0.000005056  -0.000412326   0.009833673
                        -0.000001138  -0.000000049   0.000000012  -0.000000504  -0.000000105  -0.000001007   0.000000807  -0.000000557

   23    6.1  1.5  0.5   0.000005264   0.002265282  -0.010123379  -0.003892419  -0.000003357  -0.004730329  -0.009921268  -0.000415635
                        -0.000010101  -0.004388934  -0.000568079  -0.000218111  -0.000001705  -0.004875694   0.002795605   0.000116507

   24    7.1  1.5  0.5   0.000014116   0.006075169  -0.008722781  -0.003353742   0.000002177   0.004905047   0.007767065   0.000326100
                        -0.000027091  -0.011770546  -0.000489627  -0.000188149   0.000002003   0.005056065  -0.002188434  -0.000091202

   25    8.1  1.5  0.5   0.003186759  -0.000007352  -0.067287750   0.174873581   0.527299817  -0.000198484   0.019921469  -0.475926957
                         0.000000308   0.000000079  -0.000014104  -0.000003593   0.000006762  -0.000036390  -0.000006898   0.000005706

   26    9.1  1.5  0.5  -0.000015911  -0.006943635   0.511009056   0.196494412   0.000025403   0.018193735  -0.309674202  -0.012993729
                         0.000031130   0.013481889   0.028512748   0.010950365  -0.000007186   0.019111990   0.087170412   0.003638929

   27   10.1  1.5  0.5   0.000057115   0.024806555   0.018621864   0.007160020  -0.000124394  -0.359543256  -0.041672186  -0.001747786
                         0.000029684   0.012795086  -0.336415525  -0.129313546   0.000138866   0.348786666  -0.148493648  -0.006186175

   28   11.1  1.5  0.5   0.379650812  -0.000875477   0.000683499  -0.001776056  -0.014574650   0.000006310   0.000296049  -0.007055633
                        -0.000179296   0.000002413   0.000002580  -0.000005986  -0.000002733   0.000001239  -0.000000529  -0.000005311

   29   12.1  1.5  0.5  -0.000260727  -0.112724497  -0.000666526  -0.000256130   0.000002241   0.006082055   0.000090529   0.000003918
                        -0.000132399  -0.058206423   0.011902878   0.004576068  -0.000002070  -0.005896391   0.000306556   0.000012005

   30   13.1  1.5  0.5  -0.000349521  -0.150420302   0.013657868   0.005251275  -0.000000487  -0.002502708  -0.002757007  -0.000116204
                         0.000670759   0.291435864   0.000766620   0.000294497  -0.000001135  -0.002579908   0.000776741   0.000032369

   31   14.1  1.5  0.5   0.000200453  -0.000001239   0.000000492  -0.000000478  -0.000006971   0.000001158  -0.000000263  -0.000005949
                         0.361266138  -0.000833022  -0.004370573   0.011367306   0.004880067  -0.000002816  -0.000426346   0.010183720

   32   15.1  1.5  0.5   0.042515962  -0.000097902  -0.001181821   0.003071560   0.004890504  -0.000001450   0.000586139  -0.013994890
                        -0.000067119  -0.000002252   0.000000530  -0.000001937  -0.000000723  -0.000000228  -0.000000442  -0.000001511

   33   16.1  1.5  0.5  -0.000038118  -0.016404475  -0.005682620  -0.002185031  -0.000004402  -0.007113731  -0.013672746  -0.000573150
                         0.000072973   0.031705685  -0.000315995  -0.000121244  -0.000002683  -0.007336988   0.003851604   0.000160515

   34   17.1  1.5  0.5   0.000014630   0.006325383  -0.000363448  -0.000139470  -0.000002674  -0.007365292   0.003745897   0.000156102
                         0.000007435   0.003268411   0.006470189   0.002487865   0.000004447   0.007144469   0.013297994   0.000557419

   35    1.1  1.5 -0.5  -0.003320762   0.000007654   0.000479396  -0.001247713   0.011970578  -0.000005294  -0.000425215   0.010139004
                         0.000000203   0.000000051  -0.000000198   0.000000128   0.000000150  -0.000000955   0.000000836  -0.000000016

   36    2.1  1.5 -0.5  -0.000016400  -0.007099382   0.010252317   0.003941890   0.000002521   0.003069380   0.008855410   0.000370860
                         0.000031706   0.013756747   0.000575676   0.000221063   0.000001101   0.003165740  -0.002495675  -0.000104037

   37    3.1  1.5 -0.5   0.000006265   0.002739267  -0.000176198  -0.000067537  -0.000001744  -0.005830078  -0.002763494  -0.000115476
                         0.000003368   0.001411725   0.003120453   0.001200685   0.000002427   0.005655465  -0.009804641  -0.000410566

   38    4.1  1.5 -0.5  -0.004314957   0.000009945   0.004688050  -0.012193662   0.001082249   0.000000285   0.000304603  -0.007283634
                         0.000000220   0.000000067   0.000000241  -0.000000032  -0.000000104   0.000000733  -0.000000189  -0.000000032

   39    5.1  1.5 -0.5  -0.000032920  -0.014286839   0.000040280   0.000015323   0.000002928   0.008085239  -0.002666474  -0.000111051
                        -0.000017048  -0.007373299  -0.000708726  -0.000272821  -0.000004243  -0.007843560  -0.009465254  -0.000397090

   40    6.1  1.5 -0.5   0.000000176   0.000000044  -0.000000337   0.000000060   0.000000206  -0.000001222   0.000000584   0.000000057
                        -0.004939053   0.000011391   0.003898525  -0.010139306  -0.006793262   0.000003562   0.000431655  -0.010307617

   41    7.1  1.5 -0.5   0.000000489   0.000000118  -0.000000068  -0.000000091  -0.000000017   0.000000168  -0.000000659   0.000000111
                        -0.013245884   0.000030548   0.003359015  -0.008736512   0.007044379  -0.000002954  -0.000338612   0.008069482

   42    8.1  1.5 -0.5   0.000006497   0.002831902   0.009802337   0.003756275   0.000117123   0.378462732   0.129071617   0.005396302
                         0.000003442   0.001461425  -0.174598636  -0.067182825  -0.000164324  -0.367166253   0.458090588   0.019176676

   43    9.1  1.5 -0.5  -0.000013725   0.000000141   0.000077076  -0.000165589   0.000249286   0.000023236   0.000021515  -0.000084131
                         0.015164934  -0.000034960  -0.196799285   0.511803873   0.026385943  -0.000012530   0.013493640  -0.321709162

   44   10.1  1.5 -0.5  -0.027911993   0.000064368   0.129511581  -0.336930428   0.500922640  -0.000185976   0.006428335  -0.154230049
                        -0.000008494  -0.000000180   0.000097098  -0.000257876  -0.000011395  -0.000013054   0.000004513   0.000162964

   45   11.1  1.5 -0.5   0.000776844   0.337276317  -0.000093541  -0.000035723  -0.000003666  -0.010458996   0.001918685   0.000079783
                         0.000403707   0.174297037   0.001773601   0.000682569   0.000005283   0.010150360   0.006789745   0.000285096

   46   12.1  1.5 -0.5   0.126865281  -0.000292411  -0.004583230   0.011921525  -0.008471057   0.000003049  -0.000012617   0.000319619
                        -0.000018040  -0.000001939  -0.000000685   0.000001479   0.000002852  -0.000000075  -0.000000515   0.000003994

   47   13.1  1.5 -0.5  -0.000011588  -0.000002922   0.000000212   0.000000119  -0.000000093   0.000000441   0.000000360  -0.000000105
                         0.327965135  -0.000756355  -0.005259526   0.013679366  -0.003594367   0.000001154   0.000120627  -0.002864335

   48   14.1  1.5 -0.5   0.000383190   0.165883179  -0.011349474  -0.004363734  -0.000002792  -0.003403017  -0.009800417  -0.000410438
                        -0.000739657  -0.320929951  -0.000636471  -0.000244407  -0.000001215  -0.003497796   0.002767673   0.000115377

   49   15.1  1.5 -0.5   0.000088029   0.037748993   0.000174044   0.000066750   0.000000882   0.003510644   0.003797037   0.000158543
                         0.000042904   0.019560805  -0.003066626  -0.001179934  -0.000001173  -0.003404762   0.013469946   0.000564290

   50   16.1  1.5 -0.5   0.000034333  -0.000000400  -0.000001381   0.000002918  -0.000002927  -0.000001291   0.000000946  -0.000000969
                         0.035698124  -0.000082328   0.002188392  -0.005691399  -0.010219421   0.000004991   0.000595202  -0.014204888

   51   17.1  1.5 -0.5  -0.007119899   0.000016411  -0.002491771   0.006480389   0.010261139  -0.000005015  -0.000578864   0.013815513
                         0.000002999   0.000000104  -0.000000152  -0.000000331  -0.000000573  -0.000001330   0.000000928  -0.000001077

   52    1.1  1.5 -1.5  -0.000032412  -0.014057102   0.000454099   0.000174554  -0.000002062  -0.006120920  -0.001998011  -0.000083521
                        -0.000016730  -0.007255994  -0.008091358  -0.003110286   0.000002001   0.005938068  -0.007090855  -0.000296412

   53    2.1  1.5 -1.5   0.000000518  -0.000000098  -0.000000311   0.000001632  -0.000000421   0.000000743   0.000000171  -0.000000840
                         0.003967302  -0.000009153  -0.001374164   0.003571303   0.010768683  -0.000004054   0.000406841  -0.009719498

   54    3.1  1.5 -1.5   0.006292939  -0.000014510  -0.004916045   0.012787037  -0.008953481   0.000003289   0.000053155  -0.001249327
                        -0.000000377   0.000000002   0.000000037  -0.000000443  -0.000001013  -0.000000055  -0.000000483   0.000001015

   55    4.1  1.5 -1.5   0.000031400   0.013632095  -0.000385260  -0.000147929   0.000000020  -0.000967703  -0.003527778  -0.000147247
                         0.000016294   0.007036228   0.006862753   0.002639273   0.000000274   0.000938927  -0.012520342  -0.000524808

   56    5.1  1.5 -1.5  -0.004905855   0.000011317   0.002089898  -0.005432956  -0.009599738   0.000003625  -0.000418556   0.009996430
                        -0.000000149  -0.000000097   0.000000222   0.000000304   0.000000506   0.000000758   0.000000230  -0.000000715

   57    6.1  1.5 -1.5  -0.000020788  -0.009006766  -0.007742230  -0.002976231   0.000003052   0.007318464   0.000664829   0.000028634
                         0.000040223   0.017449089  -0.000434579  -0.000167071   0.000002695   0.007543759  -0.000187301  -0.000007630

   58    7.1  1.5 -1.5   0.000010642   0.004586426   0.009569839   0.003680404   0.000004124   0.007797001  -0.003989179  -0.000166998
                        -0.000020459  -0.008886077   0.000537103   0.000206121   0.000002514   0.008036774   0.001123946   0.000047131

   59    8.1  1.5 -1.5  -0.037305039   0.000086019  -0.188395837   0.490017417  -0.273987571   0.000100141   0.004079463  -0.096701612
                        -0.000000321  -0.000000081  -0.000005007  -0.000004042   0.000001610  -0.000005929  -0.000017097   0.000003528

   60    9.1  1.5 -1.5  -0.000005954  -0.002529186   0.307784979   0.118359234   0.000203573   0.351623903   0.347970918   0.014591685
                         0.000011259   0.004907080   0.017375569   0.006666985   0.000125729   0.362583539  -0.097716254  -0.004067279

   61   10.1  1.5 -1.5   0.000011256   0.004905525  -0.011767362  -0.004517990  -0.000058157  -0.144190486   0.172367655   0.007188356
                         0.000005954   0.002528381   0.206978392   0.079570440   0.000108669   0.139534392   0.612403805   0.025661428

   62   11.1  1.5 -1.5   0.152865261  -0.000352584  -0.003822445   0.009939280   0.007212278  -0.000002753   0.000459981  -0.010979170
                         0.000056681   0.000002060  -0.000001141   0.000001923   0.000006338  -0.000000822  -0.000000129  -0.000005415

   63   12.1  1.5 -1.5  -0.000177678  -0.077325229   0.000071700   0.000027413   0.000001270   0.004708008   0.004470908   0.000186690
                        -0.000093742  -0.040067001  -0.001213796  -0.000467727  -0.000001501  -0.004569272   0.015870290   0.000664719

   64   13.1  1.5 -1.5  -0.000004275  -0.001338421  -0.005621824  -0.002162709  -0.000005596  -0.011348084   0.003615312   0.000150948
                         0.000005467   0.002603285  -0.000315529  -0.000120943  -0.000003825  -0.011697190  -0.001018550  -0.000042823

   65   14.1  1.5 -1.5   0.000071247   0.000002095  -0.000001581   0.000003200   0.000005902  -0.000000824   0.000000096  -0.000005874
                        -0.092582019   0.000213591   0.001521197  -0.003953426  -0.011921377   0.000004487  -0.000450393   0.010759944

   66   15.1  1.5 -1.5  -0.106328297   0.000245129   0.004511953  -0.011736960   0.012616097  -0.000004667   0.000081128  -0.001958894
                         0.000017340   0.000000614  -0.000000242   0.000000706   0.000001922  -0.000000190   0.000000474  -0.000001756

   67   16.1  1.5 -1.5  -0.000544958  -0.235856423  -0.012413310  -0.004772666   0.000000970   0.003367761   0.002639407   0.000111287
                         0.001053137   0.456970818  -0.000696181  -0.000267461   0.000001416   0.003468181  -0.000738990  -0.000030767

   68   17.1  1.5 -1.5  -0.001038055  -0.450388573   0.000654766   0.000251587  -0.000001896  -0.004986660   0.000378906   0.000015701
                        -0.000536853  -0.232432100  -0.011682479  -0.004491484   0.000001656   0.004838178   0.001344237   0.000057088

   69    1.1  0.5  0.5   0.000000000   0.000000036  -0.017801629  -0.006865498   0.000007487   0.000582695   0.045594368   0.001906104
                        -0.000000000  -0.000000070  -0.001017819  -0.000337996  -0.000048052   0.000599723  -0.012845743  -0.000571379

   70    2.1  0.5  0.5   0.000000000   0.000000044   0.001188360   0.000448803   0.000017875  -0.019843896  -0.009888710  -0.000434644
                         0.000000000   0.000000023  -0.021160906  -0.008271656   0.000135659   0.019245700  -0.035096546  -0.001375954

   71    3.1  0.5  0.5   0.000000000   0.000000000   0.000021316   0.000064950   0.000104359  -0.000077378  -0.000099673  -0.000099174
                        -0.000000000   0.000000000  -0.011651217   0.030058922  -0.032287380   0.000095708   0.000846414  -0.023046147

   72    4.1  0.5  0.5   0.000000092  -0.000000000   0.007536181  -0.019592316  -0.034481453   0.000001953  -0.001318016   0.031340270
                         0.000000000   0.000000000  -0.000044003   0.000084166  -0.000095150   0.000012619  -0.000014856  -0.000068732

   73    5.1  0.5  0.5   0.000000001   0.000000138  -0.000624791  -0.000286069   0.000004649  -0.030821488   0.006715636   0.000266666
                         0.000000000   0.000000071   0.011625533   0.004470512   0.000017224   0.029916728   0.023809921   0.000999953

   74    6.1  0.5  0.5  -0.000000000  -0.000000047  -0.034984012  -0.013387980  -0.000033168  -0.021959759  -0.014006348  -0.000570728
                         0.000000000   0.000000090  -0.001958233  -0.000743607  -0.000015011  -0.022618508   0.003960389   0.000159194

   75    7.1  0.5  0.5  -0.000000248   0.000000001  -0.016686096   0.043514484  -0.016228080  -0.000003812  -0.000518794   0.013341116
                        -0.000000000   0.000000000   0.000001822   0.000007411  -0.000005878   0.000063385  -0.000001636  -0.000004246

   76    8.1  0.5  0.5   0.000134582   0.058475501   0.010557443   0.004054609  -0.000002710   0.006967182   0.032112242   0.001340496
                        -0.000458815   0.030182455  -0.188449789  -0.071365675   0.000657371  -0.006761728   0.113952223   0.005280399

   77    9.1  0.5  0.5   0.000040189   0.011625997  -0.123820231  -0.047594112   0.000074639   0.128382927  -0.054639231  -0.002249911
                        -0.000271608  -0.022521178  -0.007100325  -0.002272664   0.000339596   0.132335191   0.015386242   0.000830952

   78   10.1  0.5  0.5   0.000009822   0.000356012  -0.000237619  -0.000088333   0.000021543   0.000321488   0.000057394   0.000023853
                         0.093419831  -0.000098479   0.064130925  -0.169989906  -0.125058229   0.000332851   0.003978420  -0.078805523

   79   11.1  0.5  0.5  -0.000045830  -0.000016826  -0.000004709  -0.000004407  -0.000074321  -0.000006870  -0.000010154  -0.000083135
                        -0.011269361   0.000017465  -0.002294125   0.006164480  -0.131712607   0.000046447  -0.008129752   0.193443837

   80   12.1  0.5  0.5   0.091148144  -0.000211968  -0.001551180   0.004082663   0.156151635  -0.000091031  -0.007303823   0.174420584
                        -0.000015428   0.000003613  -0.000010481   0.000024950  -0.000046858  -0.000034358   0.000005945   0.000102055

   81    1.1  0.5 -0.5   0.000000000   0.000000000   0.000047232   0.000018736   0.000000637  -0.000038833  -0.000033005  -0.000001461
                         0.000000079  -0.000000000  -0.006873651   0.017830693  -0.000836182  -0.000029276   0.001989627  -0.047369394

   82    2.1  0.5 -0.5   0.000000050  -0.000000000  -0.008283808   0.021194248  -0.027643754   0.000081630  -0.001442263   0.036463052
                        -0.000000000   0.000000000  -0.000015390  -0.000000777   0.000003872   0.000109815  -0.000045178  -0.000000528

   83    3.1  0.5 -0.5   0.000000000   0.000000000   0.030008057   0.011634106  -0.000122180  -0.022556761  -0.022209266  -0.000787657
                        -0.000000000  -0.000000000   0.001749149   0.000631574  -0.000014815  -0.023101479   0.006154935   0.000325495

   84    4.1  0.5 -0.5  -0.000000000  -0.000000082   0.001181856   0.000466211  -0.000007385   0.024682678   0.008433701   0.000371761
                        -0.000000000  -0.000000042  -0.019556818  -0.007521875  -0.000010418  -0.024077895   0.030184266   0.001264588

   85    5.1  0.5 -0.5   0.000000156  -0.000000001   0.004479517  -0.011642278  -0.042953168   0.000008657   0.001034798  -0.024738877
                         0.000000000   0.000000000  -0.000035122  -0.000027608  -0.000011467   0.000015599  -0.000014528  -0.000006395

   86    6.1  0.5 -0.5   0.000000000   0.000000000   0.000007734  -0.000005115  -0.000012158   0.000013354  -0.000001561  -0.000013262
                        -0.000000101   0.000000000  -0.013408613   0.035038775   0.031525034  -0.000033869  -0.000592512   0.014555490

   87    7.1  0.5 -0.5   0.000000001   0.000000220  -0.002430862  -0.000936797  -0.000046871   0.011643549   0.003614184   0.000142278
                         0.000000000   0.000000114   0.043446533   0.016659778  -0.000042840  -0.011303909   0.012842237   0.000498906

   88    8.1  0.5 -0.5   0.065805508   0.000090859  -0.071480745   0.188745284   0.009708892   0.000459676   0.005446046  -0.118390477
                         0.000001266  -0.000469434   0.000049382   0.000018613   0.000001923   0.000469939  -0.000141854  -0.000003452

   89    9.1  0.5 -0.5   0.000000903   0.000088869   0.000397763   0.000151110   0.000000728   0.000182890   0.000189605   0.000009256
                         0.025344965  -0.000259785  -0.047646682   0.124023552  -0.184376730   0.000295715  -0.002390948   0.056764266

   90   10.1  0.5 -0.5   0.000271183  -0.042858407  -0.169717885  -0.064043483  -0.000001019  -0.087094109  -0.075845394  -0.003844873
                         0.000250804   0.083008565  -0.009613295  -0.003356223  -0.000462757  -0.089745068   0.021395964   0.001023752

   91   11.1  0.5 -0.5  -0.000006941   0.005209740   0.006155042   0.002290257  -0.000037272  -0.091658778   0.186170944   0.007827800
                        -0.000023237  -0.009992958   0.000341017   0.000133249  -0.000028553  -0.094587974  -0.052544312  -0.002195112

   92   12.1  0.5 -0.5  -0.000186698  -0.080987367  -0.000203855  -0.000076454  -0.000041414  -0.112109870   0.047403188   0.001975163
                        -0.000100435  -0.041821415   0.004077647   0.001549330   0.000088046   0.108695503   0.167855557   0.007031685


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5   0.010114936   0.000364724  -0.007720451  -0.000000000  -0.000000190   0.000000001   0.000000000  -0.012020144
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000068937   0.001925349   0.000000638  -0.009933667  -0.000000000  -0.000000052  -0.001596047  -0.000005575
                         0.000099978  -0.002774914  -0.000000104   0.002288954   0.000000000   0.000000003   0.002633796   0.000003268

    3    3.1  1.5  1.5  -0.000119470   0.003313285   0.000000001   0.000660218   0.000000000   0.000000002   0.015299688   0.000012383
                        -0.000082906   0.002299381   0.000000007   0.002861704   0.000000000   0.000000027   0.009243873  -0.000001078

    4    4.1  1.5  1.5  -0.010480132  -0.000377619  -0.002194588  -0.000000515  -0.000000130   0.000000001   0.000005449  -0.024363753
                        -0.000000584  -0.000000304  -0.000000760   0.000000033   0.000000000   0.000000000   0.000003616  -0.000003013

    5    5.1  1.5  1.5   0.000118057  -0.003276301  -0.000000105   0.002217757  -0.000000000   0.000000002   0.005026371  -0.000002426
                         0.000081457  -0.002272720  -0.000000646   0.009625897   0.000000000   0.000000033   0.003033762  -0.000003796

    6    6.1  1.5  1.5  -0.000000166  -0.000000089  -0.000000220   0.000000010  -0.000000000  -0.000000000   0.000003036  -0.000003508
                         0.012753483   0.000459785  -0.006731318   0.000000152  -0.000000025   0.000000000  -0.000005992   0.019350311

    7    7.1  1.5  1.5   0.000000569   0.000000291   0.000000721  -0.000000032  -0.000000000  -0.000000000   0.000001830  -0.000003848
                        -0.007035118  -0.000253411  -0.004371566  -0.000000492  -0.000000292   0.000000002  -0.000006560   0.036628834

    8    8.1  1.5  1.5  -0.021543472   0.597521138   0.000002556   0.054136681  -0.000000000   0.000000013  -0.000000788  -0.000000001
                        -0.014937037   0.414582129   0.000015679   0.235111473   0.000000001   0.000000207  -0.000000476  -0.000000001

    9    9.1  1.5  1.5   0.000099417   0.000018203   0.000251540  -0.000001710   0.000077315  -0.000010342   0.000000000   0.000000000
                        -0.139197979  -0.005005063  -0.420160322  -0.000026591  -0.499994470   0.002649215  -0.000000000   0.000000933

   10   10.1  1.5  1.5   0.139210549   0.005005516   0.420160451   0.000026590   0.499994191  -0.002649213  -0.000000000   0.000000846
                         0.000099412   0.000018203   0.000251540  -0.000001710   0.000077315  -0.000010342  -0.000000000   0.000000000

   11   11.1  1.5  1.5  -0.000146154   0.004055423   0.000000100  -0.001901835   0.000000000   0.000000002   0.000039180  -0.000000879
                        -0.000100894   0.002811029   0.000000610  -0.008228744   0.000000000   0.000000026   0.000022917  -0.000000486

   12   12.1  1.5  1.5   0.002899432   0.000104325   0.006084257   0.000000419   0.000000200  -0.000000001   0.000000661  -0.003949775
                        -0.000003512   0.000000104   0.000001704  -0.000000027  -0.000000000  -0.000000000   0.000000438  -0.000000353

   13   13.1  1.5  1.5  -0.000000385  -0.000000215  -0.000000527   0.000000024  -0.000000000   0.000000000   0.000000440  -0.000000752
                         0.000556818   0.000019883   0.006831041   0.000000366   0.000000208  -0.000000001  -0.000001256   0.006082253

   14   14.1  1.5  1.5   0.000067904  -0.001896497  -0.000000629   0.009795270  -0.000000000  -0.000000030  -0.000234148  -0.000000819
                        -0.000098654   0.002738168   0.000000103  -0.002262798   0.000000000   0.000000002   0.000386898   0.000000479

   15   15.1  1.5  1.5   0.000078011  -0.002162871   0.000000030  -0.001270880   0.000000000   0.000000001   0.002364818   0.000001631
                         0.000054285  -0.001501644   0.000000182  -0.005508610   0.000000000   0.000000009   0.001428612  -0.000000316

   16   16.1  1.5  1.5  -0.000000671  -0.000000218   0.000001565   0.000000023  -0.000000000   0.000000000  -0.000000278  -0.000000847
                         0.014353028   0.000517355  -0.003997802   0.000000352   0.000000063  -0.000000000   0.000000354  -0.000125946

   17   17.1  1.5  1.5   0.014068129   0.000507116  -0.005062506   0.000000287  -0.000000095   0.000000001   0.000000452  -0.000562881
                         0.000001424   0.000000209   0.000000101  -0.000000019  -0.000000000   0.000000000   0.000000300  -0.000000274

   18    1.1  1.5  0.5  -0.000049595   0.001374251  -0.000000056   0.001822014  -0.000000000  -0.000000006   0.019799131   0.000001773
                        -0.000034660   0.000954008  -0.000000342   0.007907206  -0.000000001  -0.000000100   0.011964115  -0.000005280

   19    2.1  1.5  0.5   0.000001181   0.000000165   0.000001586  -0.000000014   0.000000000   0.000000000   0.000003134  -0.000002875
                        -0.010187695  -0.000367230   0.003379727  -0.000000222   0.000000022  -0.000000000  -0.000003610  -0.007231558

   20    3.1  1.5  0.5   0.003046229   0.000109402   0.014017717   0.000000825   0.000000152  -0.000000001  -0.000002855   0.009274866
                         0.000001875   0.000000522   0.000000868  -0.000000053  -0.000000000  -0.000000000  -0.000000848   0.000002403

   21    4.1  1.5  0.5  -0.000064456   0.001786035  -0.000000072   0.002367459  -0.000000000  -0.000000005  -0.021990752  -0.000003173
                        -0.000045045   0.001239830  -0.000000444   0.010274464  -0.000000000  -0.000000076  -0.013290069   0.000002913

   22    5.1  1.5  0.5  -0.010725379  -0.000386554   0.001412869  -0.000000342  -0.000000007   0.000000000  -0.000010187   0.028839041
                        -0.000000986  -0.000000224  -0.000000291   0.000000022  -0.000000000  -0.000000000  -0.000006165   0.000005466

   23    6.1  1.5  0.5  -0.000072616   0.002020060   0.000000293  -0.003074179  -0.000000000  -0.000000002  -0.011754164  -0.000006667
                         0.000104959  -0.002911849  -0.000000048   0.000708607  -0.000000000   0.000000000   0.019429052   0.000007822

   24    7.1  1.5  0.5  -0.000194732   0.005417125   0.000000785  -0.008244425   0.000000001   0.000000192   0.007835665   0.000003460
                         0.000281466  -0.007808621  -0.000000128   0.001900323  -0.000000000  -0.000000012  -0.012956281  -0.000004446

   25    8.1  1.5  0.5  -0.080370770  -0.002889851  -0.242588795  -0.000015351   0.577340650  -0.003059039   0.000000000  -0.000000872
                        -0.000016635  -0.000009044  -0.000022195   0.000000995  -0.000203544  -0.000010390   0.000000000  -0.000000000

   26    9.1  1.5  0.5  -0.005335270   0.147512286  -0.000021319   0.608546181   0.001525983   0.288072885   0.000000154   0.000000000
                         0.007685469  -0.213068646   0.000003457  -0.140036530  -0.000104084  -0.018564137  -0.000000255  -0.000000000

   27   10.1  1.5  0.5   0.017199772  -0.477138638  -0.000006418   0.077386007   0.000104084   0.018564110  -0.000000019  -0.000000001
                         0.011900083  -0.330860493  -0.000039419   0.337089450   0.001525981   0.288072467  -0.000000011  -0.000000000

   28   11.1  1.5  0.5   0.010992613   0.000396072   0.002766146   0.000000563   0.000000024  -0.000000000  -0.000001305   0.003641234
                        -0.000004596   0.000000144   0.000002543  -0.000000037   0.000000000  -0.000000000  -0.000000828   0.000001304

   29   12.1  1.5  0.5   0.000080075  -0.002218816   0.000000090  -0.002941769   0.000000000   0.000000012  -0.001024696  -0.000000238
                         0.000055975  -0.001540685   0.000000551  -0.012765507   0.000000001   0.000000179  -0.000618100  -0.000000084

   30   13.1  1.5  0.5   0.000203759  -0.005668255  -0.000000821   0.008626282  -0.000000001  -0.000000161   0.000253830   0.000000015
                        -0.000294513   0.008170598   0.000000134  -0.001988395   0.000000000   0.000000010  -0.000420166  -0.000000068

   31   14.1  1.5  0.5   0.000005502   0.000000078  -0.000001054   0.000000014  -0.000000000  -0.000000000   0.000000459   0.000001997
                         0.010046856   0.000362153  -0.003332974   0.000000219  -0.000000025   0.000000000  -0.000000531  -0.001061985

   32   15.1  1.5  0.5   0.000265636   0.000009938  -0.013615599  -0.000000677  -0.000000046   0.000000000  -0.000000844   0.002556129
                        -0.000002335  -0.000000457  -0.000000448   0.000000044  -0.000000000   0.000000000  -0.000000387   0.000000666

   33   16.1  1.5  0.5   0.000022199  -0.000617543  -0.000000089   0.000938092  -0.000000000  -0.000000030   0.002059021   0.000001103
                        -0.000032038   0.000888837   0.000000015  -0.000220006   0.000000000   0.000000002  -0.003403656  -0.000001320

   34   17.1  1.5  0.5  -0.000004491   0.000124432  -0.000000005   0.000165129  -0.000000000  -0.000000001  -0.004223010  -0.000000478
                        -0.000003142   0.000086476  -0.000000031   0.000716323  -0.000000000  -0.000000017  -0.002552347   0.000000881

   35    1.1  1.5 -0.5  -0.001672930  -0.000060506   0.008114410   0.000000345   0.000000100  -0.000000001  -0.000001215  -0.023133214
                         0.000000373   0.000000203   0.000000498  -0.000000022  -0.000000000  -0.000000000   0.000005436  -0.000007760

   36    2.1  1.5 -0.5   0.000209215  -0.005806814  -0.000000220  -0.003293827   0.000000000   0.000000022  -0.003744578  -0.000000814
                        -0.000301806   0.008370785   0.000000036   0.000757138  -0.000000000  -0.000000001   0.006186564  -0.000004711

   37    3.1  1.5 -0.5  -0.000090181   0.002503821   0.000000133  -0.003147553   0.000000000   0.000000010   0.007937756   0.000002882
                        -0.000061939   0.001735048   0.000000816  -0.013659770   0.000000001   0.000000152   0.004797413   0.000000752

   38    4.1  1.5 -0.5  -0.002174190  -0.000078635   0.010543693   0.000000449   0.000000076  -0.000000000  -0.000001208   0.025694728
                         0.000000452   0.000000263   0.000000619  -0.000000029  -0.000000000  -0.000000000  -0.000004134   0.000007239

   39    5.1  1.5 -0.5   0.000317717  -0.008812430  -0.000000055  -0.000316878   0.000000000  -0.000000000   0.024680426   0.000011907
                         0.000220182  -0.006113497  -0.000000338  -0.001376876  -0.000000000  -0.000000007   0.014918675  -0.000000004

   40    6.1  1.5 -0.5   0.000000321   0.000000174   0.000000428  -0.000000019  -0.000000000  -0.000000000  -0.000001658   0.000004089
                        -0.003543940  -0.000127630  -0.003154790  -0.000000296   0.000000002  -0.000000000  -0.000010143   0.022707893

   41    7.1  1.5 -0.5   0.000000868   0.000000468   0.000001110  -0.000000051  -0.000000000  -0.000000000   0.000000660  -0.000000493
                        -0.009503673  -0.000342262  -0.008460602  -0.000000794  -0.000000192   0.000000001   0.000005595  -0.015141429

   42    8.1  1.5 -0.5   0.002379429  -0.066041328  -0.000002476   0.054478130   0.000209716   0.037420472  -0.000000746  -0.000000000
                         0.001640011  -0.045803972  -0.000015183   0.236392592   0.003051859   0.576126701  -0.000000451  -0.000000000

   43    9.1  1.5 -0.5   0.000271168  -0.000002087   0.000144279   0.000001417  -0.000248181  -0.000004419   0.000000000  -0.000000000
                        -0.259148700  -0.009355829   0.624450689   0.000021551  -0.288670318   0.001529522   0.000000001  -0.000000298

   44   10.1  1.5 -0.5   0.580628897   0.020915146   0.345858097   0.000039854  -0.288669899   0.001529520  -0.000000001   0.000000022
                         0.000174657   0.000028226  -0.000259073  -0.000002595   0.000248181   0.000004419  -0.000000000   0.000000000

   45   11.1  1.5 -0.5  -0.000325491   0.009028804   0.000000091  -0.000623424   0.000000000   0.000000002   0.003116482   0.000001545
                        -0.000225674   0.006270427   0.000000557  -0.002694979   0.000000000   0.000000024   0.001883115  -0.000000033

   46   12.1  1.5 -0.5   0.002701269   0.000097699  -0.013100083  -0.000000557  -0.000000179   0.000000001  -0.000000247   0.001196682
                        -0.000000913  -0.000000340  -0.000001081   0.000000036   0.000000000   0.000000000  -0.000000051   0.000001341

   47   13.1  1.5 -0.5  -0.000000898  -0.000000489  -0.000001214   0.000000054   0.000000000   0.000000000  -0.000000023   0.000000220
                         0.009944234   0.000358128   0.008852483   0.000000830   0.000000161  -0.000000001   0.000000066  -0.000490886

   48   14.1  1.5 -0.5  -0.000206520   0.005732016   0.000000217   0.003248148  -0.000000000  -0.000000025  -0.000547837  -0.000000119
                         0.000297497  -0.008251263  -0.000000035  -0.000747162   0.000000000   0.000000002   0.000909775  -0.000000692

   49   15.1  1.5 -0.5  -0.000007905   0.000216913  -0.000000109   0.003056876  -0.000000000  -0.000000003   0.002187627   0.000000922
                        -0.000006041   0.000153352  -0.000000670   0.013268009  -0.000000000  -0.000000046   0.001322152   0.000000105

   50   16.1  1.5 -0.5   0.000000660  -0.000000026  -0.000003808   0.000000006   0.000000000   0.000000000   0.000000261  -0.000000615
                         0.001082308   0.000038978   0.000963538   0.000000090   0.000000030  -0.000000000   0.000001700  -0.003977994

   51   17.1  1.5 -0.5  -0.000151530  -0.000005480   0.000735110   0.000000031   0.000000017  -0.000000000   0.000000047   0.004934398
                         0.000000111   0.000000021   0.000000114  -0.000000002  -0.000000000   0.000000000  -0.000001002   0.000001237

   52    1.1  1.5 -1.5   0.000299654  -0.008310334   0.000000000  -0.001733092   0.000000000   0.000000012   0.010285650   0.000000000
                         0.000207922  -0.005766307   0.000000000  -0.007523413   0.000000001   0.000000190   0.006220070   0.000000000

   53    2.1  1.5 -1.5  -0.000000070  -0.000000357  -0.000000620   0.000000042  -0.000000000   0.000000000   0.000003080  -0.000002827
                         0.003377442   0.000121441   0.010193971   0.000000645  -0.000000052   0.000000000   0.000005681  -0.003079649

   54    3.1  1.5 -1.5   0.004032990   0.000145418  -0.002936875   0.000000007   0.000000027  -0.000000000  -0.000010038   0.017875391
                        -0.000000317  -0.000000007  -0.000000971  -0.000000001  -0.000000000  -0.000000000  -0.000007330   0.000007146

   55    4.1  1.5 -1.5  -0.000310422   0.008610708   0.000000083  -0.000493383   0.000000000   0.000000008   0.020849648   0.000006533
                        -0.000215022   0.005974017   0.000000509  -0.002138408   0.000000001   0.000000130   0.012604945  -0.000000275

   56    5.1  1.5 -1.5  -0.003987405  -0.000143431  -0.009878073  -0.000000653   0.000000033  -0.000000000   0.000004040   0.005870953
                        -0.000000504  -0.000000377  -0.000000329   0.000000042  -0.000000000   0.000000000  -0.000001993   0.000005006

   57    6.1  1.5 -1.5   0.000262040  -0.007270349  -0.000000150  -0.006559574   0.000000000   0.000000025  -0.010010213  -0.000000503
                        -0.000377806   0.010478233   0.000000024   0.001510836  -0.000000000  -0.000000002   0.016559897   0.000006699

   58    7.1  1.5 -1.5  -0.000144225   0.004010101   0.000000487  -0.004259836   0.000000002   0.000000292  -0.018951049  -0.000001828
                         0.000208366  -0.005780309  -0.000000079   0.000982034  -0.000000000  -0.000000019   0.031345323   0.000006560

   59    8.1  1.5 -1.5   0.727261886   0.026215190  -0.241263725   0.000015852   0.000000207  -0.000000001   0.000000001  -0.000000920
                         0.000017236   0.000009343   0.000022954  -0.000001029  -0.000000000   0.000000000   0.000000000  -0.000000000

   60    9.1  1.5 -1.5  -0.002838323   0.079272080   0.000026296  -0.409380750   0.002642910   0.498926628  -0.000000483  -0.000000000
                         0.004122488  -0.114420385  -0.000004303   0.094563003  -0.000182961  -0.032660312   0.000000798   0.000000000

   61   10.1  1.5 -1.5   0.004122860  -0.114430709  -0.000004302   0.094563032  -0.000182961  -0.032660294  -0.000000724  -0.000000000
                         0.002838581  -0.079279250  -0.000026295   0.409380875  -0.002642908  -0.498926349  -0.000000438   0.000000000

   62   11.1  1.5 -1.5   0.004934403   0.000177597   0.008445660   0.000000617   0.000000026  -0.000000000   0.000001003   0.000045385
                         0.000002395   0.000000426   0.000006103  -0.000000040   0.000000000  -0.000000000   0.000000039   0.000000664

   63   12.1  1.5 -1.5   0.000085772  -0.002380143  -0.000000068   0.001367458  -0.000000000  -0.000000013   0.003380009   0.000000792
                         0.000059388  -0.001655789  -0.000000414   0.005928595  -0.000000001  -0.000000200   0.002043590  -0.000000033

   64   13.1  1.5 -1.5   0.000011158  -0.000317113  -0.000000362   0.006656585  -0.000000001  -0.000000207  -0.003146743  -0.000000273
                        -0.000016458   0.000457696   0.000000059  -0.001533950   0.000000000   0.000000014   0.005204979   0.000001302

   65   14.1  1.5 -1.5   0.000002827   0.000000452   0.000006199  -0.000000041  -0.000000000  -0.000000000   0.000000453  -0.000000152
                        -0.003330804  -0.000119764  -0.010053235  -0.000000636  -0.000000030   0.000000000   0.000000834  -0.000452234

   66   15.1  1.5 -1.5  -0.002633048  -0.000095040   0.005653310   0.000000184   0.000000009  -0.000000000  -0.000001232   0.002762842
                         0.000000730   0.000000128   0.000001868  -0.000000012  -0.000000000  -0.000000000  -0.000001115   0.000001259

   67   16.1  1.5 -1.5   0.000294754  -0.008181799  -0.000000348  -0.003895421  -0.000000000  -0.000000063   0.000065898  -0.000000054
                        -0.000425178   0.011792691   0.000000056   0.000898954   0.000000000   0.000000004  -0.000107334  -0.000000447

   68   17.1  1.5 -1.5   0.000416761  -0.011559050  -0.000000046  -0.001136337   0.000000000   0.000000006   0.000481800   0.000000542
                         0.000288924  -0.008018766  -0.000000284  -0.004933326   0.000000001   0.000000095   0.000291040  -0.000000023

   69    1.1  0.5  0.5   0.000000032  -0.000000889   0.000000000   0.000000047   0.000000001   0.000000216  -0.125409076   0.000242635
                        -0.000000047   0.000001282  -0.000000000  -0.000000011   0.000000001  -0.000000014   0.207624966   0.001206043

   70    2.1  0.5  0.5   0.000000020  -0.000000575  -0.000000001  -0.000000284  -0.000000001  -0.000000030  -0.158831416  -0.000059280
                         0.000000017  -0.000000399   0.000000000  -0.000001235  -0.000000004  -0.000000457  -0.095940890  -0.002845931

   71    3.1  0.5  0.5  -0.000000000  -0.000000001  -0.000000006  -0.000000001  -0.000000002  -0.000000001  -0.000377357  -0.000730864
                        -0.000000521  -0.000000022  -0.000000009  -0.000000005   0.000000266  -0.000000003  -0.000853017   0.720173550

   72    4.1  0.5  0.5   0.000000086   0.000000003   0.000001922  -0.000000000   0.000000824  -0.000000004  -0.000131571   0.241007862
                        -0.000000001  -0.000000000   0.000000000  -0.000000001   0.000000001  -0.000000000  -0.000057159   0.002141530

   73    5.1  0.5  0.5   0.000000049  -0.000001362  -0.000000001  -0.000000096  -0.000000000  -0.000000016  -0.250361591   0.000257570
                         0.000000034  -0.000000945   0.000000000  -0.000000417  -0.000000001  -0.000000239  -0.151367822  -0.000130956

   74    6.1  0.5  0.5  -0.000000005   0.000000150   0.000000001   0.000000230   0.000000001   0.000000152   0.106100470  -0.000648892
                         0.000000008  -0.000000217   0.000000000  -0.000000053   0.000000000  -0.000000010  -0.175779786   0.000230411

   75    7.1  0.5  0.5   0.000000452   0.000000014   0.000000589  -0.000000001   0.000000125  -0.000000001  -0.000454231  -0.443148667
                        -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000124169   0.000121056

   76    8.1  0.5  0.5  -0.001913594   0.053088583   0.000000901  -0.012919865   0.000000000   0.000000000  -0.000000096  -0.000000000
                        -0.001811260   0.036811984   0.000004943  -0.056050819  -0.000000002   0.000000000  -0.000000058  -0.000000001

   77    9.1  0.5  0.5  -0.000349645   0.009965095  -0.000007660   0.082589052  -0.000000000  -0.000000032   0.000000053  -0.000000000
                         0.000315126  -0.014362885  -0.000009716  -0.019029778  -0.000000001   0.000000002  -0.000000088  -0.000000000

   78   10.1  0.5  0.5  -0.000005971   0.000320450  -0.000008296   0.000121580   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.086364083   0.003286001   0.004395318  -0.000356621   0.000000327  -0.000000002  -0.000000001   0.000000201

   79   11.1  0.5  0.5  -0.000043609  -0.000018853   0.000007072   0.000003888   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.004390533  -0.000170926   0.086433573   0.000019986   0.000000438  -0.000000002   0.000000000   0.000000091

   80   12.1  0.5  0.5   0.082095125   0.002957693  -0.027234007  -0.000010673  -0.000000017   0.000000000  -0.000000000   0.000000189
                        -0.000010219   0.000002761   0.000043779   0.000002796   0.000000000   0.000000000  -0.000000000   0.000000000

   81    1.1  0.5 -0.5  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000831715   0.000127116
                        -0.000001560  -0.000000057  -0.000000048   0.000000000   0.000000217  -0.000000001   0.000906455  -0.242560397

   82    2.1  0.5 -0.5  -0.000000700  -0.000000026   0.000001267  -0.000000000  -0.000000458   0.000000004   0.001523412  -0.185558790
                        -0.000000000   0.000000002  -0.000000000  -0.000000001   0.000000000   0.000000001  -0.002404590  -0.000093851

   83    3.1  0.5 -0.5  -0.000000014   0.000000297   0.000000005  -0.000000010  -0.000000003  -0.000000265  -0.372043162  -0.000764316
                         0.000000018  -0.000000427   0.000000000  -0.000000004  -0.000000000   0.000000020   0.616631464   0.000534656

   84    4.1  0.5 -0.5   0.000000002  -0.000000070   0.000000001   0.000000432  -0.000000000  -0.000000054  -0.207338858  -0.000142163
                         0.000000002  -0.000000050   0.000000000   0.000001873  -0.000000004  -0.000000822  -0.122881948  -0.000019173

   85    5.1  0.5 -0.5  -0.000001657  -0.000000059   0.000000428   0.000000000  -0.000000240   0.000000001  -0.000152637  -0.292563059
                        -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000245344  -0.000029132

   86    6.1  0.5 -0.5  -0.000000001  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000436027  -0.000170570
                         0.000000264   0.000000009  -0.000000236   0.000000001   0.000000153  -0.000000001   0.000532945   0.205318810

   87    7.1  0.5 -0.5   0.000000011  -0.000000371   0.000000001   0.000000132  -0.000000001  -0.000000008   0.379140137  -0.000324432
                         0.000000008  -0.000000258   0.000000000   0.000000574  -0.000000001  -0.000000125   0.229419948  -0.000341303

   88    8.1  0.5 -0.5   0.064602782   0.002604750   0.057520580   0.000005019   0.000000000   0.000000002   0.000000001  -0.000000113
                         0.000020285  -0.000397215   0.000007804  -0.000000232   0.000000000  -0.000000000  -0.000000001  -0.000000000

   89    9.1  0.5 -0.5  -0.000000745   0.000107618   0.000004463  -0.000011188   0.000000000   0.000000001   0.000000000  -0.000000000
                         0.017481293   0.000458230  -0.084753076  -0.000005284  -0.000000032   0.000000000  -0.000000000   0.000000102

   90   10.1  0.5 -0.5   0.002136557  -0.049229392   0.000320227   0.004281281  -0.000000002  -0.000000326  -0.000000104  -0.000000001
                        -0.002517065   0.070959296  -0.000198532  -0.000994748   0.000000000   0.000000021   0.000000172   0.000000000

   91   11.1  0.5 -0.5  -0.000112931   0.002538777  -0.000020349   0.084229249  -0.000000002  -0.000000437  -0.000000047  -0.000000000
                         0.000129684  -0.003582359   0.000000698  -0.019395777   0.000000000   0.000000028   0.000000078  -0.000000000

   92   12.1  0.5 -0.5   0.002431586  -0.067442733  -0.000000329  -0.006070847   0.000000000   0.000000001  -0.000000161  -0.000000000
                         0.001683849  -0.046809053   0.000011028  -0.026548783   0.000000000   0.000000017  -0.000000098  -0.000000000


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5   0.000476024  -0.018253198   0.000000477  -0.018892859  -0.000000000   0.015798748   0.022058735  -0.000046621
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.003350282  -0.000093604   0.027417031   0.000009776   0.005120506  -0.000000580   0.000002807   0.000032870
                         0.004165941   0.000120794  -0.028569235  -0.000009769  -0.002087476   0.000005704  -0.000000519  -0.000746437

    3    3.1  1.5  1.5  -0.037928980  -0.001014460  -0.003023836   0.000010917  -0.000048291  -0.000006678   0.000071912   0.034345307
                        -0.030469609  -0.000801028  -0.002903775   0.000003678  -0.000115729  -0.000003743   0.000004264   0.001351358

    4    4.1  1.5  1.5  -0.000054871   0.001619897   0.000006366  -0.022222985  -0.000002874   0.023517675  -0.016481988   0.000033846
                        -0.000005829   0.000005013   0.000002764  -0.000001789  -0.000002317   0.000001485   0.000000151  -0.000002391

    5    5.1  1.5  1.5   0.003885278   0.000107020   0.001719446  -0.000006212   0.015014515  -0.000002746  -0.000010790  -0.005656971
                         0.003120490   0.000083784   0.001637587  -0.000001336   0.036985543  -0.000001756  -0.000003436  -0.000222461

    6    6.1  1.5  1.5  -0.000003622   0.000002635   0.000001316  -0.000001792  -0.000000848  -0.000001651   0.000000258  -0.000000188
                         0.000252326  -0.009534303   0.000002673  -0.007872241   0.000002790   0.003425902   0.025166175  -0.000052980

    7    7.1  1.5  1.5   0.000000459  -0.000001579  -0.000001295  -0.000001699   0.000001769  -0.000007022   0.000000419   0.000003670
                        -0.000498829   0.018661216   0.000017198  -0.017051952   0.000002466   0.014405857  -0.011314890   0.000022748

    8    8.1  1.5  1.5   0.000001666   0.000000044   0.000000172  -0.000000001   0.000000139   0.000000000   0.000047762   0.022857849
                         0.000001338   0.000000035   0.000000166  -0.000000000   0.000000342   0.000000000   0.000003091   0.000899308

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000295   0.000001898
                        -0.000000007   0.000000266   0.000000000  -0.000000513  -0.000000000   0.000000401  -0.001960616   0.000003712

   10   10.1  1.5  1.5  -0.000000007   0.000000280   0.000000000   0.000000483   0.000000000  -0.000000501  -0.001580581   0.000003392
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000562  -0.000000485

   11   11.1  1.5  1.5   0.002196186   0.000059175   0.000370324  -0.000001347   0.002107585  -0.000000094  -0.000001381  -0.000680684
                         0.001763565   0.000046607   0.000358587  -0.000000347   0.005192818  -0.000000084  -0.000000199  -0.000026758

   12   12.1  1.5  1.5   0.000032814  -0.001316954   0.000000811  -0.004260138  -0.000000348   0.004160515  -0.000050259   0.000000071
                        -0.000000688  -0.000000088   0.000000335  -0.000000182  -0.000000281   0.000000033   0.000000340  -0.000000087

   13   13.1  1.5  1.5  -0.000000178  -0.000000033  -0.000000083  -0.000000356   0.000000176  -0.000001015   0.000000018   0.000000140
                        -0.000048839   0.001820834   0.000002433  -0.002756777   0.000000508   0.002116478   0.000051568  -0.000000150

   14   14.1  1.5  1.5  -0.000491139  -0.000013723   0.004026481   0.000001435   0.000753176  -0.000000085   0.000000122   0.000001141
                         0.000612529   0.000017759  -0.004195304  -0.000001435  -0.000303231   0.000000838  -0.000000023  -0.000032642

   15   15.1  1.5  1.5  -0.005151165  -0.000137639  -0.000349660   0.000001261   0.000646638  -0.000001056   0.000002861   0.001359853
                        -0.004138217  -0.000108715  -0.000335680   0.000000458   0.001593513  -0.000000602   0.000000133   0.000053509

   16   16.1  1.5  1.5   0.000000519  -0.000000996  -0.000000258  -0.000001094   0.000000228   0.000000907   0.000000076   0.000000079
                        -0.000065983   0.002480844   0.000000783  -0.000090500  -0.000000204   0.000499651  -0.001204071   0.000002514

   17   17.1  1.5  1.5  -0.000062248   0.002346771   0.000000470   0.000447704  -0.000000238   0.000034669  -0.001201677   0.000002515
                        -0.000000488   0.000000602   0.000000229  -0.000000149  -0.000000192   0.000000157  -0.000000089  -0.000000059

   18    1.1  1.5  0.5   0.002558949   0.000055172   0.028502231   0.000005054   0.003421074  -0.000006828   0.000032669   0.015477207
                         0.002061443   0.000050028   0.027350284   0.000005319   0.008403517  -0.000002795   0.000000593   0.000609466

   19    2.1  1.5  0.5  -0.000006083   0.000006851   0.000003184  -0.000002988  -0.000002867   0.000005413  -0.000000915  -0.000002036
                         0.001042703  -0.039355161  -0.000010641  -0.005858965   0.000002194  -0.000149064   0.014988718  -0.000031179

   20    3.1  1.5  0.5   0.000052555  -0.002196866   0.000007237  -0.016774308   0.000001094   0.013966972   0.002211800  -0.000003823
                        -0.000000148   0.000004320   0.000000471   0.000001346  -0.000000677   0.000002856  -0.000001396   0.000002368

   21    4.1  1.5  0.5  -0.003804264  -0.000100135  -0.003070615   0.000006047  -0.011459772   0.000003843   0.000050433   0.024142821
                        -0.003057969  -0.000082201  -0.002937232   0.000003216  -0.028222167   0.000003318   0.000003798   0.000949388

   22    5.1  1.5  0.5   0.000699379  -0.026160289  -0.000005302   0.002233644   0.000005138  -0.009656625   0.010765376  -0.000022805
                         0.000009193  -0.000009850  -0.000004078   0.000002812   0.000003256  -0.000000648   0.000000304  -0.000001009

   23    6.1  1.5  0.5  -0.008917497  -0.000236015   0.010935135   0.000007754   0.038938040  -0.000000124   0.000003265   0.000486518
                         0.011095998   0.000291963  -0.011402291  -0.000003792  -0.015804685   0.000004754  -0.000025553  -0.012381940

   24    7.1  1.5  0.5   0.004570062   0.000124975  -0.019395689  -0.000009074   0.003880911  -0.000000941   0.000003471   0.001029656
                        -0.005689847  -0.000157660   0.020207016   0.000009819  -0.001572411  -0.000002967  -0.000054595  -0.026167918

   25    8.1  1.5  0.5  -0.000000000   0.000000033  -0.000000000   0.000001069  -0.000000000  -0.000000389  -0.000658471   0.000000554
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000130  -0.000002446

   26    9.1  1.5  0.5   0.000000006   0.000000000  -0.000000526  -0.000000000   0.000000129   0.000000000  -0.000003889  -0.000781844
                        -0.000000007  -0.000000000   0.000000548   0.000000000  -0.000000052  -0.000000000   0.000041594   0.020125276

   27   10.1  1.5  0.5   0.000000206   0.000000006  -0.000000444  -0.000000000   0.000000083   0.000000000   0.000041137   0.019467310
                         0.000000165   0.000000004  -0.000000426  -0.000000000   0.000000205  -0.000000000   0.000001423   0.000755755

   28   11.1  1.5  0.5   0.000095808  -0.003573622  -0.000001059   0.001043399   0.000000673  -0.001962348   0.000420492  -0.000000902
                         0.000001203   0.000001924  -0.000000591   0.000000856   0.000000486  -0.000000202  -0.000000365  -0.000000072

   29   12.1  1.5  0.5  -0.000249396  -0.000007575   0.001991571   0.000001152  -0.001104109  -0.000000100   0.000002624   0.001252070
                        -0.000199262  -0.000005803   0.001910683   0.000000830  -0.002724734   0.000000171   0.000000152   0.000049270

   30   13.1  1.5  0.5   0.000012125   0.000000849  -0.001824992  -0.000000680   0.003075116  -0.000000132   0.000000200   0.000049733
                        -0.000015531  -0.000001452   0.001900689   0.000001039  -0.001247819  -0.000000076  -0.000002632  -0.001264143

   31   14.1  1.5  0.5  -0.000000832  -0.000001277   0.000000467  -0.000000001  -0.000000421  -0.000000260   0.000000234  -0.000000089
                         0.000153127  -0.005779513  -0.000001563  -0.000860362   0.000000323  -0.000021924   0.000654677  -0.000001362

   32   15.1  1.5  0.5   0.000037811  -0.001446722   0.000000784  -0.002255612   0.000000377   0.001538875   0.000231656  -0.000000455
                         0.000000366   0.000000670  -0.000000111   0.000000384   0.000000047   0.000000374  -0.000000110   0.000000086

   33   16.1  1.5  0.5   0.001471428   0.000039208  -0.002712470  -0.000001615  -0.004854834  -0.000000046  -0.000000059   0.000001534
                        -0.001831154  -0.000048706   0.002828887   0.000001145   0.001970149  -0.000000819  -0.000000072  -0.000029525

   34   17.1  1.5  0.5  -0.000625405  -0.000014985  -0.003709780  -0.000000111  -0.001365166   0.000001146   0.000000066   0.000037296
                        -0.000503492  -0.000012881  -0.003558668  -0.000000378  -0.003358309   0.000000614   0.000000072   0.000001437

   35    1.1  1.5 -0.5   0.000074344  -0.003285993   0.000007329  -0.039502090  -0.000005156  -0.009073185   0.015489202  -0.000032667
                        -0.000004435   0.000003886  -0.000000337  -0.000009199  -0.000005277  -0.000012281  -0.000000603  -0.000000691

   36    2.1  1.5 -0.5  -0.024647540  -0.000648429  -0.004059744   0.000005073  -0.000136103  -0.000000956  -0.000003260  -0.000588276
                         0.030681061   0.000816582   0.004224447  -0.000009881   0.000061035   0.000003482   0.000031075   0.014977169

   37    3.1  1.5 -0.5  -0.001709719  -0.000040874  -0.012099651  -0.000005546   0.005251420   0.000000216  -0.000003727  -0.002210036
                        -0.001379529  -0.000033037  -0.011617911  -0.000004672   0.012942136  -0.000001268  -0.000002516  -0.000088338

   38    4.1  1.5 -0.5  -0.000129546   0.004880943   0.000006590   0.004249229   0.000004519   0.030460087   0.024161480  -0.000050543
                         0.000001348  -0.000000572   0.000001868   0.000007686   0.000002315   0.000013924   0.000000373   0.000001812

   39    5.1  1.5 -0.5  -0.020397731  -0.000550914   0.001613245   0.000006649  -0.003629550  -0.000004948  -0.000022827  -0.010757067
                        -0.016379664  -0.000430939   0.001544867   0.000000731  -0.008948562  -0.000003538   0.000000111  -0.000422871

   40    6.1  1.5 -0.5  -0.000001079   0.000000297   0.000002967   0.000008240   0.000004359   0.000013346  -0.000000578  -0.000002258
                        -0.000375426   0.014235271   0.000008106  -0.015798397  -0.000001902  -0.042023313   0.012391494  -0.000025662

   41    7.1  1.5 -0.5  -0.000001345   0.000001941   0.000000254  -0.000002655  -0.000003103  -0.000001287   0.000000228  -0.000001323
                         0.000201180  -0.007297932  -0.000013367   0.028009217   0.000000243  -0.004187355   0.026188168  -0.000054689

   42    8.1  1.5 -0.5   0.000000026  -0.000000000   0.000000771   0.000000001  -0.000000147  -0.000000000   0.000000458   0.000657967
                         0.000000021   0.000000000   0.000000740   0.000000000  -0.000000361   0.000000000   0.000002466   0.000025754

   43    9.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000009863   0.000002251
                         0.000000000  -0.000000009  -0.000000000   0.000000760   0.000000000  -0.000000139  -0.020140455   0.000041715

   44   10.1  1.5 -0.5   0.000000007  -0.000000264  -0.000000000   0.000000615   0.000000000  -0.000000221   0.019481972  -0.000041161
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000010067  -0.000000195

   45   11.1  1.5 -0.5  -0.002784381  -0.000075435   0.000753276   0.000001174  -0.000737635  -0.000000703  -0.000000904  -0.000420153
                        -0.002240090  -0.000059078   0.000721982   0.000000307  -0.001818434  -0.000000441   0.000000036  -0.000016894

   46   12.1  1.5 -0.5  -0.000009540   0.000319222   0.000001407  -0.002759903   0.000000121   0.002939937   0.001253040  -0.000002628
                        -0.000000222   0.000000905   0.000000199  -0.000000929  -0.000000157  -0.000000773  -0.000000014   0.000000048

   47   13.1  1.5 -0.5  -0.000000248   0.000000277   0.000000229   0.000000196  -0.000000120   0.000000730   0.000000002  -0.000000096
                         0.000001663  -0.000019702  -0.000001220   0.002634998  -0.000000093  -0.003318643   0.001265121  -0.000002638

   48   14.1  1.5 -0.5  -0.003621401  -0.000095273  -0.000595839   0.000000746  -0.000020415  -0.000000141  -0.000000143  -0.000025969
                         0.004504245   0.000119882   0.000620644  -0.000001451   0.000007998   0.000000511   0.000001357   0.000654161

   49   15.1  1.5 -0.5  -0.001127279  -0.000029703  -0.001626878  -0.000000489   0.000578655  -0.000000185  -0.000000451  -0.000231472
                        -0.000906779  -0.000023400  -0.001562387  -0.000000623   0.001425936  -0.000000332  -0.000000104  -0.000009216

   50   16.1  1.5 -0.5   0.000000052   0.000000116  -0.000000372  -0.000002417  -0.000000777  -0.000001298   0.000000372   0.000000061
                         0.000062526  -0.002349090  -0.000001945   0.003919195   0.000000266   0.005239360   0.000029562  -0.000000070

   51   17.1  1.5 -0.5  -0.000019750   0.000802892  -0.000000342   0.005140679   0.000001000   0.003625177   0.000037324  -0.000000068
                         0.000000654  -0.000000699   0.000000196   0.000002047   0.000000832   0.000003052   0.000000030   0.000000070

   52    1.1  1.5 -1.5   0.014228100   0.000371053   0.013628856   0.000000344  -0.005937153  -0.000000000   0.000046585   0.022041686
                         0.011434178   0.000298191   0.013084129   0.000000330  -0.014640719  -0.000000000   0.000001833   0.000867105

   53    2.1  1.5 -1.5  -0.000002705  -0.000001865  -0.000000286  -0.000007453  -0.000005068  -0.000010186  -0.000003503   0.000002784
                         0.000152792  -0.005345976  -0.000013818   0.039596650   0.000002681   0.005529650  -0.000747152   0.000000629

   54    3.1  1.5 -1.5   0.001292537  -0.048651871  -0.000010423  -0.004192314   0.000005978  -0.000125394  -0.034371882   0.000072024
                         0.000011089  -0.000008879  -0.000004907   0.000000575   0.000004782  -0.000001260   0.000000237  -0.000001433

   55    4.1  1.5 -1.5  -0.001265826  -0.000046422   0.016032368   0.000006506  -0.008839294  -0.000003227  -0.000033726  -0.016469243
                        -0.001010829  -0.000029829   0.015389096   0.000002415  -0.021793300  -0.000001792  -0.000003719  -0.000648039

   56    5.1  1.5 -1.5  -0.000135904   0.004983256   0.000005406   0.002374468   0.000002659   0.039916987   0.005661343  -0.000010917
                        -0.000001731   0.000001441   0.000003339   0.000009475   0.000001885   0.000014841   0.000000080   0.000003009

   57    6.1  1.5 -1.5   0.005970429   0.000155239   0.005453163   0.000002800  -0.003174167   0.000002267   0.000002270   0.000989513
                        -0.007433499  -0.000198953  -0.005677605  -0.000001016   0.001288981  -0.000001835  -0.000052932  -0.025146714

   58    7.1  1.5 -1.5  -0.011688538  -0.000312119   0.011810446   0.000010976  -0.013347287   0.000002950  -0.000004561  -0.000444357
                         0.014547133   0.000389118  -0.012299693  -0.000013303   0.005420214   0.000000712   0.000022587   0.011306161

   59    8.1  1.5 -1.5  -0.000000057   0.000002136   0.000000001   0.000000239  -0.000000000   0.000000370  -0.022875533   0.000047847
                        -0.000000001   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000096  -0.000001211

   60    9.1  1.5 -1.5  -0.000000167  -0.000000004   0.000000355  -0.000000000  -0.000000372   0.000000000  -0.000002042  -0.000077364
                         0.000000207   0.000000006  -0.000000370  -0.000000001   0.000000151   0.000000000   0.000003635   0.001959089

   61   10.1  1.5 -1.5  -0.000000218  -0.000000005  -0.000000348   0.000000000   0.000000188   0.000000000  -0.000003370  -0.001579338
                        -0.000000176  -0.000000005  -0.000000334  -0.000000000   0.000000464   0.000000000  -0.000000618  -0.000062693

   62   11.1  1.5 -1.5  -0.000075322   0.002816628   0.000001212   0.000515480   0.000000113   0.005604219   0.000681209  -0.000001388
                        -0.000000739   0.000001063   0.000000683  -0.000002211   0.000000056   0.000001646   0.000000020   0.000000144

   63   12.1  1.5 -1.5   0.001026601   0.000025147   0.003073287   0.000000817  -0.001563548  -0.000000391  -0.000000067  -0.000050207
                         0.000824898   0.000021092   0.002950201   0.000000320  -0.003855542  -0.000000217  -0.000000090  -0.000002315

   64   13.1  1.5 -1.5  -0.001140582  -0.000030733   0.001909445   0.000001625  -0.001960961   0.000000537  -0.000000134   0.000002046
                         0.001419334   0.000037958  -0.001988427  -0.000001813   0.000796311  -0.000000027  -0.000000156  -0.000051527

   65   14.1  1.5 -1.5  -0.000000428   0.000000865  -0.000000041  -0.000000824  -0.000000744   0.000002039   0.000000143   0.000000121
                         0.000022439  -0.000785117  -0.000002029   0.005814905   0.000000394   0.000811922  -0.000032662   0.000000028

   66   15.1  1.5 -1.5   0.000175389  -0.006607521  -0.000001227  -0.000484710   0.000000954   0.001719716  -0.001360906   0.000002864
                         0.000001478  -0.000001116  -0.000000543  -0.000000003   0.000000753   0.000000400   0.000000014  -0.000000021

   67   16.1  1.5 -1.5  -0.001553276  -0.000040928   0.000063464   0.000000356  -0.000463368  -0.000000103  -0.000000178  -0.000047254
                         0.001934405   0.000051758  -0.000064527  -0.000000743   0.000186928   0.000000288   0.000002509   0.001203143

   68   17.1  1.5 -1.5  -0.001829650  -0.000048827  -0.000322859   0.000000498  -0.000013174  -0.000000268  -0.000002511  -0.001200752
                        -0.001469596  -0.000038613  -0.000310162   0.000000160  -0.000032069  -0.000000149  -0.000000158  -0.000047148

   69    1.1  0.5  0.5   0.307371578   0.008368402  -0.356589536  -0.000072752   0.049758726  -0.000011424  -0.000290722  -0.011729270
                        -0.382705738  -0.010617675   0.371601387   0.000327008  -0.020105543  -0.000385203   0.001484391   0.298070667

   70    2.1  0.5  0.5   0.428164766   0.011507068   0.116337863   0.000309658  -0.170520406  -0.000215908  -0.000908493  -0.343958935
                         0.343919883   0.009570008   0.111793200  -0.000252183  -0.420362959   0.000703142  -0.002305329  -0.013492756

   71    3.1  0.5  0.5   0.001079418  -0.000178230   0.001031597   0.001504319  -0.000918618  -0.001443078   0.000226192  -0.001381320
                         0.005863368  -0.140438345  -0.000038525   0.059595006  -0.001500205  -0.161593664   0.570556725  -0.001763032

   72    4.1  0.5  0.5  -0.003713456   0.141416739   0.000353619  -0.518152721  -0.000062300   0.470640112  -0.114869172   0.000038437
                         0.000141248  -0.000350278   0.000091354   0.000186411  -0.000266076  -0.000369210   0.001668857  -0.000068736

   73    5.1  0.5  0.5   0.057279169   0.001987793   0.402459161   0.000277281   0.153032810  -0.000216558  -0.000809423  -0.114403030
                         0.046152528   0.001149082   0.386349729   0.000141601   0.377382309   0.000015692   0.000009317  -0.004592733

   74    6.1  0.5  0.5   0.202326768   0.004614692   0.188966175  -0.000274747   0.545904139   0.000160679   0.000686420  -0.009701572
                        -0.251870950  -0.006724275  -0.196777116   0.000129032  -0.221465952   0.000010843   0.000635978   0.246894131

   75    7.1  0.5  0.5   0.014534071  -0.548957628  -0.000093566  -0.212521324  -0.000611727   0.158018514   0.596252790  -0.001484300
                         0.000382336  -0.000047945   0.000780738   0.000005099   0.000485286  -0.000087178   0.000110904  -0.000178972

   76    8.1  0.5  0.5   0.000000079   0.000000002  -0.000000223  -0.000000000   0.000000136   0.000000000   0.000177833   0.086042904
                         0.000000063   0.000000003  -0.000000214   0.000000002   0.000000334   0.000000000  -0.000249143   0.003385495

   77    9.1  0.5  0.5  -0.000000041  -0.000000001   0.000000160  -0.000000000  -0.000000373  -0.000000000   0.000011570   0.003273762
                         0.000000050   0.000000002  -0.000000166   0.000000001   0.000000151  -0.000000000  -0.000285062  -0.083230904

   78   10.1  0.5  0.5   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000003531   0.000482460
                         0.000000006  -0.000000194  -0.000000002  -0.000000322   0.000000002  -0.000000007   0.046464918  -0.000272083

   79   11.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000017200  -0.000030229
                        -0.000000005   0.000000187   0.000000000  -0.000000657  -0.000000000   0.000000344  -0.015456690   0.000034036

   80   12.1  0.5  0.5   0.000000010  -0.000000390  -0.000000000  -0.000000183   0.000000000  -0.000000062   0.035795981  -0.000075983
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000014708   0.000010431

   81    1.1  0.5 -0.5   0.000128083  -0.000143094  -0.000173986   0.000115030   0.000361261   0.000067446   0.000003371  -0.000232148
                        -0.013518460   0.490857359   0.000286280  -0.515018132  -0.000134172   0.053667113   0.298301356  -0.001494671

   82    2.1  0.5 -0.5  -0.014964439   0.549186611  -0.000048732   0.161345007  -0.000570465  -0.453632259   0.344223476  -0.000998411
                         0.000251417   0.000130696  -0.000396370  -0.000075888   0.000464322  -0.000049510   0.000038323   0.002267835

   83    3.1  0.5 -0.5   0.088112386   0.004514325  -0.042357319   0.000717489   0.150291353  -0.001735458   0.001449555   0.022653980
                        -0.109357980  -0.003894239   0.041948600   0.000742217  -0.059389428  -0.000287509  -0.001707371  -0.570106854

   84    4.1  0.5 -0.5  -0.110012849  -0.002806103   0.373653845   0.000318359  -0.176523912  -0.000269985  -0.000035705  -0.114714789
                        -0.088859381  -0.002436286   0.358977831   0.000178996  -0.436281514   0.000042258  -0.000070194  -0.006182950

   85    5.1  0.5 -0.5  -0.002269263   0.073559164  -0.000298089   0.557888420   0.000066841   0.407230213   0.114495144  -0.000808431
                        -0.000349502  -0.000094372  -0.000089881   0.000017095   0.000206582  -0.000004185  -0.000092125  -0.000041127

   86    6.1  0.5 -0.5   0.000615140  -0.000066385   0.000108836   0.000038931  -0.000070431  -0.000082564  -0.000011065   0.000710889
                        -0.008132211   0.323071345   0.000283355   0.272817609  -0.000144827   0.589116701   0.247084667  -0.000608504

   87    7.1  0.5 -0.5   0.427934440   0.011568598   0.153304254   0.000473198  -0.059302402   0.000219829   0.001490188   0.595796310
                         0.343840945   0.008806415   0.147183965  -0.000628004  -0.146468708  -0.000749258  -0.000120487   0.023327229

   88    8.1  0.5 -0.5  -0.000000004   0.000000101  -0.000000001  -0.000000309  -0.000000000   0.000000360  -0.086109482   0.000167902
                         0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000625   0.000255941

   89    9.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000485   0.000000355
                         0.000000002  -0.000000065   0.000000001   0.000000230   0.000000000  -0.000000403  -0.083295264   0.000285296

   90   10.1  0.5 -0.5   0.000000121   0.000000004   0.000000223  -0.000000002   0.000000007   0.000000002  -0.000471391   0.001830014
                        -0.000000151  -0.000000004  -0.000000232   0.000000001  -0.000000002  -0.000000001  -0.000290838  -0.046428867

   91   11.1  0.5 -0.5  -0.000000117  -0.000000003   0.000000455   0.000000000  -0.000000319  -0.000000000   0.000028868  -0.000624772
                         0.000000146   0.000000004  -0.000000475  -0.000000000   0.000000129   0.000000000   0.000035198   0.015444067

   92   12.1  0.5 -0.5   0.000000304   0.000000008   0.000000132  -0.000000000   0.000000023  -0.000000000   0.000075515   0.035767736
                         0.000000245   0.000000006   0.000000127  -0.000000000   0.000000058   0.000000000   0.000013409   0.001421798


   Nr   State  S   Sz       89            90            91            92

    1    1.1  1.5  1.5  -0.001878877   0.000000000   0.000000000   0.020572501
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000027169   0.009596954   0.021273430  -0.000000453
                         0.000006081   0.002494211   0.021558214  -0.000000580

    3    3.1  1.5  1.5   0.000002780   0.000986464   0.003062293   0.000000980
                        -0.000011980  -0.003795943  -0.003026420  -0.000002603

    4    4.1  1.5  1.5  -0.005742601   0.000010950   0.000003443   0.026698330
                         0.000000288   0.000000246   0.000001510  -0.000000117

    5    5.1  1.5  1.5   0.000005747   0.002378922   0.021339599  -0.000000725
                        -0.000025734  -0.009152248  -0.021057045   0.000000830

    6    6.1  1.5  1.5  -0.000001863   0.000000843   0.000001337  -0.000000447
                         0.010449898  -0.000027734  -0.000002436   0.008320447

    7    7.1  1.5  1.5  -0.000005349   0.000001832   0.000000949  -0.000000962
                         0.022262323  -0.000055264  -0.000000523   0.022256527

    8    8.1  1.5  1.5   0.000001276   0.000421218   0.000011885   0.000000704
                        -0.000005400  -0.001618348  -0.000011865  -0.000001770

    9    9.1  1.5  1.5   0.000005823   0.000001993   0.000002073  -0.000008978
                         0.026824481  -0.000063515  -0.000003089  -0.000294433

   10   10.1  1.5  1.5   0.021779324  -0.000049358  -0.000003461  -0.015705924
                        -0.000009950  -0.000001499  -0.000002031   0.000000944

   11   11.1  1.5  1.5   0.000000203   0.000086221   0.000850062  -0.000000043
                        -0.000000919  -0.000332743  -0.000839869   0.000000068

   12   12.1  1.5  1.5  -0.000253370   0.000000395   0.000000124   0.001469897
                        -0.000000001   0.000000009   0.000000054  -0.000000039

   13   13.1  1.5  1.5  -0.000000246   0.000000088   0.000000063  -0.000000041
                         0.001073836  -0.000002701  -0.000000068   0.001031940

   14   14.1  1.5  1.5   0.000001187   0.000419232   0.000929776  -0.000000020
                         0.000000265   0.000108717   0.000941125  -0.000000025

   15   15.1  1.5  1.5   0.000000190   0.000071890   0.000403942   0.000000031
                        -0.000000833  -0.000276756  -0.000398947  -0.000000098

   16   16.1  1.5  1.5  -0.000000097   0.000000003  -0.000000034   0.000000413
                         0.000028322  -0.000000000   0.000000085   0.000111415

   17   17.1  1.5  1.5  -0.000073945   0.000000270   0.000000085  -0.000083343
                         0.000000007   0.000000006   0.000000037   0.000000003

   18    1.1  1.5  0.5   0.000015414   0.007335477  -0.003862316   0.000001452
                        -0.000067805  -0.028211365   0.003809971  -0.000005448

   19    2.1  1.5  0.5   0.000002863  -0.000001937  -0.000001896  -0.000001424
                        -0.026626358   0.000060889   0.000002725   0.009086970

   20    3.1  1.5  0.5  -0.004748820   0.000015143  -0.000001312  -0.028099590
                         0.000000538   0.000000547  -0.000000316  -0.000001100

   21    4.1  1.5  0.5  -0.000008440  -0.004403153   0.007957593  -0.000000135
                         0.000037364   0.016935150  -0.007852076   0.000001492

   22    5.1  1.5  0.5   0.029490897  -0.000070027  -0.000004565  -0.005148657
                         0.000003709  -0.000002181  -0.000002747   0.000001671

   23    6.1  1.5  0.5   0.000071063   0.030527747  -0.005964275   0.000004092
                         0.000016097   0.007937314  -0.006045386   0.000000810

   24    7.1  1.5  0.5  -0.000028443  -0.011682555   0.006353411  -0.000003987
                        -0.000006528  -0.003038394   0.006438790  -0.000001359

   25    8.1  1.5  0.5   0.008738388  -0.000024521   0.000000645   0.026692576
                         0.000002716  -0.000000843  -0.000000074   0.000000376

   26    9.1  1.5  0.5  -0.000007292  -0.002825805  -0.009359262   0.000001733
                        -0.000001582  -0.000736844  -0.009493446   0.000000865

   27   10.1  1.5  0.5   0.000003789   0.001465344   0.009514136   0.000000354
                        -0.000016649  -0.005630588  -0.009379936  -0.000001333

   28   11.1  1.5  0.5   0.001291751  -0.000003117  -0.000000173   0.000149028
                         0.000000851  -0.000000100  -0.000000111  -0.000000156

   29   12.1  1.5  0.5   0.000000077   0.000022543   0.000191582   0.000000031
                        -0.000000325  -0.000085038  -0.000189269  -0.000000081

   30   13.1  1.5  0.5   0.000000283   0.000142285   0.000131167  -0.000000075
                         0.000000061   0.000036963   0.000132908  -0.000000037

   31   14.1  1.5  0.5   0.000000922  -0.000000087  -0.000000083  -0.000000078
                        -0.001162997   0.000002660   0.000000119   0.000396893

   32   15.1  1.5  0.5   0.000183607  -0.000000275  -0.000000114  -0.001239071
                         0.000000170  -0.000000006  -0.000000049  -0.000000058

   33   16.1  1.5  0.5  -0.000003332  -0.001420705   0.000357366  -0.000000238
                        -0.000000757  -0.000369548   0.000362151  -0.000000058

   34   17.1  1.5  0.5  -0.000000764  -0.000373178   0.000335531  -0.000000056
                         0.000003366   0.001434779  -0.000330986   0.000000233

   35    1.1  1.5 -0.5   0.029149448  -0.000069502  -0.000004860  -0.005425252
                         0.000005150  -0.000002157  -0.000002857   0.000001116

   36    2.1  1.5 -0.5  -0.000059415  -0.025769009   0.006383815  -0.000003264
                        -0.000013458  -0.006702322   0.006466833  -0.000000608

   37    3.1  1.5 -0.5   0.000003284   0.001196376   0.019999676  -0.000000712
                        -0.000014793  -0.004595648  -0.019738286   0.000001147

   38    4.1  1.5 -0.5  -0.017498201   0.000038285   0.000001144   0.011179374
                        -0.000003381   0.000001241   0.000000967  -0.000000640

   39    5.1  1.5 -0.5  -0.000015523  -0.007422856   0.003665835  -0.000001320
                         0.000068319   0.028541448  -0.003615292   0.000005162

   40    6.1  1.5 -0.5   0.000006024  -0.000002317  -0.000002344   0.000001161
                        -0.031542737   0.000072826   0.000003451   0.008492306

   41    7.1  1.5 -0.5  -0.000001443   0.000000845   0.000001883  -0.000000518
                         0.012071202  -0.000029170  -0.000003767  -0.009045654

   42    8.1  1.5 -0.5  -0.000005359  -0.002197887  -0.018998714   0.000000511
                         0.000023943   0.008457466   0.018749466  -0.000000400

   43    9.1  1.5 -0.5   0.000001499   0.000000305  -0.000000626   0.000006672
                         0.002920293  -0.000007455   0.000001833   0.013331214

   44   10.1  1.5 -0.5   0.005818140  -0.000017067  -0.000001188   0.013360462
                        -0.000000217  -0.000000526  -0.000000701  -0.000006489

   45   11.1  1.5 -0.5  -0.000000689  -0.000324468  -0.000106183  -0.000000046
                         0.000003042   0.001250337   0.000104568   0.000000201

   46   12.1  1.5 -0.5   0.000087975  -0.000000334  -0.000000079   0.000269308
                        -0.000000402  -0.000000007  -0.000000036   0.000000146

   47   13.1  1.5 -0.5   0.000000059  -0.000000012   0.000000028   0.000000005
                        -0.000147007   0.000000289  -0.000000079  -0.000186734

   48   14.1  1.5 -0.5  -0.000002596  -0.001125750   0.000278838  -0.000000142
                        -0.000000586  -0.000291976   0.000282442  -0.000000026

   49   15.1  1.5 -0.5  -0.000000064  -0.000046072   0.000881893  -0.000000047
                         0.000000267   0.000177733  -0.000870380   0.000000115

   50   16.1  1.5 -0.5  -0.000000125   0.000000107   0.000000128  -0.000000017
                         0.001467981  -0.000003415  -0.000000209  -0.000508787

   51   17.1  1.5 -0.5  -0.001482516   0.000003450   0.000000203   0.000471310
                        -0.000000156   0.000000108   0.000000127  -0.000000095

   52    1.1  1.5 -1.5   0.000000000  -0.000473142   0.014642892   0.000000000
                        -0.000000000   0.001818328  -0.014450382  -0.000000000

   53    2.1  1.5 -1.5  -0.000002889   0.000000956   0.000000085   0.000000967
                         0.009915776  -0.000027825   0.000000731   0.030287215

   54    3.1  1.5 -1.5  -0.003922027   0.000012294   0.000002526  -0.004305444
                        -0.000001227   0.000000326   0.000001165  -0.000003122

   55    4.1  1.5 -1.5  -0.000002519  -0.001446390   0.019003156  -0.000001390
                         0.000010659   0.005557466  -0.018753157   0.000003493

   56    5.1  1.5 -1.5  -0.009456368   0.000026352  -0.000001099  -0.029979620
                        -0.000002476   0.000000919  -0.000000081   0.000001425

   57    6.1  1.5 -1.5  -0.000027053  -0.010113605  -0.005844704  -0.000002662
                        -0.000006168  -0.002629707  -0.005921932  -0.000000795

   58    7.1  1.5 -1.5  -0.000053944  -0.021546237  -0.015633947  -0.000001043
                        -0.000012144  -0.005600958  -0.015840855   0.000000294

   59    8.1  1.5 -1.5  -0.001672266   0.000005547   0.000001744  -0.000016794
                         0.000000109   0.000000125   0.000000765  -0.000000097

   60    9.1  1.5 -1.5  -0.000061970  -0.025958560   0.000200423  -0.000003646
                        -0.000014065  -0.006760620   0.000215875  -0.000000742

   61   10.1  1.5 -1.5   0.000010978   0.005494134  -0.011179670   0.000001037
                        -0.000048145  -0.021074951   0.011031365  -0.000003877

   62   11.1  1.5 -1.5  -0.000343732   0.000000940  -0.000000079  -0.001194983
                        -0.000000349   0.000000035  -0.000000019  -0.000000700

   63   12.1  1.5 -1.5  -0.000000091  -0.000063803   0.001046256  -0.000000050
                         0.000000384   0.000245205  -0.001032446   0.000000126

   64   13.1  1.5 -1.5  -0.000002636  -0.001039292  -0.000724877  -0.000000093
                        -0.000000595  -0.000270177  -0.000734476  -0.000000004

   65   14.1  1.5 -1.5  -0.000000358   0.000000042   0.000000004  -0.000000728
                         0.000433099  -0.000001215   0.000000032   0.001322951

   66   15.1  1.5 -1.5  -0.000285940   0.000000854   0.000000091  -0.000567739
                        -0.000000120   0.000000026   0.000000048  -0.000000225

   67   16.1  1.5 -1.5  -0.000000001  -0.000027434  -0.000077965   0.000000083
                         0.000000003  -0.000007038  -0.000079592   0.000000037

   68   17.1  1.5 -1.5  -0.000000062  -0.000018628  -0.000059323  -0.000000034
                         0.000000263   0.000071561   0.000058539   0.000000086

   69    1.1  0.5  0.5   0.000518657   0.211945250  -0.372535478   0.000013479
                         0.000553453   0.055120493  -0.377510708  -0.000095547

   70    2.1  0.5  0.5  -0.000026780   0.022759109  -0.384319236  -0.000370674
                        -0.001287076  -0.087756775   0.379241461   0.000306889

   71    3.1  0.5  0.5  -0.000692053  -0.000082012  -0.000912804  -0.001784721
                         0.293229163  -0.001104775   0.002037190  -0.081927055

   72    4.1  0.5  0.5   0.232513931  -0.000634326  -0.000186373   0.592434967
                         0.000928987  -0.000070618   0.000199054  -0.000230459

   73    5.1  0.5  0.5  -0.000177062  -0.159742472  -0.023974211  -0.000196081
                         0.001475278   0.615202798   0.023731074   0.000097533

   74    6.1  0.5  0.5  -0.001587488  -0.569648995  -0.073055443   0.000158334
                        -0.000238632  -0.147863526  -0.074073619  -0.000026441

   75    7.1  0.5  0.5  -0.171196140   0.001009343  -0.000231831   0.182798497
                         0.000020492   0.000764322   0.000124477  -0.000020904

   76    8.1  0.5  0.5  -0.000006848  -0.003138408  -0.040567241   0.000003684
                         0.000553281   0.012084771   0.040034522   0.000009712

   77    9.1  0.5  0.5  -0.000057198  -0.024073108  -0.040122152  -0.000010167
                         0.000201643  -0.006259091  -0.040656110   0.000017692

   78   10.1  0.5  0.5   0.000029721  -0.000081295  -0.000328460   0.000000037
                        -0.092699235   0.000271390   0.000137206  -0.008188751

   79   11.1  0.5  0.5  -0.000041558   0.000000384   0.000013429   0.000014424
                         0.001338057   0.000009202  -0.000016706  -0.102858016

   80   12.1  0.5  0.5   0.093077758  -0.000215594  -0.000009264  -0.029590071
                         0.000027583  -0.000005885  -0.000002912  -0.000045149

   81    1.1  0.5 -0.5  -0.000028237  -0.000405008   0.000076707  -0.000008611
                         0.218995564  -0.000641314   0.000058540  -0.530374411

   82    2.1  0.5 -0.5  -0.090659932   0.001238854  -0.000479398   0.539930885
                        -0.000073387   0.000350030   0.000041932  -0.000017887

   83    3.1  0.5 -0.5  -0.001048519  -0.283953736   0.056276275   0.002080655
                        -0.000357575  -0.073171695   0.059566840   0.000808846

   84    4.1  0.5 -0.5   0.000091394   0.057652988   0.421839386   0.000272473
                        -0.000631667  -0.225254798  -0.415969681   0.000010770

   85    5.1  0.5 -0.5   0.635603676  -0.001472323  -0.000208073   0.033733129
                         0.000326814  -0.000200151   0.000068309   0.000051284

   86    6.1  0.5 -0.5   0.000351512  -0.000168822   0.000131270  -0.000031553
                        -0.588526530   0.001596422  -0.000092396  -0.104038443

   87    7.1  0.5 -0.5   0.000485516  -0.043130723   0.130125191   0.000252445
                         0.001169289   0.165673955  -0.128385067  -0.000074242

   88    8.1  0.5 -0.5   0.012485642  -0.000537175  -0.000004199   0.056995298
                         0.000005938  -0.000132701  -0.000009500   0.000000440

   89    9.1  0.5 -0.5   0.000004746  -0.000209549  -0.000019663   0.000000390
                        -0.024873494   0.000004577  -0.000005451  -0.057120105

   90   10.1  0.5 -0.5   0.000283116   0.089719362   0.005751907   0.000330164
                        -0.000010334   0.023314909   0.005828482  -0.000133055

   91   11.1  0.5 -0.5   0.000008809  -0.001305401   0.072259021  -0.000021293
                         0.000002689  -0.000296733   0.073201131  -0.000002458

   92   12.1  0.5 -0.5   0.000048596   0.023412299  -0.021029616   0.000004549
                        -0.000210128  -0.090085149   0.020816571  -0.000008580


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   4.023%   0.001%   4.205%   4.343%   0.016%   0.000%  14.652%   0.000%  14.499%
    2    2.1  1.5  1.5   0.160%   0.000%   0.354%   0.000%   0.081%  21.546%  13.201%   0.000%   0.372%   0.000%
    3    3.1  1.5  1.5   1.102%   0.000%   9.018%   0.003%   0.003%   0.702%   5.919%   0.000%   7.301%   0.000%
    4    4.1  1.5  1.5   0.001%  22.176%   0.004%  11.308%   0.366%   0.001%   0.000%   0.088%   0.000%   1.698%
    5    5.1  1.5  1.5   1.506%   0.000%   7.041%   0.002%   0.045%  11.993%   9.118%   0.000%   5.771%   0.000%
    6    6.1  1.5  1.5   0.000%  10.856%   0.003%   8.100%  10.865%   0.041%   0.000%  15.933%   0.000%   1.890%
    7    7.1  1.5  1.5   0.001%  25.311%   0.000%   0.020%   3.473%   0.013%   0.000%   0.559%   0.000%   0.315%
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
   18    1.1  1.5  0.5   0.797%   0.000%   0.000%   0.000%   0.003%   0.839%   4.650%   0.000%  23.400%   0.000%
   19    2.1  1.5  0.5   0.000%   6.311%   0.002%   5.775%   8.443%   0.032%   0.000%  15.091%   0.000%   0.061%
   20    3.1  1.5  0.5   0.000%   0.794%   0.004%  10.644%   7.772%   0.029%   0.000%   0.702%   0.000%  27.437%
   21    4.1  1.5  0.5   0.047%   0.000%   2.933%   0.001%   0.085%  22.770%   0.225%   0.000%   9.726%   0.000%
   22    5.1  1.5  0.5   0.001%  18.559%   0.002%   6.632%   2.389%   0.009%   0.000%   1.252%   0.000%   7.108%
   23    6.1  1.5  0.5   0.979%   0.000%   1.306%   0.000%   0.015%   4.038%  17.333%   0.000%   0.067%   0.000%
   24    7.1  1.5  0.5   7.376%   0.000%  32.630%   0.011%   0.000%   0.088%   1.276%   0.000%   0.355%   0.000%
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
   35    1.1  1.5 -0.5   0.000%   0.797%   0.000%   0.000%   0.839%   0.003%   0.000%   4.650%   0.000%  23.400%
   36    2.1  1.5 -0.5   6.311%   0.000%   5.775%   0.002%   0.032%   8.443%  15.091%   0.000%   0.061%   0.000%
   37    3.1  1.5 -0.5   0.794%   0.000%  10.644%   0.004%   0.029%   7.772%   0.702%   0.000%  27.437%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.047%   0.001%   2.933%  22.770%   0.085%   0.000%   0.225%   0.000%   9.726%
   39    5.1  1.5 -0.5  18.559%   0.001%   6.632%   0.002%   0.009%   2.389%   1.252%   0.000%   7.108%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.979%   0.000%   1.306%   4.038%   0.015%   0.000%  17.333%   0.000%   0.067%
   41    7.1  1.5 -0.5   0.000%   7.376%   0.011%  32.630%   0.088%   0.000%   0.000%   1.276%   0.000%   0.355%
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
   52    1.1  1.5 -1.5   4.023%   0.000%   4.205%   0.001%   0.016%   4.343%  14.652%   0.000%  14.499%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.160%   0.000%   0.354%  21.546%   0.081%   0.000%  13.201%   0.000%   0.372%
   54    3.1  1.5 -1.5   0.000%   1.102%   0.003%   9.018%   0.702%   0.003%   0.000%   5.919%   0.000%   7.301%
   55    4.1  1.5 -1.5  22.176%   0.001%  11.308%   0.004%   0.001%   0.366%   0.088%   0.000%   1.698%   0.000%
   56    5.1  1.5 -1.5   0.000%   1.506%   0.002%   7.041%  11.993%   0.045%   0.000%   9.118%   0.000%   5.771%
   57    6.1  1.5 -1.5  10.856%   0.000%   8.100%   0.003%   0.041%  10.865%  15.933%   0.000%   1.890%   0.000%
   58    7.1  1.5 -1.5  25.311%   0.001%   0.020%   0.000%   0.013%   3.473%   0.559%   0.000%   0.315%   0.000%
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

    1    1.1  1.5  1.5   0.003%   0.016%   0.001%  10.982%   0.013%   1.169%   0.117%   6.522%   4.587%   0.041%
    2    2.1  1.5  1.5  13.319%   2.849%   0.036%   0.000%   0.038%   0.000%  11.952%   0.213%   0.038%   4.259%
    3    3.1  1.5  1.5   0.086%   0.018%   3.440%   0.000%  42.930%   0.486%   0.008%   0.000%   0.000%   0.007%
    4    4.1  1.5  1.5   0.000%   0.002%   0.001%  11.208%   0.045%   3.987%   0.233%  13.046%  10.742%   0.097%
    5    5.1  1.5  1.5  13.877%   2.969%   0.007%   0.000%   0.280%   0.003%  11.445%   0.204%   0.040%   4.397%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   1.189%   0.073%   6.401%   0.030%   1.665%   0.077%   0.001%
    7    7.1  1.5  1.5   0.011%   0.050%   0.002%  21.135%   0.008%   0.717%   0.282%  15.784%   0.014%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.074%   0.001%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.145%   0.001%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5  17.819%   3.811%   9.667%   0.001%   0.703%   0.008%   5.878%   0.105%   0.105%  11.628%
   19    2.1  1.5  0.5   0.013%   0.061%   0.001%  14.469%   0.154%  13.611%   0.002%   0.098%  11.629%   0.105%
   20    3.1  1.5  0.5   0.000%   0.001%   0.000%   0.037%   0.011%   0.974%   0.155%   8.670%   5.521%   0.050%
   21    4.1  1.5  0.5  10.914%   2.335%   5.763%   0.000%   1.118%   0.013%   8.007%   0.143%   0.066%   7.304%
   22    5.1  1.5  0.5   0.001%   0.006%   0.000%   1.717%   0.286%  25.245%   0.014%   0.761%  11.536%   0.104%
   23    6.1  1.5  0.5  22.756%   4.868%  17.338%   0.001%   0.703%   0.008%   1.752%   0.031%   0.133%  14.707%
   24    7.1  1.5  0.5   3.001%   0.642%   2.431%   0.000%   0.437%   0.005%  12.095%   0.216%   0.042%   4.699%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   35    1.1  1.5 -0.5   3.811%  17.819%   0.001%   9.667%   0.008%   0.703%   0.105%   5.878%  11.628%   0.105%
   36    2.1  1.5 -0.5   0.061%   0.013%  14.469%   0.001%  13.611%   0.154%   0.098%   0.002%   0.105%  11.629%
   37    3.1  1.5 -0.5   0.001%   0.000%   0.037%   0.000%   0.974%   0.011%   8.670%   0.155%   0.050%   5.521%
   38    4.1  1.5 -0.5   2.335%  10.914%   0.000%   5.763%   0.013%   1.118%   0.143%   8.007%   7.304%   0.066%
   39    5.1  1.5 -0.5   0.006%   0.001%   1.717%   0.000%  25.245%   0.286%   0.761%   0.014%   0.104%  11.536%
   40    6.1  1.5 -0.5   4.868%  22.756%   0.001%  17.338%   0.008%   0.703%   0.031%   1.752%  14.707%   0.133%
   41    7.1  1.5 -0.5   0.642%   3.001%   0.000%   2.431%   0.005%   0.437%   0.216%  12.095%   4.699%   0.042%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   52    1.1  1.5 -1.5   0.016%   0.003%  10.982%   0.001%   1.169%   0.013%   6.522%   0.117%   0.041%   4.587%
   53    2.1  1.5 -1.5   2.849%  13.319%   0.000%   0.036%   0.000%   0.038%   0.213%  11.952%   4.259%   0.038%
   54    3.1  1.5 -1.5   0.018%   0.086%   0.000%   3.440%   0.486%  42.930%   0.000%   0.008%   0.007%   0.000%
   55    4.1  1.5 -1.5   0.002%   0.000%  11.208%   0.001%   3.987%   0.045%  13.046%   0.233%   0.097%  10.742%
   56    5.1  1.5 -1.5   2.969%  13.877%   0.000%   0.007%   0.003%   0.280%   0.204%  11.445%   4.397%   0.040%
   57    6.1  1.5 -1.5   0.000%   0.000%   1.189%   0.000%   6.401%   0.073%   1.665%   0.030%   0.001%   0.077%
   58    7.1  1.5 -1.5   0.050%   0.011%  21.135%   0.002%   0.717%   0.008%  15.784%   0.282%   0.000%   0.014%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.074%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.145%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.063%   0.014%   0.000%   0.000%   0.139%   0.002%   0.108%   0.002%   0.000%   0.029%
   70    2.1  0.5  0.5   0.038%   0.008%   0.041%   0.000%   0.159%   0.002%   0.077%   0.001%   0.000%   0.019%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.160%   0.002%   0.164%   0.000%   0.001%   0.008%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.008%   0.000%   0.001%   0.006%   0.313%   0.007%   0.000%
   73    5.1  0.5  0.5   0.191%   0.041%   0.021%   0.000%   0.055%   0.001%   0.018%   0.000%   0.000%   0.017%
   74    6.1  0.5  0.5   0.179%   0.038%   0.044%   0.000%   0.026%   0.000%   0.039%   0.001%   0.000%   0.010%
   75    7.1  0.5  0.5   0.000%   0.001%   0.000%   0.298%   0.000%   0.022%   0.000%   0.007%   0.005%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.510%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.192%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.382%   0.013%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.337%   0.021%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.195%   0.029%
   81    1.1  0.5 -0.5   0.014%   0.063%   0.000%   0.000%   0.002%   0.139%   0.002%   0.108%   0.029%   0.000%
   82    2.1  0.5 -0.5   0.008%   0.038%   0.000%   0.041%   0.002%   0.159%   0.001%   0.077%   0.019%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.160%   0.000%   0.164%   0.002%   0.001%   0.000%   0.000%   0.008%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.008%   0.000%   0.001%   0.000%   0.313%   0.006%   0.000%   0.007%
   85    5.1  0.5 -0.5   0.041%   0.191%   0.000%   0.021%   0.001%   0.055%   0.000%   0.018%   0.017%   0.000%
   86    6.1  0.5 -0.5   0.038%   0.179%   0.000%   0.044%   0.000%   0.026%   0.001%   0.039%   0.010%   0.000%
   87    7.1  0.5 -0.5   0.001%   0.000%   0.298%   0.000%   0.022%   0.000%   0.007%   0.000%   0.000%   0.005%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.510%   0.005%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.192%   0.002%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   1.382%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.021%   2.337%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   3.195%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.002%   9.468%   0.000%   3.607%  14.924%   0.006%   1.651%   0.001%   0.000%   0.000%
    2    2.1  1.5  1.5  11.767%   0.002%   3.631%   0.000%   0.002%   4.352%   0.005%   7.447%   0.000%   0.000%
    3    3.1  1.5  1.5   8.925%   0.002%  14.625%   0.000%   0.001%   2.259%   0.000%   0.289%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.520%   0.000%   8.365%   1.712%   0.001%  10.026%   0.007%   0.000%   0.000%
    5    5.1  1.5  1.5   9.233%   0.002%   6.105%   0.000%   0.001%   3.582%   0.006%   8.028%   0.000%   0.000%
    6    6.1  1.5  1.5   0.002%  10.834%   0.000%   4.822%  16.624%   0.007%   4.668%   0.003%   0.000%   0.000%
    7    7.1  1.5  1.5   0.002%   9.651%   0.000%  12.026%   0.013%   0.000%   7.010%   0.005%   0.000%   0.000%
    8    8.1  1.5  1.5   0.030%   0.000%   0.080%   0.000%   0.000%   0.035%   0.000%   0.021%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.051%   0.000%   0.027%   0.007%   0.000%   0.012%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.002%   0.000%   0.004%   0.007%   0.000%   0.012%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.006%   0.000%   0.014%
   12   12.1  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   1.958%   0.000%
   13   13.1  1.5  1.5   0.000%   0.003%   0.000%   0.001%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.006%   0.000%   0.073%
   15   15.1  1.5  1.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.010%   0.000%   0.007%   0.000%  48.617%   0.001%
   17   17.1  1.5  1.5   0.000%   0.001%   0.000%   0.001%   0.012%   0.000%   0.006%   0.000%  46.873%   0.001%
   18    1.1  1.5  0.5   9.504%   0.002%   0.454%   0.000%   0.002%   5.985%   0.001%   1.037%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.281%   0.000%   7.684%   7.449%   0.003%   4.349%   0.003%   0.000%   0.000%
   20    3.1  1.5  0.5   0.002%   7.270%   0.000%   2.997%   9.960%   0.004%  11.086%   0.008%   0.000%   0.000%
   21    4.1  1.5  0.5   1.101%   0.000%  11.203%   0.000%   0.004%  10.104%   0.001%   1.752%   0.000%   0.000%
   22    5.1  1.5  0.5   0.002%   7.974%   0.000%   0.004%   5.319%   0.002%   6.668%   0.005%   0.000%   0.000%
   23    6.1  1.5  0.5   1.392%   0.000%   7.431%   0.000%   0.000%   0.038%   0.002%   2.265%   0.000%   0.000%
   24    7.1  1.5  0.5   3.989%   0.001%   8.973%   0.000%   0.000%   0.274%   0.011%  16.297%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.099%   0.000%   0.031%   0.002%   0.000%   0.004%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.111%   0.000%   0.000%   0.042%   0.000%   0.002%   0.000%   0.000%
   27   10.1  1.5  0.5   0.094%   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.009%   0.000%   0.553%   0.000%
   29   12.1  1.5  0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.012%   0.000%   0.002%   0.000%   0.078%
   30   13.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.051%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.006%   0.000%   0.003%   0.000%   0.854%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.004%   0.000%   0.596%   0.000%
   33   16.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.254%
   34   17.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.077%
   35    1.1  1.5 -0.5   0.002%   9.504%   0.000%   0.454%   5.985%   0.002%   1.037%   0.001%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.281%   0.000%   7.684%   0.000%   0.003%   7.449%   0.003%   4.349%   0.000%   0.000%
   37    3.1  1.5 -0.5   7.270%   0.002%   2.997%   0.000%   0.004%   9.960%   0.008%  11.086%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   1.101%   0.000%  11.203%  10.104%   0.004%   1.752%   0.001%   0.000%   0.000%
   39    5.1  1.5 -0.5   7.974%   0.002%   0.004%   0.000%   0.002%   5.319%   0.005%   6.668%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   1.392%   0.000%   7.431%   0.038%   0.000%   2.265%   0.002%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.001%   3.989%   0.000%   8.973%   0.274%   0.000%  16.297%   0.011%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.099%   0.000%   0.031%   0.000%   0.000%   0.002%   0.000%   0.004%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.111%   0.042%   0.000%   0.002%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.094%   0.000%   0.025%   0.000%   0.000%   0.043%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.009%   0.000%   0.553%
   46   12.1  1.5 -0.5   0.000%   0.001%   0.000%   0.001%   0.012%   0.000%   0.002%   0.000%   0.078%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.014%   0.000%   0.051%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.006%   0.000%   0.003%   0.000%   0.854%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.004%   0.000%   0.596%
   50   16.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.254%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.077%   0.000%
   52    1.1  1.5 -1.5   9.468%   0.002%   3.607%   0.000%   0.006%  14.924%   0.001%   1.651%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.002%  11.767%   0.000%   3.631%   4.352%   0.002%   7.447%   0.005%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.002%   8.925%   0.000%  14.625%   2.259%   0.001%   0.289%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.520%   0.000%   8.365%   0.000%   0.001%   1.712%   0.007%  10.026%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.002%   9.233%   0.000%   6.105%   3.582%   0.001%   8.028%   0.006%   0.000%   0.000%
   57    6.1  1.5 -1.5  10.834%   0.002%   4.822%   0.000%   0.007%  16.624%   0.003%   4.668%   0.000%   0.000%
   58    7.1  1.5 -1.5   9.651%   0.002%  12.026%   0.000%   0.000%   0.013%   0.005%   7.010%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.030%   0.000%   0.080%   0.035%   0.000%   0.021%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.051%   0.000%   0.027%   0.000%   0.000%   0.007%   0.000%   0.012%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.002%   0.000%   0.004%   0.000%   0.000%   0.007%   0.000%   0.012%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.001%   0.000%   0.002%   0.001%   0.000%   0.006%   0.000%   0.014%   0.000%
   63   12.1  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   1.958%
   64   13.1  1.5 -1.5   0.003%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.002%   0.000%   0.001%   0.003%   0.000%   0.006%   0.000%   0.073%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.002%   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.010%   0.000%   0.007%   0.001%  48.617%
   68   17.1  1.5 -1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.012%   0.000%   0.006%   0.001%  46.873%
   69    1.1  0.5  0.5   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.019%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.016%   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.021%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.022%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.010%   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.008%   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.002%   0.000%   4.094%   0.000%   0.000%   0.114%   0.004%   6.767%   0.000%   0.000%
   77    9.1  0.5  0.5   3.496%   0.001%   0.919%   0.000%   0.003%   5.865%   0.001%   1.017%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.706%   0.000%   2.509%   1.863%   0.001%   5.018%   0.002%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   2.114%   0.000%   0.139%   5.019%   0.002%   1.863%   0.001%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   1.365%   0.000%   0.023%   4.345%   0.002%   2.537%   0.002%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.019%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.016%   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.021%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.022%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.010%   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.008%   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.002%   0.000%   4.094%   0.114%   0.000%   6.767%   0.004%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.001%   3.496%   0.000%   0.919%   5.865%   0.003%   1.017%   0.001%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.706%   0.000%   2.509%   0.000%   0.001%   1.863%   0.002%   5.018%   0.000%   0.000%
   91   11.1  0.5 -0.5   2.114%   0.000%   0.139%   0.000%   0.002%   5.019%   0.001%   1.863%   0.000%   0.000%
   92   12.1  0.5 -0.5   1.365%   0.000%   0.023%   0.000%   0.002%   4.345%   0.002%   2.537%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.544%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.364%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.396%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.236%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.511%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.729%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.861%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.033%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.461%   0.000%
   11   11.1  1.5  1.5   0.002%  29.774%   0.000%   0.003%   0.005%   1.970%   0.581%   1.181%   0.000%   0.086%
   12   12.1  1.5  1.5   0.072%   0.000%  14.213%   0.009%   0.635%   0.002%   6.686%   3.286%   0.001%   0.000%
   13   13.1  1.5  1.5   0.001%   0.000%  24.510%   0.016%   1.503%   0.004%   0.692%   0.340%   0.026%   0.000%
   14   14.1  1.5  1.5   0.003%  32.223%   0.000%   0.042%   0.008%   3.221%   0.048%   0.097%   0.000%   0.013%
   15   15.1  1.5  1.5   0.000%   1.560%   0.001%   0.770%   0.040%  16.692%   2.284%   4.647%   0.000%   0.124%
   16   16.1  1.5  1.5   0.016%   0.000%   0.677%   0.000%   0.758%   0.002%   0.165%   0.081%   0.137%   0.000%
   17   17.1  1.5  1.5   0.270%   0.000%   1.751%   0.001%   0.337%   0.001%   0.862%   0.424%   0.122%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.835%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.078%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.203%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.806%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.648%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.089%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.374%
   28   11.1  1.5  0.5   0.435%   0.000%  19.599%   0.013%  17.073%   0.041%   0.124%   0.061%   0.002%   0.000%
   29   12.1  1.5  0.5   0.000%   3.189%   0.002%   3.167%   0.018%   7.287%  10.159%  20.668%   0.000%   0.127%
   30   13.1  1.5  0.5   0.000%   0.308%   0.000%   0.030%   0.099%  40.802%   1.013%   2.062%   0.000%   0.166%
   31   14.1  1.5  0.5   0.447%   0.000%  27.729%   0.018%   6.649%   0.016%   0.001%   0.000%   0.110%   0.000%
   32   15.1  1.5  0.5   0.696%   0.000%   0.294%   0.000%   1.664%   0.004%  28.280%  13.900%   0.009%   0.000%
   33   16.1  1.5  0.5   0.001%  16.659%   0.003%   4.036%   0.000%   0.000%   0.053%   0.107%   0.000%   0.026%
   34   17.1  1.5  0.5   0.001%  14.342%   0.002%   3.114%   0.003%   1.168%   0.725%   1.475%   0.000%   0.034%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.835%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.078%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.203%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.806%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.648%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.089%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.374%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.435%   0.013%  19.599%   0.041%  17.073%   0.061%   0.124%   0.000%   0.002%
   46   12.1  1.5 -0.5   3.189%   0.000%   3.167%   0.002%   7.287%   0.018%  20.668%  10.159%   0.127%   0.000%
   47   13.1  1.5 -0.5   0.308%   0.000%   0.030%   0.000%  40.802%   0.099%   2.062%   1.013%   0.166%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.447%   0.018%  27.729%   0.016%   6.649%   0.000%   0.001%   0.000%   0.110%
   49   15.1  1.5 -0.5   0.000%   0.696%   0.000%   0.294%   0.004%   1.664%  13.900%  28.280%   0.000%   0.009%
   50   16.1  1.5 -0.5  16.659%   0.001%   4.036%   0.003%   0.000%   0.000%   0.107%   0.053%   0.026%   0.000%
   51   17.1  1.5 -0.5  14.342%   0.001%   3.114%   0.002%   1.168%   0.003%   1.475%   0.725%   0.034%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.544%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.364%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.396%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.236%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.511%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.729%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.861%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.033%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.461%
   62   11.1  1.5 -1.5  29.774%   0.002%   0.003%   0.000%   1.970%   0.005%   1.181%   0.581%   0.086%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.072%   0.009%  14.213%   0.002%   0.635%   3.286%   6.686%   0.000%   0.001%
   64   13.1  1.5 -1.5   0.000%   0.001%   0.016%  24.510%   0.004%   1.503%   0.340%   0.692%   0.000%   0.026%
   65   14.1  1.5 -1.5  32.223%   0.003%   0.042%   0.000%   3.221%   0.008%   0.097%   0.048%   0.013%   0.000%
   66   15.1  1.5 -1.5   1.560%   0.000%   0.770%   0.001%  16.692%   0.040%   4.647%   2.284%   0.124%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.016%   0.000%   0.677%   0.002%   0.758%   0.081%   0.165%   0.000%   0.137%
   68   17.1  1.5 -1.5   0.000%   0.270%   0.001%   1.751%   0.001%   0.337%   0.424%   0.862%   0.000%   0.122%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.107%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.145%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.303%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.120%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.379%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.608%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  36.275%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  16.140%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.232%   0.001%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.107%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.145%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.303%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.120%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.379%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.608%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  36.275%   0.001%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  16.140%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  28.232%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.540%   0.000%   0.354%   0.000%   0.000%   3.212%   0.006%   0.217%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.902%   0.000%   0.599%   0.754%   0.000%   1.648%   0.042%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.534%   0.000%   0.016%   0.488%   0.000%   0.039%   0.001%   0.000%   0.000%
    4    4.1  1.5  1.5   0.030%   0.000%   1.176%   0.000%   0.000%   0.471%   0.049%   1.912%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.731%   0.000%   0.640%   0.604%   0.000%   1.756%   0.045%   0.000%   0.000%
    6    6.1  1.5  1.5   0.759%   0.000%   0.008%   0.000%   0.000%   3.666%   0.019%   0.726%   0.000%   0.000%
    7    7.1  1.5  1.5   0.945%   0.000%   0.088%   0.000%   0.000%   0.016%   0.036%   1.403%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.693%   0.000%   0.110%   0.702%   0.000%   0.305%   0.008%   0.000%   0.000%
    9    9.1  1.5  1.5   2.471%   0.001%   1.533%   0.000%   0.000%   0.104%   0.006%   0.228%   0.000%   0.000%
   10   10.1  1.5  1.5   0.309%   0.000%   4.268%   0.000%   0.000%   0.104%   0.006%   0.228%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.047%   0.000%   0.085%   0.042%   0.000%   0.256%   0.007%   0.000%   0.140%
   12   12.1  1.5  1.5   0.041%   0.000%   0.199%   0.000%   0.000%   0.029%   0.003%   0.113%  13.300%   0.028%
   13   13.1  1.5  1.5   0.209%   0.000%   0.007%   0.000%   0.000%   0.081%   0.002%   0.067%   9.728%   0.021%
   14   14.1  1.5  1.5   0.000%   0.119%   0.000%   0.079%   0.110%   0.000%   0.241%   0.006%   0.058%  27.174%
   15   15.1  1.5  1.5   0.000%   0.119%   0.000%   0.002%   0.118%   0.000%   0.006%   0.000%   0.000%   0.167%
   16   16.1  1.5  1.5   0.015%   0.000%   0.006%   0.000%   0.000%   0.457%   0.006%   0.244%   0.258%   0.001%
   17   17.1  1.5  1.5   0.034%   0.000%   0.002%   0.000%   0.000%   0.509%   0.005%   0.198%   0.001%   0.000%
   18    1.1  1.5  0.5   0.000%   0.934%   0.000%   0.810%   1.170%   0.000%   0.278%   0.007%   0.000%   0.000%
   19    2.1  1.5  0.5   0.122%   0.000%   0.643%   0.000%   0.000%   1.691%   0.019%   0.735%   0.000%   0.000%
   20    3.1  1.5  0.5   0.530%   0.000%   0.679%   0.000%   0.000%   1.787%   0.065%   2.509%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.010%   0.000%   0.386%   1.975%   0.000%   0.469%   0.012%   0.000%   0.000%
   22    5.1  1.5  0.5   0.829%   0.000%   0.763%   0.000%   0.000%   1.260%   0.031%   1.192%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.298%   0.000%   0.818%   0.002%   0.000%   0.463%   0.012%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.301%   0.000%   0.489%   0.015%   0.000%   3.333%   0.086%   0.000%   0.000%
   25    8.1  1.5  0.5   3.096%   0.001%   2.056%   0.000%   0.000%   0.035%   0.002%   0.076%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.025%   0.000%   1.008%   0.734%   0.000%   0.054%   0.001%   0.000%   0.000%
   27   10.1  1.5  0.5   0.001%   2.562%   0.000%   0.185%   0.012%   0.000%   0.757%   0.020%   0.000%   0.000%
   28   11.1  1.5  0.5   0.155%   0.000%   0.046%   0.000%   0.000%   0.067%   0.009%   0.334%   2.165%   0.005%
   29   12.1  1.5  0.5   0.000%   0.052%   0.000%   0.000%   0.458%   0.000%   0.109%   0.003%   0.016%   7.437%
   30   13.1  1.5  0.5   0.000%   0.008%   0.000%   0.006%   0.002%   0.000%   0.548%   0.014%   0.014%   6.573%
   31   14.1  1.5  0.5   0.016%   0.000%   0.085%   0.000%   0.000%   0.247%   0.003%   0.107%   0.049%   0.000%
   32   15.1  1.5  0.5   0.024%   0.000%   0.144%   0.000%   0.000%   0.378%   0.005%   0.206%   3.852%   0.008%
   33   16.1  1.5  0.5   0.000%   0.071%   0.000%   0.166%   0.000%   0.000%   0.006%   0.000%   0.028%  13.339%
   34   17.1  1.5  0.5   0.000%   0.072%   0.000%   0.157%   0.001%   0.000%   0.000%   0.000%   0.033%  15.590%
   35    1.1  1.5 -0.5   0.934%   0.000%   0.810%   0.000%   0.000%   1.170%   0.007%   0.278%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.122%   0.000%   0.643%   1.691%   0.000%   0.735%   0.019%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.530%   0.000%   0.679%   1.787%   0.000%   2.509%   0.065%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.010%   0.000%   0.386%   0.000%   0.000%   1.975%   0.012%   0.469%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.829%   0.000%   0.763%   1.260%   0.000%   1.192%   0.031%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.298%   0.000%   0.818%   0.000%   0.000%   0.002%   0.012%   0.463%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.301%   0.000%   0.489%   0.000%   0.000%   0.015%   0.086%   3.333%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.001%   3.096%   0.000%   2.056%   0.035%   0.000%   0.076%   0.002%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.025%   0.000%   1.008%   0.000%   0.000%   0.734%   0.001%   0.054%   0.000%   0.000%
   44   10.1  1.5 -0.5   2.562%   0.001%   0.185%   0.000%   0.000%   0.012%   0.020%   0.757%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.155%   0.000%   0.046%   0.067%   0.000%   0.334%   0.009%   0.005%   2.165%
   46   12.1  1.5 -0.5   0.052%   0.000%   0.000%   0.000%   0.000%   0.458%   0.003%   0.109%   7.437%   0.016%
   47   13.1  1.5 -0.5   0.008%   0.000%   0.006%   0.000%   0.000%   0.002%   0.014%   0.548%   6.573%   0.014%
   48   14.1  1.5 -0.5   0.000%   0.016%   0.000%   0.085%   0.247%   0.000%   0.107%   0.003%   0.000%   0.049%
   49   15.1  1.5 -0.5   0.000%   0.024%   0.000%   0.144%   0.378%   0.000%   0.206%   0.005%   0.008%   3.852%
   50   16.1  1.5 -0.5   0.071%   0.000%   0.166%   0.000%   0.000%   0.000%   0.000%   0.006%  13.339%   0.028%
   51   17.1  1.5 -0.5   0.072%   0.000%   0.157%   0.000%   0.000%   0.001%   0.000%   0.000%  15.590%   0.033%
   52    1.1  1.5 -1.5   0.000%   0.540%   0.000%   0.354%   3.212%   0.000%   0.217%   0.006%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.902%   0.000%   0.599%   0.000%   0.000%   0.754%   0.042%   1.648%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.534%   0.000%   0.016%   0.000%   0.000%   0.488%   0.001%   0.039%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.030%   0.000%   1.176%   0.471%   0.000%   1.912%   0.049%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.731%   0.000%   0.640%   0.000%   0.000%   0.604%   0.045%   1.756%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.759%   0.000%   0.008%   3.666%   0.000%   0.726%   0.019%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.945%   0.000%   0.088%   0.016%   0.000%   1.403%   0.036%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.693%   0.000%   0.110%   0.000%   0.000%   0.702%   0.008%   0.305%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.001%   2.471%   0.000%   1.533%   0.104%   0.000%   0.228%   0.006%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.309%   0.000%   4.268%   0.104%   0.000%   0.228%   0.006%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.047%   0.000%   0.085%   0.000%   0.000%   0.042%   0.007%   0.256%   0.140%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.041%   0.000%   0.199%   0.029%   0.000%   0.113%   0.003%   0.028%  13.300%
   64   13.1  1.5 -1.5   0.000%   0.209%   0.000%   0.007%   0.081%   0.000%   0.067%   0.002%   0.021%   9.728%
   65   14.1  1.5 -1.5   0.119%   0.000%   0.079%   0.000%   0.000%   0.110%   0.006%   0.241%  27.174%   0.058%
   66   15.1  1.5 -1.5   0.119%   0.000%   0.002%   0.000%   0.000%   0.118%   0.000%   0.006%   0.167%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.015%   0.000%   0.006%   0.457%   0.000%   0.244%   0.006%   0.001%   0.258%
   68   17.1  1.5 -1.5   0.000%   0.034%   0.000%   0.002%   0.509%   0.000%   0.198%   0.005%   0.000%   0.001%
   69    1.1  0.5  0.5   0.000%   0.001%   0.000%   0.621%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   70    2.1  0.5  0.5   0.000%   0.233%   0.000%   0.349%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.262%   0.000%   0.163%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.365%   0.000%   0.243%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   73    5.1  0.5  0.5   0.000%   0.490%   0.000%   0.201%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   74    6.1  0.5  0.5   0.000%   0.275%   0.000%   0.075%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.072%   0.000%   0.048%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.001%   0.296%   0.000%  11.841%   0.133%   0.000%  30.590%   0.757%   0.000%   0.000%
   77    9.1  0.5  0.5   0.015%  30.089%   0.000%   2.171%  25.311%   0.002%   6.007%   0.161%   0.000%   0.000%
   78   10.1  0.5  0.5  13.576%   0.008%   6.596%   0.000%   0.001%  10.366%   0.505%  20.608%   0.000%   0.000%
   79   11.1  0.5  0.5  17.389%   0.008%  30.975%   0.000%   0.001%  21.112%   0.261%  10.106%   0.000%   0.000%
   80   12.1  0.5  0.5  19.299%   0.009%  29.105%   0.000%   0.001%  21.774%   0.244%   9.462%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.001%   0.000%   0.621%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   82    2.1  0.5 -0.5   0.233%   0.000%   0.349%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.262%   0.000%   0.163%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.365%   0.000%   0.243%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   85    5.1  0.5 -0.5   0.490%   0.000%   0.201%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   86    6.1  0.5 -0.5   0.275%   0.000%   0.075%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.072%   0.000%   0.048%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.296%   0.001%  11.841%   0.000%   0.000%   0.133%   0.757%  30.590%   0.000%   0.000%
   89    9.1  0.5 -0.5  30.089%   0.015%   2.171%   0.000%   0.002%  25.311%   0.161%   6.007%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.008%  13.576%   0.000%   6.596%  10.366%   0.001%  20.608%   0.505%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.008%  17.389%   0.000%  30.975%  21.112%   0.001%  10.106%   0.261%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.009%  19.299%   0.000%  29.105%  21.774%   0.001%   9.462%   0.244%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.004%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.000%   0.112%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.014%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.059%   0.000%
   11   11.1  1.5  1.5   1.418%  15.596%   0.033%  13.925%   0.000%   0.950%   0.000%   7.285%   0.020%  12.413%
   12   12.1  1.5  1.5   6.681%   0.607%   2.383%   0.006%  19.727%   0.000%  14.101%   0.000%   8.636%   0.014%
   13   13.1  1.5  1.5   6.797%   0.618%   1.344%   0.003%  23.894%   0.000%  16.531%   0.000%   0.346%   0.001%
   14   14.1  1.5  1.5   0.075%   0.823%   0.001%   0.427%   0.000%   0.010%   0.000%  16.701%   0.006%   3.815%
   15   15.1  1.5  1.5   1.028%  11.311%   0.071%  29.645%   0.000%   1.896%   0.000%  14.799%   0.013%   8.249%
   16   16.1  1.5  1.5   0.021%   0.002%   3.792%   0.009%   1.125%   0.000%   1.967%   0.000%  11.076%   0.018%
   17   17.1  1.5  1.5   0.327%   0.030%   3.912%   0.009%   0.602%   0.000%   4.193%   0.000%   9.518%   0.015%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.199%   0.000%   0.046%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.157%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.150%   0.000%   0.033%
   28   11.1  1.5  0.5   0.000%   0.000%  21.273%   0.051%   1.579%   0.000%   5.611%   0.000%   4.546%   0.007%
   29   12.1  1.5  0.5   0.558%   6.134%   0.000%   0.048%   0.000%   0.211%   0.000%   7.044%   0.013%   8.473%
   30   13.1  1.5  0.5   0.657%   7.226%   0.000%   0.207%   0.000%   0.053%   0.000%   1.340%   0.020%  12.257%
   31   14.1  1.5  0.5   0.835%   0.076%  13.860%   0.033%  13.715%   0.000%   0.707%   0.000%   0.016%   0.000%
   32   15.1  1.5  0.5   4.164%   0.379%   3.981%   0.009%   0.624%   0.000%   8.540%   0.000%   8.669%   0.014%
   33   16.1  1.5  0.5   1.406%  15.461%   0.012%   4.937%   0.000%  16.746%   0.000%   0.024%   0.009%   5.875%
   34   17.1  1.5  0.5   1.480%  16.279%   0.000%   0.015%   0.000%  18.857%   0.000%   0.032%   0.008%   4.828%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.199%   0.000%   0.046%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.157%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.150%   0.000%   0.033%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.051%  21.273%   0.000%   1.579%   0.000%   5.611%   0.007%   4.546%
   46   12.1  1.5 -0.5   6.134%   0.558%   0.048%   0.000%   0.211%   0.000%   7.044%   0.000%   8.473%   0.013%
   47   13.1  1.5 -0.5   7.226%   0.657%   0.207%   0.000%   0.053%   0.000%   1.340%   0.000%  12.257%   0.020%
   48   14.1  1.5 -0.5   0.076%   0.835%   0.033%  13.860%   0.000%  13.715%   0.000%   0.707%   0.000%   0.016%
   49   15.1  1.5 -0.5   0.379%   4.164%   0.009%   3.981%   0.000%   0.624%   0.000%   8.540%   0.014%   8.669%
   50   16.1  1.5 -0.5  15.461%   1.406%   4.937%   0.012%  16.746%   0.000%   0.024%   0.000%   5.875%   0.009%
   51   17.1  1.5 -0.5  16.279%   1.480%   0.015%   0.000%  18.857%   0.000%   0.032%   0.000%   4.828%   0.008%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.004%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.000%   0.112%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.014%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.059%
   62   11.1  1.5 -1.5  15.596%   1.418%  13.925%   0.033%   0.950%   0.000%   7.285%   0.000%  12.413%   0.020%
   63   12.1  1.5 -1.5   0.607%   6.681%   0.006%   2.383%   0.000%  19.727%   0.000%  14.101%   0.014%   8.636%
   64   13.1  1.5 -1.5   0.618%   6.797%   0.003%   1.344%   0.000%  23.894%   0.000%  16.531%   0.001%   0.346%
   65   14.1  1.5 -1.5   0.823%   0.075%   0.427%   0.001%   0.010%   0.000%  16.701%   0.000%   3.815%   0.006%
   66   15.1  1.5 -1.5  11.311%   1.028%  29.645%   0.071%   1.896%   0.000%  14.799%   0.000%   8.249%   0.013%
   67   16.1  1.5 -1.5   0.002%   0.021%   0.009%   3.792%   0.000%   1.125%   0.000%   1.967%   0.018%  11.076%
   68   17.1  1.5 -1.5   0.030%   0.327%   0.009%   3.912%   0.000%   0.602%   0.000%   4.193%   0.015%   9.518%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   70    2.1  0.5  0.5   0.000%   0.004%   0.000%   0.002%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%   0.000%
   72    4.1  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   73    5.1  0.5  0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.003%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.001%   0.000%   0.001%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.001%   0.336%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.320%   0.000%   0.071%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.007%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.324%   0.000%   0.067%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.195%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   82    2.1  0.5 -0.5   0.004%   0.000%   0.002%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%
   84    4.1  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   85    5.1  0.5 -0.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.003%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.001%   0.000%   0.001%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.336%   0.001%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.320%   0.000%   0.071%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.007%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.324%   0.000%   0.067%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.195%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.001%   0.000%   0.011%   0.000%   0.025%   0.000%   0.001%   0.007%   0.007%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.024%   0.000%   0.002%   0.001%   0.000%   0.000%   0.012%
    3    3.1  1.5  1.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.004%   0.016%   0.002%   0.000%   0.008%
    4    4.1  1.5  1.5   0.000%   0.000%   0.002%   0.000%   0.024%   0.000%   0.001%   0.005%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.023%   0.000%   0.002%   0.003%   0.000%   0.000%   0.009%
    6    6.1  1.5  1.5   0.000%   0.000%   0.008%   0.000%   0.039%   0.000%   0.001%   0.006%   0.011%   0.000%
    7    7.1  1.5  1.5   0.002%   0.000%   0.005%   0.000%   0.010%   0.000%   0.001%   0.009%   0.013%   0.000%
    8    8.1  1.5  1.5   0.000%   0.021%   0.000%   0.009%   0.000%   0.139%  24.012%   3.549%   0.000%   7.507%
    9    9.1  1.5  1.5   0.200%   0.000%   0.046%   0.000%   0.003%   0.000%   1.405%   9.503%  25.511%   0.000%
   10   10.1  1.5  1.5   0.157%   0.000%   0.046%   0.000%   0.003%   0.000%   0.635%   4.298%   4.026%   0.000%
   11   11.1  1.5  1.5   0.000%   2.247%   0.018%   9.512%   0.000%   2.337%   0.010%   0.001%   0.000%   0.005%
   12   12.1  1.5  1.5   1.588%   0.000%   4.866%   0.009%   0.758%   0.000%   0.000%   0.000%   0.004%   0.000%
   13   13.1  1.5  1.5   7.389%   0.000%   5.812%   0.011%   0.001%   0.000%   0.000%   0.003%   0.027%   0.000%
   14   14.1  1.5  1.5   0.000%   0.664%   0.024%  13.027%   0.000%   0.857%   0.002%   0.000%   0.000%   0.014%
   15   15.1  1.5  1.5   0.000%   1.586%   0.007%   3.686%   0.000%   1.131%   0.014%   0.002%   0.000%   0.016%
   16   16.1  1.5  1.5   2.929%   0.000%   1.110%   0.002%  26.445%   0.000%   0.002%   0.015%   0.002%   0.000%
   17   17.1  1.5  1.5   2.191%   0.000%   2.056%   0.004%  25.687%   0.000%   0.002%   0.014%   0.005%   0.000%
   18    1.1  1.5  0.5   0.000%   0.002%   0.000%   0.014%   0.000%   0.001%   0.000%   0.000%   0.000%   0.014%
   19    2.1  1.5  0.5   0.005%   0.000%   0.002%   0.000%   0.024%   0.000%   0.002%   0.011%   0.002%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.045%   0.000%   0.001%   0.000%   0.000%   0.001%   0.007%   0.000%
   21    4.1  1.5  0.5   0.000%   0.004%   0.000%   0.024%   0.000%   0.002%   0.015%   0.002%   0.000%   0.000%
   22    5.1  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.013%   0.000%
   23    6.1  1.5  0.5   0.000%   0.006%   0.000%   0.003%   0.000%   0.002%   0.010%   0.002%   0.000%   0.005%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.018%   0.000%   0.018%   0.008%   0.001%   0.000%   0.005%
   25    8.1  1.5  0.5   0.008%   0.000%   0.015%   0.000%   0.001%   0.000%   0.453%   3.058%  27.805%   0.000%
   26    9.1  1.5  0.5   0.000%   0.029%   0.000%   0.092%   0.000%   0.023%  26.194%   3.873%   0.000%   0.070%
   27   10.1  1.5  0.5   0.000%   0.007%   0.000%   0.037%   0.000%   0.078%  11.352%   1.677%   0.000%  25.092%
   28   11.1  1.5  0.5  10.246%   0.000%   1.534%   0.003%  14.413%   0.000%   0.000%   0.000%   0.021%   0.000%
   29   12.1  1.5  0.5   0.000%   2.505%   0.039%  20.536%   0.000%   1.609%   0.014%   0.002%   0.000%   0.007%
   30   13.1  1.5  0.5   0.000%   4.492%   0.021%  11.216%   0.000%  10.756%   0.019%   0.003%   0.000%   0.001%
   31   14.1  1.5  0.5  20.464%   0.000%   0.856%   0.002%  13.051%   0.000%   0.002%   0.013%   0.002%   0.000%
   32   15.1  1.5  0.5   0.505%   0.000%  22.770%   0.043%   0.181%   0.000%   0.000%   0.001%   0.002%   0.000%
   33   16.1  1.5  0.5   0.000%  20.477%   0.000%   0.133%   0.000%   0.127%   0.003%   0.000%   0.000%   0.010%
   34   17.1  1.5  0.5   0.000%  21.590%   0.000%   0.065%   0.000%   0.005%   0.004%   0.001%   0.000%   0.011%
   35    1.1  1.5 -0.5   0.002%   0.000%   0.014%   0.000%   0.001%   0.000%   0.000%   0.000%   0.014%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.005%   0.000%   0.002%   0.000%   0.024%   0.011%   0.002%   0.000%   0.002%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.045%   0.000%   0.001%   0.001%   0.000%   0.000%   0.007%
   38    4.1  1.5 -0.5   0.004%   0.000%   0.024%   0.000%   0.002%   0.000%   0.002%   0.015%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.013%
   40    6.1  1.5 -0.5   0.006%   0.000%   0.003%   0.000%   0.002%   0.000%   0.002%   0.010%   0.005%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.018%   0.000%   0.018%   0.000%   0.001%   0.008%   0.005%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.008%   0.000%   0.015%   0.000%   0.001%   3.058%   0.453%   0.000%  27.805%
   43    9.1  1.5 -0.5   0.029%   0.000%   0.092%   0.000%   0.023%   0.000%   3.873%  26.194%   0.070%   0.000%
   44   10.1  1.5 -0.5   0.007%   0.000%   0.037%   0.000%   0.078%   0.000%   1.677%  11.352%  25.092%   0.000%
   45   11.1  1.5 -0.5   0.000%  10.246%   0.003%   1.534%   0.000%  14.413%   0.000%   0.000%   0.000%   0.021%
   46   12.1  1.5 -0.5   2.505%   0.000%  20.536%   0.039%   1.609%   0.000%   0.002%   0.014%   0.007%   0.000%
   47   13.1  1.5 -0.5   4.492%   0.000%  11.216%   0.021%  10.756%   0.000%   0.003%   0.019%   0.001%   0.000%
   48   14.1  1.5 -0.5   0.000%  20.464%   0.002%   0.856%   0.000%  13.051%   0.013%   0.002%   0.000%   0.002%
   49   15.1  1.5 -0.5   0.000%   0.505%   0.043%  22.770%   0.000%   0.181%   0.001%   0.000%   0.000%   0.002%
   50   16.1  1.5 -0.5  20.477%   0.000%   0.133%   0.000%   0.127%   0.000%   0.000%   0.003%   0.010%   0.000%
   51   17.1  1.5 -0.5  21.590%   0.000%   0.065%   0.000%   0.005%   0.000%   0.001%   0.004%   0.011%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.001%   0.000%   0.011%   0.000%   0.025%   0.007%   0.001%   0.000%   0.007%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.024%   0.000%   0.002%   0.000%   0.000%   0.001%   0.012%   0.000%
   54    3.1  1.5 -1.5   0.001%   0.000%   0.002%   0.000%   0.004%   0.000%   0.002%   0.016%   0.008%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.024%   0.005%   0.001%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.023%   0.000%   0.002%   0.000%   0.000%   0.003%   0.009%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.008%   0.000%   0.039%   0.006%   0.001%   0.000%   0.011%
   58    7.1  1.5 -1.5   0.000%   0.002%   0.000%   0.005%   0.000%   0.010%   0.009%   0.001%   0.000%   0.013%
   59    8.1  1.5 -1.5   0.021%   0.000%   0.009%   0.000%   0.139%   0.000%   3.549%  24.012%   7.507%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.200%   0.000%   0.046%   0.000%   0.003%   9.503%   1.405%   0.000%  25.511%
   61   10.1  1.5 -1.5   0.000%   0.157%   0.000%   0.046%   0.000%   0.003%   4.298%   0.635%   0.000%   4.026%
   62   11.1  1.5 -1.5   2.247%   0.000%   9.512%   0.018%   2.337%   0.000%   0.001%   0.010%   0.005%   0.000%
   63   12.1  1.5 -1.5   0.000%   1.588%   0.009%   4.866%   0.000%   0.758%   0.000%   0.000%   0.000%   0.004%
   64   13.1  1.5 -1.5   0.000%   7.389%   0.011%   5.812%   0.000%   0.001%   0.003%   0.000%   0.000%   0.027%
   65   14.1  1.5 -1.5   0.664%   0.000%  13.027%   0.024%   0.857%   0.000%   0.000%   0.002%   0.014%   0.000%
   66   15.1  1.5 -1.5   1.586%   0.000%   3.686%   0.007%   1.131%   0.000%   0.002%   0.014%   0.016%   0.000%
   67   16.1  1.5 -1.5   0.000%   2.929%   0.002%   1.110%   0.000%  26.445%   0.015%   0.002%   0.000%   0.002%
   68   17.1  1.5 -1.5   0.000%   2.191%   0.004%   2.056%   0.000%  25.687%   0.014%   0.002%   0.000%   0.005%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   0.005%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   0.007%   0.000%   0.076%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.090%   0.104%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.038%   0.119%   0.000%
   73    5.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.014%   0.002%   0.000%   0.184%
   74    6.1  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.123%   0.018%   0.000%   0.099%
   75    7.1  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.189%   0.026%   0.000%
   76    8.1  0.5  0.5   0.000%   0.062%   0.001%   0.452%   0.000%   0.433%   3.562%   0.511%   0.000%   0.009%
   77    9.1  0.5  0.5   0.000%   0.014%   0.002%   0.820%   0.000%   0.064%   1.538%   0.227%   0.000%   3.399%
   78   10.1  0.5  0.5   0.390%   0.000%   0.013%   0.000%   0.873%   0.000%   0.411%   2.890%   1.564%   0.000%
   79   11.1  0.5  0.5   0.015%   0.000%   0.871%   0.002%   0.013%   0.000%   0.001%   0.004%   1.735%   0.000%
   80   12.1  0.5  0.5   0.196%   0.000%   0.054%   0.000%   0.831%   0.000%   0.000%   0.002%   2.438%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.032%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.045%   0.076%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.090%   0.014%   0.000%   0.104%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.006%   0.000%   0.119%
   85    5.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.014%   0.184%   0.000%
   86    6.1  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.123%   0.099%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.189%   0.028%   0.000%   0.026%
   88    8.1  0.5 -0.5   0.062%   0.000%   0.452%   0.001%   0.433%   0.000%   0.511%   3.562%   0.009%   0.000%
   89    9.1  0.5 -0.5   0.014%   0.000%   0.820%   0.002%   0.064%   0.000%   0.227%   1.538%   3.399%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.390%   0.000%   0.013%   0.000%   0.873%   2.890%   0.411%   0.000%   1.564%
   91   11.1  0.5 -0.5   0.000%   0.015%   0.002%   0.871%   0.000%   0.013%   0.004%   0.001%   0.000%   1.735%
   92   12.1  0.5 -0.5   0.000%   0.196%   0.000%   0.054%   0.000%   0.831%   0.002%   0.000%   0.000%   2.438%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  1.5  1.5   0.000%   0.005%   0.010%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.014%
    2    2.1  1.5  1.5   0.009%   0.000%   0.000%   0.001%   0.000%   0.010%   0.000%   0.000%   0.001%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.032%   0.000%
    4    4.1  1.5  1.5   0.000%   0.017%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%
    5    5.1  1.5  1.5   0.010%   0.000%   0.000%   0.002%   0.000%   0.010%   0.000%   0.000%   0.003%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.016%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.037%
    7    7.1  1.5  1.5   0.000%   0.002%   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.134%
    8    8.1  1.5  1.5   0.935%   0.002%   0.069%  52.891%   0.000%   5.821%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.023%  13.063%   1.938%   0.003%  17.653%   0.000%  24.999%   0.001%   0.000%   0.000%
   10   10.1  1.5  1.5   0.071%  40.475%   1.938%   0.003%  17.653%   0.000%  24.999%   0.001%   0.000%   0.000%
   11   11.1  1.5  1.5   0.012%   0.000%   0.000%   0.002%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.027%   0.001%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.002%
   13   13.1  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.004%
   14   14.1  1.5  1.5   0.012%   0.000%   0.000%   0.001%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%
   16   16.1  1.5  1.5   0.000%   0.001%   0.021%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.020%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.010%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.054%   0.000%
   19    2.1  1.5  0.5   0.000%   0.008%   0.010%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.005%
   20    3.1  1.5  0.5   0.000%   0.010%   0.001%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.009%
   21    4.1  1.5  0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.066%   0.000%
   22    5.1  1.5  0.5   0.000%   0.010%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.083%
   23    6.1  1.5  0.5   0.011%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.052%   0.000%
   24    7.1  1.5  0.5   0.007%   0.000%   0.000%   0.009%   0.000%   0.007%   0.000%   0.000%   0.023%   0.000%
   25    8.1  1.5  0.5   0.040%  22.651%   0.646%   0.001%   5.885%   0.000%  33.332%   0.001%   0.000%   0.000%
   26    9.1  1.5  0.5  10.350%   0.018%   0.009%   6.716%   0.000%  38.994%   0.000%   8.333%   0.000%   0.000%
   27   10.1  1.5  0.5   2.379%   0.004%   0.044%  33.713%   0.000%  11.962%   0.000%   8.333%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.005%   0.012%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.001%   0.000%   0.000%   0.010%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.010%   0.010%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.020%   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.001%
   33   16.1  1.5  0.5   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   34   17.1  1.5  0.5   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.010%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.054%
   36    2.1  1.5 -0.5   0.008%   0.000%   0.000%   0.010%   0.000%   0.001%   0.000%   0.000%   0.005%   0.000%
   37    3.1  1.5 -0.5   0.010%   0.000%   0.000%   0.001%   0.000%   0.020%   0.000%   0.000%   0.009%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.005%   0.000%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.066%
   39    5.1  1.5 -0.5   0.010%   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.083%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.011%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.052%
   41    7.1  1.5 -0.5   0.000%   0.007%   0.009%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.023%
   42    8.1  1.5 -0.5  22.651%   0.040%   0.001%   0.646%   0.000%   5.885%   0.001%  33.332%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.018%  10.350%   6.716%   0.009%  38.994%   0.000%   8.333%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.004%   2.379%  33.713%   0.044%  11.962%   0.000%   8.333%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.005%   0.000%   0.000%   0.012%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.001%   0.010%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.010%   0.000%   0.000%   0.010%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.020%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%   0.000%   0.001%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   51   17.1  1.5 -0.5   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   52    1.1  1.5 -1.5   0.005%   0.000%   0.000%   0.010%   0.000%   0.006%   0.000%   0.000%   0.014%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.009%   0.001%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.001%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.032%
   55    4.1  1.5 -1.5   0.017%   0.000%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.010%   0.002%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.003%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.016%   0.000%   0.005%   0.000%   0.000%   0.037%   0.000%
   58    7.1  1.5 -1.5   0.002%   0.000%   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%   0.134%   0.000%
   59    8.1  1.5 -1.5   0.002%   0.935%  52.891%   0.069%   5.821%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5  13.063%   0.023%   0.003%   1.938%   0.000%  17.653%   0.001%  24.999%   0.000%   0.000%
   61   10.1  1.5 -1.5  40.475%   0.071%   0.003%   1.938%   0.000%  17.653%   0.001%  24.999%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.012%   0.002%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.027%   0.000%   0.000%   0.001%   0.000%   0.004%   0.000%   0.000%   0.002%   0.000%
   64   13.1  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.004%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.012%   0.001%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%
   67   16.1  1.5 -1.5   0.001%   0.000%   0.000%   0.021%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.020%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.224%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.884%   0.000%
   70    2.1  0.5  0.5   0.133%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.443%   0.001%
   71    3.1  0.5  0.5   0.000%   0.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  51.865%
   72    4.1  0.5  0.5   0.000%   0.098%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.809%
   73    5.1  0.5  0.5   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.559%   0.000%
   74    6.1  0.5  0.5   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.216%   0.000%
   75    7.1  0.5  0.5   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.638%
   76    8.1  0.5  0.5   1.402%   0.003%   0.001%   0.417%   0.000%   0.331%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.322%   0.001%   0.000%   0.031%   0.000%   0.718%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.002%   0.621%   0.746%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.007%   3.742%   0.002%   0.000%   0.747%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.005%   3.042%   0.674%   0.001%   0.074%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.224%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.884%
   82    2.1  0.5 -0.5   0.000%   0.133%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   3.443%
   83    3.1  0.5 -0.5   0.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  51.865%   0.000%
   84    4.1  0.5 -0.5   0.098%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.809%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.559%
   86    6.1  0.5 -0.5   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.216%
   87    7.1  0.5 -0.5   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.638%   0.000%
   88    8.1  0.5 -0.5   0.003%   1.402%   0.417%   0.001%   0.331%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.001%   0.322%   0.031%   0.000%   0.718%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.621%   0.002%   0.001%   0.746%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   3.742%   0.007%   0.000%   0.002%   0.000%   0.747%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   3.042%   0.005%   0.001%   0.674%   0.000%   0.074%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  1.5  1.5   0.000%   0.033%   0.000%   0.036%   0.000%   0.025%   0.049%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.003%   0.000%   0.157%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.010%
    3    3.1  1.5  1.5   0.237%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.118%   0.000%   0.002%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.049%   0.000%   0.055%   0.027%   0.000%   0.003%   0.000%
    5    5.1  1.5  1.5   0.002%   0.000%   0.001%   0.000%   0.159%   0.000%   0.000%   0.003%   0.000%   0.009%
    6    6.1  1.5  1.5   0.000%   0.009%   0.000%   0.006%   0.000%   0.001%   0.063%   0.000%   0.011%   0.000%
    7    7.1  1.5  1.5   0.000%   0.035%   0.000%   0.029%   0.000%   0.021%   0.013%   0.000%   0.050%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.072%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.047%   0.000%
   11   11.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.001%   0.000%   0.156%   0.000%   0.008%   0.000%   0.000%   0.024%   0.000%   0.085%
   19    2.1  1.5  0.5   0.000%   0.155%   0.000%   0.003%   0.000%   0.000%   0.022%   0.000%   0.071%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.028%   0.000%   0.020%   0.000%   0.000%   0.002%   0.000%
   21    4.1  1.5  0.5   0.002%   0.000%   0.002%   0.000%   0.093%   0.000%   0.000%   0.058%   0.000%   0.031%
   22    5.1  1.5  0.5   0.000%   0.068%   0.000%   0.000%   0.000%   0.009%   0.012%   0.000%   0.087%   0.000%
   23    6.1  1.5  0.5   0.020%   0.000%   0.025%   0.000%   0.177%   0.000%   0.000%   0.015%   0.000%   0.099%
   24    7.1  1.5  0.5   0.005%   0.000%   0.078%   0.000%   0.002%   0.000%   0.000%   0.069%   0.000%   0.015%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%   0.000%   0.001%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   0.003%
   28   11.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.001%   0.000%   0.002%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.001%   0.000%   0.156%   0.000%   0.008%   0.024%   0.000%   0.085%   0.000%
   36    2.1  1.5 -0.5   0.155%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%   0.071%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.028%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.002%
   38    4.1  1.5 -0.5   0.000%   0.002%   0.000%   0.002%   0.000%   0.093%   0.058%   0.000%   0.031%   0.000%
   39    5.1  1.5 -0.5   0.068%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.012%   0.000%   0.087%
   40    6.1  1.5 -0.5   0.000%   0.020%   0.000%   0.025%   0.000%   0.177%   0.015%   0.000%   0.099%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.005%   0.000%   0.078%   0.000%   0.002%   0.069%   0.000%   0.015%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%   0.000%   0.001%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   0.003%   0.000%
   45   11.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.033%   0.000%   0.036%   0.000%   0.025%   0.000%   0.000%   0.049%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.003%   0.000%   0.157%   0.000%   0.003%   0.000%   0.000%   0.010%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.237%   0.000%   0.002%   0.000%   0.000%   0.118%   0.000%   0.002%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.049%   0.000%   0.055%   0.000%   0.000%   0.027%   0.000%   0.003%
   56    5.1  1.5 -1.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.159%   0.003%   0.000%   0.009%   0.000%
   57    6.1  1.5 -1.5   0.009%   0.000%   0.006%   0.000%   0.001%   0.000%   0.000%   0.063%   0.000%   0.011%
   58    7.1  1.5 -1.5   0.035%   0.000%   0.029%   0.000%   0.021%   0.000%   0.000%   0.013%   0.000%   0.050%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.072%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.047%
   62   11.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5  24.094%   0.018%  26.524%   0.000%   0.288%   0.000%   0.000%   8.898%   0.000%   4.796%
   70    2.1  0.5  0.5  30.161%   0.022%   2.603%   0.000%  20.578%   0.000%   0.001%  11.849%   0.000%   0.822%
   71    3.1  0.5  0.5   0.004%   1.972%   0.000%   0.355%   0.000%   2.611%  32.554%   0.001%   8.598%   0.000%
   72    4.1  0.5  0.5   0.001%   2.000%   0.000%  26.848%   0.000%  22.150%   1.320%   0.000%   5.406%   0.000%
   73    5.1  0.5  0.5   0.541%   0.001%  31.124%   0.000%  16.584%   0.000%   0.000%   1.311%   0.000%  40.399%
   74    6.1  0.5  0.5  10.438%   0.007%   7.443%   0.000%  34.706%   0.000%   0.000%   6.105%   0.000%  34.636%
   75    7.1  0.5  0.5   0.021%  30.135%   0.000%   4.517%   0.000%   2.497%  35.552%   0.000%   2.931%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.741%   0.000%   0.016%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.694%   0.000%   0.062%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.216%   0.000%   0.859%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.128%   0.000%   0.866%   0.000%
   81    1.1  0.5 -0.5   0.018%  24.094%   0.000%  26.524%   0.000%   0.288%   8.898%   0.000%   4.796%   0.000%
   82    2.1  0.5 -0.5   0.022%  30.161%   0.000%   2.603%   0.000%  20.578%  11.849%   0.001%   0.822%   0.000%
   83    3.1  0.5 -0.5   1.972%   0.004%   0.355%   0.000%   2.611%   0.000%   0.001%  32.554%   0.000%   8.598%
   84    4.1  0.5 -0.5   2.000%   0.001%  26.848%   0.000%  22.150%   0.000%   0.000%   1.320%   0.000%   5.406%
   85    5.1  0.5 -0.5   0.001%   0.541%   0.000%  31.124%   0.000%  16.584%   1.311%   0.000%  40.399%   0.000%
   86    6.1  0.5 -0.5   0.007%  10.438%   0.000%   7.443%   0.000%  34.706%   6.105%   0.000%  34.636%   0.000%
   87    7.1  0.5 -0.5  30.135%   0.021%   4.517%   0.000%   2.497%   0.000%   0.000%  35.552%   0.000%   2.931%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.741%   0.000%   0.016%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.694%   0.000%   0.062%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.216%   0.000%   0.859%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.128%   0.000%   0.866%

   Nr   State  S   Sz      91       92

    1    1.1  1.5  1.5   0.000%   0.042%
    2    2.1  1.5  1.5   0.092%   0.000%
    3    3.1  1.5  1.5   0.002%   0.000%
    4    4.1  1.5  1.5   0.000%   0.071%
    5    5.1  1.5  1.5   0.090%   0.000%
    6    6.1  1.5  1.5   0.000%   0.007%
    7    7.1  1.5  1.5   0.000%   0.050%
    8    8.1  1.5  1.5   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.025%
   11   11.1  1.5  1.5   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%
   18    1.1  1.5  0.5   0.003%   0.000%
   19    2.1  1.5  0.5   0.000%   0.008%
   20    3.1  1.5  0.5   0.000%   0.079%
   21    4.1  1.5  0.5   0.012%   0.000%
   22    5.1  1.5  0.5   0.000%   0.003%
   23    6.1  1.5  0.5   0.007%   0.000%
   24    7.1  1.5  0.5   0.008%   0.000%
   25    8.1  1.5  0.5   0.000%   0.071%
   26    9.1  1.5  0.5   0.018%   0.000%
   27   10.1  1.5  0.5   0.018%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.003%
   36    2.1  1.5 -0.5   0.008%   0.000%
   37    3.1  1.5 -0.5   0.079%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.012%
   39    5.1  1.5 -0.5   0.003%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.007%
   41    7.1  1.5 -0.5   0.000%   0.008%
   42    8.1  1.5 -0.5   0.071%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.018%
   44   10.1  1.5 -0.5   0.000%   0.018%
   45   11.1  1.5 -0.5   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%
   52    1.1  1.5 -1.5   0.042%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.092%
   54    3.1  1.5 -1.5   0.000%   0.002%
   55    4.1  1.5 -1.5   0.071%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.090%
   57    6.1  1.5 -1.5   0.007%   0.000%
   58    7.1  1.5 -1.5   0.050%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%
   61   10.1  1.5 -1.5   0.025%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%
   69    1.1  0.5  0.5  28.130%   0.000%
   70    2.1  0.5  0.5  29.153%   0.000%
   71    3.1  0.5  0.5   0.000%   0.672%
   72    4.1  0.5  0.5   0.000%  35.098%
   73    5.1  0.5  0.5   0.114%   0.000%
   74    6.1  0.5  0.5   1.082%   0.000%
   75    7.1  0.5  0.5   0.000%   3.342%
   76    8.1  0.5  0.5   0.325%   0.000%
   77    9.1  0.5  0.5   0.326%   0.000%
   78   10.1  0.5  0.5   0.000%   0.007%
   79   11.1  0.5  0.5   0.000%   1.058%
   80   12.1  0.5  0.5   0.000%   0.088%
   81    1.1  0.5 -0.5   0.000%  28.130%
   82    2.1  0.5 -0.5   0.000%  29.153%
   83    3.1  0.5 -0.5   0.672%   0.000%
   84    4.1  0.5 -0.5  35.098%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.114%
   86    6.1  0.5 -0.5   0.000%   1.082%
   87    7.1  0.5 -0.5   3.342%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.325%
   89    9.1  0.5 -0.5   0.000%   0.326%
   90   10.1  0.5 -0.5   0.007%   0.000%
   91   11.1  0.5 -0.5   1.058%   0.000%
   92   12.1  0.5 -0.5   0.088%   0.000%


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

              2       6      621.47       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     14235.02  13108.64    433.82    686.91      3.87      1.35
 REAL TIME  *     14868.39 SEC
 DISK USED  *       653.57 MB (local),       19.27 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.952965995854

              CI              CI           MULTI
   -109.92115395   -109.89843471   -109.32974875
 **********************************************************************************************************************************
 Molpro calculation terminated
