
 Working directory              : /wrk/irikura/molpro.ulAiYcamig/
 Global scratch directory       : /wrk/irikura/molpro.ulAiYcamig/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ulAiYcamig/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Sr SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/10) adds 4d orbitals
 {multi
     closed,9,9
     occ,16,12
     wf,sym=1,spin=0;state,7;
     wf,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,3,6
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5203.2}
 hlsdiag(8) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 05-Mar-24          TIME: 09:45:29  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  45000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  SR     38.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   38
 NUMBER OF PRIMITIVE AOS:         238
 NUMBER OF SYMMETRY AOS:          211
 NUMBER OF CONTRACTIONS:           93   (   45Ag  +   48Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     17.039 MB (compressed) written to integral file ( 17.7%)

     Node minimum: 0.262 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      161323.  Node maximum:      165900. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.624E-03 0.367E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.284E-01
         2 0.333E-02 0.333E-02 0.333E-02 0.745E-02 0.745E-02 0.745E-02 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.15      2.80
 REAL TIME  *         4.25 SEC
 DISK USED  *        29.46 MB (local),     1011.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27784108   -3177.27784108     0.00D+00     0.19D+00     0     0       0.00      0.01    start
   2    -3177.27784113      -0.00000005     0.20D-04     0.52D-04     1     0       0.00      0.01    diag
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.01      0.02    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.00      0.02    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.00      0.02    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.02    diag
   7    -3177.27784113      -0.00000000     0.77D-08     0.14D-06     0     0       0.01      0.03    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133264
  RHF One-electron energy           -4396.585097306509
  RHF Two-electron energy            1219.307256173245
  RHF Kinetic energy                 3454.572331531407
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.919731166759

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.20921     1  1  s    0.99995
    2.1     2.00000   -83.10582     1  2  s    1.00054
    3.1     2.00000   -13.95403     1  3  s    0.99701
    4.1     2.00000    -5.58737     1  1  d0   0.99942
    5.1     2.00000    -5.58737     1  1  d2-  0.99791
    6.1     2.00000    -5.58737     1  1  d1+  0.98205
    7.1     2.00000    -5.58737     1  1  d1-  0.98268
    8.1     2.00000    -5.58737     1  1  d2+  0.99807
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99993
    3.2     2.00000   -73.65117     1  1  pz   0.99994
    4.2     2.00000   -10.80369     1  2  pz   1.00005
    5.2     2.00000   -10.80369     1  2  px   1.00005
    6.2     2.00000   -10.80369     1  2  py   1.00005
    7.2     2.00000    -1.09510     1  3  px   0.99983
    8.2     2.00000    -1.09510     1  3  pz   0.99983
    9.2     2.00000    -1.09510     1  3  py   0.99983


 HOMO     10.1    -0.181218 =      -4.9312eV
 LUMO     10.2     0.009844 =       0.2679eV
 LUMO-HOMO         0.191062 =       5.1991eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.18      0.03      2.80
 REAL TIME  *         4.28 SEC
 DISK USED  *        29.90 MB (local),        1.00 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      65 (   29   36)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.101D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.191D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.159D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.779D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.788D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 5 3 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.156D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.363D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.761D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.687D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.922D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.727D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.727D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 
 Number of orbital rotations:  986  ( 90 closed/active, 585 closed/virtual, 0 active/active, 311 active/virtual )
 Total number of variables:    1608
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    5  -3177.13364938   -3177.19666151   -0.06301213    0.05235844 0.00010024 0.00000000  0.23E+01      0.95
   2    8   14    0  -3177.19399490   -3177.19575359   -0.00175870    0.03553032 0.00000711 0.00000000  0.26E+00      1.77
   3    8   14    0  -3177.19575836   -3177.19575862   -0.00000026    0.00026007 0.00000000 0.00000000  0.40E-02      2.59
   4    3    6    0  -3177.19575862   -3177.19575862    0.00000000    0.00000020 0.00000001 0.00000000  0.14E-05      3.11

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.54E-08)
                       Final energy:  -3177.19575862
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -3177.300600347035
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.43670151
 One electron energy                         -4396.17515133
 Two electron energy                          1218.87455098
 Virial ratio                                    1.91977387
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -3177.204138446029
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.52329687
 One electron energy                         -4396.83049638
 Two electron energy                          1219.62635793
 Virial ratio                                    1.91972289
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -3177.204138446000
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.52329688
 One electron energy                         -4396.83049641
 Two electron energy                          1219.62635797
 Virial ratio                                    1.91972289
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -3177.204138445971
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.52329688
 One electron energy                         -4396.83049640
 Two electron energy                          1219.62635795
 Virial ratio                                    1.91972289
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -3177.204138445926
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.52329688
 One electron energy                         -4396.83049642
 Two electron energy                          1219.62635797
 Virial ratio                                    1.91972289
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -3177.204138445918
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.52329687
 One electron energy                         -4396.83049639
 Two electron energy                          1219.62635795
 Virial ratio                                    1.91972289
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -3177.160969130535
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.16512407
 One electron energy                         -4391.71006934
 Two electron energy                          1214.54910021
 Virial ratio                                    1.91980576
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -3177.207198939036
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.63950207
 One electron energy                         -4397.88418475
 Two electron energy                          1220.67698581
 Virial ratio                                    1.91969284
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -3177.207198939016
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.63950207
 One electron energy                         -4397.88418472
 Two electron energy                          1220.67698578
 Virial ratio                                    1.91969284
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -3177.207198939002
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.63950207
 One electron energy                         -4397.88418470
 Two electron energy                          1220.67698576
 Virial ratio                                    1.91969284
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -3177.207198938996
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.63950207
 One electron energy                         -4397.88418470
 Two electron energy                          1220.67698577
 Virial ratio                                    1.91969284
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -3177.207198938960
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.63950206
 One electron energy                         -4397.88418467
 Two electron energy                          1220.67698573
 Virial ratio                                    1.91969284
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -3177.170238834923
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.03843831
 One electron energy                         -4390.91358533
 Two electron energy                          1213.74334650
 Virial ratio                                    1.91984218
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -3177.147880885795
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.31003333
 One electron energy                         -4394.72006572
 Two electron energy                          1217.57218484
 Virial ratio                                    1.91976338
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -3177.147880885703
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.31003333
 One electron energy                         -4394.72006576
 Two electron energy                          1217.57218488
 Virial ratio                                    1.91976338
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -3177.147880885696
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.31003334
 One electron energy                         -4394.72006578
 Two electron energy                          1217.57218489
 Virial ratio                                    1.91976338
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999993073
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.193185949320
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999900
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999952421
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.806822191651
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999970383
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.942005716557
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.057986788536
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000390882
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000046013
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000000662
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999999998
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999340
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999997346
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.646082725965
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000006415
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999898989
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.353928085355
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000051871
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.059137941809
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     2.940868808754
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000596655
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999973635
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999340
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999985921
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000014569
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000009582
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     2.160731324715
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999993685
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000148590
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.839249722994
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999977746
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.998856341634
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.001144402711
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999012463
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999980352
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999998
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000014081
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999986091
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 2 4 1 1   2 3 6 4 5 1 3 5 6 2   4 1 3 2 6 5 4 1 3 5   6 2 4 3 5 2 6 4 1 5
                                        3 6 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   1 2 2 1 3 2 1 3 9 7   8 510 6 4 2 3 1 9 7   810 5 6 4 2 1 3 9 7
                                       10 8 5 6 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.22295     1  1  s    0.99995
    2.1     2.00000   -83.11716     1  2  s    1.00055
    3.1     2.00000   -13.96461     1  3  s    0.99658
    4.1     2.00000    -5.59937     1  1  d2-  1.00009
    5.1     2.00000    -5.59937     1  1  d2+  1.00009
    6.1     2.00000    -5.59937     1  1  d1-  1.00009
    7.1     2.00000    -5.59937     1  1  d0   1.00009
    8.1     2.00000    -5.59937     1  1  d1+  1.00009
    9.1     2.00000    -1.95619     1  4  s    0.99471
   10.1     0.79263    -0.09274     1  5  s    1.13023
   11.1     0.12974     0.06701     1  2  d0   0.90094
   12.1     0.12974     0.06701     1  2  d2-  0.90094
   13.1     0.12974     0.06701     1  2  d1-  0.90094
   14.1     0.12974     0.06701     1  2  d1+  0.90094
   15.1     0.12974     0.06701     1  2  d2+  0.90094
   16.1     0.12596     0.02415     1  5  s   -0.84879    1  7  s   -0.30401    1 10  s    1.60507
    1.2     2.00000   -73.66326     1  1  py   1.00000
    2.2     2.00000   -73.66326     1  1  px   1.00000
    3.2     2.00000   -73.66326     1  1  pz   1.00000
    4.2     2.00000   -10.81535     1  2  py   1.00009
    5.2     2.00000   -10.81535     1  2  px   1.00009
    6.2     2.00000   -10.81535     1  2  pz   1.00009
    7.2     2.00000    -1.10840     1  3  py   0.99528
    8.2     2.00000    -1.10840     1  3  px   0.99528
    9.2     2.00000    -1.10840     1  3  pz   0.99528
   10.2     0.14424     0.02842     1  4  pz   1.04515
   11.2     0.14424     0.02842     1  4  px   1.04515
   12.2     0.14424     0.02842     1  4  py   1.04515
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95838437     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.01232876
 b00000a 000     -0.00447088      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.69494693
 a00000b 000      0.00447088     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.69494693
 b0a0000 000     -0.00000000     -0.00001519     -0.00002509     -0.62282833     -0.00000964      0.00000352     -0.00000000
 a0b0000 000      0.00000000      0.00001519      0.00002509      0.62282833      0.00000964     -0.00000352      0.00000000
 b000a00 000     -0.00000000     -0.62282832      0.00009158      0.00001519      0.00000270     -0.00001923     -0.00000000
 a000b00 000      0.00000000      0.62282832     -0.00009158     -0.00001519     -0.00000270      0.00001923      0.00000000
 b00a000 000      0.00000000     -0.00000270     -0.00001966      0.00000964     -0.62282829     -0.00021668      0.00000000
 a00b000 000     -0.00000000      0.00000270      0.00001966     -0.00000964      0.62282829      0.00021668     -0.00000000
 b0000a0 000     -0.00000000     -0.00005427     -0.45776095      0.00001606      0.00016138     -0.42233874     -0.00000000
 a0000b0 000      0.00000000      0.00005427      0.45776095     -0.00001606     -0.00016138      0.42233874      0.00000000
 ab00000 000     -0.00000000     -0.00007624     -0.42233876      0.00001960     -0.00014593      0.45776093     -0.00000000
 ba00000 000      0.00000000      0.00007624      0.42233876     -0.00001960      0.00014593     -0.45776093      0.00000000
 0000000 020     -0.15872033     -0.00005140     -0.36692955      0.00001432      0.00004034     -0.08265889     -0.02416055
 0000000 002     -0.15872033      0.00000536      0.11188007     -0.00000248     -0.00012846      0.35909974     -0.02416055
 0000000 0ba      0.00000000      0.00000794      0.00001312      0.32573354      0.00000504     -0.00000184      0.00000000
 0000000 0ab     -0.00000000     -0.00000794     -0.00001312     -0.32573354     -0.00000504      0.00000184     -0.00000000
 0000000 ba0      0.00000000      0.32573354     -0.00004790     -0.00000794     -0.00000141      0.00001006      0.00000000
 0000000 ab0     -0.00000000     -0.32573354      0.00004790      0.00000794      0.00000141     -0.00001006     -0.00000000
 0000000 a0b      0.00000000     -0.00000141     -0.00001028      0.00000504     -0.32573352     -0.00011332      0.00000000
 0000000 b0a     -0.00000000      0.00000141      0.00001028     -0.00000504      0.32573352      0.00011332     -0.00000000
 0000000 200     -0.15872033      0.00004604      0.25504948     -0.00001184      0.00008812     -0.27644085     -0.02416055
 0000002 000     -0.01513342      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.14371592
 0ab0000 000      0.00000000      0.00000134      0.00000221      0.05481862      0.00000085     -0.00000031     -0.00000000
 0ba0000 000     -0.00000000     -0.00000134     -0.00000221     -0.05481862     -0.00000085      0.00000031      0.00000000
 0002000 000     -0.03362729      0.00000749      0.05347846     -0.00000209     -0.00000588      0.01204719      0.04804179
 0000200 000     -0.03362729     -0.00000078     -0.01630606      0.00000036      0.00001872     -0.05233730      0.04804179
 
 Energy:      -3177.30060035  -3177.20413845  -3177.20413845  -3177.20413845  -3177.20413845  -3177.20413845  -3177.16096913
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000
 a00a000 000      0.99996652     -0.00000484      0.00015183      0.00001642     -0.00003885     -0.00000000     -0.00000000
 a000a00 000      0.00003888      0.00001946     -0.00015834      0.00004107      0.99996651      0.00000000     -0.00000000
 a0a0000 000     -0.00001635      0.00006827     -0.00049403      0.99996640     -0.00004115      0.00000000      0.00000000
 a0000a0 000      0.00000227      0.99982356      0.01690847     -0.00005991     -0.00001677      0.00000000      0.00000000
 aa00000 000     -0.00015189     -0.01690843      0.99982342      0.00049512      0.00015863     -0.00000000      0.00000000
 0000000 a0a      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.88004982
 0000000 0aa      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000130
 0000000 aa0      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00002261
 00a00a0 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000063
 0a00a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000945
 0a0a000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.36784152
 00a0a00 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.21237340
 0000aa0 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000546
 000a0a0 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.21237340
 000aa00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000031
 00aa000 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000546
 
 Energy:      -3177.20719894  -3177.20719894  -3177.20719894  -3177.20719894  -3177.20719894  -3177.17023883  -3177.14788089

 State:                8               9
 a00000a 000      0.00000000      0.00000000
 a00a000 000      0.00000000     -0.00000000
 a000a00 000     -0.00000000     -0.00000000
 a0a0000 000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000      0.00000000
 aa00000 000     -0.00000000     -0.00000000
 0000000 a0a      0.00000130      0.00002261
 0000000 0aa      0.88004982     -0.00010442
 0000000 aa0      0.00010442      0.88004982
 00a00a0 000      0.42474680     -0.00005040
 0a00a00 000     -0.00004365     -0.36784152
 0a0a000 000     -0.00000054     -0.00000945
 00a0a00 000      0.00000031      0.00000546
 0000aa0 000     -0.00002520     -0.21237340
 000a0a0 000      0.00000031      0.00000546
 000aa00 000      0.21237340     -0.00002520
 00aa000 000      0.00002520      0.21237340
 
 Energy:      -3177.14788089  -3177.14788089
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.54      2.36      0.03      2.80
 REAL TIME  *         7.92 SEC
 DISK USED  *        50.27 MB (local),        1.60 GB (total)
 SF USED    *        51.63 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.300600  -0.0
    -3177.204138   6.0
    -3177.204138   6.0
    -3177.204138   6.0
    -3177.204138   6.0
    -3177.204138   6.0
    -3177.160969  -0.0
    -3177.207199   6.0
    -3177.207199   6.0
    -3177.207199   6.0
    -3177.207199   6.0
    -3177.207199   6.0
    -3177.170239  -0.0
    -3177.147881   2.0
    -3177.147881   2.0
    -3177.147881   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 38
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.10 sec, npass=  1  Memory used:   1.01 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.30060035
     2     -3177.20413845
     3     -3177.20413845
     4     -3177.20413845
     5     -3177.20413845
     6     -3177.20413845
     7     -3177.16096913

 Number of blocks in overlap matrix:   694   Smallest eigenvalue:  0.91D+00
 Number of N-2 electron functions:     748
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1037888
 Number of doubly external configurations:        793233
 Total number of contracted configurations:      1869237
 Total number of uncontracted configurations:    7137666

 Diagonal Coupling coefficients finished.               Storage:20307871 words, CPU-Time:      4.93 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1082838 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.30060035    -0.00000000    -0.27184991  0.29D-01  0.39D-01     8.91
    1     2     2     1.00000000     0.00000000 -3177.20413845    -0.00000000    -0.27592122  0.31D-01  0.42D-01     8.91
    1     3     3     1.00000000     0.00000000 -3177.20413845     0.00000000    -0.27561517  0.31D-01  0.42D-01     8.91
    1     4     4     1.00000000     0.00000000 -3177.20413845     0.00000000    -0.27580203  0.31D-01  0.42D-01     8.91
    1     5     5     1.00000000     0.00000000 -3177.20413845     0.00000000    -0.27587126  0.31D-01  0.42D-01     8.91
    1     6     6     1.00000000     0.00000000 -3177.20413845    -0.00000000    -0.27559935  0.31D-01  0.42D-01     8.91
    1     7     7     1.00000000     0.00000000 -3177.16096913     0.00000000    -0.26990885  0.42D-01  0.37D-01     8.91
    2     1     1     1.05736604    -0.26313864 -3177.56373899    -0.26313864    -0.00468822  0.14D-02  0.46D-03    51.06
    2     2     2     1.06105536    -0.26198270 -3177.46612115    -0.26198270    -0.00450735  0.14D-02  0.52D-03    51.06
    2     3     3     1.06114614    -0.26196905 -3177.46610750    -0.26196905    -0.00452070  0.15D-02  0.52D-03    51.06
    2     4     4     1.06122087    -0.26193535 -3177.46607379    -0.26193535    -0.00456636  0.15D-02  0.53D-03    51.06
    2     5     5     1.06126861    -0.26192690 -3177.46606534    -0.26192690    -0.00457394  0.15D-02  0.53D-03    51.06
    2     6     6     1.06128694    -0.26192454 -3177.46606298    -0.26192454    -0.00457771  0.15D-02  0.53D-03    51.06
    2     7     7     1.06672797    -0.26117978 -3177.42214891    -0.26117978    -0.00548066  0.25D-02  0.58D-03    51.06
    3     1     1     1.05833307    -0.26788924 -3177.56848959    -0.00475060    -0.00014975  0.36D-04  0.21D-04    91.46
    3     2     2     1.06119966    -0.26657270 -3177.47071114    -0.00459000    -0.00014554  0.39D-04  0.25D-04    91.46
    3     3     3     1.06119240    -0.26657233 -3177.47071077    -0.00460328    -0.00014567  0.39D-04  0.25D-04    91.46
    3     4     4     1.06120130    -0.26656981 -3177.47070826    -0.00463446    -0.00014874  0.40D-04  0.25D-04    91.46
    3     5     5     1.06120257    -0.26656967 -3177.47070812    -0.00464277    -0.00014877  0.40D-04  0.25D-04    91.46
    3     6     6     1.06120524    -0.26656966 -3177.47070811    -0.00464513    -0.00014886  0.40D-04  0.25D-04    91.46
    3     7     7     1.06391804    -0.26654546 -3177.42751459    -0.00536568    -0.00020601  0.61D-04  0.34D-04    91.46
    4     1     1     1.05893335    -0.26805272 -3177.56865307    -0.00016348    -0.00000835  0.40D-05  0.78D-06   131.91
    4     2     2     1.06193363    -0.26673744 -3177.47087589    -0.00016474    -0.00001225  0.10D-04  0.98D-06   131.91
    4     3     3     1.06193358    -0.26673741 -3177.47087585    -0.00016508    -0.00001227  0.10D-04  0.98D-06   131.91
    4     4     4     1.06193319    -0.26673710 -3177.47087555    -0.00016729    -0.00001250  0.10D-04  0.10D-05   131.91
    4     5     5     1.06193287    -0.26673707 -3177.47087552    -0.00016740    -0.00001251  0.10D-04  0.10D-05   131.91
    4     6     6     1.06193335    -0.26673704 -3177.47087549    -0.00016738    -0.00001253  0.10D-04  0.10D-05   131.91
    4     7     7     1.06445096    -0.26676381 -3177.42773294    -0.00021835    -0.00001196  0.65D-05  0.14D-05   131.91
    5     1     1     1.05914910    -0.26806267 -3177.56866302    -0.00000995    -0.00000041  0.19D-06  0.43D-07   170.77
    5     2     2     1.06222771    -0.26675324 -3177.47089169    -0.00001580    -0.00000119  0.60D-06  0.12D-06   170.77
    5     3     3     1.06222734    -0.26675324 -3177.47089168    -0.00001583    -0.00000119  0.61D-06  0.12D-06   170.77
    5     4     4     1.06222609    -0.26675319 -3177.47089163    -0.00001609    -0.00000123  0.64D-06  0.12D-06   170.77
    5     5     5     1.06222606    -0.26675319 -3177.47089163    -0.00001611    -0.00000123  0.64D-06  0.12D-06   170.77
    5     6     6     1.06222608    -0.26675318 -3177.47089163    -0.00001614    -0.00000124  0.65D-06  0.12D-06   170.77
    5     7     7     1.06454572    -0.26677825 -3177.42774738    -0.00001443    -0.00000078  0.51D-06  0.95D-07   170.77
    6     1     1     1.05917978    -0.26806314 -3177.56866349    -0.00000047    -0.00000002  0.82D-08  0.38D-08   209.56
    6     2     2     1.06228289    -0.26675474 -3177.47089318    -0.00000149    -0.00000011  0.47D-07  0.13D-07   209.56
    6     3     3     1.06228259    -0.26675474 -3177.47089318    -0.00000150    -0.00000012  0.47D-07  0.13D-07   209.56
    6     4     4     1.06228234    -0.26675473 -3177.47089318    -0.00000154    -0.00000012  0.49D-07  0.14D-07   209.56
    6     5     5     1.06228212    -0.26675473 -3177.47089318    -0.00000154    -0.00000012  0.49D-07  0.14D-07   209.56
    6     6     6     1.06228201    -0.26675473 -3177.47089318    -0.00000155    -0.00000012  0.49D-07  0.14D-07   209.56
    6     7     7     1.06456048    -0.26677917 -3177.42774830    -0.00000092    -0.00000007  0.30D-07  0.14D-07   209.56
    7     1     1     1.05918706    -0.26806317 -3177.56866351    -0.00000003    -0.00000000  0.82D-09  0.23D-09   248.40
    7     2     2     1.06229279    -0.26675487 -3177.47089332    -0.00000013    -0.00000001  0.71D-08  0.11D-08   248.40
    7     3     3     1.06229282    -0.26675487 -3177.47089332    -0.00000013    -0.00000001  0.72D-08  0.11D-08   248.40
    7     4     4     1.06229274    -0.26675487 -3177.47089331    -0.00000014    -0.00000001  0.75D-08  0.12D-08   248.40
    7     5     5     1.06229276    -0.26675487 -3177.47089331    -0.00000014    -0.00000001  0.75D-08  0.12D-08   248.40
    7     6     6     1.06229273    -0.26675487 -3177.47089331    -0.00000014    -0.00000001  0.75D-08  0.12D-08   248.40
    7     7     7     1.06457029    -0.26677925 -3177.42774838    -0.00000008    -0.00000001  0.55D-08  0.14D-08   248.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  12.0%
 S   6.5%  37.6%
 P   0.8%  23.6%   9.4%

 Initialization:   2.2%
 Other:            7.9%

 Total CPU:      248.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000\222000          -0.0424989   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9460020
 2222222000000222000           0.9347082  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0359983
 222222/0\0000222000           0.0000000   0.0000000  -0.0000000   0.8710520   0.0000000   0.0000000  -0.0000000
 222222/00\000222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.8710520  -0.0000000  -0.0000000
 222222/000\00222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.8710520   0.0000000
 222222/\00000222000          -0.0000000   0.8696773   0.0489197  -0.0000000   0.0000000   0.0000000   0.0000000
 222222/0000\0222000           0.0000000  -0.0489197   0.8696773   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222220000000222/\0           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.4105219   0.0000000
 22222200000002220/\           0.0000000   0.0000000  -0.0000000  -0.4105218   0.0000000   0.0000000  -0.0000000
 2222220000000222/0\           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4105218  -0.0000000  -0.0000000
 2222220000000222200          -0.1379951  -0.3346604  -0.0188248  -0.0000000   0.0000000   0.0000000  -0.0392892
 2222220000000222002          -0.1379950   0.1510274   0.2992368   0.0000000   0.0000000   0.0000000  -0.0392891
 2222220000000222020          -0.1379950   0.1836329  -0.2804120   0.0000000  -0.0000000  -0.0000000  -0.0392891
 2222220000002222000          -0.0105629  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.1566931
 2222220/\0000222000           0.0000000   0.0000000   0.0000000   0.0748361  -0.0000000   0.0000000  -0.0000000
 2222220/000\0222000          -0.0000000  -0.0042029   0.0747182  -0.0000000  -0.0000000  -0.0000000   0.0000000
 222222000/0\0222000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0648100  -0.0000000  -0.0000000
 222222000/\00222000          -0.0000000  -0.0000000  -0.0000000  -0.0648100   0.0000000  -0.0000000   0.0000000
 2222220000/\0222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0648099  -0.0000000
 22222200/\000222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0648099  -0.0000000
 22222200/0\00222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0648099   0.0000000   0.0000000
 2222220200000222000          -0.0342204  -0.0528340  -0.0029719  -0.0000000  -0.0000000  -0.0000000   0.0426452
 2222220000020222000          -0.0342204   0.0528338   0.0029720  -0.0000000  -0.0000000   0.0000000   0.0426452
 2222220020000222000          -0.0342204   0.0528338   0.0029719  -0.0000000   0.0000000   0.0000000   0.0426452

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967162   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.049992
 2          -0.000000    0.000000   -0.694287   -0.000000    0.000000    0.673622   -0.000000
 3           0.000000   -0.000000    0.673622    0.000000   -0.000000    0.694287    0.000000
 4           0.000000    0.000000   -0.000000    0.967368    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.967368    0.000000   -0.000000
 6           0.000000    0.967368    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 7           0.054391    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.964901

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968451   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.002257
 2          -0.000000    0.967368    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.967368    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.967368    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.967368   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967368   -0.000000
 7           0.002257    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.966430

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   397       0.00005282    -1.67739351       2222222000000222000             

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   282       0.00081890     2.59186133       2222220000000222200             
  3316       0.00035920    -4.01989449       2222221100000222000             

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   280       0.00065471     2.07220611       2222220000000222002             
   281       0.00057493     1.81968403       2222220000000222020             
  3216       0.00035920    -4.01989563       2222221000010222000             

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2657       0.00123221     3.90006396       2222220000000222011             
  3282       0.00036033    -4.03259820       2222221010000222000             

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2658       0.00123221     3.90006507       2222220000000222101             
  3254       0.00036033    -4.03259842       2222221001000222000             

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2659       0.00123221     3.90005862       2222220000000222110             
  3232       0.00036033    -4.03259251       2222221000100222000             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96716240 (fixed)   0.96880348 (relaxed)   0.96845092 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00663517   -0.01235668   -0.20344856
 Singles      0.02406059   -0.06658929   -0.06850323
 Pairs        0.03551918    0.01366737    0.00388862
 Total        1.06621494   -0.06527859   -0.26806317
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.30019397
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.10009055
 One electron energy                -4396.04726408
 Two electron energy                 1218.47860057
 Virial quotient                       -0.91994111
 Correlation energy                    -0.26846954
 !MRCI STATE 1.1 Energy             -3177.568663513995

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58644021 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58623191 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58644021 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58555002 (Pople, fixed reference)
 Cluster corrected energies         -3177.58534140 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58555002 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.69428666 (fixed)   0.96829029 (relaxed)   0.96736805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594049   -0.00901890   -0.19117124
 Singles      0.02478923   -0.06405331   -0.06613024
 Pairs        0.03787360    0.00000000   -0.00945339
 Total        1.06860333   -0.07307220   -0.26675487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20413845
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.00699885
 One electron energy                -4396.37491733
 Two electron energy                 1218.90402401
 Virial quotient                       -0.91993760
 Correlation energy                    -0.26675487
 !MRCI STATE 2.1 Energy             -3177.470893315325

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48919359 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48865085 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48919359 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48831173 (Pople, fixed reference)
 Cluster corrected energies         -3177.48776657 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48831173 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.69428665 (fixed)   0.96829028 (relaxed)   0.96736803 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594049   -0.00901890   -0.19117130
 Singles      0.02478920   -0.06405323   -0.06613022
 Pairs        0.03787367   -0.00000000   -0.00945335
 Total        1.06860336   -0.07307213   -0.26675487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20413845
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.00698779
 One electron energy                -4396.37490412
 Two electron energy                 1218.90401080
 Virial quotient                       -0.91993760
 Correlation energy                    -0.26675487
 !MRCI STATE 3.1 Energy             -3177.470893315208

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48919360 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48865086 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48919360 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48831173 (Pople, fixed reference)
 Cluster corrected energies         -3177.48776658 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48831173 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96736808 (fixed)   0.96829031 (relaxed)   0.96736808 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594048   -0.00901890   -0.19117122
 Singles      0.02478908   -0.06405332   -0.06613019
 Pairs        0.03787371    0.00000000   -0.00945345
 Total        1.06860327   -0.07307222   -0.26675487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20413845
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.00696017
 One electron energy                -4396.37485997
 Two electron energy                 1218.90396666
 Virial quotient                       -0.91993761
 Correlation energy                    -0.26675487
 !MRCI STATE 4.1 Energy             -3177.470893314667

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48919357 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48865083 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48919357 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48831171 (Pople, fixed reference)
 Cluster corrected energies         -3177.48776656 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48831171 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96736807 (fixed)   0.96829031 (relaxed)   0.96736807 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594048   -0.00901889   -0.19117124
 Singles      0.02478908   -0.06405331   -0.06613019
 Pairs        0.03787372    0.00000000   -0.00945344
 Total        1.06860328   -0.07307220   -0.26675487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20413845
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.00695864
 One electron energy                -4396.37485796
 Two electron energy                 1218.90396464
 Virial quotient                       -0.91993761
 Correlation energy                    -0.26675487
 !MRCI STATE 5.1 Energy             -3177.470893314651

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48919357 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48865084 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48919357 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48831171 (Pople, fixed reference)
 Cluster corrected energies         -3177.48776656 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48831171 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96736808 (fixed)   0.96829032 (relaxed)   0.96736808 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594047   -0.00901889   -0.19117125
 Singles      0.02478907   -0.06405330   -0.06613019
 Pairs        0.03787372    0.00000000   -0.00945343
 Total        1.06860325   -0.07307219   -0.26675487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20413845
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.00695502
 One electron energy                -4396.37485309
 Two electron energy                 1218.90395978
 Virial quotient                       -0.91993761
 Correlation energy                    -0.26675487
 !MRCI STATE 6.1 Energy             -3177.470893314628

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48919357 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48865083 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48919357 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48831171 (Pople, fixed reference)
 Cluster corrected energies         -3177.48776656 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48831171 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96490098 (fixed)   0.96669149 (relaxed)   0.96643010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00573778   -0.01141808   -0.01254788
 Singles      0.02977925   -0.06806376   -0.07098991
 Pairs        0.03516153   -0.18681146   -0.18324146
 Total        1.07067856   -0.26629331   -0.26677925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16137551
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.91371739
 One electron energy                -4391.42877676
 Two electron energy                 1214.00102837
 Virial quotient                       -0.91994995
 Correlation energy                    -0.26637288
 !MRCI STATE 7.1 Energy             -3177.427748382388

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44657523 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44642102 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44657523 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44569898 (Pople, fixed reference)
 Cluster corrected energies         -3177.44554336 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44569898 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      106.17       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       301.74    296.18      2.36      0.03      2.80
 REAL TIME  *       316.47 SEC
 DISK USED  *       155.75 MB (local),        4.69 GB (total)
 SF USED    *         1.12 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58644021  AU                              
 SETTING HLSDIAG(2)     =     -3177.48919359  AU                              
 SETTING HLSDIAG(3)     =     -3177.48919360  AU                              
 SETTING HLSDIAG(4)     =     -3177.48919357  AU                              
 SETTING HLSDIAG(5)     =     -3177.48919357  AU                              
 SETTING HLSDIAG(6)     =     -3177.48919357  AU                              
 SETTING HLSDIAG(7)     =     -3177.44657523  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 38
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.20719894
     2     -3177.20719894
     3     -3177.20719894
     4     -3177.20719894
     5     -3177.20719894
     6     -3177.17023883
     7     -3177.14788089
     8     -3177.14788089
     9     -3177.14788089

 Number of blocks in overlap matrix:   856   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     910
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1593566
 Number of doubly external configurations:        965086
 Total number of contracted configurations:      2618985
 Total number of uncontracted configurations:   10795554

 Diagonal Coupling coefficients finished.               Storage:28407271 words, CPU-Time:     11.54 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1122195 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.20719894     0.00000000    -0.28410050  0.35D-01  0.43D-01    17.60
    1     2     2     1.00000000     0.00000000 -3177.20719894     0.00000000    -0.28406741  0.35D-01  0.43D-01    17.60
    1     3     3     1.00000000     0.00000000 -3177.20719894    -0.00000000    -0.28396066  0.35D-01  0.43D-01    17.60
    1     4     4     1.00000000     0.00000000 -3177.20719894    -0.00000000    -0.28408871  0.35D-01  0.43D-01    17.60
    1     5     5     1.00000000     0.00000000 -3177.20719894    -0.00000000    -0.28410275  0.35D-01  0.43D-01    17.60
    1     6     6     1.00000000     0.00000000 -3177.17023883     0.00000000    -0.26431387  0.35D-01  0.35D-01    17.60
    1     7     7     1.00000000     0.00000000 -3177.14788089     0.00000000    -0.26507507  0.27D-01  0.38D-01    17.60
    1     8     8     1.00000000     0.00000000 -3177.14788089     0.00000000    -0.26506388  0.27D-01  0.38D-01    17.60
    1     9     9     1.00000000     0.00000000 -3177.14788089     0.00000000    -0.26505414  0.27D-01  0.38D-01    17.60
    2     1     1     1.06366316    -0.26672182 -3177.47392076    -0.26672182    -0.00484683  0.15D-02  0.51D-03   100.53
    2     2     2     1.06368003    -0.26669892 -3177.47389786    -0.26669892    -0.00487801  0.15D-02  0.52D-03   100.53
    2     3     3     1.06368412    -0.26669502 -3177.47389396    -0.26669502    -0.00488098  0.15D-02  0.52D-03   100.53
    2     4     4     1.06369823    -0.26669004 -3177.47388898    -0.26669004    -0.00488556  0.15D-02  0.52D-03   100.53
    2     5     5     1.06369802    -0.26668858 -3177.47388752    -0.26668858    -0.00488685  0.15D-02  0.52D-03   100.53
    2     6     6     1.06279180    -0.26016274 -3177.43040158    -0.26016274    -0.00395826  0.10D-02  0.38D-03   100.53
    2     7     7     1.05559649    -0.25536854 -3177.40324943    -0.25536854    -0.00431376  0.13D-02  0.46D-03   100.53
    2     8     8     1.05562241    -0.25536543 -3177.40324631    -0.25536543    -0.00431536  0.13D-02  0.46D-03   100.53
    2     9     9     1.05562563    -0.25535906 -3177.40323995    -0.25535906    -0.00432370  0.13D-02  0.46D-03   100.53
    3     1     1     1.06352089    -0.27173225 -3177.47893119    -0.00501043    -0.00012874  0.37D-04  0.18D-04   180.51
    3     2     2     1.06352200    -0.27173102 -3177.47892996    -0.00503210    -0.00013015  0.37D-04  0.18D-04   180.51
    3     3     3     1.06351969    -0.27173091 -3177.47892985    -0.00503589    -0.00013038  0.37D-04  0.18D-04   180.51
    3     4     4     1.06351966    -0.27173062 -3177.47892956    -0.00504058    -0.00013058  0.37D-04  0.18D-04   180.51
    3     5     5     1.06351944    -0.27173059 -3177.47892952    -0.00504201    -0.00013061  0.37D-04  0.18D-04   180.51
    3     6     6     1.06424875    -0.26434080 -3177.43457964    -0.00417806    -0.00010266  0.27D-04  0.12D-04   180.51
    3     7     7     1.05487323    -0.25974811 -3177.40762900    -0.00437957    -0.00011583  0.23D-04  0.19D-04   180.51
    3     8     8     1.05487496    -0.25974690 -3177.40762778    -0.00438147    -0.00011611  0.23D-04  0.19D-04   180.51
    3     9     9     1.05487333    -0.25974653 -3177.40762742    -0.00438747    -0.00011658  0.24D-04  0.20D-04   180.51
    4     1     1     1.06440528    -0.27188688 -3177.47908582    -0.00015463    -0.00001022  0.87D-05  0.67D-06   260.51
    4     2     2     1.06440500    -0.27188680 -3177.47908574    -0.00015578    -0.00001024  0.88D-05  0.67D-06   260.51
    4     3     3     1.06440499    -0.27188680 -3177.47908574    -0.00015589    -0.00001024  0.87D-05  0.67D-06   260.51
    4     4     4     1.06440917    -0.27188679 -3177.47908573    -0.00015617    -0.00001006  0.87D-05  0.64D-06   260.51
    4     5     5     1.06440485    -0.27188663 -3177.47908556    -0.00015604    -0.00001019  0.87D-05  0.67D-06   260.51
    4     6     6     1.06482622    -0.26445880 -3177.43469764    -0.00011800    -0.00000524  0.29D-05  0.47D-06   260.51
    4     7     7     1.05517939    -0.25987490 -3177.40775578    -0.00012678    -0.00000590  0.34D-05  0.65D-06   260.51
    4     8     8     1.05518042    -0.25987403 -3177.40775491    -0.00012713    -0.00000593  0.34D-05  0.64D-06   260.51
    4     9     9     1.05518008    -0.25987401 -3177.40775490    -0.00012748    -0.00000595  0.34D-05  0.65D-06   260.51
    5     1     1     1.06482921    -0.27190050 -3177.47909944    -0.00001362    -0.00000085  0.34D-06  0.10D-06   337.40
    5     2     2     1.06482900    -0.27190044 -3177.47909938    -0.00001364    -0.00000085  0.34D-06  0.10D-06   337.40
    5     3     3     1.06482897    -0.27190044 -3177.47909938    -0.00001364    -0.00000085  0.34D-06  0.10D-06   337.40
    5     4     4     1.06482862    -0.27190021 -3177.47909915    -0.00001342    -0.00000085  0.34D-06  0.10D-06   337.40
    5     5     5     1.06482924    -0.27190016 -3177.47909910    -0.00001353    -0.00000084  0.32D-06  0.10D-06   337.40
    5     6     6     1.06503088    -0.26446481 -3177.43470365    -0.00000601    -0.00000024  0.97D-07  0.30D-07   337.40
    5     7     7     1.05519102    -0.25988182 -3177.40776271    -0.00000693    -0.00000028  0.11D-06  0.37D-07   337.40
    5     8     8     1.05519097    -0.25988099 -3177.40776188    -0.00000696    -0.00000028  0.11D-06  0.37D-07   337.40
    5     9     9     1.05519089    -0.25988099 -3177.40776188    -0.00000698    -0.00000028  0.11D-06  0.37D-07   337.40
    6     1     1     1.06488747    -0.27190158 -3177.47910052    -0.00000109    -0.00000006  0.31D-07  0.56D-08   414.36
    6     2     2     1.06488734    -0.27190153 -3177.47910047    -0.00000109    -0.00000006  0.31D-07  0.56D-08   414.36
    6     3     3     1.06488732    -0.27190153 -3177.47910047    -0.00000109    -0.00000006  0.31D-07  0.56D-08   414.36
    6     4     4     1.06488675    -0.27190129 -3177.47910023    -0.00000108    -0.00000006  0.31D-07  0.56D-08   414.36
    6     5     5     1.06488661    -0.27190122 -3177.47910016    -0.00000107    -0.00000006  0.31D-07  0.54D-08   414.36
    6     6     6     1.06506690    -0.26446509 -3177.43470392    -0.00000028    -0.00000002  0.15D-07  0.14D-08   414.36
    6     7     7     1.05519543    -0.25988215 -3177.40776304    -0.00000032    -0.00000002  0.47D-08  0.22D-08   414.36
    6     8     8     1.05519517    -0.25988132 -3177.40776220    -0.00000033    -0.00000002  0.47D-08  0.22D-08   414.36
    6     9     9     1.05519522    -0.25988132 -3177.40776220    -0.00000033    -0.00000002  0.47D-08  0.22D-08   414.36
    7     1     1     1.06490133    -0.27190166 -3177.47910060    -0.00000007    -0.00000000  0.29D-08  0.39D-09   476.58
    7     2     2     1.06490124    -0.27190160 -3177.47910054    -0.00000007    -0.00000000  0.29D-08  0.39D-09   476.58
    7     3     3     1.06490124    -0.27190160 -3177.47910054    -0.00000007    -0.00000000  0.29D-08  0.39D-09   476.58
    7     4     4     1.06490056    -0.27190137 -3177.47910030    -0.00000007    -0.00000000  0.29D-08  0.39D-09   476.58
    7     5     5     1.06490041    -0.27190130 -3177.47910024    -0.00000007    -0.00000000  0.28D-08  0.38D-09   476.58
    7     6     6     1.06507441    -0.26446511 -3177.43470395    -0.00000002    -0.00000000  0.11D-08  0.13D-09   476.58
    7     7     7     1.05519543    -0.25988215 -3177.40776304    -0.00000000    -0.00000002  0.47D-08  0.22D-08   476.58
    7     8     8     1.05519517    -0.25988132 -3177.40776220    -0.00000000    -0.00000002  0.47D-08  0.22D-08   476.58
    7     9     9     1.05519522    -0.25988132 -3177.40776220    -0.00000000    -0.00000002  0.47D-08  0.22D-08   476.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  11.3%
 S   6.4%  37.8%
 P   0.8%  24.1%  11.0%

 Initialization:   2.5%
 Other:            6.2%

 Total CPU:      476.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222//00000222000          -0.0000000   0.0000000   0.0000000  -0.0003228   0.9665397   0.0000042  -0.0000000   0.0000000
                              -0.0000000
 222222/0000/0222000          -0.0000000   0.0000000   0.0000000   0.9665396   0.0003228   0.0000000   0.0000000  -0.0000000
                               0.0000000
 222222/000/00222000           0.0000000  -0.0000000   0.9665394  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.0000011
 222222/00/000222000           0.0000000   0.9665394   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000011
                              -0.0000000
 222222/0/0000222000           0.9665394  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                               0.0000000
 222222/00000/222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000037   0.9665176  -0.0000000  -0.0000000
                              -0.0000000
 22222200000002220//          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8483759  -0.0000000
                              -0.0000000
 2222220000000222//0          -0.0000000   0.0000000   0.0000008  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                               0.8483753
 2222220000000222/0/           0.0000000   0.0000008  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8483753
                               0.0000000
 22222200/00/0222000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.4230240  -0.0000000
                               0.0000000
 2222220/0/000222000           0.0000000  -0.0000049  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.3663498
                               0.0000000
 2222220/00/00222000          -0.0000000   0.0000000  -0.0000049  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.3663498
 22222200//000222000           0.0000000  -0.0000000   0.0000002   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.2115165
 22222200/0/00222000          -0.0000000   0.0000002   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.2115160
                              -0.0000000
 222222000/0/0222000          -0.0000000  -0.0000074   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.2115156
                              -0.0000000
 222222000//00222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.2115150  -0.0000000
                               0.0000000
 2222220000//0222000          -0.0000000   0.0000000   0.0000075  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                              -0.2115147

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222000000/222000  28.1    -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0567145   0.0000000  -0.0000000
                               0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000   -0.000000    0.966461    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.966461   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000000    0.000000
 3           0.000000    0.000000    0.000000    0.000000    0.966461    0.000000   -0.000000   -0.000000    0.000001
 4          -0.000000    0.966461   -0.000323    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000    0.000323    0.966461    0.000000    0.000000   -0.000004   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000004   -0.000000   -0.000000    0.966518    0.000000    0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.971211    0.000000
 8          -0.000001   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.971212   -0.000000    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.000000    0.971212

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966461   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.966461   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.966461    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.966461    0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.966462    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.966518    0.000000    0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.971211    0.000000    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.971212    0.000000
 9           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.971212

 Energy contributions of internal configurations for state 7
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00004018     1.33972583       2222220000000222011             
  2135       0.00011036    -1.07165695       2222220010010222000             

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00004019     1.33995378       2222220000000222101             

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00004019     1.33993288       2222220000000222110             


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96646116 (fixed)   0.96655564 (relaxed)   0.96646116 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536050   -0.01051768   -0.19346877
 Singles      0.02708648   -0.06622963   -0.06874179
 Pairs        0.03816275    0.00000000   -0.00969109
 Total        1.07060973   -0.07674731   -0.27190166
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20719894
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.03958991
 One electron energy                -4397.24747931
 Two electron energy                 1219.76837872
 Virial quotient                       -0.91993129
 Correlation energy                    -0.27190166
 !MRCI STATE 1.1 Energy             -3177.479100596350

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49829950 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49824260 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49829950 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49714803 (Pople, fixed reference)
 Cluster corrected energies         -3177.49709150 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49714803 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96646121 (fixed)   0.96655569 (relaxed)   0.96646121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536048   -0.01051765   -0.19346877
 Singles      0.02708638   -0.06622960   -0.06874174
 Pairs        0.03816276   -0.00000000   -0.00969109
 Total        1.07060962   -0.07674725   -0.27190160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20719894
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.03958998
 One electron energy                -4397.24747992
 Two electron energy                 1219.76837938
 Virial quotient                       -0.91993129
 Correlation energy                    -0.27190160
 !MRCI STATE 2.1 Energy             -3177.479100542210

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49829941 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49824251 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49829941 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49714794 (Pople, fixed reference)
 Cluster corrected energies         -3177.49709142 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49714794 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96646121 (fixed)   0.96655569 (relaxed)   0.96646121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536048   -0.01051765   -0.19346860
 Singles      0.02708638   -0.06622960   -0.06874174
 Pairs        0.03816277   -0.00000018   -0.00969126
 Total        1.07060962   -0.07674743   -0.27190160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20719894
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.03958984
 One electron energy                -4397.24747960
 Two electron energy                 1219.76837906
 Virial quotient                       -0.91993129
 Correlation energy                    -0.27190160
 !MRCI STATE 3.1 Energy             -3177.479100542085

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49829941 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49824251 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49829941 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49714794 (Pople, fixed reference)
 Cluster corrected energies         -3177.49709142 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49714794 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96646142 (fixed)   0.96655595 (relaxed)   0.96646147 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536058   -0.01051779   -0.19346921
 Singles      0.02708560   -0.06622903   -0.06874104
 Pairs        0.03816286    0.00000000   -0.00969112
 Total        1.07060905   -0.07674682   -0.27190137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20719894
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.03958966
 One electron energy                -4397.24747328
 Two electron energy                 1219.76837298
 Virial quotient                       -0.91993129
 Correlation energy                    -0.27190137
 !MRCI STATE 4.1 Energy             -3177.479100304865

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49829900 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49824209 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49829900 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49714754 (Pople, fixed reference)
 Cluster corrected energies         -3177.49709100 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49714754 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96646146 (fixed)   0.96655599 (relaxed)   0.96646151 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536064   -0.01051782   -0.19346929
 Singles      0.02708547   -0.06622891   -0.06874090
 Pairs        0.03816284    0.00000000   -0.00969111
 Total        1.07060895   -0.07674672   -0.27190130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20719894
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.03958936
 One electron energy                -4397.24747864
 Two electron energy                 1219.76837840
 Virial quotient                       -0.91993129
 Correlation energy                    -0.27190130
 !MRCI STATE 5.1 Energy             -3177.479100235201

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49829890 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49824199 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49829890 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49714744 (Pople, fixed reference)
 Cluster corrected energies         -3177.49709091 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49714744 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96651762 (fixed)   0.96651762 (relaxed)   0.96651762 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00507969   -0.01125959   -0.18531349
 Singles      0.03096398   -0.06743327   -0.07064393
 Pairs        0.03444100    0.00000000   -0.00850769
 Total        1.07048466   -0.07869286   -0.26446511
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.17023883
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.87863752
 One electron energy                -4391.10478684
 Two electron energy                 1213.67008290
 Virial quotient                       -0.91996131
 Correlation energy                    -0.26446511
 !MRCI STATE 6.1 Energy             -3177.434703947099

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.45334468 (Davidson, fixed reference)
 Cluster corrected energies         -3177.45334468 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.45334468 (Davidson, rotated reference)

 Cluster corrected energies         -3177.45222492 (Pople, fixed reference)
 Cluster corrected energies         -3177.45222492 (Pople, relaxed reference)
 Cluster corrected energies         -3177.45222492 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97121131 (fixed)   0.97130302 (relaxed)   0.97121131 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00470748   -0.00980014   -0.18844887
 Singles      0.01968055   -0.06131907   -0.06266061
 Pairs        0.03577472   -0.00000000   -0.00877266
 Total        1.06016275   -0.07111920   -0.25988215
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14788089
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.91312712
 One electron energy                -4394.06787477
 Two electron energy                 1216.66011174
 Virial quotient                       -0.91994432
 Correlation energy                    -0.25988215
 !MRCI STATE 7.1 Energy             -3177.407763035369

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.42339826 (Davidson, fixed reference)
 Cluster corrected energies         -3177.42334623 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.42339826 (Davidson, rotated reference)

 Cluster corrected energies         -3177.42233754 (Pople, fixed reference)
 Cluster corrected energies         -3177.42228671 (Pople, relaxed reference)
 Cluster corrected energies         -3177.42233754 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97121183 (fixed)   0.97130357 (relaxed)   0.97121183 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00470665   -0.00979944   -0.18844821
 Singles      0.01968016   -0.06131893   -0.06266045
 Pairs        0.03577480   -0.00000000   -0.00877266
 Total        1.06016161   -0.07111837   -0.25988132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14788089
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.91308052
 One electron energy                -4394.06780108
 Two electron energy                 1216.66003888
 Virial quotient                       -0.91994433
 Correlation energy                    -0.25988132
 !MRCI STATE 8.1 Energy             -3177.407762202577

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.42339708 (Davidson, fixed reference)
 Cluster corrected energies         -3177.42334503 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.42339708 (Davidson, rotated reference)

 Cluster corrected energies         -3177.42233637 (Pople, fixed reference)
 Cluster corrected energies         -3177.42228552 (Pople, relaxed reference)
 Cluster corrected energies         -3177.42233637 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97121181 (fixed)   0.97130355 (relaxed)   0.97121181 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00470665   -0.00979944   -0.01039711
 Singles      0.01968019   -0.06131895   -0.06266044
 Pairs        0.03577481   -0.18876292   -0.18682377
 Total        1.06016165   -0.25988132   -0.25988132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14788089
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.91307867
 One electron energy                -4394.06780407
 Two electron energy                 1216.66004187
 Virial quotient                       -0.91994433
 Correlation energy                    -0.25988132
 !MRCI STATE 9.1 Energy             -3177.407762202536

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.42339709 (Davidson, fixed reference)
 Cluster corrected energies         -3177.42334505 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.42339709 (Davidson, rotated reference)

 Cluster corrected energies         -3177.42233638 (Pople, fixed reference)
 Cluster corrected energies         -3177.42228553 (Pople, relaxed reference)
 Cluster corrected energies         -3177.42233638 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      296.16       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       961.17    659.41    296.18      2.36      0.03      2.80
 REAL TIME  *       996.97 SEC
 DISK USED  *       345.74 MB (local),       10.25 GB (total)
 SF USED    *         1.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =     -3177.49829950  AU                              
 SETTING HLSDIAG(9)     =     -3177.49829941  AU                              
 SETTING HLSDIAG(10)    =     -3177.49829941  AU                              
 SETTING HLSDIAG(11)    =     -3177.49829900  AU                              
 SETTING HLSDIAG(12)    =     -3177.49829890  AU                              
 SETTING HLSDIAG(13)    =     -3177.45334468  AU                              
 SETTING HLSDIAG(14)    =     -3177.42339826  AU                              
 SETTING HLSDIAG(15)    =     -3177.42339708  AU                              
 SETTING HLSDIAG(16)    =     -3177.42339709  AU                              


         HLSDIAG
    -3177.586440
    -3177.489194
    -3177.489194
    -3177.489194
    -3177.489194
    -3177.489194
    -3177.446575
    -3177.498299
    -3177.498299
    -3177.498299
    -3177.498299
    -3177.498299
    -3177.453345
    -3177.423398
    -3177.423397
    -3177.423397
                                                  

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:      30.84 sec

        5931683. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1453 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     30.84 sec, REAL time:     30.98 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.05 sec, REAL time:      0.13 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:   147.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   147.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      140.38       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      296.16       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       993.58     32.35    659.41    296.18      2.36      0.03      2.80
 REAL TIME  *      1029.74 SEC
 DISK USED  *       345.79 MB (local),       10.58 GB (total)
 SF USED    *         1.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:  -3177.568664  -3177.470893  -3177.470893  -3177.470893  -3177.470893  -3177.470893  -3177.427748
 Replaced energies:  -3177.586440  -3177.489194  -3177.489194  -3177.489194  -3177.489194  -3177.489194  -3177.446575

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -3177.479101  -3177.479101  -3177.479101  -3177.479100  -3177.479100  -3177.434704  -3177.407763  -3177.407762
                     -3177.407762
 Replaced energies:  -3177.498299  -3177.498299  -3177.498299  -3177.498299  -3177.498299  -3177.453345  -3177.423398  -3177.423397
                     -3177.423397



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58644021

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   21343.17       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      31.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      29.05      -0.00

    3   3.1  0.0  0.0       0.00       0.00   21343.16       0.00       0.00       0.00       0.00       0.00      -0.00     -15.65
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      19.03       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   21343.17       0.00       0.00       0.00      -0.00     -17.37       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.37

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   21343.17       0.00       0.00      17.37       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   21343.17       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      17.37      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   30696.81       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      17.37      -0.00       0.00   19344.65       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -17.37       0.00       0.00      -0.00      -0.00

    9   2.1  1.0  1.0      -0.00      -0.00      -0.00     -17.37       0.00       0.00      -0.00       0.00   19344.67       0.00
                            0.00     -29.05     -19.03       0.00       0.00       0.00      -0.00       0.00       0.00      23.64

   10   3.1  1.0  1.0      -0.00      31.00     -15.65       0.00      -0.00      -0.00       0.00       0.00       0.00   19344.67
                            0.00       0.00      -0.00      17.37      -0.00      -0.00       0.00       0.00     -23.64       0.00

   11   4.1  1.0  1.0       0.00       0.00      -0.00       0.00      -0.00      17.38      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      17.36      -0.00       0.00     -47.27      -0.00       0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00     -30.08       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      30.09       0.00       0.00      -0.02       0.00       0.00

   13   6.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   14   7.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      59.51       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      59.51      -0.00       0.00       0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00      -0.00     -59.51      -0.00       0.00      -0.00       0.00       0.00       0.00
                           63.05      37.64     -57.48      -0.00      -0.00      -0.00       3.84      -0.00       0.00      -4.47

   16   9.1  1.0  1.0     -63.05     -30.96     -61.34       0.00      -0.00       0.00      -3.84       0.00       0.00       0.00
                           -0.00      -0.00       0.00      59.51      -0.00      -0.00       0.00       0.00       4.47      -0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.72       0.00
                            0.00       2.76     -49.03      -0.00       0.00       0.00      -0.00      -0.00       0.00     -16.72

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.72      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -24.57       0.00      -0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      24.57       0.00       0.00      16.72      -0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.72
                            0.00       0.00      -0.00      49.13       0.00      -0.00       0.00       0.00      16.70       0.00

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      28.94
                            0.00      -0.00       0.00       0.02      -0.00      -0.00       0.00      -0.00      28.95       0.00

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.16      -0.00
                           89.16     -97.03      -5.46      -0.00      -0.00       0.00       5.44      -0.00      -0.00       3.16

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.16       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      84.17      -0.00       0.00       0.00      -0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00     -84.17      -0.00      -0.00       3.16      -0.00       0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      17.37      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      17.37      -0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00      -0.00      -0.00     -17.37       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      29.05      19.03      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0      -0.00      31.00     -15.65       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -17.37       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00      17.38      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -17.36       0.00      -0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00     -30.08       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -30.09      -0.00      -0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      59.51       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     -59.51       0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00      -0.00     -59.51      -0.00       0.00      -0.00       0.00       0.00       0.00
                          -63.05     -37.64      57.48       0.00       0.00       0.00      -3.84      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0     -63.05     -30.96     -61.34       0.00      -0.00       0.00      -3.84       0.00       0.00       0.00
                            0.00       0.00      -0.00     -59.51       0.00       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00     -63.05       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     -63.05       0.00      -0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00     -30.96       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -37.64       0.00      -2.76       0.00      -0.00      -0.00

    3   3.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00     -61.34       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      57.48      -0.00      49.03      -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00      -0.00      -0.00      -0.00     -59.51       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -59.51       0.00       0.00       0.00     -49.13

    5   5.1  0.0  0.0      -0.00       0.00       0.00      59.51      -0.00      -0.00       0.00       0.00       0.00       0.00
                          -17.36     -30.09       0.00       0.00       0.00       0.00      -0.00       0.00     -24.57      -0.00

    6   6.1  0.0  0.0      17.38     -30.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -59.51       0.00       0.00      -0.00      24.57      -0.00       0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.00      -3.84       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -3.84      -0.00       0.00      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.72      -0.00       0.00
                           47.27       0.02       0.00      -0.00       0.00      -0.00       0.00       0.00     -16.72      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -16.72      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -4.47      -0.00      -0.00       0.00     -16.70

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -16.72
                           -0.00      -0.00      -0.00       0.00       4.47       0.00      16.72      -0.00      -0.00      -0.00

   11   4.1  1.0  1.0   19344.76       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      16.72      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      16.70       0.00      -0.00

   12   5.1  1.0  1.0       0.00   19344.78       0.00       0.00       0.00       0.00      -0.00       0.00     -28.94      -0.00
                           -0.00      -0.00       0.00      -5.14      -0.00      -0.00      -0.00      28.95       0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00   29211.09       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00     -13.35      -0.00       0.00       0.00       0.00      -0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   35783.57       0.00       0.00       0.00       3.16       0.00      -0.00
                           -0.00       5.14      13.35       0.00      -0.00       0.00      -0.00      -0.00       3.16      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   35783.83       0.00      -3.16      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     159.95       0.00       0.00      -0.00      -3.16

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   35783.83      -0.00       0.00       0.00      -3.16
                           -0.00       0.00      -0.00      -0.00    -159.95      -0.00       3.16      -0.00       0.00       0.00

   17   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -3.16      -0.00   19344.65       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -3.16       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      -0.00       0.00       0.00       3.16      -0.00       0.00       0.00   19344.67       0.00       0.00
                          -16.70     -28.95      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      16.72     -28.94      -0.00       0.00       0.00       0.00       0.00       0.00   19344.67       0.00
                           -0.00      -0.00       0.00      -3.16       0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00      -3.16       0.00       0.00       0.00   19344.76
                            0.00       0.00       0.00       0.00       3.16      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      -1.84       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -1.84       0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       9.44       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       9.44      -0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00      -0.00       0.00    -113.10       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     113.10      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0      -0.00       0.00       0.00     113.10       0.00      -0.00       0.00       0.00       0.00       0.00
                           -3.16       1.84      -9.44      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       3.16       1.84      -9.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -113.10       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.72       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -16.72      -0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      16.72      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -16.70

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      16.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      16.72      -0.00       0.00      -0.00

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.72      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      16.70       0.00       0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      28.94       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      28.95       0.00      -0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.16      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.16      -0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       3.16       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -3.16

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.16      -0.00       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -89.16       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      31.00       0.00      -0.00
                            0.00       0.00      97.03      -0.00      -0.00       0.00     -29.05       0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -15.65      -0.00       0.00
                           -0.00       0.00       5.46       0.00      -0.00       0.00     -19.03      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -17.37       0.00       0.00      -0.00
                           -0.02       0.00       0.00      -0.00       0.00      -0.00       0.00      17.37      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      17.37       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      84.17       0.00       0.00      -0.00      17.36      30.09

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      17.38     -30.08
                            0.00      -0.00      -0.00     -84.17       0.00     -17.37       0.00      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -5.44       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00      -0.00       3.16       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -3.16       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0      -0.00      -0.00      -3.16       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          -28.95      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0      28.94       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -3.16       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00       3.16       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       3.16      -0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       1.84       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -1.84       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00      -0.00      -0.00       0.00      -9.44       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       9.44      -0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00       0.00       0.00     113.10      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     113.10       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0      -0.00      -0.00    -113.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.84      -9.44      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0      -1.84       9.44       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -113.10       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      16.72      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.72      -0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     -16.72      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -16.70     -28.95

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -16.72      28.94
                            0.00       0.00       0.00       0.00       0.00      16.72      -0.00      -0.00      -0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      16.72      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      16.70       0.00      -0.00       0.00

   21   5.1  1.0  0.0   19344.78       0.00       0.00       0.00       0.00      -0.00       0.00     -28.94      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      28.95       0.00      -0.00       0.00

   22   6.1  1.0  0.0       0.00   29211.09       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00   35783.57       0.00       0.00       0.00       3.16       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       3.16      -0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   35783.83       0.00      -3.16      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -3.16       1.84

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   35783.83      -0.00       0.00       0.00      -3.16      -1.84
                           -0.00      -0.00      -0.00      -0.00       0.00       3.16      -0.00       0.00       0.00      -0.00

   26   1.1  1.0 -1.0      -0.00      -0.00       0.00      -3.16      -0.00   19344.65       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -3.16      -0.00       0.00       0.00     -47.27      -0.02

   27   2.1  1.0 -1.0       0.00       0.00       3.16      -0.00       0.00       0.00   19344.67       0.00       0.00       0.00
                          -28.95      -0.00       0.00      -0.00       0.00      -0.00      -0.00     -23.64      -0.00       0.00

   28   3.1  1.0 -1.0     -28.94      -0.00       0.00       0.00       0.00       0.00       0.00   19344.67       0.00       0.00
                           -0.00       0.00      -3.16       0.00      -0.00      -0.00      23.64      -0.00       0.00       0.00

   29   4.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -3.16       0.00       0.00       0.00   19344.76       0.00
                            0.00       0.00       0.00       3.16      -0.00      47.27       0.00      -0.00       0.00      -0.00

   30   5.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -1.84       0.00       0.00       0.00       0.00   19344.78
                           -0.00       0.00      -0.00      -1.84       0.00       0.02      -0.00      -0.00       0.00       0.00

   31   6.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       9.44       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       9.44      -0.00       0.00       0.00      -0.00      -0.00       0.00

   32   7.1  1.0 -1.0       0.00      -0.00       0.00    -113.10       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     113.10      -0.00      -0.00       0.00       0.00      -5.14

   33   8.1  1.0 -1.0       0.00       0.00     113.10       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            1.84      -9.44      -0.00       0.00      -0.00       0.00      -0.00       4.47       0.00      -0.00

   34   9.1  1.0 -1.0       1.84      -9.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -113.10       0.00       0.00      -0.00      -4.47       0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0      -0.00      -0.00       0.00     -63.05
                            0.00       0.00      63.05      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00     -30.96
                            0.00       0.00      37.64      -0.00

    3   3.1  0.0  0.0      -0.00      -0.00      -0.00     -61.34
                           -0.00      -0.00     -57.48       0.00

    4   4.1  0.0  0.0      -0.00      -0.00     -59.51       0.00
                            0.00       0.00      -0.00      59.51

    5   5.1  0.0  0.0       0.00      59.51      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      59.51      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00      -3.84
                            0.00      -0.00       3.84       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00       3.16       0.00
                           -0.00       0.00      -0.00      -3.16

   18   2.1  1.0  0.0      -0.00      -3.16       0.00      -0.00
                           -0.00       0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00      -0.00
                            0.00      -3.16       0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00      -0.00       3.16
                            0.00       0.00       3.16      -0.00

   21   5.1  1.0  0.0      -0.00       0.00       0.00       1.84
                            0.00      -0.00      -1.84       0.00

   22   6.1  1.0  0.0      -0.00      -0.00       0.00      -9.44
                            0.00      -0.00       9.44      -0.00

   23   7.1  1.0  0.0       0.00       0.00     113.10      -0.00
                            0.00       0.00       0.00     113.10

   24   8.1  1.0  0.0      -0.00    -113.10       0.00       0.00
                           -9.44      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       9.44       0.00      -0.00       0.00
                            0.00    -113.10       0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       4.47

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -4.47      -0.00

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       5.14       0.00       0.00

   31   6.1  1.0 -1.0   29211.09       0.00       0.00       0.00
                           -0.00      13.35       0.00      -0.00

   32   7.1  1.0 -1.0       0.00   35783.57       0.00       0.00
                          -13.35      -0.00       0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00   35783.83       0.00
                           -0.00      -0.00       0.00    -159.95

   34   9.1  1.0 -1.0       0.00       0.00       0.00   35783.83
                            0.00       0.00     159.95       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by  -3177.58644021 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   21343.167       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   21343.165       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   21343.170       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   21343.169       0.000       0.000      24.571
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   21343.171       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   30696.814       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      24.571      -0.000       0.000   19344.650
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000     -24.571       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.001      43.840     -22.130       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      24.583      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000     -42.540       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000      84.165       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000      -0.000     -84.163      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -89.160     -43.785     -86.750       0.000      -0.000       0.000      -5.436       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.758     -49.031      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000     -24.571       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      24.571       0.000       0.000      23.641

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      49.129       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.016      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               89.164     -97.026      -5.458      -0.000      -0.000       0.000       5.437      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      84.167      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000     -84.167      -0.000      -0.000       4.473

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -24.571       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001     -41.082     -26.907       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      24.571      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      24.555      -0.000       0.000     -47.274

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      42.557       0.000       0.000      -0.016

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      84.165      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               89.159      53.237     -81.292      -0.000      -0.000      -0.000       5.436      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      84.163      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000      -0.001       0.000      -0.000      -0.000      -0.000       0.000     -89.160
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      43.840       0.000      -0.000       0.000       0.000       0.000     -43.785
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000     -22.130      -0.000       0.000      -0.000      -0.000      -0.000     -86.750
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             -24.571       0.000       0.000      -0.000      -0.000      -0.000     -84.163       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000      84.165      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000      -0.000      24.583     -42.540       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -5.436
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          19344.669       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   19344.669       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   19344.759       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   19344.781       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   29211.092       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   35783.572       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   35783.831       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   35783.828
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000     -23.641      -0.000       0.000      -0.000       0.000      -0.000      -4.473

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -23.623     -40.948      -0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -4.473       0.000      -0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               23.623       0.000       0.000       0.000       0.000       0.000       4.469      -0.000

    5    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               40.948       0.000      -0.000       0.000       0.000      -0.000      -2.599       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      13.350      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       4.473      -0.000       0.000       0.000       0.000       0.000     159.946

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -4.469       2.599     -13.350      -0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000    -159.946       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      47.274       0.016       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      23.640       0.000      -0.000       0.000      -0.000      -0.000      -4.470

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.640       0.000      -0.000      -0.000      -0.000       0.000       4.470       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.002       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -5.138      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000     -13.353      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.002       5.138      13.353       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.470      -0.000       0.000       0.000       0.000      -0.000     159.954

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.470      -0.000      -0.000       0.000      -0.000      -0.000    -159.954      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000     -89.164       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.758       0.000      -0.000      -0.000       0.000       0.000      97.026      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               49.031      -0.000      -0.000       0.000      -0.000       0.000       5.458       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -49.129      -0.016       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -24.571      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      24.571      -0.000       0.000       0.000      -0.000      -0.000     -84.167

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -5.437       0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000     -23.641      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -23.623     -40.948      -0.000       0.000      -0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               23.641      -0.000       0.000      -0.000      -0.000       0.000      -4.473       0.000

    4    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      23.623       0.000       0.000       0.000       0.000       0.000       4.469

    5    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      40.948       0.000      -0.000       0.000       0.000      -0.000      -2.599

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      13.350

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       4.473      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -4.469       2.599     -13.350      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                4.473      -0.000       0.000       0.000      -0.000       0.000    -159.946       0.000

    1    1  |1 0>           19344.650       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   19344.669       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   19344.669       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   19344.759       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   19344.781       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   29211.092       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   35783.572       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   35783.831
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      23.641      -0.000       0.000       0.000       0.000      -0.000       4.473
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-            -23.641       0.000       0.000       0.000      -0.000      -0.000      -4.473       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000       0.000     -23.650      40.933       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-             -0.000      -0.000      23.650       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-             -0.000       0.000     -40.933      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>-             -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       4.473       0.000      -0.000      -0.000       0.000       0.000     159.946
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -4.473      -0.000       0.000       0.000      -0.000      -0.000    -159.946       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-             -0.000       0.000       0.000      -4.467      -2.602      13.350       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.001      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      41.082      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      26.907       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -24.571       0.000       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               84.167      -0.000      -0.000       0.000     -24.555     -42.557       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      24.571      -0.000       0.000       0.000      -0.000       0.000     -84.165

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.473       0.000      -0.000      -0.000      47.274       0.016       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      23.640       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -23.640       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -47.274      -0.000       0.000      -0.000       0.000      -0.000       0.002

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.016       0.000       0.000      -0.000      -0.000       0.000      -5.138

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000     -13.353

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              159.946       0.000       0.000      -0.000      -0.002       5.138      13.353       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -4.470      -0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       4.470      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000     -23.641       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000      23.641       0.000      -0.000      -0.000       0.000       0.000       4.473
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000      23.650     -40.933      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000     -23.650       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000      -0.000      40.933       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000      -0.000      -4.473      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       4.473       0.000      -0.000      -0.000       0.000       0.000     159.946
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>           35783.828       0.000      -0.000      -0.000       4.467       2.602     -13.350      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000   19344.650       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000   19344.669       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000   19344.669       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              4.467       0.000       0.000       0.000   19344.759       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              2.602       0.000       0.000       0.000       0.000   19344.781       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-            -13.350       0.000       0.000       0.000       0.000       0.000   29211.092       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000       0.000       0.000   35783.572
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                              -89.159       0.000

    2    1  |0 0>               0.000       0.000
                              -53.237       0.000

    3    1  |0 0>               0.000       0.000
                               81.292      -0.000

    4    1  |0 0>               0.000       0.000
                                0.000     -84.163

    5    1  |0 0>               0.000       0.000
                                0.000       0.000

    6    1  |0 0>               0.000       0.000
                                0.000       0.000

    7    1  |0 0>               0.000       0.000
                               -5.436      -0.000

    1    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    2    1  |1 1>+              0.000       0.000
                               -0.000      -4.470

    3    1  |1 1>+              0.000       0.000
                                4.470       0.000

    4    1  |1 1>+              0.000       0.000
                                0.000       0.000

    5    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    6    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    7    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    8    1  |1 1>+              0.000       0.000
                               -0.000     159.954

    9    1  |1 1>+              0.000       0.000
                             -159.954      -0.000

    1    1  |1 0>              -4.473      -0.000
                               -0.000       0.000

    2    1  |1 0>              -0.000       0.000
                                0.000       0.000

    3    1  |1 0>               0.000       0.000
                                0.000      -0.000

    4    1  |1 0>               0.000      -4.467
                                0.000       0.000

    5    1  |1 0>              -0.000      -2.602
                                0.000       0.000

    6    1  |1 0>              -0.000      13.350
                                0.000       0.000

    7    1  |1 0>            -159.946       0.000
                               -0.000       0.000

    8    1  |1 0>               0.000      -0.000
                                0.000      -0.000

    9    1  |1 0>               0.000       0.000
                               -0.000       0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000       0.000

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                                0.000       0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-          35783.831       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   35783.828
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58644327    -0.00000306       -0.67      0.00000000        0.00      0.0000
    2 -3177.49862238     0.08781783    19273.79      0.08782090    19274.46      2.3897
    3 -3177.49862238     0.08781783    19273.79      0.08782090    19274.46      2.3897
    4 -3177.49862232     0.08781789    19273.80      0.08782095    19274.47      2.3897
    5 -3177.49841537     0.08802484    19319.22      0.08802791    19319.89      2.3954
    6 -3177.49841530     0.08802491    19319.23      0.08802797    19319.91      2.3954
    7 -3177.49841502     0.08802519    19319.30      0.08802826    19319.97      2.3954
    8 -3177.49841498     0.08802523    19319.30      0.08802829    19319.98      2.3954
    9 -3177.49841498     0.08802523    19319.30      0.08802829    19319.98      2.3954
   10 -3177.49808401     0.08835620    19391.94      0.08835926    19392.62      2.4044
   11 -3177.49808389     0.08835632    19391.97      0.08835939    19392.64      2.4044
   12 -3177.49808389     0.08835632    19391.97      0.08835939    19392.64      2.4044
   13 -3177.49808387     0.08835634    19391.97      0.08835940    19392.65      2.4044
   14 -3177.49808376     0.08835645    19392.00      0.08835951    19392.67      2.4044
   15 -3177.49808376     0.08835645    19392.00      0.08835951    19392.67      2.4044
   16 -3177.49808372     0.08835649    19392.01      0.08835956    19392.68      2.4044
   17 -3177.48918985     0.09725036    21343.99      0.09725342    21344.66      2.6464
   18 -3177.48918984     0.09725037    21343.99      0.09725343    21344.66      2.6464
   19 -3177.48918982     0.09725039    21343.99      0.09725345    21344.67      2.6464
   20 -3177.48918982     0.09725039    21343.99      0.09725346    21344.67      2.6464
   21 -3177.48918981     0.09725040    21343.99      0.09725346    21344.67      2.6464
   22 -3177.45334493     0.13309528    29211.04      0.13309834    29211.71      3.6218
   23 -3177.45334493     0.13309528    29211.04      0.13309834    29211.71      3.6218
   24 -3177.45334493     0.13309528    29211.04      0.13309834    29211.71      3.6218
   25 -3177.44657532     0.13986489    30696.80      0.13986796    30697.47      3.8060
   26 -3177.42485189     0.16158832    35464.54      0.16159138    35465.21      4.3971
   27 -3177.42412618     0.16231403    35623.81      0.16231709    35624.48      4.4169
   28 -3177.42412618     0.16231403    35623.81      0.16231710    35624.49      4.4169
   29 -3177.42412563     0.16231458    35623.93      0.16231765    35624.61      4.4169
   30 -3177.42266468     0.16377553    35944.57      0.16377860    35945.25      4.4566
   31 -3177.42266447     0.16377574    35944.62      0.16377880    35945.29      4.4566
   32 -3177.42266447     0.16377574    35944.62      0.16377881    35945.29      4.4566
   33 -3177.42266385     0.16377636    35944.76      0.16377943    35945.43      4.4567
   34 -3177.42266385     0.16377636    35944.76      0.16377943    35945.43      4.4567

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999052  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000008  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00157496 -0.02970148  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02970327 -0.00157486  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.02975983 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000673 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000674  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02976110
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000134  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.54802103  0.00000027  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005
                          -0.00000000 -0.00000004 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.54793659  0.00000000 -0.00000000 -0.40839305 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000067 -0.00000000

   3    1  |1 1>+          0.00000005  0.00000000  0.00000000 -0.00000000  0.40572162  0.70810245 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000027 -0.54738914 -0.00000000  0.00000000  0.00000000  0.00000000 -0.40800606
                          -0.00000000  0.00000003  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000016 -0.31610392 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.70634042
                           0.00000000  0.00000002  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000069 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00024911 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00025033  0.00000000 -0.00000000 -0.00047974 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00251402 -0.00000000  0.00000000 -0.00000000  0.00048077 -0.00027543  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.81620042  0.00262683  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000027 -0.54782869 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40861758

   3    1  |1 0>          -0.00000000 -0.00000004 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.54782825 -0.00000027 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000134 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00021148 -0.00000000  0.00000000  0.81580904  0.00000001

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.63208488 -0.00000000  0.00000000  0.00027230  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000063  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00251416  0.00000000  0.00000000 -0.00000000  0.00000178 -0.00055418  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00024933 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00048066

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00024933 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000003  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000027  0.54802103  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40836229

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000006 -0.00000000  0.00000000  0.00000000  0.41027017 -0.70547778  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000067 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.54793615 -0.00000000  0.00000000  0.40839263  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000004  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.54760026  0.00000027  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005

   5    1  |1 1>-          0.00000000 -0.00000002 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.31573881 -0.00000016 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000008

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000069 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00024910  0.00000000  0.00000000  0.00000000  0.00000000 -0.00047893

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00251402  0.00000000 -0.00000000  0.00000000  0.00047899  0.00027852 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00025034 -0.00000000  0.00000000  0.00047974  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000035 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000579 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001332  0.00000000 -0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.02976112  0.00000000  0.00001869  0.00000000  0.00000000  0.00000000  0.00000723 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00001872  0.00000000 -0.00000723  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.40836214  0.00000000  0.69949201  0.00000008  0.00000001 -0.00000004 -0.20851016 -0.00000000
                          -0.00000002  0.00000000 -0.00000034  0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.57799737 -0.00000001 -0.00000000  0.44581597
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000019  0.00000000 -0.00000000 -0.00000007

   3    1  |1 1>+          0.00000000  0.57740000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000005 -0.00000000 -0.00000006  0.51146680 -0.00000001 -0.52167996  0.00000011 -0.00000000
                           0.00000000 -0.00000000  0.00000005 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000008  0.00000000  0.00000004 -0.32711864  0.00000000 -0.54195207  0.00000011 -0.00000000
                          -0.00000001  0.00000000 -0.00000003  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000003 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00047893  0.00000000  0.00000027  0.00000000  0.00000000  0.00000000  0.00000065  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000 -0.00000000  0.00000105
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.57725201  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000004  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000005 -0.00000000 -0.00000004  0.37727040 -0.00000000  0.62484774 -0.00000013  0.00000001

   3    1  |1 0>           0.00000002 -0.00000000  0.00000018 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40861701  0.00000000  0.37678526  0.00000004  0.00000000  0.00000013  0.62514115 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000019 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.57780877 -0.00000000 -0.00000000 -0.00139450

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000012
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00171671 -0.00000001 -0.00000000  0.77489717

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000057 -0.00000000  0.00000078 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00048067 -0.00000000  0.00000057  0.00000000  0.00000000  0.00000000  0.00000078  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000007  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000000 -0.00000008  0.69932979 -0.00000001 -0.20905330  0.00000004 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.57739878 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000019  0.00000000 -0.00000000  0.00000007
                          -0.00000000  0.00000000  0.00000001 -0.00000000 -0.57624050 -0.00000000  0.00000000  0.44808543

   4    1  |1 1>-          0.00000002  0.00000000 -0.00000025  0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40753430 -0.00000000 -0.51165353 -0.00000006 -0.00000000  0.00000011  0.52164436  0.00000000

   5    1  |1 1>-          0.00000004  0.00000000 -0.00000016  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000
                           0.70661313 -0.00000000 -0.32703893 -0.00000004 -0.00000000 -0.00000011 -0.54185719  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000027 -0.00000000 -0.00000065  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000000 -0.00000000  0.00000105

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.01348629  0.99943337 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.99943332 -0.01348629 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99952386 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.99952382 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.99952382  0.00000000  0.00000003  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.01215268 -0.00000000 -0.00000000  0.00000094 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.01215325  0.00000000 -0.00000000 -0.00000000 -0.00000090
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.01065238  0.02182951 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.01215944 -0.00000000 -0.00000094  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02104191 -0.00000000 -0.00000053  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00002051  0.99999566 -0.00000030
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000008 -0.00000003

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00575101  0.00000000  0.00000000  0.00208235 -0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00575079 -0.00000000 -0.00000000 -0.00000000 -0.00208179
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00596736  0.00291154 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02423017  0.00169120  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01215287 -0.00000000 -0.00000097  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.01215289 -0.00000000 -0.00000000 -0.00000097  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.02430051 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000810 -0.00000000  0.00000000  0.00000000  0.00000109

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000053
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006  0.00000030  0.99999567

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00046235  0.00662420 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00575099  0.00000004  0.00208180 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00575100 -0.00000000 -0.00000000  0.00208181 -0.00000004 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01215266  0.00000000  0.00000094 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01358161 -0.02013805  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.01215325 -0.00000000 -0.00000000 -0.00000000 -0.00000090

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.01214538 -0.00000000 -0.00000000  0.00000094 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.02105004 -0.00000000 -0.00000000 -0.00000053  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000001
                           0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.99999566 -0.00002051 -0.00000006

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00575101 -0.00000004 -0.00208235  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00550502 -0.00371227  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00575080  0.00000000 -0.00000000 -0.00000000 -0.00208179

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000994  0.00435448  0.00000000  0.00000000 -0.00000000 -0.00000095  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000223 -0.00000000  0.00000000 -0.00000000 -0.00813443  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000 -0.00048919  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000323 -0.00000000 -0.00000000 -0.00000000 -0.00814975 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000327  0.00000000  0.00000000 -0.00000000  0.00814974
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.99999805  0.00197501  0.00000000  0.00000000  0.00000000 -0.00000034 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00019338  0.00000000  0.00000000  0.00000000  0.00017829  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019332 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000001  0.00000016  0.00000000 -0.00000000 -0.00000000  0.00030791 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00019313  0.00000000 -0.00000000  0.00000000 -0.00017819
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00010992  0.00000000  0.00000000 -0.00000000  0.00030818
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00294450  0.00000000  0.00000000  0.00000000 -0.00000080
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.70738622  0.00000000  0.00000000 -0.00000000 -0.70680056 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710034 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00087747 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00114020 -0.57724497 -0.00000000 -0.00000000 -0.00000000  0.41111314 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000138  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00019351  0.00000000  0.00000000 -0.00000000  0.00017812

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00019351 -0.00000000 -0.00000000  0.00000000  0.00017812  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000028  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00022492  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000365 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00294410  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00114038  0.57754411  0.00000000 -0.00000000 -0.00000000  0.81632150 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.70681822 -0.00000000  0.00000000 -0.00000000  0.70736858

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.70682101  0.00000000  0.00000000  0.00000000  0.70736579  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00019337 -0.00000000  0.00000000 -0.00000000  0.00017829

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.00000016 -0.00000000 -0.00000000 -0.00000000 -0.00030929  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000024  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00019332 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00019320  0.00000000  0.00000000  0.00000000  0.00017798  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00010979 -0.00000000 -0.00000000  0.00000000  0.00030830  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00294450 -0.00000000 -0.00000000 -0.00000000 -0.00000079  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.70738901  0.00000000  0.00000000 -0.00000000  0.70679777

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00114020  0.57724188  0.00000000 -0.00000000  0.00000000 -0.40563358 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00087747 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710592  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>           0.00000001  0.00000000
                          -0.00000000  0.00000000

   2    1  |0 0>           0.00048915  0.00000000
                          -0.00000000  0.00000000

   3    1  |0 0>          -0.00813383 -0.00000000
                           0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00814944
                          -0.00000000 -0.00000005

   5    1  |0 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000
                          -0.00000000  0.00000000

   7    1  |0 0>           0.00000001 -0.00000000
                          -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000
                           0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00017809
                          -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00017929 -0.00000000
                           0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.70708602
                           0.00000000  0.00000465

   9    1  |1 1>+          0.70549430  0.00000000
                          -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000
                          -0.00035644 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00035602

   5    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000012

   6    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000001

   7    1  |1 0>          -0.00000000  0.00000000
                          -0.00316181  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000
                          -0.00017690 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00017809

   4    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000
                           0.70866156  0.00000000

   9    1  |1 1>-          0.00000000  0.00000465
                           0.00000000 -0.70708044


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.58644327     -0.00000306       -0.67      0.00000000        0.00      0.0000
     2   1  -3177.49862238      0.08781783    19273.79      0.08782090    19274.46      2.3897
     3   1  -3177.49862238      0.08781783    19273.79      0.08782090    19274.46      2.3897
     4   1  -3177.49862232      0.08781789    19273.80      0.08782095    19274.47      2.3897
     5   1  -3177.49841537      0.08802484    19319.22      0.08802791    19319.89      2.3954
     6   1  -3177.49841530      0.08802491    19319.23      0.08802797    19319.91      2.3954
     7   1  -3177.49841502      0.08802519    19319.30      0.08802826    19319.97      2.3954
     8   1  -3177.49841498      0.08802523    19319.30      0.08802829    19319.98      2.3954
     9   1  -3177.49841498      0.08802523    19319.30      0.08802829    19319.98      2.3954
    10   1  -3177.49808401      0.08835620    19391.94      0.08835926    19392.62      2.4044
    11   1  -3177.49808389      0.08835632    19391.97      0.08835939    19392.64      2.4044
    12   1  -3177.49808389      0.08835632    19391.97      0.08835939    19392.64      2.4044
    13   1  -3177.49808387      0.08835634    19391.97      0.08835940    19392.65      2.4044
    14   1  -3177.49808376      0.08835645    19392.00      0.08835951    19392.67      2.4044
    15   1  -3177.49808376      0.08835645    19392.00      0.08835951    19392.67      2.4044
    16   1  -3177.49808372      0.08835649    19392.01      0.08835956    19392.68      2.4044
    17   1  -3177.48918985      0.09725036    21343.99      0.09725342    21344.66      2.6464
    18   1  -3177.48918984      0.09725037    21343.99      0.09725343    21344.66      2.6464
    19   1  -3177.48918982      0.09725039    21343.99      0.09725345    21344.67      2.6464
    20   1  -3177.48918982      0.09725039    21343.99      0.09725346    21344.67      2.6464
    21   1  -3177.48918981      0.09725040    21343.99      0.09725346    21344.67      2.6464
    22   1  -3177.45334493      0.13309528    29211.04      0.13309834    29211.71      3.6218
    23   1  -3177.45334493      0.13309528    29211.04      0.13309834    29211.71      3.6218
    24   1  -3177.45334493      0.13309528    29211.04      0.13309834    29211.71      3.6218
    25   1  -3177.44657532      0.13986489    30696.80      0.13986796    30697.47      3.8060
    26   1  -3177.42485189      0.16158832    35464.54      0.16159138    35465.21      4.3971
    27   1  -3177.42412618      0.16231403    35623.81      0.16231709    35624.48      4.4169
    28   1  -3177.42412618      0.16231403    35623.81      0.16231710    35624.49      4.4169
    29   1  -3177.42412563      0.16231458    35623.93      0.16231765    35624.61      4.4169
    30   1  -3177.42266468      0.16377553    35944.57      0.16377860    35945.25      4.4566
    31   1  -3177.42266447      0.16377574    35944.62      0.16377880    35945.29      4.4566
    32   1  -3177.42266447      0.16377574    35944.62      0.16377881    35945.29      4.4566
    33   1  -3177.42266385      0.16377636    35944.76      0.16377943    35945.43      4.4567
    34   1  -3177.42266385      0.16377636    35944.76      0.16377943    35945.43      4.4567

 E0 =  -3177.58644021 is the energy of the lowest zeroth-order state
 E1 =  -3177.58644327 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999052  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000008  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00157496 -0.02970148  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02970327 -0.00157486  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.02975983 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000673 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000674  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02976110
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000134  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.54802103  0.00000027  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005
                               -0.00000000 -0.00000004 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.54793659  0.00000000 -0.00000000 -0.40839305 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000067 -0.00000000

 10  1     3    1  |1 1>+       0.00000005  0.00000000  0.00000000 -0.00000000  0.40572162  0.70810245 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000027 -0.54738914 -0.00000000  0.00000000  0.00000000  0.00000000 -0.40800606
                               -0.00000000  0.00000003  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000016 -0.31610392 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.70634042
                                0.00000000  0.00000002  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000069 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00024911 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00025033  0.00000000 -0.00000000 -0.00047974 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00251402 -0.00000000  0.00000000 -0.00000000  0.00048077 -0.00027543  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.81620042  0.00262683  0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000027 -0.54782869 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40861758

 19  1     3    1  |1 0>       -0.00000000 -0.00000004 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.54782825 -0.00000027 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000134 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00021148 -0.00000000  0.00000000  0.81580904  0.00000001

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.63208488 -0.00000000  0.00000000  0.00027230  0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000063  0.00000000  0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00251416  0.00000000  0.00000000 -0.00000000  0.00000178 -0.00055418  0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00024933 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00048066

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00024933 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000003  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000027  0.54802103  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40836229

 27  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000006 -0.00000000  0.00000000  0.00000000  0.41027017 -0.70547778  0.00000000 -0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000067 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.54793615 -0.00000000  0.00000000  0.40839263  0.00000000

 29  1     4    1  |1 1>-      -0.00000000  0.00000004  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.54760026  0.00000027  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005

 30  1     5    1  |1 1>-       0.00000000 -0.00000002 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.31573881 -0.00000016 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000008

 31  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000069 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00024910  0.00000000  0.00000000  0.00000000  0.00000000 -0.00047893

 33  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00251402  0.00000000 -0.00000000  0.00000000  0.00047899  0.00027852 -0.00000000  0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00025034 -0.00000000  0.00000000  0.00047974  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000035 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000579 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001332  0.00000000 -0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.02976112  0.00000000  0.00001869  0.00000000  0.00000000  0.00000000  0.00000723 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00001872  0.00000000 -0.00000723  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.40836214  0.00000000  0.69949201  0.00000008  0.00000001 -0.00000004 -0.20851016 -0.00000000
                               -0.00000002  0.00000000 -0.00000034  0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.57799737 -0.00000001 -0.00000000  0.44581597
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000019  0.00000000 -0.00000000 -0.00000007

 10  1     3    1  |1 1>+       0.00000000  0.57740000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000005 -0.00000000 -0.00000006  0.51146680 -0.00000001 -0.52167996  0.00000011 -0.00000000
                                0.00000000 -0.00000000  0.00000005 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000008  0.00000000  0.00000004 -0.32711864  0.00000000 -0.54195207  0.00000011 -0.00000000
                               -0.00000001  0.00000000 -0.00000003  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000003 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00047893  0.00000000  0.00000027  0.00000000  0.00000000  0.00000000  0.00000065  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000 -0.00000000  0.00000105
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.57725201  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000004  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000005 -0.00000000 -0.00000004  0.37727040 -0.00000000  0.62484774 -0.00000013  0.00000001

 19  1     3    1  |1 0>        0.00000002 -0.00000000  0.00000018 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40861701  0.00000000  0.37678526  0.00000004  0.00000000  0.00000013  0.62514115 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000019 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001  0.00000000  0.57780877 -0.00000000 -0.00000000 -0.00139450

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000012
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00171671 -0.00000001 -0.00000000  0.77489717

 22  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000057 -0.00000000  0.00000078 -0.00000000  0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00048067 -0.00000000  0.00000057  0.00000000  0.00000000  0.00000000  0.00000078  0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000007  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000000 -0.00000008  0.69932979 -0.00000001 -0.20905330  0.00000004 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.57739878 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000019  0.00000000 -0.00000000  0.00000007
                               -0.00000000  0.00000000  0.00000001 -0.00000000 -0.57624050 -0.00000000  0.00000000  0.44808543

 29  1     4    1  |1 1>-       0.00000002  0.00000000 -0.00000025  0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40753430 -0.00000000 -0.51165353 -0.00000006 -0.00000000  0.00000011  0.52164436  0.00000000

 30  1     5    1  |1 1>-       0.00000004  0.00000000 -0.00000016  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000
                                0.70661313 -0.00000000 -0.32703893 -0.00000004 -0.00000000 -0.00000011 -0.54185719  0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000027 -0.00000000 -0.00000065  0.00000000 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000000 -0.00000000  0.00000105


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.01348629  0.99943337 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.99943332 -0.01348629 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99952386 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.99952382 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.99952382  0.00000000  0.00000003  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.01215268 -0.00000000 -0.00000000  0.00000094 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.01215325  0.00000000 -0.00000000 -0.00000000 -0.00000090
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.01065238  0.02182951 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.01215944 -0.00000000 -0.00000094  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02104191 -0.00000000 -0.00000053  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00002051  0.99999566 -0.00000030
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000008 -0.00000003

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00575101  0.00000000  0.00000000  0.00208235 -0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00575079 -0.00000000 -0.00000000 -0.00000000 -0.00208179
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00596736  0.00291154 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02423017  0.00169120  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01215287 -0.00000000 -0.00000097  0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.01215289 -0.00000000 -0.00000000 -0.00000097  0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.02430051 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000810 -0.00000000  0.00000000  0.00000000  0.00000109

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000053
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006  0.00000030  0.99999567

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00046235  0.00662420 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00575099  0.00000004  0.00208180 -0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00575100 -0.00000000 -0.00000000  0.00208181 -0.00000004 -0.00000000

 26  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01215266  0.00000000  0.00000094 -0.00000000

 27  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01358161 -0.02013805  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.01215325 -0.00000000 -0.00000000 -0.00000000 -0.00000090

 29  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.01214538 -0.00000000 -0.00000000  0.00000094 -0.00000000 -0.00000000

 30  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.02105004 -0.00000000 -0.00000000 -0.00000053  0.00000000  0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000001
                                0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.99999566 -0.00002051 -0.00000006

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00575101 -0.00000004 -0.00208235  0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00550502 -0.00371227  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00575080  0.00000000 -0.00000000 -0.00000000 -0.00208179


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000994  0.00435448  0.00000000  0.00000000 -0.00000000 -0.00000095  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000223 -0.00000000  0.00000000 -0.00000000 -0.00813443  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000 -0.00048919  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000323 -0.00000000 -0.00000000 -0.00000000 -0.00814975 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000327  0.00000000  0.00000000 -0.00000000  0.00814974
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.99999805  0.00197501  0.00000000  0.00000000  0.00000000 -0.00000034 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00019338  0.00000000  0.00000000  0.00000000  0.00017829  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019332 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000001  0.00000016  0.00000000 -0.00000000 -0.00000000  0.00030791 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00019313  0.00000000 -0.00000000  0.00000000 -0.00017819
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00010992  0.00000000  0.00000000 -0.00000000  0.00030818
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00294450  0.00000000  0.00000000  0.00000000 -0.00000080
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.70738622  0.00000000  0.00000000 -0.00000000 -0.70680056 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710034 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00087747 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00114020 -0.57724497 -0.00000000 -0.00000000 -0.00000000  0.41111314 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000138  0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00019351  0.00000000  0.00000000 -0.00000000  0.00017812

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00019351 -0.00000000 -0.00000000  0.00000000  0.00017812  0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000028  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00022492  0.00000000  0.00000000 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000365 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00294410  0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00114038  0.57754411  0.00000000 -0.00000000 -0.00000000  0.81632150 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.70681822 -0.00000000  0.00000000 -0.00000000  0.70736858

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.70682101  0.00000000  0.00000000  0.00000000  0.70736579  0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00019337 -0.00000000  0.00000000 -0.00000000  0.00017829

 27  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.00000016 -0.00000000 -0.00000000 -0.00000000 -0.00030929  0.00000000  0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000024  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00019332 -0.00000000 -0.00000000 -0.00000000

 29  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00019320  0.00000000  0.00000000  0.00000000  0.00017798  0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00010979 -0.00000000 -0.00000000  0.00000000  0.00030830  0.00000000

 31  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00294450 -0.00000000 -0.00000000 -0.00000000 -0.00000079  0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.70738901  0.00000000  0.00000000 -0.00000000  0.70679777

 33  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00114020  0.57724188  0.00000000 -0.00000000  0.00000000 -0.40563358 -0.00000000  0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00087747 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710592  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>        0.00000001  0.00000000
                               -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00048915  0.00000000
                               -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00813383 -0.00000000
                                0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00814944
                               -0.00000000 -0.00000005

  5  1     5    1  |0 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000
                               -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000001 -0.00000000
                               -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000
                                0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00017809
                               -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00017929 -0.00000000
                                0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000
                                0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.70708602
                                0.00000000  0.00000465

 16  1     9    1  |1 1>+       0.70549430  0.00000000
                               -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000
                               -0.00035644 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00035602

 21  1     5    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000012

 22  1     6    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000001

 23  1     7    1  |1 0>       -0.00000000  0.00000000
                               -0.00316181  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000  0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000
                               -0.00017690 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00017809

 29  1     4    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000  0.00000000

 30  1     5    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000  0.00000000

 31  1     6    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000 -0.00000000

 32  1     7    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000  0.00000000

 33  1     8    1  |1 1>-       0.00000000 -0.00000000
                                0.70866156  0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000465
                                0.00000000 -0.70708044



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%   30.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.02%    0.00%    0.00%   16.68%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.46%   50.14%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   29.96%    0.00%    0.00%    0.00%    0.00%   16.65%
 12  1     5    1  |1 1>+         0.00%    0.00%    9.99%    0.00%    0.00%    0.00%    0.00%   49.89%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.62%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.70%
 19  1     3    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.55%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.95%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   30.03%    0.00%    0.00%    0.00%    0.00%   16.68%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.83%   49.77%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.02%    0.00%    0.00%   16.68%    0.00%
 29  1     4    1  |1 1>-         0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    9.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+        16.68%    0.00%   48.93%    0.00%    0.00%    0.00%    4.35%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.41%    0.00%    0.00%   19.88%
 10  1     3    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   26.16%    0.00%   27.21%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   10.70%    0.00%   29.37%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   14.23%    0.00%   39.04%    0.00%    0.00%
 19  1     3    1  |1 0>         16.70%    0.00%   14.20%    0.00%    0.00%    0.00%   39.08%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.39%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.05%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%   48.91%    0.00%    4.37%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.21%    0.00%    0.00%   20.08%
 29  1     4    1  |1 1>-        16.61%    0.00%   26.18%    0.00%    0.00%    0.00%   27.21%    0.00%
 30  1     5    1  |1 1>-        49.93%    0.00%   10.70%    0.00%    0.00%    0.00%   29.36%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.02%   99.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         99.89%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.01%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.02%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.96%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.90%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%
 25  1     9    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.96%
 33  1     8    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   16.45%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%
  3  1     3    1  |0 0>          0.01%    0.00%
  4  1     4    1  |0 0>          0.00%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%   50.00%
 16  1     9    1  |1 1>+        49.77%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%
 33  1     8    1  |1 1>-        50.22%    0.00%
 34  1     9    1  |1 1>-         0.00%   50.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      140.38       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      296.16       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8047.43   7053.85     32.35    659.41    296.18      2.36      0.03      2.80
 REAL TIME  *      8157.52 SEC
 DISK USED  *       345.79 MB (local),       10.58 GB (total)
 SF USED    *         1.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.422663847586

              CI              CI           MULTI         RHF-SCF
  -3177.40776220  -3177.42774838  -3177.14788089  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
