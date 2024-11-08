
 Working directory              : /wrk/irikura/molpro.Lk44fRKWX4/
 Global scratch directory       : /wrk/irikura/molpro.Lk44fRKWX4/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Lk44fRKWX4/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/8)
                                                                                 ! extra diffuse spdf
 memory,4000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Kr};
 
 basis={spdfg,kr,AWCVTZ-X2C;C; spdf,1,even,nprim=1,ratio=3.0}
 
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 05-Aug-24          TIME: 10:27:30  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  56000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry KR     S AWCVTZ-X2C           selected for orbital group  1
 Even tempered Kr S diffuse               selected for group 1    nprim= 1    centre=  0.017    ratio= 3.000    dratio= 1.000
 Library entry KR     P AWCVTZ-X2C           selected for orbital group  1
 Even tempered Kr P diffuse               selected for group 1    nprim= 1    centre=  0.013    ratio= 3.000    dratio= 1.000
 Library entry KR     D AWCVTZ-X2C           selected for orbital group  1
 Even tempered Kr D diffuse               selected for group 1    nprim= 1    centre=  0.042    ratio= 3.000    dratio= 1.000
 Library entry KR     F AWCVTZ-X2C           selected for orbital group  1
 Even tempered Kr F diffuse               selected for group 1    nprim= 1    centre=  0.109    ratio= 3.000    dratio= 1.000
 Library entry KR     G AWCVTZ-X2C           selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         218
 NUMBER OF SYMMETRY AOS:          184
 NUMBER OF CONTRACTIONS:          116   (   54Ag  +   62Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     28.312 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 1.049 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     834859.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     834859      RECORD LENGTH: 524288

 Memory used in sort:       1.39 MW

 SORT1 READ    23841670. AND WROTE      173335. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC
 SORT2 READ     2334873. AND WROTE    11712051. INTEGRALS IN     70 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      833389.  Node maximum:      839561. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.896E-04 0.208E-02 0.141E-01 0.377E-01 0.377E-01 0.377E-01 0.377E-01 0.377E-01
         2 0.291E-02 0.291E-02 0.291E-02 0.115E-01 0.115E-01 0.115E-01 0.657E-01 0.657E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.48      1.28
 REAL TIME  *         3.06 SEC
 DISK USED  *        29.56 MB (local),      483.57 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   8   9

 NELEC=   35   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2787.10631280   -2787.10631280     0.00D+00     0.14D+00     0     0       0.01      0.02    start
   2    -2787.14744263      -0.04112983     0.12D-01     0.10D-01     1     0       0.01      0.03    diag2
   3    -2787.14835220      -0.00090958     0.32D-02     0.22D-02     2     0       0.01      0.04    diag2
   4    -2787.14842922      -0.00007702     0.47D-03     0.92D-03     3     0       0.00      0.04    diag2
   5    -2787.14843600      -0.00000678     0.19D-03     0.17D-03     4     0       0.01      0.05    diag2
   6    -2787.14843609      -0.00000008     0.95D-05     0.17D-04     5     0       0.01      0.06    diag2
   7    -2787.14843609      -0.00000000     0.12D-05     0.28D-05     6     0       0.01      0.07    diag2
   8    -2787.14843609      -0.00000000     0.58D-07     0.17D-06     0     0       0.00      0.07    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.148436087695
  RHF One-electron energy           -3858.448225732899
  RHF Two-electron energy            1071.299789645204
  RHF Kinetic energy                 2992.657328216175
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.931328959654

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.89691     1  1  s    0.99998
    2.1     2.00000   -72.56316     1  2  s    0.99979
    3.1     2.00000   -11.72373     1  3  s    0.99731
    4.1     2.00000    -4.26020     1  1  d0   1.00119
    5.1     2.00000    -4.26020     1  1  d1+  0.31947    1  1  d1-  0.94859
    6.1     2.00000    -4.26020     1  1  d1+  0.94887    1  1  d1- -0.31947
    7.1     2.00000    -4.26020     1  1  d2-  1.00089
    8.1     2.00000    -4.26020     1  1  d2+  1.00115
    9.1     1.00000    -1.67242     1  4  s    1.08325
    1.2     2.00000   -64.03314     1  1  py   0.99993
    2.2     2.00000   -64.03314     1  1  px   0.99994
    3.2     2.00000   -64.03314     1  1  pz   0.99993
    4.2     2.00000    -8.92472     1  2  py   1.00038
    5.2     2.00000    -8.92472     1  2  px   1.00038
    6.2     2.00000    -8.92472     1  2  pz   1.00038
    7.2     2.00000    -0.90991     1  3  py   1.08325
    8.2     2.00000    -0.90991     1  3  px   1.08326
    9.2     2.00000    -0.90991     1  3  pz   1.08325


 HOMO      9.2    -0.909911 =     -24.7599eV
 LUMO     10.1    -0.137393 =      -3.7387eV
 LUMO-HOMO         0.772518 =      21.0213eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.60       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.56      0.08      1.28
 REAL TIME  *         3.15 SEC
 DISK USED  *        30.69 MB (local),      499.34 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      94 (   44   50)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.598D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.352D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.163D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   2 3 5 4 6 1 2 4 6 3   5 1 4 6 3 5 2 6 4 5   3 2 1 4 6 5 3 2 7 8
                                       12 91113101415 1 2 6   4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.300D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.227D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.345D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.110D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.671D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.775D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.794D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.794D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.922D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.922D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 3 2 1 5 4 9 7 6  10 8 2 1 3 6 5 4 7 9   810 2 1 3 4 5 6 9 7
                                       10 8 6 4 9 7 510 8 2   1 3 5 4 6 9 710 8 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  1092  ( 52 closed/active, 652 closed/virtual, 0 active/active, 388 active/virtual )
 Total number of variables:    40276
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0  -2787.90644859   -2787.91012308   -0.00367449    0.10984943 0.00022804 0.00074807  0.90E+00      4.93
   2   11   44    0  -2787.91013814   -2787.91014392   -0.00000578    0.00129596 0.00000016 0.00000057  0.41E-01     13.68
   3    6   22    0  -2787.91014392   -2787.91014392   -0.00000000    0.00000101 0.00000000 0.00000021  0.16E-04     17.88

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.32E-08)
                       Final energy:  -2787.91014392
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.268400426361
 Nuclear energy                                  0.00000000
 Kinetic energy                               2995.43805500
 One electron energy                         -3880.22463567
 Two electron energy                          1091.95623525
 Virial ratio                                    1.93083828
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.891210122799
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48766637
 One electron energy                         -3866.15824285
 Two electron energy                          1078.26703273
 Virial ratio                                    1.93131876
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.891210122776
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48766637
 One electron energy                         -3866.15824285
 Two electron energy                          1078.26703273
 Virial ratio                                    1.93131876
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.891210122762
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48766637
 One electron energy                         -3866.15824285
 Two electron energy                          1078.26703273
 Virial ratio                                    1.93131876
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.891210122755
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48766637
 One electron energy                         -3866.15824285
 Two electron energy                          1078.26703273
 Virial ratio                                    1.93131876
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.891210122742
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48766637
 One electron energy                         -3866.15824285
 Two electron energy                          1078.26703273
 Virial ratio                                    1.93131876
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.888283546031
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48215639
 One electron energy                         -3866.14278922
 Two electron energy                          1078.25450567
 Virial ratio                                    1.93131949
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.888283546023
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48215639
 One electron energy                         -3866.14278922
 Two electron energy                          1078.25450567
 Virial ratio                                    1.93131949
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.888283546011
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.48215639
 One electron energy                         -3866.14278922
 Two electron energy                          1078.25450567
 Virial ratio                                    1.93131949
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.874861467610
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.83628227
 One electron energy                         -3867.41713924
 Two electron energy                          1079.54227777
 Virial ratio                                    1.93120485
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.899650449137
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.46027167
 One electron energy                         -3866.07757731
 Two electron energy                          1078.17792687
 Virial ratio                                    1.93133010
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.892726905045
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47405397
 One electron energy                         -3866.11825282
 Two electron energy                          1078.22552592
 Virial ratio                                    1.93132350
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.892726905023
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47405397
 One electron energy                         -3866.11825282
 Two electron energy                          1078.22552592
 Virial ratio                                    1.93132350
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.892726905021
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47405397
 One electron energy                         -3866.11825282
 Two electron energy                          1078.22552592
 Virial ratio                                    1.93132350
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.892726905015
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47405397
 One electron energy                         -3866.11825282
 Two electron energy                          1078.22552592
 Virial ratio                                    1.93132350
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.892726905002
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47405397
 One electron energy                         -3866.11825282
 Two electron energy                          1078.22552592
 Virial ratio                                    1.93132350
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.888428772885
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47999619
 One electron energy                         -3866.13520206
 Two electron energy                          1078.24677328
 Virial ratio                                    1.93132021
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.888428772877
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47999619
 One electron energy                         -3866.13520206
 Two electron energy                          1078.24677328
 Virial ratio                                    1.93132021
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.888428772865
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.47999619
 One electron energy                         -3866.13520206
 Two electron energy                          1078.24677328
 Virial ratio                                    1.93132021
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.290508705005
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.709493692883
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000006937127
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999990442199
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000222786
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999998750432
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000001752885
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999496683
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.303562001441
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000001177945
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.696475027709
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999954512299
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000007280606
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999997972276
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000002213476
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999814247
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.568426758077
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.431573660370
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999988514405
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000007028970
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000004038179
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000002368139
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999998752111
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999998879750
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.560202013835
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999988100863
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.439808764185
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999997209597
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000003911520
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000003553491
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999997973796
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999998472713
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.141064536918
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.858932646747
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000004548468
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000002528832
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999995739036
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999998881429
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999495004
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000001623566
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.136235984725
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000010721192
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.863716208106
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000048278104
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999988807873
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999998474233
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999812728
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000001713040
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   1 2 5 3 4 6 2 4 6 3   5 1 4 6 5 3 2 4 6 3   5 2 1 4 6 5 3 212 8
                                       1310 7 9111415 1 2 6   4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   2 1 3 2 1 5 4 9 7 6   810 2 1 3 6 4 5 7 9   810 2 1 3 4 5 6 9 7
                                        810 6 9 7 4 5 810 2   1 3 6 5 4 9 710 8 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.65961     1  1  s    0.99997
    2.1     2.00000   -72.33137     1  2  s    0.99991
    3.1     2.00000   -11.46536     1  3  s    0.99821
    4.1     2.00000    -4.02557     1  1  d0   1.00043
    5.1     2.00000    -4.02557     1  1  d1-  1.00043
    6.1     2.00000    -4.02557     1  1  d1+  1.00043
    7.1     2.00000    -4.02557     1  1  d2-  1.00043
    8.1     2.00000    -4.02557     1  1  d2+  1.00043
    9.1     1.99911    -1.44585     1  4  s    1.05540
   10.1     0.00129     0.89408     1  3  s    0.92960    1  4  s    0.88242    1  5  s   -2.52626    1  6  s    0.88967
                                    1  7  s    0.92299
    1.2     2.00000   -63.79620     1  1  py   0.99997
    2.2     2.00000   -63.79620     1  1  px   0.99997
    3.2     2.00000   -63.79620     1  1  pz   0.99997
    4.2     2.00000    -8.68884     1  2  py   0.99955
    5.2     2.00000    -8.68884     1  2  px   0.99955
    6.2     2.00000    -8.68884     1  2  pz   0.99955
    7.2     1.68399    -0.68435     1  3  py   1.08473
    8.2     1.68399    -0.68435     1  3  px   1.08473
    9.2     1.68399    -0.68435     1  3  pz   1.08473
   10.2     0.31588     0.00594     1  8  pz   0.41465    1  9  pz   0.71863
   11.2     0.31588     0.00594     1  8  py   0.41465    1  9  py   0.71863
   12.2     0.31588     0.00594     1  8  px   0.41465    1  9  px   0.71863
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 222000      0.98765317     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 20 22ab00      0.05946048      0.56684230     -0.10837707     -0.00000632     -0.00001925     -0.00011243     -0.00000000
 20 22ba00     -0.05946048     -0.56684230      0.10837707      0.00000632      0.00001925      0.00011243      0.00000000
 20 a220b0      0.05946048     -0.18956391      0.54508813      0.00021325     -0.00044107      0.00009940      0.00000000
 20 b220a0     -0.05946048      0.18956391     -0.54508813     -0.00021325      0.00044107     -0.00009940     -0.00000000
 20 b2200a      0.00000000     -0.00008750      0.00006087     -0.00057844     -0.00008679     -0.49979145     -0.00052863
 20 a2200b     -0.00000000      0.00008750     -0.00006087      0.00057844      0.00008679      0.49979145      0.00052863
 20 2a20b0      0.00000000      0.00008750     -0.00006087      0.00057844      0.00008679      0.49979145     -0.00052863
 20 2b20a0     -0.00000000     -0.00008750      0.00006087     -0.00057844     -0.00008679     -0.49979145      0.00052863
 20 a22b00      0.00000000      0.00010104      0.00043987     -0.00075912      0.49979101     -0.00008587      0.00055872
 20 b22a00     -0.00000000     -0.00010104     -0.00043987      0.00075912     -0.49979101      0.00008587     -0.00055872
 20 22b0a0     -0.00000000     -0.00010104     -0.00043987      0.00075912     -0.49979102      0.00008587      0.00055872
 20 22a0b0      0.00000000      0.00010104      0.00043987     -0.00075912      0.49979102     -0.00008587     -0.00055872
 20 2b2a00     -0.00000000      0.00003403      0.00020664     -0.49979084     -0.00075921      0.00057859      0.49982235
 20 2a2b00      0.00000000     -0.00003403     -0.00020664      0.49979084      0.00075921     -0.00057859     -0.49982235
 20 22b00a      0.00000000      0.00003403      0.00020664     -0.49979085     -0.00075921      0.00057859     -0.49982234
 20 22a00b     -0.00000000     -0.00003403     -0.00020664      0.49979085      0.00075921     -0.00057859      0.49982234
 20 2b200a     -0.05946048      0.37727839      0.43671106      0.00020693     -0.00046031     -0.00001303     -0.00000000
 20 2a200b      0.05946048     -0.37727839     -0.43671106     -0.00020693      0.00046031      0.00001303      0.00000000
 
 Energy:    -2788.26840043  -2787.89121012  -2787.89121012  -2787.89121012  -2787.89121012  -2787.89121012  -2787.88828355

 State:              8               9              10
 20 222000     -0.00000000      0.00000000     -0.14477385
 20 22ab00      0.00000000     -0.00000000      0.40360145
 20 22ba00     -0.00000000      0.00000000     -0.40360145
 20 a220b0     -0.00000000      0.00000000      0.40360145
 20 b220a0      0.00000000     -0.00000000     -0.40360145
 20 b2200a     -0.00035519      0.49982253     -0.00000000
 20 a2200b      0.00035519     -0.49982253      0.00000000
 20 2a20b0     -0.00035519      0.49982253      0.00000000
 20 2b20a0      0.00035519     -0.49982253     -0.00000000
 20 a22b00     -0.49982250     -0.00035460     -0.00000000
 20 b22a00      0.49982250      0.00035460      0.00000000
 20 22b0a0     -0.49982249     -0.00035460      0.00000000
 20 22a0b0      0.49982249      0.00035460     -0.00000000
 20 2b2a00      0.00055835      0.00052902     -0.00000000
 20 2a2b00     -0.00055835     -0.00052902      0.00000000
 20 22b00a     -0.00055835     -0.00052902      0.00000000
 20 22a00b      0.00055835      0.00052902     -0.00000000
 20 2b200a     -0.00000000      0.00000000     -0.40360145
 20 2a200b      0.00000000     -0.00000000      0.40360145
 
 Energy:    -2787.88828355  -2787.88828355  -2787.87486147
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 22aa00      0.57709897      0.80219660     -0.00016307     -0.15063348      0.00018738     -0.00021131     -0.00000000
 20 a220a0      0.57709897     -0.27064610      0.00115429      0.77003369     -0.00271523      0.00016392      0.00000000
 20 22a00a     -0.00000000     -0.00005934      0.70686324     -0.00107995      0.00009449     -0.00080091     -0.70682884
 20 2a2a00     -0.00000000     -0.00005934      0.70686323     -0.00107995      0.00009449     -0.00080091      0.70682885
 20 2a20a0     -0.00000000      0.00016854      0.00080092     -0.00009626     -0.00108497      0.70686321      0.00087309
 20 a2200a     -0.00000000      0.00016854      0.00080092     -0.00009626     -0.00108497      0.70686321     -0.00087309
 20 22a0a0      0.00000000      0.00032458     -0.00008925      0.00260645      0.70685881      0.00108534      0.00100651
 20 a22a00      0.00000000      0.00032458     -0.00008925      0.00260645      0.70685880      0.00108534     -0.00100651
 20 2a200a      0.57709897     -0.53155050     -0.00099123     -0.61940022      0.00252785      0.00004739      0.00000000
 
 Energy:    -2787.89965045  -2787.89272691  -2787.89272691  -2787.89272691  -2787.89272691  -2787.89272691  -2787.88842877

 State:              8               9
 20 22aa00     -0.00000000     -0.00000000
 20 a220a0      0.00000000      0.00000000
 20 22a00a     -0.00100614      0.00087352
 20 2a2a00      0.00100614     -0.00087352
 20 2a20a0      0.00030588      0.70682949
 20 a2200a     -0.00030588     -0.70682949
 20 22a0a0     -0.70682931      0.00030464
 20 a22a00      0.70682932     -0.00030464
 20 2a200a     -0.00000000     -0.00000000
 
 Energy:    -2787.88842877  -2787.88842877
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.02       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.66      5.10      0.08      1.28
 REAL TIME  *        22.57 SEC
 DISK USED  *        50.04 MB (local),      770.32 MB (total)
 SF USED    *        50.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2788.268400  -0.0
    -2787.891210   6.0
    -2787.891210   6.0
    -2787.891210   6.0
    -2787.891210   6.0
    -2787.891210   6.0
    -2787.888284   2.0
    -2787.888284   2.0
    -2787.888284   2.0
    -2787.874861  -0.0
    -2787.899650  -0.0
    -2787.892727   6.0
    -2787.892727   6.0
    -2787.892727   6.0
    -2787.892727   6.0
    -2787.892727   6.0
    -2787.888429   2.0
    -2787.888429   2.0
    -2787.888429   2.0
                                                  


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
 Number of external orbitals:      94 (  44  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.10 sec, npass=  1  Memory used:   1.31 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2788.26840043
     2     -2787.89121012
     3     -2787.89121012
     4     -2787.89121012
     5     -2787.89121012
     6     -2787.89121012
     7     -2787.88828355
     8     -2787.88828355
     9     -2787.88828355
    10     -2787.87486147

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9977D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1141D-06

 Number of blocks in overlap matrix:   944   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2841
 Number of N-1 electron functions:  278292

 Number of internal configurations:                65352
 Number of singly external configurations:      13080648
 Number of doubly external configurations:       6281669
 Total number of contracted configurations:     19427669
 Total number of uncontracted configurations:  635693492

 Diagonal Coupling coefficients finished.               Storage:  74648807 words, CPU-Time:    407.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2257294 words, CPU-time:      0.47 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.26840043     0.00000000    -0.98134464  0.40D-01  0.53D-01   431.13
    1     2     2     1.00000000     0.00000000 -2787.89121012     0.00000000    -0.97238210  0.21D-01  0.60D-01   431.13
    1     3     3     1.00000000     0.00000000 -2787.89121012    -0.00000000    -0.97209290  0.21D-01  0.60D-01   431.13
    1     4     4     1.00000000     0.00000000 -2787.89121012    -0.00000000    -0.96376986  0.21D-01  0.56D-01   431.13
    1     5     5     1.00000000     0.00000000 -2787.89121012     0.00000000    -0.96370020  0.21D-01  0.55D-01   431.13
    1     6     6     1.00000000     0.00000000 -2787.89121012     0.00000000    -0.96376833  0.21D-01  0.56D-01   431.13
    1     7     7     1.00000000     0.00000000 -2787.88828355    -0.00000000    -0.96586955  0.21D-01  0.56D-01   431.13
    1     8     8     1.00000000     0.00000000 -2787.88828355    -0.00000000    -0.96590109  0.21D-01  0.56D-01   431.13
    1     9     9     1.00000000     0.00000000 -2787.88828355     0.00000000    -0.96586233  0.21D-01  0.56D-01   431.13
    1    10    10     1.00000000     0.00000000 -2787.87486147    -0.00000000    -0.98299021  0.41D-01  0.60D-01   431.13
    2     1     1     1.06899747    -0.84394425 -2789.11234468    -0.84394425    -0.02810348  0.54D-02  0.18D-02  1914.61
    2     2     2     1.05866072    -0.82782433 -2788.71903445    -0.82782433    -0.01692742  0.11D-02  0.12D-02  1914.61
    2     3     3     1.05611259    -0.82781870 -2788.71902883    -0.82781870    -0.01682492  0.11D-02  0.11D-02  1914.61
    2     4     4     1.05610636    -0.82781253 -2788.71902266    -0.82781253    -0.01682918  0.11D-02  0.11D-02  1914.61
    2     5     5     1.05609383    -0.82780979 -2788.71901992    -0.82780979    -0.01682811  0.11D-02  0.11D-02  1914.61
    2     6     6     1.05859957    -0.82774862 -2788.71895874    -0.82774862    -0.01697969  0.11D-02  0.12D-02  1914.61
    2     7     7     1.05670479    -0.82833081 -2788.71661436    -0.82833081    -0.01672294  0.11D-02  0.11D-02  1914.61
    2     8     8     1.05670205    -0.82830247 -2788.71658601    -0.82830247    -0.01673693  0.11D-02  0.11D-02  1914.61
    2     9     9     1.05669372    -0.82828867 -2788.71657222    -0.82828867    -0.01674361  0.11D-02  0.11D-02  1914.61
    2    10    10     1.06990774    -0.82493706 -2788.69979853    -0.82493706    -0.02442278  0.65D-02  0.12D-02  1914.61
    3     1     1     1.06321313    -0.87336356 -2789.14176399    -0.02941931    -0.00192581  0.66D-04  0.20D-03  3387.65
    3     2     2     1.05794762    -0.84415610 -2788.73536622    -0.01633177    -0.00082537  0.27D-04  0.11D-03  3387.65
    3     3     3     1.05791381    -0.84414322 -2788.73535334    -0.01632452    -0.00083316  0.27D-04  0.11D-03  3387.65
    3     4     4     1.05754090    -0.84413770 -2788.73534782    -0.01632517    -0.00085383  0.27D-04  0.10D-03  3387.65
    3     5     5     1.05753771    -0.84413585 -2788.73534598    -0.01632606    -0.00085477  0.27D-04  0.10D-03  3387.65
    3     6     6     1.05753607    -0.84413532 -2788.73534544    -0.01638670    -0.00085557  0.27D-04  0.10D-03  3387.65
    3     7     7     1.05784606    -0.84454135 -2788.73282489    -0.01621053    -0.00084495  0.27D-04  0.10D-03  3387.65
    3     8     8     1.05783687    -0.84453315 -2788.73281670    -0.01623068    -0.00084955  0.27D-04  0.10D-03  3387.65
    3     9     9     1.05782948    -0.84452819 -2788.73281174    -0.01623952    -0.00085209  0.27D-04  0.11D-03  3387.65
    3    10    10     1.05969572    -0.84831268 -2788.72317414    -0.02337562    -0.00121076  0.99D-04  0.13D-03  3387.65
    4     1     1     1.06794334    -0.87569924 -2789.14409966    -0.00233568    -0.00016436  0.71D-05  0.15D-04  4862.01
    4     2     2     1.06040236    -0.84521831 -2788.73642843    -0.00106221    -0.00008974  0.30D-05  0.95D-05  4862.01
    4     3     3     1.06040178    -0.84521829 -2788.73642841    -0.00107507    -0.00008965  0.30D-05  0.95D-05  4862.01
    4     4     4     1.06040181    -0.84521800 -2788.73642813    -0.00108030    -0.00008984  0.30D-05  0.95D-05  4862.01
    4     5     5     1.06030517    -0.84521377 -2788.73642389    -0.00107792    -0.00009432  0.31D-05  0.10D-04  4862.01
    4     6     6     1.06030535    -0.84521284 -2788.73642296    -0.00107752    -0.00009504  0.31D-05  0.10D-04  4862.01
    4     7     7     1.06060415    -0.84561696 -2788.73390051    -0.00107562    -0.00009104  0.31D-05  0.95D-05  4862.01
    4     8     8     1.06060257    -0.84561591 -2788.73389946    -0.00108276    -0.00009181  0.31D-05  0.96D-05  4862.01
    4     9     9     1.06060190    -0.84561522 -2788.73389877    -0.00108703    -0.00009234  0.32D-05  0.97D-05  4862.01
    4    10    10     1.06154800    -0.84975782 -2788.72461929    -0.00144514    -0.00012813  0.48D-05  0.15D-04  4862.01
    5     1     1     1.06902450    -0.87589444 -2789.14429487    -0.00019520    -0.00001550  0.24D-06  0.17D-05  6342.28
    5     2     2     1.06098218    -0.84533323 -2788.73654335    -0.00011492    -0.00000964  0.29D-06  0.11D-05  6342.28
    5     3     3     1.06098198    -0.84533312 -2788.73654325    -0.00011483    -0.00000971  0.29D-06  0.11D-05  6342.28
    5     4     4     1.06098598    -0.84533245 -2788.73654257    -0.00011445    -0.00000998  0.29D-06  0.11D-05  6342.28
    5     5     5     1.06098633    -0.84533238 -2788.73654251    -0.00011862    -0.00001001  0.29D-06  0.11D-05  6342.28
    5     6     6     1.06098635    -0.84533235 -2788.73654247    -0.00011951    -0.00001003  0.29D-06  0.11D-05  6342.28
    5     7     7     1.06119949    -0.84573221 -2788.73401576    -0.00011525    -0.00000980  0.28D-06  0.11D-05  6342.28
    5     8     8     1.06119894    -0.84573212 -2788.73401567    -0.00011621    -0.00000988  0.28D-06  0.11D-05  6342.28
    5     9     9     1.06119886    -0.84573208 -2788.73401563    -0.00011687    -0.00000992  0.28D-06  0.11D-05  6342.28
    5    10    10     1.06230712    -0.84992179 -2788.72478326    -0.00016398    -0.00001579  0.55D-06  0.18D-05  6342.28
    6     1     1     1.06909113    -0.87591376 -2789.14431418    -0.00001931    -0.00000177  0.42D-07  0.17D-06  7819.61
    6     2     2     1.06093832    -0.84534574 -2788.73655586    -0.00001251    -0.00000149  0.61D-07  0.17D-06  7819.61
    6     3     3     1.06093762    -0.84534571 -2788.73655584    -0.00001259    -0.00000149  0.61D-07  0.17D-06  7819.61
    6     4     4     1.06093645    -0.84534568 -2788.73655581    -0.00001323    -0.00000156  0.58D-07  0.16D-06  7819.61
    6     5     5     1.06093648    -0.84534566 -2788.73655578    -0.00001328    -0.00000157  0.59D-07  0.17D-06  7819.61
    6     6     6     1.06093634    -0.84534565 -2788.73655578    -0.00001331    -0.00000157  0.59D-07  0.17D-06  7819.61
    6     7     7     1.06114845    -0.84574507 -2788.73402861    -0.00001286    -0.00000149  0.60D-07  0.16D-06  7819.61
    6     8     8     1.06114920    -0.84574506 -2788.73402861    -0.00001294    -0.00000148  0.59D-07  0.16D-06  7819.61
    6     9     9     1.06114877    -0.84574506 -2788.73402861    -0.00001298    -0.00000149  0.60D-07  0.16D-06  7819.61
    6    10    10     1.06228941    -0.84994215 -2788.72480362    -0.00002036    -0.00000265  0.13D-06  0.28D-06  7819.61
    7     1     1     1.06913409    -0.87591590 -2789.14431632    -0.00000214    -0.00000024  0.99D-08  0.22D-07  9300.79
    7     2     2     1.06096128    -0.84534770 -2788.73655782    -0.00000196    -0.00000031  0.14D-07  0.31D-07  9300.79
    7     3     3     1.06096055    -0.84534769 -2788.73655781    -0.00000197    -0.00000031  0.13D-07  0.31D-07  9300.79
    7     4     4     1.06096048    -0.84534768 -2788.73655780    -0.00000200    -0.00000031  0.13D-07  0.31D-07  9300.79
    7     5     5     1.06096048    -0.84534768 -2788.73655780    -0.00000202    -0.00000031  0.13D-07  0.31D-07  9300.79
    7     6     6     1.06096127    -0.84534767 -2788.73655780    -0.00000202    -0.00000031  0.14D-07  0.31D-07  9300.79
    7     7     7     1.06117387    -0.84574699 -2788.73403054    -0.00000193    -0.00000029  0.12D-07  0.29D-07  9300.79
    7     8     8     1.06117397    -0.84574698 -2788.73403053    -0.00000192    -0.00000029  0.12D-07  0.29D-07  9300.79
    7     9     9     1.06117409    -0.84574697 -2788.73403051    -0.00000191    -0.00000029  0.12D-07  0.29D-07  9300.79
    7    10    10     1.06231844    -0.84994557 -2788.72480703    -0.00000342    -0.00000059  0.32D-07  0.60D-07  9300.79
    8     1     1     1.06914303    -0.87591618 -2789.14431660    -0.00000028    -0.00000004  0.12D-08  0.38D-08 10774.41
    8     2     2     1.06097553    -0.84534807 -2788.73655820    -0.00000038    -0.00000006  0.28D-08  0.53D-08 10774.41
    8     3     3     1.06097504    -0.84534807 -2788.73655819    -0.00000038    -0.00000006  0.30D-08  0.55D-08 10774.41
    8     4     4     1.06097499    -0.84534807 -2788.73655819    -0.00000039    -0.00000006  0.30D-08  0.56D-08 10774.41
    8     5     5     1.06097500    -0.84534807 -2788.73655819    -0.00000039    -0.00000006  0.30D-08  0.56D-08 10774.41
    8     6     6     1.06097553    -0.84534805 -2788.73655817    -0.00000038    -0.00000006  0.27D-08  0.53D-08 10774.41
    8     7     7     1.06118888    -0.84574736 -2788.73403090    -0.00000036    -0.00000006  0.27D-08  0.52D-08 10774.41
    8     8     8     1.06118889    -0.84574734 -2788.73403089    -0.00000036    -0.00000006  0.27D-08  0.52D-08 10774.41
    8     9     9     1.06118888    -0.84574733 -2788.73403087    -0.00000036    -0.00000006  0.27D-08  0.51D-08 10774.41
    8    10    10     1.06232708    -0.84994630 -2788.72480777    -0.00000073    -0.00000013  0.76D-08  0.12D-07 10774.41
    9     1     1     1.06914302    -0.87591618 -2789.14431661    -0.00000000    -0.00000004  0.12D-08  0.35D-08 11559.63
    9     2     2     1.06097553    -0.84534807 -2788.73655820    -0.00000000    -0.00000006  0.28D-08  0.53D-08 11559.63
    9     3     3     1.06097504    -0.84534807 -2788.73655819    -0.00000000    -0.00000006  0.30D-08  0.55D-08 11559.63
    9     4     4     1.06097499    -0.84534807 -2788.73655819    -0.00000000    -0.00000006  0.30D-08  0.56D-08 11559.63
    9     5     5     1.06097500    -0.84534807 -2788.73655819    -0.00000000    -0.00000006  0.30D-08  0.56D-08 11559.63
    9     6     6     1.06097553    -0.84534805 -2788.73655817    -0.00000000    -0.00000006  0.27D-08  0.53D-08 11559.63
    9     7     7     1.06118888    -0.84574736 -2788.73403090    -0.00000000    -0.00000006  0.27D-08  0.52D-08 11559.63
    9     8     8     1.06118889    -0.84574734 -2788.73403089     0.00000000    -0.00000006  0.27D-08  0.52D-08 11559.63
    9     9     9     1.06118888    -0.84574733 -2788.73403087    -0.00000000    -0.00000006  0.27D-08  0.51D-08 11559.63
    9    10    10     1.06233499    -0.84994648 -2788.72480795    -0.00000018    -0.00000001  0.70D-09  0.11D-08 11559.63


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  22.8%
 P   0.3%  49.5%  21.0%

 Initialization:   3.5%
 Other:            1.9%

 Total CPU:    11559.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222222000           0.9596433  -0.0000002   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                             0.0000000  -0.1055157
 2222222022222/\00           0.0628314   0.7678748  -0.1426243  -0.0040455  -0.0027655  -0.1331347   0.0000000   0.0000000
                            -0.0000001   0.5563617
 22222220222/220\0           0.0628314  -0.2710145   0.0480658   0.0000690  -0.0038540   0.7429308  -0.0000000  -0.0000000
                             0.0000001   0.5563635
 2222222022222/0\0           0.0000000   0.1256271   0.6745112  -0.0042700  -0.0028918   0.0021737   0.0018782   0.0051363
                             0.6861135  -0.0000000
 22222220222/22\00           0.0000000   0.1256302   0.6745284  -0.0042701  -0.0028918   0.0021739  -0.0018781  -0.0051361
                            -0.6860961  -0.0000000
 22222220222/2200\           0.0000000   0.0036647   0.0029828   0.6722263  -0.1373926   0.0003687  -0.6858098  -0.0208300
                             0.0020333   0.0000000
 222222202222/20\0          -0.0000000   0.0036647   0.0029828   0.6722312  -0.1373935   0.0003687   0.6858048   0.0208300
                            -0.0020333   0.0000000
 222222202222/2\00           0.0000000   0.0045385   0.0028902   0.1373496   0.6722125   0.0049430   0.0208446  -0.6857932
                             0.0050768  -0.0000000
 2222222022222/00\           0.0000000   0.0045385   0.0028902   0.1373503   0.6722167   0.0049430  -0.0208445   0.6857890
                            -0.0050767  -0.0000000
 222222202222/200\           0.0628314  -0.4968577   0.0945581   0.0039765   0.0066196  -0.6097964  -0.0000000   0.0000000
                            -0.0000000   0.5563636

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966548    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.032207
 2           0.000000    0.954207   -0.015146    0.006421    0.177743    0.005185    0.000000   -0.000002   -0.000000    0.000002
 3          -0.000000   -0.177822   -0.000347    0.004089    0.954330    0.004220   -0.000000   -0.000012   -0.000000   -0.000000
 4          -0.000000   -0.005379   -0.001810    0.194327   -0.006041    0.951088    0.000000    0.000000    0.000003   -0.000000
 5          -0.000000   -0.004687   -0.006664    0.951068   -0.004091   -0.194388    0.000003    0.000000   -0.000001    0.000000
 6           0.000000    0.014784    0.970630    0.006994    0.003076    0.000522    0.000000   -0.000000    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000004   -0.029489    0.002657    0.970226   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000003    0.000000   -0.000000    0.970203    0.007266    0.029469   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000    0.000012    0.000000   -0.007182    0.970647   -0.002877   -0.000000
 10          0.035498   -0.000001    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.969494

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967083    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.001593
 2           0.000000    0.970773    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.970773   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.970773   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.970773    0.000000    0.000000   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.970773   -0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970678    0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970678   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970678   -0.000000
 10          0.001593    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970142


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96654765 (fixed)   0.96711558 (relaxed)   0.96708277 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008497   -0.00028453   -0.80948640
 Singles      0.01157217   -0.05361901   -0.05963073
 Pairs        0.05757672    0.04315867   -0.00679905
 Total        1.06923386   -0.01074486   -0.87591618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.26791973
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.91035573
 One electron energy                -3877.26782654
 Two electron energy                 1088.12350993
 Virial quotient                       -0.93129476
 Correlation energy                    -0.87639688
 !MRCI STATE 1.1 Energy             -2789.144316605698

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.20499295 (Davidson, fixed reference)
 Cluster corrected energies         -2789.20492937 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.20499295 (Davidson, rotated reference)

 Cluster corrected energies         -2789.20378803 (Pople, fixed reference)
 Cluster corrected energies         -2789.20372189 (Pople, relaxed reference)
 Cluster corrected energies         -2789.20378803 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95420660 (fixed)   0.97081761 (relaxed)   0.97077305 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013635   -0.00049595   -0.73918300
 Singles      0.01126210   -0.06110007   -0.06655292
 Pairs        0.04972175   -0.00000126   -0.03961215
 Total        1.06112020   -0.06159728   -0.84534807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89121012
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95464994
 One electron energy                -3865.33768955
 Two electron energy                 1076.60113135
 Virial quotient                       -0.93145584
 Correlation energy                    -0.84534807
 !MRCI STATE 2.1 Energy             -2788.736558195465

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78822604 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78814369 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78822604 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78683785 (Pople, fixed reference)
 Cluster corrected energies         -2788.78675340 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78683785 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95432986 (fixed)   0.97081783 (relaxed)   0.97077327 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013636   -0.00049595   -0.73918439
 Singles      0.01126249   -0.06110042   -0.06655324
 Pairs        0.04972086    0.00000021   -0.03961043
 Total        1.06111971   -0.06159615   -0.84534807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89121012
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95451916
 One electron energy                -3865.33763231
 Two electron energy                 1076.60107411
 Virial quotient                       -0.93145589
 Correlation energy                    -0.84534807
 !MRCI STATE 3.1 Energy             -2788.736558193609

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78822563 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78814327 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78822563 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78683742 (Pople, fixed reference)
 Cluster corrected energies         -2788.78675297 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78683742 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95108846 (fixed)   0.97081786 (relaxed)   0.97077329 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013636   -0.00049595   -0.73918423
 Singles      0.01126250   -0.06110043   -0.06655325
 Pairs        0.04972080    0.00000001   -0.03961059
 Total        1.06111966   -0.06159637   -0.84534807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89121012
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95448964
 One electron energy                -3865.33761273
 Two electron energy                 1076.60105454
 Virial quotient                       -0.93145589
 Correlation energy                    -0.84534807
 !MRCI STATE 4.1 Energy             -2788.736558189826

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78822558 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78814323 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78822558 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78683737 (Pople, fixed reference)
 Cluster corrected energies         -2788.78675292 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78683737 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95106839 (fixed)   0.97081785 (relaxed)   0.97077329 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013636   -0.00049595   -0.73918420
 Singles      0.01126251   -0.06110044   -0.06655327
 Pairs        0.04972080   -0.00000000   -0.03961060
 Total        1.06111967   -0.06159639   -0.84534807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89121012
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95449517
 One electron energy                -3865.33761582
 Two electron energy                 1076.60105764
 Virial quotient                       -0.93145589
 Correlation energy                    -0.84534807
 !MRCI STATE 5.1 Energy             -2788.736558188134

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78822559 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78814323 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78822559 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78683738 (Pople, fixed reference)
 Cluster corrected energies         -2788.78675293 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78683738 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97063026 (fixed)   0.97081761 (relaxed)   0.97077305 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013636   -0.00049595   -0.73918434
 Singles      0.01126206   -0.06109999   -0.06655286
 Pairs        0.04972178    0.00000010   -0.03961086
 Total        1.06112020   -0.06159584   -0.84534805
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89121012
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95464489
 One electron energy                -3865.33768727
 Two electron energy                 1076.60112909
 Virial quotient                       -0.93145585
 Correlation energy                    -0.84534805
 !MRCI STATE 6.1 Energy             -2788.736558173335

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78822602 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78814367 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78822602 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78683782 (Pople, fixed reference)
 Cluster corrected energies         -2788.78675337 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78683782 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.97022612 (fixed)   0.97072006 (relaxed)   0.97067780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013151   -0.00049233   -0.73893064
 Singles      0.01149391   -0.06161048   -0.06720926
 Pairs        0.04970301    0.00000000   -0.03960746
 Total        1.06132844   -0.06210281   -0.84574736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88828355
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95452405
 One electron energy                -3865.32782622
 Two electron energy                 1076.59379532
 Virial quotient                       -0.93145504
 Correlation energy                    -0.84574736
 !MRCI STATE 7.1 Energy             -2788.734030902832

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78589927 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78582113 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78589927 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78451496 (Pople, fixed reference)
 Cluster corrected energies         -2788.78443480 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78451496 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97020317 (fixed)   0.97072005 (relaxed)   0.97067780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013151   -0.00049233   -0.73893062
 Singles      0.01149392   -0.06161048   -0.06720926
 Pairs        0.04970302    0.00000000   -0.03960746
 Total        1.06132845   -0.06210280   -0.84574734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88828355
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95453280
 One electron energy                -3865.32783223
 Two electron energy                 1076.59380134
 Virial quotient                       -0.93145504
 Correlation energy                    -0.84574734
 !MRCI STATE 8.1 Energy             -2788.734030886561

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78589926 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78582112 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78589926 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78451495 (Pople, fixed reference)
 Cluster corrected energies         -2788.78443479 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78451495 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97064697 (fixed)   0.97072006 (relaxed)   0.97067780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013151   -0.00049233   -0.73893066
 Singles      0.01149389   -0.06161044   -0.06720920
 Pairs        0.04970303    0.00000001   -0.03960747
 Total        1.06132844   -0.06210276   -0.84574733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88828355
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95455295
 One electron energy                -3865.32784823
 Two electron energy                 1076.59381736
 Virial quotient                       -0.93145503
 Correlation energy                    -0.84574733
 !MRCI STATE 9.1 Energy             -2788.734030871512

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78589923 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78582109 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78589923 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78451493 (Pople, fixed reference)
 Cluster corrected energies         -2788.78443476 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78451493 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96949368 (fixed)   0.97019711 (relaxed)   0.97014205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015626   -0.00050456   -0.00098429
 Singles      0.01223420   -0.06243180   -0.06854394
 Pairs        0.05011054   -0.78660168   -0.78041825
 Total        1.06250099   -0.84953804   -0.84994648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87534216
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.06801792
 One electron energy                -3865.81805625
 Two electron energy                 1077.09324830
 Virial quotient                       -0.93141665
 Correlation energy                    -0.84946579
 !MRCI STATE 10.1 Energy            -2788.724807951495

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77790041 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77779797 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77790041 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77653694 (Pople, fixed reference)
 Cluster corrected energies         -2788.77643163 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77653694 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.02       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1504.18       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13722.87  13716.19      5.10      0.08      1.28
 REAL TIME  *     13916.77 SEC
 DISK USED  *         1.52 GB (local),       21.30 GB (total)
 SF USED    *        15.86 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.20499295  AU                              
 SETTING HLSDIAG(2)     =     -2788.78822604  AU                              
 SETTING HLSDIAG(3)     =     -2788.78822563  AU                              
 SETTING HLSDIAG(4)     =     -2788.78822558  AU                              
 SETTING HLSDIAG(5)     =     -2788.78822559  AU                              
 SETTING HLSDIAG(6)     =     -2788.78822602  AU                              
 SETTING HLSDIAG(7)     =     -2788.78589927  AU                              
 SETTING HLSDIAG(8)     =     -2788.78589926  AU                              
 SETTING HLSDIAG(9)     =     -2788.78589923  AU                              
 SETTING HLSDIAG(10)    =     -2788.77790041  AU                              


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
 Number of external orbitals:      94 (  44  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2787.89965045
     2     -2787.89272691
     3     -2787.89272691
     4     -2787.89272691
     5     -2787.89272691
     6     -2787.89272691
     7     -2787.88842877
     8     -2787.88842877
     9     -2787.88842877

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1325D-06

 Number of blocks in overlap matrix:   883   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    2553
 Number of N-1 electron functions:  505086

 Number of internal configurations:               107628
 Number of singly external configurations:      23739816
 Number of doubly external configurations:       5644161
 Total number of contracted configurations:     29491605
 Total number of uncontracted configurations: 1205933418

 Diagonal Coupling coefficients finished.               Storage: 101601586 words, CPU-Time:    687.42 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3364561 words, CPU-time:      0.42 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.89965045     0.00000000    -0.97532882  0.23D-01  0.62D-01   717.88
    1     2     2     1.00000000     0.00000000 -2787.89272691     0.00000000    -0.97418617  0.21D-01  0.61D-01   717.88
    1     3     3     1.00000000     0.00000000 -2787.89272691     0.00000000    -0.97168533  0.21D-01  0.60D-01   717.88
    1     4     4     1.00000000     0.00000000 -2787.89272691     0.00000000    -0.97396390  0.21D-01  0.61D-01   717.88
    1     5     5     1.00000000     0.00000000 -2787.89272691    -0.00000000    -0.97158323  0.21D-01  0.60D-01   717.88
    1     6     6     1.00000000     0.00000000 -2787.89272691     0.00000000    -0.97181639  0.21D-01  0.60D-01   717.88
    1     7     7     1.00000000     0.00000000 -2787.88842877    -0.00000000    -0.97145179  0.21D-01  0.60D-01   717.88
    1     8     8     1.00000000     0.00000000 -2787.88842877     0.00000000    -0.97142648  0.21D-01  0.60D-01   717.88
    1     9     9     1.00000000     0.00000000 -2787.88842877    -0.00000000    -0.97145611  0.21D-01  0.60D-01   717.88
    2     1     1     1.06062878    -0.82755886 -2788.72720931    -0.82755886    -0.01705633  0.14D-02  0.12D-02  3017.56
    2     2     2     1.05880969    -0.82818992 -2788.72091682    -0.82818992    -0.01676758  0.11D-02  0.11D-02  3017.56
    2     3     3     1.05877833    -0.82814711 -2788.72087402    -0.82814711    -0.01678879  0.11D-02  0.11D-02  3017.56
    2     4     4     1.05875024    -0.82811783 -2788.72084473    -0.82811783    -0.01680176  0.11D-02  0.11D-02  3017.56
    2     5     5     1.05938034    -0.82803298 -2788.72075989    -0.82803298    -0.01686269  0.11D-02  0.12D-02  3017.56
    2     6     6     1.05931467    -0.82791567 -2788.72064257    -0.82791567    -0.01693793  0.11D-02  0.12D-02  3017.56
    2     7     7     1.05853157    -0.82862788 -2788.71705665    -0.82862788    -0.01655219  0.11D-02  0.11D-02  3017.56
    2     8     8     1.05853511    -0.82862602 -2788.71705479    -0.82862602    -0.01655389  0.11D-02  0.11D-02  3017.56
    2     9     9     1.05852818    -0.82861755 -2788.71704632    -0.82861755    -0.01655802  0.11D-02  0.11D-02  3017.56
    3     1     1     1.05853082    -0.84383894 -2788.74348939    -0.01628008    -0.00070779  0.30D-04  0.90D-04  5310.73
    3     2     2     1.05821999    -0.84426112 -2788.73698803    -0.01607120    -0.00074887  0.24D-04  0.96D-04  5310.73
    3     3     3     1.05820014    -0.84425012 -2788.73697702    -0.01610301    -0.00075554  0.24D-04  0.97D-04  5310.73
    3     4     4     1.05818520    -0.84424146 -2788.73696836    -0.01612363    -0.00076048  0.24D-04  0.97D-04  5310.73
    3     5     5     1.05823682    -0.84420627 -2788.73693318    -0.01617329    -0.00077438  0.25D-04  0.10D-03  5310.73
    3     6     6     1.05818872    -0.84418342 -2788.73691032    -0.01626775    -0.00078793  0.25D-04  0.10D-03  5310.73
    3     7     7     1.05825296    -0.84449843 -2788.73292720    -0.01587055    -0.00074577  0.26D-04  0.96D-04  5310.73
    3     8     8     1.05825221    -0.84449792 -2788.73292670    -0.01587191    -0.00074588  0.26D-04  0.96D-04  5310.73
    3     9     9     1.05824942    -0.84449648 -2788.73292525    -0.01587893    -0.00074697  0.26D-04  0.96D-04  5310.73
    4     1     1     1.06031285    -0.84469889 -2788.74434934    -0.00085995    -0.00006801  0.25D-05  0.80D-05  7612.47
    4     2     2     1.06040080    -0.84518856 -2788.73791546    -0.00092743    -0.00007422  0.26D-05  0.83D-05  7612.47
    4     3     3     1.06039874    -0.84518745 -2788.73791435    -0.00093733    -0.00007512  0.26D-05  0.84D-05  7612.47
    4     4     4     1.06039723    -0.84518640 -2788.73791330    -0.00094494    -0.00007592  0.26D-05  0.84D-05  7612.47
    4     5     5     1.06035556    -0.84517864 -2788.73790554    -0.00097236    -0.00008201  0.28D-05  0.91D-05  7612.47
    4     6     6     1.06035308    -0.84517647 -2788.73790338    -0.00099305    -0.00008374  0.29D-05  0.92D-05  7612.47
    4     7     7     1.06045621    -0.84542402 -2788.73385280    -0.00092559    -0.00007540  0.24D-05  0.84D-05  7612.47
    4     8     8     1.06045604    -0.84542387 -2788.73385264    -0.00092595    -0.00007549  0.24D-05  0.84D-05  7612.47
    4     9     9     1.06045587    -0.84542384 -2788.73385261    -0.00092736    -0.00007553  0.25D-05  0.85D-05  7612.47
    5     1     1     1.06091789    -0.84478302 -2788.74443347    -0.00008413    -0.00000584  0.24D-06  0.67D-06  9913.46
    5     2     2     1.06100708    -0.84528037 -2788.73800728    -0.00009182    -0.00000666  0.22D-06  0.77D-06  9913.46
    5     3     3     1.06100684    -0.84528032 -2788.73800722    -0.00009287    -0.00000672  0.22D-06  0.77D-06  9913.46
    5     4     4     1.06100684    -0.84528024 -2788.73800715    -0.00009384    -0.00000678  0.22D-06  0.78D-06  9913.46
    5     5     5     1.06100552    -0.84528005 -2788.73800695    -0.00010141    -0.00000706  0.23D-06  0.79D-06  9913.46
    5     6     6     1.06100561    -0.84527988 -2788.73800678    -0.00010341    -0.00000719  0.23D-06  0.81D-06  9913.46
    5     7     7     1.06105999    -0.84551749 -2788.73394626    -0.00009347    -0.00000680  0.20D-06  0.79D-06  9913.46
    5     8     8     1.06106005    -0.84551747 -2788.73394624    -0.00009360    -0.00000682  0.20D-06  0.79D-06  9913.46
    5     9     9     1.06105996    -0.84551746 -2788.73394623    -0.00009363    -0.00000682  0.20D-06  0.79D-06  9913.46
    6     1     1     1.06090762    -0.84479024 -2788.74444069    -0.00000722    -0.00000069  0.32D-07  0.85D-07 12209.83
    6     2     2     1.06098404    -0.84528876 -2788.73801566    -0.00000839    -0.00000087  0.40D-07  0.10D-06 12209.83
    6     3     3     1.06098607    -0.84528875 -2788.73801565    -0.00000843    -0.00000086  0.40D-07  0.10D-06 12209.83
    6     4     4     1.06098649    -0.84528874 -2788.73801565    -0.00000850    -0.00000086  0.40D-07  0.10D-06 12209.83
    6     5     5     1.06098560    -0.84528874 -2788.73801565    -0.00000869    -0.00000087  0.40D-07  0.10D-06 12209.83
    6     6     6     1.06098300    -0.84528874 -2788.73801565    -0.00000886    -0.00000088  0.41D-07  0.10D-06 12209.83
    6     7     7     1.06103634    -0.84552600 -2788.73395477    -0.00000851    -0.00000087  0.40D-07  0.10D-06 12209.83
    6     8     8     1.06103632    -0.84552600 -2788.73395477    -0.00000853    -0.00000087  0.40D-07  0.10D-06 12209.83
    6     9     9     1.06103628    -0.84552599 -2788.73395476    -0.00000853    -0.00000087  0.40D-07  0.10D-06 12209.83
    7     1     1     1.06092280    -0.84479112 -2788.74444157    -0.00000088    -0.00000012  0.64D-08  0.14D-07 14505.33
    7     2     2     1.06100242    -0.84528987 -2788.73801678    -0.00000111    -0.00000016  0.80D-08  0.18D-07 14505.33
    7     3     3     1.06100222    -0.84528987 -2788.73801677    -0.00000112    -0.00000016  0.80D-08  0.18D-07 14505.33
    7     4     4     1.06100336    -0.84528985 -2788.73801676    -0.00000111    -0.00000016  0.77D-08  0.17D-07 14505.33
    7     5     5     1.06100327    -0.84528985 -2788.73801675    -0.00000111    -0.00000016  0.77D-08  0.17D-07 14505.33
    7     6     6     1.06100332    -0.84528985 -2788.73801675    -0.00000111    -0.00000016  0.77D-08  0.17D-07 14505.33
    7     7     7     1.06105253    -0.84552711 -2788.73395588    -0.00000111    -0.00000016  0.77D-08  0.17D-07 14505.33
    7     8     8     1.06105254    -0.84552711 -2788.73395588    -0.00000111    -0.00000016  0.77D-08  0.17D-07 14505.33
    7     9     9     1.06105253    -0.84552711 -2788.73395588    -0.00000112    -0.00000016  0.77D-08  0.17D-07 14505.33
    8     1     1     1.06092957    -0.84479128 -2788.74444172    -0.00000015    -0.00000002  0.11D-08  0.21D-08 16803.07
    8     2     2     1.06101275    -0.84529007 -2788.73801698    -0.00000020    -0.00000003  0.15D-08  0.29D-08 16803.07
    8     3     3     1.06101273    -0.84529007 -2788.73801698    -0.00000020    -0.00000003  0.15D-08  0.29D-08 16803.07
    8     4     4     1.06101281    -0.84529005 -2788.73801695    -0.00000020    -0.00000003  0.14D-08  0.29D-08 16803.07
    8     5     5     1.06101279    -0.84529005 -2788.73801695    -0.00000020    -0.00000003  0.14D-08  0.29D-08 16803.07
    8     6     6     1.06101280    -0.84529005 -2788.73801695    -0.00000020    -0.00000003  0.14D-08  0.29D-08 16803.07
    8     7     7     1.06106260    -0.84552731 -2788.73395608    -0.00000020    -0.00000003  0.15D-08  0.29D-08 16803.07
    8     8     8     1.06106261    -0.84552731 -2788.73395608    -0.00000020    -0.00000003  0.15D-08  0.29D-08 16803.07
    8     9     9     1.06106261    -0.84552731 -2788.73395608    -0.00000020    -0.00000003  0.15D-08  0.30D-08 16803.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%  25.6%
 P   0.3%  49.8%  18.2%

 Initialization:   4.1%
 Other:            1.2%

 Total CPU:    16803.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022222//00           0.5602354   0.7849878  -0.1076644   0.0017946   0.0037383   0.0027683   0.0000000   0.0000000
                            -0.0000000
 222222202222/200/           0.5602357  -0.2992885   0.7336443   0.0033346   0.0015290   0.0009297  -0.0000000   0.0000000
                             0.0000000
 2222222022222/00/          -0.0000000  -0.0023447  -0.0016098  -0.0246391  -0.0487186   0.6840162  -0.1490863   0.6693260
                             0.0236393
 222222202222/2/00          -0.0000000  -0.0023447  -0.0016098  -0.0246391  -0.0487185   0.6840157   0.1490864  -0.6693265
                            -0.0236393
 22222220222/2200/           0.0000000  -0.0000370  -0.0020306   0.5982294  -0.3361220  -0.0023960  -0.0866249   0.0047436
                            -0.6806299
 222222202222/20/0           0.0000000  -0.0000370  -0.0020306   0.5982297  -0.3361221  -0.0023960   0.0866248  -0.0047436
                             0.6806295
 22222220222/22/00          -0.0000000  -0.0044349  -0.0046445   0.3352020   0.5962320   0.0545144  -0.6641182  -0.1508744
                             0.0834719
 2222222022222/0/0           0.0000000  -0.0044350  -0.0046445   0.3352023   0.5962325   0.0545145   0.6641175   0.1508742
                            -0.0834719
 22222220222/220/0           0.5602359  -0.4856987  -0.6259799  -0.0051291  -0.0052672  -0.0036980  -0.0000000  -0.0000000
                            -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970793   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.923379   -0.003317   -0.299489   -0.006274   -0.000052   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.299536   -0.002277   -0.923360   -0.006571   -0.002873   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.001108   -0.034857   -0.006281    0.474208    0.846312   -0.000000    0.000000    0.000000
 5          -0.000000    0.003660   -0.068922   -0.005540    0.843486   -0.475510   -0.000000    0.000000   -0.000000
 6           0.000000    0.002761    0.967673   -0.003821    0.077121   -0.003390    0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.210924    0.939581    0.122555
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.946950    0.213454   -0.006711
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.033444   -0.118094    0.962942

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970793    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.970759   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.970759    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.970759    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.970759    0.000000   -0.000000   -0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.970759    0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970733    0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970733   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970733


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97079323 (fixed)   0.97083949 (relaxed)   0.97079323 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013809   -0.00048480   -0.73847255
 Singles      0.01146641   -0.06133238   -0.06693169
 Pairs        0.04947158   -0.00000000   -0.03938703
 Total        1.06107607   -0.06181718   -0.84479128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89965045
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93905367
 One electron energy                -3865.31440528
 Two electron energy                 1076.56996355
 Virial quotient                       -0.93146333
 Correlation energy                    -0.84479128
 !MRCI STATE 1.1 Energy             -2788.744441724712

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.79603826 (Davidson, fixed reference)
 Cluster corrected energies         -2788.79595284 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.79603826 (Davidson, rotated reference)

 Cluster corrected energies         -2788.79425914 (Pople, fixed reference)
 Cluster corrected energies         -2788.79417231 (Pople, relaxed reference)
 Cluster corrected energies         -2788.79425914 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.92337889 (fixed)   0.97080097 (relaxed)   0.97075880 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013064   -0.00048809   -0.73879090
 Singles      0.01140884   -0.06143154   -0.06697992
 Pairs        0.04961188    0.00000000   -0.03951925
 Total        1.06115135   -0.06191962   -0.84529007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89272691
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.94885471
 One electron energy                -3865.32172938
 Two electron energy                 1076.58371241
 Virial quotient                       -0.93145814
 Correlation energy                    -0.84529007
 !MRCI STATE 2.1 Energy             -2788.738016978342

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78970761 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78962968 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78970761 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78792850 (Pople, fixed reference)
 Cluster corrected energies         -2788.78784927 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78792850 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92336028 (fixed)   0.97080098 (relaxed)   0.97075880 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013064   -0.00048809   -0.73879097
 Singles      0.01140883   -0.06143149   -0.06697988
 Pairs        0.04961186    0.00000001   -0.03951922
 Total        1.06115134   -0.06191956   -0.84529007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89272691
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.94884251
 One electron energy                -3865.32172123
 Two electron energy                 1076.58370425
 Virial quotient                       -0.93145814
 Correlation energy                    -0.84529007
 !MRCI STATE 3.1 Energy             -2788.738016977175

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78970759 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78962966 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78970759 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78792849 (Pople, fixed reference)
 Cluster corrected energies         -2788.78784926 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78792849 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.84631160 (fixed)   0.97080094 (relaxed)   0.97075877 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013064   -0.00048809   -0.73879073
 Singles      0.01140890   -0.06143146   -0.06697988
 Pairs        0.04961187   -0.00000018   -0.03951943
 Total        1.06115142   -0.06191973   -0.84529005
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89272691
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.94885275
 One electron energy                -3865.32172911
 Two electron energy                 1076.58371216
 Virial quotient                       -0.93145814
 Correlation energy                    -0.84529005
 !MRCI STATE 4.1 Energy             -2788.738016952594

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78970764 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78962971 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78970764 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78792853 (Pople, fixed reference)
 Cluster corrected energies         -2788.78784930 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78792853 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.84348609 (fixed)   0.97080095 (relaxed)   0.97075877 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013064   -0.00048809   -0.73879097
 Singles      0.01140891   -0.06143147   -0.06697989
 Pairs        0.04961185    0.00000007   -0.03951919
 Total        1.06115140   -0.06191949   -0.84529005
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89272691
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.94885328
 One electron energy                -3865.32172909
 Two electron energy                 1076.58371213
 Virial quotient                       -0.93145814
 Correlation energy                    -0.84529005
 !MRCI STATE 5.1 Energy             -2788.738016951703

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78970762 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78962969 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78970762 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78792852 (Pople, fixed reference)
 Cluster corrected energies         -2788.78784928 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78792852 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96767308 (fixed)   0.97080094 (relaxed)   0.97075877 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013064   -0.00048809   -0.73879090
 Singles      0.01140891   -0.06143147   -0.06697989
 Pairs        0.04961186   -0.00000000   -0.03951925
 Total        1.06115141   -0.06191955   -0.84529005
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89272691
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.94885594
 One electron energy                -3865.32173072
 Two electron energy                 1076.58371376
 Virial quotient                       -0.93145813
 Correlation energy                    -0.84529005
 !MRCI STATE 6.1 Energy             -2788.738016950972

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78970763 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78962970 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78970763 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78792852 (Pople, fixed reference)
 Cluster corrected energies         -2788.78784929 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78792852 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.93958118 (fixed)   0.97077796 (relaxed)   0.97073257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013770   -0.00049370   -0.64586354
 Singles      0.01134995   -0.06130136   -0.06680910
 Pairs        0.04972106   -0.09894637   -0.13285467
 Total        1.06120870   -0.16074144   -0.84552731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88842877
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95468552
 One electron energy                -3865.32323409
 Two electron energy                 1076.58927800
 Virial quotient                       -0.93145496
 Correlation energy                    -0.84552731
 !MRCI STATE 7.1 Energy             -2788.733956084852

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78570971 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78562580 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78570971 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78393092 (Pople, fixed reference)
 Cluster corrected energies         -2788.78384560 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78393092 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94694985 (fixed)   0.97077795 (relaxed)   0.97073256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013770   -0.00049370   -0.74420864
 Singles      0.01134995   -0.06130137   -0.06680910
 Pairs        0.04972107    0.00541833   -0.03450956
 Total        1.06120872   -0.05637674   -0.84552731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88842877
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95468741
 One electron energy                -3865.32323585
 Two electron energy                 1076.58927977
 Virial quotient                       -0.93145496
 Correlation energy                    -0.84552731
 !MRCI STATE 8.1 Energy             -2788.733956084452

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78570973 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78562582 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78570973 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78393094 (Pople, fixed reference)
 Cluster corrected energies         -2788.78384562 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78393094 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96294179 (fixed)   0.97077795 (relaxed)   0.97073256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013770   -0.00049370   -0.00650210
 Singles      0.01134995   -0.06130136   -0.06680910
 Pairs        0.04972106   -0.77744229   -0.77221611
 Total        1.06120871   -0.83923735   -0.84552731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88842877
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.95468004
 One electron energy                -3865.32323140
 Two electron energy                 1076.58927531
 Virial quotient                       -0.93145497
 Correlation energy                    -0.84552731
 !MRCI STATE 9.1 Energy             -2788.733956083381

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78570972 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78562581 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78570972 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78393093 (Pople, fixed reference)
 Cluster corrected energies         -2788.78384561 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78393093 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.02       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3552.46       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     33524.84  19801.97  13716.19      5.10      0.08      1.28
 REAL TIME  *     33938.75 SEC
 DISK USED  *         3.52 GB (local),       49.31 GB (total)
 SF USED    *        21.80 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2788.79595284  AU                              
 SETTING HLSDIAG(12)    =     -2788.78962968  AU                              
 SETTING HLSDIAG(13)    =     -2788.78962966  AU                              
 SETTING HLSDIAG(14)    =     -2788.78962971  AU                              
 SETTING HLSDIAG(15)    =     -2788.78962969  AU                              
 SETTING HLSDIAG(16)    =     -2788.78962970  AU                              
 SETTING HLSDIAG(17)    =     -2788.78562580  AU                              
 SETTING HLSDIAG(18)    =     -2788.78562582  AU                              
 SETTING HLSDIAG(19)    =     -2788.78562581  AU                              


         HLSDIAG
    -2789.204993
    -2788.788226
    -2788.788226
    -2788.788226
    -2788.788226
    -2788.788226
    -2788.785899
    -2788.785899
    -2788.785899
    -2788.777900
    -2788.795953
    -2788.789630
    -2788.789630
    -2788.789630
    -2788.789630
    -2788.789630
    -2788.785626
    -2788.785626
    -2788.785626
                                                  

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

 Time for Seward_LS:       7.48 sec

 CPU time:      7.49 sec, REAL time:      7.79 sec


 SORTLS1 read    14261546. and wrote    14261546. SO integrals in    84 records. CPU time:      0.10 sec, REAL time:      0.22 sec
 SORTLS2 read    14261546. and wrote    69083406. SO integrals in    42 records. CPU time:      0.02 sec, REAL time:      0.14 sec

 FILE SIZES: FILE 1:    51.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    51.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3552.46       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     33534.00      9.10  19801.97  13716.19      5.10      0.08      1.28
 REAL TIME  *     33948.52 SEC
 DISK USED  *         3.52 GB (local),       50.10 GB (total)
 SF USED    *        21.80 GB
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

 Original energies:  -2789.144317  -2788.736558  -2788.736558  -2788.736558  -2788.736558  -2788.736558  -2788.734031  -2788.734031
                     -2788.734031  -2788.724808
 Replaced energies:  -2789.204993  -2788.788226  -2788.788226  -2788.788226  -2788.788226  -2788.788226  -2788.785899  -2788.785899
                     -2788.785899  -2788.777900

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.744442  -2788.738017  -2788.738017  -2788.738017  -2788.738017  -2788.738017  -2788.733956  -2788.733956
                     -2788.733956
 Replaced energies:  -2788.795953  -2788.789630  -2788.789630  -2788.789630  -2788.789630  -2788.789630  -2788.785626  -2788.785626
                     -2788.785626



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.20499295

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   91469.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   91469.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   91469.86       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   91469.86       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   91469.77       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   91980.43       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91980.43       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91980.44       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   93735.98
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00     -31.64    1041.01      -7.71       0.00
                            0.00       0.00       0.01      -0.00      -0.00       0.00      -2.85      -7.80   -1041.48       0.00

   12   2.1  1.0  1.0       0.00     -11.29      -3.71    -209.29   -1046.19      -9.29      -9.57     450.11      -3.38       0.00
                           -0.00     235.55    1228.05     -10.06      -4.77      -1.61       1.41      -1.98    -277.40      -0.00

   13   3.1  1.0  1.0       0.00       2.21       2.09     170.24     810.22       4.86     -13.33     580.06      -6.19       0.00
                           -0.00     100.31     500.14      -4.35       0.13      -4.21       3.30       7.02     679.99      -0.00

   14   4.1  1.0  1.0       0.00      61.34     585.68    -326.25      65.39     -15.15    -309.19      -0.53     555.38       0.00
                            0.00    -502.22      95.79    -139.66    -572.45     416.94      39.68    -553.52       7.13       0.00

   15   5.1  1.0  1.0       0.00    -152.08    -311.15    -572.66     117.41     -34.68    -553.40     -14.23    -309.95       0.00
                            0.00    -884.83     172.96      22.71     332.69     751.53      35.68     312.79      -1.02       0.00

   16   6.1  1.0  1.0      -0.00    1240.01    -235.24     -60.78      -0.23     467.57     -50.62       1.88      -2.10      -0.00
                            0.00     -76.45      24.10     660.23    -132.59      68.89    -633.80     -17.02       2.72       0.00

   17   7.1  1.0  1.0     114.70      65.89      66.47    -602.65     123.50    -149.46    -651.46     -19.16      86.97     217.68
                          510.96     444.84     -84.96    -122.68     100.24     546.71     143.71      89.45      -1.06     969.69

   18   8.1  1.0  1.0    -514.97    -246.21      38.47    -136.70      24.50     670.59    -148.06      -4.53      -4.22    -977.30
                          116.08     104.39     -16.57     605.16    -129.68     124.39    -656.67     -24.60       1.98     220.30

   19   9.1  1.0  1.0     -18.19     107.10     621.06      71.76     -18.25      25.72      83.74       7.49     667.95     -34.52
                          -64.22     -51.65      13.39     147.97     613.46     -64.10     -43.50     667.18      -4.88    -121.88

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.01       0.00       0.00   -1472.24     -44.72       4.36      -0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.81      -2.05     255.43     -45.89       0.07    1028.71      25.45       0.07      -0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       8.81       6.24    1855.14    -372.51      -4.52    -140.88     -10.35       2.57      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     264.73     -92.04     -86.37    -471.95    1637.91     -10.91     439.50      29.04       0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -171.82     -38.41    -153.75    -807.40    -928.41     -18.67     781.82      58.06      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     172.73     935.76     -14.78     -79.58      -4.10      -1.00      64.82    -897.15      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           94.25     -85.40     219.04     173.44     851.16      28.88      27.45    -923.17    -200.16     178.87

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.16    -152.14    -861.62      44.94     197.12      -2.56       8.91    -202.42     930.81      -9.80

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          740.58   -1003.27     154.29     -16.42    -103.31     171.95      -3.43     116.08      31.96    1405.45

   29   1.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00       0.00     -31.64    1041.01      -7.71       0.00
                           -0.00      -0.00      -0.01       0.00       0.00      -0.00       2.85       7.80    1041.48      -0.00

   30   2.1  1.0 -1.0       0.00     -11.29      -3.71    -209.29   -1046.19      -9.29      -9.57     450.11      -3.38       0.00
                            0.00    -235.55   -1228.05      10.06       4.77       1.61      -1.41       1.98     277.40       0.00

   31   3.1  1.0 -1.0       0.00       2.21       2.09     170.24     810.22       4.86     -13.33     580.06      -6.19       0.00
                            0.00    -100.31    -500.14       4.35      -0.13       4.21      -3.30      -7.02    -679.99       0.00

   32   4.1  1.0 -1.0       0.00      61.34     585.68    -326.25      65.39     -15.15    -309.19      -0.53     555.38       0.00
                           -0.00     502.22     -95.79     139.66     572.45    -416.94     -39.68     553.52      -7.13      -0.00

   33   5.1  1.0 -1.0       0.00    -152.08    -311.15    -572.66     117.41     -34.68    -553.40     -14.23    -309.95       0.00
                           -0.00     884.83    -172.96     -22.71    -332.69    -751.53     -35.68    -312.79       1.02      -0.00

   34   6.1  1.0 -1.0      -0.00    1240.01    -235.24     -60.78      -0.23     467.57     -50.62       1.88      -2.10      -0.00
                           -0.00      76.45     -24.10    -660.23     132.59     -68.89     633.80      17.02      -2.72      -0.00

   35   7.1  1.0 -1.0     114.70      65.89      66.47    -602.65     123.50    -149.46    -651.46     -19.16      86.97     217.68
                         -510.96    -444.84      84.96     122.68    -100.24    -546.71    -143.71     -89.45       1.06    -969.69

   36   8.1  1.0 -1.0    -514.97    -246.21      38.47    -136.70      24.50     670.59    -148.06      -4.53      -4.22    -977.30
                         -116.08    -104.39      16.57    -605.16     129.68    -124.39     656.67      24.60      -1.98    -220.30

   37   9.1  1.0 -1.0     -18.19     107.10     621.06      71.76     -18.25      25.72      83.74       7.49     667.95     -34.52
                           64.22      51.65     -13.39    -147.97    -613.46      64.10      43.50    -667.18       4.88     121.88


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     114.70    -514.97     -18.19       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00    -510.96    -116.08      64.22       0.00

    2   2.1  0.0  0.0      -0.00     -11.29       2.21      61.34    -152.08    1240.01      65.89    -246.21     107.10       0.00
                           -0.00    -235.55    -100.31     502.22     884.83      76.45    -444.84    -104.39      51.65      -0.00

    3   3.1  0.0  0.0      -0.00      -3.71       2.09     585.68    -311.15    -235.24      66.47      38.47     621.06       0.00
                           -0.01   -1228.05    -500.14     -95.79    -172.96     -24.10      84.96      16.57     -13.39      -0.00

    4   4.1  0.0  0.0       0.00    -209.29     170.24    -326.25    -572.66     -60.78    -602.65    -136.70      71.76       0.00
                            0.00      10.06       4.35     139.66     -22.71    -660.23     122.68    -605.16    -147.97       0.01

    5   5.1  0.0  0.0       0.00   -1046.19     810.22      65.39     117.41      -0.23     123.50      24.50     -18.25       0.00
                            0.00       4.77      -0.13     572.45    -332.69     132.59    -100.24     129.68    -613.46      -0.00

    6   6.1  0.0  0.0       0.00      -9.29       4.86     -15.15     -34.68     467.57    -149.46     670.59      25.72       0.00
                           -0.00       1.61       4.21    -416.94    -751.53     -68.89    -546.71    -124.39      64.10      -0.00

    7   7.1  0.0  0.0     -31.64      -9.57     -13.33    -309.19    -553.40     -50.62    -651.46    -148.06      83.74       0.00
                            2.85      -1.41      -3.30     -39.68     -35.68     633.80    -143.71     656.67      43.50    1472.24

    8   8.1  0.0  0.0    1041.01     450.11     580.06      -0.53     -14.23       1.88     -19.16      -4.53       7.49       0.00
                            7.80       1.98      -7.02     553.52    -312.79      17.02     -89.45      24.60    -667.18      44.72

    9   9.1  0.0  0.0      -7.71      -3.38      -6.19     555.38    -309.95      -2.10      86.97      -4.22     667.95       0.00
                         1041.48     277.40    -679.99      -7.13       1.02      -2.72       1.06      -1.98       4.88      -4.36

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     217.68    -977.30     -34.52       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00    -969.69    -220.30     121.88       0.00

   11   1.1  1.0  1.0   89773.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00    -196.60      10.77   -1544.71      -0.00

   12   2.1  1.0  1.0       0.00   91161.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.62     211.82    -123.07       4.71     142.12     -12.83    1080.80       0.00

   13   3.1  1.0  1.0       0.00       0.00   91161.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.62       0.00    1556.25    -877.33      -0.30     -15.31      -4.77    -148.81       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   91161.69       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -211.82   -1556.25      -0.00     -10.09    -446.95     -67.71     461.62      14.35      -0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   91161.70       0.00       0.00       0.00       0.00      -0.00
                           -0.00     123.07     877.33      10.09      -0.00    -783.07    -113.77     822.58      25.45      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   91161.70       0.00       0.00       0.00       0.00
                           -0.00      -4.71       0.30     446.95     783.07       0.00    -935.41    -135.05     121.99      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   92040.45       0.00       0.00    -239.26
                          196.60    -142.12      15.31      67.71     113.77     935.41       0.00    -891.37      -6.21   -1065.80

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92040.45       0.00    1074.16
                          -10.77      12.83       4.77    -461.62    -822.58     135.05     891.37       0.00    -113.45    -242.13

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92040.45      37.94
                         1544.71   -1080.80     148.81     -14.35     -25.45    -121.99       6.21     113.45       0.00     133.96

   20   1.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.00       0.00    -239.26    1074.16      37.94   89773.93
                            0.00      -0.00      -0.00       0.00       0.00       0.00    1065.80     242.13    -133.96       0.00

   21   2.1  1.0  0.0       0.00       0.00       5.02      39.75      69.47   -1004.23    -103.12     465.25      20.76       0.00
                            0.00      -0.00       4.87    -574.86   -1026.94     -93.87     284.20      64.61     -38.04      -0.00

   22   3.1  1.0  0.0      -0.00      -5.02       0.00     -25.22     -59.25     779.01    -134.92     599.20      25.95       0.00
                            0.00      -4.87      -0.00    -233.92    -419.09     -40.18    -697.10    -160.36      86.01      -0.00

   23   4.1  1.0  0.0       0.00     -39.75      25.22      -0.00     635.33      46.61     525.97     136.37    -397.83       0.00
                           -0.00     574.86     233.92      -0.00     -52.18     556.40    -133.87     572.53      -3.36      -0.00

   24   5.1  1.0  0.0       0.00     -69.47      59.25    -635.33      -0.00     -25.04    -394.53     -63.49    -540.48       0.00
                           -0.00    1026.94     419.09      52.18       0.00    -306.90      64.23    -321.99     -58.65      -0.00

   25   6.1  1.0  0.0      -0.00    1004.23    -779.01     -46.61      25.04       0.00      -9.83       3.40     -52.69       0.00
                           -0.00      93.87      40.18    -556.40     306.90       0.00      84.43      -7.14     666.36      -0.00

   26   7.1  1.0  0.0     239.25     103.12     134.92    -525.96     394.52       9.82       0.00      21.89    -619.83       0.00
                        -1065.77    -284.19     697.08     133.87     -64.23     -84.43       0.00     -77.30    -139.72      -0.00

   27   8.1  1.0  0.0   -1074.13    -465.23    -599.18    -136.37      63.49      -3.40     -21.89       0.00    -138.06       0.00
                         -242.12     -64.61     160.35    -572.51     321.98       7.14      77.30       0.00     615.00      -0.00

   28   9.1  1.0  0.0     -37.94     -20.76     -25.95     397.82     540.47      52.69     619.83     138.06       0.00       0.00
                          133.96      38.04     -86.01       3.36      58.65    -666.34     139.72    -615.00      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     239.25
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1065.77

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1074.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -242.12

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -37.94
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     133.96


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     -94.25       5.16    -740.58       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -11.29
                           -0.81      -8.81    -264.73     171.82    -172.73      85.40     152.14    1003.27       0.00     235.55

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.71
                            2.05      -6.24      92.04      38.41    -935.76    -219.04     861.62    -154.29       0.01    1228.05

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -209.29
                         -255.43   -1855.14      86.37     153.75      14.78    -173.44     -44.94      16.42      -0.00     -10.06

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1046.19
                           45.89     372.51     471.95     807.40      79.58    -851.16    -197.12     103.31      -0.00      -4.77

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -9.29
                           -0.07       4.52   -1637.91     928.41       4.10     -28.88       2.56    -171.95       0.00      -1.61

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -31.64      -9.57
                        -1028.71     140.88      10.91      18.67       1.00     -27.45      -8.91       3.43      -2.85       1.41

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1041.01     450.11
                          -25.45      10.35    -439.50    -781.82     -64.82     923.17     202.42    -116.08      -7.80      -1.98

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -7.71      -3.38
                           -0.07      -2.57     -29.04     -58.06     897.15     200.16    -930.81     -31.96   -1041.48    -277.40

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00    -178.87       9.80   -1405.45       0.00      -0.00

   11   1.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00     239.25   -1074.13     -37.94       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1065.77     242.12    -133.96       0.00       0.00

   12   2.1  1.0  1.0       0.00      -5.02     -39.75     -69.47    1004.23     103.12    -465.23     -20.76       0.00       0.00
                            0.00       4.87    -574.86   -1026.94     -93.87     284.19      64.61     -38.04       0.00       0.00

   13   3.1  1.0  1.0       5.02       0.00      25.22      59.25    -779.01     134.92    -599.18     -25.95       0.00       0.00
                           -4.87       0.00    -233.92    -419.09     -40.18    -697.08    -160.35      86.01       0.00       0.00

   14   4.1  1.0  1.0      39.75     -25.22      -0.00    -635.33     -46.61    -525.96    -136.37     397.82       0.00       0.00
                          574.86     233.92       0.00     -52.18     556.40    -133.87     572.51      -3.36       0.00       0.00

   15   5.1  1.0  1.0      69.47     -59.25     635.33      -0.00      25.04     394.52      63.49     540.47       0.00       0.00
                         1026.94     419.09      52.18      -0.00    -306.90      64.23    -321.98     -58.65       0.00       0.00

   16   6.1  1.0  1.0   -1004.23     779.01      46.61     -25.04       0.00       9.82      -3.40      52.69       0.00       0.00
                           93.87      40.18    -556.40     306.90      -0.00      84.43      -7.14     666.34       0.00       0.00

   17   7.1  1.0  1.0    -103.12    -134.92     525.97    -394.53      -9.83       0.00     -21.89     619.83       0.00       0.00
                         -284.20     697.10     133.87     -64.23     -84.43      -0.00     -77.30    -139.72       0.00       0.00

   18   8.1  1.0  1.0     465.25     599.20     136.37     -63.49       3.40      21.89       0.00     138.06       0.00       0.00
                          -64.61     160.36    -572.53     321.99       7.14      77.30      -0.00     615.00       0.00       0.00

   19   9.1  1.0  1.0      20.76      25.95    -397.83    -540.48     -52.69    -619.83    -138.06       0.00       0.00       0.00
                           38.04     -86.01       3.36      58.65    -666.36     139.72    -615.00       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   21   2.1  1.0  0.0   91161.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   3.1  1.0  0.0       0.00   91161.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.02
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.87

   23   4.1  1.0  0.0       0.00       0.00   91161.69       0.00       0.00       0.00       0.00       0.00       0.00      39.75
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     574.86

   24   5.1  1.0  0.0       0.00       0.00       0.00   91161.70       0.00       0.00       0.00       0.00      -0.00      69.47
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    1026.94

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   91161.70       0.00       0.00       0.00       0.00   -1004.23
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      93.87

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   92040.45       0.00       0.00    -239.26    -103.12
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1065.80    -284.20

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   92040.45       0.00    1074.16     465.25
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -242.13     -64.61

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92040.45      37.94      20.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     133.96      38.04

   29   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00    -239.26    1074.16      37.94   89773.93       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1065.80     242.13    -133.96       0.00      -0.00

   30   2.1  1.0 -1.0       0.00       5.02      39.75      69.47   -1004.23    -103.12     465.25      20.76       0.00   91161.70
                           -0.00       4.87    -574.86   -1026.94     -93.87     284.20      64.61     -38.04       0.00       0.00

   31   3.1  1.0 -1.0      -5.02       0.00     -25.22     -59.25     779.01    -134.92     599.20      25.95       0.00       0.00
                           -4.87      -0.00    -233.92    -419.09     -40.18    -697.10    -160.36      86.01       0.00      -0.62

   32   4.1  1.0 -1.0     -39.75      25.22      -0.00     635.33      46.61     525.97     136.37    -397.83       0.00       0.00
                          574.86     233.92      -0.00     -52.18     556.40    -133.87     572.53      -3.36      -0.00     211.82

   33   5.1  1.0 -1.0     -69.47      59.25    -635.33      -0.00     -25.04    -394.53     -63.49    -540.48       0.00       0.00
                         1026.94     419.09      52.18       0.00    -306.90      64.23    -321.99     -58.65       0.00    -123.07

   34   6.1  1.0 -1.0    1004.23    -779.01     -46.61      25.04       0.00      -9.83       3.40     -52.69       0.00       0.00
                           93.87      40.18    -556.40     306.90       0.00      84.43      -7.14     666.36       0.00       4.71

   35   7.1  1.0 -1.0     103.12     134.92    -525.96     394.52       9.82       0.00      21.89    -619.83       0.00       0.00
                         -284.19     697.08     133.87     -64.23     -84.43       0.00     -77.30    -139.72    -196.60     142.12

   36   8.1  1.0 -1.0    -465.23    -599.18    -136.37      63.49      -3.40     -21.89       0.00    -138.06       0.00       0.00
                          -64.61     160.35    -572.51     321.98       7.14      77.30       0.00     615.00      10.77     -12.83

   37   9.1  1.0 -1.0     -20.76     -25.95     397.82     540.47      52.69     619.83     138.06       0.00       0.00       0.00
                           38.04     -86.01       3.36      58.65    -666.34     139.72    -615.00      -0.00   -1544.71    1080.80


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00     114.70    -514.97     -18.19
                           -0.00       0.00       0.00       0.00     510.96     116.08     -64.22

    2   2.1  0.0  0.0       2.21      61.34    -152.08    1240.01      65.89    -246.21     107.10
                          100.31    -502.22    -884.83     -76.45     444.84     104.39     -51.65

    3   3.1  0.0  0.0       2.09     585.68    -311.15    -235.24      66.47      38.47     621.06
                          500.14      95.79     172.96      24.10     -84.96     -16.57      13.39

    4   4.1  0.0  0.0     170.24    -326.25    -572.66     -60.78    -602.65    -136.70      71.76
                           -4.35    -139.66      22.71     660.23    -122.68     605.16     147.97

    5   5.1  0.0  0.0     810.22      65.39     117.41      -0.23     123.50      24.50     -18.25
                            0.13    -572.45     332.69    -132.59     100.24    -129.68     613.46

    6   6.1  0.0  0.0       4.86     -15.15     -34.68     467.57    -149.46     670.59      25.72
                           -4.21     416.94     751.53      68.89     546.71     124.39     -64.10

    7   7.1  0.0  0.0     -13.33    -309.19    -553.40     -50.62    -651.46    -148.06      83.74
                            3.30      39.68      35.68    -633.80     143.71    -656.67     -43.50

    8   8.1  0.0  0.0     580.06      -0.53     -14.23       1.88     -19.16      -4.53       7.49
                            7.02    -553.52     312.79     -17.02      89.45     -24.60     667.18

    9   9.1  0.0  0.0      -6.19     555.38    -309.95      -2.10      86.97      -4.22     667.95
                          679.99       7.13      -1.02       2.72      -1.06       1.98      -4.88

   10  10.1  0.0  0.0       0.00       0.00       0.00      -0.00     217.68    -977.30     -34.52
                           -0.00       0.00       0.00       0.00     969.69     220.30    -121.88

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

   20   1.1  1.0  0.0      -0.00       0.00       0.00      -0.00     239.25   -1074.13     -37.94
                           -0.00       0.00       0.00       0.00    1065.77     242.12    -133.96

   21   2.1  1.0  0.0      -5.02     -39.75     -69.47    1004.23     103.12    -465.23     -20.76
                            4.87    -574.86   -1026.94     -93.87     284.19      64.61     -38.04

   22   3.1  1.0  0.0       0.00      25.22      59.25    -779.01     134.92    -599.18     -25.95
                            0.00    -233.92    -419.09     -40.18    -697.08    -160.35      86.01

   23   4.1  1.0  0.0     -25.22      -0.00    -635.33     -46.61    -525.96    -136.37     397.82
                          233.92       0.00     -52.18     556.40    -133.87     572.51      -3.36

   24   5.1  1.0  0.0     -59.25     635.33      -0.00      25.04     394.52      63.49     540.47
                          419.09      52.18      -0.00    -306.90      64.23    -321.98     -58.65

   25   6.1  1.0  0.0     779.01      46.61     -25.04       0.00       9.82      -3.40      52.69
                           40.18    -556.40     306.90      -0.00      84.43      -7.14     666.34

   26   7.1  1.0  0.0    -134.92     525.97    -394.53      -9.83       0.00     -21.89     619.83
                          697.10     133.87     -64.23     -84.43      -0.00     -77.30    -139.72

   27   8.1  1.0  0.0     599.20     136.37     -63.49       3.40      21.89       0.00     138.06
                          160.36    -572.53     321.99       7.14      77.30      -0.00     615.00

   28   9.1  1.0  0.0      25.95    -397.83    -540.48     -52.69    -619.83    -138.06       0.00
                          -86.01       3.36      58.65    -666.36     139.72    -615.00       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     196.60     -10.77    1544.71

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.62    -211.82     123.07      -4.71    -142.12      12.83   -1080.80

   31   3.1  1.0 -1.0   91161.70       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1556.25     877.33       0.30      15.31       4.77     148.81

   32   4.1  1.0 -1.0       0.00   91161.69       0.00       0.00       0.00       0.00       0.00
                         1556.25       0.00      10.09     446.95      67.71    -461.62     -14.35

   33   5.1  1.0 -1.0       0.00       0.00   91161.70       0.00       0.00       0.00       0.00
                         -877.33     -10.09       0.00     783.07     113.77    -822.58     -25.45

   34   6.1  1.0 -1.0       0.00       0.00       0.00   91161.70       0.00       0.00       0.00
                           -0.30    -446.95    -783.07      -0.00     935.41     135.05    -121.99

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   92040.45       0.00       0.00
                          -15.31     -67.71    -113.77    -935.41      -0.00     891.37       6.21

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   92040.45       0.00
                           -4.77     461.62     822.58    -135.05    -891.37      -0.00     113.45

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   92040.45
                         -148.81      14.35      25.45     121.99      -6.21    -113.45      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.20499295 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   91469.764       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   91469.854       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   91469.865       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   91469.863       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   91469.769       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   91980.431       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   91980.432
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000       0.001       0.005       0.000     -44.748    1472.206
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     -15.972      -5.252    -295.977   -1479.540     -13.135     -13.532     636.552
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       3.132       2.956     240.753    1145.829       6.873     -18.851     820.330
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      86.751     828.275    -461.393      92.472     -21.419    -437.254      -0.749
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000    -215.074    -440.033    -809.862     166.041     -49.051    -782.626     -20.125
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000    1753.632    -332.681     -85.950      -0.322     661.241     -71.583       2.652
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            162.217      93.184      94.002    -852.269     174.660    -211.374    -921.304     -27.092
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -728.277    -348.193      54.404    -193.327      34.645     948.357    -209.395      -6.409
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -25.721     151.457     878.317     101.489     -25.803      36.379     118.425      10.592
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.005       0.001       0.000   -1472.241     -44.716

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.812      -2.051     255.425     -45.887       0.072    1028.711      25.452

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       8.809       6.242    1855.135    -372.505      -4.515    -140.883     -10.354

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     264.732     -92.036     -86.370    -471.951    1637.910     -10.909     439.502

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -171.821     -38.412    -153.749    -807.395    -928.412     -18.672     781.823

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     172.732     935.762     -14.782     -79.578      -4.101      -0.998      64.824

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               94.254     -85.400     219.042     173.441     851.156      28.877      27.446    -923.168

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.161    -152.136    -861.616      44.941     197.115      -2.557       8.908    -202.417

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              740.576   -1003.268     154.285     -16.423    -103.306     171.954      -3.431     116.082

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.003       0.017      -0.000      -0.000       0.000      -4.032     -11.026

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     333.114    1736.728     -14.229      -6.739      -2.279       1.997      -2.795

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     141.864     707.311      -6.157       0.187      -5.948       4.661       9.924

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -710.252     135.464    -197.515    -809.570     589.639      56.119    -782.795

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1251.333     244.603      32.110     470.493    1062.825      50.453     442.345

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -108.117      34.084     933.702    -187.508      97.431    -896.327     -24.073

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              722.610     629.102    -120.152    -173.503     141.755     773.165     203.243     126.495

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              164.163     147.623     -23.430     855.829    -183.393     175.912    -928.667     -34.795

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.824     -73.050      18.942     209.257     867.557     -90.655     -61.515     943.530

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.000     -15.972       3.132      86.751    -215.074    1753.632
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000      -5.252       2.956     828.275    -440.033    -332.681
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.001    -295.977     240.753    -461.393    -809.862     -85.950
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.005   -1479.540    1145.829      92.472     166.041      -0.322
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000     -13.135       6.873     -21.419     -49.051     661.241
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     -44.748     -13.532     -18.851    -437.254    -782.626     -71.583
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000    1472.206     636.552     820.330      -0.749     -20.125       2.652
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           91980.438       0.000     -10.898      -4.777      -8.751     785.433    -438.336      -2.965
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   93735.978       0.000       0.000       0.000       0.000       0.000      -0.003
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -10.898       0.000   89773.926       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -4.777       0.000       0.000   91161.700       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -8.751       0.000       0.000       0.000   91161.703       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+            785.433       0.000       0.000       0.000       0.000   91161.694       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           -438.336       0.000       0.000       0.000       0.000       0.000   91161.697       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -2.965      -0.003       0.000       0.000       0.000       0.000       0.000   91161.696
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            123.001     307.852       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -5.965   -1382.109       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            944.628     -48.813       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.001       0.000      -0.001       0.000      -0.000       0.000
                                4.365      -0.000       0.000      -0.000      -0.000       0.001       0.001       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.067      -0.000       0.000       0.000       6.890    -812.973   -1452.314    -132.757

    3    1  |1 0>               0.000       0.000      -0.001      -0.000       0.000      -0.000       0.000       0.000
                                2.573      -0.000       0.000      -6.890       0.000    -330.807    -592.683     -56.830

    4    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               29.039       0.000      -0.001     812.973     330.807       0.000     -73.791     786.866

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.001      -0.000
                               58.063      -0.000      -0.001    1452.314     592.683      73.791       0.000    -434.028

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                             -897.147      -0.000      -0.000     132.757      56.830    -786.866     434.028       0.000

    7    1  |1 0>               0.000       0.000      -0.004      -0.002      -0.003       0.011      -0.008      -0.000
                             -200.161     178.874   -1507.251    -401.908     985.840     189.323     -90.831    -119.404

    8    1  |1 0>               0.000       0.000       0.019       0.009       0.011       0.003      -0.001       0.000
                              930.807      -9.795    -342.417     -91.369     226.774    -809.669     455.360      10.097

    9    1  |1 0>               0.000       0.000       0.001       0.000       0.001      -0.008      -0.011      -0.001
                               31.962    1405.453     189.444      53.797    -121.635       4.757      82.940    -942.363

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1472.880       0.000      -0.000       0.000       0.000      -0.001       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -392.300      -0.000      -0.000      -0.000      -0.621     211.823    -123.068       4.709

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              961.655      -0.000      -0.000       0.621       0.000    1556.252    -877.328      -0.305

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.078       0.001       0.001    -211.823   -1556.252      -0.000     -10.092    -446.954

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.445       0.002      -0.000     123.068     877.328      10.092      -0.000    -783.073

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.853       0.000      -0.000      -4.709       0.305     446.954     783.073       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.503    1371.355     196.597    -142.122      15.312      67.715     113.773     935.412

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.803     311.544     -10.766      12.829       4.767    -461.616    -822.576     135.054

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.895    -172.363    1544.707   -1080.798     148.814     -14.348     -25.447    -121.986

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>             162.217    -728.277     -25.721       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |0 0>              93.184    -348.193     151.457       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.812      -8.809    -264.732     171.821

    3    1  |0 0>              94.002      54.404     878.317       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       2.051      -6.242      92.036      38.412

    4    1  |0 0>            -852.269    -193.327     101.489       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.005    -255.425   -1855.135      86.370     153.749

    5    1  |0 0>             174.660      34.645     -25.803       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001      45.887     372.505     471.951     807.395

    6    1  |0 0>            -211.374     948.357      36.379       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.072       4.515   -1637.910     928.412

    7    1  |0 0>            -921.304    -209.395     118.425       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1472.241   -1028.711     140.883      10.909      18.672

    8    1  |0 0>             -27.092      -6.409      10.592       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      44.716     -25.452      10.354    -439.502    -781.823

    9    1  |0 0>             123.001      -5.965     944.628       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -4.365      -0.067      -2.573     -29.039     -58.063

   10    1  |0 0>             307.852   -1382.109     -48.813       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.001       0.000      -0.001       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.001       0.001

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       6.890    -812.973   -1452.314

    3    1  |1 1>+              0.000       0.000       0.000      -0.001      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -6.890       0.000    -330.807    -592.683

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.001     812.973     330.807       0.000     -73.791

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.001
                                0.000       0.000       0.000      -0.001    1452.314     592.683      73.791       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000     132.757      56.830    -786.866     434.028

    7    1  |1 1>+          92040.449       0.000       0.000      -0.004      -0.002      -0.003       0.011      -0.008
                                0.000       0.000       0.000   -1507.251    -401.908     985.840     189.323     -90.831

    8    1  |1 1>+              0.000   92040.446       0.000       0.019       0.009       0.011       0.003      -0.001
                                0.000       0.000       0.000    -342.417     -91.369     226.774    -809.669     455.360

    9    1  |1 1>+              0.000       0.000   92040.448       0.001       0.000       0.001      -0.008      -0.011
                                0.000       0.000       0.000     189.444      53.797    -121.635       4.757      82.940

    1    1  |1 0>              -0.004       0.019       0.001   89773.926       0.000       0.000       0.000       0.000
                             1507.251     342.417    -189.444       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.002       0.009       0.000       0.000   91161.700       0.000       0.000       0.000
                              401.908      91.369     -53.797      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.003       0.011       0.001       0.000       0.000   91161.703       0.000       0.000
                             -985.840    -226.774     121.635      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.011       0.003      -0.008       0.000       0.000       0.000   91161.694       0.000
                             -189.323     809.669      -4.757      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.008      -0.001      -0.011       0.000       0.000       0.000       0.000   91161.697
                               90.831    -455.360     -82.940      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000      -0.001       0.000       0.000       0.000       0.000       0.000
                              119.404     -10.097     942.363      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -109.317    -197.589      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              109.317       0.000     869.748      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              197.589    -869.748       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.001      -0.000       0.000
                             -196.597      10.766   -1544.707      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -7.103     -56.219     -98.244
                              142.122     -12.829    1080.798      -0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.001       7.103       0.000      35.671      83.799
                              -15.312      -4.767    -148.814       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      56.219     -35.671       0.000    -898.489
                              -67.715     461.616      14.348       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000      98.244     -83.799     898.489       0.000
                             -113.773     822.576      25.447       0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.001   -1420.199    1101.693      65.915     -35.416
                             -935.412    -135.054     121.986      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000    -338.359    -145.836    -190.810     743.825    -557.946
                                0.000    -891.373      -6.212      -0.019      -0.005       0.014       0.002      -0.001

    8    1  |1 1>-              0.000       0.000       0.000    1519.072     657.948     847.381     192.853     -89.783
                              891.373       0.000    -113.446      -0.004      -0.001       0.003      -0.011       0.006

    9    1  |1 1>-              0.000       0.000       0.000      53.651      29.355      36.693    -562.611    -764.347
                                6.212     113.446       0.000       0.002       0.001      -0.002       0.000       0.001

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -94.254       5.161    -740.576      -0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -172.732      85.400     152.136    1003.268      -0.003    -333.114    -141.864     710.252

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -935.762    -219.042     861.616    -154.285      -0.017   -1736.728    -707.311    -135.464

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.782    -173.441     -44.941      16.423       0.000      14.229       6.157     197.515

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               79.578    -851.156    -197.115     103.306       0.000       6.739      -0.187     809.570

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.101     -28.877       2.557    -171.954      -0.000       2.279       5.948    -589.639

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.998     -27.446      -8.908       3.431       4.032      -1.997      -4.661     -56.119

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -64.824     923.168     202.417    -116.082      11.026       2.795      -9.924     782.795

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              897.147     200.161    -930.807     -31.962    1472.880     392.300    -961.655     -10.078

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -178.874       9.795   -1405.453      -0.000       0.000       0.000      -0.001

    1    1  |1 1>+              0.000      -0.004       0.019       0.001       0.000       0.000       0.000       0.000
                                0.000    1507.251     342.417    -189.444      -0.000       0.000       0.000      -0.001

    2    1  |1 1>+             -0.000      -0.002       0.009       0.000       0.000       0.000       0.000       0.000
                             -132.757     401.908      91.369     -53.797      -0.000      -0.000      -0.621     211.823

    3    1  |1 1>+              0.000      -0.003       0.011       0.001       0.000       0.000       0.000       0.000
                              -56.830    -985.840    -226.774     121.635      -0.000       0.621       0.000    1556.252

    4    1  |1 1>+              0.000       0.011       0.003      -0.008       0.000       0.000       0.000       0.000
                              786.866    -189.323     809.669      -4.757       0.001    -211.823   -1556.252      -0.000

    5    1  |1 1>+             -0.000      -0.008      -0.001      -0.011       0.000       0.000       0.000       0.000
                             -434.028      90.831    -455.360     -82.940      -0.000     123.068     877.328      10.092

    6    1  |1 1>+              0.000      -0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000     119.404     -10.097     942.363      -0.000      -4.709       0.305     446.954

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -119.404       0.000    -109.317    -197.589     196.597    -142.122      15.312      67.715

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               10.097     109.317       0.000     869.748     -10.766      12.829       4.767    -461.616

    9    1  |1 1>+             -0.001      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -942.363     197.589    -869.748       0.000    1544.707   -1080.798     148.814     -14.348

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       7.103      56.219
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.001      -7.103       0.000     -35.671
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000     -56.219      35.671       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -98.244      83.799    -898.489
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 0>           91161.696       0.000       0.000       0.000      -0.001    1420.199   -1101.693     -65.915
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000   92040.449       0.000       0.000     338.359     145.836     190.810    -743.825
                               -0.000       0.000       0.000       0.000       0.019       0.005      -0.014      -0.002

    8    1  |1 0>               0.000       0.000   92040.446       0.000   -1519.072    -657.948    -847.381    -192.853
                               -0.000      -0.000       0.000       0.000       0.004       0.001      -0.003       0.011

    9    1  |1 0>               0.000       0.000       0.000   92040.448     -53.651     -29.355     -36.693     562.611
                               -0.000      -0.000      -0.000       0.000      -0.002      -0.001       0.002      -0.000

    1    1  |1 1>-             -0.001     338.359   -1519.072     -53.651   89773.926       0.000       0.000       0.000
                               -0.000      -0.019      -0.004       0.002       0.000       0.000       0.000       0.000

    2    1  |1 1>-           1420.199     145.836    -657.948     -29.355       0.000   91161.700       0.000       0.000
                               -0.000      -0.005      -0.001       0.001       0.000       0.000       0.000       0.000

    3    1  |1 1>-          -1101.693     190.810    -847.381     -36.693       0.000       0.000   91161.703       0.000
                                0.000       0.014       0.003      -0.002       0.000       0.000       0.000       0.000

    4    1  |1 1>-            -65.915    -743.825    -192.853     562.611       0.000       0.000       0.000   91161.694
                               -0.000       0.002      -0.011       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             35.416     557.946      89.783     764.347       0.000       0.000       0.000       0.000
                                0.000      -0.001       0.006       0.001       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      13.895      -4.802      74.519       0.000       0.000       0.000       0.000
                               -0.000      -0.002       0.000      -0.013       0.000       0.000       0.000       0.000

    7    1  |1 1>-            -13.895       0.000     -30.959     876.569       0.000       0.000       0.000       0.000
                               -0.002      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              4.802      30.959       0.000     195.248       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-            -74.519    -876.569    -195.248       0.000       0.000       0.000       0.000       0.000
                               -0.013       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -722.610    -164.163      90.824

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             1251.333     108.117    -629.102    -147.623      73.050

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -244.603     -34.084     120.152      23.430     -18.942

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -32.110    -933.702     173.503    -855.829    -209.257

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -470.493     187.508    -141.755     183.393    -867.557

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                            -1062.825     -97.431    -773.165    -175.912      90.655

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -50.453     896.327    -203.243     928.667      61.515

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -442.345      24.073    -126.495      34.795    -943.530

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                1.445      -3.853       1.503      -2.803       6.895

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.002      -0.000   -1371.355    -311.544     172.363

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -196.597      10.766   -1544.707

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -123.068       4.709     142.122     -12.829    1080.798

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -877.328      -0.305     -15.312      -4.767    -148.814

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -10.092    -446.954     -67.715     461.616      14.348

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000    -783.073    -113.773     822.576      25.447

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              783.073       0.000    -935.412    -135.054     121.986

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              113.773     935.412       0.000    -891.373      -6.212

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -822.576     135.054     891.373       0.000    -113.446

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -25.447    -121.986       6.212     113.446       0.000

    1    1  |1 0>              -0.000       0.001    -338.359    1519.072      53.651
                               -0.000       0.000       0.019       0.004      -0.002

    2    1  |1 0>              98.244   -1420.199    -145.836     657.948      29.355
                                0.000       0.000       0.005       0.001      -0.001

    3    1  |1 0>             -83.799    1101.693    -190.810     847.381      36.693
                               -0.000      -0.000      -0.014      -0.003       0.002

    4    1  |1 0>             898.489      65.915     743.825     192.853    -562.611
                               -0.000       0.000      -0.002       0.011      -0.000

    5    1  |1 0>               0.000     -35.416    -557.946     -89.783    -764.347
                                0.000      -0.000       0.001      -0.006      -0.001

    6    1  |1 0>              35.416       0.000     -13.895       4.802     -74.519
                               -0.000       0.000       0.002      -0.000       0.013

    7    1  |1 0>             557.946      13.895       0.000      30.959    -876.569
                                0.001       0.002       0.000      -0.000      -0.000

    8    1  |1 0>              89.783      -4.802     -30.959       0.000    -195.248
                               -0.006      -0.000      -0.000       0.000       0.000

    9    1  |1 0>             764.347      74.519     876.569     195.248       0.000
                               -0.001       0.013      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          91161.697       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   91161.696       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   92040.449       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   92040.446       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   92040.448
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2789.20507418    -0.00008123      -17.83      0.00000000        0.00      0.0000
    2 -2788.80187166     0.40312129    88474.90      0.40320252    88492.72     10.9717
    3 -2788.80187166     0.40312129    88474.90      0.40320252    88492.72     10.9717
    4 -2788.80187157     0.40312137    88474.91      0.40320260    88492.74     10.9717
    5 -2788.79784601     0.40714694    89358.42      0.40722817    89376.25     11.0812
    6 -2788.79784600     0.40714694    89358.43      0.40722817    89376.25     11.0812
    7 -2788.79784600     0.40714695    89358.43      0.40722818    89376.25     11.0812
    8 -2788.79784600     0.40714695    89358.43      0.40722818    89376.25     11.0812
    9 -2788.79784599     0.40714695    89358.43      0.40722818    89376.26     11.0812
   10 -2788.79784599     0.40714696    89358.43      0.40722819    89376.26     11.0812
   11 -2788.79784599     0.40714696    89358.43      0.40722819    89376.26     11.0812
   12 -2788.79772074     0.40727220    89385.92      0.40735343    89403.74     11.0847
   13 -2788.79772073     0.40727221    89385.92      0.40735344    89403.75     11.0847
   14 -2788.79772056     0.40727239    89385.96      0.40735362    89403.79     11.0847
   15 -2788.79772053     0.40727242    89385.96      0.40735365    89403.79     11.0847
   16 -2788.79772053     0.40727242    89385.96      0.40735365    89403.79     11.0847
   17 -2788.79511783     0.40987512    89957.19      0.40995635    89975.02     11.1555
   18 -2788.79511779     0.40987516    89957.20      0.40995639    89975.03     11.1555
   19 -2788.79511775     0.40987519    89957.21      0.40995642    89975.03     11.1555
   20 -2788.79447889     0.41051406    90097.42      0.41059529    90115.25     11.1729
   21 -2788.79447889     0.41051406    90097.42      0.41059529    90115.25     11.1729
   22 -2788.79447882     0.41051412    90097.44      0.41059535    90115.26     11.1729
   23 -2788.79447879     0.41051416    90097.44      0.41059538    90115.27     11.1729
   24 -2788.79447879     0.41051416    90097.44      0.41059539    90115.27     11.1729
   25 -2788.78881177     0.41618117    91341.21      0.41626240    91359.04     11.3271
   26 -2788.77246884     0.43252411    94928.07      0.43260534    94945.90     11.7718
   27 -2788.77246884     0.43252411    94928.07      0.43260534    94945.90     11.7718
   28 -2788.77246881     0.43252414    94928.08      0.43260537    94945.90     11.7718
   29 -2788.77126802     0.43372493    95191.62      0.43380616    95209.45     11.8045
   30 -2788.77126801     0.43372494    95191.62      0.43380617    95209.45     11.8045
   31 -2788.77126787     0.43372508    95191.65      0.43380631    95209.48     11.8045
   32 -2788.77126783     0.43372512    95191.66      0.43380635    95209.49     11.8045
   33 -2788.77126782     0.43372512    95191.66      0.43380635    95209.49     11.8045
   34 -2788.77123066     0.43376229    95199.82      0.43384352    95217.65     11.8055
   35 -2788.77123063     0.43376232    95199.83      0.43384355    95217.65     11.8055
   36 -2788.77123061     0.43376233    95199.83      0.43384356    95217.66     11.8055
   37 -2788.76644471     0.43854823    96250.21      0.43862946    96268.04     11.9357

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99990491  0.00000006  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000074 -0.00000059  0.00000004 -0.00000054 -0.00001362  0.00001468  0.00003689
                          -0.00000000 -0.00000022  0.00000028  0.00000057  0.00000194  0.00000104  0.00000093 -0.00000810

   3    1  |0 0>          -0.00000000  0.00000011  0.00000015  0.00000001  0.00000083 -0.00007622  0.00001686 -0.00000422
                          -0.00000000 -0.00000120  0.00000161  0.00000317  0.00000410 -0.00002643  0.00003126 -0.00000111

   4    1  |0 0>          -0.00000000 -0.00000016  0.00000015  0.00000000  0.00000125  0.00000563  0.00001515 -0.00000302
                          -0.00000000 -0.00000075 -0.00000058  0.00000049 -0.00003699  0.00001022  0.00000038  0.00002971

   5    1  |0 0>           0.00000000 -0.00000094  0.00000088 -0.00000010  0.00000390 -0.00001057  0.00006166 -0.00001381
                          -0.00000000  0.00000018  0.00000010 -0.00000010  0.00000637  0.00004286 -0.00002980 -0.00000619

   6    1  |0 0>          -0.00000000  0.00000022  0.00000013  0.00000003  0.00005910  0.00000408 -0.00000993  0.00002174
                          -0.00000000 -0.00000007  0.00000002  0.00000002 -0.00000128 -0.00000910  0.00000092  0.00000465

   7    1  |0 0>          -0.00000000  0.00274088 -0.00338916  0.00479550 -0.00000015 -0.00000014  0.00000005  0.00000048
                           0.00000000 -0.17250124 -0.13839650  0.00610964  0.00000017  0.00000009  0.00000036  0.00000212

   8    1  |0 0>          -0.00000000 -0.10079193  0.11858001 -0.15717419  0.00000121 -0.00000012 -0.00000273  0.00000023
                           0.00000000 -0.00207455 -0.00780995 -0.00112791 -0.00000008 -0.00000044  0.00000094  0.00000010

   9    1  |0 0>          -0.00000000  0.00370010 -0.00414390  0.00058538 -0.00000003  0.00000274 -0.00000032  0.00000048
                          -0.00000000  0.09512342 -0.12524087 -0.15564503 -0.00000023  0.00000102  0.00000008 -0.00000070

  10    1  |0 0>           0.00036084 -0.00000176 -0.00000141  0.00000007  0.00000017  0.00000001  0.00000002 -0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.40888538 -0.48106156  0.63751480 -0.00000033  0.00000019  0.00000243  0.00000003
                           0.00000000 -0.00998649  0.01084500  0.00065401  0.00000002  0.00000022 -0.00000092 -0.00000003

   2    1  |1 1>+         -0.00000000 -0.00345679  0.00406682 -0.00539181  0.05804419 -0.02113642 -0.40753023  0.06576085
                           0.00000000  0.00003009 -0.00013462 -0.00000307 -0.01709133 -0.05271850  0.14580166  0.01000487

   3    1  |1 1>+         -0.00000000 -0.00445975  0.00524815 -0.00695200  0.08660492  0.02725358  0.32404477 -0.09661479
                           0.00000000  0.00003867 -0.00014558  0.00001737 -0.00980004  0.00462965 -0.13007929 -0.04317778

   4    1  |1 1>+         -0.00000000  0.00009610 -0.00010028 -0.00008185 -0.04806770  0.50125142  0.00742222 -0.07318008
                          -0.00000000  0.00808910 -0.00204067 -0.00673048 -0.04969086  0.19491064  0.06050228  0.04923889

   5    1  |1 1>+         -0.00000000 -0.00009351  0.00011230 -0.00004560 -0.01426197 -0.12837390  0.10376119 -0.04362651
                          -0.00000000  0.00502829  0.00880171  0.00341929  0.04998461 -0.05120553  0.03658382  0.08987083

   6    1  |1 1>+          0.00000000 -0.00002712  0.00002939 -0.00004097  0.56627489  0.05186381 -0.00096569 -0.02343221
                          -0.00000000  0.00064967  0.00055259  0.00000113  0.00922805 -0.03497051  0.02721532  0.01810084

   7    1  |1 1>+         -0.00172939  0.00084569 -0.00076620 -0.00011240 -0.00000442 -0.00000230  0.00000177 -0.00000088
                          -0.00000000  0.21824461  0.14361030 -0.03163688  0.00001510  0.00000134  0.00000186  0.00000031

   8    1  |1 1>+          0.00776414  0.00005944 -0.00003624 -0.00000028  0.00001873  0.00000230 -0.00000191  0.00000264
                          -0.00000000  0.04547792  0.03807423 -0.00043954  0.00000296 -0.00000432 -0.00000055  0.00000289

   9    1  |1 1>+          0.00027421  0.00351875 -0.00391235 -0.00069552  0.00000075 -0.00001915  0.00000643  0.00000031
                           0.00000000  0.08874072 -0.17232813 -0.18707985 -0.00000142 -0.00000617  0.00001273 -0.00000153

   1    1  |1 0>          -0.00000000  0.70044046  0.56029287 -0.02649001 -0.00000010  0.00000010 -0.00000058 -0.00000234
                           0.00000000 -0.00134314  0.00091076  0.00008068 -0.00000009 -0.00000043  0.00000014  0.00000063

   2    1  |1 0>          -0.00000000  0.00956552  0.00768322 -0.00033677  0.00372848 -0.01364633  0.04063609  0.45420223
                          -0.00000000  0.00001373 -0.00002526  0.00005025  0.01551580  0.09051306  0.00726515 -0.09877834

   3    1  |1 0>           0.00000000 -0.00132393 -0.00103749  0.00006857 -0.02502415 -0.04045407 -0.10318639 -0.46670664
                           0.00000000  0.00003590 -0.00004095  0.00005135 -0.00064396  0.07743344  0.09172906 -0.00512003

   4    1  |1 0>          -0.00000000 -0.00020111  0.00029956  0.00027382 -0.00417322 -0.05600059  0.11165096  0.01455596
                          -0.00000000 -0.00238230  0.00280301 -0.00372398 -0.52019700 -0.04263938  0.26191023 -0.03071629

   5    1  |1 0>          -0.00000000 -0.00038358  0.00058145  0.00054060 -0.02298118 -0.02025158  0.15420433  0.00792332
                           0.00000000 -0.00423627  0.00498455 -0.00662399  0.23163508  0.00718358  0.44944653 -0.09077836

   6    1  |1 0>          -0.00000000  0.00459487 -0.00603314 -0.00751950  0.05070717 -0.20666860 -0.01579916  0.05906689
                           0.00000000 -0.00053099  0.00061453 -0.00057754 -0.02449749  0.54523965 -0.01568852  0.04188287

   7    1  |1 0>          -0.00000000  0.02795183 -0.03641747 -0.04138069  0.00000047 -0.00001409  0.00000381 -0.00000073
                          -0.00100484  0.11812807 -0.13903653  0.18554394  0.00000193 -0.00000801  0.00001387 -0.00000371

   8    1  |1 0>           0.00000000 -0.11179208  0.14862103  0.18488256  0.00000038 -0.00000834  0.00001427 -0.00000147
                           0.00005503  0.03052300 -0.03566286  0.04143026  0.00000039  0.00001524 -0.00000328 -0.00000096

   9    1  |1 0>          -0.00000000 -0.00433660  0.00567074  0.00655512  0.00000052  0.00000460 -0.00000144 -0.00000340
                          -0.00789526 -0.01482419  0.01744480 -0.02332566  0.00000143  0.00000130 -0.00000537 -0.00001507

   1    1  |1 1>-          0.00000000 -0.38366710  0.50951675  0.63096630  0.00000026 -0.00000081  0.00000001  0.00000097
                          -0.00000000  0.01197218 -0.01323881 -0.00234360 -0.00000002  0.00000217 -0.00000033  0.00000014

   2    1  |1 1>-         -0.00000000  0.00202592 -0.00262926 -0.00328821 -0.05063174  0.18602269  0.02868763 -0.04776339
                           0.00000000 -0.00006262  0.00006927  0.00001181  0.01891617 -0.49771824  0.05166727 -0.03326553

   3    1  |1 1>-         -0.00000000 -0.00488522  0.00652769  0.00806295 -0.03509304  0.06893960  0.01529191  0.03240948
                           0.00000000  0.00013853 -0.00015219 -0.00005249  0.01911854 -0.16172905  0.00852615  0.07270506

   4    1  |1 1>-         -0.00000000  0.00038236  0.00015701  0.00001846 -0.00230939 -0.00690312  0.16115009  0.01381839
                          -0.00000000  0.00426253 -0.00501339  0.00664322  0.33583509  0.05538556  0.45712431 -0.12242565

   5    1  |1 1>-         -0.00000000  0.00052569  0.00055256 -0.00000179 -0.01050291  0.04575875 -0.12714962 -0.08274465
                          -0.00000000 -0.00239403  0.00281837 -0.00373267  0.45882787  0.01710498 -0.25662855  0.05240006

   6    1  |1 1>-          0.00000000 -0.00835161 -0.00666672  0.00032548  0.02733036  0.04182820  0.12447554  0.69368308
                          -0.00000000 -0.00000073  0.00000909 -0.00002760  0.05441699 -0.04287786 -0.09908290 -0.03805381

   7    1  |1 1>-         -0.00000000  0.04534760  0.03698856 -0.00170450 -0.00000341 -0.00000044  0.00000242  0.00000079
                          -0.00770372 -0.01559239  0.01830967 -0.02417647  0.00001691  0.00000137  0.00000350  0.00001721

   8    1  |1 1>-          0.00000000 -0.20526908 -0.16423699  0.00776242  0.00001489  0.00000149  0.00000039 -0.00000057
                          -0.00175013  0.00124394 -0.00126533  0.00130052  0.00000396 -0.00000024 -0.00000047  0.00000460

   9    1  |1 1>-          0.00000000 -0.01022667 -0.00256764  0.00046913  0.00000089 -0.00001652  0.00000740 -0.00000067
                           0.00096827 -0.12184482  0.14335849 -0.19000048 -0.00000153 -0.00000470  0.00001512 -0.00000468

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000001  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00002574  0.00000709  0.00000732  0.69165209 -0.00336326 -0.00428740  0.00185988  0.00175761
                          -0.00001451 -0.00001072  0.00000313 -0.00523557 -0.00713907  0.00052495 -0.00101423 -0.00947507

   3    1  |0 0>          -0.00001543 -0.00000594 -0.00000098  0.00292208 -0.00124539  0.65210452  0.21861849  0.03790741
                          -0.00000011 -0.00002795 -0.00000418 -0.00009217  0.00000414  0.04349418  0.03360589 -0.03255420

   4    1  |0 0>          -0.00000067  0.00000120  0.00000039 -0.00034618 -0.00418755 -0.00869866 -0.05903732  0.67227518
                          -0.00001284  0.00000523 -0.00000314 -0.00981501 -0.04855209 -0.03609770 -0.02699325  0.13616767

   5    1  |0 0>          -0.00001153  0.00001213  0.00002295  0.00222169 -0.00561859  0.01015818 -0.07650184 -0.00332343
                           0.00001423 -0.00000018  0.00000204 -0.00301271  0.01015425 -0.22343210  0.64757747  0.05626564

   6    1  |0 0>          -0.00003034 -0.00000723 -0.00001344  0.00220267  0.68838396  0.00185841 -0.01144663  0.00966327
                           0.00000721  0.00000585  0.00000033 -0.00737381 -0.04625720 -0.00127513  0.00896514 -0.04696283

   7    1  |0 0>           0.00000102  0.00000017 -0.00000009 -0.00000001  0.00000001 -0.00000010  0.00000020 -0.00000102
                           0.00000233  0.00000006  0.00000078 -0.00000016  0.00000027  0.00000003  0.00000015 -0.00000022

   8    1  |0 0>           0.00000010  0.00000466 -0.00000118  0.00000033  0.00000018  0.00000007 -0.00000032  0.00000053
                          -0.00000095 -0.00000095  0.00000020 -0.00000005  0.00000006 -0.00000101  0.00000249  0.00000018

   9    1  |0 0>           0.00000040  0.00000038 -0.00000006  0.00000156  0.00000002  0.00000801  0.00000263  0.00000034
                           0.00000241 -0.00000134 -0.00000442 -0.00000003 -0.00000003  0.00000052  0.00000037 -0.00000043

  10    1  |0 0>           0.00000004 -0.00000005  0.00000004  0.00000102 -0.00000021 -0.00000019 -0.00000006 -0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000012 -0.00000170  0.00000043 -0.00000008 -0.00000006  0.00000006  0.00000066 -0.00000092
                           0.00000056  0.00000035 -0.00000001 -0.00000032 -0.00000005 -0.00000048 -0.00000397 -0.00000002

   2    1  |1 1>+         -0.02676485  0.44882493 -0.11987706  0.00620826 -0.00026003  0.00689161 -0.05638910  0.08456652
                          -0.10780520 -0.07895880  0.02137520 -0.00329126 -0.00002666 -0.14840684  0.41341392  0.05333472

   3    1  |1 1>+          0.06133259  0.56680379 -0.11490527 -0.00203546  0.00119628 -0.00498824  0.04406559 -0.06882936
                          -0.04911944 -0.12360046  0.04842307  0.00255815  0.00017344  0.11509270 -0.32002767 -0.04211356

   4    1  |1 1>+         -0.10697188 -0.04313542 -0.01199286 -0.02727662  0.00637628 -0.23684401 -0.08769693  0.12140153
                          -0.35437556  0.09406899  0.28234538 -0.00167174 -0.01033350 -0.01395842 -0.04344511  0.03671067

   5    1  |1 1>+         -0.15419418 -0.04215670 -0.01184225  0.06501893  0.01306376  0.12062130  0.02650345  0.24466573
                          -0.50509180 -0.04774278 -0.45316763 -0.00388061 -0.01953438  0.01175768 -0.04974754  0.03578193

   6    1  |1 1>+         -0.00120560 -0.07678160  0.03652783 -0.52776066 -0.19580693  0.09677507  0.03128343  0.02650256
                          -0.03112459  0.00177243 -0.00986308  0.00573637  0.01693389  0.00487874  0.00214262  0.02108637

   7    1  |1 1>+          0.00000211  0.00000016  0.00000147  0.01192237 -0.02631674  0.01279823  0.01103440 -0.10500669
                          -0.00000268 -0.00000386  0.00000039  0.00163490  0.00960654 -0.00070748  0.02520834 -0.01840890

   8    1  |1 1>+         -0.00001636 -0.00000278 -0.00000623 -0.04377186  0.12016942  0.00748512  0.00168332 -0.02193966
                           0.00000495  0.00000212  0.00000001 -0.00062072 -0.00580715  0.00003888  0.00703859 -0.01236331

   9    1  |1 1>+         -0.00000448 -0.00000230  0.00000007  0.01970106  0.00425178  0.10485838  0.03449374  0.01877128
                          -0.00000205 -0.00000959  0.00000571 -0.00037834 -0.00146086  0.00740701  0.00187983 -0.00355544

   1    1  |1 0>          -0.00000273 -0.00000023  0.00000013 -0.00000201  0.00000023  0.00000038  0.00000003  0.00000008
                           0.00000126  0.00000055 -0.00000021  0.00000001 -0.00000001 -0.00000015  0.00000029  0.00000006

   2    1  |1 0>           0.52069977 -0.00828958  0.19027750 -0.00109399 -0.00558157  0.00042378 -0.01595027  0.01403047
                          -0.23518574 -0.07117803  0.03006178 -0.00015783  0.00033055  0.00175478  0.00523432 -0.07471484

   3    1  |1 0>           0.27086124  0.00014346  0.13226628 -0.00742327 -0.04073240  0.00719609 -0.12664120  0.10073017
                          -0.02267820 -0.01748957 -0.03739289 -0.00201311  0.00383425  0.00691720  0.03462129 -0.54311957

   4    1  |1 0>          -0.03099871 -0.03692996  0.00728177 -0.00486944 -0.03403254  0.04459690 -0.12697537 -0.04992789
                           0.00601471 -0.14336732  0.02485559 -0.08064978 -0.49131847  0.02702680 -0.00122185  0.01899826

   5    1  |1 0>          -0.09196546 -0.07131317 -0.01478096  0.00507499  0.01889502  0.08056388 -0.22968770 -0.00863240
                           0.03816011 -0.40788187  0.12273782  0.05338273  0.27543199  0.01430224 -0.03164062  0.04845537

   6    1  |1 0>          -0.24154941  0.11339060  0.33349697 -0.00025249 -0.00049263  0.02569907 -0.00864807 -0.01670614
                           0.04505518  0.00019290  0.00306227 -0.05305996  0.00176689 -0.26471253 -0.09220048 -0.01134199

   7    1  |1 0>          -0.00000370  0.00000146 -0.00000031  0.00074528  0.00009238  0.03434263 -0.10176837 -0.01172142
                          -0.00000787  0.00000235  0.00000813 -0.01037878  0.00264048  0.02761638 -0.00513510  0.02243967

   8    1  |1 0>          -0.00000109 -0.00001101  0.00000169  0.00002608 -0.00018725  0.01528183 -0.01792480 -0.00859629
                           0.00000251  0.00000253  0.00000182 -0.01970285 -0.00027017 -0.10275590 -0.03788505 -0.00062236

   9    1  |1 0>          -0.00000659 -0.00000278  0.00000142 -0.00081576  0.00019148 -0.00544323  0.01078109  0.00213789
                          -0.00001406 -0.00000192 -0.00000606 -0.12728411  0.02243560  0.01915699  0.00711933 -0.00090909

   1    1  |1 1>-         -0.00000121  0.00000050  0.00000140  0.00000003  0.00000007 -0.00000029 -0.00000031  0.00000053
                           0.00000014  0.00000018 -0.00000000  0.00000094  0.00000003  0.00000409  0.00000322  0.00000100

   2    1  |1 1>-          0.17810133 -0.08002231 -0.19865657 -0.00075002 -0.00071243  0.03381609  0.02349527 -0.02692026
                          -0.03122643 -0.02431999  0.00536769 -0.10242119  0.00206824 -0.49207680 -0.16598627 -0.02472382

   3    1  |1 1>-         -0.20486243  0.17771802  0.66768879 -0.00030573 -0.00018378  0.01349732  0.01038339 -0.01084237
                           0.04387402  0.03873967  0.00019281 -0.04357614  0.00235902 -0.20039916 -0.06758247 -0.00994101

   4    1  |1 1>-          0.00007371  0.08465101 -0.03781247  0.00162346 -0.00906225  0.08382192 -0.22107316 -0.04252080
                           0.07619112  0.32128310 -0.04464522  0.21366833 -0.17985949 -0.03739288 -0.04137914  0.05241118

   5    1  |1 1>-         -0.01529021 -0.04912495  0.01648023 -0.00131888 -0.01609664 -0.04246038  0.14038780 -0.00657427
                          -0.02000350 -0.26499203  0.06420475  0.37466195 -0.31876078 -0.07452792 -0.00048555 -0.01624545

   6    1  |1 1>-         -0.06297198 -0.00389392 -0.05836436 -0.00385109 -0.02220109  0.00413558 -0.06284397  0.04868344
                          -0.07744383 -0.01806665  0.05584793  0.03270906 -0.02807048 -0.00558872  0.01506926 -0.27415421

   7    1  |1 1>-          0.00000173  0.00000013 -0.00000097  0.00141448  0.00557750  0.00574634 -0.01812944  0.00990714
                          -0.00000270 -0.00000132 -0.00000012  0.08019765  0.09734013 -0.01407705 -0.00634154 -0.02076863

   8    1  |1 1>-         -0.00000245 -0.00000181 -0.00000229  0.00182333  0.00966870 -0.00163778  0.02593255 -0.01787327
                           0.00000138  0.00000005 -0.00000051  0.01867383  0.02167669 -0.00457093 -0.00796121  0.10595946

   9    1  |1 1>-         -0.00000424 -0.00000158  0.00000024  0.00066530 -0.00061732  0.03681906 -0.10210526 -0.01498969
                          -0.00000488 -0.00000126  0.00001029 -0.00896156 -0.01247263  0.00357889 -0.01352984  0.02525033

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000035  0.00001224  0.00000004 -0.04002329 -0.38836256 -0.01258535 -0.01705508  0.00837174
                          -0.00000407 -0.00000020 -0.00000189  0.17828978 -0.01554830  0.00393604  0.00312353  0.01316920

   3    1  |0 0>           0.00000265 -0.00000213 -0.00000470 -0.00072217 -0.00659012  0.33456059 -0.12282472 -0.14635691
                          -0.00002143  0.00000001 -0.00000903  0.00139604  0.00108332 -0.12139309  0.14213121  0.04208730

   4    1  |0 0>          -0.00000209 -0.00000001 -0.00000071 -0.09529355  0.01931049 -0.01811347  0.06623424 -0.27933493
                           0.00000032  0.00000164  0.00000098  0.03933547  0.06498968 -0.03234357 -0.25756899  0.14085191

   5    1  |0 0>          -0.00001010  0.00000031 -0.00000400  0.02618304 -0.00268377 -0.10071683 -0.23951357 -0.03683817
                          -0.00000090 -0.00000033  0.00000218 -0.00424486 -0.00000283 -0.21641316 -0.12422799 -0.23097451

   6    1  |0 0>          -0.00000041 -0.00000240  0.00000022 -0.11371457 -0.14908164  0.00112403 -0.06922462  0.05445597
                          -0.00000006 -0.00000068 -0.00000029 -0.35710735  0.08506224 -0.00167366 -0.03579675  0.07883412

   7    1  |0 0>          -0.01620892 -0.00150033  0.00940725  0.00001279 -0.00000245  0.00000131 -0.00000181  0.00000052
                          -0.00534400  0.73386813 -0.00168941 -0.00000004  0.00001868  0.00000438  0.00000006 -0.00000201

   8    1  |0 0>           0.56042975  0.00437299 -0.41964467  0.00000175 -0.00000156 -0.00000602  0.00000512  0.00000194
                           0.06353889  0.01871405  0.21060747  0.00000044  0.00000420 -0.00001534  0.00000435  0.00000516

   9    1  |0 0>          -0.05496819 -0.00364491  0.25084277 -0.00000038 -0.00000518  0.00002919  0.00000049  0.00000089
                           0.46638083  0.00012264  0.50544719  0.00000200  0.00000003 -0.00001102 -0.00000085 -0.00000158

  10    1  |0 0>           0.00000003 -0.00000160 -0.00000003  0.00000009  0.00000071  0.00000014  0.00000010 -0.00000017
                           0.00000000  0.00000000  0.00000000 -0.00000016  0.00000003 -0.00000001  0.00000000  0.00000002

   1    1  |1 1>+         -0.02984760 -0.00023633  0.02242869 -0.00000039  0.00000007  0.00000036 -0.00000510 -0.00000183
                          -0.00320359  0.00019104 -0.01100285 -0.00000008 -0.00000098  0.00000188 -0.00000416 -0.00000463

   2    1  |1 1>+         -0.13746478 -0.00108570  0.10330572 -0.00185651  0.00142625  0.03377140  0.07438121  0.03029685
                          -0.01473470 -0.00076239 -0.05066993 -0.00077947 -0.00444503  0.07301449  0.05739076  0.06598073

   3    1  |1 1>+         -0.17721665 -0.00140352  0.13338089  0.00135818 -0.00015151 -0.02625089 -0.05732212 -0.02419660
                          -0.01852585 -0.00058356 -0.06479189  0.00059957  0.00357405 -0.05658882 -0.04511979 -0.05083674

   4    1  |1 1>+          0.01404798  0.00085031 -0.07435161  0.00989489 -0.00996990  0.06076872 -0.03413118  0.00084138
                          -0.14184041  0.12344786 -0.15298723  0.00126660 -0.00712414 -0.02325532  0.04997113 -0.01149837

   5    1  |1 1>+         -0.00981322 -0.00103302  0.04189349  0.02122951  0.01716202 -0.03239424 -0.00713773  0.06188711
                           0.07754979  0.22117817  0.08637682 -0.01193482 -0.01191088  0.00948279  0.02795691 -0.03925942

   6    1  |1 1>+         -0.00108159 -0.00004652  0.00097402 -0.03027222 -0.17220191 -0.02895854 -0.00893930  0.02727200
                           0.00032002  0.02019585  0.00031499  0.01605845  0.00509339  0.01083542 -0.00956909  0.01087293

   7    1  |1 1>+          0.00350336 -0.00040943 -0.01676861 -0.16970938  0.03557082 -0.04463929  0.15492823 -0.33158768
                          -0.03026432  0.33812492 -0.02899371 -0.09279571  0.11960106  0.03349564 -0.35063096  0.27511915

   8    1  |1 1>+         -0.00006509 -0.00014538  0.00038830  0.11945214  0.01655411 -0.03787733  0.14007438 -0.14967150
                           0.00103446  0.07685471  0.00200465  0.65381109 -0.11778765  0.01729949 -0.02910681 -0.05961968

   9    1  |1 1>+          0.02393841  0.00178646 -0.11674525  0.03390294  0.10886671 -0.46863034  0.16020949  0.24443991
                          -0.22015922 -0.04358819 -0.23961063 -0.03096081 -0.01326486  0.16613963 -0.16180097 -0.09938405

   1    1  |1 0>           0.00025534 -0.03905628 -0.00017062 -0.00000033 -0.00000584 -0.00000121  0.00000009  0.00000065
                           0.00005193 -0.00007216 -0.00021713  0.00000409 -0.00000049  0.00000049 -0.00000032  0.00000013

   2    1  |1 0>          -0.00148121  0.29068431  0.00140690 -0.00228877 -0.00366961 -0.00042545  0.01334310 -0.01027611
                           0.00092901  0.00055116  0.00037970 -0.00564745  0.00104748 -0.00015444  0.00621866 -0.01532413

   3    1  |1 0>           0.00049840 -0.03985833 -0.00024705 -0.01717453 -0.02651833 -0.00439644  0.09512584 -0.07676014
                           0.00140857 -0.00006030 -0.00141040 -0.04117138  0.00751718  0.00130061  0.04673518 -0.11172015

   4    1  |1 0>           0.01597948  0.00008583  0.04127279  0.11917361 -0.02862088 -0.02527601 -0.00220163 -0.04986371
                          -0.09423290 -0.00070502  0.06820661 -0.04440177 -0.07664273  0.00371485  0.00014783  0.03236004

   5    1  |1 0>           0.02957375  0.00035992  0.07466526 -0.06591218  0.01907854 -0.04092744 -0.03693897 -0.01938658
                          -0.16748999 -0.00124515  0.12071111  0.02342549  0.04521619  0.01598967  0.05638450  0.00581009

   6    1  |1 0>          -0.15941674  0.00014272 -0.16923693 -0.00736526  0.00065867  0.02103838 -0.03257446 -0.01273836
                          -0.03296171 -0.00136802  0.09706746 -0.00172325 -0.01607045  0.07052802 -0.02199564 -0.02843912

   7    1  |1 0>          -0.07604411  0.00141957 -0.14774022 -0.03525710  0.02447466 -0.34700602 -0.19301797 -0.25899645
                           0.25328404  0.00167570 -0.16862699 -0.00917787 -0.04559807  0.02317435  0.35188337  0.17769043

   8    1  |1 0>           0.21051551  0.00143102  0.21380861 -0.04239354  0.00661835  0.09586013 -0.25437534 -0.12432741
                           0.08233721  0.00214434 -0.15917378 -0.01261489 -0.10482266  0.49143699 -0.10303148 -0.16788015

   9    1  |1 0>           0.01114556 -0.00017056  0.02029349 -0.38463770  0.04694708 -0.00012729  0.04754680  0.04543723
                          -0.03166281 -0.00017682  0.02035318 -0.03097548 -0.58101313 -0.12028152 -0.01586837  0.02116619

   1    1  |1 1>-         -0.02483510 -0.00012074 -0.02697360  0.00000030  0.00000001  0.00000023  0.00000479  0.00000191
                          -0.00270341 -0.00019240  0.01317920  0.00000010  0.00000066 -0.00000034  0.00000382  0.00000449

   2    1  |1 1>-         -0.07047771  0.00052521 -0.07653421 -0.01372596  0.00097643  0.04587867 -0.05579092 -0.01698318
                          -0.00768278 -0.00054436  0.03741065 -0.00290627 -0.03110645  0.12769043 -0.04821110 -0.05464788

   3    1  |1 1>-          0.17282256  0.00143276  0.18784413 -0.00622359  0.00051856  0.01880860 -0.02270912 -0.00668808
                           0.01823049  0.00133481 -0.09123977 -0.00108741 -0.01303584  0.05190509 -0.01974435 -0.02230961

   4    1  |1 1>-         -0.01744615  0.01021120 -0.06151520  0.07544577 -0.01072478 -0.03564880 -0.03256701 -0.04464151
                           0.16937875  0.00136193 -0.12758067 -0.00908351  0.04097528  0.03094226  0.02993820  0.02018455

   5    1  |1 1>-          0.01045235  0.01743347  0.03553464  0.13328982 -0.02480070  0.03076853  0.01633459  0.00586430
                          -0.09511131 -0.00072045  0.07138641 -0.01363852  0.07188986  0.01123054 -0.04261690 -0.00324623

   6    1  |1 1>-          0.00194608 -0.25329352 -0.00061885  0.00364722 -0.01563412 -0.00125196  0.04777556 -0.04033443
                          -0.00031762 -0.00047188 -0.00101453 -0.02224003  0.01011500  0.00328159  0.02158325 -0.05624257

   7    1  |1 1>-          0.00312323  0.07571850  0.01276211 -0.27459623  0.07136809 -0.01488362 -0.02515419  0.01122058
                          -0.03382026 -0.00013495  0.02576051  0.14850777  0.58034012  0.09345318  0.15198779 -0.17321142

   8    1  |1 1>-          0.00202849 -0.34090202 -0.00216991 -0.00335170  0.10926010  0.02423226 -0.33107046  0.28450950
                           0.00229968 -0.00061695 -0.00328270  0.17968186  0.10627281  0.01045352 -0.14213482  0.34906603

   9    1  |1 1>-          0.02851623 -0.01373617  0.09761881  0.03829785  0.01127130 -0.31527364 -0.24966048 -0.28529111
                          -0.26492981 -0.00212006  0.19902932 -0.02560222 -0.06959163  0.13448456  0.30212111  0.15804833

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00988681  0.00000002  0.00000003  0.00000000  0.00000000  0.00000005 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000153 -0.00000531 -0.00000691  0.00000022  0.14755890  0.55837902  0.00211234 -0.01797614
                           0.00000000  0.00000003 -0.00000006  0.00000276 -0.04415971  0.00316639 -0.00065272 -0.00567918

   3    1  |0 0>           0.00000030 -0.00000025  0.00000212  0.00000448 -0.00624387 -0.00855681  0.47502982 -0.31889252
                           0.00000005 -0.00000103  0.00000076  0.00001390  0.00150127  0.00044891  0.02156423 -0.05944216

   4    1  |0 0>          -0.00000008 -0.00000044  0.00000030  0.00000152  0.05066573 -0.00330249 -0.01320212 -0.05889670
                           0.00000003 -0.00000152 -0.00000289  0.00000005  0.11843144 -0.01135004  0.04617640  0.17168063

   5    1  |0 0>           0.00000005 -0.00000217  0.00000140  0.00000611 -0.01313931  0.00263645 -0.02185005 -0.09303895
                           0.00000001  0.00000285 -0.00000100 -0.00000197 -0.02057102  0.01439641  0.32751655  0.43428351

   6    1  |0 0>           0.00000056  0.00000072  0.00000127 -0.00000021  0.49736272 -0.15392917  0.00840796 -0.02077984
                           0.00000001  0.00000015 -0.00000025  0.00000029 -0.21889551  0.01785031 -0.00028143 -0.00547400

   7    1  |0 0>          -0.00000001  0.00280453 -0.00273700  0.00736378 -0.00001106  0.00000090  0.00000048 -0.00001096
                           0.00000100 -0.28259381 -0.39602529 -0.01936357  0.00002099  0.00011588 -0.00002667 -0.00000129

   8    1  |0 0>          -0.00000004 -0.19190346  0.14629198 -0.28392059 -0.00000508  0.00000422 -0.00001075 -0.00006342
                           0.00000003  0.24024459 -0.18318226  0.08386948  0.00000667  0.00002850  0.00029965  0.00024744

   9    1  |0 0>           0.00000000  0.19308613 -0.12735544 -0.10899228  0.00000792  0.00004966  0.00029079 -0.00007615
                           0.00000001  0.15949153 -0.09547766 -0.37041954 -0.00001031  0.00000098  0.00001638 -0.00001022

  10    1  |0 0>           0.71565735  0.00000283  0.00000420  0.00000016  0.00000025  0.00000409 -0.00000064  0.00000032
                           0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000007 -0.00000000  0.00000001 -0.00000002

   1    1  |1 1>+         -0.00000001 -0.03925619  0.02990028 -0.05752641 -0.00000454  0.00000407 -0.00001338 -0.00006346
                          -0.00000001  0.05026418 -0.03459272  0.01770424  0.00000633  0.00002614  0.00031026  0.00025115

   2    1  |1 1>+          0.00000001 -0.13280605  0.10114704 -0.19448538 -0.00219408 -0.00486253  0.01671159  0.07825378
                           0.00000000  0.16826668 -0.11950897  0.05977585 -0.00052097 -0.00907137 -0.24790582 -0.34464090

   3    1  |1 1>+          0.00000002 -0.17169830  0.13071316 -0.25033372  0.00050031  0.00143697 -0.01329849 -0.06062625
                           0.00000001  0.21683655 -0.15314544  0.07809806  0.00164123  0.00690433  0.19212390  0.26787243

   4    1  |1 1>+         -0.00000004  0.16242930 -0.10673230 -0.09557858 -0.01373683  0.02307604  0.19764691 -0.12267726
                          -0.00000016  0.26822813  0.10604273 -0.30474416 -0.02707190  0.00341691  0.01331674 -0.04409531

   5    1  |1 1>+         -0.00000007 -0.08950186  0.05935524  0.05147709 -0.04804452 -0.05254700 -0.10084289  0.08825178
                          -0.00000027  0.15794007  0.38345458  0.18965627 -0.03966007  0.00492255  0.00380079 -0.01953444

   6    1  |1 1>+          0.00000139 -0.00138748  0.00103127 -0.00103291  0.29113341  0.43793734 -0.07342148  0.03278315
                          -0.00000004  0.02199839  0.03036074  0.00291983 -0.11581001  0.00904376 -0.00625701 -0.00432671

   7    1  |1 1>+         -0.08761137 -0.00378920  0.00245848  0.00179512 -0.08524141  0.05399890  0.03137904  0.00415283
                           0.00000362 -0.03928796 -0.05144237  0.00430773 -0.03863225  0.00527166  0.01235567 -0.04679718

   8    1  |1 1>+          0.39333244  0.00007362 -0.00005626 -0.00013333  0.25415149 -0.21099574  0.02163244 -0.01403589
                           0.00000080 -0.00814313 -0.01216408 -0.00082238 -0.13383389  0.01146695  0.00220928 -0.01525705

   9    1  |1 1>+          0.01389176 -0.02597001  0.01711473  0.01509318  0.02509302  0.04413707  0.25908496 -0.17820445
                          -0.00000045 -0.01721050  0.01998011  0.05045553 -0.00049524  0.00002169  0.00936662 -0.02919264

   1    1  |1 0>           0.00000360 -0.05597609 -0.08145763 -0.00319089  0.00002293  0.00012379 -0.00001887  0.00000732
                           0.00000000  0.00073004 -0.00042298  0.00019024  0.00001106 -0.00000084  0.00000094  0.00001298

   2    1  |1 0>          -0.00000045  0.30697760  0.44449215  0.01921020 -0.01547885  0.00181275  0.00162328 -0.01195362
                          -0.00000001 -0.00214255  0.00097001  0.00036879  0.00682263 -0.00025117 -0.00166148 -0.00503771

   3    1  |1 0>           0.00000000 -0.04070209 -0.06196068 -0.00097798 -0.11338328  0.01315773  0.01800822 -0.07774645
                          -0.00000007  0.00225317 -0.00157156  0.00174955  0.04868966 -0.00077001 -0.00666796 -0.03812646

   4    1  |1 0>          -0.00000001 -0.12222060  0.08517633 -0.02838387  0.18445892 -0.01204216  0.08020197  0.11182633
                           0.00000010 -0.08496506  0.06539873 -0.13809385  0.42578300 -0.05196061 -0.00892137  0.01967828

   5    1  |1 0>           0.00000000 -0.21829414  0.15249212 -0.04791614 -0.10402249  0.01344132  0.13534517  0.18341996
                          -0.00000016 -0.14980616  0.11545438 -0.24639959 -0.24074413  0.02271520 -0.00335614  0.05910109

   6    1  |1 0>           0.00000001  0.13725264 -0.08002205 -0.36434696  0.00270773  0.00004214  0.00332346  0.04659567
                          -0.00000000 -0.20029214  0.13348831  0.08561420  0.00890538  0.04423219  0.22227320 -0.14580497

   7    1  |1 0>           0.00000001 -0.03757164  0.02548414 -0.00054491 -0.00049772 -0.00655940 -0.18045576 -0.23958115
                          -0.05090538 -0.01991270  0.01575284 -0.04078927 -0.00123901 -0.03248215  0.05156091 -0.09811087

   8    1  |1 0>           0.00000002  0.01398716 -0.00795300 -0.05197188 -0.00448400 -0.00087123 -0.02980538 -0.09012300
                           0.00278756 -0.03141685  0.02129654  0.00630783 -0.01156083 -0.04758741 -0.25676981  0.15908273

   9    1  |1 0>           0.00000002  0.00487942 -0.00329895 -0.00029276 -0.00438971  0.00082629  0.01896851  0.03227813
                          -0.39997360  0.00231876 -0.00185177  0.00523568 -0.03905257 -0.36487251  0.04658974 -0.01499906

   1    1  |1 1>-         -0.00000001  0.03259081 -0.01988323 -0.07511664 -0.00001020  0.00000154  0.00001857 -0.00000652
                           0.00000000 -0.03891302  0.02563649  0.02256440 -0.00000748 -0.00004878 -0.00028883  0.00006802

   2    1  |1 1>-          0.00000001  0.06883150 -0.04010711 -0.15646521  0.00654155 -0.00092420 -0.01709579  0.05494832
                           0.00000005 -0.08113177  0.05345152  0.04699693  0.01817604  0.08531230  0.41084551 -0.27767287

   3    1  |1 1>-         -0.00000001 -0.16660348  0.10299937  0.38341987  0.00230199 -0.00036406 -0.00742457  0.02178079
                           0.00000002  0.19826314 -0.13056390 -0.11605478  0.00658533  0.03684087  0.16719188 -0.11320689

   4    1  |1 1>-         -0.00000001  0.21824033 -0.12967051  0.07601092  0.05184236  0.00052971  0.13473058  0.19527372
                          -0.00000080  0.16431831 -0.12507851  0.23897955  0.09362303 -0.24369846  0.04381432  0.02200469

   5    1  |1 1>-         -0.00000004 -0.09900883  0.10881261 -0.03953866  0.09096570 -0.01070046 -0.08021494 -0.09774255
                          -0.00000136 -0.09171522  0.06986037 -0.13489034  0.16804659 -0.42935349  0.05559626 -0.06129428

   6    1  |1 1>-          0.00000036 -0.26765153 -0.38725890 -0.01500405 -0.04871426  0.00587137  0.00871931 -0.03825901
                          -0.00000018  0.00307435 -0.00168130 -0.00020009  0.04081110 -0.03940867  0.00425270 -0.02412265

   7    1  |1 1>-          0.00000079 -0.00391957 -0.01487226  0.00103801  0.13687574 -0.01229032 -0.02187716 -0.01934080
                          -0.39027241  0.00344729 -0.00260702  0.00491788  0.28997560  0.14530495 -0.03105061  0.00493001

   8    1  |1 1>-         -0.00000356  0.03656675  0.05371468  0.00201376 -0.03723038  0.00559050  0.01312672 -0.04147182
                          -0.08866194 -0.00066306  0.00041733 -0.00039240  0.09628096  0.03240616 -0.01031470 -0.01994493

   9    1  |1 1>-         -0.00000012  0.03491045 -0.02123963  0.01190010 -0.01863772 -0.00516015 -0.18294160 -0.25617666
                           0.04905266  0.02623351 -0.01998311  0.03842113 -0.03522833 -0.01575173 -0.00847631 -0.05955700

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00961378
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.01350605  0.00000268 -0.00006033 -0.00017104 -0.00000231
                          -0.01318015  0.00003067 -0.00003128  0.00000370  0.00000001

   3    1  |0 0>           0.05516657  0.00000889 -0.00033658  0.00002619  0.00000044
                           0.04174141  0.00016416 -0.00015609 -0.00001096  0.00000005

   4    1  |0 0>          -0.35722268  0.00005108  0.00004093 -0.00000091 -0.00000004
                           0.39579673 -0.00002771 -0.00008695 -0.00000812  0.00000001

   5    1  |0 0>           0.09853565  0.00026322  0.00017562 -0.00001051  0.00000003
                          -0.14395412 -0.00001356 -0.00043617 -0.00000418  0.00000001

   6    1  |0 0>          -0.09541460 -0.00000655  0.00000265  0.00002583  0.00000048
                          -0.08546112  0.00000150 -0.00000206  0.00002090  0.00000000

   7    1  |0 0>           0.00000485  0.00891503  0.00287153  0.00090063 -0.00000001
                           0.00000489 -0.00250517 -0.01443054  0.41787582 -0.00000097

   8    1  |0 0>           0.00000403 -0.29481315 -0.10939910 -0.00317431 -0.00000002
                          -0.00003687  0.02110522  0.27441194  0.01665135 -0.00000003

   9    1  |0 0>           0.00002459 -0.00923704  0.27006446  0.00379290  0.00000000
                           0.00000523 -0.29558448  0.12047560  0.00072057  0.00000001

  10    1  |0 0>          -0.00000010 -0.00000002 -0.00000010  0.00000741  0.69845145
                           0.00000005  0.00000001  0.00000000  0.00000001 -0.00000000

   1    1  |1 1>+          0.00000351 -0.30198295 -0.11410984 -0.00330555  0.00000001
                          -0.00003783  0.02392091  0.28040858  0.00403759 -0.00000000

   2    1  |1 1>+         -0.01933607  0.05460653  0.02057301  0.00060710 -0.00000002
                           0.04822543 -0.00433008 -0.05052395 -0.00143781  0.00000001

   3    1  |1 1>+          0.01311353  0.07078781  0.02699680  0.00076776 -0.00000001
                          -0.03488655 -0.00583352 -0.06571918 -0.00168890  0.00000003

   4    1  |1 1>+          0.10965780  0.00319642 -0.06169239 -0.00075214  0.00000014
                          -0.07990549  0.06753378 -0.02945795  0.05316096 -0.00000172

   5    1  |1 1>+          0.14371977 -0.00087851  0.03463220  0.00068357  0.00000026
                          -0.17694372 -0.03830160  0.01376146  0.09564085 -0.00000317

   6    1  |1 1>+         -0.03703194  0.00040306  0.00038042 -0.00012045 -0.00000338
                          -0.06340303 -0.00032328 -0.00040793  0.00873002 -0.00000029

   7    1  |1 1>+          0.21447394 -0.00187228  0.04612994 -0.00039353  0.08977015
                          -0.21196950 -0.04762887  0.02844888 -0.53038646  0.00000404

   8    1  |1 1>+         -0.00639749  0.00010239 -0.00207760 -0.00021185 -0.40302457
                          -0.09658039  0.00296573  0.00075067 -0.12057414  0.00000093

   9    1  |1 1>+          0.00259907 -0.01485236  0.34978983  0.00503040 -0.01423405
                           0.04680150 -0.38433698  0.15819108  0.06928703 -0.00000049

   1    1  |1 0>           0.00000623 -0.00101138 -0.00660521  0.42825061 -0.00000471
                          -0.00000282  0.00001224  0.00128146 -0.00081167  0.00000001

   2    1  |1 0>          -0.05351043 -0.00059841 -0.00229069  0.12558376 -0.00000411
                          -0.04769260 -0.00048613 -0.00005311 -0.00024683 -0.00000000

   3    1  |1 0>          -0.39211194 -0.00016026 -0.00014541 -0.01722254  0.00000056
                          -0.34751711 -0.00051920 -0.00041137  0.00002497 -0.00000006

   4    1  |1 0>           0.05647296  0.00020753  0.03615186  0.00079205 -0.00000001
                          -0.08981508  0.03786473  0.01171705  0.00037740  0.00000017

   5    1  |1 0>          -0.06733938 -0.00018157  0.06453481  0.00154187 -0.00000001
                           0.03190574  0.06738877  0.02033378  0.00067090 -0.00000009

   6    1  |1 0>          -0.02125636  0.07774012 -0.02628803  0.00000859 -0.00000002
                           0.02344009  0.00315532  0.07260148  0.00105106 -0.00000000

   7    1  |1 0>           0.02853759 -0.05453611  0.38265293  0.00557487 -0.00000003
                           0.02008364  0.37764725  0.06476262  0.00302962  0.05216025

   8    1  |1 0>           0.02748246  0.38471280 -0.07774583 -0.00141277  0.00000004
                          -0.02594010  0.07044272  0.37669560  0.00575501 -0.00285631

   9    1  |1 0>          -0.00826847  0.00962221 -0.04924266 -0.00071800 -0.00000000
                           0.00083405 -0.04757345 -0.00561767 -0.00022869  0.40983388

   1    1  |1 1>-          0.00000386 -0.30254736  0.12543132  0.00203734 -0.00000000
                          -0.00002376  0.01169506 -0.27571688 -0.00386213 -0.00000000

   2    1  |1 1>-         -0.03164890  0.03369056 -0.01388717  0.00015590 -0.00000006
                           0.04772057 -0.00129726  0.03052539  0.00042539 -0.00000005

   3    1  |1 1>-         -0.01278145 -0.08298396  0.03463811  0.00082322 -0.00000005
                           0.01983358  0.00343924 -0.07558951 -0.00105922 -0.00000003

   4    1  |1 1>-         -0.00147818 -0.00574203 -0.06274827  0.00303555 -0.00000012
                          -0.02407599 -0.06760728 -0.02590504 -0.00067648  0.00000175

   5    1  |1 1>-          0.05925343  0.00281490  0.03526147  0.00829596 -0.00000026
                          -0.01796726  0.03799578  0.01423206  0.00051869  0.00000303

   6    1  |1 1>-         -0.19449843  0.00018552  0.00198305 -0.10942406  0.00000358
                          -0.17803500  0.00027012 -0.00032085  0.00022046  0.00000025

   7    1  |1 1>-          0.10450298 -0.00358758 -0.04345790 -0.11980513  0.00000091
                          -0.00803311 -0.04880377 -0.01878769 -0.00036356  0.39988882

   8    1  |1 1>-         -0.21534805 -0.00103905 -0.00577042  0.53491658 -0.00000411
                          -0.21330416  0.00268500  0.00261207 -0.00099654  0.09084668

   9    1  |1 1>-          0.02024758 -0.03041603 -0.35618104  0.01376771 -0.00000015
                           0.01328814 -0.38340238 -0.14477112 -0.00423325 -0.05026134


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2789.20507418     -0.00008123      -17.83      0.00000000        0.00      0.0000
     2   1  -2788.80187166      0.40312129    88474.90      0.40320252    88492.72     10.9717
     3   1  -2788.80187166      0.40312129    88474.90      0.40320252    88492.72     10.9717
     4   1  -2788.80187157      0.40312137    88474.91      0.40320260    88492.74     10.9717
     5   1  -2788.79784601      0.40714694    89358.42      0.40722817    89376.25     11.0812
     6   1  -2788.79784600      0.40714694    89358.43      0.40722817    89376.25     11.0812
     7   1  -2788.79784600      0.40714695    89358.43      0.40722818    89376.25     11.0812
     8   1  -2788.79784600      0.40714695    89358.43      0.40722818    89376.25     11.0812
     9   1  -2788.79784599      0.40714695    89358.43      0.40722818    89376.26     11.0812
    10   1  -2788.79784599      0.40714696    89358.43      0.40722819    89376.26     11.0812
    11   1  -2788.79784599      0.40714696    89358.43      0.40722819    89376.26     11.0812
    12   1  -2788.79772074      0.40727220    89385.92      0.40735343    89403.74     11.0847
    13   1  -2788.79772073      0.40727221    89385.92      0.40735344    89403.75     11.0847
    14   1  -2788.79772056      0.40727239    89385.96      0.40735362    89403.79     11.0847
    15   1  -2788.79772053      0.40727242    89385.96      0.40735365    89403.79     11.0847
    16   1  -2788.79772053      0.40727242    89385.96      0.40735365    89403.79     11.0847
    17   1  -2788.79511783      0.40987512    89957.19      0.40995635    89975.02     11.1555
    18   1  -2788.79511779      0.40987516    89957.20      0.40995639    89975.03     11.1555
    19   1  -2788.79511775      0.40987519    89957.21      0.40995642    89975.03     11.1555
    20   1  -2788.79447889      0.41051406    90097.42      0.41059529    90115.25     11.1729
    21   1  -2788.79447889      0.41051406    90097.42      0.41059529    90115.25     11.1729
    22   1  -2788.79447882      0.41051412    90097.44      0.41059535    90115.26     11.1729
    23   1  -2788.79447879      0.41051416    90097.44      0.41059538    90115.27     11.1729
    24   1  -2788.79447879      0.41051416    90097.44      0.41059539    90115.27     11.1729
    25   1  -2788.78881177      0.41618117    91341.21      0.41626240    91359.04     11.3271
    26   1  -2788.77246884      0.43252411    94928.07      0.43260534    94945.90     11.7718
    27   1  -2788.77246884      0.43252411    94928.07      0.43260534    94945.90     11.7718
    28   1  -2788.77246881      0.43252414    94928.08      0.43260537    94945.90     11.7718
    29   1  -2788.77126802      0.43372493    95191.62      0.43380616    95209.45     11.8045
    30   1  -2788.77126801      0.43372494    95191.62      0.43380617    95209.45     11.8045
    31   1  -2788.77126787      0.43372508    95191.65      0.43380631    95209.48     11.8045
    32   1  -2788.77126783      0.43372512    95191.66      0.43380635    95209.49     11.8045
    33   1  -2788.77126782      0.43372512    95191.66      0.43380635    95209.49     11.8045
    34   1  -2788.77123066      0.43376229    95199.82      0.43384352    95217.65     11.8055
    35   1  -2788.77123063      0.43376232    95199.83      0.43384355    95217.65     11.8055
    36   1  -2788.77123061      0.43376233    95199.83      0.43384356    95217.66     11.8055
    37   1  -2788.76644471      0.43854823    96250.21      0.43862946    96268.04     11.9357

 E0 =  -2789.20499295 is the energy of the lowest zeroth-order state
 E1 =  -2789.20507418 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99990491  0.00000006  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000074 -0.00000059  0.00000004 -0.00000054 -0.00001362  0.00001468  0.00003689
                               -0.00000000 -0.00000022  0.00000028  0.00000057  0.00000194  0.00000104  0.00000093 -0.00000810

  3  1     3    1  |0 0>       -0.00000000  0.00000011  0.00000015  0.00000001  0.00000083 -0.00007622  0.00001686 -0.00000422
                               -0.00000000 -0.00000120  0.00000161  0.00000317  0.00000410 -0.00002643  0.00003126 -0.00000111

  4  1     4    1  |0 0>       -0.00000000 -0.00000016  0.00000015  0.00000000  0.00000125  0.00000563  0.00001515 -0.00000302
                               -0.00000000 -0.00000075 -0.00000058  0.00000049 -0.00003699  0.00001022  0.00000038  0.00002971

  5  1     5    1  |0 0>        0.00000000 -0.00000094  0.00000088 -0.00000010  0.00000390 -0.00001057  0.00006166 -0.00001381
                               -0.00000000  0.00000018  0.00000010 -0.00000010  0.00000637  0.00004286 -0.00002980 -0.00000619

  6  1     6    1  |0 0>       -0.00000000  0.00000022  0.00000013  0.00000003  0.00005910  0.00000408 -0.00000993  0.00002174
                               -0.00000000 -0.00000007  0.00000002  0.00000002 -0.00000128 -0.00000910  0.00000092  0.00000465

  7  1     7    1  |0 0>       -0.00000000  0.00274088 -0.00338916  0.00479550 -0.00000015 -0.00000014  0.00000005  0.00000048
                                0.00000000 -0.17250124 -0.13839650  0.00610964  0.00000017  0.00000009  0.00000036  0.00000212

  8  1     8    1  |0 0>       -0.00000000 -0.10079193  0.11858001 -0.15717419  0.00000121 -0.00000012 -0.00000273  0.00000023
                                0.00000000 -0.00207455 -0.00780995 -0.00112791 -0.00000008 -0.00000044  0.00000094  0.00000010

  9  1     9    1  |0 0>       -0.00000000  0.00370010 -0.00414390  0.00058538 -0.00000003  0.00000274 -0.00000032  0.00000048
                               -0.00000000  0.09512342 -0.12524087 -0.15564503 -0.00000023  0.00000102  0.00000008 -0.00000070

 10  1    10    1  |0 0>        0.00036084 -0.00000176 -0.00000141  0.00000007  0.00000017  0.00000001  0.00000002 -0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.40888538 -0.48106156  0.63751480 -0.00000033  0.00000019  0.00000243  0.00000003
                                0.00000000 -0.00998649  0.01084500  0.00065401  0.00000002  0.00000022 -0.00000092 -0.00000003

 12  1     2    1  |1 1>+      -0.00000000 -0.00345679  0.00406682 -0.00539181  0.05804419 -0.02113642 -0.40753023  0.06576085
                                0.00000000  0.00003009 -0.00013462 -0.00000307 -0.01709133 -0.05271850  0.14580166  0.01000487

 13  1     3    1  |1 1>+      -0.00000000 -0.00445975  0.00524815 -0.00695200  0.08660492  0.02725358  0.32404477 -0.09661479
                                0.00000000  0.00003867 -0.00014558  0.00001737 -0.00980004  0.00462965 -0.13007929 -0.04317778

 14  1     4    1  |1 1>+      -0.00000000  0.00009610 -0.00010028 -0.00008185 -0.04806770  0.50125142  0.00742222 -0.07318008
                               -0.00000000  0.00808910 -0.00204067 -0.00673048 -0.04969086  0.19491064  0.06050228  0.04923889

 15  1     5    1  |1 1>+      -0.00000000 -0.00009351  0.00011230 -0.00004560 -0.01426197 -0.12837390  0.10376119 -0.04362651
                               -0.00000000  0.00502829  0.00880171  0.00341929  0.04998461 -0.05120553  0.03658382  0.08987083

 16  1     6    1  |1 1>+       0.00000000 -0.00002712  0.00002939 -0.00004097  0.56627489  0.05186381 -0.00096569 -0.02343221
                               -0.00000000  0.00064967  0.00055259  0.00000113  0.00922805 -0.03497051  0.02721532  0.01810084

 17  1     7    1  |1 1>+      -0.00172939  0.00084569 -0.00076620 -0.00011240 -0.00000442 -0.00000230  0.00000177 -0.00000088
                               -0.00000000  0.21824461  0.14361030 -0.03163688  0.00001510  0.00000134  0.00000186  0.00000031

 18  1     8    1  |1 1>+       0.00776414  0.00005944 -0.00003624 -0.00000028  0.00001873  0.00000230 -0.00000191  0.00000264
                               -0.00000000  0.04547792  0.03807423 -0.00043954  0.00000296 -0.00000432 -0.00000055  0.00000289

 19  1     9    1  |1 1>+       0.00027421  0.00351875 -0.00391235 -0.00069552  0.00000075 -0.00001915  0.00000643  0.00000031
                                0.00000000  0.08874072 -0.17232813 -0.18707985 -0.00000142 -0.00000617  0.00001273 -0.00000153

 20  1     1    1  |1 0>       -0.00000000  0.70044046  0.56029287 -0.02649001 -0.00000010  0.00000010 -0.00000058 -0.00000234
                                0.00000000 -0.00134314  0.00091076  0.00008068 -0.00000009 -0.00000043  0.00000014  0.00000063

 21  1     2    1  |1 0>       -0.00000000  0.00956552  0.00768322 -0.00033677  0.00372848 -0.01364633  0.04063609  0.45420223
                               -0.00000000  0.00001373 -0.00002526  0.00005025  0.01551580  0.09051306  0.00726515 -0.09877834

 22  1     3    1  |1 0>        0.00000000 -0.00132393 -0.00103749  0.00006857 -0.02502415 -0.04045407 -0.10318639 -0.46670664
                                0.00000000  0.00003590 -0.00004095  0.00005135 -0.00064396  0.07743344  0.09172906 -0.00512003

 23  1     4    1  |1 0>       -0.00000000 -0.00020111  0.00029956  0.00027382 -0.00417322 -0.05600059  0.11165096  0.01455596
                               -0.00000000 -0.00238230  0.00280301 -0.00372398 -0.52019700 -0.04263938  0.26191023 -0.03071629

 24  1     5    1  |1 0>       -0.00000000 -0.00038358  0.00058145  0.00054060 -0.02298118 -0.02025158  0.15420433  0.00792332
                                0.00000000 -0.00423627  0.00498455 -0.00662399  0.23163508  0.00718358  0.44944653 -0.09077836

 25  1     6    1  |1 0>       -0.00000000  0.00459487 -0.00603314 -0.00751950  0.05070717 -0.20666860 -0.01579916  0.05906689
                                0.00000000 -0.00053099  0.00061453 -0.00057754 -0.02449749  0.54523965 -0.01568852  0.04188287

 26  1     7    1  |1 0>       -0.00000000  0.02795183 -0.03641747 -0.04138069  0.00000047 -0.00001409  0.00000381 -0.00000073
                               -0.00100484  0.11812807 -0.13903653  0.18554394  0.00000193 -0.00000801  0.00001387 -0.00000371

 27  1     8    1  |1 0>        0.00000000 -0.11179208  0.14862103  0.18488256  0.00000038 -0.00000834  0.00001427 -0.00000147
                                0.00005503  0.03052300 -0.03566286  0.04143026  0.00000039  0.00001524 -0.00000328 -0.00000096

 28  1     9    1  |1 0>       -0.00000000 -0.00433660  0.00567074  0.00655512  0.00000052  0.00000460 -0.00000144 -0.00000340
                               -0.00789526 -0.01482419  0.01744480 -0.02332566  0.00000143  0.00000130 -0.00000537 -0.00001507

 29  1     1    1  |1 1>-       0.00000000 -0.38366710  0.50951675  0.63096630  0.00000026 -0.00000081  0.00000001  0.00000097
                               -0.00000000  0.01197218 -0.01323881 -0.00234360 -0.00000002  0.00000217 -0.00000033  0.00000014

 30  1     2    1  |1 1>-      -0.00000000  0.00202592 -0.00262926 -0.00328821 -0.05063174  0.18602269  0.02868763 -0.04776339
                                0.00000000 -0.00006262  0.00006927  0.00001181  0.01891617 -0.49771824  0.05166727 -0.03326553

 31  1     3    1  |1 1>-      -0.00000000 -0.00488522  0.00652769  0.00806295 -0.03509304  0.06893960  0.01529191  0.03240948
                                0.00000000  0.00013853 -0.00015219 -0.00005249  0.01911854 -0.16172905  0.00852615  0.07270506

 32  1     4    1  |1 1>-      -0.00000000  0.00038236  0.00015701  0.00001846 -0.00230939 -0.00690312  0.16115009  0.01381839
                               -0.00000000  0.00426253 -0.00501339  0.00664322  0.33583509  0.05538556  0.45712431 -0.12242565

 33  1     5    1  |1 1>-      -0.00000000  0.00052569  0.00055256 -0.00000179 -0.01050291  0.04575875 -0.12714962 -0.08274465
                               -0.00000000 -0.00239403  0.00281837 -0.00373267  0.45882787  0.01710498 -0.25662855  0.05240006

 34  1     6    1  |1 1>-       0.00000000 -0.00835161 -0.00666672  0.00032548  0.02733036  0.04182820  0.12447554  0.69368308
                               -0.00000000 -0.00000073  0.00000909 -0.00002760  0.05441699 -0.04287786 -0.09908290 -0.03805381

 35  1     7    1  |1 1>-      -0.00000000  0.04534760  0.03698856 -0.00170450 -0.00000341 -0.00000044  0.00000242  0.00000079
                               -0.00770372 -0.01559239  0.01830967 -0.02417647  0.00001691  0.00000137  0.00000350  0.00001721

 36  1     8    1  |1 1>-       0.00000000 -0.20526908 -0.16423699  0.00776242  0.00001489  0.00000149  0.00000039 -0.00000057
                               -0.00175013  0.00124394 -0.00126533  0.00130052  0.00000396 -0.00000024 -0.00000047  0.00000460

 37  1     9    1  |1 1>-       0.00000000 -0.01022667 -0.00256764  0.00046913  0.00000089 -0.00001652  0.00000740 -0.00000067
                                0.00096827 -0.12184482  0.14335849 -0.19000048 -0.00000153 -0.00000470  0.00001512 -0.00000468


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000001  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00002574  0.00000709  0.00000732  0.69165209 -0.00336326 -0.00428740  0.00185988  0.00175761
                               -0.00001451 -0.00001072  0.00000313 -0.00523557 -0.00713907  0.00052495 -0.00101423 -0.00947507

  3  1     3    1  |0 0>       -0.00001543 -0.00000594 -0.00000098  0.00292208 -0.00124539  0.65210452  0.21861849  0.03790741
                               -0.00000011 -0.00002795 -0.00000418 -0.00009217  0.00000414  0.04349418  0.03360589 -0.03255420

  4  1     4    1  |0 0>       -0.00000067  0.00000120  0.00000039 -0.00034618 -0.00418755 -0.00869866 -0.05903732  0.67227518
                               -0.00001284  0.00000523 -0.00000314 -0.00981501 -0.04855209 -0.03609770 -0.02699325  0.13616767

  5  1     5    1  |0 0>       -0.00001153  0.00001213  0.00002295  0.00222169 -0.00561859  0.01015818 -0.07650184 -0.00332343
                                0.00001423 -0.00000018  0.00000204 -0.00301271  0.01015425 -0.22343210  0.64757747  0.05626564

  6  1     6    1  |0 0>       -0.00003034 -0.00000723 -0.00001344  0.00220267  0.68838396  0.00185841 -0.01144663  0.00966327
                                0.00000721  0.00000585  0.00000033 -0.00737381 -0.04625720 -0.00127513  0.00896514 -0.04696283

  7  1     7    1  |0 0>        0.00000102  0.00000017 -0.00000009 -0.00000001  0.00000001 -0.00000010  0.00000020 -0.00000102
                                0.00000233  0.00000006  0.00000078 -0.00000016  0.00000027  0.00000003  0.00000015 -0.00000022

  8  1     8    1  |0 0>        0.00000010  0.00000466 -0.00000118  0.00000033  0.00000018  0.00000007 -0.00000032  0.00000053
                               -0.00000095 -0.00000095  0.00000020 -0.00000005  0.00000006 -0.00000101  0.00000249  0.00000018

  9  1     9    1  |0 0>        0.00000040  0.00000038 -0.00000006  0.00000156  0.00000002  0.00000801  0.00000263  0.00000034
                                0.00000241 -0.00000134 -0.00000442 -0.00000003 -0.00000003  0.00000052  0.00000037 -0.00000043

 10  1    10    1  |0 0>        0.00000004 -0.00000005  0.00000004  0.00000102 -0.00000021 -0.00000019 -0.00000006 -0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000012 -0.00000170  0.00000043 -0.00000008 -0.00000006  0.00000006  0.00000066 -0.00000092
                                0.00000056  0.00000035 -0.00000001 -0.00000032 -0.00000005 -0.00000048 -0.00000397 -0.00000002

 12  1     2    1  |1 1>+      -0.02676485  0.44882493 -0.11987706  0.00620826 -0.00026003  0.00689161 -0.05638910  0.08456652
                               -0.10780520 -0.07895880  0.02137520 -0.00329126 -0.00002666 -0.14840684  0.41341392  0.05333472

 13  1     3    1  |1 1>+       0.06133259  0.56680379 -0.11490527 -0.00203546  0.00119628 -0.00498824  0.04406559 -0.06882936
                               -0.04911944 -0.12360046  0.04842307  0.00255815  0.00017344  0.11509270 -0.32002767 -0.04211356

 14  1     4    1  |1 1>+      -0.10697188 -0.04313542 -0.01199286 -0.02727662  0.00637628 -0.23684401 -0.08769693  0.12140153
                               -0.35437556  0.09406899  0.28234538 -0.00167174 -0.01033350 -0.01395842 -0.04344511  0.03671067

 15  1     5    1  |1 1>+      -0.15419418 -0.04215670 -0.01184225  0.06501893  0.01306376  0.12062130  0.02650345  0.24466573
                               -0.50509180 -0.04774278 -0.45316763 -0.00388061 -0.01953438  0.01175768 -0.04974754  0.03578193

 16  1     6    1  |1 1>+      -0.00120560 -0.07678160  0.03652783 -0.52776066 -0.19580693  0.09677507  0.03128343  0.02650256
                               -0.03112459  0.00177243 -0.00986308  0.00573637  0.01693389  0.00487874  0.00214262  0.02108637

 17  1     7    1  |1 1>+       0.00000211  0.00000016  0.00000147  0.01192237 -0.02631674  0.01279823  0.01103440 -0.10500669
                               -0.00000268 -0.00000386  0.00000039  0.00163490  0.00960654 -0.00070748  0.02520834 -0.01840890

 18  1     8    1  |1 1>+      -0.00001636 -0.00000278 -0.00000623 -0.04377186  0.12016942  0.00748512  0.00168332 -0.02193966
                                0.00000495  0.00000212  0.00000001 -0.00062072 -0.00580715  0.00003888  0.00703859 -0.01236331

 19  1     9    1  |1 1>+      -0.00000448 -0.00000230  0.00000007  0.01970106  0.00425178  0.10485838  0.03449374  0.01877128
                               -0.00000205 -0.00000959  0.00000571 -0.00037834 -0.00146086  0.00740701  0.00187983 -0.00355544

 20  1     1    1  |1 0>       -0.00000273 -0.00000023  0.00000013 -0.00000201  0.00000023  0.00000038  0.00000003  0.00000008
                                0.00000126  0.00000055 -0.00000021  0.00000001 -0.00000001 -0.00000015  0.00000029  0.00000006

 21  1     2    1  |1 0>        0.52069977 -0.00828958  0.19027750 -0.00109399 -0.00558157  0.00042378 -0.01595027  0.01403047
                               -0.23518574 -0.07117803  0.03006178 -0.00015783  0.00033055  0.00175478  0.00523432 -0.07471484

 22  1     3    1  |1 0>        0.27086124  0.00014346  0.13226628 -0.00742327 -0.04073240  0.00719609 -0.12664120  0.10073017
                               -0.02267820 -0.01748957 -0.03739289 -0.00201311  0.00383425  0.00691720  0.03462129 -0.54311957

 23  1     4    1  |1 0>       -0.03099871 -0.03692996  0.00728177 -0.00486944 -0.03403254  0.04459690 -0.12697537 -0.04992789
                                0.00601471 -0.14336732  0.02485559 -0.08064978 -0.49131847  0.02702680 -0.00122185  0.01899826

 24  1     5    1  |1 0>       -0.09196546 -0.07131317 -0.01478096  0.00507499  0.01889502  0.08056388 -0.22968770 -0.00863240
                                0.03816011 -0.40788187  0.12273782  0.05338273  0.27543199  0.01430224 -0.03164062  0.04845537

 25  1     6    1  |1 0>       -0.24154941  0.11339060  0.33349697 -0.00025249 -0.00049263  0.02569907 -0.00864807 -0.01670614
                                0.04505518  0.00019290  0.00306227 -0.05305996  0.00176689 -0.26471253 -0.09220048 -0.01134199

 26  1     7    1  |1 0>       -0.00000370  0.00000146 -0.00000031  0.00074528  0.00009238  0.03434263 -0.10176837 -0.01172142
                               -0.00000787  0.00000235  0.00000813 -0.01037878  0.00264048  0.02761638 -0.00513510  0.02243967

 27  1     8    1  |1 0>       -0.00000109 -0.00001101  0.00000169  0.00002608 -0.00018725  0.01528183 -0.01792480 -0.00859629
                                0.00000251  0.00000253  0.00000182 -0.01970285 -0.00027017 -0.10275590 -0.03788505 -0.00062236

 28  1     9    1  |1 0>       -0.00000659 -0.00000278  0.00000142 -0.00081576  0.00019148 -0.00544323  0.01078109  0.00213789
                               -0.00001406 -0.00000192 -0.00000606 -0.12728411  0.02243560  0.01915699  0.00711933 -0.00090909

 29  1     1    1  |1 1>-      -0.00000121  0.00000050  0.00000140  0.00000003  0.00000007 -0.00000029 -0.00000031  0.00000053
                                0.00000014  0.00000018 -0.00000000  0.00000094  0.00000003  0.00000409  0.00000322  0.00000100

 30  1     2    1  |1 1>-       0.17810133 -0.08002231 -0.19865657 -0.00075002 -0.00071243  0.03381609  0.02349527 -0.02692026
                               -0.03122643 -0.02431999  0.00536769 -0.10242119  0.00206824 -0.49207680 -0.16598627 -0.02472382

 31  1     3    1  |1 1>-      -0.20486243  0.17771802  0.66768879 -0.00030573 -0.00018378  0.01349732  0.01038339 -0.01084237
                                0.04387402  0.03873967  0.00019281 -0.04357614  0.00235902 -0.20039916 -0.06758247 -0.00994101

 32  1     4    1  |1 1>-       0.00007371  0.08465101 -0.03781247  0.00162346 -0.00906225  0.08382192 -0.22107316 -0.04252080
                                0.07619112  0.32128310 -0.04464522  0.21366833 -0.17985949 -0.03739288 -0.04137914  0.05241118

 33  1     5    1  |1 1>-      -0.01529021 -0.04912495  0.01648023 -0.00131888 -0.01609664 -0.04246038  0.14038780 -0.00657427
                               -0.02000350 -0.26499203  0.06420475  0.37466195 -0.31876078 -0.07452792 -0.00048555 -0.01624545

 34  1     6    1  |1 1>-      -0.06297198 -0.00389392 -0.05836436 -0.00385109 -0.02220109  0.00413558 -0.06284397  0.04868344
                               -0.07744383 -0.01806665  0.05584793  0.03270906 -0.02807048 -0.00558872  0.01506926 -0.27415421

 35  1     7    1  |1 1>-       0.00000173  0.00000013 -0.00000097  0.00141448  0.00557750  0.00574634 -0.01812944  0.00990714
                               -0.00000270 -0.00000132 -0.00000012  0.08019765  0.09734013 -0.01407705 -0.00634154 -0.02076863

 36  1     8    1  |1 1>-      -0.00000245 -0.00000181 -0.00000229  0.00182333  0.00966870 -0.00163778  0.02593255 -0.01787327
                                0.00000138  0.00000005 -0.00000051  0.01867383  0.02167669 -0.00457093 -0.00796121  0.10595946

 37  1     9    1  |1 1>-      -0.00000424 -0.00000158  0.00000024  0.00066530 -0.00061732  0.03681906 -0.10210526 -0.01498969
                               -0.00000488 -0.00000126  0.00001029 -0.00896156 -0.01247263  0.00357889 -0.01352984  0.02525033


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000035  0.00001224  0.00000004 -0.04002329 -0.38836256 -0.01258535 -0.01705508  0.00837174
                               -0.00000407 -0.00000020 -0.00000189  0.17828978 -0.01554830  0.00393604  0.00312353  0.01316920

  3  1     3    1  |0 0>        0.00000265 -0.00000213 -0.00000470 -0.00072217 -0.00659012  0.33456059 -0.12282472 -0.14635691
                               -0.00002143  0.00000001 -0.00000903  0.00139604  0.00108332 -0.12139309  0.14213121  0.04208730

  4  1     4    1  |0 0>       -0.00000209 -0.00000001 -0.00000071 -0.09529355  0.01931049 -0.01811347  0.06623424 -0.27933493
                                0.00000032  0.00000164  0.00000098  0.03933547  0.06498968 -0.03234357 -0.25756899  0.14085191

  5  1     5    1  |0 0>       -0.00001010  0.00000031 -0.00000400  0.02618304 -0.00268377 -0.10071683 -0.23951357 -0.03683817
                               -0.00000090 -0.00000033  0.00000218 -0.00424486 -0.00000283 -0.21641316 -0.12422799 -0.23097451

  6  1     6    1  |0 0>       -0.00000041 -0.00000240  0.00000022 -0.11371457 -0.14908164  0.00112403 -0.06922462  0.05445597
                               -0.00000006 -0.00000068 -0.00000029 -0.35710735  0.08506224 -0.00167366 -0.03579675  0.07883412

  7  1     7    1  |0 0>       -0.01620892 -0.00150033  0.00940725  0.00001279 -0.00000245  0.00000131 -0.00000181  0.00000052
                               -0.00534400  0.73386813 -0.00168941 -0.00000004  0.00001868  0.00000438  0.00000006 -0.00000201

  8  1     8    1  |0 0>        0.56042975  0.00437299 -0.41964467  0.00000175 -0.00000156 -0.00000602  0.00000512  0.00000194
                                0.06353889  0.01871405  0.21060747  0.00000044  0.00000420 -0.00001534  0.00000435  0.00000516

  9  1     9    1  |0 0>       -0.05496819 -0.00364491  0.25084277 -0.00000038 -0.00000518  0.00002919  0.00000049  0.00000089
                                0.46638083  0.00012264  0.50544719  0.00000200  0.00000003 -0.00001102 -0.00000085 -0.00000158

 10  1    10    1  |0 0>        0.00000003 -0.00000160 -0.00000003  0.00000009  0.00000071  0.00000014  0.00000010 -0.00000017
                                0.00000000  0.00000000  0.00000000 -0.00000016  0.00000003 -0.00000001  0.00000000  0.00000002

 11  1     1    1  |1 1>+      -0.02984760 -0.00023633  0.02242869 -0.00000039  0.00000007  0.00000036 -0.00000510 -0.00000183
                               -0.00320359  0.00019104 -0.01100285 -0.00000008 -0.00000098  0.00000188 -0.00000416 -0.00000463

 12  1     2    1  |1 1>+      -0.13746478 -0.00108570  0.10330572 -0.00185651  0.00142625  0.03377140  0.07438121  0.03029685
                               -0.01473470 -0.00076239 -0.05066993 -0.00077947 -0.00444503  0.07301449  0.05739076  0.06598073

 13  1     3    1  |1 1>+      -0.17721665 -0.00140352  0.13338089  0.00135818 -0.00015151 -0.02625089 -0.05732212 -0.02419660
                               -0.01852585 -0.00058356 -0.06479189  0.00059957  0.00357405 -0.05658882 -0.04511979 -0.05083674

 14  1     4    1  |1 1>+       0.01404798  0.00085031 -0.07435161  0.00989489 -0.00996990  0.06076872 -0.03413118  0.00084138
                               -0.14184041  0.12344786 -0.15298723  0.00126660 -0.00712414 -0.02325532  0.04997113 -0.01149837

 15  1     5    1  |1 1>+      -0.00981322 -0.00103302  0.04189349  0.02122951  0.01716202 -0.03239424 -0.00713773  0.06188711
                                0.07754979  0.22117817  0.08637682 -0.01193482 -0.01191088  0.00948279  0.02795691 -0.03925942

 16  1     6    1  |1 1>+      -0.00108159 -0.00004652  0.00097402 -0.03027222 -0.17220191 -0.02895854 -0.00893930  0.02727200
                                0.00032002  0.02019585  0.00031499  0.01605845  0.00509339  0.01083542 -0.00956909  0.01087293

 17  1     7    1  |1 1>+       0.00350336 -0.00040943 -0.01676861 -0.16970938  0.03557082 -0.04463929  0.15492823 -0.33158768
                               -0.03026432  0.33812492 -0.02899371 -0.09279571  0.11960106  0.03349564 -0.35063096  0.27511915

 18  1     8    1  |1 1>+      -0.00006509 -0.00014538  0.00038830  0.11945214  0.01655411 -0.03787733  0.14007438 -0.14967150
                                0.00103446  0.07685471  0.00200465  0.65381109 -0.11778765  0.01729949 -0.02910681 -0.05961968

 19  1     9    1  |1 1>+       0.02393841  0.00178646 -0.11674525  0.03390294  0.10886671 -0.46863034  0.16020949  0.24443991
                               -0.22015922 -0.04358819 -0.23961063 -0.03096081 -0.01326486  0.16613963 -0.16180097 -0.09938405

 20  1     1    1  |1 0>        0.00025534 -0.03905628 -0.00017062 -0.00000033 -0.00000584 -0.00000121  0.00000009  0.00000065
                                0.00005193 -0.00007216 -0.00021713  0.00000409 -0.00000049  0.00000049 -0.00000032  0.00000013

 21  1     2    1  |1 0>       -0.00148121  0.29068431  0.00140690 -0.00228877 -0.00366961 -0.00042545  0.01334310 -0.01027611
                                0.00092901  0.00055116  0.00037970 -0.00564745  0.00104748 -0.00015444  0.00621866 -0.01532413

 22  1     3    1  |1 0>        0.00049840 -0.03985833 -0.00024705 -0.01717453 -0.02651833 -0.00439644  0.09512584 -0.07676014
                                0.00140857 -0.00006030 -0.00141040 -0.04117138  0.00751718  0.00130061  0.04673518 -0.11172015

 23  1     4    1  |1 0>        0.01597948  0.00008583  0.04127279  0.11917361 -0.02862088 -0.02527601 -0.00220163 -0.04986371
                               -0.09423290 -0.00070502  0.06820661 -0.04440177 -0.07664273  0.00371485  0.00014783  0.03236004

 24  1     5    1  |1 0>        0.02957375  0.00035992  0.07466526 -0.06591218  0.01907854 -0.04092744 -0.03693897 -0.01938658
                               -0.16748999 -0.00124515  0.12071111  0.02342549  0.04521619  0.01598967  0.05638450  0.00581009

 25  1     6    1  |1 0>       -0.15941674  0.00014272 -0.16923693 -0.00736526  0.00065867  0.02103838 -0.03257446 -0.01273836
                               -0.03296171 -0.00136802  0.09706746 -0.00172325 -0.01607045  0.07052802 -0.02199564 -0.02843912

 26  1     7    1  |1 0>       -0.07604411  0.00141957 -0.14774022 -0.03525710  0.02447466 -0.34700602 -0.19301797 -0.25899645
                                0.25328404  0.00167570 -0.16862699 -0.00917787 -0.04559807  0.02317435  0.35188337  0.17769043

 27  1     8    1  |1 0>        0.21051551  0.00143102  0.21380861 -0.04239354  0.00661835  0.09586013 -0.25437534 -0.12432741
                                0.08233721  0.00214434 -0.15917378 -0.01261489 -0.10482266  0.49143699 -0.10303148 -0.16788015

 28  1     9    1  |1 0>        0.01114556 -0.00017056  0.02029349 -0.38463770  0.04694708 -0.00012729  0.04754680  0.04543723
                               -0.03166281 -0.00017682  0.02035318 -0.03097548 -0.58101313 -0.12028152 -0.01586837  0.02116619

 29  1     1    1  |1 1>-      -0.02483510 -0.00012074 -0.02697360  0.00000030  0.00000001  0.00000023  0.00000479  0.00000191
                               -0.00270341 -0.00019240  0.01317920  0.00000010  0.00000066 -0.00000034  0.00000382  0.00000449

 30  1     2    1  |1 1>-      -0.07047771  0.00052521 -0.07653421 -0.01372596  0.00097643  0.04587867 -0.05579092 -0.01698318
                               -0.00768278 -0.00054436  0.03741065 -0.00290627 -0.03110645  0.12769043 -0.04821110 -0.05464788

 31  1     3    1  |1 1>-       0.17282256  0.00143276  0.18784413 -0.00622359  0.00051856  0.01880860 -0.02270912 -0.00668808
                                0.01823049  0.00133481 -0.09123977 -0.00108741 -0.01303584  0.05190509 -0.01974435 -0.02230961

 32  1     4    1  |1 1>-      -0.01744615  0.01021120 -0.06151520  0.07544577 -0.01072478 -0.03564880 -0.03256701 -0.04464151
                                0.16937875  0.00136193 -0.12758067 -0.00908351  0.04097528  0.03094226  0.02993820  0.02018455

 33  1     5    1  |1 1>-       0.01045235  0.01743347  0.03553464  0.13328982 -0.02480070  0.03076853  0.01633459  0.00586430
                               -0.09511131 -0.00072045  0.07138641 -0.01363852  0.07188986  0.01123054 -0.04261690 -0.00324623

 34  1     6    1  |1 1>-       0.00194608 -0.25329352 -0.00061885  0.00364722 -0.01563412 -0.00125196  0.04777556 -0.04033443
                               -0.00031762 -0.00047188 -0.00101453 -0.02224003  0.01011500  0.00328159  0.02158325 -0.05624257

 35  1     7    1  |1 1>-       0.00312323  0.07571850  0.01276211 -0.27459623  0.07136809 -0.01488362 -0.02515419  0.01122058
                               -0.03382026 -0.00013495  0.02576051  0.14850777  0.58034012  0.09345318  0.15198779 -0.17321142

 36  1     8    1  |1 1>-       0.00202849 -0.34090202 -0.00216991 -0.00335170  0.10926010  0.02423226 -0.33107046  0.28450950
                                0.00229968 -0.00061695 -0.00328270  0.17968186  0.10627281  0.01045352 -0.14213482  0.34906603

 37  1     9    1  |1 1>-       0.02851623 -0.01373617  0.09761881  0.03829785  0.01127130 -0.31527364 -0.24966048 -0.28529111
                               -0.26492981 -0.00212006  0.19902932 -0.02560222 -0.06959163  0.13448456  0.30212111  0.15804833


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00988681  0.00000002  0.00000003  0.00000000  0.00000000  0.00000005 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000153 -0.00000531 -0.00000691  0.00000022  0.14755890  0.55837902  0.00211234 -0.01797614
                                0.00000000  0.00000003 -0.00000006  0.00000276 -0.04415971  0.00316639 -0.00065272 -0.00567918

  3  1     3    1  |0 0>        0.00000030 -0.00000025  0.00000212  0.00000448 -0.00624387 -0.00855681  0.47502982 -0.31889252
                                0.00000005 -0.00000103  0.00000076  0.00001390  0.00150127  0.00044891  0.02156423 -0.05944216

  4  1     4    1  |0 0>       -0.00000008 -0.00000044  0.00000030  0.00000152  0.05066573 -0.00330249 -0.01320212 -0.05889670
                                0.00000003 -0.00000152 -0.00000289  0.00000005  0.11843144 -0.01135004  0.04617640  0.17168063

  5  1     5    1  |0 0>        0.00000005 -0.00000217  0.00000140  0.00000611 -0.01313931  0.00263645 -0.02185005 -0.09303895
                                0.00000001  0.00000285 -0.00000100 -0.00000197 -0.02057102  0.01439641  0.32751655  0.43428351

  6  1     6    1  |0 0>        0.00000056  0.00000072  0.00000127 -0.00000021  0.49736272 -0.15392917  0.00840796 -0.02077984
                                0.00000001  0.00000015 -0.00000025  0.00000029 -0.21889551  0.01785031 -0.00028143 -0.00547400

  7  1     7    1  |0 0>       -0.00000001  0.00280453 -0.00273700  0.00736378 -0.00001106  0.00000090  0.00000048 -0.00001096
                                0.00000100 -0.28259381 -0.39602529 -0.01936357  0.00002099  0.00011588 -0.00002667 -0.00000129

  8  1     8    1  |0 0>       -0.00000004 -0.19190346  0.14629198 -0.28392059 -0.00000508  0.00000422 -0.00001075 -0.00006342
                                0.00000003  0.24024459 -0.18318226  0.08386948  0.00000667  0.00002850  0.00029965  0.00024744

  9  1     9    1  |0 0>        0.00000000  0.19308613 -0.12735544 -0.10899228  0.00000792  0.00004966  0.00029079 -0.00007615
                                0.00000001  0.15949153 -0.09547766 -0.37041954 -0.00001031  0.00000098  0.00001638 -0.00001022

 10  1    10    1  |0 0>        0.71565735  0.00000283  0.00000420  0.00000016  0.00000025  0.00000409 -0.00000064  0.00000032
                                0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000007 -0.00000000  0.00000001 -0.00000002

 11  1     1    1  |1 1>+      -0.00000001 -0.03925619  0.02990028 -0.05752641 -0.00000454  0.00000407 -0.00001338 -0.00006346
                               -0.00000001  0.05026418 -0.03459272  0.01770424  0.00000633  0.00002614  0.00031026  0.00025115

 12  1     2    1  |1 1>+       0.00000001 -0.13280605  0.10114704 -0.19448538 -0.00219408 -0.00486253  0.01671159  0.07825378
                                0.00000000  0.16826668 -0.11950897  0.05977585 -0.00052097 -0.00907137 -0.24790582 -0.34464090

 13  1     3    1  |1 1>+       0.00000002 -0.17169830  0.13071316 -0.25033372  0.00050031  0.00143697 -0.01329849 -0.06062625
                                0.00000001  0.21683655 -0.15314544  0.07809806  0.00164123  0.00690433  0.19212390  0.26787243

 14  1     4    1  |1 1>+      -0.00000004  0.16242930 -0.10673230 -0.09557858 -0.01373683  0.02307604  0.19764691 -0.12267726
                               -0.00000016  0.26822813  0.10604273 -0.30474416 -0.02707190  0.00341691  0.01331674 -0.04409531

 15  1     5    1  |1 1>+      -0.00000007 -0.08950186  0.05935524  0.05147709 -0.04804452 -0.05254700 -0.10084289  0.08825178
                               -0.00000027  0.15794007  0.38345458  0.18965627 -0.03966007  0.00492255  0.00380079 -0.01953444

 16  1     6    1  |1 1>+       0.00000139 -0.00138748  0.00103127 -0.00103291  0.29113341  0.43793734 -0.07342148  0.03278315
                               -0.00000004  0.02199839  0.03036074  0.00291983 -0.11581001  0.00904376 -0.00625701 -0.00432671

 17  1     7    1  |1 1>+      -0.08761137 -0.00378920  0.00245848  0.00179512 -0.08524141  0.05399890  0.03137904  0.00415283
                                0.00000362 -0.03928796 -0.05144237  0.00430773 -0.03863225  0.00527166  0.01235567 -0.04679718

 18  1     8    1  |1 1>+       0.39333244  0.00007362 -0.00005626 -0.00013333  0.25415149 -0.21099574  0.02163244 -0.01403589
                                0.00000080 -0.00814313 -0.01216408 -0.00082238 -0.13383389  0.01146695  0.00220928 -0.01525705

 19  1     9    1  |1 1>+       0.01389176 -0.02597001  0.01711473  0.01509318  0.02509302  0.04413707  0.25908496 -0.17820445
                               -0.00000045 -0.01721050  0.01998011  0.05045553 -0.00049524  0.00002169  0.00936662 -0.02919264

 20  1     1    1  |1 0>        0.00000360 -0.05597609 -0.08145763 -0.00319089  0.00002293  0.00012379 -0.00001887  0.00000732
                                0.00000000  0.00073004 -0.00042298  0.00019024  0.00001106 -0.00000084  0.00000094  0.00001298

 21  1     2    1  |1 0>       -0.00000045  0.30697760  0.44449215  0.01921020 -0.01547885  0.00181275  0.00162328 -0.01195362
                               -0.00000001 -0.00214255  0.00097001  0.00036879  0.00682263 -0.00025117 -0.00166148 -0.00503771

 22  1     3    1  |1 0>        0.00000000 -0.04070209 -0.06196068 -0.00097798 -0.11338328  0.01315773  0.01800822 -0.07774645
                               -0.00000007  0.00225317 -0.00157156  0.00174955  0.04868966 -0.00077001 -0.00666796 -0.03812646

 23  1     4    1  |1 0>       -0.00000001 -0.12222060  0.08517633 -0.02838387  0.18445892 -0.01204216  0.08020197  0.11182633
                                0.00000010 -0.08496506  0.06539873 -0.13809385  0.42578300 -0.05196061 -0.00892137  0.01967828

 24  1     5    1  |1 0>        0.00000000 -0.21829414  0.15249212 -0.04791614 -0.10402249  0.01344132  0.13534517  0.18341996
                               -0.00000016 -0.14980616  0.11545438 -0.24639959 -0.24074413  0.02271520 -0.00335614  0.05910109

 25  1     6    1  |1 0>        0.00000001  0.13725264 -0.08002205 -0.36434696  0.00270773  0.00004214  0.00332346  0.04659567
                               -0.00000000 -0.20029214  0.13348831  0.08561420  0.00890538  0.04423219  0.22227320 -0.14580497

 26  1     7    1  |1 0>        0.00000001 -0.03757164  0.02548414 -0.00054491 -0.00049772 -0.00655940 -0.18045576 -0.23958115
                               -0.05090538 -0.01991270  0.01575284 -0.04078927 -0.00123901 -0.03248215  0.05156091 -0.09811087

 27  1     8    1  |1 0>        0.00000002  0.01398716 -0.00795300 -0.05197188 -0.00448400 -0.00087123 -0.02980538 -0.09012300
                                0.00278756 -0.03141685  0.02129654  0.00630783 -0.01156083 -0.04758741 -0.25676981  0.15908273

 28  1     9    1  |1 0>        0.00000002  0.00487942 -0.00329895 -0.00029276 -0.00438971  0.00082629  0.01896851  0.03227813
                               -0.39997360  0.00231876 -0.00185177  0.00523568 -0.03905257 -0.36487251  0.04658974 -0.01499906

 29  1     1    1  |1 1>-      -0.00000001  0.03259081 -0.01988323 -0.07511664 -0.00001020  0.00000154  0.00001857 -0.00000652
                                0.00000000 -0.03891302  0.02563649  0.02256440 -0.00000748 -0.00004878 -0.00028883  0.00006802

 30  1     2    1  |1 1>-       0.00000001  0.06883150 -0.04010711 -0.15646521  0.00654155 -0.00092420 -0.01709579  0.05494832
                                0.00000005 -0.08113177  0.05345152  0.04699693  0.01817604  0.08531230  0.41084551 -0.27767287

 31  1     3    1  |1 1>-      -0.00000001 -0.16660348  0.10299937  0.38341987  0.00230199 -0.00036406 -0.00742457  0.02178079
                                0.00000002  0.19826314 -0.13056390 -0.11605478  0.00658533  0.03684087  0.16719188 -0.11320689

 32  1     4    1  |1 1>-      -0.00000001  0.21824033 -0.12967051  0.07601092  0.05184236  0.00052971  0.13473058  0.19527372
                               -0.00000080  0.16431831 -0.12507851  0.23897955  0.09362303 -0.24369846  0.04381432  0.02200469

 33  1     5    1  |1 1>-      -0.00000004 -0.09900883  0.10881261 -0.03953866  0.09096570 -0.01070046 -0.08021494 -0.09774255
                               -0.00000136 -0.09171522  0.06986037 -0.13489034  0.16804659 -0.42935349  0.05559626 -0.06129428

 34  1     6    1  |1 1>-       0.00000036 -0.26765153 -0.38725890 -0.01500405 -0.04871426  0.00587137  0.00871931 -0.03825901
                               -0.00000018  0.00307435 -0.00168130 -0.00020009  0.04081110 -0.03940867  0.00425270 -0.02412265

 35  1     7    1  |1 1>-       0.00000079 -0.00391957 -0.01487226  0.00103801  0.13687574 -0.01229032 -0.02187716 -0.01934080
                               -0.39027241  0.00344729 -0.00260702  0.00491788  0.28997560  0.14530495 -0.03105061  0.00493001

 36  1     8    1  |1 1>-      -0.00000356  0.03656675  0.05371468  0.00201376 -0.03723038  0.00559050  0.01312672 -0.04147182
                               -0.08866194 -0.00066306  0.00041733 -0.00039240  0.09628096  0.03240616 -0.01031470 -0.01994493

 37  1     9    1  |1 1>-      -0.00000012  0.03491045 -0.02123963  0.01190010 -0.01863772 -0.00516015 -0.18294160 -0.25617666
                                0.04905266  0.02623351 -0.01998311  0.03842113 -0.03522833 -0.01575173 -0.00847631 -0.05955700


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00961378
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.01350605  0.00000268 -0.00006033 -0.00017104 -0.00000231
                               -0.01318015  0.00003067 -0.00003128  0.00000370  0.00000001

  3  1     3    1  |0 0>        0.05516657  0.00000889 -0.00033658  0.00002619  0.00000044
                                0.04174141  0.00016416 -0.00015609 -0.00001096  0.00000005

  4  1     4    1  |0 0>       -0.35722268  0.00005108  0.00004093 -0.00000091 -0.00000004
                                0.39579673 -0.00002771 -0.00008695 -0.00000812  0.00000001

  5  1     5    1  |0 0>        0.09853565  0.00026322  0.00017562 -0.00001051  0.00000003
                               -0.14395412 -0.00001356 -0.00043617 -0.00000418  0.00000001

  6  1     6    1  |0 0>       -0.09541460 -0.00000655  0.00000265  0.00002583  0.00000048
                               -0.08546112  0.00000150 -0.00000206  0.00002090  0.00000000

  7  1     7    1  |0 0>        0.00000485  0.00891503  0.00287153  0.00090063 -0.00000001
                                0.00000489 -0.00250517 -0.01443054  0.41787582 -0.00000097

  8  1     8    1  |0 0>        0.00000403 -0.29481315 -0.10939910 -0.00317431 -0.00000002
                               -0.00003687  0.02110522  0.27441194  0.01665135 -0.00000003

  9  1     9    1  |0 0>        0.00002459 -0.00923704  0.27006446  0.00379290  0.00000000
                                0.00000523 -0.29558448  0.12047560  0.00072057  0.00000001

 10  1    10    1  |0 0>       -0.00000010 -0.00000002 -0.00000010  0.00000741  0.69845145
                                0.00000005  0.00000001  0.00000000  0.00000001 -0.00000000

 11  1     1    1  |1 1>+       0.00000351 -0.30198295 -0.11410984 -0.00330555  0.00000001
                               -0.00003783  0.02392091  0.28040858  0.00403759 -0.00000000

 12  1     2    1  |1 1>+      -0.01933607  0.05460653  0.02057301  0.00060710 -0.00000002
                                0.04822543 -0.00433008 -0.05052395 -0.00143781  0.00000001

 13  1     3    1  |1 1>+       0.01311353  0.07078781  0.02699680  0.00076776 -0.00000001
                               -0.03488655 -0.00583352 -0.06571918 -0.00168890  0.00000003

 14  1     4    1  |1 1>+       0.10965780  0.00319642 -0.06169239 -0.00075214  0.00000014
                               -0.07990549  0.06753378 -0.02945795  0.05316096 -0.00000172

 15  1     5    1  |1 1>+       0.14371977 -0.00087851  0.03463220  0.00068357  0.00000026
                               -0.17694372 -0.03830160  0.01376146  0.09564085 -0.00000317

 16  1     6    1  |1 1>+      -0.03703194  0.00040306  0.00038042 -0.00012045 -0.00000338
                               -0.06340303 -0.00032328 -0.00040793  0.00873002 -0.00000029

 17  1     7    1  |1 1>+       0.21447394 -0.00187228  0.04612994 -0.00039353  0.08977015
                               -0.21196950 -0.04762887  0.02844888 -0.53038646  0.00000404

 18  1     8    1  |1 1>+      -0.00639749  0.00010239 -0.00207760 -0.00021185 -0.40302457
                               -0.09658039  0.00296573  0.00075067 -0.12057414  0.00000093

 19  1     9    1  |1 1>+       0.00259907 -0.01485236  0.34978983  0.00503040 -0.01423405
                                0.04680150 -0.38433698  0.15819108  0.06928703 -0.00000049

 20  1     1    1  |1 0>        0.00000623 -0.00101138 -0.00660521  0.42825061 -0.00000471
                               -0.00000282  0.00001224  0.00128146 -0.00081167  0.00000001

 21  1     2    1  |1 0>       -0.05351043 -0.00059841 -0.00229069  0.12558376 -0.00000411
                               -0.04769260 -0.00048613 -0.00005311 -0.00024683 -0.00000000

 22  1     3    1  |1 0>       -0.39211194 -0.00016026 -0.00014541 -0.01722254  0.00000056
                               -0.34751711 -0.00051920 -0.00041137  0.00002497 -0.00000006

 23  1     4    1  |1 0>        0.05647296  0.00020753  0.03615186  0.00079205 -0.00000001
                               -0.08981508  0.03786473  0.01171705  0.00037740  0.00000017

 24  1     5    1  |1 0>       -0.06733938 -0.00018157  0.06453481  0.00154187 -0.00000001
                                0.03190574  0.06738877  0.02033378  0.00067090 -0.00000009

 25  1     6    1  |1 0>       -0.02125636  0.07774012 -0.02628803  0.00000859 -0.00000002
                                0.02344009  0.00315532  0.07260148  0.00105106 -0.00000000

 26  1     7    1  |1 0>        0.02853759 -0.05453611  0.38265293  0.00557487 -0.00000003
                                0.02008364  0.37764725  0.06476262  0.00302962  0.05216025

 27  1     8    1  |1 0>        0.02748246  0.38471280 -0.07774583 -0.00141277  0.00000004
                               -0.02594010  0.07044272  0.37669560  0.00575501 -0.00285631

 28  1     9    1  |1 0>       -0.00826847  0.00962221 -0.04924266 -0.00071800 -0.00000000
                                0.00083405 -0.04757345 -0.00561767 -0.00022869  0.40983388

 29  1     1    1  |1 1>-       0.00000386 -0.30254736  0.12543132  0.00203734 -0.00000000
                               -0.00002376  0.01169506 -0.27571688 -0.00386213 -0.00000000

 30  1     2    1  |1 1>-      -0.03164890  0.03369056 -0.01388717  0.00015590 -0.00000006
                                0.04772057 -0.00129726  0.03052539  0.00042539 -0.00000005

 31  1     3    1  |1 1>-      -0.01278145 -0.08298396  0.03463811  0.00082322 -0.00000005
                                0.01983358  0.00343924 -0.07558951 -0.00105922 -0.00000003

 32  1     4    1  |1 1>-      -0.00147818 -0.00574203 -0.06274827  0.00303555 -0.00000012
                               -0.02407599 -0.06760728 -0.02590504 -0.00067648  0.00000175

 33  1     5    1  |1 1>-       0.05925343  0.00281490  0.03526147  0.00829596 -0.00000026
                               -0.01796726  0.03799578  0.01423206  0.00051869  0.00000303

 34  1     6    1  |1 1>-      -0.19449843  0.00018552  0.00198305 -0.10942406  0.00000358
                               -0.17803500  0.00027012 -0.00032085  0.00022046  0.00000025

 35  1     7    1  |1 1>-       0.10450298 -0.00358758 -0.04345790 -0.11980513  0.00000091
                               -0.00803311 -0.04880377 -0.01878769 -0.00036356  0.39988882

 36  1     8    1  |1 1>-      -0.21534805 -0.00103905 -0.00577042  0.53491658 -0.00000411
                               -0.21330416  0.00268500  0.00261207 -0.00099654  0.09084668

 37  1     9    1  |1 1>-       0.02024758 -0.03041603 -0.35618104  0.01376771 -0.00000015
                                0.01328814 -0.38340238 -0.14477112 -0.00423325 -0.05026134



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    2.98%    1.92%    0.01%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    1.02%    1.41%    2.47%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.91%    1.57%    2.42%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   16.73%   23.15%   40.64%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%    0.32%   18.73%    0.44%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.76%    0.08%   12.19%    1.12%
 14  1     4    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.48%   28.92%    0.37%    0.78%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.27%    1.91%    1.21%    1.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   32.08%    0.39%    0.07%    0.09%
 17  1     7    1  |1 1>+         0.00%    4.76%    2.06%    0.10%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.21%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.79%    2.97%    3.50%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%   49.06%   31.39%    0.07%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.01%    0.01%    0.00%    0.03%    0.84%    0.17%   21.61%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.76%    1.91%   21.78%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   27.06%    0.50%    8.11%    0.12%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.42%    0.05%   22.58%    0.83%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.32%   34.00%    0.05%    0.52%
 26  1     7    1  |1 0>          0.00%    1.47%    2.07%    3.61%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    1.34%    2.34%    3.59%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.01%    0.02%    0.03%    0.06%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   14.73%   25.98%   39.81%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.29%   28.23%    0.35%    0.34%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.16%    3.09%    0.03%    0.63%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   11.28%    0.31%   23.49%    1.52%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   21.06%    0.24%    8.20%    0.96%
 34  1     6    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.37%    0.36%    2.53%   48.26%
 35  1     7    1  |1 1>-         0.01%    0.23%    0.17%    0.06%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    4.21%    2.70%    0.01%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    1.50%    2.06%    3.61%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%   47.84%    0.01%    0.00%    0.00%    0.01%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.71%    4.89%    0.25%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.24%    0.14%    0.42%   47.05%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    5.00%   42.52%    0.32%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.01%   47.60%    0.00%    0.02%    0.23%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         1.23%   20.77%    1.48%    0.00%    0.00%    2.21%   17.41%    1.00%
 13  1     3    1  |1 1>+         0.62%   33.65%    1.55%    0.00%    0.00%    1.33%   10.44%    0.65%
 14  1     4    1  |1 1>+        13.70%    1.07%    7.99%    0.07%    0.01%    5.63%    0.96%    1.61%
 15  1     5    1  |1 1>+        27.89%    0.41%   20.55%    0.42%    0.06%    1.47%    0.32%    6.11%
 16  1     6    1  |1 1>+         0.10%    0.59%    0.14%   27.86%    3.86%    0.94%    0.10%    0.11%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.08%    0.02%    0.08%    1.14%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.19%    1.45%    0.01%    0.01%    0.06%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    1.11%    0.12%    0.04%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>         32.64%    0.51%    3.71%    0.00%    0.00%    0.00%    0.03%    0.58%
 22  1     3    1  |1 0>          7.39%    0.03%    1.89%    0.01%    0.17%    0.01%    1.72%   30.51%
 23  1     4    1  |1 0>          0.10%    2.19%    0.07%    0.65%   24.26%    0.27%    1.61%    0.29%
 24  1     5    1  |1 0>          0.99%   17.15%    1.53%    0.29%    7.62%    0.67%    5.38%    0.24%
 25  1     6    1  |1 0>          6.04%    1.29%   11.12%    0.28%    0.00%    7.07%    0.86%    0.04%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.19%    1.04%    0.06%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    1.08%    0.18%    0.01%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    1.62%    0.05%    0.04%    0.02%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         3.27%    0.70%    3.95%    1.05%    0.00%   24.33%    2.81%    0.13%
 31  1     3    1  |1 1>-         4.39%    3.31%   44.58%    0.19%    0.00%    4.03%    0.47%    0.02%
 32  1     4    1  |1 1>-         0.58%   11.04%    0.34%    4.57%    3.24%    0.84%    5.06%    0.46%
 33  1     5    1  |1 1>-         0.06%    7.26%    0.44%   14.04%   10.19%    0.74%    1.97%    0.03%
 34  1     6    1  |1 1>-         1.00%    0.03%    0.65%    0.11%    0.13%    0.00%    0.42%    7.75%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.64%    0.95%    0.02%    0.04%    0.05%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.06%    0.00%    0.07%    1.15%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.02%    0.14%    1.06%    0.09%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    3.34%   15.11%    0.02%    0.03%    0.02%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   12.67%    3.53%    2.32%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    1.06%    0.46%    0.14%    7.07%    9.79%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.07%    0.00%    5.70%    7.28%    5.47%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   14.05%    2.95%    0.00%    0.61%    0.92%
  7  1     7    1  |0 0>          0.03%   53.86%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         31.81%    0.04%   22.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>         22.05%    0.00%   31.84%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.09%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         1.91%    0.00%    1.32%    0.00%    0.00%    0.65%    0.88%    0.53%
 13  1     3    1  |1 1>+         3.17%    0.00%    2.20%    0.00%    0.00%    0.39%    0.53%    0.32%
 14  1     4    1  |1 1>+         2.03%    1.52%    2.89%    0.01%    0.02%    0.42%    0.37%    0.01%
 15  1     5    1  |1 1>+         0.61%    4.89%    0.92%    0.06%    0.04%    0.11%    0.08%    0.54%
 16  1     6    1  |1 1>+         0.00%    0.04%    0.00%    0.12%    2.97%    0.10%    0.02%    0.09%
 17  1     7    1  |1 1>+         0.09%   11.43%    0.11%    3.74%    1.56%    0.31%   14.69%   18.56%
 18  1     8    1  |1 1>+         0.00%    0.59%    0.00%   44.17%    1.41%    0.17%    2.05%    2.60%
 19  1     9    1  |1 1>+         4.90%    0.19%    7.10%    0.21%    1.20%   24.72%    5.18%    6.96%
 20  1     1    1  |1 0>          0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    8.45%    0.00%    0.00%    0.00%    0.00%    0.02%    0.03%
 22  1     3    1  |1 0>          0.00%    0.16%    0.00%    0.20%    0.08%    0.00%    1.12%    1.84%
 23  1     4    1  |1 0>          0.91%    0.00%    0.64%    1.62%    0.67%    0.07%    0.00%    0.35%
 24  1     5    1  |1 0>          2.89%    0.00%    2.01%    0.49%    0.24%    0.19%    0.45%    0.04%
 25  1     6    1  |1 0>          2.65%    0.00%    3.81%    0.01%    0.03%    0.54%    0.15%    0.10%
 26  1     7    1  |1 0>          6.99%    0.00%    5.03%    0.13%    0.27%   12.10%   16.11%    9.87%
 27  1     8    1  |1 0>          5.11%    0.00%    7.11%    0.20%    1.10%   25.07%    7.53%    4.36%
 28  1     9    1  |1 0>          0.11%    0.00%    0.08%   14.89%   33.98%    1.45%    0.25%    0.25%
 29  1     1    1  |1 1>-         0.06%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.50%    0.00%    0.73%    0.02%    0.10%    1.84%    0.54%    0.33%
 31  1     3    1  |1 1>-         3.02%    0.00%    4.36%    0.00%    0.02%    0.30%    0.09%    0.05%
 32  1     4    1  |1 1>-         2.90%    0.01%    2.01%    0.58%    0.18%    0.22%    0.20%    0.24%
 33  1     5    1  |1 1>-         0.92%    0.03%    0.64%    1.80%    0.58%    0.11%    0.21%    0.00%
 34  1     6    1  |1 1>-         0.00%    6.42%    0.00%    0.05%    0.03%    0.00%    0.27%    0.48%
 35  1     7    1  |1 1>-         0.12%    0.57%    0.08%    9.75%   34.19%    0.90%    2.37%    3.01%
 36  1     8    1  |1 1>-         0.00%   11.62%    0.00%    3.23%    2.32%    0.07%   12.98%   20.28%
 37  1     9    1  |1 1>-         7.10%    0.02%    4.91%    0.21%    0.50%   11.75%   15.36%   10.64%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.37%   31.18%    0.00%    0.04%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   22.61%   10.52%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.66%    0.01%    0.23%    3.29%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.02%   10.77%   19.73%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   29.53%    2.40%    0.01%    0.05%
  7  1     7    1  |0 0>          0.00%    7.99%   15.68%    0.04%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    9.45%    5.50%    8.76%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    6.27%    2.53%   14.91%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         51.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.41%    0.21%    0.36%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    4.60%    2.45%    4.14%    0.00%    0.01%    6.17%   12.49%
 13  1     3    1  |1 1>+         0.00%    7.65%    4.05%    6.88%    0.00%    0.00%    3.71%    7.54%
 14  1     4    1  |1 1>+         0.00%    9.83%    2.26%   10.20%    0.09%    0.05%    3.92%    1.70%
 15  1     5    1  |1 1>+         0.00%    3.30%   15.06%    3.86%    0.39%    0.28%    1.02%    0.82%
 16  1     6    1  |1 1>+         0.00%    0.05%    0.09%    0.00%    9.82%   19.19%    0.54%    0.11%
 17  1     7    1  |1 1>+         0.77%    0.16%    0.27%    0.00%    0.88%    0.29%    0.11%    0.22%
 18  1     8    1  |1 1>+        15.47%    0.01%    0.01%    0.00%    8.25%    4.47%    0.05%    0.04%
 19  1     9    1  |1 1>+         0.02%    0.10%    0.07%    0.28%    0.06%    0.19%    6.72%    3.26%
 20  1     1    1  |1 0>          0.00%    0.31%    0.66%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    9.42%   19.76%    0.04%    0.03%    0.00%    0.00%    0.02%
 22  1     3    1  |1 0>          0.00%    0.17%    0.38%    0.00%    1.52%    0.02%    0.04%    0.75%
 23  1     4    1  |1 0>          0.00%    2.22%    1.15%    1.99%   21.53%    0.28%    0.65%    1.29%
 24  1     5    1  |1 0>          0.00%    7.01%    3.66%    6.30%    6.88%    0.07%    1.83%    3.71%
 25  1     6    1  |1 0>          0.00%    5.90%    2.42%   14.01%    0.01%    0.20%    4.94%    2.34%
 26  1     7    1  |1 0>          0.26%    0.18%    0.09%    0.17%    0.00%    0.11%    3.52%    6.70%
 27  1     8    1  |1 0>          0.00%    0.12%    0.05%    0.27%    0.02%    0.23%    6.68%    3.34%
 28  1     9    1  |1 0>         16.00%    0.00%    0.00%    0.00%    0.15%   13.31%    0.25%    0.13%
 29  1     1    1  |1 1>-         0.00%    0.26%    0.11%    0.62%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    1.13%    0.45%    2.67%    0.04%    0.73%   16.91%    8.01%
 31  1     3    1  |1 1>-         0.00%    6.71%    2.77%   16.05%    0.00%    0.14%    2.80%    1.33%
 32  1     4    1  |1 1>-         0.00%    7.46%    3.25%    6.29%    1.15%    5.94%    2.01%    3.86%
 33  1     5    1  |1 1>-         0.00%    1.82%    1.67%    1.98%    3.65%   18.45%    0.95%    1.33%
 34  1     6    1  |1 1>-         0.00%    7.16%   15.00%    0.02%    0.40%    0.16%    0.01%    0.20%
 35  1     7    1  |1 1>-        15.23%    0.00%    0.02%    0.00%   10.28%    2.13%    0.14%    0.04%
 36  1     8    1  |1 1>-         0.79%    0.13%    0.29%    0.00%    1.07%    0.11%    0.03%    0.21%
 37  1     9    1  |1 1>-         0.24%    0.19%    0.09%    0.16%    0.16%    0.03%    3.35%    6.92%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.48%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         28.43%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          3.04%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          1.64%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.01%    0.02%   17.46%    0.00%
  8  1     8    1  |0 0>          0.00%    8.74%    8.73%    0.03%    0.00%
  9  1     9    1  |0 0>          0.00%    8.75%    8.74%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   48.78%
 11  1     1    1  |1 1>+         0.00%    9.18%    9.17%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.27%    0.30%    0.30%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.14%    0.50%    0.50%    0.00%    0.00%
 14  1     4    1  |1 1>+         1.84%    0.46%    0.47%    0.28%    0.00%
 15  1     5    1  |1 1>+         5.20%    0.15%    0.14%    0.91%    0.00%
 16  1     6    1  |1 1>+         0.54%    0.00%    0.00%    0.01%    0.00%
 17  1     7    1  |1 1>+         9.09%    0.23%    0.29%   28.13%    0.81%
 18  1     8    1  |1 1>+         0.94%    0.00%    0.00%    1.45%   16.24%
 19  1     9    1  |1 1>+         0.22%   14.79%   14.74%    0.48%    0.02%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%   18.34%    0.00%
 21  1     2    1  |1 0>          0.51%    0.00%    0.00%    1.58%    0.00%
 22  1     3    1  |1 0>         27.45%    0.00%    0.00%    0.03%    0.00%
 23  1     4    1  |1 0>          1.13%    0.14%    0.14%    0.00%    0.00%
 24  1     5    1  |1 0>          0.56%    0.45%    0.46%    0.00%    0.00%
 25  1     6    1  |1 0>          0.10%    0.61%    0.60%    0.00%    0.00%
 26  1     7    1  |1 0>          0.12%   14.56%   15.06%    0.00%    0.27%
 27  1     8    1  |1 0>          0.14%   15.30%   14.79%    0.00%    0.00%
 28  1     9    1  |1 0>          0.01%    0.24%    0.25%    0.00%   16.80%
 29  1     1    1  |1 1>-         0.00%    9.17%    9.18%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.33%    0.11%    0.11%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.06%    0.69%    0.69%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.06%    0.46%    0.46%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.38%    0.15%    0.14%    0.01%    0.00%
 34  1     6    1  |1 1>-         6.95%    0.00%    0.00%    1.20%    0.00%
 35  1     7    1  |1 1>-         1.10%    0.24%    0.22%    1.44%   15.99%
 36  1     8    1  |1 1>-         9.19%    0.00%    0.00%   28.61%    0.83%
 37  1     9    1  |1 1>-         0.06%   14.79%   14.78%    0.02%    0.25%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3552.46       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *   1814796.261781262.26      9.10  19801.97  13716.19      5.10      0.08      1.28
 REAL TIME  *   1822841.28 SEC
 DISK USED  *         3.52 GB (local),       50.10 GB (total)
 SF USED    *        21.80 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2788.766444712553

              CI              CI           MULTI         RHF-SCF
  -2788.73395608  -2788.72480795  -2787.88842877  -2787.14843609
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
