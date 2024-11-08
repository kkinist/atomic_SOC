
 Working directory              : /wrk/irikura/molpro.lQK7Hl3cWH/
 Global scratch directory       : /wrk/irikura/molpro.lQK7Hl3cWH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.lQK7Hl3cWH/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/8)
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Kr};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=35,sym=1,spin=1}
 
 {multi,wmk
     occ,10,12
     wf,nelec=36,sym=1,spin=0;state,10;
     wf,nelec=36,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint                                                                           ! fails without this line
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 15-May-24          TIME: 08:47:08  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry KR     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry KR     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry KR     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry KR     F aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry KR     G aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  KR     36.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   36
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     16.515 MB (compressed) written to integral file ( 15.8%)

     Node minimum: 0.524 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107443. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1292800. AND WROTE     6503791. INTEGRALS IN     72 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.929E-04 0.237E-02 0.161E-01 0.383E-01 0.383E-01 0.383E-01 0.383E-01 0.383E-01
         2 0.294E-02 0.294E-02 0.294E-02 0.124E-01 0.124E-01 0.124E-01 0.713E-01 0.713E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.21      1.02
 REAL TIME  *         2.70 SEC
 DISK USED  *        29.42 MB (local),      409.17 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   8   9

 NELEC=   35   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2787.10627766   -2787.10627766     0.00D+00     0.17D+00     0     0       0.00      0.01    start
   2    -2787.14740453      -0.04112687     0.13D-01     0.12D-01     1     0       0.01      0.02    diag2
   3    -2787.14831045      -0.00090592     0.35D-02     0.26D-02     2     0       0.00      0.02    diag2
   4    -2787.14838654      -0.00007608     0.52D-03     0.11D-02     3     0       0.01      0.03    diag2
   5    -2787.14839322      -0.00000668     0.21D-03     0.20D-03     4     0       0.00      0.03    diag2
   6    -2787.14839329      -0.00000008     0.10D-04     0.19D-04     5     0       0.01      0.04    diag2
   7    -2787.14839330      -0.00000000     0.12D-05     0.31D-05     6     0       0.00      0.04    diag2
   8    -2787.14839330      -0.00000000     0.63D-07     0.20D-06     0     0       0.01      0.05    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.148393296769
  RHF One-electron energy           -3858.448109383316
  RHF Two-electron energy            1071.299716086547
  RHF Kinetic energy                 2992.657684350588
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.931328834524

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.89690     1  1  s    0.99998
    2.1     2.00000   -72.56316     1  2  s    0.99979
    3.1     2.00000   -11.72373     1  3  s    0.99756
    4.1     2.00000    -4.26020     1  1  d0   1.00120
    5.1     2.00000    -4.26020     1  1  d1-  1.00117
    6.1     2.00000    -4.26020     1  1  d1+  1.00118
    7.1     2.00000    -4.26020     1  1  d2-  1.00115
    8.1     2.00000    -4.26020     1  1  d2+  1.00113
    9.1     1.00000    -1.67243     1  4  s    1.08585
    1.2     2.00000   -64.03313     1  1  pz   0.99993
    2.2     2.00000   -64.03313     1  1  py   0.99993
    3.2     2.00000   -64.03313     1  1  px   0.99993
    4.2     2.00000    -8.92472     1  2  py   1.00048
    5.2     2.00000    -8.92472     1  2  px   1.00048
    6.2     2.00000    -8.92472     1  2  pz   1.00048
    7.2     2.00000    -0.90992     1  3  py   1.08549
    8.2     2.00000    -0.90992     1  3  px   1.08549
    9.2     2.00000    -0.90992     1  3  pz   1.08549


 HOMO      9.2    -0.909916 =     -24.7601eV
 LUMO     10.1    -0.122150 =      -3.3239eV
 LUMO-HOMO         0.787766 =      21.4362eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.26      0.05      1.02
 REAL TIME  *         2.76 SEC
 DISK USED  *        30.30 MB (local),      419.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.797D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.138D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.110D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.159D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.189D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   2 4 6 3 5 1 4 6 3 5   2 4 6 3 5 2 1 6 4 3   5 2 7 812 911101314
                                       15 1 2 6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.558D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.492D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.410D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.766D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.766D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.117D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.430D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.117D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.728D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.404D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.595D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 3   2 1 2 1 3 4 5 6 9 7   810 2 1 3 4 5 9 7 6  10 8 6 810 4 5 7 9 2
                                        1 3 5 4 6 7 910 8 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  912  ( 52 closed/active, 544 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    40096
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0  -2787.89056013   -2787.89417619   -0.00361606    0.10955966 0.00022719 0.00069570  0.84E+00      3.97
   2   11   45    0  -2787.89419676   -2787.89420108   -0.00000432    0.00111652 0.00000011 0.00000038  0.35E-01     11.53
   3    3   12    0  -2787.89420108   -2787.89420108   -0.00000000    0.00000048 0.00000001 0.00000003  0.34E-05     13.19

 CONVERGENCE REACHED!  Final gradient:    0.00000010 ( 0.98E-07)
                       Final energy:  -2787.89420108
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.276476312793
 Nuclear energy                                  0.00000000
 Kinetic energy                               2995.13628575
 One electron energy                         -3879.21251167
 Two electron energy                          1090.93603536
 Virial ratio                                    1.93093476
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.874567223978
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.58958115
 One electron energy                         -3867.59738672
 Two electron energy                          1079.72281950
 Virial ratio                                    1.93128149
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.874567223978
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.58958115
 One electron energy                         -3867.59738672
 Two electron energy                          1079.72281950
 Virial ratio                                    1.93128149
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.874567223969
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.58958115
 One electron energy                         -3867.59738672
 Two electron energy                          1079.72281950
 Virial ratio                                    1.93128149
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.874567223928
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.58958115
 One electron energy                         -3867.59738672
 Two electron energy                          1079.72281950
 Virial ratio                                    1.93128149
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.874567223917
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.58958115
 One electron energy                         -3867.59738672
 Two electron energy                          1079.72281950
 Virial ratio                                    1.93128149
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.869934665801
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.57641356
 One electron energy                         -3867.56064684
 Two electron energy                          1079.69071218
 Virial ratio                                    1.93128404
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.869934665801
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.57641356
 One electron energy                         -3867.56064684
 Two electron energy                          1079.69071218
 Virial ratio                                    1.93128404
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.869934665794
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.57641356
 One electron energy                         -3867.56064684
 Two electron energy                          1079.69071218
 Virial ratio                                    1.93128404
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.841856080731
 Nuclear energy                                  0.00000000
 Kinetic energy                               2994.17607659
 One electron energy                         -3869.63086790
 Two electron energy                          1081.78901182
 Virial ratio                                    1.93108815
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.889903828362
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.52570844
 One electron energy                         -3867.41042442
 Two electron energy                          1079.52052059
 Virial ratio                                    1.93130648
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.877656805474
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.55795153
 One electron energy                         -3867.50544128
 Two electron energy                          1079.62778447
 Virial ratio                                    1.93129236
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.877656805461
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.55795153
 One electron energy                         -3867.50544128
 Two electron energy                          1079.62778447
 Virial ratio                                    1.93129236
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.877656805423
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.55795153
 One electron energy                         -3867.50544128
 Two electron energy                          1079.62778447
 Virial ratio                                    1.93129236
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.877656805423
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.55795153
 One electron energy                         -3867.50544128
 Two electron energy                          1079.62778447
 Virial ratio                                    1.93129236
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.877656805414
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.55795153
 One electron energy                         -3867.50544127
 Two electron energy                          1079.62778447
 Virial ratio                                    1.93129236
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.870220059234
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.57241337
 One electron energy                         -3867.54665589
 Two electron energy                          1079.67643584
 Virial ratio                                    1.93128538
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.870220059234
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.57241337
 One electron energy                         -3867.54665589
 Two electron energy                          1079.67643584
 Virial ratio                                    1.93128538
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.870220059227
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.57241337
 One electron energy                         -3867.54665589
 Two electron energy                          1079.67643584
 Virial ratio                                    1.93128538
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.967128874460
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.032868663616
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000002776253
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.989246630868
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.010753054802
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.783578408073
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.216427575789
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999994016137
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.989420640346
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.010579171957
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.518301181690
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.481693465599
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000005540408
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.983897857758
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.016102904764
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999237477
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.032868986224
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.967130609109
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000764406
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.010714251615
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.989285388645
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.216421744789
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.783578967382
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999287829
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.010541964861
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.989458198232
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.481694934624
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.518303730542
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000001171741
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.016103317760
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.983897645265
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999036974
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000002139315
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000727274
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999996459342
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.000039117516
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999961556553
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999847137
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999993456829
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000006696034
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000037394793
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999962629811
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000003883686
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000002803859
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999993287851
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999998824481
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999449970
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000001725548
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   1 2 4 6 5 3 4 6 3 5   2 6 4 3 5 2 1 6 4 3   5 21013 812 71415 9
                                       11 1 2 6 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 1 3 2 2   1 3 2 1 3 4 5 6 9 7  10 8 2 1 3 4 5 9 7 6   810 6 7 9 810 4 5 2
                                        1 3 6 5 4 7 9 810 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.62053     1  1  s    0.99997
    2.1     2.00000   -72.29267     1  2  s    0.99990
    3.1     2.00000   -11.43837     1  3  s    0.99891
    4.1     2.00000    -3.98699     1  1  d0   1.00040
    5.1     2.00000    -3.98699     1  1  d1-  1.00040
    6.1     2.00000    -3.98699     1  1  d1+  1.00040
    7.1     2.00000    -3.98699     1  1  d2-  1.00040
    8.1     2.00000    -3.98699     1  1  d2+  1.00040
    9.1     1.99888    -1.39692     1  4  s    1.05839
   10.1     0.00149     0.86881     1  3  s    0.84429    1  4  s    0.70084    1  5  s   -2.37486    1  6  s    0.95412
                                    1  7  s    0.85959
    1.2     2.00000   -63.75735     1  1  py   0.99997
    2.2     2.00000   -63.75735     1  1  pz   0.99997
    3.2     2.00000   -63.75735     1  1  px   0.99997
    4.2     2.00000    -8.65029     1  2  py   0.99964
    5.2     2.00000    -8.65029     1  2  px   0.99964
    6.2     2.00000    -8.65029     1  2  pz   0.99964
    7.2     1.68383    -0.64780     1  3  px   1.08528
    8.2     1.68383    -0.64780     1  3  pz   1.08528
    9.2     1.68383    -0.64780     1  3  py   1.08528
   10.2     0.31605     0.05378     1  5  py  -0.30474    1  8  py   1.21552
   11.2     0.31605     0.05378     1  5  px  -0.30474    1  8  px   1.21552
   12.2     0.31605     0.05378     1  5  pz  -0.30474    1  8  pz   1.21552
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 222000      0.98144074     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 20 2a200b      0.07418541      0.00001577     -0.00012126      0.00023563      0.57695937     -0.00178778     -0.00000000
 20 2b200a     -0.07418541     -0.00001577      0.00012126     -0.00023563     -0.57695937      0.00178778      0.00000000
 20 22ba00     -0.07418541      0.00003008     -0.00000869      0.00014591      0.28693142     -0.50055541     -0.00000000
 20 22ab00      0.07418541     -0.00003008      0.00000869     -0.00014591     -0.28693142      0.50055541      0.00000000
 20 22a0b0     -0.00000000      0.00042143     -0.00024800      0.49966364     -0.00020404      0.00002872      0.00019539
 20 22b0a0      0.00000000     -0.00042143      0.00024800     -0.49966364      0.00020404     -0.00002872     -0.00019539
 20 a22b00      0.00000000      0.00042143     -0.00024800      0.49966364     -0.00020404      0.00002872     -0.00019539
 20 b22a00     -0.00000000     -0.00042143      0.00024800     -0.49966364      0.00020404     -0.00002872      0.00019539
 20 b220a0     -0.07418541     -0.00001431     -0.00011257      0.00008972      0.29002795      0.49876763     -0.00000000
 20 a220b0      0.07418541      0.00001431      0.00011257     -0.00008972     -0.29002795     -0.49876763      0.00000000
 20 a2200b      0.00000000      0.41131265      0.28370036     -0.00020609      0.00004862      0.00004760     -0.44236872
 20 b2200a     -0.00000000     -0.41131265     -0.28370036      0.00020609     -0.00004862     -0.00004760      0.44236872
 20 2b20a0     -0.00000000     -0.41131265     -0.28370037      0.00020609     -0.00004862     -0.00004760     -0.44236872
 20 2a20b0      0.00000000      0.41131265      0.28370037     -0.00020609      0.00004862      0.00004760      0.44236872
 20 22b00a     -0.00000000      0.28370013     -0.41131261     -0.00044347     -0.00009411     -0.00002989     -0.23248424
 20 22a00b      0.00000000     -0.28370013      0.41131261      0.00044347      0.00009411      0.00002989      0.23248424
 20 2b2a00     -0.00000000      0.28370013     -0.41131261     -0.00044347     -0.00009411     -0.00002989      0.23248424
 20 2a2b00      0.00000000     -0.28370013      0.41131261      0.00044347      0.00009411      0.00002989     -0.23248424
 
 Energy:    -2788.27647631  -2787.87456722  -2787.87456722  -2787.87456722  -2787.87456722  -2787.87456722  -2787.86993467

 State:              8               9              10
 20 222000      0.00000000      0.00000000     -0.18042568
 20 2a200b     -0.00000000     -0.00000000      0.40083577
 20 2b200a      0.00000000      0.00000000     -0.40083577
 20 22ba00     -0.00000000     -0.00000000     -0.40083577
 20 22ab00      0.00000000      0.00000000      0.40083577
 20 22a0b0      0.00127831      0.49973731      0.00000000
 20 22b0a0     -0.00127831     -0.49973731     -0.00000000
 20 a22b00     -0.00127831     -0.49973731      0.00000000
 20 b22a00      0.00127831      0.49973731     -0.00000000
 20 b220a0     -0.00000000      0.00000000     -0.40083577
 20 a220b0      0.00000000     -0.00000000      0.40083577
 20 a2200b      0.23248394     -0.00042173     -0.00000000
 20 b2200a     -0.23248394      0.00042173      0.00000000
 20 2b20a0      0.23248394     -0.00042173      0.00000000
 20 2a20b0     -0.23248394      0.00042173     -0.00000000
 20 22b00a     -0.44236708      0.00122246     -0.00000000
 20 22a00b      0.44236708     -0.00122246      0.00000000
 20 2b2a00      0.44236708     -0.00122246     -0.00000000
 20 2a2b00     -0.44236708      0.00122246      0.00000000
 
 Energy:    -2787.86993467  -2787.86993467  -2787.84185608
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2a200a      0.57692714      0.81610063     -0.00248797     -0.00005896      0.00003926     -0.00018755      0.00000000
 20 22aa00      0.57692714     -0.40589565      0.70800786      0.00020803      0.00000254      0.00013170     -0.00000000
 20 a22a00     -0.00000000      0.00016239     -0.00003860      0.00078463     -0.00068319      0.70676640      0.00076621
 20 22a0a0     -0.00000000      0.00016239     -0.00003860      0.00078463     -0.00068319      0.70676640     -0.00076621
 20 a220a0      0.57692714     -0.41020498     -0.70551989     -0.00014908     -0.00004180      0.00005585     -0.00000000
 20 22a00a     -0.00000000     -0.00005176      0.00005416     -0.29376958      0.64282065      0.00094753     -0.08967537
 20 2a2a00     -0.00000000     -0.00005176      0.00005416     -0.29376958      0.64282065      0.00094753      0.08967537
 20 a2200a      0.00000000      0.00003168     -0.00017169      0.64282085      0.29377032     -0.00042968     -0.70098075
 20 2a20a0      0.00000000      0.00003168     -0.00017169      0.64282085      0.29377032     -0.00042968      0.70098075
 
 Energy:    -2787.88990383  -2787.87765681  -2787.87765681  -2787.87765681  -2787.87765681  -2787.87765681  -2787.87022006

 State:              8               9
 20 2a200a      0.00000000     -0.00000000
 20 22aa00     -0.00000000     -0.00000000
 20 a22a00      0.00052411      0.70669329
 20 22a0a0     -0.00052411     -0.70669329
 20 a220a0      0.00000000      0.00000000
 20 22a00a     -0.70098090      0.00061710
 20 2a2a00      0.70098090     -0.00061710
 20 a2200a      0.08967596      0.00069351
 20 2a20a0     -0.08967596     -0.00069351
 
 Energy:    -2787.87022006  -2787.87022006
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.63      4.37      0.05      1.02
 REAL TIME  *        17.44 SEC
 DISK USED  *        44.71 MB (local),      592.63 MB (total)
 SF USED    *        37.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2788.276476  -0.0
    -2787.874567   6.0
    -2787.874567   6.0
    -2787.874567   6.0
    -2787.874567   6.0
    -2787.874567   6.0
    -2787.869935   2.0
    -2787.869935   2.0
    -2787.869935   2.0
    -2787.841856  -0.0
    -2787.889904  -0.0
    -2787.877657   6.0
    -2787.877657   6.0
    -2787.877657   6.0
    -2787.877657   6.0
    -2787.877657   6.0
    -2787.870220   2.0
    -2787.870220   2.0
    -2787.870220   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 36
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    45531 conf   130284 CSFs
 N-1 el internal:    56699 conf   278292 CSFs
 N-2 el internal:    37063 conf   282516 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.99 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2788.27647631
     2     -2787.87456722
     3     -2787.87456722
     4     -2787.87456722
     5     -2787.87456722
     6     -2787.87456722
     7     -2787.86993467
     8     -2787.86993467
     9     -2787.86993467
    10     -2787.84185608

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9934D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2550D-06

 Number of blocks in overlap matrix:   940   Smallest eigenvalue:  0.99D-07
 Number of N-2 electron functions:    2850
 Number of N-1 electron functions:  278292

 Number of internal configurations:                65352
 Number of singly external configurations:      10853696
 Number of doubly external configurations:       4340358
 Total number of contracted configurations:     15259406
 Total number of uncontracted configurations:  439235116

 Diagonal Coupling coefficients finished.               Storage:  74672342 words, CPU-Time:    444.55 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2097143 words, CPU-time:      0.32 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.27647631    -0.00000000    -0.97627718  0.31D-01  0.54D-01   472.13
    1     2     2     1.00000000     0.00000000 -2787.87456722     0.00000000    -0.96863477  0.22D-01  0.57D-01   472.13
    1     3     3     1.00000000     0.00000000 -2787.87456722     0.00000000    -0.96862430  0.22D-01  0.57D-01   472.13
    1     4     4     1.00000000     0.00000000 -2787.87456722    -0.00000000    -0.96883694  0.22D-01  0.57D-01   472.13
    1     5     5     1.00000000     0.00000000 -2787.87456722    -0.00000000    -0.97663567  0.22D-01  0.61D-01   472.13
    1     6     6     1.00000000     0.00000000 -2787.87456722    -0.00000000    -0.97574610  0.22D-01  0.61D-01   472.13
    1     7     7     1.00000000     0.00000000 -2787.86993467     0.00000000    -0.97154661  0.22D-01  0.58D-01   472.13
    1     8     8     1.00000000     0.00000000 -2787.86993467     0.00000000    -0.97153261  0.22D-01  0.58D-01   472.13
    1     9     9     1.00000000     0.00000000 -2787.86993467    -0.00000000    -0.97158454  0.22D-01  0.58D-01   472.13
    1    10    10     1.00000000     0.00000000 -2787.84185608     0.00000000    -0.99460441  0.47D-01  0.60D-01   472.13
    2     1     1     1.06353799    -0.84386684 -2789.12034315    -0.84386684    -0.02434801  0.36D-02  0.17D-02  1908.19
    2     2     2     1.05752014    -0.82922589 -2788.70379312    -0.82922589    -0.01669452  0.13D-02  0.11D-02  1908.19
    2     3     3     1.05751717    -0.82922132 -2788.70378854    -0.82922132    -0.01669866  0.13D-02  0.11D-02  1908.19
    2     4     4     1.05752367    -0.82919295 -2788.70376017    -0.82919295    -0.01671912  0.13D-02  0.11D-02  1908.19
    2     5     5     1.05988858    -0.82884591 -2788.70341314    -0.82884591    -0.01706346  0.12D-02  0.12D-02  1908.19
    2     6     6     1.05967479    -0.82873491 -2788.70330213    -0.82873491    -0.01715972  0.12D-02  0.12D-02  1908.19
    2     7     7     1.05844457    -0.82995434 -2788.69988900    -0.82995434    -0.01663551  0.12D-02  0.11D-02  1908.19
    2     8     8     1.05843824    -0.82995388 -2788.69988854    -0.82995388    -0.01663505  0.12D-02  0.11D-02  1908.19
    2     9     9     1.05843625    -0.82991772 -2788.69985238    -0.82991772    -0.01665559  0.12D-02  0.11D-02  1908.19
    2    10    10     1.07337936    -0.82864415 -2788.67050023    -0.82864415    -0.02598413  0.67D-02  0.13D-02  1908.19
    3     1     1     1.06199557    -0.86896232 -2789.14543863    -0.02509548    -0.00154685  0.49D-04  0.17D-03  3345.35
    3     2     2     1.05817314    -0.84525848 -2788.71982570    -0.01603258    -0.00076752  0.27D-04  0.96D-04  3345.35
    3     3     3     1.05817148    -0.84525801 -2788.71982524    -0.01603669    -0.00076803  0.27D-04  0.96D-04  3345.35
    3     4     4     1.05816142    -0.84524981 -2788.71981704    -0.01605687    -0.00077191  0.27D-04  0.97D-04  3345.35
    3     5     5     1.05843755    -0.84522022 -2788.71978745    -0.01637431    -0.00077937  0.27D-04  0.10D-03  3345.35
    3     6     6     1.05837247    -0.84520724 -2788.71977447    -0.01647234    -0.00078722  0.27D-04  0.10D-03  3345.35
    3     7     7     1.05867406    -0.84595658 -2788.71589125    -0.01600224    -0.00076915  0.27D-04  0.98D-04  3345.35
    3     8     8     1.05867292    -0.84595611 -2788.71589077    -0.01600223    -0.00076943  0.27D-04  0.98D-04  3345.35
    3     9     9     1.05865812    -0.84594592 -2788.71588059    -0.01602821    -0.00077486  0.27D-04  0.99D-04  3345.35
    3    10    10     1.06153533    -0.85305500 -2788.69491108    -0.02441085    -0.00117735  0.90D-04  0.13D-03  3345.35
    4     1     1     1.06643778    -0.87083469 -2789.14731100    -0.00187237    -0.00012421  0.47D-05  0.12D-04  4786.11
    4     2     2     1.06077310    -0.84621761 -2788.72078484    -0.00095914    -0.00008035  0.28D-05  0.89D-05  4786.11
    4     3     3     1.06077283    -0.84621754 -2788.72078476    -0.00095953    -0.00008034  0.28D-05  0.89D-05  4786.11
    4     4     4     1.06076991    -0.84621595 -2788.72078317    -0.00096613    -0.00008135  0.29D-05  0.90D-05  4786.11
    4     5     5     1.06066988    -0.84621011 -2788.72077734    -0.00098989    -0.00008790  0.30D-05  0.99D-05  4786.11
    4     6     6     1.06068478    -0.84620949 -2788.72077672    -0.00100225    -0.00008811  0.31D-05  0.98D-05  4786.11
    4     7     7     1.06114634    -0.84692436 -2788.71685903    -0.00096778    -0.00008152  0.31D-05  0.87D-05  4786.11
    4     8     8     1.06114645    -0.84692428 -2788.71685894    -0.00096817    -0.00008158  0.31D-05  0.87D-05  4786.11
    4     9     9     1.06114291    -0.84692274 -2788.71685740    -0.00097681    -0.00008261  0.31D-05  0.88D-05  4786.11
    4    10    10     1.06308345    -0.85442222 -2788.69627830    -0.00136722    -0.00012060  0.45D-05  0.14D-04  4786.11
    5     1     1     1.06727479    -0.87098058 -2789.14745689    -0.00014589    -0.00001083  0.18D-06  0.12D-05  6223.70
    5     2     2     1.06135869    -0.84632040 -2788.72088763    -0.00010279    -0.00000837  0.30D-06  0.95D-06  6223.70
    5     3     3     1.06135888    -0.84632002 -2788.72088724    -0.00010248    -0.00000861  0.30D-06  0.99D-06  6223.70
    5     4     4     1.06136831    -0.84631972 -2788.72088694    -0.00010377    -0.00000861  0.30D-06  0.98D-06  6223.70
    5     5     5     1.06136842    -0.84631968 -2788.72088691    -0.00010957    -0.00000862  0.30D-06  0.98D-06  6223.70
    5     6     6     1.06136890    -0.84631943 -2788.72088665    -0.00010994    -0.00000875  0.30D-06  0.10D-05  6223.70
    5     7     7     1.06175793    -0.84702637 -2788.71696104    -0.00010201    -0.00000801  0.26D-06  0.92D-06  6223.70
    5     8     8     1.06175799    -0.84702636 -2788.71696102    -0.00010208    -0.00000802  0.26D-06  0.92D-06  6223.70
    5     9     9     1.06175792    -0.84702615 -2788.71696081    -0.00010341    -0.00000814  0.26D-06  0.93D-06  6223.70
    5    10    10     1.06385491    -0.85457666 -2788.69643274    -0.00015444    -0.00001499  0.57D-06  0.17D-05  6223.70
    6     1     1     1.06731343    -0.87099397 -2789.14747028    -0.00001339    -0.00000115  0.26D-07  0.11D-06  7664.01
    6     2     2     1.06132323    -0.84633096 -2788.72089819    -0.00001056    -0.00000118  0.52D-07  0.14D-06  7664.01
    6     3     3     1.06132141    -0.84633091 -2788.72089813    -0.00001089    -0.00000122  0.52D-07  0.14D-06  7664.01
    6     4     4     1.06132391    -0.84633086 -2788.72089809    -0.00001115    -0.00000125  0.51D-07  0.14D-06  7664.01
    6     5     5     1.06132381    -0.84633085 -2788.72089808    -0.00001117    -0.00000126  0.51D-07  0.14D-06  7664.01
    6     6     6     1.06132309    -0.84633078 -2788.72089801    -0.00001135    -0.00000129  0.52D-07  0.14D-06  7664.01
    6     7     7     1.06171918    -0.84703654 -2788.71697120    -0.00001016    -0.00000109  0.51D-07  0.12D-06  7664.01
    6     8     8     1.06171916    -0.84703654 -2788.71697120    -0.00001018    -0.00000109  0.51D-07  0.12D-06  7664.01
    6     9     9     1.06171848    -0.84703649 -2788.71697115    -0.00001034    -0.00000111  0.51D-07  0.12D-06  7664.01
    6    10    10     1.06384684    -0.85459590 -2788.69645198    -0.00001924    -0.00000250  0.14D-06  0.27D-06  7664.01
    7     1     1     1.06734374    -0.87099536 -2789.14747167    -0.00000139    -0.00000014  0.59D-08  0.13D-07  9099.63
    7     2     2     1.06134375    -0.84633249 -2788.72089971    -0.00000153    -0.00000023  0.12D-07  0.24D-07  9099.63
    7     3     3     1.06134368    -0.84633249 -2788.72089971    -0.00000158    -0.00000022  0.11D-07  0.23D-07  9099.63
    7     4     4     1.06134267    -0.84633245 -2788.72089967    -0.00000159    -0.00000023  0.11D-07  0.24D-07  9099.63
    7     5     5     1.06134268    -0.84633245 -2788.72089967    -0.00000159    -0.00000023  0.11D-07  0.24D-07  9099.63
    7     6     6     1.06134225    -0.84633241 -2788.72089963    -0.00000163    -0.00000024  0.11D-07  0.24D-07  9099.63
    7     7     7     1.06173954    -0.84703794 -2788.71697260    -0.00000140    -0.00000020  0.93D-08  0.21D-07  9099.63
    7     8     8     1.06173957    -0.84703794 -2788.71697260    -0.00000140    -0.00000020  0.92D-08  0.21D-07  9099.63
    7     9     9     1.06173927    -0.84703792 -2788.71697258    -0.00000143    -0.00000021  0.95D-08  0.22D-07  9099.63
    7    10    10     1.06387406    -0.85459909 -2788.69645517    -0.00000319    -0.00000054  0.32D-07  0.56D-07  9099.63
    8     1     1     1.06735034    -0.87099552 -2789.14747183    -0.00000016    -0.00000002  0.70D-09  0.21D-08 10542.15
    8     2     2     1.06135591    -0.84633277 -2788.72089999    -0.00000028    -0.00000004  0.22D-08  0.38D-08 10542.15
    8     3     3     1.06135610    -0.84633276 -2788.72089998    -0.00000027    -0.00000004  0.21D-08  0.35D-08 10542.15
    8     4     4     1.06135529    -0.84633273 -2788.72089995    -0.00000028    -0.00000004  0.23D-08  0.37D-08 10542.15
    8     5     5     1.06135529    -0.84633273 -2788.72089995    -0.00000028    -0.00000004  0.23D-08  0.38D-08 10542.15
    8     6     6     1.06135516    -0.84633270 -2788.72089992    -0.00000029    -0.00000004  0.24D-08  0.39D-08 10542.15
    8     7     7     1.06175185    -0.84703819 -2788.71697285    -0.00000025    -0.00000004  0.19D-08  0.34D-08 10542.15
    8     8     8     1.06175186    -0.84703818 -2788.71697285    -0.00000025    -0.00000004  0.19D-08  0.34D-08 10542.15
    8     9     9     1.06175178    -0.84703817 -2788.71697284    -0.00000026    -0.00000004  0.20D-08  0.35D-08 10542.15
    8    10    10     1.06387801    -0.85459974 -2788.69645582    -0.00000065    -0.00000012  0.73D-08  0.11D-07 10542.15
    9     1     1     1.06735031    -0.87099552 -2789.14747184    -0.00000000    -0.00000002  0.71D-09  0.19D-08 11394.48
    9     2     2     1.06135590    -0.84633277 -2788.72089999    -0.00000000    -0.00000004  0.22D-08  0.38D-08 11394.48
    9     3     3     1.06135610    -0.84633276 -2788.72089998    -0.00000000    -0.00000004  0.21D-08  0.35D-08 11394.48
    9     4     4     1.06135529    -0.84633273 -2788.72089995    -0.00000000    -0.00000004  0.23D-08  0.37D-08 11394.48
    9     5     5     1.06135529    -0.84633273 -2788.72089995    -0.00000000    -0.00000004  0.23D-08  0.38D-08 11394.48
    9     6     6     1.06135516    -0.84633270 -2788.72089992    -0.00000000    -0.00000004  0.24D-08  0.39D-08 11394.48
    9     7     7     1.06175185    -0.84703819 -2788.71697285    -0.00000000    -0.00000004  0.19D-08  0.34D-08 11394.48
    9     8     8     1.06175186    -0.84703818 -2788.71697285    -0.00000000    -0.00000004  0.19D-08  0.34D-08 11394.48
    9     9     9     1.06175178    -0.84703817 -2788.71697284    -0.00000000    -0.00000004  0.20D-08  0.35D-08 11394.48
    9    10    10     1.06388661    -0.85459990 -2788.69645598    -0.00000016    -0.00000001  0.52D-09  0.92D-09 11394.48


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%  22.6%
 P   0.4%  51.1%  19.5%

 Initialization:   3.9%
 Other:            1.4%

 Total CPU:    11394.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222222000           0.9564164   0.0000001  -0.0000006   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            -0.0000000  -0.1342787
 222222202222/200\           0.0799585  -0.0355487   0.7911335  -0.0004458  -0.0029060   0.0001414   0.0000000  -0.0000000
                             0.0000000   0.5534456
 2222222022222/\00           0.0799585   0.7029185  -0.3647756   0.0006980   0.0018125  -0.0000655  -0.0000000  -0.0000000
                             0.0000000   0.5534504
 2222222022222/00\           0.0000000  -0.0004920   0.0003644   0.6858416  -0.0000004  -0.0001225  -0.6858186  -0.0032244
                            -0.0012966   0.0000000
 22222220222/2200\          -0.0000000  -0.0004722   0.0024981  -0.0000013   0.6858373  -0.0003071   0.0032213  -0.6858176
                             0.0016413   0.0000000
 22222220222/22\00           0.0000000  -0.0000000  -0.0001214   0.0001226   0.0003076   0.6858361  -0.0013043   0.0016352
                             0.6858299  -0.0000000
 2222222022222/0\0          -0.0000000  -0.0000000  -0.0001214   0.0001226   0.0003076   0.6858360   0.0013043  -0.0016353
                            -0.6858300   0.0000000
 222222202222/2\00          -0.0000000  -0.0004919   0.0003644   0.6858301  -0.0000004  -0.0001225   0.6858300   0.0032244
                             0.0012966   0.0000000
 222222202222/20\0           0.0000000  -0.0004721   0.0024980  -0.0000013   0.6858253  -0.0003071  -0.0032213   0.6858296
                            -0.0016414  -0.0000000
 22222220222/220\0           0.0799585  -0.6673700  -0.4263512  -0.0002522   0.0010935  -0.0000759  -0.0000000   0.0000000
                             0.0000000   0.5534504

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967155   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.037766
 2           0.000000   -0.000668   -0.000696   -0.000000   -0.025448    0.970259    0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.003535    0.000516   -0.000172    0.970252    0.025451   -0.000000   -0.000000    0.000000    0.000004
 4          -0.000000   -0.000002    0.970593    0.000173   -0.000534    0.000682    0.000000   -0.000008   -0.000000   -0.000000
 5          -0.000000    0.970586   -0.000001    0.000435   -0.003551    0.000575   -0.000009   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000435   -0.000173    0.970593    0.000173    0.000004    0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000    0.000008    0.000000    0.000000   -0.000000   -0.004558    0.970404   -0.001846    0.000000
 8           0.000000    0.000008    0.000000   -0.000000   -0.000000   -0.000000    0.970403    0.004562    0.002314    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.002322    0.001835    0.970412    0.000000
 10          0.041645   -0.000000    0.000000    0.000000   -0.000004    0.000000   -0.000000   -0.000000   -0.000000    0.968518

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967890    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.001910
 2           0.000000    0.970593   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.970593    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.970593   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.970593    0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970593    0.000000   -0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970417    0.000000   -0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970417    0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970417   -0.000000
 10          0.001910    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969411


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96715524 (fixed)   0.96792552 (relaxed)   0.96789042 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009357   -0.00032612   -0.81545293
 Singles      0.01069003   -0.05369681   -0.05902830
 Pairs        0.05666658    0.05307517    0.00348571
 Total        1.06745018   -0.00094777   -0.87099552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.27574607
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.80810552
 One electron energy                -3876.83395715
 Two electron energy                 1087.68648531
 Virial quotient                       -0.93132761
 Correlation energy                    -0.87172577
 !MRCI STATE 1.1 Energy             -2789.147471836211

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.20626990 (Davidson, fixed reference)
 Cluster corrected energies         -2789.20620241 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.20626990 (Davidson, rotated reference)

 Cluster corrected energies         -2789.20501122 (Pople, fixed reference)
 Cluster corrected energies         -2789.20494124 (Pople, relaxed reference)
 Cluster corrected energies         -2789.20501122 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97025853 (fixed)   0.97064264 (relaxed)   0.97059267 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00051340   -0.73859015
 Singles      0.01163206   -0.06243523   -0.06809101
 Pairs        0.04973302    0.00000015   -0.03965160
 Total        1.06151462   -0.06294848   -0.84633277
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87456722
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04785767
 One electron energy                -3866.75565937
 Two electron energy                 1078.03475937
 Virial quotient                       -0.93142162
 Correlation energy                    -0.84633277
 !MRCI STATE 2.1 Energy             -2788.720899994866

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77296184 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77286936 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77296184 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77158069 (Pople, fixed reference)
 Cluster corrected energies         -2788.77148579 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77158069 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97025226 (fixed)   0.97064255 (relaxed)   0.97059259 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00051339   -0.73858652
 Singles      0.01163221   -0.06243553   -0.06809126
 Pairs        0.04973306   -0.00000326   -0.03965497
 Total        1.06151481   -0.06295218   -0.84633276
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87456722
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04793183
 One electron energy                -3866.75570425
 Two electron energy                 1078.03480427
 Virial quotient                       -0.93142159
 Correlation energy                    -0.84633276
 !MRCI STATE 3.1 Energy             -2788.720899982858

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77296198 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77286951 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77296198 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77158084 (Pople, fixed reference)
 Cluster corrected energies         -2788.77148594 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77158084 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97059255 (fixed)   0.97064292 (relaxed)   0.97059295 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014955   -0.00051339   -0.73858983
 Singles      0.01163250   -0.06243585   -0.06809146
 Pairs        0.04973197    0.00000000   -0.03965144
 Total        1.06151401   -0.06294924   -0.84633273
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87456722
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04779075
 One electron energy                -3866.75564265
 Two electron energy                 1078.03474270
 Virial quotient                       -0.93142164
 Correlation energy                    -0.84633273
 !MRCI STATE 4.1 Energy             -2788.720899953656

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77296127 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77286879 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77296127 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77158012 (Pople, fixed reference)
 Cluster corrected energies         -2788.77148521 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77158012 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97058619 (fixed)   0.97064292 (relaxed)   0.97059296 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014955   -0.00051339   -0.73858985
 Singles      0.01163250   -0.06243583   -0.06809146
 Pairs        0.04973196    0.00000001   -0.03965141
 Total        1.06151401   -0.06294922   -0.84633273
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87456722
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04778844
 One electron energy                -3866.75564152
 Two electron energy                 1078.03474156
 Virial quotient                       -0.93142164
 Correlation energy                    -0.84633273
 !MRCI STATE 5.1 Energy             -2788.720899953583

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77296127 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77286879 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77296127 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77158011 (Pople, fixed reference)
 Cluster corrected energies         -2788.77148521 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77158011 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97059289 (fixed)   0.97064298 (relaxed)   0.97059301 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014955   -0.00051339   -0.73858993
 Singles      0.01163244   -0.06243580   -0.06809134
 Pairs        0.04973189   -0.00000000   -0.03965143
 Total        1.06151388   -0.06294920   -0.84633270
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87456722
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04775014
 One electron energy                -3866.75561936
 Two electron energy                 1078.03471944
 Virial quotient                       -0.93142165
 Correlation energy                    -0.84633270
 !MRCI STATE 6.1 Energy             -2788.720899922424

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77296113 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77286865 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77296113 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77157997 (Pople, fixed reference)
 Cluster corrected energies         -2788.77148506 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77157997 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97040423 (fixed)   0.97046165 (relaxed)   0.97041669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013921   -0.00050844   -0.73799317
 Singles      0.01212737   -0.06348141   -0.06945383
 Pairs        0.04963307   -0.00000000   -0.03959119
 Total        1.06189966   -0.06398985   -0.84703819
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86993467
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04597276
 One electron energy                -3866.73992770
 Two electron energy                 1078.02295485
 Virial quotient                       -0.93142089
 Correlation energy                    -0.84703819
 !MRCI STATE 7.1 Energy             -2788.716972851756

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76940423 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76932090 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76940423 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76803063 (Pople, fixed reference)
 Cluster corrected energies         -2788.76794506 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76803063 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97040321 (fixed)   0.97046164 (relaxed)   0.97041669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013921   -0.00050844   -0.73799316
 Singles      0.01212738   -0.06348140   -0.06945383
 Pairs        0.04963307   -0.00000001   -0.03959119
 Total        1.06189966   -0.06398986   -0.84703818
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86993467
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04597673
 One electron energy                -3866.73993056
 Two electron energy                 1078.02295771
 Virial quotient                       -0.93142089
 Correlation energy                    -0.84703818
 !MRCI STATE 8.1 Energy             -2788.716972850560

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76940423 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76932090 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76940423 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76803063 (Pople, fixed reference)
 Cluster corrected energies         -2788.76794506 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76803063 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97041221 (fixed)   0.97046168 (relaxed)   0.97041673 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013921   -0.00050844   -0.73799322
 Singles      0.01212735   -0.06348139   -0.06945378
 Pairs        0.04963302   -0.00000001   -0.03959117
 Total        1.06189959   -0.06398984   -0.84703817
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86993467
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04593213
 One electron energy                -3866.73990044
 Two electron energy                 1078.02292760
 Virial quotient                       -0.93142091
 Correlation energy                    -0.84703817
 !MRCI STATE 9.1 Energy             -2788.716972839410

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76940416 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76932083 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76940416 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76803055 (Pople, fixed reference)
 Cluster corrected energies         -2788.76794498 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76803055 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96851783 (fixed)   0.96948914 (relaxed)   0.96941086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020470   -0.00052213   -0.00113675
 Singles      0.01353867   -0.06531092   -0.07224729
 Pairs        0.05036102   -0.78825430   -0.78121586
 Total        1.06410439   -0.85408734   -0.85459990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.84258633
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24078806
 One electron energy                -3867.58860807
 Two electron energy                 1078.89215209
 Virial quotient                       -0.93135344
 Correlation energy                    -0.85386965
 !MRCI STATE 10.1 Energy            -2788.696455976667

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.75119277 (Davidson, fixed reference)
 Cluster corrected energies         -2788.75104605 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.75119277 (Davidson, rotated reference)

 Cluster corrected energies         -2788.74986267 (Pople, fixed reference)
 Cluster corrected energies         -2788.74971143 (Pople, relaxed reference)
 Cluster corrected energies         -2788.74986267 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1184.61       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13681.60  13675.97      4.37      0.05      1.02
 REAL TIME  *     13837.41 SEC
 DISK USED  *         1.20 GB (local),       14.45 GB (total)
 SF USED    *        12.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.20626990  AU                              
 SETTING HLSDIAG(2)     =     -2788.77296184  AU                              
 SETTING HLSDIAG(3)     =     -2788.77296198  AU                              
 SETTING HLSDIAG(4)     =     -2788.77296127  AU                              
 SETTING HLSDIAG(5)     =     -2788.77296127  AU                              
 SETTING HLSDIAG(6)     =     -2788.77296113  AU                              
 SETTING HLSDIAG(7)     =     -2788.76940423  AU                              
 SETTING HLSDIAG(8)     =     -2788.76940423  AU                              
 SETTING HLSDIAG(9)     =     -2788.76940416  AU                              
 SETTING HLSDIAG(10)    =     -2788.75119277  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 36
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    44957 conf   215544 CSFs
 N-1 el internal:    55349 conf   505086 CSFs
 N-2 el internal:    33643 conf   537132 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2787.88990383
     2     -2787.87765681
     3     -2787.87765681
     4     -2787.87765681
     5     -2787.87765681
     6     -2787.87765681
     7     -2787.87022006
     8     -2787.87022006
     9     -2787.87022006

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1166D-06

 Number of blocks in overlap matrix:   888   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2558
 Number of N-1 electron functions:  505086

 Number of internal configurations:               107628
 Number of singly external configurations:      19698612
 Number of doubly external configurations:       3894974
 Total number of contracted configurations:     23701214
 Total number of uncontracted configurations:  832896774

 Diagonal Coupling coefficients finished.               Storage: 101570273 words, CPU-Time:    759.13 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3208054 words, CPU-time:      0.30 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.88990383     0.00000000    -0.97913139  0.24D-01  0.62D-01   794.62
    1     2     2     1.00000000     0.00000000 -2787.87765681     0.00000000    -0.97915947  0.23D-01  0.62D-01   794.62
    1     3     3     1.00000000     0.00000000 -2787.87765681     0.00000000    -0.97823957  0.23D-01  0.62D-01   794.62
    1     4     4     1.00000000     0.00000000 -2787.87765681    -0.00000000    -0.97746695  0.23D-01  0.61D-01   794.62
    1     5     5     1.00000000     0.00000000 -2787.87765681     0.00000000    -0.97730040  0.23D-01  0.61D-01   794.62
    1     6     6     1.00000000     0.00000000 -2787.87765681     0.00000000    -0.97771288  0.23D-01  0.62D-01   794.62
    1     7     7     1.00000000     0.00000000 -2787.87022006     0.00000000    -0.97762618  0.22D-01  0.62D-01   794.62
    1     8     8     1.00000000     0.00000000 -2787.87022006     0.00000000    -0.97754256  0.22D-01  0.62D-01   794.62
    1     9     9     1.00000000     0.00000000 -2787.87022006     0.00000000    -0.97775250  0.22D-01  0.62D-01   794.62
    2     1     1     1.06186410    -0.82797168 -2788.71787551    -0.82797168    -0.01727081  0.15D-02  0.12D-02  3082.70
    2     2     2     1.06053670    -0.82930659 -2788.70696340    -0.82930659    -0.01684802  0.13D-02  0.12D-02  3082.70
    2     3     3     1.06059370    -0.82929183 -2788.70694864    -0.82929183    -0.01686715  0.13D-02  0.12D-02  3082.70
    2     4     4     1.06048687    -0.82926117 -2788.70691798    -0.82926117    -0.01686797  0.13D-02  0.12D-02  3082.70
    2     5     5     1.06091052    -0.82904541 -2788.70670221    -0.82904541    -0.01700715  0.12D-02  0.12D-02  3082.70
    2     6     6     1.06072041    -0.82884302 -2788.70649982    -0.82884302    -0.01714642  0.13D-02  0.12D-02  3082.70
    2     7     7     1.06044786    -0.83010568 -2788.70032574    -0.83010568    -0.01646646  0.12D-02  0.11D-02  3082.70
    2     8     8     1.06042071    -0.83009047 -2788.70031053    -0.83009047    -0.01647184  0.12D-02  0.11D-02  3082.70
    2     9     9     1.06047155    -0.83005882 -2788.70027888    -0.83005882    -0.01650305  0.12D-02  0.11D-02  3082.70
    3     1     1     1.05893500    -0.84434102 -2788.73424485    -0.01636934    -0.00065383  0.22D-04  0.87D-04  5372.69
    3     2     2     1.05889388    -0.84530717 -2788.72296397    -0.01600058    -0.00066834  0.22D-04  0.89D-04  5372.69
    3     3     3     1.05889034    -0.84530636 -2788.72296316    -0.01601452    -0.00066904  0.22D-04  0.89D-04  5372.69
    3     4     4     1.05886452    -0.84529391 -2788.72295072    -0.01603274    -0.00067684  0.22D-04  0.90D-04  5372.69
    3     5     5     1.05884200    -0.84523646 -2788.72289326    -0.01619105    -0.00070767  0.23D-04  0.96D-04  5372.69
    3     6     6     1.05874606    -0.84520341 -2788.72286022    -0.01636040    -0.00072921  0.23D-04  0.99D-04  5372.69
    3     7     7     1.05907761    -0.84575237 -2788.71597243    -0.01564669    -0.00065419  0.24D-04  0.87D-04  5372.69
    3     8     8     1.05906743    -0.84574835 -2788.71596841    -0.01565788    -0.00065683  0.24D-04  0.87D-04  5372.69
    3     9     9     1.05906340    -0.84574581 -2788.71596587    -0.01568699    -0.00065792  0.24D-04  0.87D-04  5372.69
    4     1     1     1.06059290    -0.84512758 -2788.73503141    -0.00078655    -0.00006053  0.21D-05  0.72D-05  7661.73
    4     2     2     1.06080237    -0.84611882 -2788.72377562    -0.00081165    -0.00006314  0.22D-05  0.74D-05  7661.73
    4     3     3     1.06079908    -0.84611870 -2788.72377551    -0.00081235    -0.00006311  0.22D-05  0.74D-05  7661.73
    4     4     4     1.06079854    -0.84611776 -2788.72377457    -0.00082385    -0.00006411  0.23D-05  0.75D-05  7661.73
    4     5     5     1.06075578    -0.84610927 -2788.72376607    -0.00087281    -0.00007106  0.25D-05  0.82D-05  7661.73
    4     6     6     1.06075458    -0.84610688 -2788.72376369    -0.00090347    -0.00007289  0.26D-05  0.83D-05  7661.73
    4     7     7     1.06092306    -0.84654521 -2788.71676527    -0.00079284    -0.00006273  0.22D-05  0.74D-05  7661.73
    4     8     8     1.06092184    -0.84654490 -2788.71676496    -0.00079655    -0.00006302  0.22D-05  0.74D-05  7661.73
    4     9     9     1.06091799    -0.84654422 -2788.71676428    -0.00079842    -0.00006337  0.22D-05  0.74D-05  7661.73
    5     1     1     1.06117888    -0.84520154 -2788.73510537    -0.00007397    -0.00000467  0.20D-06  0.52D-06  9949.95
    5     2     2     1.06140130    -0.84619638 -2788.72385318    -0.00007756    -0.00000529  0.20D-06  0.61D-06  9949.95
    5     3     3     1.06140215    -0.84619637 -2788.72385318    -0.00007767    -0.00000525  0.19D-06  0.61D-06  9949.95
    5     4     4     1.06140215    -0.84619631 -2788.72385311    -0.00007855    -0.00000529  0.20D-06  0.62D-06  9949.95
    5     5     5     1.06139918    -0.84619622 -2788.72385303    -0.00008696    -0.00000561  0.21D-06  0.63D-06  9949.95
    5     6     6     1.06139872    -0.84619587 -2788.72385268    -0.00008899    -0.00000582  0.21D-06  0.66D-06  9949.95
    5     7     7     1.06152310    -0.84662228 -2788.71684234    -0.00007707    -0.00000520  0.18D-06  0.61D-06  9949.95
    5     8     8     1.06152302    -0.84662227 -2788.71684233    -0.00007737    -0.00000521  0.18D-06  0.61D-06  9949.95
    5     9     9     1.06152349    -0.84662212 -2788.71684218    -0.00007790    -0.00000529  0.18D-06  0.62D-06  9949.95
    6     1     1     1.06116796    -0.84520710 -2788.73511093    -0.00000555    -0.00000047  0.26D-07  0.58D-07 12232.60
    6     2     2     1.06138791    -0.84620297 -2788.72385977    -0.00000659    -0.00000063  0.33D-07  0.77D-07 12232.60
    6     3     3     1.06138661    -0.84620289 -2788.72385970    -0.00000652    -0.00000066  0.34D-07  0.81D-07 12232.60
    6     4     4     1.06139025    -0.84620285 -2788.72385966    -0.00000654    -0.00000062  0.33D-07  0.76D-07 12232.60
    6     5     5     1.06139087    -0.84620282 -2788.72385963    -0.00000660    -0.00000064  0.33D-07  0.78D-07 12232.60
    6     6     6     1.06139086    -0.84620282 -2788.72385962    -0.00000694    -0.00000062  0.33D-07  0.76D-07 12232.60
    6     7     7     1.06151248    -0.84662863 -2788.71684868    -0.00000635    -0.00000061  0.32D-07  0.74D-07 12232.60
    6     8     8     1.06151236    -0.84662862 -2788.71684868    -0.00000635    -0.00000061  0.32D-07  0.74D-07 12232.60
    6     9     9     1.06151218    -0.84662859 -2788.71684865    -0.00000647    -0.00000063  0.33D-07  0.76D-07 12232.60
    7     1     1     1.06118052    -0.84520768 -2788.73511151    -0.00000058    -0.00000008  0.46D-08  0.88D-08 14524.12
    7     2     2     1.06140396    -0.84620376 -2788.72386056    -0.00000079    -0.00000011  0.59D-08  0.12D-07 14524.12
    7     3     3     1.06140379    -0.84620372 -2788.72386053    -0.00000083    -0.00000011  0.61D-08  0.13D-07 14524.12
    7     4     4     1.06140479    -0.84620364 -2788.72386045    -0.00000079    -0.00000011  0.58D-08  0.12D-07 14524.12
    7     5     5     1.06140491    -0.84620363 -2788.72386044    -0.00000081    -0.00000011  0.60D-08  0.12D-07 14524.12
    7     6     6     1.06140490    -0.84620361 -2788.72386041    -0.00000079    -0.00000011  0.58D-08  0.12D-07 14524.12
    7     7     7     1.06152488    -0.84662940 -2788.71684946    -0.00000078    -0.00000011  0.59D-08  0.12D-07 14524.12
    7     8     8     1.06152481    -0.84662940 -2788.71684946    -0.00000078    -0.00000011  0.59D-08  0.12D-07 14524.12
    7     9     9     1.06152474    -0.84662939 -2788.71684945    -0.00000080    -0.00000011  0.60D-08  0.12D-07 14524.12
    8     1     1     1.06118519    -0.84520778 -2788.73511161    -0.00000010    -0.00000001  0.75D-09  0.13D-08 16808.78
    8     2     2     1.06141166    -0.84620389 -2788.72386070    -0.00000013    -0.00000002  0.96D-09  0.18D-08 16808.78
    8     3     3     1.06141159    -0.84620386 -2788.72386067    -0.00000014    -0.00000002  0.99D-09  0.19D-08 16808.78
    8     4     4     1.06141169    -0.84620377 -2788.72386058    -0.00000013    -0.00000002  0.95D-09  0.17D-08 16808.78
    8     5     5     1.06141161    -0.84620377 -2788.72386057    -0.00000014    -0.00000002  0.97D-09  0.18D-08 16808.78
    8     6     6     1.06141166    -0.84620374 -2788.72386054    -0.00000013    -0.00000002  0.94D-09  0.17D-08 16808.78
    8     7     7     1.06153222    -0.84662954 -2788.71684960    -0.00000013    -0.00000002  0.99D-09  0.17D-08 16808.78
    8     8     8     1.06153223    -0.84662953 -2788.71684959    -0.00000013    -0.00000002  0.99D-09  0.17D-08 16808.78
    8     9     9     1.06153216    -0.84662953 -2788.71684959    -0.00000014    -0.00000002  0.10D-08  0.18D-08 16808.78


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.3%  24.6%
 P   0.3%  50.5%  18.3%

 Initialization:   4.5%
 Other:            0.9%

 Total CPU:    16808.8 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/220/0           0.5600013  -0.0745769   0.7885862  -0.0000747   0.0000000  -0.0000542   0.0000000  -0.0000000
                            -0.0000000
 222222202222/200/           0.5600018   0.7202230  -0.3297092   0.0000329  -0.0000000   0.0000238  -0.0000000   0.0000000
                            -0.0000000
 2222222022222/00/           0.0000000  -0.0000016   0.0000648   0.6859845  -0.0000000  -0.0000000  -0.0000000  -0.6858489
                             0.0000000
 2222222022222/0/0          -0.0000000  -0.0000000   0.0000000   0.0000000   0.6859838   0.0001744   0.0007149  -0.0000000
                            -0.6858493
 22222220222/2200/           0.0000000  -0.0000011   0.0000470   0.0000000  -0.0001744   0.6859835  -0.6858496   0.0000000
                            -0.0007149
 222222202222/20/0          -0.0000000  -0.0000011   0.0000470   0.0000000  -0.0001744   0.6859828   0.6858503  -0.0000000
                             0.0007149
 22222220222/22/00          -0.0000000   0.0000000   0.0000000  -0.0000000   0.6859824   0.0001744  -0.0007149  -0.0000000
                             0.6858507
 222222202222/2/00          -0.0000000  -0.0000016   0.0000648   0.6859817   0.0000000  -0.0000000   0.0000000   0.6858517
                             0.0000000
 2222222022222//00           0.5599992  -0.6456492  -0.4588784   0.0000418  -0.0000000   0.0000304   0.0000000   0.0000000
                             0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970670    0.000001   -0.000002   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000002    0.876500   -0.416843   -0.000002   -0.000002   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000001   -0.416843   -0.876500    0.000067    0.000092    0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000041    0.000082    0.000000    0.970572    0.000000    0.000000   -0.000002   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000247   -0.000000    0.970572   -0.000000    0.000000   -0.000001
 6           0.000000    0.000030    0.000059    0.970572   -0.000000    0.000247   -0.000001   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.970510    0.000000   -0.001012
 8           0.000000    0.000000    0.000000    0.000000    0.000002   -0.000000   -0.000000    0.970511    0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000001    0.001012   -0.000000    0.970510

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970670    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.970572    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.970572   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.970572   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.970572    0.000000    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970572   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970511   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970511    0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970511


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97066962 (fixed)   0.97072244 (relaxed)   0.97066962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015187   -0.00049140   -0.73717114
 Singles      0.01197153   -0.06294224   -0.06883791
 Pairs        0.04922295    0.00000000   -0.03919873
 Total        1.06134634   -0.06343364   -0.84520778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88990383
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.01333587
 One electron energy                -3866.66439499
 Two electron energy                 1077.92928338
 Virial quotient                       -0.93143710
 Correlation energy                    -0.84520778
 !MRCI STATE 1.1 Energy             -2788.735111606419

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78696201 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78686439 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78696201 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78518587 (Pople, fixed reference)
 Cluster corrected energies         -2788.78508659 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78518587 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.87650029 (fixed)   0.97061779 (relaxed)   0.97057232 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013895   -0.00050053   -0.73778548
 Singles      0.01191174   -0.06311855   -0.06895383
 Pairs        0.04950846   -0.00000000   -0.03946458
 Total        1.06155915   -0.06361907   -0.84620389
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87765681
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.03401374
 One electron energy                -3866.71060327
 Two electron energy                 1077.98674258
 Virial quotient                       -0.93142691
 Correlation energy                    -0.84620389
 !MRCI STATE 2.1 Energy             -2788.723860696368

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77595229 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77586813 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77595229 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77417717 (Pople, fixed reference)
 Cluster corrected energies         -2788.77409155 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77417717 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.87650034 (fixed)   0.97061782 (relaxed)   0.97057235 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013895   -0.00050053   -0.73778561
 Singles      0.01191171   -0.06311843   -0.06895375
 Pairs        0.04950841   -0.00000000   -0.03946450
 Total        1.06155908   -0.06361896   -0.84620386
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87765681
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.03396328
 One electron energy                -3866.71056692
 Two electron energy                 1077.98670625
 Virial quotient                       -0.93142693
 Correlation energy                    -0.84620386
 !MRCI STATE 3.1 Energy             -2788.723860666128

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77595219 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77586804 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77595219 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77417708 (Pople, fixed reference)
 Cluster corrected energies         -2788.77409146 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77417708 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97057230 (fixed)   0.97061777 (relaxed)   0.97057230 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013895   -0.00050053   -0.73778547
 Singles      0.01191176   -0.06311841   -0.06895369
 Pairs        0.04950846    0.00000000   -0.03946461
 Total        1.06155918   -0.06361894   -0.84620377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87765681
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.03400072
 One electron energy                -3866.71059696
 Two electron energy                 1077.98673638
 Virial quotient                       -0.93142692
 Correlation energy                    -0.84620377
 !MRCI STATE 4.1 Energy             -2788.723860577009

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77595219 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77586803 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77595219 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77417708 (Pople, fixed reference)
 Cluster corrected energies         -2788.77409145 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77417708 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97057231 (fixed)   0.97061781 (relaxed)   0.97057234 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013896   -0.00050053   -0.73778627
 Singles      0.01191175   -0.06311839   -0.06895367
 Pairs        0.04950840    0.00000077   -0.03946383
 Total        1.06155910   -0.06361814   -0.84620377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87765681
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.03397095
 One electron energy                -3866.71057591
 Two electron energy                 1077.98671534
 Virial quotient                       -0.93142693
 Correlation energy                    -0.84620377
 !MRCI STATE 5.1 Energy             -2788.723860570891

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77595212 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77586796 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77595212 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77417700 (Pople, fixed reference)
 Cluster corrected energies         -2788.77409138 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77417700 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97057229 (fixed)   0.97061779 (relaxed)   0.97057232 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013896   -0.00050053   -0.73778546
 Singles      0.01191177   -0.06311842   -0.06895369
 Pairs        0.04950842    0.00000000   -0.03946459
 Total        1.06155915   -0.06361894   -0.84620374
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87765681
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.03399877
 One electron energy                -3866.71059524
 Two electron energy                 1077.98673470
 Virial quotient                       -0.93142692
 Correlation energy                    -0.84620374
 !MRCI STATE 6.1 Energy             -2788.723860542120

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77595212 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77586797 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77595212 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77417701 (Pople, fixed reference)
 Cluster corrected energies         -2788.77409139 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77417701 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97051032 (fixed)   0.97056242 (relaxed)   0.97051084 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015206   -0.00050867   -0.73911824
 Singles      0.01185045   -0.06285758   -0.06865497
 Pairs        0.04969113    0.00081644   -0.03885633
 Total        1.06169364   -0.06254982   -0.84662954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87022006
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04551813
 One electron energy                -3866.73198603
 Two electron energy                 1078.01513643
 Virial quotient                       -0.93142099
 Correlation energy                    -0.84662954
 !MRCI STATE 7.1 Energy             -2788.716849597286

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76908126 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76898573 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76908126 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76730725 (Pople, fixed reference)
 Cluster corrected energies         -2788.76721004 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76730725 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.97051084 (fixed)   0.97056242 (relaxed)   0.97051084 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015206   -0.00050867   -0.73834925
 Singles      0.01185044   -0.06285757   -0.06865496
 Pairs        0.04969114   -0.00000000   -0.03962532
 Total        1.06169365   -0.06336624   -0.84662953
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87022006
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04551709
 One electron energy                -3866.73198509
 Two electron energy                 1078.01513549
 Virial quotient                       -0.93142099
 Correlation energy                    -0.84662953
 !MRCI STATE 8.1 Energy             -2788.716849592398

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76908125 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76898573 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76908125 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76730725 (Pople, fixed reference)
 Cluster corrected energies         -2788.76721004 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76730725 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97051034 (fixed)   0.97056245 (relaxed)   0.97051087 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015206   -0.00050867   -0.00060076
 Singles      0.01185044   -0.06285755   -0.06865493
 Pairs        0.04969108   -0.78326289   -0.77737383
 Total        1.06169358   -0.84662911   -0.84662953
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87022006
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.04548469
 One electron energy                -3866.73196256
 Two electron energy                 1078.01511297
 Virial quotient                       -0.93142100
 Correlation energy                    -0.84662953
 !MRCI STATE 9.1 Energy             -2788.716849587995

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76908119 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76898567 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76908119 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76730719 (Pople, fixed reference)
 Cluster corrected energies         -2788.76720998 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76730719 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2833.88       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     33671.94  19990.33  13675.97      4.37      0.05      1.02
 REAL TIME  *     34020.85 SEC
 DISK USED  *         2.81 GB (local),       33.78 GB (total)
 SF USED    *        17.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2788.78686439  AU                              
 SETTING HLSDIAG(12)    =     -2788.77586813  AU                              
 SETTING HLSDIAG(13)    =     -2788.77586804  AU                              
 SETTING HLSDIAG(14)    =     -2788.77586803  AU                              
 SETTING HLSDIAG(15)    =     -2788.77586796  AU                              
 SETTING HLSDIAG(16)    =     -2788.77586797  AU                              
 SETTING HLSDIAG(17)    =     -2788.76898573  AU                              
 SETTING HLSDIAG(18)    =     -2788.76898573  AU                              
 SETTING HLSDIAG(19)    =     -2788.76898567  AU                              


         HLSDIAG
    -2789.206270
    -2788.772962
    -2788.772962
    -2788.772961
    -2788.772961
    -2788.772961
    -2788.769404
    -2788.769404
    -2788.769404
    -2788.751193
    -2788.786864
    -2788.775868
    -2788.775868
    -2788.775868
    -2788.775868
    -2788.775868
    -2788.768986
    -2788.768986
    -2788.768986
                                                  

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

 Time for Seward_LS:       4.63 sec

        6950602. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1916 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.63 sec, REAL time:      4.71 sec


 SORTLS1 read     7824294. and wrote     7824294. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.12 sec
 SORTLS2 read     7824294. and wrote    38256242. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.08 sec

 FILE SIZES: FILE 1:   171.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.62       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2833.88       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     33678.05      6.09  19990.33  13675.97      4.37      0.05      1.02
 REAL TIME  *     34027.23 SEC
 DISK USED  *         2.81 GB (local),       34.16 GB (total)
 SF USED    *        17.62 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:  -2789.147472  -2788.720900  -2788.720900  -2788.720900  -2788.720900  -2788.720900  -2788.716973  -2788.716973
                     -2788.716973  -2788.696456
 Replaced energies:  -2789.206270  -2788.772962  -2788.772962  -2788.772961  -2788.772961  -2788.772961  -2788.769404  -2788.769404
                     -2788.769404  -2788.751193

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.735112  -2788.723861  -2788.723861  -2788.723861  -2788.723861  -2788.723861  -2788.716850  -2788.716850
                     -2788.716850
 Replaced energies:  -2788.786864  -2788.775868  -2788.775868  -2788.775868  -2788.775868  -2788.775868  -2788.768986  -2788.768986
                     -2788.768986



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.20626990

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   95100.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   95100.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   95100.25       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   95100.25       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   95100.28       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95880.93       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95880.93       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95880.95       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   99877.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.01       0.00      -4.73    1006.71      -2.41      -0.00
                           -0.00      -0.00       0.00       0.01       0.00       0.00   -1006.71      -4.73      -1.90       0.00

   12   2.1  1.0  1.0       0.00       0.55      -2.93       0.00    -803.94       0.36      -2.71     576.80      -1.38      -0.00
                            0.00      -0.99       0.74    1381.58      -0.00      -0.25     -66.61      -0.31      -0.12      -0.00

   13   3.1  1.0  1.0      -0.00      -0.73       4.20      -0.00    1131.14      -0.57      -1.93     409.96      -1.04      -0.00
                            0.00      -0.02      -0.04     130.65       0.00       0.02     704.51       3.31       1.29       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.12      -0.12      -0.42    -693.87       1.17      -1.50    -612.85       0.00
                           -0.00     747.12   -1169.45       1.15       4.77      -0.21      -0.07      -0.00      -0.00       0.00

   15   5.1  1.0  1.0       0.00      -0.66       0.06     693.87       0.00      -0.12     612.85       2.88       1.16       0.00
                            0.00       0.48      -2.53       0.00    -693.86       0.13       2.88    -612.85       1.62       0.00

   16   6.1  1.0  1.0       0.00     639.22    1231.75      -0.02      -4.13       0.22       0.16      -0.03       0.00      -0.00
                           -0.00       0.00      -0.12       0.12       0.13     693.87       1.12      -1.62    -612.85       0.00

   17   7.1  1.0  1.0    -739.60     625.62    -324.67      -0.02       1.61      -0.06      -0.72      -0.00      -0.00    -934.92
                            0.00       0.00      -0.11       0.11      -0.36     610.41       1.32      -2.37    -691.12       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.11      -0.11      -0.27    -610.42       1.31      -1.65    -691.13       0.00
                          739.60     593.98     379.47       0.22      -0.97       0.07       0.00      -0.00       0.00     934.93

   19   9.1  1.0  1.0      -0.77       0.21      -0.01     610.41       0.00      -0.11     691.13       3.25       1.31      -0.97
                            0.00      -0.42       2.22      -0.00     610.40       0.36      -3.24     691.12      -2.37      -0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       2.71      -3.39   -1423.72       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.14       0.14       0.37     816.91      -1.73       2.17     909.97      -0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.32       0.39       0.71    1784.47       0.73      -0.91    -416.57       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.68      -3.57       0.00    -981.29       0.27      -4.07     866.69      -2.03      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1960.59      88.10       1.11       1.03       0.02       0.22       0.00       0.00      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.21       0.54     981.29      -0.00      -0.30    -866.69      -4.07      -1.61       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.09       0.57       0.58    -863.26      -0.00       0.15     977.39       4.60       1.85      -1.38

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.59       3.14      -0.00     863.26      -0.39       4.59    -977.38       2.34       0.00

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1045.96      44.75    -995.79      -0.34       3.66      -0.18       1.02       0.00       0.00    1322.20

   29   1.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      -0.01       0.00      -4.73    1006.71      -2.41      -0.00
                            0.00       0.00      -0.00      -0.01      -0.00      -0.00    1006.71       4.73       1.90      -0.00

   30   2.1  1.0 -1.0       0.00       0.55      -2.93       0.00    -803.94       0.36      -2.71     576.80      -1.38      -0.00
                           -0.00       0.99      -0.74   -1381.58       0.00       0.25      66.61       0.31       0.12       0.00

   31   3.1  1.0 -1.0      -0.00      -0.73       4.20      -0.00    1131.14      -0.57      -1.93     409.96      -1.04      -0.00
                           -0.00       0.02       0.04    -130.65      -0.00      -0.02    -704.51      -3.31      -1.29      -0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.12      -0.12      -0.42    -693.87       1.17      -1.50    -612.85       0.00
                            0.00    -747.12    1169.45      -1.15      -4.77       0.21       0.07       0.00       0.00      -0.00

   33   5.1  1.0 -1.0       0.00      -0.66       0.06     693.87       0.00      -0.12     612.85       2.88       1.16       0.00
                           -0.00      -0.48       2.53      -0.00     693.86      -0.13      -2.88     612.85      -1.62      -0.00

   34   6.1  1.0 -1.0       0.00     639.22    1231.75      -0.02      -4.13       0.22       0.16      -0.03       0.00      -0.00
                            0.00      -0.00       0.12      -0.12      -0.13    -693.87      -1.12       1.62     612.85      -0.00

   35   7.1  1.0 -1.0    -739.60     625.62    -324.67      -0.02       1.61      -0.06      -0.72      -0.00      -0.00    -934.92
                           -0.00      -0.00       0.11      -0.11       0.36    -610.41      -1.32       2.37     691.12      -0.00

   36   8.1  1.0 -1.0       0.00       0.00       0.11      -0.11      -0.27    -610.42       1.31      -1.65    -691.13       0.00
                         -739.60    -593.98    -379.47      -0.22       0.97      -0.07      -0.00       0.00      -0.00    -934.93

   37   9.1  1.0 -1.0      -0.77       0.21      -0.01     610.41       0.00      -0.11     691.13       3.25       1.31      -0.97
                           -0.00       0.42      -2.22       0.00    -610.40      -0.36       3.24    -691.12       2.37       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00    -739.60       0.00      -0.77       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -739.60      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.55      -0.73       0.00      -0.66     639.22     625.62       0.00       0.21       0.00
                            0.00       0.99       0.02    -747.12      -0.48      -0.00      -0.00    -593.98       0.42       0.00

    3   3.1  0.0  0.0      -0.00      -2.93       4.20       0.12       0.06    1231.75    -324.67       0.11      -0.01       0.00
                           -0.00      -0.74       0.04    1169.45       2.53       0.12       0.11    -379.47      -2.22       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00      -0.12     693.87      -0.02      -0.02      -0.11     610.41       0.00
                           -0.01   -1381.58    -130.65      -1.15      -0.00      -0.12      -0.11      -0.22       0.00      -0.00

    5   5.1  0.0  0.0      -0.01    -803.94    1131.14      -0.42       0.00      -4.13       1.61      -0.27       0.00       0.00
                           -0.00       0.00      -0.00      -4.77     693.86      -0.13       0.36       0.97    -610.40       0.00

    6   6.1  0.0  0.0       0.00       0.36      -0.57    -693.87      -0.12       0.22      -0.06    -610.42      -0.11       0.00
                           -0.00       0.25      -0.02       0.21      -0.13    -693.87    -610.41      -0.07      -0.36      -0.00

    7   7.1  0.0  0.0      -4.73      -2.71      -1.93       1.17     612.85       0.16      -0.72       1.31     691.13       0.00
                         1006.71      66.61    -704.51       0.07      -2.88      -1.12      -1.32      -0.00       3.24      -2.71

    8   8.1  0.0  0.0    1006.71     576.80     409.96      -1.50       2.88      -0.03      -0.00      -1.65       3.25       0.00
                            4.73       0.31      -3.31       0.00     612.85       1.62       2.37       0.00    -691.12       3.39

    9   9.1  0.0  0.0      -2.41      -1.38      -1.04    -612.85       1.16       0.00      -0.00    -691.13       1.31       0.00
                            1.90       0.12      -1.29       0.00      -1.62     612.85     691.12      -0.00       2.37    1423.72

   10  10.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -934.92       0.00      -0.97       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -934.93       0.00      -0.00

   11   1.1  1.0  1.0   92048.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00 -118528.24
                        96719.70  -13092.35 -133747.35 1552611.00-1334226.93 1872936.76 1206032.35-1858554.29-1502188.27  926790.19

   12   2.1  1.0  1.0       0.00   94462.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00 1311655.31
                        13092.35   19407.09 -120313.77 9244319.59  755629.36-1189615.73 -650289.31-9241491.96  999574.18 -683560.43

   13   3.1  1.0  1.0       0.00       0.00   94462.29       0.00       0.00       0.00       0.00       0.00       0.00 -526486.45
                       133747.35  120313.77   18076.31-4415217.38  453083.55 -560597.94 -931693.32 4230442.49  343233.74 -491389.83

   14   4.1  1.0  1.0       0.00       0.00       0.00   94462.29       0.00       0.00       0.00       0.00       0.00 1137666.74
                     -1552611.00-9244319.59 4415217.38 -518598.12   -6965.82 -655898.66-1192578.74 -779432.67  -40698.75 2300835.15

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   94462.31       0.00       0.00       0.00       0.00 1025268.43
                      1334226.93 -755629.36 -453083.55    6965.82 2837614.08-4487527.45-4421440.31  336180.47 4041579.91-2508282.02

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   94462.31       0.00       0.00       0.00 -391516.03
                     -1872936.76 1189615.73  560597.94  655898.66 4487527.45  221969.04  211142.82 1115152.76  120132.76  -10045.42

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   95972.78       0.00       0.00 3953299.16
                     -1206032.35  650289.31  931693.32 1192578.74 4421440.31 -211142.8217933134.23-1072283.97*********** 7649507.48

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95972.78       0.00***********
                      1858554.29 9241491.96-4230442.49  779432.67 -336180.47-1115152.76 1072283.97 4579938.99-1809371.60 8043506.50

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95972.80 -795610.55
                      1502188.27 -999574.18 -343233.74   40698.75-4041579.91 -120132.7611877505.51 1809371.60 -123323.21  607103.42

   20   1.1  1.0  0.0 -118528.24 1311655.31 -526486.45 1137666.74 1025268.43 -391516.03 3953299.16*********** -795610.55   92048.87
                      -926790.19  683560.43  491389.83-2300835.15 2508282.02   10045.42-7649507.48-8043506.50 -607103.42       0.00

   21   2.1  1.0  0.0   58787.48  220871.36 -143914.18 1914991.45 -236041.70  118696.02  742131.91-1808768.96 -110564.59       0.00
                     -1122987.88  767598.71  478165.19 -660544.88 2986106.71  -72841.35-4226137.23***********-1042399.69      -0.00

   22   3.1  1.0  0.0  130244.48 -423153.37  231611.48-1103590.23 -527983.35  184948.3612567112.90***********-1457797.67       0.00
                       800160.23 -523189.64 -381393.18   16258.03-1682441.14   30555.70 4666057.68 6430015.69  460063.02      -0.00

   23   4.1  1.0  0.0  372866.01 -116827.62   -4554.52   98850.92 -358579.81   42195.87 6138858.63*********** -771537.84       0.00
                      -590044.48 -228150.53  847295.26    9631.47  405372.29  370385.94-1976617.48-2245950.97  -63990.52      -0.00

   24   5.1  1.0  0.0  176540.48  -51996.55  242753.37-1584784.13  638287.44   -6671.11 -764603.61 1172354.13   76698.00       0.00
                      -176522.37  716126.74 -250959.08  -49490.52  344429.01   57085.15***********48145584.89 2527501.81      -0.00

   25   6.1  1.0  0.0-1840481.05  800091.47  489385.49 -897556.9829050565.80   50500.47***********-3125519.03  321934.75       0.00
                      -680179.60  310450.59  213060.81  110885.32 -507995.08   85946.06 2551780.84-3504752.66 -226399.46      -0.00

   26   7.1  1.0  0.0 1988201.01 -867521.95 -369727.75 -839618.82***********  -82100.7888279776.51 5490903.34  541837.42       0.00
                      -578700.20  624986.37  129125.32  286367.02-1361180.90 -117468.14 5402154.87-5340294.08 -189149.04      -0.00

   27   8.1  1.0  0.0  802791.68 -265641.98  -71542.24 -121230.72 -832825.05   76123.46 6935834.60*********** -401841.61       0.00
                       536825.84  118788.76 -948025.16  -91183.77  380983.33 -200896.87 -118588.30   28117.30   82859.44      -0.00

   28   9.1  1.0  0.0  175165.81  -47711.11  293568.12 -312830.38  765170.48  -23558.35 -766561.72 1080357.28  -67956.43       0.00
                       170124.13 -738030.29  335344.63  -61266.90  117560.01   50990.22***********51280620.87 2690478.52      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00 -118528.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00 -926790.19

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58787.48
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00-1122987.88

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  130244.48
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00  800160.23

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  372866.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00 -590044.48

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  176540.48
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00 -176522.37

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00-1840481.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00 -680179.60

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00 1988201.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00 -578700.20

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  802791.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00  536825.84

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  175165.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00  170124.13


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       1.09       0.00   -1045.96      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.55
                            0.00       0.00      -0.68   -1960.59       0.21      -0.57       0.59     -44.75      -0.00      -0.99

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.93
                            0.14       0.32       3.57     -88.10      -0.54      -0.58      -3.14     995.79       0.00       0.74

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.14      -0.39      -0.00      -1.11    -981.29     863.26       0.00       0.34       0.01    1381.58

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01    -803.94
                           -0.37      -0.71     981.29      -1.03       0.00       0.00    -863.26      -3.66       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.36
                         -816.91   -1784.47      -0.27      -0.02       0.30      -0.15       0.39       0.18       0.00      -0.25

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.73      -2.71
                            1.73      -0.73       4.07      -0.22     866.69    -977.39      -4.59      -1.02   -1006.71     -66.61

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1006.71     576.80
                           -2.17       0.91    -866.69      -0.00       4.07      -4.60     977.38      -0.00      -4.73      -0.31

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.41      -1.38
                         -909.97     416.57       2.03      -0.00       1.61      -1.85      -2.34      -0.00      -1.90      -0.12

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       1.38      -0.00   -1322.20       0.00      -0.00

   11   1.1  1.0  1.0   58787.48  130244.48  372866.01  176540.48-1840481.05 1988201.01  802791.68  175165.81       0.00       0.00
                      1122987.88 -800160.23  590044.48  176522.37  680179.60  578700.20 -536825.84 -170124.13       0.00       0.00

   12   2.1  1.0  1.0  220871.36 -423153.37 -116827.62  -51996.55  800091.47 -867521.95 -265641.98  -47711.11       0.00       0.00
                      -767598.71  523189.64  228150.53 -716126.74 -310450.59 -624986.37 -118788.76  738030.29       0.00       0.00

   13   3.1  1.0  1.0 -143914.18  231611.48   -4554.52  242753.37  489385.49 -369727.75  -71542.24  293568.12       0.00       0.00
                      -478165.19  381393.18 -847295.26  250959.08 -213060.81 -129125.32  948025.16 -335344.63       0.00       0.00

   14   4.1  1.0  1.0 1914991.45-1103590.23   98850.92-1584784.13 -897556.98 -839618.82 -121230.72 -312830.38       0.00       0.00
                       660544.88  -16258.03   -9631.47   49490.52 -110885.32 -286367.02   91183.77   61266.90       0.00       0.00

   15   5.1  1.0  1.0 -236041.70 -527983.35 -358579.81  638287.4429050565.80*********** -832825.05  765170.48       0.00       0.00
                     -2986106.71 1682441.14 -405372.29 -344429.01  507995.08 1361180.90 -380983.33 -117560.01       0.00       0.00

   16   6.1  1.0  1.0  118696.02  184948.36   42195.87   -6671.11   50500.47  -82100.78   76123.46  -23558.35       0.00       0.00
                        72841.35  -30555.70 -370385.94  -57085.15  -85946.06  117468.14  200896.87  -50990.22       0.00       0.00

   17   7.1  1.0  1.0  742131.9112567112.90 6138858.63 -764603.61***********88279776.51 6935834.60 -766561.72       0.00       0.00
                      4226137.23-4666057.68 1976617.4815147678.93-2551780.84-5402154.87  118588.3015288571.55       0.00       0.00

   18   8.1  1.0  1.0-1808768.96********************** 1172354.13-3125519.03 5490903.34*********** 1080357.28       0.00       0.00
                     17204775.52-6430015.69 2245950.97*********** 3504752.66 5340294.08  -28117.30***********       0.00       0.00

   19   9.1  1.0  1.0 -110564.59-1457797.67 -771537.84   76698.00  321934.75  541837.42 -401841.61  -67956.43       0.00       0.00
                      1042399.69 -460063.02   63990.52-2527501.81  226399.46  189149.04  -82859.44-2690478.52       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00 -118528.24   58787.48
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  926790.19 1122987.88

   21   2.1  1.0  0.0   94462.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00 1311655.31  220871.36
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00 -683560.43 -767598.71

   22   3.1  1.0  0.0       0.00   94462.29       0.00       0.00       0.00       0.00       0.00       0.00 -526486.45 -143914.18
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00 -491389.83 -478165.19

   23   4.1  1.0  0.0       0.00       0.00   94462.29       0.00       0.00       0.00       0.00       0.00 1137666.74 1914991.45
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00 2300835.15  660544.88

   24   5.1  1.0  0.0       0.00       0.00       0.00   94462.31       0.00       0.00       0.00       0.00 1025268.43 -236041.70
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00-2508282.02-2986106.71

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   94462.31       0.00       0.00       0.00 -391516.03  118696.02
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00  -10045.42   72841.35

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   95972.78       0.00       0.00 3953299.16  742131.91
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00 7649507.48 4226137.23

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95972.78       0.00***********-1808768.96
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00 8043506.5017204775.52

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95972.80 -795610.55 -110564.59
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00  607103.42 1042399.69

   29   1.1  1.0 -1.0 1311655.31 -526486.45 1137666.74 1025268.43 -391516.03 3953299.16*********** -795610.55   92048.87       0.00
                       683560.43  491389.83-2300835.15 2508282.02   10045.42-7649507.48-8043506.50 -607103.42  -96719.70   13092.35

   30   2.1  1.0 -1.0  220871.36 -143914.18 1914991.45 -236041.70  118696.02  742131.91-1808768.96 -110564.59       0.00   94462.27
                       767598.71  478165.19 -660544.88 2986106.71  -72841.35-4226137.23***********-1042399.69  -13092.35  -19407.09

   31   3.1  1.0 -1.0 -423153.37  231611.48-1103590.23 -527983.35  184948.3612567112.90***********-1457797.67       0.00       0.00
                      -523189.64 -381393.18   16258.03-1682441.14   30555.70 4666057.68 6430015.69  460063.02 -133747.35 -120313.77

   32   4.1  1.0 -1.0 -116827.62   -4554.52   98850.92 -358579.81   42195.87 6138858.63*********** -771537.84       0.00       0.00
                      -228150.53  847295.26    9631.47  405372.29  370385.94-1976617.48-2245950.97  -63990.52 1552611.00 9244319.59

   33   5.1  1.0 -1.0  -51996.55  242753.37-1584784.13  638287.44   -6671.11 -764603.61 1172354.13   76698.00       0.00       0.00
                       716126.74 -250959.08  -49490.52  344429.01   57085.15***********48145584.89 2527501.81-1334226.93  755629.36

   34   6.1  1.0 -1.0  800091.47  489385.49 -897556.9829050565.80   50500.47***********-3125519.03  321934.75       0.00       0.00
                       310450.59  213060.81  110885.32 -507995.08   85946.06 2551780.84-3504752.66 -226399.46 1872936.76-1189615.73

   35   7.1  1.0 -1.0 -867521.95 -369727.75 -839618.82***********  -82100.7888279776.51 5490903.34  541837.42       0.00       0.00
                       624986.37  129125.32  286367.02-1361180.90 -117468.14 5402154.87-5340294.08 -189149.04 1206032.35 -650289.31

   36   8.1  1.0 -1.0 -265641.98  -71542.24 -121230.72 -832825.05   76123.46 6935834.60*********** -401841.61       0.00       0.00
                       118788.76 -948025.16  -91183.77  380983.33 -200896.87 -118588.30   28117.30   82859.44-1858554.29-9241491.96

   37   9.1  1.0 -1.0  -47711.11  293568.12 -312830.38  765170.48  -23558.35 -766561.72 1080357.28  -67956.43       0.00       0.00
                      -738030.29  335344.63  -61266.90  117560.01   50990.22***********51280620.87 2690478.52-1502188.27  999574.18


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00    -739.60       0.00      -0.77
                            0.00      -0.00       0.00      -0.00       0.00     739.60       0.00

    2   2.1  0.0  0.0      -0.73       0.00      -0.66     639.22     625.62       0.00       0.21
                           -0.02     747.12       0.48       0.00       0.00     593.98      -0.42

    3   3.1  0.0  0.0       4.20       0.12       0.06    1231.75    -324.67       0.11      -0.01
                           -0.04   -1169.45      -2.53      -0.12      -0.11     379.47       2.22

    4   4.1  0.0  0.0      -0.00      -0.12     693.87      -0.02      -0.02      -0.11     610.41
                          130.65       1.15       0.00       0.12       0.11       0.22      -0.00

    5   5.1  0.0  0.0    1131.14      -0.42       0.00      -4.13       1.61      -0.27       0.00
                            0.00       4.77    -693.86       0.13      -0.36      -0.97     610.40

    6   6.1  0.0  0.0      -0.57    -693.87      -0.12       0.22      -0.06    -610.42      -0.11
                            0.02      -0.21       0.13     693.87     610.41       0.07       0.36

    7   7.1  0.0  0.0      -1.93       1.17     612.85       0.16      -0.72       1.31     691.13
                          704.51      -0.07       2.88       1.12       1.32       0.00      -3.24

    8   8.1  0.0  0.0     409.96      -1.50       2.88      -0.03      -0.00      -1.65       3.25
                            3.31      -0.00    -612.85      -1.62      -2.37      -0.00     691.12

    9   9.1  0.0  0.0      -1.04    -612.85       1.16       0.00      -0.00    -691.13       1.31
                            1.29      -0.00       1.62    -612.85    -691.12       0.00      -2.37

   10  10.1  0.0  0.0      -0.00       0.00       0.00      -0.00    -934.92       0.00      -0.97
                            0.00       0.00       0.00       0.00       0.00     934.93      -0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0  130244.48  372866.01  176540.48-1840481.05 1988201.01  802791.68  175165.81
                      -800160.23  590044.48  176522.37  680179.60  578700.20 -536825.84 -170124.13

   21   2.1  1.0  0.0 -423153.37 -116827.62  -51996.55  800091.47 -867521.95 -265641.98  -47711.11
                       523189.64  228150.53 -716126.74 -310450.59 -624986.37 -118788.76  738030.29

   22   3.1  1.0  0.0  231611.48   -4554.52  242753.37  489385.49 -369727.75  -71542.24  293568.12
                       381393.18 -847295.26  250959.08 -213060.81 -129125.32  948025.16 -335344.63

   23   4.1  1.0  0.0-1103590.23   98850.92-1584784.13 -897556.98 -839618.82 -121230.72 -312830.38
                       -16258.03   -9631.47   49490.52 -110885.32 -286367.02   91183.77   61266.90

   24   5.1  1.0  0.0 -527983.35 -358579.81  638287.4429050565.80*********** -832825.05  765170.48
                      1682441.14 -405372.29 -344429.01  507995.08 1361180.90 -380983.33 -117560.01

   25   6.1  1.0  0.0  184948.36   42195.87   -6671.11   50500.47  -82100.78   76123.46  -23558.35
                       -30555.70 -370385.94  -57085.15  -85946.06  117468.14  200896.87  -50990.22

   26   7.1  1.0  0.012567112.90 6138858.63 -764603.61***********88279776.51 6935834.60 -766561.72
                     -4666057.68 1976617.4815147678.93-2551780.84-5402154.87  118588.3015288571.55

   27   8.1  1.0  0.0********************** 1172354.13-3125519.03 5490903.34*********** 1080357.28
                     -6430015.69 2245950.97*********** 3504752.66 5340294.08  -28117.30***********

   28   9.1  1.0  0.0-1457797.67 -771537.84   76698.00  321934.75  541837.42 -401841.61  -67956.43
                      -460063.02   63990.52-2527501.81  226399.46  189149.04  -82859.44-2690478.52

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       133747.35-1552611.00 1334226.93-1872936.76-1206032.35 1858554.29 1502188.27

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       120313.77-9244319.59 -755629.36 1189615.73  650289.31 9241491.96 -999574.18

   31   3.1  1.0 -1.0   94462.29       0.00       0.00       0.00       0.00       0.00       0.00
                       -18076.31 4415217.38 -453083.55  560597.94  931693.32-4230442.49 -343233.74

   32   4.1  1.0 -1.0       0.00   94462.29       0.00       0.00       0.00       0.00       0.00
                     -4415217.38  518598.12    6965.82  655898.66 1192578.74  779432.67   40698.75

   33   5.1  1.0 -1.0       0.00       0.00   94462.31       0.00       0.00       0.00       0.00
                       453083.55   -6965.82-2837614.08 4487527.45 4421440.31 -336180.47-4041579.91

   34   6.1  1.0 -1.0       0.00       0.00       0.00   94462.31       0.00       0.00       0.00
                      -560597.94 -655898.66-4487527.45 -221969.04 -211142.82-1115152.76 -120132.76

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   95972.78       0.00       0.00
                      -931693.32-1192578.74-4421440.31  211142.82*********** 1072283.9711877505.51

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   95972.78       0.00
                      4230442.49 -779432.67  336180.47 1115152.76-1072283.97-4579938.99 1809371.60

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   95972.80
                       343233.74  -40698.75 4041579.91  120132.76***********-1809371.60  123323.21




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.20626990 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   95100.127       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   95100.095       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   95100.251       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   95100.251       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   95100.282       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   95880.932       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   95880.932
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.013       0.000      -6.687    1423.704
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.781      -4.144       0.002   -1136.940       0.512      -3.831     815.718
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -1.039       5.946      -0.003    1599.677      -0.809      -2.723     579.773
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.173      -0.175      -0.594    -981.281       1.649      -2.119
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.934       0.079     981.273       0.001      -0.175     866.702       4.075
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000     903.997    1741.953      -0.028      -5.834       0.311       0.221      -0.037
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+          -1045.956     884.757    -459.146      -0.021       2.281      -0.082      -1.019      -0.005
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.153      -0.154      -0.387    -863.257       1.859      -2.330
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -1.090       0.303      -0.020     863.248       0.002      -0.154     977.399       4.595
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.003       2.708      -3.395

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.145       0.144       0.369     816.906      -1.729       2.168

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.316       0.386       0.708    1784.470       0.732      -0.912

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.676      -3.574       0.002    -981.288       0.273      -4.071     866.688

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001    1960.585      88.102       1.110       1.029       0.015       0.220       0.001

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.206       0.544     981.292      -0.000      -0.296    -866.690      -4.075

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.090       0.573       0.579    -863.265      -0.003       0.154     977.385       4.595

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.594       3.144      -0.002     863.257      -0.387       4.591    -977.383

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1045.958      44.747    -995.785      -0.339       3.658      -0.178       1.019       0.005

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.017       0.000       0.000   -1423.704      -6.694

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.404       1.042    1953.847      -0.001      -0.351     -94.203      -0.443

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.033      -0.058     184.766       0.001       0.034     996.329       4.684

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002    1056.583   -1653.855       1.624       6.751      -0.296      -0.094      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.676      -3.574       0.002    -981.270       0.190       4.070    -866.704

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.175       0.166       0.191     981.283       1.581      -2.287

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001      -0.156       0.154      -0.513     863.256       1.864      -3.349

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1045.958     840.014     536.649       0.317      -1.376       0.096       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.594       3.144      -0.002     863.241       0.513      -4.589     977.395

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.781      -1.039       0.000      -0.934     903.997
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000      -4.144       5.946       0.173       0.079    1741.953
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.002      -0.003      -0.175     981.273      -0.028
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.013   -1136.940    1599.677      -0.594       0.001      -5.834
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.512      -0.809    -981.281      -0.175       0.311
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -6.687      -3.831      -2.723       1.649     866.702       0.221
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000    1423.704     815.718     579.773      -2.119       4.075      -0.037
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           95880.948       0.000      -3.407      -1.950      -1.469    -866.700       1.639       0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   99877.885      -0.000      -0.000      -0.000       0.000       0.000      -0.007
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -3.407      -0.000   92048.869       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -1.950      -0.000       0.000   94462.269       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -1.469      -0.000       0.000       0.000   94462.290       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+           -866.700       0.000       0.000       0.000       0.000   94462.291       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              1.639       0.000       0.000       0.000       0.000       0.000   94462.307       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.001      -0.007       0.000       0.000       0.000       0.000       0.000   94462.305
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.002   -1322.183       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -977.401       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              1.848      -1.378       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000 -167624.248  969049.391 -280185.385 1068107.950  849807.228-1578260.269
                            -1423.717       0.000       0.000 1277422.560 -218333.640-1209711.681 1898443.386  488062.796

    2    1  |1 0>               0.000       0.000  969049.391  312359.269 -400977.309 1271493.841 -203673.800  649680.862
                              909.966      -0.000-1277422.560       0.000  708064.792 -305748.979 1605118.227 -271028.332

    3    1  |1 0>               0.000       0.000 -280185.385 -400977.309  327548.093 -783576.669 -201688.053  476826.036
                             -416.569       0.000  218333.640 -708064.792       0.000 -587632.059-1012210.671 -129050.600

    4    1  |1 0>               0.000       0.000 1068107.950 1271493.841 -783576.669  139796.308-1374165.820 -604831.646
                               -2.033      -0.000 1209711.681  305748.979  587632.059       0.000  321636.579  183494.650

    5    1  |1 0>               0.000       0.000  849807.228 -203673.800 -201688.053-1374165.820  902674.75420537134.892
                                0.000      -0.001-1898443.386-1605118.227 1012210.671 -321636.579       0.000  399572.063

    6    1  |1 0>               0.000       0.000-1578260.269  649680.862  476826.036 -604831.64620537134.892   71418.444
                               -1.608       0.000 -488062.796  271028.332  129050.600 -183494.650 -399572.063       0.000

    7    1  |1 0>               0.000       0.000 4201275.061  -88664.148 8624853.756 3747128.405************************
                                1.848      -1.378 4999815.780 3430262.395-3208095.639 1600171.685 9748526.244-1887444.055

    8    1  |1 0>               0.000       0.000************-1466830.036************************  240083.314-2156248.282
                                2.339       0.000 6067211.18112249609.776-5217062.721 1523650.498************ 2336178.831

    9    1  |1 0>               0.000       0.000 -438720.682 -111917.820 -823234.608 -766764.121  595290.913  210983.980
                                0.002    1322.196  549582.870  215221.668  -88189.226    1925.891-1704086.188  196144.121

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.692       0.000   96719.698  -13092.351 -133747.351 1552611.002-1334226.935 1872936.760

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.177      -0.000   13092.351   19407.092 -120313.772 9244319.586  755629.355-1189615.733

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.824       0.000  133747.351  120313.772   18076.310-4415217.378  453083.548 -560597.935

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.005-1552611.002-9244319.586 4415217.378 -518598.121   -6965.815 -655898.659

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.295       0.000 1334226.935 -755629.355 -453083.548    6965.815 2837614.076-4487527.453

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -866.703       0.000-1872936.760 1189615.733  560597.935  655898.659 4487527.453  221969.044

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -977.398       0.000-1206032.346  650289.312  931693.318 1192578.742 4421440.314 -211142.823

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1322.186 1858554.287 9241491.960-4230442.486  779432.667 -336180.471-1115152.763

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.358      -0.000 1502188.271 -999574.183 -343233.738   40698.746-4041579.914 -120132.764

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>           -1045.956       0.000      -1.090       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.001

    2    1  |0 0>             884.757       0.000       0.303       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.676   -1960.585

    3    1  |0 0>            -459.146       0.153      -0.020       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.145       0.316       3.574     -88.102

    4    1  |0 0>              -0.021      -0.154     863.248       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.144      -0.386      -0.002      -1.110

    5    1  |0 0>               2.281      -0.387       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.369      -0.708     981.288      -1.029

    6    1  |0 0>              -0.082    -863.257      -0.154       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.003    -816.906   -1784.470      -0.273      -0.015

    7    1  |0 0>              -1.019       1.859     977.399       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -2.708       1.729      -0.732       4.071      -0.220

    8    1  |0 0>              -0.005      -2.330       4.595       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       3.395      -2.168       0.912    -866.688      -0.001

    9    1  |0 0>              -0.002    -977.401       1.848       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1423.717    -909.966     416.569       2.033      -0.000

   10    1  |0 0>           -1322.183       0.000      -1.378       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.001

    1    1  |1 1>+              0.000       0.000       0.000 -167624.248  969049.391 -280185.385 1068107.950  849807.228
                                0.000       0.000       0.000       0.000 1277422.560 -218333.640-1209711.681 1898443.386

    2    1  |1 1>+              0.000       0.000       0.000  969049.391  312359.269 -400977.309 1271493.841 -203673.800
                                0.000       0.000       0.000-1277422.560       0.000  708064.792 -305748.979 1605118.227

    3    1  |1 1>+              0.000       0.000       0.000 -280185.385 -400977.309  327548.093 -783576.669 -201688.053
                                0.000       0.000       0.000  218333.640 -708064.792       0.000 -587632.059-1012210.671

    4    1  |1 1>+              0.000       0.000       0.000 1068107.950 1271493.841 -783576.669  139796.308-1374165.820
                                0.000       0.000       0.000 1209711.681  305748.979  587632.059       0.000  321636.579

    5    1  |1 1>+              0.000       0.000       0.000  849807.228 -203673.800 -201688.053-1374165.820  902674.754
                                0.000       0.000       0.000-1898443.386-1605118.227 1012210.671 -321636.579       0.000

    6    1  |1 1>+              0.000       0.000       0.000-1578260.269  649680.862  476826.036 -604831.64620537134.892
                                0.000       0.000       0.000 -488062.796  271028.332  129050.600 -183494.650 -399572.063

    7    1  |1 1>+          95972.782       0.000       0.000 4201275.061  -88664.148 8624853.756 3747128.405************
                                0.000       0.000       0.000 4999815.780 3430262.395-3208095.639 1600171.685 9748526.244

    8    1  |1 1>+              0.000   95972.782       0.000************-1466830.036************************  240083.314
                                0.000       0.000       0.000 6067211.18112249609.776-5217062.721 1523650.498************

    9    1  |1 1>+              0.000       0.000   95972.796 -438720.682 -111917.820 -823234.608 -766764.121  595290.913
                                0.000       0.000       0.000  549582.870  215221.668  -88189.226    1925.891-1704086.188

    1    1  |1 0>         4201275.061************ -438720.682   92048.869       0.000       0.000       0.000       0.000
                         -4999815.780-6067211.181 -549582.870       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>          -88664.148-1466830.036 -111917.820       0.000   94462.269       0.000       0.000       0.000
                         -3430262.395************ -215221.668      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>         8624853.756************ -823234.608       0.000       0.000   94462.290       0.000       0.000
                          3208095.639 5217062.721   88189.226      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>         3747128.405************ -766764.121       0.000       0.000       0.000   94462.291       0.000
                         -1600171.685-1523650.498   -1925.891      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>        ************  240083.314  595290.913       0.000       0.000       0.000       0.000   94462.307
                         -9748526.24433774673.661 1704086.188      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>        ************-2156248.282  210983.980       0.000       0.000       0.000       0.000       0.000
                          1887444.055-2336178.831 -196144.121      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>        ************ 8787030.664 -158904.078       0.000       0.000       0.000       0.000       0.000
                                0.000-3692303.56010676904.052      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>         8787030.664************  479783.032       0.000       0.000       0.000       0.000       0.000
                          3692303.560       0.000************      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>         -158904.078  479783.032  -96104.903       0.000       0.000       0.000       0.000       0.000
                         ************36202284.284       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000 -885911.344  464378.888 -540795.784 -600141.290
                          1206032.346-1858554.287-1502188.271 1310679.259  310722.125 -913263.806 2044160.590-1648803.063

    2    1  |1 1>-              0.000       0.000       0.000  885911.344       0.000 -197451.928-1436713.044  130139.572
                          -650289.312-9241491.960  999574.183  310722.125-1085548.513   31837.093  628402.553-2617874.376

    3    1  |1 1>-              0.000       0.000       0.000 -464378.888  197451.928       0.000  777135.603  544993.164
                          -931693.318 4230442.486  343233.738 -913263.806   31837.093  539371.405 -610624.388 1367120.412

    4    1  |1 1>-              0.000       0.000       0.000  540795.784 1436713.044 -777135.603       0.000 -867057.389
                         -1192578.742 -779432.667  -40698.746 2044160.590  628402.553 -610624.388  -13620.957 -251646.409

    5    1  |1 1>-              0.000       0.000       0.000  600141.290 -130139.572 -544993.164  867057.389       0.000
                         -4421440.314  336180.471 4041579.914-1648803.063-2617874.376 1367120.412 -251646.409 -487096.170

    6    1  |1 1>-              0.000       0.000       0.000 1024572.986 -481819.348 -215269.556  664505.613************
                           211142.823 1115152.763  120132.764  473856.423 -168015.100 -172262.882 -340310.173  318841.470

    7    1  |1 1>-              0.000       0.000       0.000 1389534.232 1138197.157 9147727.748 4934528.73319026877.305
                         17933134.227-1072283.974************ 5818221.447 2546398.190-3390706.413 1195187.56411673526.736

    8    1  |1 1>-              0.000       0.000       0.000************-1091155.552************************ 1417875.794
                          1072283.974 4579938.991-1809371.599 5308024.80112081617.104-3876352.676 1652603.817************

    9    1  |1 1>-              0.000       0.000       0.000 -686442.548  -44444.120-1238402.630 -324355.155 -486823.559
                         11877505.507 1809371.599 -123323.214  308991.018 1258954.114 -562438.143   88570.375-1870341.155

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.090       0.000   -1045.958       0.000      -0.000      -0.000       0.002

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.206      -0.573       0.594     -44.747       0.000       1.404       0.033   -1056.583

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.544      -0.579      -3.144     995.785      -0.000      -1.042       0.058    1653.855

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -981.292     863.265       0.002       0.339      -0.017   -1953.847    -184.766      -1.624

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.003    -863.257      -3.658      -0.000       0.001      -0.001      -6.751

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.296      -0.154       0.387       0.178      -0.000       0.351      -0.034       0.296

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              866.690    -977.385      -4.591      -1.019    1423.704      94.203    -996.329       0.094

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.075      -4.595     977.383      -0.005       6.694       0.443      -4.684       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.608      -1.848      -2.339      -0.002       2.692       0.177      -1.824       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.378      -0.000   -1322.196      -0.000       0.000      -0.000      -0.005

    1    1  |1 1>+       -1578260.269 4201275.061************ -438720.682       0.000       0.000       0.000       0.000
                           488062.796-4999815.780-6067211.181 -549582.870   96719.698  -13092.351 -133747.351 1552611.002

    2    1  |1 1>+         649680.862  -88664.148-1466830.036 -111917.820       0.000       0.000       0.000       0.000
                          -271028.332-3430262.395************ -215221.668   13092.351   19407.092 -120313.772 9244319.586

    3    1  |1 1>+         476826.036 8624853.756************ -823234.608       0.000       0.000       0.000       0.000
                          -129050.600 3208095.639 5217062.721   88189.226  133747.351  120313.772   18076.310-4415217.378

    4    1  |1 1>+        -604831.646 3747128.405************ -766764.121       0.000       0.000       0.000       0.000
                           183494.650-1600171.685-1523650.498   -1925.891-1552611.002-9244319.586 4415217.378 -518598.121

    5    1  |1 1>+       20537134.892************  240083.314  595290.913       0.000       0.000       0.000       0.000
                           399572.063-9748526.24433774673.661 1704086.188 1334226.935 -755629.355 -453083.548    6965.815

    6    1  |1 1>+          71418.444************-2156248.282  210983.980       0.000       0.000       0.000       0.000
                                0.000 1887444.055-2336178.831 -196144.121-1872936.760 1189615.733  560597.935  655898.659

    7    1  |1 1>+       ************************ 8787030.664 -158904.078       0.000       0.000       0.000       0.000
                         -1887444.055       0.000-3692303.56010676904.052-1206032.346  650289.312  931693.318 1192578.742

    8    1  |1 1>+       -2156248.282 8787030.664************  479783.032       0.000       0.000       0.000       0.000
                          2336178.831 3692303.560       0.000************ 1858554.287 9241491.960-4230442.486  779432.667

    9    1  |1 1>+         210983.980 -158904.078  479783.032  -96104.903       0.000       0.000       0.000       0.000
                           196144.121************36202284.284       0.000 1502188.271 -999574.183 -343233.738   40698.746

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000  885911.344 -464378.888  540795.784
                                0.000       0.000       0.000       0.000-1310679.259 -310722.125  913263.806-2044160.590

    2    1  |1 0>               0.000       0.000       0.000       0.000 -885911.344       0.000  197451.928 1436713.044
                                0.000       0.000       0.000       0.000 -310722.125 1085548.513  -31837.093 -628402.553

    3    1  |1 0>               0.000       0.000       0.000       0.000  464378.888 -197451.928       0.000 -777135.603
                                0.000       0.000       0.000       0.000  913263.806  -31837.093 -539371.405  610624.388

    4    1  |1 0>               0.000       0.000       0.000       0.000 -540795.784-1436713.044  777135.603       0.000
                                0.000       0.000       0.000       0.000-2044160.590 -628402.553  610624.388   13620.957

    5    1  |1 0>               0.000       0.000       0.000       0.000 -600141.290  130139.572  544993.164 -867057.389
                                0.000       0.000       0.000       0.000 1648803.063 2617874.376-1367120.412  251646.409

    6    1  |1 0>           94462.305       0.000       0.000       0.000-1024572.986  481819.348  215269.556 -664505.613
                                0.000       0.000       0.000       0.000 -473856.423  168015.100  172262.882  340310.173

    7    1  |1 0>               0.000   95972.782       0.000       0.000-1389534.232-1138197.157-9147727.748-4934528.733
                               -0.000       0.000       0.000       0.000-5818221.447-2546398.190 3390706.413-1195187.564

    8    1  |1 0>               0.000       0.000   95972.782       0.00016519861.337 1091155.55223178891.80612497970.395
                               -0.000      -0.000       0.000       0.000-5308024.801************ 3876352.676-1652603.817

    9    1  |1 0>               0.000       0.000       0.000   95972.796  686442.548   44444.120 1238402.630  324355.155
                               -0.000      -0.000      -0.000       0.000 -308991.018-1258954.114  562438.143  -88570.375

    1    1  |1 1>-       -1024572.986-1389534.23216519861.337  686442.548   92048.869       0.000       0.000       0.000
                           473856.423 5818221.447 5308024.801  308991.018       0.000       0.000       0.000       0.000

    2    1  |1 1>-         481819.348-1138197.157 1091155.552   44444.120       0.000   94462.269       0.000       0.000
                          -168015.100 2546398.19012081617.104 1258954.114       0.000       0.000       0.000       0.000

    3    1  |1 1>-         215269.556-9147727.74823178891.806 1238402.630       0.000       0.000   94462.290       0.000
                          -172262.882-3390706.413-3876352.676 -562438.143       0.000       0.000       0.000       0.000

    4    1  |1 1>-        -664505.613-4934528.73312497970.395  324355.155       0.000       0.000       0.000   94462.291
                          -340310.173 1195187.564 1652603.817   88570.375       0.000       0.000       0.000       0.000

    5    1  |1 1>-       20546569.261************-1417875.794  486823.559       0.000       0.000       0.000       0.000
                           318841.47011673526.736************-1870341.155       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.00067629049.706 2263903.113 -244300.516       0.000       0.000       0.000       0.000
                          -121546.085-1721319.015 2620289.906  124033.060       0.000       0.000       0.000       0.000

    7    1  |1 1>-       ************       0.000 1021720.689 -925177.905       0.000       0.000       0.000       0.000
                         -1721319.015-7639800.690 3860012.74910944401.186       0.000       0.000       0.000       0.000

    8    1  |1 1>-       -2263903.113-1021720.689       0.000 1048072.891       0.000       0.000       0.000       0.000
                          2620289.906 3860012.749  -39763.870************       0.000       0.000       0.000       0.000

    9    1  |1 1>-         244300.516  925177.905-1048072.891       0.000       0.000       0.000       0.000       0.000
                           124033.06010944401.186************-3804911.212       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000   -1045.958      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.676      -0.000      -0.001    -840.014       0.594

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                3.574       0.175       0.156    -536.649      -3.144

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.002      -0.166      -0.154      -0.317       0.002

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              981.270      -0.191       0.513       1.376    -863.241

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.190    -981.283    -863.256      -0.096      -0.513

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -4.070      -1.581      -1.864      -0.000       4.589

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              866.704       2.287       3.349       0.000    -977.395

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -2.295     866.703     977.398      -0.000       3.358

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000   -1322.186       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                         -1334226.935 1872936.760 1206032.346-1858554.287-1502188.271

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                           755629.355-1189615.733 -650289.312-9241491.960  999574.183

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                           453083.548 -560597.935 -931693.318 4230442.486  343233.738

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                            -6965.815 -655898.659-1192578.742 -779432.667  -40698.746

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                          2837614.076-4487527.453-4421440.314  336180.471 4041579.914

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                          4487527.453  221969.044  211142.823 1115152.763  120132.764

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                          4421440.314 -211142.82317933134.227-1072283.974************

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                          -336180.471-1115152.763 1072283.974 4579938.991-1809371.599

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                         -4041579.914 -120132.76411877505.507 1809371.599 -123323.214

    1    1  |1 0>          600141.290 1024572.986 1389534.232************ -686442.548
                          1648803.063 -473856.423-5818221.447-5308024.801 -308991.018

    2    1  |1 0>         -130139.572 -481819.348 1138197.157-1091155.552  -44444.120
                          2617874.376  168015.100-2546398.190************-1258954.114

    3    1  |1 0>         -544993.164 -215269.556 9147727.748************-1238402.630
                         -1367120.412  172262.882 3390706.413 3876352.676  562438.143

    4    1  |1 0>          867057.389  664505.613 4934528.733************ -324355.155
                           251646.409  340310.173-1195187.564-1652603.817  -88570.375

    5    1  |1 0>               0.000************19026877.305 1417875.794 -486823.559
                           487096.170 -318841.470************34313465.454 1870341.155

    6    1  |1 0>        20546569.261       0.000************-2263903.113  244300.516
                          -318841.470  121546.085 1721319.015-2620289.906 -124033.060

    7    1  |1 0>        ************67629049.706       0.000-1021720.689  925177.905
                         ************ 1721319.015 7639800.690-3860012.749************

    8    1  |1 0>        -1417875.794 2263903.113 1021720.689       0.000-1048072.891
                         34313465.454-2620289.906-3860012.749   39763.87036319465.232

    9    1  |1 0>          486823.559 -244300.516 -925177.905 1048072.891       0.000
                          1870341.155 -124033.060************36319465.232 3804911.212

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          94462.307       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   94462.305       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   95972.782       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   95972.782       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   95972.796
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3611.33278088  -822.12651098************      0.00000000        0.00      0.0000
    2 -3238.13372020  -448.92745030-98528186.66    373.19906067 81907726.27  10155.2638
    3 -3180.32062821  -391.11435831-85839679.61    431.01215267 94596233.32  11728.4382
    4 -3110.30840506  -321.10213516-70473772.74    501.02437581109962140.19  13633.5678
    5 -2854.34790361   -65.14163371-14296936.05    756.98487726166138976.88  20598.6079
    6 -2843.36279659   -54.15652669-11885983.73    767.96998429168549929.20  20897.5279
    7 -2840.12786132   -50.92159142-11175997.51    771.20491955169259915.42  20985.5549
    8 -2813.22467147   -24.01840157 -5271429.83    798.10810940175164483.10  21717.6280
    9 -2800.22042081   -11.01415092 -2417326.71    811.11236006178018586.22  22071.4917
   10 -2798.38117271    -9.17490281 -2013658.41    812.95160817178422254.52  22121.5402
   11 -2794.01075227    -4.80448237 -1054462.00    817.32202860179381450.93  22240.4654
   12 -2791.05882918    -1.85255928  -406589.77    820.27395169180029323.17  22320.7913
   13 -2789.48070204    -0.27443214   -60230.89    821.85207883180375682.04  22363.7344
   14 -2789.20627523    -0.00000533       -1.17    822.12650565180435911.76  22371.2019
   15 -2788.94004546     0.26622444    58429.51    822.39273542180494342.44  22378.4464
   16 -2788.77297898     0.43329092    95096.36    822.55980189180531009.29  22382.9925
   17 -2788.77296134     0.43330856    95100.24    822.55981954180531013.17  22382.9930
   18 -2788.77295941     0.43331049    95100.66    822.55982147180531013.59  22382.9930
   19 -2788.77292243     0.43334747    95108.78    822.55985844180531021.71  22382.9940
   20 -2788.77272625     0.43354365    95151.83    822.56005463180531064.76  22382.9994
   21 -2788.76941449     0.43685541    95878.68    822.56336638180531791.61  22383.0895
   22 -2788.76939701     0.43687289    95882.52    822.56338387180531795.45  22383.0900
   23 -2788.76928097     0.43698893    95907.98    822.56349991180531820.91  22383.0931
   24 -2788.75115149     0.45511841    99886.94    822.58162938180535799.88  22383.5864
   25 -2787.67095105     1.53531885   336963.54    823.66182983180772876.47  22412.9802
   26 -2786.24118779     2.96508211   650760.30    825.09159308181086673.23  22451.8860
   27 -2785.47600720     3.73026270   818698.03    825.85677368181254610.96  22472.7077
   28 -2780.36146107     8.84480883  1941211.16    830.97131981182377124.09  22611.8815
   29 -2774.99659884    14.20967106  3118662.32    836.33618203183554575.25  22757.8669
   30 -2764.35182396    24.85444594  5454920.36    846.98095692185890833.29  23047.5260
   31 -2739.87799957    49.32827033 10826303.95    871.45478130191262216.88  23713.4926
   32 -2734.56770164    54.63856825 11991779.63    876.76507923192427692.56  23857.9932
   33 -2722.09484872    67.11142117 14729254.42    889.23793215195165167.35  24197.3968
   34 -2463.46230987   325.74396003 71492535.55   1147.87047101251928448.48  31235.1467
   35 -2403.43056346   385.77570644 84667980.96   1207.90221742265103893.89  32868.6938
   36 -2330.66749214   458.53877776100637629.21   1280.66528873281073542.14  34848.6778
   37 -1970.47026501   818.73600489179691782.86   1640.86251587360127695.79  44650.1437

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>          -0.00000284 -0.00000491  0.00000196 -0.00000801  0.00002305 -0.00003233 -0.00000512  0.00003715
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000238 -0.00000471  0.00000508 -0.00000520 -0.00000092  0.00004362 -0.00001608 -0.00000845
                          -0.00000126  0.00000671 -0.00000120 -0.00000344 -0.00000376 -0.00000022  0.00003595  0.00005509

   3    1  |0 0>          -0.00000401 -0.00000107 -0.00000103  0.00000125  0.00005752 -0.00000146  0.00004827 -0.00007244
                           0.00000003 -0.00000184 -0.00000216 -0.00000857  0.00000110  0.00001161 -0.00003514  0.00012354

   4    1  |0 0>          -0.00000072 -0.00000111 -0.00000624 -0.00000132  0.00000569 -0.00000397  0.00004687 -0.00005197
                          -0.00000468 -0.00000339  0.00000228  0.00000266 -0.00004581 -0.00002721  0.00005483 -0.00005987

   5    1  |0 0>          -0.00000009 -0.00000264 -0.00000614 -0.00000188  0.00004489 -0.00003907  0.00003044 -0.00002860
                          -0.00000045 -0.00000336 -0.00000584  0.00000415  0.00000972  0.00000188 -0.00005072 -0.00009818

   6    1  |0 0>          -0.00000055 -0.00000414  0.00000024 -0.00000652 -0.00000189 -0.00001712  0.00003954  0.00008988
                          -0.00000167  0.00000090  0.00000294 -0.00000098  0.00001136  0.00004812  0.00004986  0.00001921

   7    1  |0 0>          -0.00000054 -0.00000302 -0.00000298  0.00000197 -0.00001213  0.00001405 -0.00001881 -0.00005410
                           0.00000448  0.00000121 -0.00000505  0.00000131  0.00002556 -0.00000294 -0.00002910  0.00003100

   8    1  |0 0>           0.00000002  0.00000316  0.00000867 -0.00000238 -0.00002732 -0.00002743 -0.00003241  0.00006260
                          -0.00000057 -0.00000093  0.00000162 -0.00000199 -0.00001337 -0.00000775  0.00002195 -0.00012170

   9    1  |0 0>           0.00000032 -0.00000149  0.00000138  0.00000294 -0.00000556  0.00001013  0.00004046 -0.00002397
                           0.00000133  0.00000525 -0.00000150  0.00000403  0.00000316 -0.00006794  0.00001532 -0.00001229

  10    1  |0 0>          -0.00000358 -0.00000620  0.00000247 -0.00001011  0.00002893 -0.00004053 -0.00000641  0.00004609
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.01550693 -0.04250825 -0.08668317  0.00853756  0.07878391 -0.01233259  0.03057497 -0.13249707
                           0.02425706  0.03621169  0.06820939 -0.00220616  0.01991066 -0.17148509 -0.05558940  0.13334584

   2    1  |1 1>+          0.00141106 -0.05830501 -0.09267990 -0.03237675  0.44998512 -0.10235737  0.24388963  0.02601875
                           0.01090432 -0.02861285 -0.02120085 -0.01360608  0.07910945  0.06389748 -0.27866008 -0.02641036

   3    1  |1 1>+         -0.03016396 -0.00460503 -0.04935156  0.05243961 -0.20599016  0.04695818 -0.12128120  0.19112826
                          -0.01472944  0.10187002  0.15331330 -0.03411452  0.03063598 -0.02612183  0.10367902  0.05298055

   4    1  |1 1>+         -0.01489786 -0.01445265 -0.06964103  0.03043600  0.09879386 -0.10616723  0.34150639  0.07300394
                           0.00370894  0.04458587  0.07837090 -0.00201468 -0.26478352 -0.06382270  0.35318785 -0.04301096

   5    1  |1 1>+          0.09907386  0.17716929  0.15026423 -0.06213056  0.09483245 -0.05997636  0.02031325  0.19422546
                           0.02287976  0.06114811  0.10264354 -0.12562676  0.02651135  0.46724827  0.10461674  0.20502614

   6    1  |1 1>+          0.24854327 -0.03337410  0.00581340  0.02981057 -0.04031419 -0.22486335 -0.07387262  0.20167161
                           0.00022482 -0.13265138  0.11228013  0.20331849  0.03608872 -0.05956209 -0.06750802 -0.36257937

   7    1  |1 1>+         -0.57080901 -0.06266360  0.05076173 -0.01187260 -0.02908744 -0.31849470 -0.06247619  0.15085280
                           0.00084847 -0.09740998 -0.03014414  0.05064957 -0.04164422 -0.02221075 -0.00837461  0.07433192

   8    1  |1 1>+         -0.00741854 -0.20312883  0.08960224 -0.24942183 -0.04582271 -0.00822288  0.01758798  0.09044036
                          -0.04299807  0.31764591 -0.01691089  0.18903941  0.34855871 -0.04002323 -0.06097124  0.06359188

   9    1  |1 1>+          0.00997940  0.09592165  0.25710563  0.01635296  0.08118783  0.07860114  0.04191955  0.04072919
                           0.04423593  0.07423380  0.08540579 -0.06656147 -0.06963071 -0.28381486 -0.02852204  0.19851590

   1    1  |1 0>           0.01745922 -0.07108759  0.02495688 -0.17977013 -0.04987721  0.05420188 -0.15615482 -0.05002902
                          -0.02971668  0.06759830  0.01294718  0.07693727 -0.07819582  0.03459337  0.09669196 -0.05262115

   2    1  |1 0>           0.00199013 -0.06436959  0.01083555 -0.11264988 -0.05734000  0.00823564 -0.11083041 -0.02289111
                          -0.01429983 -0.04172303  0.02939681 -0.07948030  0.02347562 -0.01181262 -0.04234786 -0.08170283

   3    1  |1 0>           0.03462628 -0.05292998  0.03339539 -0.12569529  0.06005429  0.00869964  0.12144561 -0.03120638
                          -0.00277968  0.20145631 -0.07154598  0.11796094  0.04640291 -0.03560617 -0.01676081  0.04696188

   4    1  |1 0>           0.01819941 -0.03614262  0.03031611 -0.11329822 -0.08914216 -0.12611344  0.04310466 -0.02501429
                          -0.01416665  0.08651334 -0.00715223  0.04258231 -0.05562141  0.02387810  0.02166344 -0.08530271

   5    1  |1 0>          -0.13382242  0.27961912 -0.09496626  0.09981747 -0.02039153 -0.02845234 -0.00488290  0.02912272
                          -0.05526592  0.18483643 -0.17216471  0.04889006  0.00405139  0.01746904 -0.02618244 -0.08400767

   6    1  |1 0>          -0.27245057 -0.19488744  0.19106596  0.11390725  0.01106450 -0.03823131  0.01304136  0.03497836
                           0.05419489 -0.25279996  0.16948488  0.43845773 -0.01697136 -0.07501372 -0.04725767  0.02304073

   7    1  |1 0>           0.62370138  0.05691407  0.01233768  0.05118385 -0.00618485 -0.03991092 -0.00460898  0.00934612
                           0.01052029 -0.15135496  0.06959676  0.22019500  0.00204282  0.00145719 -0.00969596 -0.01551482

   8    1  |1 0>           0.00059100 -0.12005193 -0.29363952  0.12208428 -0.00173338 -0.01345911 -0.00266746  0.02367966
                           0.00091732  0.30411200  0.52932715 -0.03071533  0.03377612 -0.03276141 -0.01284349  0.01096656

   9    1  |1 0>          -0.02677897  0.25849078 -0.08112720  0.18658730  0.00253101  0.00935661 -0.00685549 -0.03498125
                          -0.04318732  0.11785376 -0.03044479  0.26257676  0.00971750 -0.02054924 -0.04620824 -0.00563178

   1    1  |1 1>-          0.00335338  0.01140842  0.10202690 -0.00366266 -0.08039816 -0.03739338  0.03455919 -0.34607821
                          -0.01847347 -0.04524811 -0.07580427 -0.00142842 -0.01324343  0.16472391  0.02034908 -0.10335765

   2    1  |1 1>-          0.00824049  0.01187413  0.09448804 -0.02718382 -0.38090291 -0.05955464  0.36291736  0.00671420
                          -0.01145946 -0.00713982  0.04575399 -0.05669769 -0.11329219  0.05983301 -0.29167557  0.01177083

   3    1  |1 1>-          0.03110126  0.03859248  0.04734357 -0.04107672  0.18802744  0.03759138 -0.16505178  0.06414043
                           0.01063840 -0.08755221 -0.15426679  0.05655250 -0.03133745 -0.01846488  0.12483040 -0.03004752

   4    1  |1 1>-          0.01417692  0.02886384  0.06430363 -0.01784311 -0.04901914 -0.03056909  0.31597749  0.01026758
                          -0.00674103 -0.05060842 -0.07663725  0.01894756  0.34421503 -0.12211072  0.30643461 -0.07514536

   5    1  |1 1>-          0.09987007 -0.05965532 -0.24601756  0.00912920 -0.09365060  0.11824797  0.06030379  0.42987373
                          -0.05473425 -0.02926059 -0.15242029 -0.01773786 -0.03676552 -0.08710286 -0.07232182  0.18888745

   6    1  |1 1>-         -0.24920482  0.04049921 -0.00599458 -0.03189162  0.03875967  0.37247503  0.06979951  0.12291175
                          -0.00617255  0.13163357 -0.10933127 -0.19249790 -0.04873659  0.05817695 -0.03398242 -0.40076422

   7    1  |1 1>-         -0.10101815 -0.14163561  0.14831953  0.13577439  0.02781698  0.33127320  0.08490946  0.05085127
                           0.11606986 -0.27333579  0.23186663  0.36854856  0.03489568  0.12733606  0.00258622  0.05061176

   8    1  |1 1>-          0.02653442 -0.16109883  0.11119520 -0.23711388  0.03917917  0.01310821  0.01525555 -0.03954782
                          -0.03814967  0.28178857 -0.07912380  0.26538406 -0.35377699  0.06952408  0.03843047 -0.03070994

   9    1  |1 1>-         -0.00177098 -0.14764002 -0.22133132  0.05084433 -0.09129681 -0.10113980  0.01492203 -0.03818129
                           0.00026965 -0.00611535 -0.12954512  0.07228887  0.08365957  0.28182352  0.10158171 -0.03348327

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00003720  0.00013238  0.00026950  0.00097631  0.00579575  0.99995340  0.00761277 -0.00000442
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00007864 -0.00012216  0.00027020  0.00034916 -0.00542544  0.00003218  0.00607895  0.13694056
                           0.00016636 -0.00021509  0.00087802 -0.00149035  0.00368460 -0.00000954 -0.00786506 -0.14370523

   3    1  |0 0>           0.00017612 -0.00004136 -0.00007701 -0.00059726 -0.00164889 -0.00002331  0.01345240 -0.24611534
                          -0.00009517 -0.00002255  0.00019715 -0.00026847  0.00064432 -0.00001219  0.00181428 -0.02867700

   4    1  |0 0>          -0.00003928  0.00006755  0.00028615 -0.00030256 -0.00121198  0.00000317  0.00292493 -0.46694320
                           0.00012644 -0.00018985  0.00034652  0.00058516 -0.00091402 -0.00001798  0.00700955  0.00528404

   5    1  |0 0>          -0.00025104  0.00012876  0.00019357 -0.00093191 -0.00177670  0.00001712  0.00144366  0.21069094
                          -0.00016434 -0.00011271  0.00009881 -0.00049520 -0.00040438  0.00002401 -0.00495364  0.74590001

   6    1  |0 0>          -0.00005347  0.00010392 -0.00040325 -0.00030209  0.00393074 -0.00002100 -0.00548659  0.16158003
                          -0.00010262  0.00001444  0.00061513  0.00008687  0.00294032 -0.00012328  0.03111540  0.23285359

   7    1  |0 0>          -0.00014960 -0.00002377  0.00026455 -0.00034427 -0.00062461 -0.00000949  0.00523927 -0.00405437
                           0.00015253 -0.00021451  0.00021777  0.00062340  0.00003810 -0.00002720  0.00802315  0.00077009

   8    1  |0 0>          -0.00002276  0.00001532  0.00013516 -0.00036342  0.00356062 -0.00008086  0.01792471  0.00091686
                          -0.00000389 -0.00034462 -0.00025997  0.00019596  0.00045599  0.00000796 -0.00293534  0.00450981

   9    1  |0 0>           0.00005460  0.00024481 -0.00046086  0.00067706 -0.00196263 -0.00002565  0.01575124  0.00090835
                          -0.00018626  0.00002171  0.00035308  0.00137406  0.00333225 -0.00005378  0.00562493 -0.00031369

  10    1  |0 0>          -0.00004516  0.00015944  0.00031119  0.00099077  0.00275610  0.00001481 -0.01356592  0.00011116
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.15021101  0.22467043 -0.00270104  0.11845490 -0.08257731 -0.00002493  0.02711527 -0.00028522
                           0.31879783  0.50996257 -0.08031480 -0.06316161  0.04688703 -0.00097225  0.07772191 -0.00052309

   2    1  |1 1>+          0.04260308 -0.05623052  0.01878899  0.04477346 -0.15955932  0.00152196 -0.10095747 -0.00013019
                          -0.10087616 -0.06337242 -0.05866140 -0.03028882  0.04760293 -0.00079829  0.06624910 -0.00101272

   3    1  |1 1>+          0.05513356  0.00167856 -0.01758165  0.26759080 -0.17372219  0.00190307 -0.18532550 -0.00062001
                          -0.00684539 -0.01651851 -0.02001570  0.20108477 -0.06897081 -0.00062021  0.08812441 -0.00177475

   4    1  |1 1>+         -0.16372997 -0.01139590 -0.11608320  0.15427583  0.04836861 -0.00064266  0.02345901  0.00012911
                          -0.05533024  0.06298108  0.28455661  0.14760730  0.04992235 -0.00036503 -0.01168897  0.00036632

   5    1  |1 1>+         -0.09720661 -0.05299308 -0.10681480 -0.02600727  0.07143486 -0.00083383  0.06710347  0.00021034
                          -0.03780790  0.17054067 -0.16462225  0.00232915  0.01029872 -0.00006091 -0.00188113 -0.00006178

   6    1  |1 1>+         -0.21514197 -0.00899053 -0.15651553 -0.09414083 -0.04243414  0.00074891 -0.04869112  0.00038809
                          -0.00470600  0.10604374 -0.20186192  0.05209995 -0.07138844  0.00061312 -0.01786052 -0.00016695

   7    1  |1 1>+         -0.06352102  0.01944780 -0.01010129 -0.05738060  0.00614165  0.00028542 -0.03477384  0.00006801
                          -0.05551408  0.04757560 -0.06250930  0.00184994 -0.02935937  0.00015530  0.00263854 -0.00009510

   8    1  |1 1>+         -0.07324700  0.03055229 -0.21267815  0.16287560  0.06531989 -0.00104828  0.06999937  0.00014218
                          -0.02810449  0.11120024  0.21449121  0.09256478  0.02802530 -0.00047273  0.02635765  0.00036333

   9    1  |1 1>+         -0.13315483  0.09313605 -0.19286884 -0.00370417 -0.00888999  0.00153980 -0.19264369  0.00129322
                          -0.08385985 -0.18663107 -0.21819970 -0.07666428  0.02250283  0.00144994 -0.17990389 -0.00042955

   1    1  |1 0>           0.20067824 -0.05150782  0.14223445 -0.10015071 -0.28349518  0.00217686 -0.06741742  0.00072530
                          -0.05488212  0.21582244 -0.11628321 -0.10773897 -0.12152519 -0.00145849  0.32862172 -0.00008688

   2    1  |1 0>          -0.14752389 -0.14393381  0.14390391  0.26362831  0.11995282 -0.00393967  0.39208200  0.00027945
                          -0.37916976 -0.15919039  0.04568633 -0.11388939  0.12679841 -0.00091335  0.01338524 -0.00067943

   3    1  |1 0>          -0.01596788 -0.05165756  0.11631583 -0.21947975  0.16582250 -0.00400199  0.40380758 -0.00012341
                           0.09412938 -0.09394725  0.11756872  0.31961046 -0.35296516  0.00057631  0.16885312  0.00014806

   4    1  |1 0>           0.35514142  0.04072868 -0.32401169 -0.03264070  0.21654902 -0.00202943  0.10178320 -0.00021072
                          -0.22305629  0.06430677  0.04158565 -0.11041906 -0.26651792  0.00433388 -0.36578268  0.00008930

   5    1  |1 0>           0.06802162 -0.10844131  0.16921799 -0.20926234  0.29288786 -0.00098842 -0.08940217 -0.00025674
                           0.00669390  0.15347835  0.13724573  0.06487121  0.47166041 -0.00215285 -0.08988611 -0.00014039

   6    1  |1 0>           0.07925823 -0.09736431  0.04182486 -0.03001215  0.10259742 -0.00017638 -0.05456996 -0.00007071
                           0.01905151 -0.00209120  0.08706412  0.04878969  0.10321311 -0.00053440 -0.01700211 -0.00012975

   7    1  |1 0>           0.00184627 -0.03417009  0.04819682 -0.05364197  0.09361861 -0.00039109 -0.01921566 -0.00009205
                           0.00610166  0.04648963  0.05483742  0.02006973  0.14460392 -0.00070023 -0.02349944 -0.00007677

   8    1  |1 0>          -0.00725683 -0.00240218  0.01937141 -0.02837950  0.01786440  0.00003058 -0.01657257 -0.00003423
                          -0.01064177  0.03466539  0.03154659  0.01922854  0.05479215 -0.00013143 -0.02739366 -0.00000356

   9    1  |1 0>          -0.01162212 -0.01858688 -0.16593638  0.17066285  0.08488829 -0.00104569  0.05448556  0.00033936
                           0.02799246 -0.16286269 -0.07019274 -0.35237620 -0.29524755 -0.00113038  0.39417277  0.00004140

   1    1  |1 1>-         -0.12941030  0.29049302  0.13564583  0.01390580 -0.02819284  0.00031449 -0.06087260 -0.00042656
                          -0.34791403 -0.08912307 -0.08372171  0.04050368  0.09183119 -0.00069199  0.01330704 -0.00087691

   2    1  |1 1>-          0.05264946 -0.15428059  0.01725059  0.08114490 -0.06682396 -0.00029191  0.06871864 -0.00017268
                           0.13996874 -0.04935934 -0.03716201  0.04967999  0.06413042 -0.00039639 -0.00109848  0.00023919

   3    1  |1 1>-          0.15591205 -0.14289314  0.07826965  0.29689161 -0.01100273 -0.00060088  0.01420758 -0.00044981
                           0.11918690 -0.17536171 -0.12420602  0.28573948  0.12780987 -0.00063293 -0.04383722  0.00046815

   4    1  |1 1>-          0.16572318 -0.07434468  0.24158470 -0.14335099 -0.04713534  0.00096938 -0.07724568 -0.00007676
                           0.04171898  0.01454313 -0.23522025 -0.07512215 -0.00803628  0.00002722  0.01309702 -0.00032081

   5    1  |1 1>-         -0.03355435  0.29428478  0.14747868 -0.06335869 -0.00121273 -0.00009902  0.00649722 -0.00034824
                          -0.18046530  0.06913057  0.07516826 -0.10405828  0.01334415 -0.00030454  0.03391827 -0.00031595

   6    1  |1 1>-         -0.05914136  0.04461336 -0.10031462 -0.03220200 -0.02349527 -0.00012599  0.04174584  0.00032279
                           0.05859523  0.09141900 -0.11559838 -0.00727698 -0.01056844  0.00037912 -0.03129783 -0.00007663

   7    1  |1 1>-          0.03211190  0.04447691  0.01872489  0.03079901  0.01473551 -0.00054901  0.05543243 -0.00009850
                          -0.00601925  0.00480148  0.03745086 -0.03048421  0.03464557 -0.00022466  0.00378341 -0.00002055

   8    1  |1 1>-          0.06722576 -0.02882988  0.22872372 -0.17248920 -0.05545473  0.00088846 -0.05695684 -0.00024391
                          -0.00566402 -0.07240664 -0.21173959 -0.08450416 -0.03221353  0.00029815 -0.00390569 -0.00037411

   9    1  |1 1>-          0.01351677  0.16090956 -0.04853810  0.04395692 -0.03659508  0.00009800  0.00531458  0.00080157
                           0.23469940 -0.27438495 -0.09891147 -0.15700447  0.08960371  0.00131442 -0.20271518 -0.00022053

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000747  0.00000517 -0.00002367 -0.00016506  0.00001695 -0.00002313 -0.00012822  0.00007174
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.18923739  0.23891814  0.84412724  0.17298573  0.00012212 -0.00139106  0.00758745 -0.00111091
                           0.11247805 -0.15953571 -0.08617480 -0.28185538  0.00060223 -0.00423488 -0.00546966  0.00116237

   3    1  |0 0>          -0.52573798 -0.35470644  0.31267284  0.32620285 -0.00186829  0.00174161  0.01756582 -0.00155713
                          -0.28318157  0.46566045 -0.17746003  0.05640452 -0.00039608  0.00025820  0.00190767 -0.00010502

   4    1  |0 0>          -0.25382271 -0.27222338  0.08201246  0.08801902 -0.00082712  0.00045467  0.00429495 -0.00042456
                           0.57539266 -0.51440218  0.03847410  0.17772176 -0.00017854  0.00034781  0.00979702 -0.00066944

   5    1  |0 0>          -0.29462726  0.02581848  0.04823509  0.08633369  0.00218866  0.00002554 -0.00333346 -0.00042935
                          -0.31500594 -0.42944493 -0.01501579 -0.13421731  0.00357736 -0.00187022 -0.00496795  0.00032981

   6    1  |0 0>           0.00834161  0.17935972  0.26889451 -0.28157699  0.00563746 -0.00723797  0.00092767  0.00094921
                           0.11540624  0.13715822 -0.25975067  0.79589912 -0.00293387  0.00649432  0.04015132 -0.00292351

   7    1  |0 0>           0.00044387  0.00147417 -0.00194401 -0.00858506  0.72533588  0.54050771  0.21308271 -0.00072939
                          -0.00142739 -0.00013870  0.00139366 -0.01619096 -0.26113778  0.08976877  0.24417308 -0.00097953

   8    1  |0 0>          -0.00291757 -0.00026938  0.00482254 -0.03332885 -0.34820422  0.17823264  0.57100298 -0.00217379
                          -0.00008771 -0.00264160  0.00885898 -0.00273670 -0.10139242  0.67925969 -0.21827626  0.00028857

   9    1  |0 0>          -0.00063283  0.00151948 -0.00635058 -0.02467979 -0.06061183  0.02943139  0.67711370 -0.00237914
                          -0.00190477 -0.00236895  0.00416741 -0.01189573  0.52001115 -0.45344974  0.24458487 -0.00026055

  10    1  |0 0>          -0.00018804 -0.00013014  0.00059675  0.00420088 -0.00051371  0.00070179  0.00391572  0.99988578
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020

   1    1  |1 1>+          0.00026469  0.00005451 -0.00089147 -0.00015867  0.00048946  0.00002794 -0.00206471  0.00018701
                           0.00007472  0.00017693 -0.00072449 -0.00207016  0.00060043 -0.00033772 -0.00237946  0.00074649

   2    1  |1 1>+          0.00039797  0.00025229 -0.00129795  0.00398108  0.00014007  0.00028920  0.00186669 -0.00121357
                          -0.00003683  0.00032011 -0.00112443 -0.00085521  0.00031795  0.00022848 -0.00259304  0.00071725

   3    1  |1 1>+          0.00074509  0.00025048 -0.00076081  0.00684881  0.00084854 -0.00031093  0.00331916 -0.00279576
                          -0.00048257  0.00063597 -0.00298384 -0.00141899  0.00030744  0.00034363 -0.00304348  0.00096039

   4    1  |1 1>+         -0.00011279 -0.00023782  0.00001384 -0.00072819 -0.00042125  0.00025551 -0.00108195 -0.00000983
                          -0.00029892 -0.00010250  0.00019512 -0.00010904 -0.00035316  0.00027362  0.00065306 -0.00044871

   5    1  |1 1>+          0.00006167 -0.00004436  0.00053044 -0.00198310  0.00024651 -0.00018200 -0.00187740  0.00083945
                           0.00006621 -0.00029382  0.00050783 -0.00048999  0.00040169 -0.00043817  0.00024555 -0.00008799

   6    1  |1 1>+          0.00052225  0.00013771  0.00036743  0.00155504  0.00007760 -0.00037782  0.00174037 -0.00042638
                           0.00009745  0.00022190 -0.00099675  0.00100574 -0.00010662 -0.00006683  0.00021343  0.00005231

   7    1  |1 1>+          0.00020286  0.00002573  0.00022880  0.00123566  0.00002619 -0.00008049  0.00109580 -0.00044617
                           0.00000968  0.00009178 -0.00020469 -0.00000770 -0.00001407 -0.00011482 -0.00012851  0.00012768

   8    1  |1 1>+         -0.00024126 -0.00032334  0.00008304 -0.00222899 -0.00035636  0.00025255 -0.00234449  0.00065301
                           0.00000938 -0.00030162  0.00024544 -0.00167029  0.00001661 -0.00003428 -0.00034050  0.00017951

   9    1  |1 1>+          0.00010092 -0.00036986  0.00044084  0.00641286 -0.00109863  0.00067978  0.00543761 -0.00260327
                           0.00026194  0.00022049 -0.00111622  0.00772000 -0.00011504  0.00042337  0.00374356 -0.00232061

   1    1  |1 0>           0.00011847  0.00064438 -0.00259229  0.00286274 -0.00120940  0.00045552  0.00202619 -0.00014486
                          -0.00003293  0.00066161 -0.00223179 -0.00977562  0.00088519 -0.00035271 -0.01006887  0.00531647

   2    1  |1 0>          -0.00088706 -0.00051691 -0.00047909 -0.01309540  0.00048145 -0.00017491 -0.01238278  0.00485952
                           0.00017691 -0.00085714  0.00236278 -0.00204239  0.00160082 -0.00125392  0.00069545 -0.00036298

   3    1  |1 0>           0.00052518  0.00046976  0.00126729 -0.01443599  0.00111248 -0.00279615 -0.01126336  0.00506292
                          -0.00038317  0.00018607  0.00012630 -0.00912707  0.00116931 -0.00220226 -0.00208633  0.00322070

   4    1  |1 0>           0.00028019 -0.00105488  0.00351930 -0.00567723  0.00197405 -0.00146278 -0.00152046  0.00073540
                           0.00090968 -0.00009122 -0.00028502  0.01097607 -0.00068652 -0.00025344  0.01165466 -0.00437440

   5    1  |1 0>          -0.00012449 -0.00011397 -0.00009168  0.00566482 -0.00063934  0.00177078  0.00019405 -0.00209706
                          -0.00031453 -0.00025384  0.00357880  0.00316291 -0.00007704 -0.00028994  0.00250890 -0.00265543

   6    1  |1 0>          -0.00004303 -0.00002943  0.00011875  0.00256252 -0.00021300  0.00046903  0.00081181 -0.00104954
                          -0.00013669 -0.00006997  0.00082194  0.00052495  0.00006165 -0.00009362  0.00055131 -0.00058931

   7    1  |1 0>          -0.00005541 -0.00004567 -0.00003777  0.00147143 -0.00018001  0.00053637 -0.00020433 -0.00054108
                          -0.00010701 -0.00009666  0.00112265  0.00076834  0.00001666 -0.00012163  0.00068976 -0.00077085

   8    1  |1 0>           0.00001994 -0.00001021 -0.00004521  0.00079267 -0.00006369  0.00015589  0.00027693 -0.00027985
                          -0.00007948 -0.00001914  0.00035456  0.00103188 -0.00011688  0.00010285  0.00070933 -0.00054790

   9    1  |1 0>          -0.00026974 -0.00042701  0.00026040 -0.00185404 -0.00044104  0.00041084 -0.00182513  0.00038242
                           0.00090704  0.00020712 -0.00181046 -0.01451687  0.00153318 -0.00212968 -0.01047234  0.00629327

   1    1  |1 1>-          0.00074644  0.00012928 -0.00026015  0.00298682  0.00050912  0.00010456 -0.00006704 -0.00126134
                           0.00016366  0.00065412 -0.00031628  0.00032210  0.00035664 -0.00020918 -0.00021698 -0.00017902

   2    1  |1 1>-          0.00012278  0.00004760 -0.00049996 -0.00217740  0.00021262 -0.00016189 -0.00256615  0.00090807
                          -0.00002626  0.00009976 -0.00000060  0.00036279  0.00002950 -0.00004176  0.00017932 -0.00023999

   3    1  |1 1>-          0.00028852  0.00004776  0.00018634  0.00012116  0.00038694 -0.00009734 -0.00215856 -0.00051666
                          -0.00027209  0.00022368 -0.00023273  0.00207725 -0.00022435  0.00008984  0.00171252 -0.00120918

   4    1  |1 1>-          0.00011593  0.00031111 -0.00011783  0.00274297  0.00029465 -0.00008437  0.00242446 -0.00083551
                          -0.00003219  0.00021458 -0.00007176  0.00025327  0.00004500  0.00004482 -0.00067735  0.00028042

   5    1  |1 1>-          0.00021752 -0.00018881 -0.00037926  0.00011003  0.00016376  0.00016942 -0.00057611 -0.00001131
                           0.00009401  0.00020734  0.00043521 -0.00117351  0.00021905 -0.00033442 -0.00078061  0.00043909

   6    1  |1 1>-          0.00019561 -0.00002986  0.00008593 -0.00151293  0.00016833 -0.00025430 -0.00105889  0.00069876
                           0.00019797  0.00003226 -0.00019727  0.00114203  0.00012186 -0.00014633  0.00078452 -0.00031138

   7    1  |1 1>-         -0.00013163 -0.00008970 -0.00017470 -0.00177855  0.00008317  0.00007320 -0.00176362  0.00068201
                           0.00002963 -0.00012514  0.00047156 -0.00037608  0.00017849 -0.00011098  0.00005010 -0.00005320

   8    1  |1 1>-          0.00025972  0.00033496 -0.00005459  0.00185524  0.00045505 -0.00029591  0.00194953 -0.00050825
                          -0.00002474  0.00028833 -0.00011156  0.00074440  0.00004568 -0.00007087 -0.00018245  0.00010836

   9    1  |1 1>-         -0.00030496 -0.00044399 -0.00028066 -0.00061102 -0.00058025  0.00040332 -0.00023306  0.00011002
                           0.00036849  0.00003040 -0.00000224  0.00789224  0.00016292  0.00021829  0.00489510 -0.00275322

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00055346 -0.00035286  0.00033373  0.00011230 -0.00003355 -0.00003689  0.00001314 -0.00003259
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00001768  0.00027970  0.00059726  0.00001809  0.00000198  0.00007406  0.00001385  0.00002801
                          -0.00083703  0.00052040 -0.00043989 -0.00000628 -0.00008301  0.00002706 -0.00003109 -0.00001331

   3    1  |0 0>          -0.00059147  0.00011343 -0.00054584 -0.00012293 -0.00000312  0.00008768 -0.00007817  0.00002936
                          -0.00013518  0.00036291  0.00001633  0.00004728  0.00010224  0.00013814  0.00005369 -0.00000877

   4    1  |0 0>           0.00026685 -0.00042357 -0.00054478 -0.00008218 -0.00008999  0.00001603  0.00005863  0.00002136
                          -0.00059467  0.00135214  0.00002267  0.00017721 -0.00000181 -0.00010990  0.00004807 -0.00000391

   5    1  |0 0>           0.00234860  0.00100167  0.00008490  0.00002825 -0.00010391  0.00006422  0.00004201  0.00003228
                           0.00191589  0.00034169  0.00054960 -0.00000392  0.00020310  0.00007283 -0.00007130 -0.00002273

   6    1  |0 0>           0.00048591  0.00162042  0.00019316  0.00015022  0.00005569  0.00005038 -0.00002267  0.00000605
                          -0.00123185 -0.00005539 -0.00005033  0.00019101  0.00002943 -0.00005449 -0.00002202  0.00005665

   7    1  |0 0>          -0.00091203 -0.00037556 -0.00009665 -0.00020711 -0.00026701 -0.00000414 -0.00001515 -0.00002705
                           0.00172903  0.00123757 -0.00010403  0.00024552 -0.00000516 -0.00015720 -0.00001111  0.00002802

   8    1  |0 0>           0.00390187  0.00049309  0.00048368 -0.00029542  0.00002557 -0.00000457 -0.00002319  0.00002260
                           0.00172761  0.00041282  0.00012748  0.00030172 -0.00009678  0.00011355  0.00000731 -0.00001607

   9    1  |0 0>           0.00088753 -0.00063444  0.00087470  0.00014053 -0.00008337 -0.00001819 -0.00003774 -0.00004632
                           0.00007272 -0.00061049  0.00045886  0.00020782  0.00001873  0.00000720 -0.00001638 -0.00004805

  10    1  |0 0>           0.00099437 -0.00052692  0.00048048  0.00014965 -0.00004382 -0.00004750  0.00001676 -0.00004155
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.22488928 -0.03553313  0.11182674 -0.26676576  0.21972436 -0.28391136 -0.04966850 -0.01387409
                           0.14886463 -0.00448237  0.00726820  0.31286789 -0.05873503  0.05429917  0.06280921 -0.06680791

   2    1  |1 1>+          0.18908504  0.07450822  0.03794203  0.17862297 -0.10352904  0.02554460 -0.28910878  0.00778990
                           0.10657545  0.07834734  0.16556096 -0.19042402 -0.10524188  0.01203461  0.29761917  0.08640258

   3    1  |1 1>+          0.45066908  0.11358047  0.12076236  0.08013640 -0.14803052  0.03247235  0.16328484  0.00928490
                           0.12673658  0.11268637  0.44760007 -0.17278509 -0.03626830  0.05669305 -0.17117113  0.08000423

   4    1  |1 1>+         -0.02529990 -0.11712181  0.01436206  0.15247981 -0.05331661  0.01560143  0.36692401  0.18283959
                          -0.00547630  0.04013674 -0.14994826 -0.00326093  0.04869150  0.05812666  0.26476259 -0.07278555

   5    1  |1 1>+          0.00591693 -0.03659782 -0.13221928 -0.06520041  0.16688998  0.13550532  0.08248709  0.09101594
                           0.03627761  0.04072938  0.07302277  0.16283187  0.01796787 -0.21580596 -0.04163801  0.44408812

   6    1  |1 1>+          0.03268587 -0.09512439 -0.12290857 -0.07178406  0.05217687  0.30526573 -0.10422850  0.20941016
                          -0.01208413  0.15400807  0.01505031  0.06418465  0.12456766  0.32703996 -0.05758315 -0.12083940

   7    1  |1 1>+          0.02319436 -0.01766547 -0.04965051 -0.02729095  0.04166178  0.15004799 -0.05891170  0.29202631
                          -0.01256515  0.02710455  0.01535724  0.06930597  0.01194478 -0.09777406 -0.06881564 -0.06176204

   8    1  |1 1>+         -0.03618088 -0.09433022 -0.02552290  0.14166437  0.01908916  0.01100106  0.00932182 -0.02270403
                           0.04828592  0.02017927 -0.18325962 -0.11782750  0.08614254 -0.00697547  0.01400408  0.08596714

   9    1  |1 1>+         -0.11230424 -0.10531277  0.15159948 -0.10068802 -0.04684247  0.00242343 -0.03873630 -0.11720331
                           0.15953550  0.45218775 -0.02373232 -0.04217857  0.07932373 -0.20907470  0.09443863 -0.26752664

   1    1  |1 0>          -0.06516909 -0.07359813  0.12826753  0.29924742  0.28195731 -0.03320554  0.05394785  0.05087230
                           0.04690060  0.35240786 -0.32810199 -0.21110726 -0.08261968 -0.02573721 -0.02918376  0.04475762

   2    1  |1 0>          -0.07360646  0.15041576  0.20093453  0.06115331  0.18328040  0.05385103  0.06040489  0.00346964
                           0.26777181  0.14462199  0.13198597  0.33308009 -0.25016753  0.12869817  0.01898588 -0.07710047

   3    1  |1 0>           0.17142902 -0.07034928  0.12066570 -0.13548403 -0.22363472 -0.00339477 -0.09248746 -0.03723318
                          -0.12868750  0.29068667  0.04336441  0.14381576  0.11843995 -0.06330215 -0.02149961  0.01321278

   4    1  |1 0>           0.19374446 -0.01995181  0.09522020 -0.15191602  0.37854246 -0.10160939 -0.01654272 -0.06945404
                           0.05307069 -0.13094463  0.11136963 -0.25435675  0.04424167  0.01921607  0.05729039 -0.07998998

   5    1  |1 0>           0.05228767 -0.14454673  0.17634539  0.15133480  0.14211597 -0.01936226 -0.09072826 -0.02162056
                           0.02308484  0.17673602  0.12393626 -0.03663663 -0.01503410  0.01437048 -0.02748047  0.01138133

   6    1  |1 0>           0.01514758  0.00436231  0.06291930  0.00628712  0.08070593 -0.01540017 -0.02650589 -0.01678946
                           0.01208174  0.06535359  0.03378291  0.06898242  0.09384963  0.06110485 -0.00945977  0.09082550

   7    1  |1 0>           0.01635129 -0.03296365  0.05400556  0.03618090  0.03734785 -0.00443984 -0.02160638 -0.03689725
                           0.01001652  0.05462513  0.05329627 -0.01467090 -0.00292322  0.01432631 -0.00036867  0.01694285

   8    1  |1 0>           0.00831675 -0.01475258  0.01944190 -0.00122665  0.02313938  0.01360544 -0.01448412 -0.01933423
                          -0.01139301  0.02382261  0.00272306  0.00521821 -0.01344474 -0.00781039  0.00075131 -0.01436758

   9    1  |1 0>          -0.04075671 -0.13141226 -0.00743096  0.05490074 -0.02272333  0.05198198  0.05126119  0.04834449
                           0.25499173 -0.18105102  0.02470266  0.05129082  0.01689087 -0.00752458  0.10052679 -0.01949024

   1    1  |1 1>-          0.37943598 -0.10443844 -0.10595040  0.15599358 -0.04200459 -0.19501451 -0.04574751  0.05842701
                           0.15028756 -0.03064227 -0.11897434  0.11176700  0.46933680  0.00306891  0.03280263  0.04630945

   2    1  |1 1>-          0.13160903 -0.14914037  0.01313683 -0.07515308  0.01463383  0.09028886 -0.24777361  0.12949955
                           0.06764163 -0.05319691 -0.16672399 -0.04162947 -0.23414439 -0.03977029  0.31437464  0.11202790

   3    1  |1 1>-          0.31952989 -0.33766270 -0.03379406 -0.17220227  0.08530509  0.17069267  0.08539244 -0.09140236
                           0.11076163 -0.11876763 -0.30969318 -0.00003216 -0.17635323 -0.10297065 -0.13023184 -0.14750635

   4    1  |1 1>-          0.03306949  0.07182873  0.00601294 -0.06082118  0.08247216  0.05781775  0.36138952  0.02191232
                          -0.05389011 -0.03206082  0.17563143  0.07852823  0.01286536 -0.00954418  0.34536837 -0.07862207

   5    1  |1 1>-          0.09573216  0.07866055  0.06494885 -0.02406542  0.10507450  0.38091573 -0.05064599 -0.11353007
                           0.03524703 -0.06208584 -0.09958422  0.05793922  0.18970085 -0.32001220  0.05654420 -0.07944764

   6    1  |1 1>-          0.01297136 -0.05173179 -0.06494935 -0.06281010  0.00928317  0.19291741  0.02712930 -0.36298767
                           0.04579385  0.09335919 -0.03606433  0.03634966  0.09598867  0.36606213  0.08935892  0.13585861

   7    1  |1 1>-          0.00355372  0.03159520  0.02961734  0.00685276  0.03371352  0.01619377  0.06220173 -0.29778331
                           0.03197446 -0.02839359 -0.02066812 -0.01744775  0.03612859 -0.06548916  0.07007277  0.15964122

   8    1  |1 1>-          0.05317268  0.10380215 -0.00784505 -0.12412483  0.01073514  0.04600540  0.01743389  0.01365777
                          -0.05360147 -0.05620688  0.18707786  0.12971268 -0.07532767 -0.03480613 -0.02352203 -0.06225851

   9    1  |1 1>-         -0.12170720 -0.03347278  0.31306221 -0.26005251 -0.11482840 -0.06223564  0.11245604  0.15929677
                           0.18307517  0.28882993 -0.09409255 -0.08244250  0.05332812  0.03968138 -0.03581314  0.27252313

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00002100 -0.00000615  0.00000347 -0.00000582 -0.00000330
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000508 -0.00000690  0.00000497 -0.00000252  0.00000118
                           0.00000066  0.00000423  0.00000477 -0.00000475  0.00000170

   3    1  |0 0>           0.00004996 -0.00000215 -0.00000122  0.00000179 -0.00000355
                          -0.00001497  0.00000769  0.00000019  0.00000316 -0.00000052

   4    1  |0 0>           0.00002605  0.00000407 -0.00000119 -0.00000009 -0.00000093
                           0.00004689 -0.00000490  0.00000225  0.00000563  0.00000412

   5    1  |0 0>          -0.00005705 -0.00000267 -0.00000063 -0.00000028  0.00000057
                           0.00001968  0.00000242 -0.00000418 -0.00000317 -0.00000013

   6    1  |0 0>          -0.00000522  0.00000741 -0.00000025  0.00000576  0.00000008
                          -0.00000757  0.00000043  0.00000024 -0.00000182 -0.00000235

   7    1  |0 0>          -0.00000058  0.00000225 -0.00000072 -0.00000246 -0.00000026
                          -0.00002352  0.00000225  0.00000588  0.00000041 -0.00000502

   8    1  |0 0>           0.00002729  0.00000214 -0.00000431 -0.00000229  0.00000057
                          -0.00001322  0.00000294  0.00000438  0.00000116 -0.00000075

   9    1  |0 0>          -0.00002220  0.00000086  0.00000088  0.00000061 -0.00000026
                           0.00000200  0.00000205 -0.00000392  0.00000649  0.00000175

  10    1  |0 0>           0.00002672 -0.00000778  0.00000440 -0.00000736 -0.00000417
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.09243620 -0.04722763 -0.10218423 -0.04949714  0.02098444
                           0.01248759  0.03652304 -0.06579048 -0.03444714 -0.01308131

   2    1  |1 1>+          0.41586121 -0.06849121  0.03546141 -0.01001205  0.00250091
                          -0.09477757  0.01842605 -0.09227275 -0.01479482 -0.01410977

   3    1  |1 1>+         -0.15048322  0.04111836 -0.15913738 -0.08233236  0.02849901
                           0.08134298  0.05429642  0.00295032 -0.03713261  0.01383302

   4    1  |1 1>+          0.17949509 -0.00780525 -0.05803547 -0.04580681  0.01852271
                           0.32755848  0.04273978 -0.02631784 -0.01321644 -0.00582575

   5    1  |1 1>+          0.14457742  0.17548536 -0.01820871 -0.09034999 -0.09842098
                          -0.02781599  0.00547446  0.18183564  0.12422157 -0.05571814

   6    1  |1 1>+         -0.00160556 -0.15509497 -0.07515106  0.13377713 -0.25228594
                          -0.01798250  0.13133574  0.04645634 -0.00525688 -0.02821799

   7    1  |1 1>+          0.02162011 -0.01737968  0.03233767  0.13376318  0.56810079
                          -0.09153248  0.02908885  0.04016783 -0.04364141  0.04674926

   8    1  |1 1>+         -0.07358109 -0.26972586 -0.01009412 -0.24250469  0.01100911
                          -0.30819074 -0.14029292  0.19800339 -0.24781394  0.04420815

   9    1  |1 1>+         -0.03152366  0.06467705 -0.08935509 -0.07574679  0.00084546
                          -0.01415531 -0.06703122  0.21495811  0.16237962 -0.03070666

   1    1  |1 0>          -0.00605245  0.10122789  0.03218149  0.04383687  0.02440942
                           0.04941327  0.15414413 -0.07597028  0.07232291 -0.02862021

   2    1  |1 0>          -0.00538222 -0.05486198  0.06621205 -0.04737338  0.00681473
                          -0.04626966  0.12112679 -0.01296288  0.03684117 -0.01376043

   3    1  |1 0>           0.03349912  0.13364169 -0.07480325  0.15344477  0.02954916
                          -0.03496866  0.09137809 -0.09938526  0.11718898  0.00495481

   4    1  |1 0>           0.09644203  0.05652779 -0.00348141  0.06595653  0.01948812
                           0.03975176  0.09061763 -0.07057043  0.05707696 -0.00979809

   5    1  |1 0>          -0.02623847  0.02092286 -0.24329657  0.25807693 -0.12594297
                           0.01091867 -0.07308473  0.11360615 -0.15896352 -0.05044676

   6    1  |1 0>           0.00788839  0.39569676  0.13699904 -0.34927912 -0.27309034
                          -0.00003217 -0.17253840 -0.19990205 -0.01279029 -0.02420478

   7    1  |1 0>          -0.01587411  0.16335658  0.02041609 -0.11285957  0.62575719
                           0.00074583 -0.16139795 -0.03835804 -0.06591880  0.07057049

   8    1  |1 0>          -0.02863314  0.05119505  0.54674180  0.32538709 -0.01280423
                          -0.02827898 -0.22850263  0.11464171  0.14698408 -0.00196528

   9    1  |1 0>           0.00859136  0.21349110 -0.13597893  0.18830016 -0.01893648
                           0.00707939 -0.22450798  0.06346322 -0.19065489 -0.04367954

   1    1  |1 1>-         -0.09963977  0.02200189  0.11472738  0.05233986 -0.00647771
                          -0.01282803 -0.03095705  0.06734925  0.04073336  0.02202511

   2    1  |1 1>-         -0.39655170  0.02611706  0.01665741 -0.03978274 -0.00328639
                           0.14713716  0.05517719  0.07943510  0.04944093  0.00897848

   3    1  |1 1>-          0.15089681 -0.00576179  0.13343609  0.10171574 -0.03382706
                          -0.10728947 -0.08454616  0.00856084  0.02021370 -0.01917262

   4    1  |1 1>-         -0.11951250 -0.00432270  0.07275222  0.03943396 -0.01746231
                          -0.35452848 -0.00417392  0.02316092  0.02448237  0.00033345

   5    1  |1 1>-         -0.04580616  0.00307409  0.06108287 -0.01058043 -0.10142417
                           0.06888814  0.01778401 -0.26375828 -0.13894340  0.02342801

   6    1  |1 1>-         -0.00898855  0.15768058  0.07264798 -0.12818332  0.25197557
                           0.04734037 -0.13167951 -0.04119577 -0.00190075  0.02388813

   7    1  |1 1>-          0.00986146 -0.34740837 -0.18219980  0.34815075  0.09665802
                           0.10372522  0.18011720  0.16404155  0.10146655  0.02511814

   8    1  |1 1>-          0.08293889 -0.24233967  0.09560836 -0.14494545 -0.02712856
                           0.31019873 -0.21327326  0.24994111 -0.23570484  0.04526002

   9    1  |1 1>-          0.02891646 -0.10935355  0.05509212  0.05617487 -0.00780399
                           0.01460543 -0.03588362 -0.21576576 -0.13235640  0.08300502


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3611.33278088   -822.12651098************      0.00000000        0.00      0.0000
     2   1  -3238.13372020   -448.92745030-98528186.66    373.19906067 81907726.27  10155.2638
     3   1  -3180.32062821   -391.11435831-85839679.61    431.01215267 94596233.32  11728.4382
     4   1  -3110.30840506   -321.10213516-70473772.74    501.02437581109962140.19  13633.5678
     5   1  -2854.34790361    -65.14163371-14296936.05    756.98487726166138976.88  20598.6079
     6   1  -2843.36279659    -54.15652669-11885983.73    767.96998429168549929.20  20897.5279
     7   1  -2840.12786132    -50.92159142-11175997.51    771.20491955169259915.42  20985.5549
     8   1  -2813.22467147    -24.01840157 -5271429.83    798.10810940175164483.10  21717.6280
     9   1  -2800.22042081    -11.01415092 -2417326.71    811.11236006178018586.22  22071.4917
    10   1  -2798.38117271     -9.17490281 -2013658.41    812.95160817178422254.52  22121.5402
    11   1  -2794.01075227     -4.80448237 -1054462.00    817.32202860179381450.93  22240.4654
    12   1  -2791.05882918     -1.85255928  -406589.77    820.27395169180029323.17  22320.7913
    13   1  -2789.48070204     -0.27443214   -60230.89    821.85207883180375682.04  22363.7344
    14   1  -2789.20627523     -0.00000533       -1.17    822.12650565180435911.76  22371.2019
    15   1  -2788.94004546      0.26622444    58429.51    822.39273542180494342.44  22378.4464
    16   1  -2788.77297898      0.43329092    95096.36    822.55980189180531009.29  22382.9925
    17   1  -2788.77296134      0.43330856    95100.24    822.55981954180531013.17  22382.9930
    18   1  -2788.77295941      0.43331049    95100.66    822.55982147180531013.59  22382.9930
    19   1  -2788.77292243      0.43334747    95108.78    822.55985844180531021.71  22382.9940
    20   1  -2788.77272625      0.43354365    95151.83    822.56005463180531064.76  22382.9994
    21   1  -2788.76941449      0.43685541    95878.68    822.56336638180531791.61  22383.0895
    22   1  -2788.76939701      0.43687289    95882.52    822.56338387180531795.45  22383.0900
    23   1  -2788.76928097      0.43698893    95907.98    822.56349991180531820.91  22383.0931
    24   1  -2788.75115149      0.45511841    99886.94    822.58162938180535799.88  22383.5864
    25   1  -2787.67095105      1.53531885   336963.54    823.66182983180772876.47  22412.9802
    26   1  -2786.24118779      2.96508211   650760.30    825.09159308181086673.23  22451.8860
    27   1  -2785.47600720      3.73026270   818698.03    825.85677368181254610.96  22472.7077
    28   1  -2780.36146107      8.84480883  1941211.16    830.97131981182377124.09  22611.8815
    29   1  -2774.99659884     14.20967106  3118662.32    836.33618203183554575.25  22757.8669
    30   1  -2764.35182396     24.85444594  5454920.36    846.98095692185890833.29  23047.5260
    31   1  -2739.87799957     49.32827033 10826303.95    871.45478130191262216.88  23713.4926
    32   1  -2734.56770164     54.63856825 11991779.63    876.76507923192427692.56  23857.9932
    33   1  -2722.09484872     67.11142117 14729254.42    889.23793215195165167.35  24197.3968
    34   1  -2463.46230987    325.74396003 71492535.55   1147.87047101251928448.48  31235.1467
    35   1  -2403.43056346    385.77570644 84667980.96   1207.90221742265103893.89  32868.6938
    36   1  -2330.66749214    458.53877776100637629.21   1280.66528873281073542.14  34848.6778
    37   1  -1970.47026501    818.73600489179691782.86   1640.86251587360127695.79  44650.1437

 E0 =  -2789.20626990 is the energy of the lowest zeroth-order state
 E1 =  -3611.33278088 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>       -0.00000284 -0.00000491  0.00000196 -0.00000801  0.00002305 -0.00003233 -0.00000512  0.00003715
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000238 -0.00000471  0.00000508 -0.00000520 -0.00000092  0.00004362 -0.00001608 -0.00000845
                               -0.00000126  0.00000671 -0.00000120 -0.00000344 -0.00000376 -0.00000022  0.00003595  0.00005509

  3  1     3    1  |0 0>       -0.00000401 -0.00000107 -0.00000103  0.00000125  0.00005752 -0.00000146  0.00004827 -0.00007244
                                0.00000003 -0.00000184 -0.00000216 -0.00000857  0.00000110  0.00001161 -0.00003514  0.00012354

  4  1     4    1  |0 0>       -0.00000072 -0.00000111 -0.00000624 -0.00000132  0.00000569 -0.00000397  0.00004687 -0.00005197
                               -0.00000468 -0.00000339  0.00000228  0.00000266 -0.00004581 -0.00002721  0.00005483 -0.00005987

  5  1     5    1  |0 0>       -0.00000009 -0.00000264 -0.00000614 -0.00000188  0.00004489 -0.00003907  0.00003044 -0.00002860
                               -0.00000045 -0.00000336 -0.00000584  0.00000415  0.00000972  0.00000188 -0.00005072 -0.00009818

  6  1     6    1  |0 0>       -0.00000055 -0.00000414  0.00000024 -0.00000652 -0.00000189 -0.00001712  0.00003954  0.00008988
                               -0.00000167  0.00000090  0.00000294 -0.00000098  0.00001136  0.00004812  0.00004986  0.00001921

  7  1     7    1  |0 0>       -0.00000054 -0.00000302 -0.00000298  0.00000197 -0.00001213  0.00001405 -0.00001881 -0.00005410
                                0.00000448  0.00000121 -0.00000505  0.00000131  0.00002556 -0.00000294 -0.00002910  0.00003100

  8  1     8    1  |0 0>        0.00000002  0.00000316  0.00000867 -0.00000238 -0.00002732 -0.00002743 -0.00003241  0.00006260
                               -0.00000057 -0.00000093  0.00000162 -0.00000199 -0.00001337 -0.00000775  0.00002195 -0.00012170

  9  1     9    1  |0 0>        0.00000032 -0.00000149  0.00000138  0.00000294 -0.00000556  0.00001013  0.00004046 -0.00002397
                                0.00000133  0.00000525 -0.00000150  0.00000403  0.00000316 -0.00006794  0.00001532 -0.00001229

 10  1    10    1  |0 0>       -0.00000358 -0.00000620  0.00000247 -0.00001011  0.00002893 -0.00004053 -0.00000641  0.00004609
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.01550693 -0.04250825 -0.08668317  0.00853756  0.07878391 -0.01233259  0.03057497 -0.13249707
                                0.02425706  0.03621169  0.06820939 -0.00220616  0.01991066 -0.17148509 -0.05558940  0.13334584

 12  1     2    1  |1 1>+       0.00141106 -0.05830501 -0.09267990 -0.03237675  0.44998512 -0.10235737  0.24388963  0.02601875
                                0.01090432 -0.02861285 -0.02120085 -0.01360608  0.07910945  0.06389748 -0.27866008 -0.02641036

 13  1     3    1  |1 1>+      -0.03016396 -0.00460503 -0.04935156  0.05243961 -0.20599016  0.04695818 -0.12128120  0.19112826
                               -0.01472944  0.10187002  0.15331330 -0.03411452  0.03063598 -0.02612183  0.10367902  0.05298055

 14  1     4    1  |1 1>+      -0.01489786 -0.01445265 -0.06964103  0.03043600  0.09879386 -0.10616723  0.34150639  0.07300394
                                0.00370894  0.04458587  0.07837090 -0.00201468 -0.26478352 -0.06382270  0.35318785 -0.04301096

 15  1     5    1  |1 1>+       0.09907386  0.17716929  0.15026423 -0.06213056  0.09483245 -0.05997636  0.02031325  0.19422546
                                0.02287976  0.06114811  0.10264354 -0.12562676  0.02651135  0.46724827  0.10461674  0.20502614

 16  1     6    1  |1 1>+       0.24854327 -0.03337410  0.00581340  0.02981057 -0.04031419 -0.22486335 -0.07387262  0.20167161
                                0.00022482 -0.13265138  0.11228013  0.20331849  0.03608872 -0.05956209 -0.06750802 -0.36257937

 17  1     7    1  |1 1>+      -0.57080901 -0.06266360  0.05076173 -0.01187260 -0.02908744 -0.31849470 -0.06247619  0.15085280
                                0.00084847 -0.09740998 -0.03014414  0.05064957 -0.04164422 -0.02221075 -0.00837461  0.07433192

 18  1     8    1  |1 1>+      -0.00741854 -0.20312883  0.08960224 -0.24942183 -0.04582271 -0.00822288  0.01758798  0.09044036
                               -0.04299807  0.31764591 -0.01691089  0.18903941  0.34855871 -0.04002323 -0.06097124  0.06359188

 19  1     9    1  |1 1>+       0.00997940  0.09592165  0.25710563  0.01635296  0.08118783  0.07860114  0.04191955  0.04072919
                                0.04423593  0.07423380  0.08540579 -0.06656147 -0.06963071 -0.28381486 -0.02852204  0.19851590

 20  1     1    1  |1 0>        0.01745922 -0.07108759  0.02495688 -0.17977013 -0.04987721  0.05420188 -0.15615482 -0.05002902
                               -0.02971668  0.06759830  0.01294718  0.07693727 -0.07819582  0.03459337  0.09669196 -0.05262115

 21  1     2    1  |1 0>        0.00199013 -0.06436959  0.01083555 -0.11264988 -0.05734000  0.00823564 -0.11083041 -0.02289111
                               -0.01429983 -0.04172303  0.02939681 -0.07948030  0.02347562 -0.01181262 -0.04234786 -0.08170283

 22  1     3    1  |1 0>        0.03462628 -0.05292998  0.03339539 -0.12569529  0.06005429  0.00869964  0.12144561 -0.03120638
                               -0.00277968  0.20145631 -0.07154598  0.11796094  0.04640291 -0.03560617 -0.01676081  0.04696188

 23  1     4    1  |1 0>        0.01819941 -0.03614262  0.03031611 -0.11329822 -0.08914216 -0.12611344  0.04310466 -0.02501429
                               -0.01416665  0.08651334 -0.00715223  0.04258231 -0.05562141  0.02387810  0.02166344 -0.08530271

 24  1     5    1  |1 0>       -0.13382242  0.27961912 -0.09496626  0.09981747 -0.02039153 -0.02845234 -0.00488290  0.02912272
                               -0.05526592  0.18483643 -0.17216471  0.04889006  0.00405139  0.01746904 -0.02618244 -0.08400767

 25  1     6    1  |1 0>       -0.27245057 -0.19488744  0.19106596  0.11390725  0.01106450 -0.03823131  0.01304136  0.03497836
                                0.05419489 -0.25279996  0.16948488  0.43845773 -0.01697136 -0.07501372 -0.04725767  0.02304073

 26  1     7    1  |1 0>        0.62370138  0.05691407  0.01233768  0.05118385 -0.00618485 -0.03991092 -0.00460898  0.00934612
                                0.01052029 -0.15135496  0.06959676  0.22019500  0.00204282  0.00145719 -0.00969596 -0.01551482

 27  1     8    1  |1 0>        0.00059100 -0.12005193 -0.29363952  0.12208428 -0.00173338 -0.01345911 -0.00266746  0.02367966
                                0.00091732  0.30411200  0.52932715 -0.03071533  0.03377612 -0.03276141 -0.01284349  0.01096656

 28  1     9    1  |1 0>       -0.02677897  0.25849078 -0.08112720  0.18658730  0.00253101  0.00935661 -0.00685549 -0.03498125
                               -0.04318732  0.11785376 -0.03044479  0.26257676  0.00971750 -0.02054924 -0.04620824 -0.00563178

 29  1     1    1  |1 1>-       0.00335338  0.01140842  0.10202690 -0.00366266 -0.08039816 -0.03739338  0.03455919 -0.34607821
                               -0.01847347 -0.04524811 -0.07580427 -0.00142842 -0.01324343  0.16472391  0.02034908 -0.10335765

 30  1     2    1  |1 1>-       0.00824049  0.01187413  0.09448804 -0.02718382 -0.38090291 -0.05955464  0.36291736  0.00671420
                               -0.01145946 -0.00713982  0.04575399 -0.05669769 -0.11329219  0.05983301 -0.29167557  0.01177083

 31  1     3    1  |1 1>-       0.03110126  0.03859248  0.04734357 -0.04107672  0.18802744  0.03759138 -0.16505178  0.06414043
                                0.01063840 -0.08755221 -0.15426679  0.05655250 -0.03133745 -0.01846488  0.12483040 -0.03004752

 32  1     4    1  |1 1>-       0.01417692  0.02886384  0.06430363 -0.01784311 -0.04901914 -0.03056909  0.31597749  0.01026758
                               -0.00674103 -0.05060842 -0.07663725  0.01894756  0.34421503 -0.12211072  0.30643461 -0.07514536

 33  1     5    1  |1 1>-       0.09987007 -0.05965532 -0.24601756  0.00912920 -0.09365060  0.11824797  0.06030379  0.42987373
                               -0.05473425 -0.02926059 -0.15242029 -0.01773786 -0.03676552 -0.08710286 -0.07232182  0.18888745

 34  1     6    1  |1 1>-      -0.24920482  0.04049921 -0.00599458 -0.03189162  0.03875967  0.37247503  0.06979951  0.12291175
                               -0.00617255  0.13163357 -0.10933127 -0.19249790 -0.04873659  0.05817695 -0.03398242 -0.40076422

 35  1     7    1  |1 1>-      -0.10101815 -0.14163561  0.14831953  0.13577439  0.02781698  0.33127320  0.08490946  0.05085127
                                0.11606986 -0.27333579  0.23186663  0.36854856  0.03489568  0.12733606  0.00258622  0.05061176

 36  1     8    1  |1 1>-       0.02653442 -0.16109883  0.11119520 -0.23711388  0.03917917  0.01310821  0.01525555 -0.03954782
                               -0.03814967  0.28178857 -0.07912380  0.26538406 -0.35377699  0.06952408  0.03843047 -0.03070994

 37  1     9    1  |1 1>-      -0.00177098 -0.14764002 -0.22133132  0.05084433 -0.09129681 -0.10113980  0.01492203 -0.03818129
                                0.00026965 -0.00611535 -0.12954512  0.07228887  0.08365957  0.28182352  0.10158171 -0.03348327


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00003720  0.00013238  0.00026950  0.00097631  0.00579575  0.99995340  0.00761277 -0.00000442
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00007864 -0.00012216  0.00027020  0.00034916 -0.00542544  0.00003218  0.00607895  0.13694056
                                0.00016636 -0.00021509  0.00087802 -0.00149035  0.00368460 -0.00000954 -0.00786506 -0.14370523

  3  1     3    1  |0 0>        0.00017612 -0.00004136 -0.00007701 -0.00059726 -0.00164889 -0.00002331  0.01345240 -0.24611534
                               -0.00009517 -0.00002255  0.00019715 -0.00026847  0.00064432 -0.00001219  0.00181428 -0.02867700

  4  1     4    1  |0 0>       -0.00003928  0.00006755  0.00028615 -0.00030256 -0.00121198  0.00000317  0.00292493 -0.46694320
                                0.00012644 -0.00018985  0.00034652  0.00058516 -0.00091402 -0.00001798  0.00700955  0.00528404

  5  1     5    1  |0 0>       -0.00025104  0.00012876  0.00019357 -0.00093191 -0.00177670  0.00001712  0.00144366  0.21069094
                               -0.00016434 -0.00011271  0.00009881 -0.00049520 -0.00040438  0.00002401 -0.00495364  0.74590001

  6  1     6    1  |0 0>       -0.00005347  0.00010392 -0.00040325 -0.00030209  0.00393074 -0.00002100 -0.00548659  0.16158003
                               -0.00010262  0.00001444  0.00061513  0.00008687  0.00294032 -0.00012328  0.03111540  0.23285359

  7  1     7    1  |0 0>       -0.00014960 -0.00002377  0.00026455 -0.00034427 -0.00062461 -0.00000949  0.00523927 -0.00405437
                                0.00015253 -0.00021451  0.00021777  0.00062340  0.00003810 -0.00002720  0.00802315  0.00077009

  8  1     8    1  |0 0>       -0.00002276  0.00001532  0.00013516 -0.00036342  0.00356062 -0.00008086  0.01792471  0.00091686
                               -0.00000389 -0.00034462 -0.00025997  0.00019596  0.00045599  0.00000796 -0.00293534  0.00450981

  9  1     9    1  |0 0>        0.00005460  0.00024481 -0.00046086  0.00067706 -0.00196263 -0.00002565  0.01575124  0.00090835
                               -0.00018626  0.00002171  0.00035308  0.00137406  0.00333225 -0.00005378  0.00562493 -0.00031369

 10  1    10    1  |0 0>       -0.00004516  0.00015944  0.00031119  0.00099077  0.00275610  0.00001481 -0.01356592  0.00011116
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.15021101  0.22467043 -0.00270104  0.11845490 -0.08257731 -0.00002493  0.02711527 -0.00028522
                                0.31879783  0.50996257 -0.08031480 -0.06316161  0.04688703 -0.00097225  0.07772191 -0.00052309

 12  1     2    1  |1 1>+       0.04260308 -0.05623052  0.01878899  0.04477346 -0.15955932  0.00152196 -0.10095747 -0.00013019
                               -0.10087616 -0.06337242 -0.05866140 -0.03028882  0.04760293 -0.00079829  0.06624910 -0.00101272

 13  1     3    1  |1 1>+       0.05513356  0.00167856 -0.01758165  0.26759080 -0.17372219  0.00190307 -0.18532550 -0.00062001
                               -0.00684539 -0.01651851 -0.02001570  0.20108477 -0.06897081 -0.00062021  0.08812441 -0.00177475

 14  1     4    1  |1 1>+      -0.16372997 -0.01139590 -0.11608320  0.15427583  0.04836861 -0.00064266  0.02345901  0.00012911
                               -0.05533024  0.06298108  0.28455661  0.14760730  0.04992235 -0.00036503 -0.01168897  0.00036632

 15  1     5    1  |1 1>+      -0.09720661 -0.05299308 -0.10681480 -0.02600727  0.07143486 -0.00083383  0.06710347  0.00021034
                               -0.03780790  0.17054067 -0.16462225  0.00232915  0.01029872 -0.00006091 -0.00188113 -0.00006178

 16  1     6    1  |1 1>+      -0.21514197 -0.00899053 -0.15651553 -0.09414083 -0.04243414  0.00074891 -0.04869112  0.00038809
                               -0.00470600  0.10604374 -0.20186192  0.05209995 -0.07138844  0.00061312 -0.01786052 -0.00016695

 17  1     7    1  |1 1>+      -0.06352102  0.01944780 -0.01010129 -0.05738060  0.00614165  0.00028542 -0.03477384  0.00006801
                               -0.05551408  0.04757560 -0.06250930  0.00184994 -0.02935937  0.00015530  0.00263854 -0.00009510

 18  1     8    1  |1 1>+      -0.07324700  0.03055229 -0.21267815  0.16287560  0.06531989 -0.00104828  0.06999937  0.00014218
                               -0.02810449  0.11120024  0.21449121  0.09256478  0.02802530 -0.00047273  0.02635765  0.00036333

 19  1     9    1  |1 1>+      -0.13315483  0.09313605 -0.19286884 -0.00370417 -0.00888999  0.00153980 -0.19264369  0.00129322
                               -0.08385985 -0.18663107 -0.21819970 -0.07666428  0.02250283  0.00144994 -0.17990389 -0.00042955

 20  1     1    1  |1 0>        0.20067824 -0.05150782  0.14223445 -0.10015071 -0.28349518  0.00217686 -0.06741742  0.00072530
                               -0.05488212  0.21582244 -0.11628321 -0.10773897 -0.12152519 -0.00145849  0.32862172 -0.00008688

 21  1     2    1  |1 0>       -0.14752389 -0.14393381  0.14390391  0.26362831  0.11995282 -0.00393967  0.39208200  0.00027945
                               -0.37916976 -0.15919039  0.04568633 -0.11388939  0.12679841 -0.00091335  0.01338524 -0.00067943

 22  1     3    1  |1 0>       -0.01596788 -0.05165756  0.11631583 -0.21947975  0.16582250 -0.00400199  0.40380758 -0.00012341
                                0.09412938 -0.09394725  0.11756872  0.31961046 -0.35296516  0.00057631  0.16885312  0.00014806

 23  1     4    1  |1 0>        0.35514142  0.04072868 -0.32401169 -0.03264070  0.21654902 -0.00202943  0.10178320 -0.00021072
                               -0.22305629  0.06430677  0.04158565 -0.11041906 -0.26651792  0.00433388 -0.36578268  0.00008930

 24  1     5    1  |1 0>        0.06802162 -0.10844131  0.16921799 -0.20926234  0.29288786 -0.00098842 -0.08940217 -0.00025674
                                0.00669390  0.15347835  0.13724573  0.06487121  0.47166041 -0.00215285 -0.08988611 -0.00014039

 25  1     6    1  |1 0>        0.07925823 -0.09736431  0.04182486 -0.03001215  0.10259742 -0.00017638 -0.05456996 -0.00007071
                                0.01905151 -0.00209120  0.08706412  0.04878969  0.10321311 -0.00053440 -0.01700211 -0.00012975

 26  1     7    1  |1 0>        0.00184627 -0.03417009  0.04819682 -0.05364197  0.09361861 -0.00039109 -0.01921566 -0.00009205
                                0.00610166  0.04648963  0.05483742  0.02006973  0.14460392 -0.00070023 -0.02349944 -0.00007677

 27  1     8    1  |1 0>       -0.00725683 -0.00240218  0.01937141 -0.02837950  0.01786440  0.00003058 -0.01657257 -0.00003423
                               -0.01064177  0.03466539  0.03154659  0.01922854  0.05479215 -0.00013143 -0.02739366 -0.00000356

 28  1     9    1  |1 0>       -0.01162212 -0.01858688 -0.16593638  0.17066285  0.08488829 -0.00104569  0.05448556  0.00033936
                                0.02799246 -0.16286269 -0.07019274 -0.35237620 -0.29524755 -0.00113038  0.39417277  0.00004140

 29  1     1    1  |1 1>-      -0.12941030  0.29049302  0.13564583  0.01390580 -0.02819284  0.00031449 -0.06087260 -0.00042656
                               -0.34791403 -0.08912307 -0.08372171  0.04050368  0.09183119 -0.00069199  0.01330704 -0.00087691

 30  1     2    1  |1 1>-       0.05264946 -0.15428059  0.01725059  0.08114490 -0.06682396 -0.00029191  0.06871864 -0.00017268
                                0.13996874 -0.04935934 -0.03716201  0.04967999  0.06413042 -0.00039639 -0.00109848  0.00023919

 31  1     3    1  |1 1>-       0.15591205 -0.14289314  0.07826965  0.29689161 -0.01100273 -0.00060088  0.01420758 -0.00044981
                                0.11918690 -0.17536171 -0.12420602  0.28573948  0.12780987 -0.00063293 -0.04383722  0.00046815

 32  1     4    1  |1 1>-       0.16572318 -0.07434468  0.24158470 -0.14335099 -0.04713534  0.00096938 -0.07724568 -0.00007676
                                0.04171898  0.01454313 -0.23522025 -0.07512215 -0.00803628  0.00002722  0.01309702 -0.00032081

 33  1     5    1  |1 1>-      -0.03355435  0.29428478  0.14747868 -0.06335869 -0.00121273 -0.00009902  0.00649722 -0.00034824
                               -0.18046530  0.06913057  0.07516826 -0.10405828  0.01334415 -0.00030454  0.03391827 -0.00031595

 34  1     6    1  |1 1>-      -0.05914136  0.04461336 -0.10031462 -0.03220200 -0.02349527 -0.00012599  0.04174584  0.00032279
                                0.05859523  0.09141900 -0.11559838 -0.00727698 -0.01056844  0.00037912 -0.03129783 -0.00007663

 35  1     7    1  |1 1>-       0.03211190  0.04447691  0.01872489  0.03079901  0.01473551 -0.00054901  0.05543243 -0.00009850
                               -0.00601925  0.00480148  0.03745086 -0.03048421  0.03464557 -0.00022466  0.00378341 -0.00002055

 36  1     8    1  |1 1>-       0.06722576 -0.02882988  0.22872372 -0.17248920 -0.05545473  0.00088846 -0.05695684 -0.00024391
                               -0.00566402 -0.07240664 -0.21173959 -0.08450416 -0.03221353  0.00029815 -0.00390569 -0.00037411

 37  1     9    1  |1 1>-       0.01351677  0.16090956 -0.04853810  0.04395692 -0.03659508  0.00009800  0.00531458  0.00080157
                                0.23469940 -0.27438495 -0.09891147 -0.15700447  0.08960371  0.00131442 -0.20271518 -0.00022053


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000747  0.00000517 -0.00002367 -0.00016506  0.00001695 -0.00002313 -0.00012822  0.00007174
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.18923739  0.23891814  0.84412724  0.17298573  0.00012212 -0.00139106  0.00758745 -0.00111091
                                0.11247805 -0.15953571 -0.08617480 -0.28185538  0.00060223 -0.00423488 -0.00546966  0.00116237

  3  1     3    1  |0 0>       -0.52573798 -0.35470644  0.31267284  0.32620285 -0.00186829  0.00174161  0.01756582 -0.00155713
                               -0.28318157  0.46566045 -0.17746003  0.05640452 -0.00039608  0.00025820  0.00190767 -0.00010502

  4  1     4    1  |0 0>       -0.25382271 -0.27222338  0.08201246  0.08801902 -0.00082712  0.00045467  0.00429495 -0.00042456
                                0.57539266 -0.51440218  0.03847410  0.17772176 -0.00017854  0.00034781  0.00979702 -0.00066944

  5  1     5    1  |0 0>       -0.29462726  0.02581848  0.04823509  0.08633369  0.00218866  0.00002554 -0.00333346 -0.00042935
                               -0.31500594 -0.42944493 -0.01501579 -0.13421731  0.00357736 -0.00187022 -0.00496795  0.00032981

  6  1     6    1  |0 0>        0.00834161  0.17935972  0.26889451 -0.28157699  0.00563746 -0.00723797  0.00092767  0.00094921
                                0.11540624  0.13715822 -0.25975067  0.79589912 -0.00293387  0.00649432  0.04015132 -0.00292351

  7  1     7    1  |0 0>        0.00044387  0.00147417 -0.00194401 -0.00858506  0.72533588  0.54050771  0.21308271 -0.00072939
                               -0.00142739 -0.00013870  0.00139366 -0.01619096 -0.26113778  0.08976877  0.24417308 -0.00097953

  8  1     8    1  |0 0>       -0.00291757 -0.00026938  0.00482254 -0.03332885 -0.34820422  0.17823264  0.57100298 -0.00217379
                               -0.00008771 -0.00264160  0.00885898 -0.00273670 -0.10139242  0.67925969 -0.21827626  0.00028857

  9  1     9    1  |0 0>       -0.00063283  0.00151948 -0.00635058 -0.02467979 -0.06061183  0.02943139  0.67711370 -0.00237914
                               -0.00190477 -0.00236895  0.00416741 -0.01189573  0.52001115 -0.45344974  0.24458487 -0.00026055

 10  1    10    1  |0 0>       -0.00018804 -0.00013014  0.00059675  0.00420088 -0.00051371  0.00070179  0.00391572  0.99988578
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020

 11  1     1    1  |1 1>+       0.00026469  0.00005451 -0.00089147 -0.00015867  0.00048946  0.00002794 -0.00206471  0.00018701
                                0.00007472  0.00017693 -0.00072449 -0.00207016  0.00060043 -0.00033772 -0.00237946  0.00074649

 12  1     2    1  |1 1>+       0.00039797  0.00025229 -0.00129795  0.00398108  0.00014007  0.00028920  0.00186669 -0.00121357
                               -0.00003683  0.00032011 -0.00112443 -0.00085521  0.00031795  0.00022848 -0.00259304  0.00071725

 13  1     3    1  |1 1>+       0.00074509  0.00025048 -0.00076081  0.00684881  0.00084854 -0.00031093  0.00331916 -0.00279576
                               -0.00048257  0.00063597 -0.00298384 -0.00141899  0.00030744  0.00034363 -0.00304348  0.00096039

 14  1     4    1  |1 1>+      -0.00011279 -0.00023782  0.00001384 -0.00072819 -0.00042125  0.00025551 -0.00108195 -0.00000983
                               -0.00029892 -0.00010250  0.00019512 -0.00010904 -0.00035316  0.00027362  0.00065306 -0.00044871

 15  1     5    1  |1 1>+       0.00006167 -0.00004436  0.00053044 -0.00198310  0.00024651 -0.00018200 -0.00187740  0.00083945
                                0.00006621 -0.00029382  0.00050783 -0.00048999  0.00040169 -0.00043817  0.00024555 -0.00008799

 16  1     6    1  |1 1>+       0.00052225  0.00013771  0.00036743  0.00155504  0.00007760 -0.00037782  0.00174037 -0.00042638
                                0.00009745  0.00022190 -0.00099675  0.00100574 -0.00010662 -0.00006683  0.00021343  0.00005231

 17  1     7    1  |1 1>+       0.00020286  0.00002573  0.00022880  0.00123566  0.00002619 -0.00008049  0.00109580 -0.00044617
                                0.00000968  0.00009178 -0.00020469 -0.00000770 -0.00001407 -0.00011482 -0.00012851  0.00012768

 18  1     8    1  |1 1>+      -0.00024126 -0.00032334  0.00008304 -0.00222899 -0.00035636  0.00025255 -0.00234449  0.00065301
                                0.00000938 -0.00030162  0.00024544 -0.00167029  0.00001661 -0.00003428 -0.00034050  0.00017951

 19  1     9    1  |1 1>+       0.00010092 -0.00036986  0.00044084  0.00641286 -0.00109863  0.00067978  0.00543761 -0.00260327
                                0.00026194  0.00022049 -0.00111622  0.00772000 -0.00011504  0.00042337  0.00374356 -0.00232061

 20  1     1    1  |1 0>        0.00011847  0.00064438 -0.00259229  0.00286274 -0.00120940  0.00045552  0.00202619 -0.00014486
                               -0.00003293  0.00066161 -0.00223179 -0.00977562  0.00088519 -0.00035271 -0.01006887  0.00531647

 21  1     2    1  |1 0>       -0.00088706 -0.00051691 -0.00047909 -0.01309540  0.00048145 -0.00017491 -0.01238278  0.00485952
                                0.00017691 -0.00085714  0.00236278 -0.00204239  0.00160082 -0.00125392  0.00069545 -0.00036298

 22  1     3    1  |1 0>        0.00052518  0.00046976  0.00126729 -0.01443599  0.00111248 -0.00279615 -0.01126336  0.00506292
                               -0.00038317  0.00018607  0.00012630 -0.00912707  0.00116931 -0.00220226 -0.00208633  0.00322070

 23  1     4    1  |1 0>        0.00028019 -0.00105488  0.00351930 -0.00567723  0.00197405 -0.00146278 -0.00152046  0.00073540
                                0.00090968 -0.00009122 -0.00028502  0.01097607 -0.00068652 -0.00025344  0.01165466 -0.00437440

 24  1     5    1  |1 0>       -0.00012449 -0.00011397 -0.00009168  0.00566482 -0.00063934  0.00177078  0.00019405 -0.00209706
                               -0.00031453 -0.00025384  0.00357880  0.00316291 -0.00007704 -0.00028994  0.00250890 -0.00265543

 25  1     6    1  |1 0>       -0.00004303 -0.00002943  0.00011875  0.00256252 -0.00021300  0.00046903  0.00081181 -0.00104954
                               -0.00013669 -0.00006997  0.00082194  0.00052495  0.00006165 -0.00009362  0.00055131 -0.00058931

 26  1     7    1  |1 0>       -0.00005541 -0.00004567 -0.00003777  0.00147143 -0.00018001  0.00053637 -0.00020433 -0.00054108
                               -0.00010701 -0.00009666  0.00112265  0.00076834  0.00001666 -0.00012163  0.00068976 -0.00077085

 27  1     8    1  |1 0>        0.00001994 -0.00001021 -0.00004521  0.00079267 -0.00006369  0.00015589  0.00027693 -0.00027985
                               -0.00007948 -0.00001914  0.00035456  0.00103188 -0.00011688  0.00010285  0.00070933 -0.00054790

 28  1     9    1  |1 0>       -0.00026974 -0.00042701  0.00026040 -0.00185404 -0.00044104  0.00041084 -0.00182513  0.00038242
                                0.00090704  0.00020712 -0.00181046 -0.01451687  0.00153318 -0.00212968 -0.01047234  0.00629327

 29  1     1    1  |1 1>-       0.00074644  0.00012928 -0.00026015  0.00298682  0.00050912  0.00010456 -0.00006704 -0.00126134
                                0.00016366  0.00065412 -0.00031628  0.00032210  0.00035664 -0.00020918 -0.00021698 -0.00017902

 30  1     2    1  |1 1>-       0.00012278  0.00004760 -0.00049996 -0.00217740  0.00021262 -0.00016189 -0.00256615  0.00090807
                               -0.00002626  0.00009976 -0.00000060  0.00036279  0.00002950 -0.00004176  0.00017932 -0.00023999

 31  1     3    1  |1 1>-       0.00028852  0.00004776  0.00018634  0.00012116  0.00038694 -0.00009734 -0.00215856 -0.00051666
                               -0.00027209  0.00022368 -0.00023273  0.00207725 -0.00022435  0.00008984  0.00171252 -0.00120918

 32  1     4    1  |1 1>-       0.00011593  0.00031111 -0.00011783  0.00274297  0.00029465 -0.00008437  0.00242446 -0.00083551
                               -0.00003219  0.00021458 -0.00007176  0.00025327  0.00004500  0.00004482 -0.00067735  0.00028042

 33  1     5    1  |1 1>-       0.00021752 -0.00018881 -0.00037926  0.00011003  0.00016376  0.00016942 -0.00057611 -0.00001131
                                0.00009401  0.00020734  0.00043521 -0.00117351  0.00021905 -0.00033442 -0.00078061  0.00043909

 34  1     6    1  |1 1>-       0.00019561 -0.00002986  0.00008593 -0.00151293  0.00016833 -0.00025430 -0.00105889  0.00069876
                                0.00019797  0.00003226 -0.00019727  0.00114203  0.00012186 -0.00014633  0.00078452 -0.00031138

 35  1     7    1  |1 1>-      -0.00013163 -0.00008970 -0.00017470 -0.00177855  0.00008317  0.00007320 -0.00176362  0.00068201
                                0.00002963 -0.00012514  0.00047156 -0.00037608  0.00017849 -0.00011098  0.00005010 -0.00005320

 36  1     8    1  |1 1>-       0.00025972  0.00033496 -0.00005459  0.00185524  0.00045505 -0.00029591  0.00194953 -0.00050825
                               -0.00002474  0.00028833 -0.00011156  0.00074440  0.00004568 -0.00007087 -0.00018245  0.00010836

 37  1     9    1  |1 1>-      -0.00030496 -0.00044399 -0.00028066 -0.00061102 -0.00058025  0.00040332 -0.00023306  0.00011002
                                0.00036849  0.00003040 -0.00000224  0.00789224  0.00016292  0.00021829  0.00489510 -0.00275322


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00055346 -0.00035286  0.00033373  0.00011230 -0.00003355 -0.00003689  0.00001314 -0.00003259
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00001768  0.00027970  0.00059726  0.00001809  0.00000198  0.00007406  0.00001385  0.00002801
                               -0.00083703  0.00052040 -0.00043989 -0.00000628 -0.00008301  0.00002706 -0.00003109 -0.00001331

  3  1     3    1  |0 0>       -0.00059147  0.00011343 -0.00054584 -0.00012293 -0.00000312  0.00008768 -0.00007817  0.00002936
                               -0.00013518  0.00036291  0.00001633  0.00004728  0.00010224  0.00013814  0.00005369 -0.00000877

  4  1     4    1  |0 0>        0.00026685 -0.00042357 -0.00054478 -0.00008218 -0.00008999  0.00001603  0.00005863  0.00002136
                               -0.00059467  0.00135214  0.00002267  0.00017721 -0.00000181 -0.00010990  0.00004807 -0.00000391

  5  1     5    1  |0 0>        0.00234860  0.00100167  0.00008490  0.00002825 -0.00010391  0.00006422  0.00004201  0.00003228
                                0.00191589  0.00034169  0.00054960 -0.00000392  0.00020310  0.00007283 -0.00007130 -0.00002273

  6  1     6    1  |0 0>        0.00048591  0.00162042  0.00019316  0.00015022  0.00005569  0.00005038 -0.00002267  0.00000605
                               -0.00123185 -0.00005539 -0.00005033  0.00019101  0.00002943 -0.00005449 -0.00002202  0.00005665

  7  1     7    1  |0 0>       -0.00091203 -0.00037556 -0.00009665 -0.00020711 -0.00026701 -0.00000414 -0.00001515 -0.00002705
                                0.00172903  0.00123757 -0.00010403  0.00024552 -0.00000516 -0.00015720 -0.00001111  0.00002802

  8  1     8    1  |0 0>        0.00390187  0.00049309  0.00048368 -0.00029542  0.00002557 -0.00000457 -0.00002319  0.00002260
                                0.00172761  0.00041282  0.00012748  0.00030172 -0.00009678  0.00011355  0.00000731 -0.00001607

  9  1     9    1  |0 0>        0.00088753 -0.00063444  0.00087470  0.00014053 -0.00008337 -0.00001819 -0.00003774 -0.00004632
                                0.00007272 -0.00061049  0.00045886  0.00020782  0.00001873  0.00000720 -0.00001638 -0.00004805

 10  1    10    1  |0 0>        0.00099437 -0.00052692  0.00048048  0.00014965 -0.00004382 -0.00004750  0.00001676 -0.00004155
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.22488928 -0.03553313  0.11182674 -0.26676576  0.21972436 -0.28391136 -0.04966850 -0.01387409
                                0.14886463 -0.00448237  0.00726820  0.31286789 -0.05873503  0.05429917  0.06280921 -0.06680791

 12  1     2    1  |1 1>+       0.18908504  0.07450822  0.03794203  0.17862297 -0.10352904  0.02554460 -0.28910878  0.00778990
                                0.10657545  0.07834734  0.16556096 -0.19042402 -0.10524188  0.01203461  0.29761917  0.08640258

 13  1     3    1  |1 1>+       0.45066908  0.11358047  0.12076236  0.08013640 -0.14803052  0.03247235  0.16328484  0.00928490
                                0.12673658  0.11268637  0.44760007 -0.17278509 -0.03626830  0.05669305 -0.17117113  0.08000423

 14  1     4    1  |1 1>+      -0.02529990 -0.11712181  0.01436206  0.15247981 -0.05331661  0.01560143  0.36692401  0.18283959
                               -0.00547630  0.04013674 -0.14994826 -0.00326093  0.04869150  0.05812666  0.26476259 -0.07278555

 15  1     5    1  |1 1>+       0.00591693 -0.03659782 -0.13221928 -0.06520041  0.16688998  0.13550532  0.08248709  0.09101594
                                0.03627761  0.04072938  0.07302277  0.16283187  0.01796787 -0.21580596 -0.04163801  0.44408812

 16  1     6    1  |1 1>+       0.03268587 -0.09512439 -0.12290857 -0.07178406  0.05217687  0.30526573 -0.10422850  0.20941016
                               -0.01208413  0.15400807  0.01505031  0.06418465  0.12456766  0.32703996 -0.05758315 -0.12083940

 17  1     7    1  |1 1>+       0.02319436 -0.01766547 -0.04965051 -0.02729095  0.04166178  0.15004799 -0.05891170  0.29202631
                               -0.01256515  0.02710455  0.01535724  0.06930597  0.01194478 -0.09777406 -0.06881564 -0.06176204

 18  1     8    1  |1 1>+      -0.03618088 -0.09433022 -0.02552290  0.14166437  0.01908916  0.01100106  0.00932182 -0.02270403
                                0.04828592  0.02017927 -0.18325962 -0.11782750  0.08614254 -0.00697547  0.01400408  0.08596714

 19  1     9    1  |1 1>+      -0.11230424 -0.10531277  0.15159948 -0.10068802 -0.04684247  0.00242343 -0.03873630 -0.11720331
                                0.15953550  0.45218775 -0.02373232 -0.04217857  0.07932373 -0.20907470  0.09443863 -0.26752664

 20  1     1    1  |1 0>       -0.06516909 -0.07359813  0.12826753  0.29924742  0.28195731 -0.03320554  0.05394785  0.05087230
                                0.04690060  0.35240786 -0.32810199 -0.21110726 -0.08261968 -0.02573721 -0.02918376  0.04475762

 21  1     2    1  |1 0>       -0.07360646  0.15041576  0.20093453  0.06115331  0.18328040  0.05385103  0.06040489  0.00346964
                                0.26777181  0.14462199  0.13198597  0.33308009 -0.25016753  0.12869817  0.01898588 -0.07710047

 22  1     3    1  |1 0>        0.17142902 -0.07034928  0.12066570 -0.13548403 -0.22363472 -0.00339477 -0.09248746 -0.03723318
                               -0.12868750  0.29068667  0.04336441  0.14381576  0.11843995 -0.06330215 -0.02149961  0.01321278

 23  1     4    1  |1 0>        0.19374446 -0.01995181  0.09522020 -0.15191602  0.37854246 -0.10160939 -0.01654272 -0.06945404
                                0.05307069 -0.13094463  0.11136963 -0.25435675  0.04424167  0.01921607  0.05729039 -0.07998998

 24  1     5    1  |1 0>        0.05228767 -0.14454673  0.17634539  0.15133480  0.14211597 -0.01936226 -0.09072826 -0.02162056
                                0.02308484  0.17673602  0.12393626 -0.03663663 -0.01503410  0.01437048 -0.02748047  0.01138133

 25  1     6    1  |1 0>        0.01514758  0.00436231  0.06291930  0.00628712  0.08070593 -0.01540017 -0.02650589 -0.01678946
                                0.01208174  0.06535359  0.03378291  0.06898242  0.09384963  0.06110485 -0.00945977  0.09082550

 26  1     7    1  |1 0>        0.01635129 -0.03296365  0.05400556  0.03618090  0.03734785 -0.00443984 -0.02160638 -0.03689725
                                0.01001652  0.05462513  0.05329627 -0.01467090 -0.00292322  0.01432631 -0.00036867  0.01694285

 27  1     8    1  |1 0>        0.00831675 -0.01475258  0.01944190 -0.00122665  0.02313938  0.01360544 -0.01448412 -0.01933423
                               -0.01139301  0.02382261  0.00272306  0.00521821 -0.01344474 -0.00781039  0.00075131 -0.01436758

 28  1     9    1  |1 0>       -0.04075671 -0.13141226 -0.00743096  0.05490074 -0.02272333  0.05198198  0.05126119  0.04834449
                                0.25499173 -0.18105102  0.02470266  0.05129082  0.01689087 -0.00752458  0.10052679 -0.01949024

 29  1     1    1  |1 1>-       0.37943598 -0.10443844 -0.10595040  0.15599358 -0.04200459 -0.19501451 -0.04574751  0.05842701
                                0.15028756 -0.03064227 -0.11897434  0.11176700  0.46933680  0.00306891  0.03280263  0.04630945

 30  1     2    1  |1 1>-       0.13160903 -0.14914037  0.01313683 -0.07515308  0.01463383  0.09028886 -0.24777361  0.12949955
                                0.06764163 -0.05319691 -0.16672399 -0.04162947 -0.23414439 -0.03977029  0.31437464  0.11202790

 31  1     3    1  |1 1>-       0.31952989 -0.33766270 -0.03379406 -0.17220227  0.08530509  0.17069267  0.08539244 -0.09140236
                                0.11076163 -0.11876763 -0.30969318 -0.00003216 -0.17635323 -0.10297065 -0.13023184 -0.14750635

 32  1     4    1  |1 1>-       0.03306949  0.07182873  0.00601294 -0.06082118  0.08247216  0.05781775  0.36138952  0.02191232
                               -0.05389011 -0.03206082  0.17563143  0.07852823  0.01286536 -0.00954418  0.34536837 -0.07862207

 33  1     5    1  |1 1>-       0.09573216  0.07866055  0.06494885 -0.02406542  0.10507450  0.38091573 -0.05064599 -0.11353007
                                0.03524703 -0.06208584 -0.09958422  0.05793922  0.18970085 -0.32001220  0.05654420 -0.07944764

 34  1     6    1  |1 1>-       0.01297136 -0.05173179 -0.06494935 -0.06281010  0.00928317  0.19291741  0.02712930 -0.36298767
                                0.04579385  0.09335919 -0.03606433  0.03634966  0.09598867  0.36606213  0.08935892  0.13585861

 35  1     7    1  |1 1>-       0.00355372  0.03159520  0.02961734  0.00685276  0.03371352  0.01619377  0.06220173 -0.29778331
                                0.03197446 -0.02839359 -0.02066812 -0.01744775  0.03612859 -0.06548916  0.07007277  0.15964122

 36  1     8    1  |1 1>-       0.05317268  0.10380215 -0.00784505 -0.12412483  0.01073514  0.04600540  0.01743389  0.01365777
                               -0.05360147 -0.05620688  0.18707786  0.12971268 -0.07532767 -0.03480613 -0.02352203 -0.06225851

 37  1     9    1  |1 1>-      -0.12170720 -0.03347278  0.31306221 -0.26005251 -0.11482840 -0.06223564  0.11245604  0.15929677
                                0.18307517  0.28882993 -0.09409255 -0.08244250  0.05332812  0.03968138 -0.03581314  0.27252313


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00002100 -0.00000615  0.00000347 -0.00000582 -0.00000330
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000508 -0.00000690  0.00000497 -0.00000252  0.00000118
                                0.00000066  0.00000423  0.00000477 -0.00000475  0.00000170

  3  1     3    1  |0 0>        0.00004996 -0.00000215 -0.00000122  0.00000179 -0.00000355
                               -0.00001497  0.00000769  0.00000019  0.00000316 -0.00000052

  4  1     4    1  |0 0>        0.00002605  0.00000407 -0.00000119 -0.00000009 -0.00000093
                                0.00004689 -0.00000490  0.00000225  0.00000563  0.00000412

  5  1     5    1  |0 0>       -0.00005705 -0.00000267 -0.00000063 -0.00000028  0.00000057
                                0.00001968  0.00000242 -0.00000418 -0.00000317 -0.00000013

  6  1     6    1  |0 0>       -0.00000522  0.00000741 -0.00000025  0.00000576  0.00000008
                               -0.00000757  0.00000043  0.00000024 -0.00000182 -0.00000235

  7  1     7    1  |0 0>       -0.00000058  0.00000225 -0.00000072 -0.00000246 -0.00000026
                               -0.00002352  0.00000225  0.00000588  0.00000041 -0.00000502

  8  1     8    1  |0 0>        0.00002729  0.00000214 -0.00000431 -0.00000229  0.00000057
                               -0.00001322  0.00000294  0.00000438  0.00000116 -0.00000075

  9  1     9    1  |0 0>       -0.00002220  0.00000086  0.00000088  0.00000061 -0.00000026
                                0.00000200  0.00000205 -0.00000392  0.00000649  0.00000175

 10  1    10    1  |0 0>        0.00002672 -0.00000778  0.00000440 -0.00000736 -0.00000417
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.09243620 -0.04722763 -0.10218423 -0.04949714  0.02098444
                                0.01248759  0.03652304 -0.06579048 -0.03444714 -0.01308131

 12  1     2    1  |1 1>+       0.41586121 -0.06849121  0.03546141 -0.01001205  0.00250091
                               -0.09477757  0.01842605 -0.09227275 -0.01479482 -0.01410977

 13  1     3    1  |1 1>+      -0.15048322  0.04111836 -0.15913738 -0.08233236  0.02849901
                                0.08134298  0.05429642  0.00295032 -0.03713261  0.01383302

 14  1     4    1  |1 1>+       0.17949509 -0.00780525 -0.05803547 -0.04580681  0.01852271
                                0.32755848  0.04273978 -0.02631784 -0.01321644 -0.00582575

 15  1     5    1  |1 1>+       0.14457742  0.17548536 -0.01820871 -0.09034999 -0.09842098
                               -0.02781599  0.00547446  0.18183564  0.12422157 -0.05571814

 16  1     6    1  |1 1>+      -0.00160556 -0.15509497 -0.07515106  0.13377713 -0.25228594
                               -0.01798250  0.13133574  0.04645634 -0.00525688 -0.02821799

 17  1     7    1  |1 1>+       0.02162011 -0.01737968  0.03233767  0.13376318  0.56810079
                               -0.09153248  0.02908885  0.04016783 -0.04364141  0.04674926

 18  1     8    1  |1 1>+      -0.07358109 -0.26972586 -0.01009412 -0.24250469  0.01100911
                               -0.30819074 -0.14029292  0.19800339 -0.24781394  0.04420815

 19  1     9    1  |1 1>+      -0.03152366  0.06467705 -0.08935509 -0.07574679  0.00084546
                               -0.01415531 -0.06703122  0.21495811  0.16237962 -0.03070666

 20  1     1    1  |1 0>       -0.00605245  0.10122789  0.03218149  0.04383687  0.02440942
                                0.04941327  0.15414413 -0.07597028  0.07232291 -0.02862021

 21  1     2    1  |1 0>       -0.00538222 -0.05486198  0.06621205 -0.04737338  0.00681473
                               -0.04626966  0.12112679 -0.01296288  0.03684117 -0.01376043

 22  1     3    1  |1 0>        0.03349912  0.13364169 -0.07480325  0.15344477  0.02954916
                               -0.03496866  0.09137809 -0.09938526  0.11718898  0.00495481

 23  1     4    1  |1 0>        0.09644203  0.05652779 -0.00348141  0.06595653  0.01948812
                                0.03975176  0.09061763 -0.07057043  0.05707696 -0.00979809

 24  1     5    1  |1 0>       -0.02623847  0.02092286 -0.24329657  0.25807693 -0.12594297
                                0.01091867 -0.07308473  0.11360615 -0.15896352 -0.05044676

 25  1     6    1  |1 0>        0.00788839  0.39569676  0.13699904 -0.34927912 -0.27309034
                               -0.00003217 -0.17253840 -0.19990205 -0.01279029 -0.02420478

 26  1     7    1  |1 0>       -0.01587411  0.16335658  0.02041609 -0.11285957  0.62575719
                                0.00074583 -0.16139795 -0.03835804 -0.06591880  0.07057049

 27  1     8    1  |1 0>       -0.02863314  0.05119505  0.54674180  0.32538709 -0.01280423
                               -0.02827898 -0.22850263  0.11464171  0.14698408 -0.00196528

 28  1     9    1  |1 0>        0.00859136  0.21349110 -0.13597893  0.18830016 -0.01893648
                                0.00707939 -0.22450798  0.06346322 -0.19065489 -0.04367954

 29  1     1    1  |1 1>-      -0.09963977  0.02200189  0.11472738  0.05233986 -0.00647771
                               -0.01282803 -0.03095705  0.06734925  0.04073336  0.02202511

 30  1     2    1  |1 1>-      -0.39655170  0.02611706  0.01665741 -0.03978274 -0.00328639
                                0.14713716  0.05517719  0.07943510  0.04944093  0.00897848

 31  1     3    1  |1 1>-       0.15089681 -0.00576179  0.13343609  0.10171574 -0.03382706
                               -0.10728947 -0.08454616  0.00856084  0.02021370 -0.01917262

 32  1     4    1  |1 1>-      -0.11951250 -0.00432270  0.07275222  0.03943396 -0.01746231
                               -0.35452848 -0.00417392  0.02316092  0.02448237  0.00033345

 33  1     5    1  |1 1>-      -0.04580616  0.00307409  0.06108287 -0.01058043 -0.10142417
                                0.06888814  0.01778401 -0.26375828 -0.13894340  0.02342801

 34  1     6    1  |1 1>-      -0.00898855  0.15768058  0.07264798 -0.12818332  0.25197557
                                0.04734037 -0.13167951 -0.04119577 -0.00190075  0.02388813

 35  1     7    1  |1 1>-       0.00986146 -0.34740837 -0.18219980  0.34815075  0.09665802
                                0.10372522  0.18011720  0.16404155  0.10146655  0.02511814

 36  1     8    1  |1 1>-       0.08293889 -0.24233967  0.09560836 -0.14494545 -0.02712856
                                0.31019873 -0.21327326  0.24994111 -0.23570484  0.04526002

 37  1     9    1  |1 1>-       0.02891646 -0.10935355  0.05509212  0.05617487 -0.00780399
                                0.01460543 -0.03588362 -0.21576576 -0.13235640  0.08300502



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.08%    0.31%    1.22%    0.01%    0.66%    2.96%    0.40%    3.53%
 12  1     2    1  |1 1>+         0.01%    0.42%    0.90%    0.12%   20.87%    1.46%   13.71%    0.14%
 13  1     3    1  |1 1>+         0.11%    1.04%    2.59%    0.39%    4.34%    0.29%    2.55%    3.93%
 14  1     4    1  |1 1>+         0.02%    0.22%    1.10%    0.09%    7.99%    1.53%   24.14%    0.72%
 15  1     5    1  |1 1>+         1.03%    3.51%    3.31%    1.96%    0.97%   22.19%    1.14%    7.98%
 16  1     6    1  |1 1>+         6.18%    1.87%    1.26%    4.22%    0.29%    5.41%    1.00%   17.21%
 17  1     7    1  |1 1>+        32.58%    1.34%    0.35%    0.27%    0.26%   10.19%    0.40%    2.83%
 18  1     8    1  |1 1>+         0.19%   14.22%    0.83%    9.79%   12.36%    0.17%    0.40%    1.22%
 19  1     9    1  |1 1>+         0.21%    1.47%    7.34%    0.47%    1.14%    8.67%    0.26%    4.11%
 20  1     1    1  |1 0>          0.12%    0.96%    0.08%    3.82%    0.86%    0.41%    3.37%    0.53%
 21  1     2    1  |1 0>          0.02%    0.59%    0.10%    1.90%    0.38%    0.02%    1.41%    0.72%
 22  1     3    1  |1 0>          0.12%    4.34%    0.62%    2.97%    0.58%    0.13%    1.50%    0.32%
 23  1     4    1  |1 0>          0.05%    0.88%    0.10%    1.46%    1.10%    1.65%    0.23%    0.79%
 24  1     5    1  |1 0>          2.10%   11.24%    3.87%    1.24%    0.04%    0.11%    0.07%    0.79%
 25  1     6    1  |1 0>          7.72%   10.19%    6.52%   20.52%    0.04%    0.71%    0.24%    0.18%
 26  1     7    1  |1 0>         38.91%    2.61%    0.50%    5.11%    0.00%    0.16%    0.01%    0.03%
 27  1     8    1  |1 0>          0.00%   10.69%   36.64%    1.58%    0.11%    0.13%    0.02%    0.07%
 28  1     9    1  |1 0>          0.26%    8.07%    0.75%   10.38%    0.01%    0.05%    0.22%    0.13%
 29  1     1    1  |1 1>-         0.04%    0.22%    1.62%    0.00%    0.66%    2.85%    0.16%   13.05%
 30  1     2    1  |1 1>-         0.02%    0.02%    1.10%    0.40%   15.79%    0.71%   21.68%    0.02%
 31  1     3    1  |1 1>-         0.11%    0.92%    2.60%    0.49%    3.63%    0.18%    4.28%    0.50%
 32  1     4    1  |1 1>-         0.02%    0.34%    1.00%    0.07%   12.09%    1.58%   19.37%    0.58%
 33  1     5    1  |1 1>-         1.30%    0.44%    8.38%    0.04%    1.01%    2.16%    0.89%   22.05%
 34  1     6    1  |1 1>-         6.21%    1.90%    1.20%    3.81%    0.39%   14.21%    0.60%   17.57%
 35  1     7    1  |1 1>-         2.37%    9.48%    7.58%   15.43%    0.20%   12.60%    0.72%    0.51%
 36  1     8    1  |1 1>-         0.22%   10.54%    1.86%   12.67%   12.67%    0.50%    0.17%    0.25%
 37  1     9    1  |1 1>-         0.00%    2.18%    6.58%    0.78%    1.53%    8.97%    1.05%    0.26%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.99%    0.01%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    3.94%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    6.14%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   21.81%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.08%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    8.03%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 11  1     1    1  |1 1>+        12.42%   31.05%    0.65%    1.80%    0.90%    0.00%    0.68%    0.00%
 12  1     2    1  |1 1>+         1.20%    0.72%    0.38%    0.29%    2.77%    0.00%    1.46%    0.00%
 13  1     3    1  |1 1>+         0.31%    0.03%    0.07%   11.20%    3.49%    0.00%    4.21%    0.00%
 14  1     4    1  |1 1>+         2.99%    0.41%    9.44%    4.56%    0.48%    0.00%    0.07%    0.00%
 15  1     5    1  |1 1>+         1.09%    3.19%    3.85%    0.07%    0.52%    0.00%    0.45%    0.00%
 16  1     6    1  |1 1>+         4.63%    1.13%    6.52%    1.16%    0.69%    0.00%    0.27%    0.00%
 17  1     7    1  |1 1>+         0.71%    0.26%    0.40%    0.33%    0.09%    0.00%    0.12%    0.00%
 18  1     8    1  |1 1>+         0.62%    1.33%    9.12%    3.51%    0.51%    0.00%    0.56%    0.00%
 19  1     9    1  |1 1>+         2.48%    4.35%    8.48%    0.59%    0.06%    0.00%    6.95%    0.00%
 20  1     1    1  |1 0>          4.33%    4.92%    3.38%    2.16%    9.51%    0.00%   11.25%    0.00%
 21  1     2    1  |1 0>         16.55%    4.61%    2.28%    8.25%    3.05%    0.00%   15.39%    0.00%
 22  1     3    1  |1 0>          0.91%    1.15%    2.74%   15.03%   15.21%    0.00%   19.16%    0.00%
 23  1     4    1  |1 0>         17.59%    0.58%   10.67%    1.33%   11.79%    0.00%   14.42%    0.00%
 24  1     5    1  |1 0>          0.47%    3.53%    4.75%    4.80%   30.82%    0.00%    1.61%    0.00%
 25  1     6    1  |1 0>          0.66%    0.95%    0.93%    0.33%    2.12%    0.00%    0.33%    0.00%
 26  1     7    1  |1 0>          0.00%    0.33%    0.53%    0.33%    2.97%    0.00%    0.09%    0.00%
 27  1     8    1  |1 0>          0.02%    0.12%    0.14%    0.12%    0.33%    0.00%    0.10%    0.00%
 28  1     9    1  |1 0>          0.09%    2.69%    3.25%   15.33%    9.44%    0.00%   15.83%    0.00%
 29  1     1    1  |1 1>-        13.78%    9.23%    2.54%    0.18%    0.92%    0.00%    0.39%    0.00%
 30  1     2    1  |1 1>-         2.24%    2.62%    0.17%    0.91%    0.86%    0.00%    0.47%    0.00%
 31  1     3    1  |1 1>-         3.85%    5.12%    2.16%   16.98%    1.65%    0.00%    0.21%    0.00%
 32  1     4    1  |1 1>-         2.92%    0.57%   11.37%    2.62%    0.23%    0.00%    0.61%    0.00%
 33  1     5    1  |1 1>-         3.37%    9.14%    2.74%    1.48%    0.02%    0.00%    0.12%    0.00%
 34  1     6    1  |1 1>-         0.69%    1.03%    2.34%    0.11%    0.07%    0.00%    0.27%    0.00%
 35  1     7    1  |1 1>-         0.11%    0.20%    0.18%    0.19%    0.14%    0.00%    0.31%    0.00%
 36  1     8    1  |1 1>-         0.46%    0.61%    9.71%    3.69%    0.41%    0.00%    0.33%    0.00%
 37  1     9    1  |1 1>-         5.53%   10.12%    1.21%    2.66%    0.94%    0.00%    4.11%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          4.85%    8.25%   72.00%   10.94%    0.00%    0.00%    0.01%    0.00%
  3  1     3    1  |0 0>         35.66%   34.27%   12.93%   10.96%    0.00%    0.00%    0.03%    0.00%
  4  1     4    1  |0 0>         39.55%   33.87%    0.82%    3.93%    0.00%    0.00%    0.01%    0.00%
  5  1     5    1  |0 0>         18.60%   18.51%    0.26%    2.55%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          1.34%    5.10%   13.98%   71.27%    0.00%    0.01%    0.16%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.03%   59.43%   30.02%   10.50%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.01%    0.11%   13.15%   49.32%   37.37%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.01%    0.08%   27.41%   20.65%   51.83%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.98%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.02%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.01%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         7.27%    0.13%    1.26%   16.91%    5.17%    8.36%    0.64%    0.47%
 12  1     2    1  |1 1>+         4.71%    1.17%    2.89%    6.82%    2.18%    0.08%   17.22%    0.75%
 13  1     3    1  |1 1>+        21.92%    2.56%   21.49%    3.63%    2.32%    0.43%    5.60%    0.65%
 14  1     4    1  |1 1>+         0.07%    1.53%    2.27%    2.33%    0.52%    0.36%   20.47%    3.87%
 15  1     5    1  |1 1>+         0.14%    0.30%    2.28%    3.08%    2.82%    6.49%    0.85%   20.55%
 16  1     6    1  |1 1>+         0.12%    3.28%    1.53%    0.93%    1.82%   20.01%    1.42%    5.85%
 17  1     7    1  |1 1>+         0.07%    0.10%    0.27%    0.55%    0.19%    3.21%    0.82%    8.91%
 18  1     8    1  |1 1>+         0.36%    0.93%    3.42%    3.40%    0.78%    0.02%    0.03%    0.79%
 19  1     9    1  |1 1>+         3.81%   21.56%    2.35%    1.19%    0.85%    4.37%    1.04%    8.53%
 20  1     1    1  |1 0>          0.64%   12.96%   12.41%   13.41%    8.63%    0.18%    0.38%    0.46%
 21  1     2    1  |1 0>          7.71%    4.35%    5.78%   11.47%    9.62%    1.95%    0.40%    0.60%
 22  1     3    1  |1 0>          4.59%    8.94%    1.64%    3.90%    6.40%    0.40%    0.90%    0.16%
 23  1     4    1  |1 0>          4.04%    1.75%    2.15%    8.78%   14.53%    1.07%    0.36%    1.12%
 24  1     5    1  |1 0>          0.33%    5.21%    4.65%    2.42%    2.04%    0.06%    0.90%    0.06%
 25  1     6    1  |1 0>          0.04%    0.43%    0.51%    0.48%    1.53%    0.40%    0.08%    0.85%
 26  1     7    1  |1 0>          0.04%    0.41%    0.58%    0.15%    0.14%    0.02%    0.05%    0.16%
 27  1     8    1  |1 0>          0.02%    0.08%    0.04%    0.00%    0.07%    0.02%    0.02%    0.06%
 28  1     9    1  |1 0>          6.67%    5.00%    0.07%    0.56%    0.08%    0.28%    1.27%    0.27%
 29  1     1    1  |1 1>-        16.66%    1.18%    2.54%    3.68%   22.20%    3.80%    0.32%    0.56%
 30  1     2    1  |1 1>-         2.19%    2.51%    2.80%    0.74%    5.50%    0.97%   16.02%    2.93%
 31  1     3    1  |1 1>-        11.44%   12.81%    9.71%    2.97%    3.84%    3.97%    2.43%    3.01%
 32  1     4    1  |1 1>-         0.40%    0.62%    3.09%    0.99%    0.70%    0.34%   24.99%    0.67%
 33  1     5    1  |1 1>-         1.04%    1.00%    1.41%    0.39%    4.70%   24.75%    0.58%    1.92%
 34  1     6    1  |1 1>-         0.23%    1.14%    0.55%    0.53%    0.93%   17.12%    0.87%   15.02%
 35  1     7    1  |1 1>-         0.10%    0.18%    0.13%    0.04%    0.24%    0.46%    0.88%   11.42%
 36  1     8    1  |1 1>-         0.57%    1.39%    3.51%    3.22%    0.58%    0.33%    0.09%    0.41%
 37  1     9    1  |1 1>-         4.83%    8.45%   10.69%    7.44%    1.60%    0.54%    1.39%    9.96%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.87%    0.36%    1.48%    0.36%    0.06%
 12  1     2    1  |1 1>+        18.19%    0.50%    0.98%    0.03%    0.02%
 13  1     3    1  |1 1>+         2.93%    0.46%    2.53%    0.82%    0.10%
 14  1     4    1  |1 1>+        13.95%    0.19%    0.41%    0.23%    0.04%
 15  1     5    1  |1 1>+         2.17%    3.08%    3.34%    2.36%    1.28%
 16  1     6    1  |1 1>+         0.03%    4.13%    0.78%    1.79%    6.44%
 17  1     7    1  |1 1>+         0.88%    0.11%    0.27%    1.98%   32.49%
 18  1     8    1  |1 1>+        10.04%    9.24%    3.93%   12.02%    0.21%
 19  1     9    1  |1 1>+         0.12%    0.87%    5.42%    3.21%    0.09%
 20  1     1    1  |1 0>          0.25%    3.40%    0.68%    0.72%    0.14%
 21  1     2    1  |1 0>          0.22%    1.77%    0.46%    0.36%    0.02%
 22  1     3    1  |1 0>          0.23%    2.62%    1.55%    3.73%    0.09%
 23  1     4    1  |1 0>          1.09%    1.14%    0.50%    0.76%    0.05%
 24  1     5    1  |1 0>          0.08%    0.58%    7.21%    9.19%    1.84%
 25  1     6    1  |1 0>          0.01%   18.63%    5.87%   12.22%    7.52%
 26  1     7    1  |1 0>          0.03%    5.27%    0.19%    1.71%   39.66%
 27  1     8    1  |1 0>          0.16%    5.48%   31.21%   12.75%    0.02%
 28  1     9    1  |1 0>          0.01%    9.60%    2.25%    7.18%    0.23%
 29  1     1    1  |1 1>-         1.01%    0.14%    1.77%    0.44%    0.05%
 30  1     2    1  |1 1>-        17.89%    0.37%    0.66%    0.40%    0.01%
 31  1     3    1  |1 1>-         3.43%    0.72%    1.79%    1.08%    0.15%
 32  1     4    1  |1 1>-        14.00%    0.00%    0.58%    0.22%    0.03%
 33  1     5    1  |1 1>-         0.68%    0.03%    7.33%    1.94%    1.08%
 34  1     6    1  |1 1>-         0.23%    4.22%    0.70%    1.64%    6.41%
 35  1     7    1  |1 1>-         1.09%   15.31%    6.01%   13.15%    1.00%
 36  1     8    1  |1 1>-        10.31%   10.42%    7.16%    7.66%    0.28%
 37  1     9    1  |1 1>-         0.10%    1.32%    4.96%    2.07%    0.70%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.62       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2833.88       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *   1387828.641354150.58      6.09  19990.33  13675.97      4.37      0.05      1.02
 REAL TIME  *   1393668.40 SEC
 DISK USED  *         2.81 GB (local),       34.16 GB (total)
 SF USED    *        17.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -1970.470265008285

              CI              CI           MULTI         RHF-SCF
  -2788.71684959  -2788.69645598  -2787.87022006  -2787.14839330
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
