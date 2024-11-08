
 Working directory              : /wrk/irikura/molpro.MbvfzCz8t6/
 Global scratch directory       : /wrk/irikura/molpro.MbvfzCz8t6/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.MbvfzCz8t6/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/7)
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
     occ,9,12
     wf,nelec=36,sym=1,spin=0;state,10; weight,99,1,1,1,1,1,1,1,1,1
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 06-Oct-24          TIME: 16:15:28  
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

     Node minimum: 1.311 MB, node maximum: 2.884 MB


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
 CPU TIMES  *         1.36      1.18
 REAL TIME  *         2.95 SEC
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
   7    -2787.14843609      -0.00000000     0.12D-05     0.28D-05     6     0       0.00      0.06    diag2
   8    -2787.14843609      -0.00000000     0.58D-07     0.17D-06     0     0       0.01      0.07    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.148436087695
  RHF One-electron energy           -3858.448225732897
  RHF Two-electron energy            1071.299789645202
  RHF Kinetic energy                 2992.657328216168
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
    5.1     2.00000    -4.26020     1  1  d1-  1.00118
    6.1     2.00000    -4.26020     1  1  d1+  1.00120
    7.1     2.00000    -4.26020     1  1  d2-  0.99556
    8.1     2.00000    -4.26020     1  1  d2+  0.99557
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
 CPU TIMES  *         1.44      0.07      1.18
 REAL TIME  *         3.04 SEC
 DISK USED  *        30.69 MB (local),      499.34 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      95 (   45   50)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.598D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.124D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.692D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.103D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.104D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   2 3 5 4 6 1 2 4 6 3   5 1 4 6 3 5 2 6 4 5   3 2 1 4 6 5 3 2 7 8
                                       12 91110131415 1 2 6   4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.288D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.288D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.120D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.729D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.767D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.759D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.759D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 3 2 1 5 4 9 7 6  10 8 2 1 3 6 5 4 7 9   810 2 1 3 4 5 6 9 7
                                       10 8 6 4 9 7 510 8 2   1 3 5 4 6 9 710 8 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.84615   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855   0.00855
 Weight factors for state symmetry  2:    0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    10404
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   16    0  -2788.19412308   -2788.22324679   -0.02912370    0.34533275 0.00106711 0.00082683  0.38E+00      2.16
   2    6   17    0  -2788.22385475   -2788.22388970   -0.00003496    0.01058926 0.00005215 0.00002448  0.37E-01      4.54
   3    6   19    0  -2788.22388975   -2788.22388976   -0.00000001    0.00001256 0.00000000 0.00000007  0.12E-02      7.99
   4    2    4    0  -2788.22388976   -2788.22388976    0.00000000    0.00000003 0.00000000 0.00000002  0.19E-06      8.64

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.33E-07)
                       Final energy:  -2788.22388976
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.289159342767
 Nuclear energy                                  0.00000000
 Kinetic energy                               2994.23209038
 One electron energy                         -3877.14581230
 Two electron energy                          1088.85665296
 Virial ratio                                    1.93122012
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.866211003349
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.11763334
 One electron energy                         -3864.50482364
 Two electron energy                          1076.63861264
 Virial ratio                                    1.93173683
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.866211001254
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.11763336
 One electron energy                         -3864.50482381
 Two electron energy                          1076.63861281
 Virial ratio                                    1.93173683
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.866211000386
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.11763337
 One electron energy                         -3864.50482388
 Two electron energy                          1076.63861288
 Virial ratio                                    1.93173683
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.866210993336
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.11763346
 One electron energy                         -3864.50482445
 Two electron energy                          1076.63861346
 Virial ratio                                    1.93173683
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.866210993320
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.11763346
 One electron energy                         -3864.50482445
 Two electron energy                          1076.63861346
 Virial ratio                                    1.93173683
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.861928075981
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.10413815
 One electron energy                         -3864.47320173
 Two electron energy                          1076.61127366
 Virial ratio                                    1.93173961
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.861928075057
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.10413816
 One electron energy                         -3864.47320180
 Two electron energy                          1076.61127372
 Virial ratio                                    1.93173961
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.861928067534
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.10413824
 One electron energy                         -3864.47320236
 Two electron energy                          1076.61127429
 Virial ratio                                    1.93173961
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.832029789212
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.85263282
 One electron energy                         -3866.53967757
 Two electron energy                          1078.70764778
 Virial ratio                                    1.93149659
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.882432386133
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.04936405
 One electron energy                         -3864.33574312
 Two electron energy                          1076.45331074
 Virial ratio                                    1.93176351
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.870075385197
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.08330468
 One electron energy                         -3864.42156158
 Two electron energy                          1076.55148619
 Virial ratio                                    1.93174882
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.870075383438
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.08330470
 One electron energy                         -3864.42156174
 Two electron energy                          1076.55148636
 Virial ratio                                    1.93174882
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.870075382708
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.08330471
 One electron energy                         -3864.42156180
 Two electron energy                          1076.55148642
 Virial ratio                                    1.93174882
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.870075376809
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.08330478
 One electron energy                         -3864.42156234
 Two electron energy                          1076.55148697
 Virial ratio                                    1.93174882
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.870075376803
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.08330478
 One electron energy                         -3864.42156234
 Two electron energy                          1076.55148697
 Virial ratio                                    1.93174882
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.862216123795
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.09784589
 One electron energy                         -3864.45634297
 Two electron energy                          1076.59412685
 Virial ratio                                    1.93174166
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.862216122881
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.09784590
 One electron energy                         -3864.45634304
 Two electron energy                          1076.59412692
 Virial ratio                                    1.93174166
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.862216115439
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.09784598
 One electron energy                         -3864.45634359
 Two electron energy                          1076.59412748
 Virial ratio                                    1.93174166
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.010009488500
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000017
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999998
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999999960
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.989990511525
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999999
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000000001
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.010106877318
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000136
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000013
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999678
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.989893274738
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999998
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999999997
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000001
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.168065539297
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999994920
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000005059
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999999813
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.831934460899
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000217
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999794
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.168854640963
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999998562
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000002170
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999995732
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.831146587849
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000001503
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999998414
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     2.821924972202
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000005052
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999994929
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000227
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.178075027576
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999999794
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000000220
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999999
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000001
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     2.821038481718
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000001300
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999997813
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000004590
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.178960137413
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999998501
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000001593
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999999
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999989
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999986
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000011
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000013
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000001
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     5.999999999999
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     5.999999999997
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     5.999999999997
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000003
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000003
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 1   2 5 3 4 6 1 2 4 3 5   6 1 4 6 5 3 2 4 6 3   5 2 1 4 6 5 3 2 9 7
                                       12 81114151310 1 2 4   6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   1 2 2 3 1 4 9 7 6 5   810 2 3 1 4 6 5 7 9   810 2 1 3 4 6 5 9 7
                                        810 6 4 810 9 7 5 2   1 3 4 6 5 9 710 8 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.41997     1  1  s    0.99997
    2.1     2.00000   -72.09418     1  2  s    0.99990
    3.1     2.00000   -11.26232     1  3  s    0.99893
    4.1     2.00000    -3.79085     1  1  d0   1.00001
    5.1     2.00000    -3.79085     1  1  d1+  1.00001
    6.1     2.00000    -3.79085     1  1  d1-  1.00001
    7.1     2.00000    -3.79085     1  1  d2-  1.00001
    8.1     2.00000    -3.79085     1  1  d2+  1.00001
    9.1     1.99997    -1.22295     1  4  s    1.00951
    1.2     2.00000   -63.55907     1  1  py   0.99998
    2.2     2.00000   -63.55907     1  1  px   0.99998
    3.2     2.00000   -63.55907     1  1  pz   0.99998
    4.2     2.00000    -8.45473     1  2  py   0.99955
    5.2     2.00000    -8.45473     1  2  px   0.99955
    6.2     2.00000    -8.45473     1  2  pz   0.99955
    7.2     1.94706    -0.54604     1  3  py   1.01575
    8.2     1.94706    -0.54604     1  3  px   1.01575
    9.2     1.94706    -0.54604     1  3  pz   1.01575
   10.2     0.05295     0.08577     1  3  pz  -0.44314    1  8  pz   0.66342    1  9  pz   0.43237
   11.2     0.05295     0.08577     1  3  px  -0.44314    1  8  px   0.66342    1  9  px   0.43237
   12.2     0.05295     0.08577     1  3  py  -0.44314    1  8  py   0.66342    1  9  py   0.43237
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.99910047     -0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 2b20a0      -0.00814000     -0.57218807     -0.00000029     -0.00000097     -0.00000170      0.02865887     -0.00000000
 2 2a20b0       0.00814000      0.57218807      0.00000029      0.00000097      0.00000170     -0.02865887      0.00000000
 2 b2200a      -0.00814001      0.26127452     -0.00000092      0.00000062      0.00001090     -0.50985867      0.00000000
 2 a2200b       0.00814001     -0.26127452      0.00000092     -0.00000062     -0.00001090      0.50985867     -0.00000000
 2 2a200b      -0.00000000     -0.00000083      0.00002037      0.49614953      0.00000027      0.00000018      0.00000712
 2 2b200a       0.00000000      0.00000083     -0.00002037     -0.49614953     -0.00000027     -0.00000018     -0.00000712
 2 2b2a00      -0.00000000      0.00000030     -0.49614962      0.00002037     -0.00000054      0.00000105     -0.49643807
 2 2a2b00       0.00000000     -0.00000030      0.49614962     -0.00002037      0.00000054     -0.00000105      0.49643807
 2 22b00a      -0.00000000      0.00000097      0.00000054      0.00000027     -0.49615034     -0.00001011     -0.00000023
 2 22a00b       0.00000000     -0.00000097     -0.00000054     -0.00000027      0.49615034      0.00001011      0.00000023
 2 a22b00       0.00000000     -0.00000097     -0.00000054     -0.00000027      0.49615053      0.00001011     -0.00000023
 2 b22a00      -0.00000000      0.00000097      0.00000054      0.00000027     -0.49615053     -0.00001011      0.00000023
 2 22a0b0      -0.00000000     -0.00000030      0.49615125     -0.00002037      0.00000054     -0.00000105     -0.49643644
 2 22b0a0       0.00000000      0.00000030     -0.49615125      0.00002037     -0.00000054      0.00000105      0.49643644
 2 b220a0       0.00000000      0.00000083     -0.00002037     -0.49615135     -0.00000027     -0.00000018      0.00000712
 2 a220b0      -0.00000000     -0.00000083      0.00002037      0.49615135      0.00000027      0.00000018     -0.00000712
 2 22ab00       0.00814001     -0.31091310     -0.00000120     -0.00000035      0.00000920     -0.48119987      0.00000000
 2 22ba00      -0.00814001      0.31091310      0.00000120      0.00000035     -0.00000920      0.48119987     -0.00000000
 2 202020      -0.01182978     -0.07812788     -0.00000004     -0.00000013     -0.00000023      0.00391315     -0.00000000
 2 022002      -0.01182979      0.03567504     -0.00000012      0.00000008      0.00000149     -0.06961730      0.00000000
 2 220200      -0.01182979      0.04245280      0.00000016      0.00000005     -0.00000126      0.06570416     -0.00000000
 
 Energy:    -2788.28915934  -2787.86621100  -2787.86621100  -2787.86621100  -2787.86621099  -2787.86621099  -2787.86192808

 State:              8               9              10
 2 222000      -0.00000000     -0.00000000     -0.02615606
 2 2b20a0       0.00000000      0.00000000     -0.40172243
 2 2a20b0      -0.00000000     -0.00000000      0.40172243
 2 b2200a      -0.00000000      0.00000000     -0.40172277
 2 a2200b       0.00000000     -0.00000000      0.40172277
 2 2a200b       0.49643816      0.00000053      0.00000000
 2 2b200a      -0.49643816     -0.00000053     -0.00000000
 2 2b2a00       0.00000712      0.00000023     -0.00000000
 2 2a2b00      -0.00000712     -0.00000023      0.00000000
 2 22b00a       0.00000053     -0.49643735      0.00000000
 2 22a00b      -0.00000053      0.49643735     -0.00000000
 2 a22b00       0.00000053     -0.49643716     -0.00000000
 2 b22a00      -0.00000053      0.49643716      0.00000000
 2 22a0b0       0.00000712      0.00000023      0.00000000
 2 22b0a0      -0.00000712     -0.00000023     -0.00000000
 2 b220a0       0.49643634      0.00000053     -0.00000000
 2 a220b0      -0.49643634     -0.00000053      0.00000000
 2 22ab00       0.00000000      0.00000000      0.40172273
 2 22ba00      -0.00000000     -0.00000000     -0.40172273
 2 202020       0.00000000      0.00000000     -0.05360456
 2 022002      -0.00000000      0.00000000     -0.05360462
 2 220200      -0.00000000     -0.00000000     -0.05360461
 
 Energy:    -2787.86192808  -2787.86192807  -2787.83202979
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57420868      0.81021328     -0.00000015     -0.00000048     -0.00000565     -0.04077810      0.00000000
 2 a2200a       0.57420819     -0.36979206      0.00000033     -0.00000067      0.00013327      0.72205456     -0.00000000
 2 a220a0      -0.00000000      0.00000046      0.00001462      0.70255424     -0.00000146      0.00000089     -0.00002718
 2 22a0a0      -0.00000000      0.00000011      0.70255418     -0.00001462      0.00000473     -0.00000026     -0.70215194
 2 a22a00       0.00000000     -0.00000167     -0.00000473      0.00000146      0.70255366     -0.00013052     -0.00000097
 2 22a00a       0.00000000     -0.00000167     -0.00000473      0.00000146      0.70255353     -0.00013052      0.00000097
 2 2a2a00      -0.00000000      0.00000011      0.70255304     -0.00001462      0.00000473     -0.00000026      0.70215308
 2 2a200a      -0.00000000      0.00000046      0.00001462      0.70255298     -0.00000146      0.00000089      0.00002718
 2 22aa00       0.57420825     -0.44042186     -0.00000018      0.00000115     -0.00012762     -0.68127636      0.00000000
 
 Energy:    -2787.88243239  -2787.87007539  -2787.87007538  -2787.87007538  -2787.87007538  -2787.87007538  -2787.86221612

 State:              8               9
 2 2a20a0      -0.00000000     -0.00000000
 2 a2200a       0.00000000      0.00000000
 2 a220a0      -0.70215188      0.00000129
 2 22a0a0       0.00002718     -0.00000097
 2 a22a00       0.00000129      0.70215245
 2 22a00a      -0.00000129     -0.70215258
 2 2a2a00      -0.00002718      0.00000097
 2 2a200a       0.70215315     -0.00000129
 2 22aa00      -0.00000000     -0.00000000
 
 Energy:    -2787.86221612  -2787.86221612
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.63      4.19      0.07      1.18
 REAL TIME  *        12.28 SEC
 DISK USED  *        48.34 MB (local),      746.55 MB (total)
 SF USED    *        45.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2788.289159  -0.0
    -2787.866211   6.0
    -2787.866211   6.0
    -2787.866211   6.0
    -2787.866211   6.0
    -2787.866211   6.0
    -2787.861928   2.0
    -2787.861928   2.0
    -2787.861928   2.0
    -2787.832030   0.0
    -2787.882432   0.0
    -2787.870075   6.0
    -2787.870075   6.0
    -2787.870075   6.0
    -2787.870075   6.0
    -2787.870075   6.0
    -2787.862216   2.0
    -2787.862216   2.0
    -2787.862216   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 36
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      231 conf      280 CSFs
 N elec internal:     9996 conf    21280 CSFs
 N-1 el internal:    15576 conf    58240 CSFs
 N-2 el internal:    14289 conf    77596 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.11 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2788.28915934
     2     -2787.86621100
     3     -2787.86621100
     4     -2787.86621100
     5     -2787.86621099
     6     -2787.86621099
     7     -2787.86192808
     8     -2787.86192808
     9     -2787.86192807
    10     -2787.83202979

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6388D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1258D-06

 Number of blocks in overlap matrix:   978   Smallest eigenvalue:  0.64D-07
 Number of N-2 electron functions:    2444
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       2767590
 Number of doubly external configurations:       5519120
 Total number of contracted configurations:      8297532
 Total number of uncontracted configurations:  177497512

 Diagonal Coupling coefficients finished.               Storage:  15155343 words, CPU-Time:     29.96 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1304981 words, CPU-time:      0.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.28915934    -0.00000000    -0.95983656  0.73D-02  0.61D-01    35.17
    1     2     2     1.00000000     0.00000000 -2787.86621100     0.00000000    -0.98588293  0.35D-01  0.66D-01    35.17
    1     3     3     1.00000000     0.00000000 -2787.86621100    -0.00000000    -0.97726479  0.36D-01  0.60D-01    35.17
    1     4     4     1.00000000     0.00000000 -2787.86621100    -0.00000000    -0.97730859  0.36D-01  0.60D-01    35.17
    1     5     5     1.00000000     0.00000000 -2787.86621099     0.00000000    -0.97725496  0.36D-01  0.60D-01    35.17
    1     6     6     1.00000000     0.00000000 -2787.86621099     0.00000000    -0.98114525  0.35D-01  0.63D-01    35.17
    1     7     7     1.00000000     0.00000000 -2787.86192808    -0.00000000    -0.97971832  0.37D-01  0.61D-01    35.17
    1     8     8     1.00000000     0.00000000 -2787.86192808    -0.00000000    -0.97979059  0.37D-01  0.61D-01    35.17
    1     9     9     1.00000000     0.00000000 -2787.86192807     0.00000000    -0.98023842  0.37D-01  0.61D-01    35.17
    1    10    10     1.00000000     0.00000000 -2787.83202979    -0.00000000    -1.00299303  0.85D-01  0.61D-01    35.17
    2     1     1     1.05295396    -0.84573695 -2789.13489629    -0.84573695    -0.01613820  0.97D-03  0.13D-02   295.06
    2     2     2     1.07166504    -0.84026683 -2788.70647783    -0.84026683    -0.01635651  0.25D-02  0.96D-03   295.06
    2     3     3     1.07077370    -0.83987176 -2788.70608276    -0.83987176    -0.01674915  0.27D-02  0.98D-03   295.06
    2     4     4     1.07076774    -0.83984535 -2788.70605635    -0.83984535    -0.01676250  0.27D-02  0.98D-03   295.06
    2     5     5     1.07075904    -0.83983580 -2788.70604680    -0.83983580    -0.01677609  0.27D-02  0.99D-03   295.06
    2     6     6     1.07303549    -0.83956058 -2788.70577157    -0.83956058    -0.01688918  0.25D-02  0.11D-02   295.06
    2     7     7     1.07209518    -0.84103839 -2788.70296646    -0.84103839    -0.01648887  0.28D-02  0.95D-03   295.06
    2     8     8     1.07199151    -0.84101723 -2788.70294531    -0.84101723    -0.01651414  0.28D-02  0.95D-03   295.06
    2     9     9     1.07197588    -0.84098084 -2788.70290891    -0.84098084    -0.01653092  0.28D-02  0.96D-03   295.06
    2    10    10     1.10100292    -0.83367047 -2788.66570026    -0.83367047    -0.03312857  0.14D-01  0.13D-02   295.06
    3     1     1     1.05968691    -0.86260483 -2789.15176417    -0.01686788    -0.00086126  0.13D-04  0.10D-03   555.70
    3     2     2     1.06612537    -0.85641663 -2788.72262763    -0.01614980    -0.00074146  0.54D-04  0.90D-04   555.70
    3     3     3     1.06634659    -0.85641305 -2788.72262405    -0.01654129    -0.00073296  0.52D-04  0.91D-04   555.70
    3     4     4     1.06611112    -0.85641208 -2788.72262308    -0.01656672    -0.00074493  0.54D-04  0.90D-04   555.70
    3     5     5     1.06611480    -0.85640867 -2788.72261966    -0.01657286    -0.00074554  0.54D-04  0.90D-04   555.70
    3     6     6     1.06625147    -0.85632463 -2788.72253562    -0.01676405    -0.00078678  0.51D-04  0.10D-03   555.70
    3     7     7     1.06687209    -0.85735330 -2788.71928138    -0.01631491    -0.00073365  0.61D-04  0.87D-04   555.70
    3     8     8     1.06685718    -0.85735280 -2788.71928088    -0.01633557    -0.00073405  0.61D-04  0.87D-04   555.70
    3     9     9     1.06684028    -0.85734162 -2788.71926969    -0.01636078    -0.00073966  0.61D-04  0.88D-04   555.70
    3    10    10     1.07153256    -0.86657539 -2788.69860518    -0.03290491    -0.00132341  0.17D-03  0.13D-03   555.70
    4     1     1     1.06348087    -0.86369708 -2789.15285643    -0.00109226    -0.00006726  0.22D-05  0.67D-05   816.28
    4     2     2     1.06764996    -0.85733814 -2788.72354914    -0.00092151    -0.00008334  0.34D-05  0.10D-04   816.28
    4     3     3     1.06764805    -0.85733793 -2788.72354893    -0.00092488    -0.00008356  0.34D-05  0.10D-04   816.28
    4     4     4     1.06764644    -0.85733644 -2788.72354744    -0.00092436    -0.00008426  0.34D-05  0.10D-04   816.28
    4     5     5     1.06759073    -0.85733643 -2788.72354742    -0.00092776    -0.00008673  0.37D-05  0.10D-04   816.28
    4     6     6     1.06747450    -0.85732469 -2788.72353568    -0.00100006    -0.00009528  0.40D-05  0.11D-04   816.28
    4     7     7     1.06811642    -0.85826274 -2788.72019081    -0.00090943    -0.00008368  0.34D-05  0.10D-04   816.28
    4     8     8     1.06812282    -0.85826271 -2788.72019078    -0.00090990    -0.00008362  0.34D-05  0.10D-04   816.28
    4     9     9     1.06811751    -0.85826043 -2788.72018850    -0.00091881    -0.00008496  0.35D-05  0.10D-04   816.28
    4    10    10     1.07249325    -0.86810705 -2788.70013684    -0.00153166    -0.00011786  0.50D-05  0.15D-04   816.28
    5     1     1     1.06389459    -0.86377950 -2789.15293884    -0.00008241    -0.00000519  0.21D-06  0.52D-06  1076.98
    5     2     2     1.06819752    -0.85744777 -2788.72365878    -0.00010963    -0.00000912  0.37D-06  0.10D-05  1076.98
    5     3     3     1.06821724    -0.85744627 -2788.72365727    -0.00010834    -0.00000981  0.37D-06  0.12D-05  1076.98
    5     4     4     1.06821713    -0.85744625 -2788.72365725    -0.00010981    -0.00000980  0.37D-06  0.12D-05  1076.98
    5     5     5     1.06819941    -0.85744623 -2788.72365723    -0.00010981    -0.00000995  0.41D-06  0.11D-05  1076.98
    5     6     6     1.06821705    -0.85744592 -2788.72365691    -0.00012123    -0.00000998  0.38D-06  0.12D-05  1076.98
    5     7     7     1.06868124    -0.85837124 -2788.72029932    -0.00010850    -0.00000960  0.35D-06  0.11D-05  1076.98
    5     8     8     1.06868140    -0.85837114 -2788.72029922    -0.00010843    -0.00000960  0.35D-06  0.11D-05  1076.98
    5     9     9     1.06868143    -0.85837081 -2788.72029888    -0.00011039    -0.00000984  0.35D-06  0.11D-05  1076.98
    5    10    10     1.07319655    -0.86826428 -2788.70029407    -0.00015723    -0.00001536  0.87D-06  0.18D-05  1076.98
    6     1     1     1.06387490    -0.86378585 -2789.15294520    -0.00000636    -0.00000052  0.15D-07  0.56D-07  1337.76
    6     2     2     1.06818937    -0.85745932 -2788.72367033    -0.00001155    -0.00000121  0.34D-07  0.16D-06  1337.76
    6     3     3     1.06818780    -0.85745915 -2788.72367015    -0.00001289    -0.00000145  0.43D-07  0.18D-06  1337.76
    6     4     4     1.06818768    -0.85745910 -2788.72367010    -0.00001285    -0.00000144  0.43D-07  0.18D-06  1337.76
    6     5     5     1.06818697    -0.85745904 -2788.72367003    -0.00001281    -0.00000148  0.44D-07  0.18D-06  1337.76
    6     6     6     1.06818806    -0.85745897 -2788.72366997    -0.00001305    -0.00000140  0.41D-07  0.18D-06  1337.76
    6     7     7     1.06866400    -0.85838365 -2788.72031172    -0.00001241    -0.00000134  0.37D-07  0.16D-06  1337.76
    6     8     8     1.06866334    -0.85838356 -2788.72031164    -0.00001242    -0.00000134  0.37D-07  0.17D-06  1337.76
    6     9     9     1.06866247    -0.85838356 -2788.72031163    -0.00001275    -0.00000138  0.38D-07  0.17D-06  1337.76
    6    10    10     1.07314067    -0.86828471 -2788.70031450    -0.00002042    -0.00000234  0.11D-06  0.29D-06  1337.76
    7     1     1     1.06389099    -0.86378649 -2789.15294583    -0.00000063    -0.00000006  0.24D-08  0.61D-08  1598.32
    7     2     2     1.06820250    -0.85746107 -2788.72367207    -0.00000174    -0.00000027  0.12D-07  0.29D-07  1598.32
    7     3     3     1.06820243    -0.85746100 -2788.72367200    -0.00000185    -0.00000027  0.12D-07  0.29D-07  1598.32
    7     4     4     1.06820202    -0.85746098 -2788.72367198    -0.00000188    -0.00000028  0.13D-07  0.30D-07  1598.32
    7     5     5     1.06820430    -0.85746096 -2788.72367195    -0.00000192    -0.00000024  0.11D-07  0.25D-07  1598.32
    7     6     6     1.06820287    -0.85746086 -2788.72367185    -0.00000188    -0.00000027  0.12D-07  0.29D-07  1598.32
    7     7     7     1.06867385    -0.85838540 -2788.72031347    -0.00000175    -0.00000025  0.11D-07  0.27D-07  1598.32
    7     8     8     1.06867341    -0.85838537 -2788.72031344    -0.00000181    -0.00000026  0.11D-07  0.28D-07  1598.32
    7     9     9     1.06867385    -0.85838533 -2788.72031340    -0.00000177    -0.00000025  0.11D-07  0.27D-07  1598.32
    7    10    10     1.07319320    -0.86828771 -2788.70031750    -0.00000300    -0.00000050  0.34D-07  0.52D-07  1598.32
    8     1     1     1.06389220    -0.86378652 -2789.15294586    -0.00000003    -0.00000004  0.62D-09  0.42D-08  1842.16
    8     2     2     1.06821133    -0.85746140 -2788.72367240    -0.00000033    -0.00000005  0.31D-08  0.49D-08  1842.16
    8     3     3     1.06821129    -0.85746133 -2788.72367233    -0.00000033    -0.00000005  0.31D-08  0.49D-08  1842.16
    8     4     4     1.06821104    -0.85746132 -2788.72367232    -0.00000034    -0.00000005  0.31D-08  0.50D-08  1842.16
    8     5     5     1.06821201    -0.85746125 -2788.72367224    -0.00000029    -0.00000004  0.26D-08  0.40D-08  1842.16
    8     6     6     1.06821190    -0.85746117 -2788.72367217    -0.00000032    -0.00000005  0.26D-08  0.42D-08  1842.16
    8     7     7     1.06868198    -0.85838570 -2788.72031377    -0.00000030    -0.00000005  0.27D-08  0.42D-08  1842.16
    8     8     8     1.06868177    -0.85838568 -2788.72031375    -0.00000031    -0.00000005  0.27D-08  0.44D-08  1842.16
    8     9     9     1.06868195    -0.85838563 -2788.72031370    -0.00000030    -0.00000005  0.27D-08  0.42D-08  1842.16
    8    10    10     1.07318841    -0.86828840 -2788.70031819    -0.00000069    -0.00000005  0.30D-08  0.55D-08  1842.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   6.1%
 P   0.3%  47.5%  35.3%

 Initialization:   1.7%
 Other:            8.2%

 Total CPU:     1842.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9690179   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000002   0.0000000  -0.0000000
                            0.0000000  -0.0066486
 22222222222/20\0           0.0004739  -0.0006283  -0.0006145   0.0013659  -0.1884086   0.7610135  -0.0000001   0.0000001
                           -0.0000000   0.5484871
 222222222222/\00           0.0004740   0.0032290   0.0019227   0.0018658   0.7532522  -0.2173421   0.0000002  -0.0000001
                           -0.0000000   0.5484850
 222222222222/00\           0.0000000  -0.0000529   0.6788548   0.0110641  -0.0017310   0.0000996  -0.6791966  -0.0092785
                            0.0005489  -0.0000000
 2222222222/22\00          -0.0000000  -0.0000530   0.6788732   0.0110644  -0.0017314   0.0000998   0.6791780   0.0092783
                           -0.0005487  -0.0000001
 2222222222/220\0          -0.0000000   0.6789482   0.0000462  -0.0000534  -0.0029603  -0.0001723   0.0003232   0.0165142
                            0.6790516   0.0000001
 22222222222/200\           0.0000000   0.6789516   0.0000463  -0.0000535  -0.0029603  -0.0001723  -0.0003230  -0.0165145
                           -0.6790484   0.0000001
 222222222222/0\0           0.0000000   0.0000445  -0.0110694   0.6788546  -0.0021620  -0.0017627  -0.0092891   0.6789926
                           -0.0165086   0.0000000
 22222222222/2\00          -0.0000000   0.0000442  -0.0110695   0.6788663  -0.0021622  -0.0017626   0.0092890  -0.6789809
                            0.0165082   0.0000000
 2222222222/2200\           0.0004739  -0.0026010  -0.0013081  -0.0032317  -0.5648393  -0.5436704  -0.0000001  -0.0000000
                           -0.0000000   0.5484883
 2222222222202020          -0.0099482   0.0000605   0.0000592  -0.0001315   0.0181431  -0.0732803   0.0000000  -0.0000000
                            0.0000000  -0.0523679
 2222222222220200          -0.0099482  -0.0003109  -0.0001852  -0.0001797  -0.0725317   0.0209274  -0.0000000   0.0000000
                            0.0000000  -0.0523668
 2222222222/2/\0\          -0.0112158  -0.0000393  -0.0000384   0.0000854  -0.0117781   0.0475698  -0.0000000   0.0000000
                            0.0000000  -0.0672714
 2222222222//20\\          -0.0112158   0.0002019   0.0001202   0.0001166   0.0470838  -0.0135852   0.0000000  -0.0000000
                            0.0000000  -0.0672708
 22222222222//\\0          -0.0112157  -0.0001626  -0.0000818  -0.0002020  -0.0353076  -0.0339831  -0.0000000  -0.0000000
                           -0.0000000  -0.0672707
 2222222222022002          -0.0099478   0.0002504   0.0001259   0.0003112   0.0543890   0.0523512   0.0000000   0.0000000
                           -0.0000000  -0.0523672

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969313    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.019192
 2          -0.000000   -0.000982    0.000063    0.967531   -0.000075   -0.004110    0.000000   -0.000004   -0.000000   -0.000000
 3           0.000000   -0.000873   -0.015774    0.000066    0.967409   -0.002261    0.000000   -0.000000    0.000013    0.000000
 4           0.000000    0.001502    0.967404   -0.000076    0.015767   -0.003712   -0.000010    0.000000    0.000000   -0.000000
 5           0.000000   -0.279207   -0.003081   -0.004219   -0.002467   -0.926361    0.000000    0.000000   -0.000000    0.000003
 6           0.000000    0.926377   -0.002512   -0.000246    0.000142   -0.279202   -0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000013   -0.000000   -0.013229    0.000460    0.967237    0.000000
 8          -0.000000    0.000000    0.000010   -0.000000   -0.000000    0.000000    0.966951    0.023518    0.013214   -0.000000
 9           0.000000    0.000000   -0.000000    0.000004    0.000000    0.000000   -0.023510    0.967041   -0.000782   -0.000000
 10          0.018622    0.000001    0.000000    0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000    0.965115

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969503    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000244
 2           0.000000    0.967540    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.967540   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.967541   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.967540   -0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.967540   -0.000000    0.000000   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967327   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967328   -0.000000    0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.967327    0.000000
 10         -0.000244    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.965295


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96931314 (fixed)   0.96950609 (relaxed)   0.96950308 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000918   -0.00001154   -0.83853557
 Singles      0.00332994   -0.01445267   -0.01629008
 Pairs        0.06056285    0.04277787   -0.00896087
 Total        1.06390197    0.02831365   -0.86378652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.28898473
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.51906754
 One electron energy                -3876.02469063
 Two electron energy                 1086.87174477
 Virial quotient                       -0.93141933
 Correlation energy                    -0.86396113
 !MRCI STATE 1.1 Energy             -2789.152945859520

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.20815468 (Davidson, fixed reference)
 Cluster corrected energies         -2789.20814897 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.20815468 (Davidson, rotated reference)

 Cluster corrected energies         -2789.20680347 (Pople, fixed reference)
 Cluster corrected energies         -2789.20679759 (Pople, relaxed reference)
 Cluster corrected energies         -2789.20680347 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96753121 (fixed)   0.96754186 (relaxed)   0.96754044 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001052   -0.00003747   -0.75910723
 Singles      0.01545428   -0.04657506   -0.05600265
 Pairs        0.05275777    0.00000011   -0.04235152
 Total        1.06822256   -0.04661243   -0.85746140
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86621100
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.59096765
 One electron energy                -3865.40282897
 Two electron energy                 1076.67915657
 Virial quotient                       -0.93156470
 Correlation energy                    -0.85746140
 !MRCI STATE 2.1 Energy             -2788.723672402657

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78217062 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78216793 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78217062 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78095756 (Pople, fixed reference)
 Cluster corrected energies         -2788.78095476 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78095756 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96740882 (fixed)   0.96754188 (relaxed)   0.96754046 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001052   -0.00003747   -0.75910713
 Singles      0.01545420   -0.04657495   -0.05600252
 Pairs        0.05275780   -0.00000006   -0.04235168
 Total        1.06822253   -0.04661249   -0.85746133
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86621099
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.59098754
 One electron energy                -3865.40284638
 Two electron energy                 1076.67917405
 Virial quotient                       -0.93156469
 Correlation energy                    -0.85746134
 !MRCI STATE 3.1 Energy             -2788.723672330957

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78217051 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78216782 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78217051 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78095745 (Pople, fixed reference)
 Cluster corrected energies         -2788.78095465 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78095745 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96740380 (fixed)   0.96754199 (relaxed)   0.96754057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001052   -0.00003747   -0.75910734
 Singles      0.01545426   -0.04657500   -0.05600258
 Pairs        0.05275749    0.00000004   -0.04235140
 Total        1.06822227   -0.04661244   -0.85746132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86621100
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.59094136
 One electron energy                -3865.40281358
 Two electron energy                 1076.67914126
 Virial quotient                       -0.93156471
 Correlation energy                    -0.85746132
 !MRCI STATE 4.1 Energy             -2788.723672317043

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78217028 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78216758 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78217028 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78095721 (Pople, fixed reference)
 Cluster corrected energies         -2788.78095441 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78095721 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92636062 (fixed)   0.96754155 (relaxed)   0.96754014 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001051   -0.00003747   -0.75910474
 Singles      0.01545380   -0.04657469   -0.05600223
 Pairs        0.05275892   -0.00000224   -0.04235428
 Total        1.06822323   -0.04661441   -0.85746125
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86621099
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.59133159
 One electron energy                -3865.40309882
 Two electron energy                 1076.67942658
 Virial quotient                       -0.93156459
 Correlation energy                    -0.85746125
 !MRCI STATE 5.1 Energy             -2788.723672241787

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78217102 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78216834 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78217102 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78095798 (Pople, fixed reference)
 Cluster corrected energies         -2788.78095520 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78095798 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92637663 (fixed)   0.96754160 (relaxed)   0.96754018 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001051   -0.00003747   -0.75910666
 Singles      0.01545369   -0.04657464   -0.05600200
 Pairs        0.05275893   -0.00000025   -0.04235252
 Total        1.06822313   -0.04661237   -0.85746117
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86621100
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.59128778
 One electron energy                -3865.40306834
 Two electron energy                 1076.67939617
 Virial quotient                       -0.93156460
 Correlation energy                    -0.85746116
 !MRCI STATE 6.1 Energy             -2788.723672165830

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78217085 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78216816 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78217085 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78095781 (Pople, fixed reference)
 Cluster corrected energies         -2788.78095502 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78095781 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96723691 (fixed)   0.96732864 (relaxed)   0.96732748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001029   -0.00003747   -0.75846398
 Singles      0.01600770   -0.04782937   -0.05760989
 Pairs        0.05267498   -0.00000003   -0.04231182
 Total        1.06869297   -0.04786687   -0.85838570
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86192807
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58880835
 One electron energy                -3865.38630817
 Two electron energy                 1076.66599440
 Virial quotient                       -0.93156425
 Correlation energy                    -0.85838570
 !MRCI STATE 7.1 Energy             -2788.720313771794

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77927884 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77927663 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77927884 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77808018 (Pople, fixed reference)
 Cluster corrected energies         -2788.77807789 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77808018 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96695136 (fixed)   0.96732874 (relaxed)   0.96732757 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001028   -0.00003747   -0.75846408
 Singles      0.01600782   -0.04782944   -0.05760995
 Pairs        0.05267466    0.00000001   -0.04231164
 Total        1.06869276   -0.04786690   -0.85838568
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86192808
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58873454
 One electron energy                -3865.38625984
 Two electron energy                 1076.66594609
 Virial quotient                       -0.93156427
 Correlation energy                    -0.85838568
 !MRCI STATE 8.1 Energy             -2788.720313751448

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77927863 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77927642 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77927863 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77807997 (Pople, fixed reference)
 Cluster corrected energies         -2788.77807768 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77807997 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96704144 (fixed)   0.96732866 (relaxed)   0.96732749 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001028   -0.00003747   -0.75846404
 Singles      0.01600768   -0.04782930   -0.05760978
 Pairs        0.05267497    0.00000001   -0.04231181
 Total        1.06869294   -0.04786676   -0.85838563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86192808
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58879617
 One electron energy                -3865.38630343
 Two electron energy                 1076.66598973
 Virial quotient                       -0.93156425
 Correlation energy                    -0.85838562
 !MRCI STATE 9.1 Energy             -2788.720313695568

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77927872 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77927652 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77927872 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77808007 (Pople, fixed reference)
 Cluster corrected energies         -2788.77807778 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77808007 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96511523 (fixed)   0.96529575 (relaxed)   0.96529484 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000934   -0.00004837    0.00015031
 Singles      0.01952961   -0.05142577   -0.06372160
 Pairs        0.05365948   -0.81703205   -0.80471711
 Total        1.07319843   -0.86850619   -0.86828840
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.83220440
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.83900146
 One electron energy                -3866.20888337
 Two electron energy                 1077.50856518
 Virial quotient                       -0.93147972
 Correlation energy                    -0.86811378
 !MRCI STATE 10.1 Energy            -2788.700318187121

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.76386276 (Davidson, fixed reference)
 Cluster corrected energies         -2788.76386101 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.76386276 (Davidson, rotated reference)

 Cluster corrected energies         -2788.76282059 (Pople, fixed reference)
 Cluster corrected energies         -2788.76281876 (Pople, relaxed reference)
 Cluster corrected energies         -2788.76282059 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      645.28       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2145.27   2139.63      4.19      0.07      1.18
 REAL TIME  *      2223.81 SEC
 DISK USED  *       692.70 MB (local),        9.54 GB (total)
 SF USED    *         6.65 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.20815468  AU                              
 SETTING HLSDIAG(2)     =     -2788.78217062  AU                              
 SETTING HLSDIAG(3)     =     -2788.78217051  AU                              
 SETTING HLSDIAG(4)     =     -2788.78217028  AU                              
 SETTING HLSDIAG(5)     =     -2788.78217102  AU                              
 SETTING HLSDIAG(6)     =     -2788.78217085  AU                              
 SETTING HLSDIAG(7)     =     -2788.77927884  AU                              
 SETTING HLSDIAG(8)     =     -2788.77927863  AU                              
 SETTING HLSDIAG(9)     =     -2788.77927872  AU                              
 SETTING HLSDIAG(10)    =     -2788.76386276  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 36
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:      196 conf      294 CSFs
 N elec internal:     9772 conf    32340 CSFs
 N-1 el internal:    14901 conf    99969 CSFs
 N-2 el internal:    12534 conf   138597 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2787.88243239
     2     -2787.87007539
     3     -2787.87007538
     4     -2787.87007538
     5     -2787.87007538
     6     -2787.87007538
     7     -2787.86221612
     8     -2787.86221612
     9     -2787.86221612

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1180D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1785D-06

 Number of blocks in overlap matrix:   937   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2227
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:       4749855
 Number of doubly external configurations:       5028260
 Total number of contracted configurations:      9794339
 Total number of uncontracted configurations:  316326744

 Diagonal Coupling coefficients finished.               Storage:  18307219 words, CPU-Time:     46.34 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1336008 words, CPU-time:      0.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.88243239     0.00000000    -0.98643797  0.31D-01  0.67D-01    51.30
    1     2     2     1.00000000     0.00000000 -2787.87007539     0.00000000    -0.98612035  0.33D-01  0.66D-01    51.30
    1     3     3     1.00000000     0.00000000 -2787.87007538     0.00000000    -0.98393829  0.33D-01  0.65D-01    51.30
    1     4     4     1.00000000     0.00000000 -2787.87007538    -0.00000000    -0.98451582  0.33D-01  0.65D-01    51.30
    1     5     5     1.00000000     0.00000000 -2787.87007538     0.00000000    -0.98396839  0.33D-01  0.65D-01    51.30
    1     6     6     1.00000000     0.00000000 -2787.87007538     0.00000000    -0.98258902  0.33D-01  0.64D-01    51.30
    1     7     7     1.00000000     0.00000000 -2787.86221612     0.00000000    -0.98546205  0.37D-01  0.65D-01    51.30
    1     8     8     1.00000000     0.00000000 -2787.86221612    -0.00000000    -0.98539384  0.37D-01  0.65D-01    51.30
    1     9     9     1.00000000     0.00000000 -2787.86221612    -0.00000000    -0.98542513  0.37D-01  0.65D-01    51.30
    2     1     1     1.07052350    -0.83873375 -2788.72116614    -0.83873375    -0.01594689  0.18D-02  0.10D-02   368.39
    2     2     2     1.07143841    -0.84108252 -2788.71115790    -0.84108252    -0.01538345  0.21D-02  0.88D-03   368.39
    2     3     3     1.07127709    -0.84088171 -2788.71095710    -0.84088171    -0.01550471  0.21D-02  0.90D-03   368.39
    2     4     4     1.07127432    -0.84086209 -2788.71093748    -0.84086209    -0.01551360  0.21D-02  0.90D-03   368.39
    2     5     5     1.07109968    -0.84004661 -2788.71012199    -0.84004661    -0.01602868  0.22D-02  0.97D-03   368.39
    2     6     6     1.07204275    -0.83949046 -2788.70956584    -0.83949046    -0.01648495  0.22D-02  0.11D-02   368.39
    2     7     7     1.07387507    -0.84099352 -2788.70320964    -0.84099352    -0.01622087  0.28D-02  0.91D-03   368.39
    2     8     8     1.07384985    -0.84098541 -2788.70320153    -0.84098541    -0.01622427  0.28D-02  0.91D-03   368.39
    2     9     9     1.07385885    -0.84095550 -2788.70317162    -0.84095550    -0.01624263  0.28D-02  0.92D-03   368.39
    3     1     1     1.06501546    -0.85408539 -2788.73651778    -0.01535164    -0.00057885  0.25D-04  0.79D-04   686.03
    3     2     2     1.06636624    -0.85598046 -2788.72605584    -0.01489794    -0.00057574  0.53D-04  0.69D-04   686.03
    3     3     3     1.06625724    -0.85594141 -2788.72601680    -0.01505970    -0.00060034  0.53D-04  0.73D-04   686.03
    3     4     4     1.06624747    -0.85593613 -2788.72601152    -0.01507404    -0.00060293  0.53D-04  0.73D-04   686.03
    3     5     5     1.06591668    -0.85577650 -2788.72585188    -0.01572989    -0.00069896  0.53D-04  0.88D-04   686.03
    3     6     6     1.06583579    -0.85571754 -2788.72579292    -0.01622708    -0.00073680  0.53D-04  0.96D-04   686.03
    3     7     7     1.06711270    -0.85698877 -2788.71920490    -0.01599526    -0.00067543  0.77D-04  0.78D-04   686.03
    3     8     8     1.06710639    -0.85698665 -2788.71920277    -0.01600124    -0.00067691  0.76D-04  0.79D-04   686.03
    3     9     9     1.06709274    -0.85698121 -2788.71919733    -0.01602571    -0.00067953  0.76D-04  0.79D-04   686.03
    4     1     1     1.06612416    -0.85478596 -2788.73721834    -0.00070056    -0.00006207  0.24D-05  0.76D-05  1002.75
    4     2     2     1.06720313    -0.85666581 -2788.72674120    -0.00068536    -0.00006014  0.23D-05  0.78D-05  1002.75
    4     3     3     1.06717867    -0.85666173 -2788.72673711    -0.00072032    -0.00006353  0.25D-05  0.81D-05  1002.75
    4     4     4     1.06717555    -0.85666076 -2788.72673615    -0.00072463    -0.00006416  0.26D-05  0.81D-05  1002.75
    4     5     5     1.06708768    -0.85664174 -2788.72671712    -0.00086524    -0.00007972  0.38D-05  0.94D-05  1002.75
    4     6     6     1.06700830    -0.85663536 -2788.72671074    -0.00091782    -0.00008535  0.40D-05  0.10D-04  1002.75
    4     7     7     1.06783242    -0.85779451 -2788.72001063    -0.00080573    -0.00007002  0.31D-05  0.90D-05  1002.75
    4     8     8     1.06783258    -0.85779442 -2788.72001054    -0.00080778    -0.00006987  0.31D-05  0.90D-05  1002.75
    4     9     9     1.06782654    -0.85779321 -2788.72000932    -0.00081199    -0.00007076  0.31D-05  0.91D-05  1002.75
    5     1     1     1.06669628    -0.85486341 -2788.73729580    -0.00007746    -0.00000528  0.27D-06  0.58D-06  1320.56
    5     2     2     1.06770500    -0.85674375 -2788.72681914    -0.00007794    -0.00000653  0.34D-06  0.76D-06  1320.56
    5     3     3     1.06770369    -0.85674352 -2788.72681890    -0.00008179    -0.00000671  0.35D-06  0.78D-06  1320.56
    5     4     4     1.06770440    -0.85674340 -2788.72681878    -0.00008264    -0.00000678  0.35D-06  0.78D-06  1320.56
    5     5     5     1.06769836    -0.85674268 -2788.72681805    -0.00010093    -0.00000766  0.41D-06  0.84D-06  1320.56
    5     6     6     1.06769996    -0.85674243 -2788.72681781    -0.00010707    -0.00000787  0.43D-06  0.86D-06  1320.56
    5     7     7     1.06840183    -0.85788444 -2788.72010056    -0.00008993    -0.00000733  0.38D-06  0.85D-06  1320.56
    5     8     8     1.06840212    -0.85788430 -2788.72010042    -0.00008988    -0.00000738  0.38D-06  0.86D-06  1320.56
    5     9     9     1.06840291    -0.85788423 -2788.72010035    -0.00009102    -0.00000746  0.39D-06  0.86D-06  1320.56
    6     1     1     1.06668134    -0.85486978 -2788.73730216    -0.00000636    -0.00000056  0.20D-07  0.79D-07  1638.40
    6     2     2     1.06770518    -0.85675213 -2788.72682751    -0.00000838    -0.00000095  0.33D-07  0.13D-06  1638.40
    6     3     3     1.06771515    -0.85675211 -2788.72682749    -0.00000859    -0.00000089  0.31D-07  0.12D-06  1638.40
    6     4     4     1.06771352    -0.85675207 -2788.72682745    -0.00000867    -0.00000091  0.32D-07  0.12D-06  1638.40
    6     5     5     1.06770572    -0.85675207 -2788.72682745    -0.00000939    -0.00000095  0.33D-07  0.13D-06  1638.40
    6     6     6     1.06771319    -0.85675203 -2788.72682740    -0.00000959    -0.00000091  0.32D-07  0.12D-06  1638.40
    6     7     7     1.06843108    -0.85789376 -2788.72010989    -0.00000932    -0.00000099  0.37D-07  0.13D-06  1638.40
    6     8     8     1.06843086    -0.85789372 -2788.72010984    -0.00000942    -0.00000101  0.38D-07  0.14D-06  1638.40
    6     9     9     1.06843118    -0.85789372 -2788.72010984    -0.00000949    -0.00000101  0.38D-07  0.14D-06  1638.40
    7     1     1     1.06668863    -0.85487051 -2788.73730290    -0.00000073    -0.00000009  0.47D-08  0.11D-07  1956.02
    7     2     2     1.06771846    -0.85675341 -2788.72682880    -0.00000128    -0.00000019  0.91D-08  0.22D-07  1956.02
    7     3     3     1.06771889    -0.85675334 -2788.72682873    -0.00000123    -0.00000019  0.92D-08  0.22D-07  1956.02
    7     4     4     1.06772119    -0.85675331 -2788.72682869    -0.00000124    -0.00000018  0.88D-08  0.19D-07  1956.02
    7     5     5     1.06772081    -0.85675331 -2788.72682868    -0.00000124    -0.00000019  0.91D-08  0.20D-07  1956.02
    7     6     6     1.06772063    -0.85675326 -2788.72682864    -0.00000123    -0.00000018  0.90D-08  0.20D-07  1956.02
    7     7     7     1.06843758    -0.85789512 -2788.72011125    -0.00000136    -0.00000021  0.10D-07  0.24D-07  1956.02
    7     8     8     1.06843745    -0.85789511 -2788.72011123    -0.00000139    -0.00000022  0.10D-07  0.24D-07  1956.02
    7     9     9     1.06843722    -0.85789511 -2788.72011123    -0.00000139    -0.00000022  0.10D-07  0.24D-07  1956.02
    8     1     1     1.06669154    -0.85487062 -2788.73730301    -0.00000011    -0.00000001  0.97D-09  0.14D-08  2273.35
    8     2     2     1.06772498    -0.85675365 -2788.72682903    -0.00000024    -0.00000004  0.23D-08  0.36D-08  2273.35
    8     3     3     1.06772481    -0.85675358 -2788.72682897    -0.00000024    -0.00000004  0.24D-08  0.35D-08  2273.35
    8     4     4     1.06772460    -0.85675353 -2788.72682891    -0.00000022    -0.00000004  0.22D-08  0.33D-08  2273.35
    8     5     5     1.06772454    -0.85675353 -2788.72682890    -0.00000022    -0.00000003  0.21D-08  0.32D-08  2273.35
    8     6     6     1.06772454    -0.85675348 -2788.72682886    -0.00000022    -0.00000004  0.22D-08  0.33D-08  2273.35
    8     7     7     1.06844199    -0.85789538 -2788.72011151    -0.00000026    -0.00000004  0.26D-08  0.39D-08  2273.35
    8     8     8     1.06844188    -0.85789537 -2788.72011150    -0.00000027    -0.00000004  0.27D-08  0.41D-08  2273.35
    8     9     9     1.06844187    -0.85789538 -2788.72011150    -0.00000027    -0.00000004  0.27D-08  0.41D-08  2273.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   7.4%
 P   0.3%  58.4%  25.2%

 Initialization:   2.1%
 Other:            5.8%

 Total CPU:     2273.3 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/20/0           0.5560597   0.7639442  -0.1814856   0.0000320  -0.0001427   0.0001526  -0.0000000   0.0000000
                            0.0000000
 222222222222//00           0.5560536  -0.2248023   0.7523420   0.0000786  -0.0000356  -0.0001097   0.0000000   0.0000000
                           -0.0000000
 222222222222/00/           0.0000000  -0.0001208   0.0000630  -0.0001898   0.0001927   0.6800120  -0.0030095  -0.0032584
                           -0.6793233
 2222222222/220/0          -0.0000000   0.0001448   0.0000752   0.0021074   0.6800097  -0.0001921   0.6793299   0.0005622
                           -0.0030122
 222222222222/0/0          -0.0000000  -0.0000493  -0.0000858   0.6800090  -0.0021073   0.0001904  -0.0005767   0.6793295
                           -0.0032559
 2222222222/22/00          -0.0000000  -0.0001208   0.0000631  -0.0001898   0.0001927   0.6800076   0.0030095   0.0032585
                            0.6793276
 22222222222/2/00           0.0000000  -0.0000493  -0.0000858   0.6800042  -0.0021073   0.0001904   0.0005767  -0.6793342
                            0.0032559
 22222222222/200/          -0.0000000   0.0001448   0.0000752   0.0021073   0.6800034  -0.0001921  -0.6793361  -0.0005622
                            0.0030122
 2222222222/2200/           0.5560566  -0.5391474  -0.5708513  -0.0001106   0.0001783  -0.0000430   0.0000000  -0.0000000
                           -0.0000000
 2222222222/2\/0/           0.0000002  -0.0136596  -0.0574983  -0.0000082   0.0000093   0.0000029   0.0000000  -0.0000000
                            0.0000000
 2222222222/\20//          -0.0000001  -0.0566247  -0.0169196  -0.0000062   0.0000139  -0.0000085   0.0000000  -0.0000000
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968231    0.000004   -0.000000   -0.000000   -0.000000    0.000002   -0.000000   -0.000000   -0.000000
 2          -0.000003    0.929125   -0.000070    0.000206   -0.000172   -0.270719   -0.000000    0.000000   -0.000000
 3           0.000003   -0.270719   -0.000122    0.000107    0.000090   -0.929126   -0.000000   -0.000000    0.000000
 4           0.000000    0.000033    0.967757    0.002999   -0.000270   -0.000136    0.000003    0.000000    0.000000
 5           0.000000   -0.000168   -0.002999    0.967757    0.000274    0.000161   -0.000000    0.000004   -0.000000
 6          -0.000000    0.000190    0.000271   -0.000273    0.967762    0.000038   -0.000000    0.000000   -0.000003
 7           0.000000   -0.000000   -0.000000   -0.000004    0.000000   -0.000000   -0.000821    0.967427    0.004286
 8           0.000000    0.000000   -0.000003    0.000000    0.000000   -0.000000    0.967425    0.000801    0.004640
 9           0.000000    0.000000    0.000000    0.000000    0.000003    0.000000   -0.004637   -0.004290    0.967416

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968231   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.967762    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.967762   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.967762    0.000000    0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.967762   -0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967762   -0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.967437   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.967437    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.967437


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96823144 (fixed)   0.96823272 (relaxed)   0.96823144 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000641   -0.00001332   -0.75822368
 Singles      0.01465880   -0.04608014   -0.05494500
 Pairs        0.05203316    0.00000000   -0.04170194
 Total        1.06669838   -0.04609346   -0.85487062
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88243239
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.56559835
 One electron energy                -3865.36583577
 Two electron energy                 1076.62853277
 Virial quotient                       -0.93157715
 Correlation energy                    -0.85487062
 !MRCI STATE 1.1 Energy             -2788.737303008084

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.79432149 (Davidson, fixed reference)
 Cluster corrected energies         -2788.79431909 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.79432149 (Davidson, rotated reference)

 Cluster corrected energies         -2788.79262496 (Pople, fixed reference)
 Cluster corrected energies         -2788.79262249 (Pople, relaxed reference)
 Cluster corrected energies         -2788.79262496 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.92912546 (fixed)   0.96776279 (relaxed)   0.96776171 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000857   -0.00002837   -0.75857425
 Singles      0.01525400   -0.04680538   -0.05607379
 Pairs        0.05247156    0.00000001   -0.04210560
 Total        1.06773413   -0.04683374   -0.85675365
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87007538
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.57989839
 One electron energy                -3865.38212093
 Two electron energy                 1076.65529189
 Virial quotient                       -0.93156920
 Correlation energy                    -0.85675365
 !MRCI STATE 2.1 Energy             -2788.726829034930

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78486050 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78485846 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78486050 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78318462 (Pople, fixed reference)
 Cluster corrected energies         -2788.78318252 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78318462 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92912555 (fixed)   0.96776287 (relaxed)   0.96776179 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000857   -0.00002837   -0.75857443
 Singles      0.01525399   -0.04680525   -0.05607371
 Pairs        0.05247140   -0.00000000   -0.04210545
 Total        1.06773396   -0.04683362   -0.85675358
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87007538
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.57982767
 One electron energy                -3865.38207281
 Two electron energy                 1076.65524384
 Virial quotient                       -0.93156922
 Correlation energy                    -0.85675359
 !MRCI STATE 3.1 Energy             -2788.726828967441

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78486029 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78485824 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78486029 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78318440 (Pople, fixed reference)
 Cluster corrected energies         -2788.78318230 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78318440 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96775719 (fixed)   0.96776297 (relaxed)   0.96776189 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000857   -0.00002836   -0.75857465
 Singles      0.01525392   -0.04680511   -0.05607369
 Pairs        0.05247127   -0.00000000   -0.04210519
 Total        1.06773375   -0.04683347   -0.85675353
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87007538
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.57995972
 One electron energy                -3865.38218062
 Two electron energy                 1076.65535171
 Virial quotient                       -0.93156918
 Correlation energy                    -0.85675353
 !MRCI STATE 4.1 Energy             -2788.726828908838

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78486004 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78485800 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78486004 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78318415 (Pople, fixed reference)
 Cluster corrected energies         -2788.78318205 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78318415 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96775720 (fixed)   0.96776300 (relaxed)   0.96776192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000857   -0.00002836   -0.75857474
 Singles      0.01525389   -0.04680507   -0.05607372
 Pairs        0.05247123    0.00000000   -0.04210507
 Total        1.06773368   -0.04683343   -0.85675353
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87007538
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58006981
 One electron energy                -3865.38225909
 Two electron energy                 1076.65543018
 Virial quotient                       -0.93156915
 Correlation energy                    -0.85675352
 !MRCI STATE 5.1 Energy             -2788.726828904929

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78485998 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78485794 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78485998 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78318408 (Pople, fixed reference)
 Cluster corrected energies         -2788.78318199 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78318408 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96776182 (fixed)   0.96776300 (relaxed)   0.96776192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000857   -0.00002836   -0.75857722
 Singles      0.01525391   -0.04680507   -0.05607363
 Pairs        0.05247121    0.00000269   -0.04210264
 Total        1.06773368   -0.04683074   -0.85675348
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87007538
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.57996377
 One electron energy                -3865.38218531
 Two electron energy                 1076.65535645
 Virial quotient                       -0.93156918
 Correlation energy                    -0.85675348
 !MRCI STATE 6.1 Energy             -2788.726828861757

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78485993 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78485789 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78485993 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78318404 (Pople, fixed reference)
 Cluster corrected energies         -2788.78318194 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78318404 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96742666 (fixed)   0.96743799 (relaxed)   0.96743650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000947   -0.00003011   -0.75542953
 Singles      0.01573216   -0.04717183   -0.05677972
 Pairs        0.05271048   -0.00359140   -0.04568613
 Total        1.06845211   -0.05079334   -0.85789538
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86221612
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58715707
 One electron energy                -3865.38288652
 Two electron energy                 1076.66277502
 Virial quotient                       -0.93156470
 Correlation energy                    -0.85789538
 !MRCI STATE 7.1 Energy             -2788.720111505415

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77883626 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77883344 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77883626 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77717603 (Pople, fixed reference)
 Cluster corrected energies         -2788.77717313 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77717603 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96742509 (fixed)   0.96743804 (relaxed)   0.96743655 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000947   -0.00003011   -0.75515152
 Singles      0.01573217   -0.04717185   -0.05677969
 Pairs        0.05271036   -0.00388849   -0.04596416
 Total        1.06845200   -0.05109045   -0.85789537
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86221612
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58707228
 One electron energy                -3865.38283119
 Two electron energy                 1076.66271969
 Virial quotient                       -0.93156472
 Correlation energy                    -0.85789537
 !MRCI STATE 8.1 Energy             -2788.720111497051

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77883615 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77883334 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77883615 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77717592 (Pople, fixed reference)
 Cluster corrected energies         -2788.77717303 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77717592 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96741594 (fixed)   0.96743804 (relaxed)   0.96743656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000947   -0.00003011   -0.00005195
 Singles      0.01573218   -0.04717186   -0.05677970
 Pairs        0.05271033   -0.81067613   -0.80106373
 Total        1.06845198   -0.85787810   -0.85789538
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86221612
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.58708237
 One electron energy                -3865.38283827
 Two electron energy                 1076.66272677
 Virial quotient                       -0.93156472
 Correlation energy                    -0.85789538
 !MRCI STATE 9.1 Energy             -2788.720111495070

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77883613 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77883332 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77883613 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77717591 (Pople, fixed reference)
 Cluster corrected energies         -2788.77717301 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77717591 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1327.43       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4802.36   2657.08   2139.63      4.19      0.07      1.18
 REAL TIME  *      4951.13 SEC
 DISK USED  *         1.34 GB (local),       18.86 GB (total)
 SF USED    *         7.12 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2788.79431909  AU                              
 SETTING HLSDIAG(12)    =     -2788.78485846  AU                              
 SETTING HLSDIAG(13)    =     -2788.78485824  AU                              
 SETTING HLSDIAG(14)    =     -2788.78485800  AU                              
 SETTING HLSDIAG(15)    =     -2788.78485794  AU                              
 SETTING HLSDIAG(16)    =     -2788.78485789  AU                              
 SETTING HLSDIAG(17)    =     -2788.77883344  AU                              
 SETTING HLSDIAG(18)    =     -2788.77883334  AU                              
 SETTING HLSDIAG(19)    =     -2788.77883332  AU                              


         HLSDIAG
    -2789.208155
    -2788.782171
    -2788.782171
    -2788.782170
    -2788.782171
    -2788.782171
    -2788.779279
    -2788.779279
    -2788.779279
    -2788.763863
    -2788.794319
    -2788.784858
    -2788.784858
    -2788.784858
    -2788.784858
    -2788.784858
    -2788.778833
    -2788.778833
    -2788.778833
                                                  

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

 Time for Seward_LS:       7.63 sec

       12644851. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3489 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.63 sec, REAL time:      7.75 sec


 SORTLS1 read    14261546. and wrote    14261546. SO integrals in    84 records. CPU time:      0.10 sec, REAL time:      0.23 sec
 SORTLS2 read    14261546. and wrote    69083406. SO integrals in    42 records. CPU time:      0.02 sec, REAL time:      0.14 sec

 FILE SIZES: FILE 1:   278.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   278.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1327.43       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4811.43      9.04   2657.08   2139.63      4.19      0.07      1.18
 REAL TIME  *      4960.64 SEC
 DISK USED  *         1.34 GB (local),       19.65 GB (total)
 SF USED    *         7.12 GB
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

 Original energies:  -2789.152946  -2788.723672  -2788.723672  -2788.723672  -2788.723672  -2788.723672  -2788.720314  -2788.720314
                     -2788.720314  -2788.700318
 Replaced energies:  -2789.208155  -2788.782171  -2788.782171  -2788.782170  -2788.782171  -2788.782171  -2788.779279  -2788.779279
                     -2788.779279  -2788.763863

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.737303  -2788.726829  -2788.726829  -2788.726829  -2788.726829  -2788.726829  -2788.720112  -2788.720111
                     -2788.720111
 Replaced energies:  -2788.794319  -2788.784858  -2788.784858  -2788.784858  -2788.784858  -2788.784858  -2788.778833  -2788.778833
                     -2788.778833



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.20815468

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   93492.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   93492.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   93492.77       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   93492.61       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   93492.64       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94127.37       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94127.41       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94127.39       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   97510.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00      -0.00     -13.32     973.80     -23.68       0.00
                            0.00      -0.00       0.01       0.00      -0.00       0.00     974.09      13.31      -0.79      -0.00

   12   2.1  1.0  1.0      -0.00       0.19     -16.04     992.76      -3.23      -2.51      -6.56     470.56     -11.55       0.00
                            0.00      -0.07     315.62       5.00      -0.57       0.11    -666.97      -9.24       0.50       0.00

   13   3.1  1.0  1.0       0.00      -0.12      15.36    -937.62       2.87       2.56      -6.88     498.23     -12.06      -0.00
                            0.00      -0.19    1328.58      21.58      -3.51       0.16     158.43       2.10      -0.20      -0.00

   14   4.1  1.0  1.0      -0.00       4.07       4.67       0.49     947.07    -983.99      -1.84       0.07      -0.17      -0.01
                           -0.00     682.86       0.27      -2.17      -2.60      -0.08       0.28      12.60     593.61       0.00

   15   5.1  1.0  1.0       0.00      -0.26     682.75      11.02      -4.67       3.15    -593.69      -8.26       0.65      -0.00
                           -0.00      -2.16      10.92    -682.77       1.81       1.68       8.24    -593.56      12.59      -0.00

   16   6.1  1.0  1.0       0.00    -682.86      -0.24       0.31       3.24      -0.10       0.45      14.48     593.56      -0.00
                            0.00      -5.67      -3.32      -4.94   -1325.69    -328.21      -0.14       0.17       0.16       0.01

   17   7.1  1.0  1.0       0.64       2.67    -592.00      -9.65       1.92       0.31     680.28       9.22      -3.56       0.77
                           -3.36      -0.54       9.65    -591.99       1.16       4.48       9.30    -680.08      15.96      -4.00

   18   8.1  1.0  1.0    -757.73       0.57      -1.63      -2.83    -492.59    -474.11       0.56      -0.07      -3.26    -903.55
                           -3.63     592.08       0.05      -0.53      -3.37       3.03       0.33      15.98     680.14      -4.33

   19   9.1  1.0  1.0       3.63     592.08       2.67       0.01      -0.23       2.12      -3.34     -16.58    -680.12       4.33
                         -757.72      -3.39      -0.58       3.82    -164.30     663.63      -0.04       2.94      -3.33    -903.55

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.66      33.50    1377.30       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1850.58       0.05       0.02      -8.18      -0.87       0.07       6.60     277.50       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     552.96      -0.08      -0.14      -2.47      -0.35      -0.55     -22.51    -928.71       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.12     965.59      15.99      -4.12      -5.61     839.58      11.23      -0.77      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -3.26      -3.97      -6.86    -535.41   -1855.73      -2.61       0.20       0.04      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.22      16.02    -965.58       3.22       3.03     -11.25     839.35     -20.27      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1071.60       3.98       3.14      -1.40     928.98    -268.03       0.76       4.27      -0.10   -1277.83

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.89       0.07    -837.17     -17.66       2.92      -0.33    -962.10      -8.53       0.67      -1.06

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.75      -0.07      17.65    -837.17      -1.46       3.36      -8.55     961.81     -23.39       5.67

   29   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00      -0.00     -13.32     973.80     -23.68       0.00
                           -0.00       0.00      -0.01      -0.00       0.00      -0.00    -974.09     -13.31       0.79       0.00

   30   2.1  1.0 -1.0      -0.00       0.19     -16.04     992.76      -3.23      -2.51      -6.56     470.56     -11.55       0.00
                           -0.00       0.07    -315.62      -5.00       0.57      -0.11     666.97       9.24      -0.50      -0.00

   31   3.1  1.0 -1.0       0.00      -0.12      15.36    -937.62       2.87       2.56      -6.88     498.23     -12.06      -0.00
                           -0.00       0.19   -1328.58     -21.58       3.51      -0.16    -158.43      -2.10       0.20       0.00

   32   4.1  1.0 -1.0      -0.00       4.07       4.67       0.49     947.07    -983.99      -1.84       0.07      -0.17      -0.01
                            0.00    -682.86      -0.27       2.17       2.60       0.08      -0.28     -12.60    -593.61      -0.00

   33   5.1  1.0 -1.0       0.00      -0.26     682.75      11.02      -4.67       3.15    -593.69      -8.26       0.65      -0.00
                            0.00       2.16     -10.92     682.77      -1.81      -1.68      -8.24     593.56     -12.59       0.00

   34   6.1  1.0 -1.0       0.00    -682.86      -0.24       0.31       3.24      -0.10       0.45      14.48     593.56      -0.00
                           -0.00       5.67       3.32       4.94    1325.69     328.21       0.14      -0.17      -0.16      -0.01

   35   7.1  1.0 -1.0       0.64       2.67    -592.00      -9.65       1.92       0.31     680.28       9.22      -3.56       0.77
                            3.36       0.54      -9.65     591.99      -1.16      -4.48      -9.30     680.08     -15.96       4.00

   36   8.1  1.0 -1.0    -757.73       0.57      -1.63      -2.83    -492.59    -474.11       0.56      -0.07      -3.26    -903.55
                            3.63    -592.08      -0.05       0.53       3.37      -3.03      -0.33     -15.98    -680.14       4.33

   37   9.1  1.0 -1.0       3.63     592.08       2.67       0.01      -0.23       2.12      -3.34     -16.58    -680.12       4.33
                          757.72       3.39       0.58      -3.82     164.30    -663.63       0.04      -2.94       3.33     903.55


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.64    -757.73       3.63       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       3.36       3.63     757.72      -0.00

    2   2.1  0.0  0.0       0.00       0.19      -0.12       4.07      -0.26    -682.86       2.67       0.57     592.08       0.00
                            0.00       0.07       0.19    -682.86       2.16       5.67       0.54    -592.08       3.39      -0.00

    3   3.1  0.0  0.0      -0.00     -16.04      15.36       4.67     682.75      -0.24    -592.00      -1.63       2.67       0.00
                           -0.01    -315.62   -1328.58      -0.27     -10.92       3.32      -9.65      -0.05       0.58       0.00

    4   4.1  0.0  0.0      -0.00     992.76    -937.62       0.49      11.02       0.31      -9.65      -2.83       0.01       0.00
                           -0.00      -5.00     -21.58       2.17     682.77       4.94     591.99       0.53      -3.82      -0.00

    5   5.1  0.0  0.0       0.00      -3.23       2.87     947.07      -4.67       3.24       1.92    -492.59      -0.23       0.00
                            0.00       0.57       3.51       2.60      -1.81    1325.69      -1.16       3.37     164.30      -0.00

    6   6.1  0.0  0.0      -0.00      -2.51       2.56    -983.99       3.15      -0.10       0.31    -474.11       2.12       0.00
                           -0.00      -0.11      -0.16       0.08      -1.68     328.21      -4.48      -3.03    -663.63      -0.00

    7   7.1  0.0  0.0     -13.32      -6.56      -6.88      -1.84    -593.69       0.45     680.28       0.56      -3.34       0.00
                         -974.09     666.97    -158.43      -0.28      -8.24       0.14      -9.30      -0.33       0.04      -0.66

    8   8.1  0.0  0.0     973.80     470.56     498.23       0.07      -8.26      14.48       9.22      -0.07     -16.58       0.00
                          -13.31       9.24      -2.10     -12.60     593.56      -0.17     680.08     -15.98      -2.94     -33.50

    9   9.1  0.0  0.0     -23.68     -11.55     -12.06      -0.17       0.65     593.56      -3.56      -3.26    -680.12       0.00
                            0.79      -0.50       0.20    -593.61     -12.59      -0.16     -15.96    -680.14       3.33   -1377.30

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.01      -0.00      -0.00       0.77    -903.55       4.33       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.01       4.00       4.33     903.55      -0.00

   11   1.1  1.0  1.0   90826.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.01       0.00    1573.39       1.30      -6.98      -0.00

   12   2.1  1.0  1.0       0.00   92902.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.08       5.16    1615.56      -0.52     318.24       0.09      -1.48      -0.00

   13   3.1  1.0  1.0       0.00       0.00   92902.83       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.08       0.00       1.42     482.73      -0.24   -1065.09      -0.79       4.60       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   92902.88       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00      -5.16      -1.42       0.00       0.42     843.06       4.15       4.35     962.68       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   92902.90       0.00       0.00       0.00       0.00      -0.00
                           -0.01   -1615.56    -482.73      -0.42       0.00      -2.86       0.04       0.26      -2.98      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   92902.91       0.00       0.00       0.00      -0.00
                           -0.00       0.52       0.24    -843.06       2.86       0.00      -0.66     962.69      -4.35      -0.01

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   94225.12       0.00       0.00      -0.94
                        -1573.39    -318.24    1065.09      -4.15      -0.04       0.66      -0.00       3.72       0.69       4.93

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94225.14       0.00    1112.55
                           -1.30      -0.09       0.79      -4.35      -0.26    -962.69      -3.72       0.00    -838.97       5.34

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94225.15      -5.33
                            6.98       1.48      -4.60    -962.68       2.98       4.35      -0.69     838.97       0.00    1112.54

   20   1.1  1.0  0.0      -0.00       0.00      -0.00       0.01      -0.00      -0.00      -0.94    1112.55      -5.33   90826.41
                            0.00       0.00      -0.00      -0.00       0.00       0.01      -4.93      -5.34   -1112.54       0.00

   21   2.1  1.0  0.0      -0.00       0.00      -0.17     866.80      -2.58       0.37      -0.58     539.70      -2.73       0.00
                           -0.00       0.00      -0.23       0.20      -0.04    -275.58       3.44       3.81     764.74      -0.00

   22   3.1  1.0  0.0       0.00       0.17      -0.00    -818.65       2.48      -0.16      -0.42     571.46      -2.81       0.00
                            0.00       0.23      -0.00       0.39      -0.25   -1160.00      -0.72      -0.80    -181.68      -0.00

   23   4.1  1.0  0.0      -0.01    -866.80     818.65       0.00       0.26       1.62      -0.20       0.10      -2.11       0.00
                            0.00      -0.20      -0.39       0.00    -596.15       0.00    -680.73       1.55       3.04      -0.00

   24   5.1  1.0  0.0       0.00       2.58      -2.48      -0.26      -0.00     596.14      -2.82      -3.44    -680.71       0.00
                           -0.00       0.04       0.25     596.15       0.00       0.35       1.53     680.73      -3.41      -0.00

   25   6.1  1.0  0.0       0.00      -0.37       0.16      -1.62    -596.14      -0.00     680.73       0.61      -2.83       0.00
                           -0.01     275.58    1160.00      -0.00      -0.35      -0.00      -0.19      -0.19       0.15      -0.00

   26   7.1  1.0  0.0       0.94       0.58       0.42       0.20       2.82    -680.73       0.00       2.84     593.24       0.00
                            4.93      -3.44       0.72     680.73      -1.53       0.19       0.00     593.23      -2.85      -0.00

   27   8.1  1.0  0.0   -1112.55    -539.70    -571.46      -0.10       3.44      -0.61      -2.84       0.00       0.50       0.00
                            5.34      -3.81       0.80      -1.55    -680.73       0.19    -593.23      -0.00       2.63      -0.00

   28   9.1  1.0  0.0       5.33       2.73       2.81       2.11     680.71       2.83    -593.24      -0.50      -0.00       0.00
                         1112.54    -764.74     181.68      -3.04       3.41      -0.15       2.85      -2.63      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.94
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.93

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1112.55
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       5.34

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.33
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1112.54


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.01       0.00    1071.60       0.89      -4.75       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.19
                        -1850.58    -552.96      -0.12       3.26      -0.22      -3.98      -0.07       0.07      -0.00      -0.07

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -16.04
                           -0.05       0.08    -965.59       3.97     -16.02      -3.14     837.17     -17.65       0.01     315.62

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     992.76
                           -0.02       0.14     -15.99       6.86     965.58       1.40      17.66     837.17       0.00       5.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.23
                            8.18       2.47       4.12     535.41      -3.22    -928.98      -2.92       1.46      -0.00      -0.57

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.51
                            0.87       0.35       5.61    1855.73      -3.03     268.03       0.33      -3.36       0.00       0.11

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.32      -6.56
                           -0.07       0.55    -839.58       2.61      11.25      -0.76     962.10       8.55     974.09    -666.97

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     973.80     470.56
                           -6.60      22.51     -11.23      -0.20    -839.35      -4.27       8.53    -961.81      13.31      -9.24

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -23.68     -11.55
                         -277.50     928.71       0.77      -0.04      20.27       0.10      -0.67      23.39      -0.79       0.50

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1277.83       1.06      -5.67      -0.00       0.00

   11   1.1  1.0  1.0      -0.00       0.00      -0.01       0.00       0.00       0.94   -1112.55       5.33       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.01      -4.93      -5.34   -1112.54       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.17    -866.80       2.58      -0.37       0.58    -539.70       2.73       0.00       0.00
                           -0.00      -0.23       0.20      -0.04    -275.58       3.44       3.81     764.74       0.00       0.00

   13   3.1  1.0  1.0      -0.17      -0.00     818.65      -2.48       0.16       0.42    -571.46       2.81       0.00       0.00
                            0.23       0.00       0.39      -0.25   -1160.00      -0.72      -0.80    -181.68       0.00       0.00

   14   4.1  1.0  1.0     866.80    -818.65       0.00      -0.26      -1.62       0.20      -0.10       2.11       0.00       0.00
                           -0.20      -0.39      -0.00    -596.15       0.00    -680.73       1.55       3.04       0.00       0.00

   15   5.1  1.0  1.0      -2.58       2.48       0.26      -0.00    -596.14       2.82       3.44     680.71       0.00       0.00
                            0.04       0.25     596.15      -0.00       0.35       1.53     680.73      -3.41       0.00       0.00

   16   6.1  1.0  1.0       0.37      -0.16       1.62     596.14      -0.00    -680.73      -0.61       2.83       0.00       0.00
                          275.58    1160.00      -0.00      -0.35       0.00      -0.19      -0.19       0.15       0.00       0.00

   17   7.1  1.0  1.0      -0.58      -0.42      -0.20      -2.82     680.73       0.00      -2.84    -593.24       0.00       0.00
                           -3.44       0.72     680.73      -1.53       0.19      -0.00     593.23      -2.85       0.00       0.00

   18   8.1  1.0  1.0     539.70     571.46       0.10      -3.44       0.61       2.84       0.00      -0.50       0.00       0.00
                           -3.81       0.80      -1.55    -680.73       0.19    -593.23       0.00       2.63       0.00       0.00

   19   9.1  1.0  1.0      -2.73      -2.81      -2.11    -680.71      -2.83     593.24       0.50      -0.00       0.00       0.00
                         -764.74     181.68      -3.04       3.41      -0.15       2.85      -2.63       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   21   2.1  1.0  0.0   92902.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   22   3.1  1.0  0.0       0.00   92902.83       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.17
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.23

   23   4.1  1.0  0.0       0.00       0.00   92902.88       0.00       0.00       0.00       0.00       0.00       0.01     866.80
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.20

   24   5.1  1.0  0.0       0.00       0.00       0.00   92902.90       0.00       0.00       0.00       0.00      -0.00      -2.58
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.04

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   92902.91       0.00       0.00       0.00      -0.00       0.37
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.01     275.58

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   94225.12       0.00       0.00      -0.94      -0.58
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       4.93      -3.44

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94225.14       0.00    1112.55     539.70
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       5.34      -3.81

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94225.15      -5.33      -2.73
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    1112.54    -764.74

   29   1.1  1.0 -1.0       0.00      -0.00       0.01      -0.00      -0.00      -0.94    1112.55      -5.33   90826.41       0.00
                            0.00      -0.00      -0.00       0.00       0.01      -4.93      -5.34   -1112.54      -0.00      -0.00

   30   2.1  1.0 -1.0       0.00      -0.17     866.80      -2.58       0.37      -0.58     539.70      -2.73       0.00   92902.78
                            0.00      -0.23       0.20      -0.04    -275.58       3.44       3.81     764.74       0.00       0.00

   31   3.1  1.0 -1.0       0.17      -0.00    -818.65       2.48      -0.16      -0.42     571.46      -2.81       0.00       0.00
                            0.23      -0.00       0.39      -0.25   -1160.00      -0.72      -0.80    -181.68      -0.00       0.08

   32   4.1  1.0 -1.0    -866.80     818.65       0.00       0.26       1.62      -0.20       0.10      -2.11       0.00       0.00
                           -0.20      -0.39       0.00    -596.15       0.00    -680.73       1.55       3.04       0.00       5.16

   33   5.1  1.0 -1.0       2.58      -2.48      -0.26      -0.00     596.14      -2.82      -3.44    -680.71       0.00       0.00
                            0.04       0.25     596.15       0.00       0.35       1.53     680.73      -3.41       0.01    1615.56

   34   6.1  1.0 -1.0      -0.37       0.16      -1.62    -596.14      -0.00     680.73       0.61      -2.83       0.00       0.00
                          275.58    1160.00      -0.00      -0.35      -0.00      -0.19      -0.19       0.15       0.00      -0.52

   35   7.1  1.0 -1.0       0.58       0.42       0.20       2.82    -680.73       0.00       2.84     593.24       0.00       0.00
                           -3.44       0.72     680.73      -1.53       0.19       0.00     593.23      -2.85    1573.39     318.24

   36   8.1  1.0 -1.0    -539.70    -571.46      -0.10       3.44      -0.61      -2.84       0.00       0.50       0.00       0.00
                           -3.81       0.80      -1.55    -680.73       0.19    -593.23      -0.00       2.63       1.30       0.09

   37   9.1  1.0 -1.0       2.73       2.81       2.11     680.71       2.83    -593.24      -0.50      -0.00       0.00       0.00
                         -764.74     181.68      -3.04       3.41      -0.15       2.85      -2.63      -0.00      -6.98      -1.48


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.64    -757.73       3.63
                            0.00      -0.00      -0.00       0.00      -3.36      -3.63    -757.72

    2   2.1  0.0  0.0      -0.12       4.07      -0.26    -682.86       2.67       0.57     592.08
                           -0.19     682.86      -2.16      -5.67      -0.54     592.08      -3.39

    3   3.1  0.0  0.0      15.36       4.67     682.75      -0.24    -592.00      -1.63       2.67
                         1328.58       0.27      10.92      -3.32       9.65       0.05      -0.58

    4   4.1  0.0  0.0    -937.62       0.49      11.02       0.31      -9.65      -2.83       0.01
                           21.58      -2.17    -682.77      -4.94    -591.99      -0.53       3.82

    5   5.1  0.0  0.0       2.87     947.07      -4.67       3.24       1.92    -492.59      -0.23
                           -3.51      -2.60       1.81   -1325.69       1.16      -3.37    -164.30

    6   6.1  0.0  0.0       2.56    -983.99       3.15      -0.10       0.31    -474.11       2.12
                            0.16      -0.08       1.68    -328.21       4.48       3.03     663.63

    7   7.1  0.0  0.0      -6.88      -1.84    -593.69       0.45     680.28       0.56      -3.34
                          158.43       0.28       8.24      -0.14       9.30       0.33      -0.04

    8   8.1  0.0  0.0     498.23       0.07      -8.26      14.48       9.22      -0.07     -16.58
                            2.10      12.60    -593.56       0.17    -680.08      15.98       2.94

    9   9.1  0.0  0.0     -12.06      -0.17       0.65     593.56      -3.56      -3.26    -680.12
                           -0.20     593.61      12.59       0.16      15.96     680.14      -3.33

   10  10.1  0.0  0.0      -0.00      -0.01      -0.00      -0.00       0.77    -903.55       4.33
                           -0.00       0.00      -0.00       0.01      -4.00      -4.33    -903.55

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

   20   1.1  1.0  0.0       0.00      -0.01       0.00       0.00       0.94   -1112.55       5.33
                           -0.00      -0.00       0.00       0.01      -4.93      -5.34   -1112.54

   21   2.1  1.0  0.0       0.17    -866.80       2.58      -0.37       0.58    -539.70       2.73
                           -0.23       0.20      -0.04    -275.58       3.44       3.81     764.74

   22   3.1  1.0  0.0      -0.00     818.65      -2.48       0.16       0.42    -571.46       2.81
                            0.00       0.39      -0.25   -1160.00      -0.72      -0.80    -181.68

   23   4.1  1.0  0.0    -818.65       0.00      -0.26      -1.62       0.20      -0.10       2.11
                           -0.39      -0.00    -596.15       0.00    -680.73       1.55       3.04

   24   5.1  1.0  0.0       2.48       0.26      -0.00    -596.14       2.82       3.44     680.71
                            0.25     596.15      -0.00       0.35       1.53     680.73      -3.41

   25   6.1  1.0  0.0      -0.16       1.62     596.14      -0.00    -680.73      -0.61       2.83
                         1160.00      -0.00      -0.35       0.00      -0.19      -0.19       0.15

   26   7.1  1.0  0.0      -0.42      -0.20      -2.82     680.73       0.00      -2.84    -593.24
                            0.72     680.73      -1.53       0.19      -0.00     593.23      -2.85

   27   8.1  1.0  0.0     571.46       0.10      -3.44       0.61       2.84       0.00      -0.50
                            0.80      -1.55    -680.73       0.19    -593.23       0.00       2.63

   28   9.1  1.0  0.0      -2.81      -2.11    -680.71      -2.83     593.24       0.50      -0.00
                          181.68      -3.04       3.41      -0.15       2.85      -2.63       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01      -0.00   -1573.39      -1.30       6.98

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08      -5.16   -1615.56       0.52    -318.24      -0.09       1.48

   31   3.1  1.0 -1.0   92902.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.42    -482.73       0.24    1065.09       0.79      -4.60

   32   4.1  1.0 -1.0       0.00   92902.88       0.00       0.00       0.00       0.00       0.00
                            1.42      -0.00      -0.42    -843.06      -4.15      -4.35    -962.68

   33   5.1  1.0 -1.0       0.00       0.00   92902.90       0.00       0.00       0.00       0.00
                          482.73       0.42      -0.00       2.86      -0.04      -0.26       2.98

   34   6.1  1.0 -1.0       0.00       0.00       0.00   92902.91       0.00       0.00       0.00
                           -0.24     843.06      -2.86      -0.00       0.66    -962.69       4.35

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   94225.12       0.00       0.00
                        -1065.09       4.15       0.04      -0.66       0.00      -3.72      -0.69

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   94225.14       0.00
                           -0.79       4.35       0.26     962.69       3.72      -0.00     838.97

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   94225.15
                            4.60     962.68      -2.98      -4.35       0.69    -838.97      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.20815468 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   93492.694       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   93492.717       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   93492.769       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   93492.606       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   93492.643       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   94127.366       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   94127.412
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.003       0.000      -0.000     -18.841    1377.168
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.263     -22.688    1403.973      -4.570      -3.545      -9.283     665.475
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.177      21.728   -1325.999       4.054       3.618      -9.732     704.605
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.003       5.756       6.602       0.694    1339.365   -1391.570      -2.603       0.095
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.366     965.561      15.583      -6.611       4.455    -839.598     -11.684
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000    -965.715      -0.344       0.444       4.585      -0.146       0.636      20.471
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.910       3.777    -837.212     -13.642       2.710       0.445     962.056      13.039
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          -1071.594       0.809      -2.306      -3.997    -696.628    -670.491       0.794      -0.101
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              5.136     837.333       3.777       0.014      -0.321       3.002      -4.723     -23.450
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.655      33.496

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1850.579       0.053       0.023      -8.183      -0.865       0.073       6.598

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     552.959      -0.083      -0.136      -2.470      -0.345      -0.549     -22.510

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.118     965.587      15.987      -4.124      -5.610     839.581      11.233

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005      -3.261      -3.974      -6.862    -535.406   -1855.726      -2.605       0.203

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.216      16.016    -965.584       3.225       3.031     -11.248     839.345

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1071.597       3.982       3.142      -1.396     928.976    -268.026       0.759       4.272

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.887       0.068    -837.172     -17.659       2.917      -0.334    -962.097      -8.529

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.752      -0.072      17.654    -837.167      -1.463       3.363      -8.547     961.806

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.013       0.000      -0.000       0.000    1377.574      18.819

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.103     446.352       7.070      -0.804       0.149    -943.236     -13.066

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.269    1878.895      30.515      -4.965       0.233     224.060       2.966

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     965.712       0.384      -3.062      -3.678      -0.108       0.396      17.813

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -3.058      15.439    -965.584       2.558       2.376      11.658    -839.421

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003      -8.022      -4.695      -6.979   -1874.810    -464.162      -0.192       0.240

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.747      -0.769      13.648    -837.203       1.640       6.332      13.157    -961.784

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.140     837.322       0.065      -0.751      -4.763       4.291       0.469      22.596

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1071.584      -4.788      -0.819       5.397    -232.362     938.519      -0.061       4.153

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000      -0.000       0.000      -0.003       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.263      -0.177       5.756      -0.366    -965.715
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000     -22.688      21.728       6.602     965.561      -0.344
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.003    1403.973   -1325.999       0.694      15.583       0.444
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000      -4.570       4.054    1339.365      -6.611       4.585
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000      -3.545       3.618   -1391.570       4.455      -0.146
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     -18.841      -9.283      -9.732      -2.603    -839.598       0.636
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000    1377.168     665.475     704.605       0.095     -11.684      20.471
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           94127.391       0.000     -33.484     -16.329     -17.053      -0.236       0.922     839.425
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   97510.805       0.000       0.000      -0.000      -0.008      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -33.484       0.000   90826.413       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+            -16.329       0.000       0.000   92902.781       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            -17.053      -0.000       0.000       0.000   92902.828       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.236      -0.008       0.000       0.000       0.000   92902.882       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.922      -0.000       0.000       0.000       0.000       0.000   92902.895       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            839.425      -0.000       0.000       0.000       0.000       0.000       0.000   92902.905
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -5.039       1.085       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -4.614   -1277.816       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -961.830       6.124       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                             1377.301       0.000       0.000       0.000      -0.000      -0.000       0.000       0.009

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                              277.504       0.000      -0.000       0.000      -0.328       0.289      -0.050    -389.728

    3    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                             -928.706       0.000       0.000       0.328       0.000       0.552      -0.359   -1640.492

    4    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.770      -0.000       0.000      -0.289      -0.552       0.000    -843.087       0.004

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.040      -0.004      -0.000       0.050       0.359     843.087       0.000       0.500

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              -20.272      -0.000      -0.009     389.728    1640.492      -0.004      -0.500       0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.104   -1277.826       6.970      -4.861       1.017     962.693      -2.165       0.268

    8    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.665      -1.057       7.547      -5.393       1.126      -2.187    -962.692       0.271

    9    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                              -23.387       5.666    1573.367   -1081.513     256.940      -4.300       4.829      -0.219

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.113      -0.000       0.000       0.000      -0.000       0.000       0.011       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.706       0.000      -0.000      -0.000       0.076       5.156    1615.558      -0.518

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.285      -0.000       0.000      -0.076       0.000       1.418     482.726      -0.243

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              839.495       0.000      -0.000      -5.156      -1.418       0.000       0.416     843.064

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.806      -0.000      -0.011   -1615.558    -482.726      -0.416       0.000      -2.855

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.229       0.010      -0.000       0.518       0.243    -843.064       2.855       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.567      -5.661   -1573.388    -318.237    1065.086      -4.154      -0.037       0.661

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              961.867      -6.129      -1.302      -0.092       0.793      -4.349      -0.259    -962.693

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.714   -1277.811       6.977       1.480      -4.601    -962.679       2.985       4.345

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.910   -1071.594       5.136       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.005

    2    1  |0 0>               3.777       0.809     837.333       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1850.579    -552.959      -0.118       3.261

    3    1  |0 0>            -837.212      -2.306       3.777       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.053       0.083    -965.587       3.974

    4    1  |0 0>             -13.642      -3.997       0.014       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.023       0.136     -15.987       6.862

    5    1  |0 0>               2.710    -696.628      -0.321       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       8.183       2.470       4.124     535.406

    6    1  |0 0>               0.445    -670.491       3.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.865       0.345       5.610    1855.726

    7    1  |0 0>             962.056       0.794      -4.723       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.655      -0.073       0.549    -839.581       2.605

    8    1  |0 0>              13.039      -0.101     -23.450       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -33.496      -6.598      22.510     -11.233      -0.203

    9    1  |0 0>              -5.039      -4.614    -961.830       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1377.301    -277.504     928.706       0.770      -0.040

   10    1  |0 0>               1.085   -1277.816       6.124       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.004

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.328       0.289      -0.050

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.328       0.000       0.552      -0.359

    4    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.289      -0.552       0.000    -843.087

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.050       0.359     843.087       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.009     389.728    1640.492      -0.004      -0.500

    7    1  |1 1>+          94225.119       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       6.970      -4.861       1.017     962.693      -2.165

    8    1  |1 1>+              0.000   94225.142       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       7.547      -5.393       1.126      -2.187    -962.692

    9    1  |1 1>+              0.000       0.000   94225.146      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000    1573.367   -1081.513     256.940      -4.300       4.829

    1    1  |1 0>              -0.000      -0.000      -0.000   90826.413       0.000       0.000       0.000       0.000
                               -6.970      -7.547   -1573.367       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000   92902.781       0.000       0.000       0.000
                                4.861       5.393    1081.513      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000   92902.828       0.000       0.000
                               -1.017      -1.126    -256.940      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   92902.882       0.000
                             -962.693       2.187       4.300      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   92902.895
                                2.165     962.692      -4.829      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.268      -0.271       0.219      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     838.951      -4.024      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -838.951       0.000       3.717      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                4.024      -3.717       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.013       0.000
                             1573.388       1.302      -6.977      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.239   -1225.834       3.649
                              318.237       0.092      -1.480      -0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.239       0.000    1157.742      -3.510
                            -1065.086      -0.793       4.601      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.013    1225.834   -1157.742       0.000      -0.369
                                4.154       4.349     962.679      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000      -3.649       3.510       0.369       0.000
                                0.037       0.259      -2.985      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.000       0.523      -0.231       2.287     843.069
                               -0.661     962.693      -4.345      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000      -1.336      -0.820      -0.597      -0.282      -3.992
                               -0.000       3.720       0.694       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000    1573.376     763.255     808.161       0.142      -4.870
                               -3.720       0.000    -838.973      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000      -7.541      -3.862      -3.980      -2.983    -962.668
                               -0.694     838.973       0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1071.597       0.887      -4.752      -0.000      -0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.216      -3.982      -0.068       0.072       0.000       0.103       0.269    -965.712

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.016      -3.142     837.172     -17.654      -0.013    -446.352   -1878.895      -0.384

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              965.584       1.396      17.659     837.167      -0.000      -7.070     -30.515       3.062

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.225    -928.976      -2.917       1.463       0.000       0.804       4.965       3.678

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.031     268.026       0.334      -3.363      -0.000      -0.149      -0.233       0.108

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.248      -0.759     962.097       8.547   -1377.574     943.236    -224.060      -0.396

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -839.345      -4.272       8.529    -961.806     -18.819      13.066      -2.966     -17.813

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               20.272       0.104      -0.665      23.387       1.113      -0.706       0.285    -839.495

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1277.826       1.057      -5.666       0.000      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.009      -6.970      -7.547   -1573.367       0.000       0.000      -0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -389.728       4.861       5.393    1081.513      -0.000      -0.000       0.076       5.156

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                            -1640.492      -1.017      -1.126    -256.940       0.000      -0.076       0.000       1.418

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004    -962.693       2.187       4.300      -0.000      -5.156      -1.418       0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.500       2.165     962.692      -4.829      -0.011   -1615.558    -482.726      -0.416

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.268      -0.271       0.219      -0.000       0.518       0.243    -843.064

    7    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.268       0.000     838.951      -4.024   -1573.388    -318.237    1065.086      -4.154

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.271    -838.951       0.000       3.717      -1.302      -0.092       0.793      -4.349

    9    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.219       4.024      -3.717       0.000       6.977       1.480      -4.601    -962.679

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.239    1225.834
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.239       0.000   -1157.742
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.013   -1225.834    1157.742       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       3.649      -3.510      -0.369
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>           92902.905       0.000       0.000       0.000       0.000      -0.523       0.231      -2.287
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000   94225.119       0.000       0.000       1.336       0.820       0.597       0.282
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000   94225.142       0.000   -1573.376    -763.255    -808.161      -0.142
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000   94225.146       7.541       3.862       3.980       2.983
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       1.336   -1573.376       7.541   90826.413       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.523       0.820    -763.255       3.862       0.000   92902.781       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.231       0.597    -808.161       3.980       0.000       0.000   92902.828       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -2.287       0.282      -0.142       2.983       0.000       0.000       0.000   92902.882
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           -843.069       3.992       4.870     962.668       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000    -962.697      -0.859       3.997       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-            962.697       0.000      -4.021    -838.963       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.859       4.021       0.000      -0.712       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -3.997     838.963       0.712       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.003       4.747       5.140    1071.584

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                3.058       8.022       0.769    -837.322       4.788

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -15.439       4.695     -13.648      -0.065       0.819

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              965.584       6.979     837.203       0.751      -5.397

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -2.558    1874.810      -1.640       4.763     232.362

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -2.376     464.162      -6.332      -4.291    -938.519

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -11.658       0.192     -13.157      -0.469       0.061

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              839.421      -0.240     961.784     -22.596      -4.153

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -17.806      -0.229     -22.567    -961.867       4.714

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.010       5.661       6.129    1277.811

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.011       0.000    1573.388       1.302      -6.977

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             1615.558      -0.518     318.237       0.092      -1.480

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              482.726      -0.243   -1065.086      -0.793       4.601

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.416     843.064       4.154       4.349     962.679

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000      -2.855       0.037       0.259      -2.985

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                2.855       0.000      -0.661     962.693      -4.345

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.037       0.661      -0.000       3.720       0.694

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.259    -962.693      -3.720       0.000    -838.973

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                2.985       4.345      -0.694     838.973       0.000

    1    1  |1 0>              -0.000      -0.000      -1.336    1573.376      -7.541
                                0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>              -3.649       0.523      -0.820     763.255      -3.862
                               -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               3.510      -0.231      -0.597     808.161      -3.980
                                0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.369       2.287      -0.282       0.142      -2.983
                               -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000     843.069      -3.992      -4.870    -962.668
                                0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>            -843.069       0.000     962.697       0.859      -3.997
                               -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               3.992    -962.697       0.000       4.021     838.963
                                0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               4.870      -0.859      -4.021       0.000       0.712
                               -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>             962.668       3.997    -838.963      -0.712       0.000
                                0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          92902.895       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   92902.905       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   94225.119       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   94225.142       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   94225.146
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2789.20831837    -0.00016370      -35.93      0.00000000        0.00      0.0000
    2 -2788.79930949     0.40884518    89731.15      0.40900888    89767.07     11.1297
    3 -2788.79930948     0.40884519    89731.15      0.40900889    89767.08     11.1297
    4 -2788.79930948     0.40884520    89731.15      0.40900890    89767.08     11.1297
    5 -2788.79266812     0.41548656    91188.76      0.41565026    91224.69     11.3104
    6 -2788.79266811     0.41548656    91188.76      0.41565026    91224.69     11.3104
    7 -2788.79266803     0.41548665    91188.78      0.41565034    91224.71     11.3104
    8 -2788.79266801     0.41548666    91188.78      0.41565036    91224.71     11.3104
    9 -2788.79266792     0.41548676    91188.80      0.41565045    91224.73     11.3104
   10 -2788.79254086     0.41561381    91216.69      0.41577751    91252.62     11.3139
   11 -2788.79254084     0.41561384    91216.69      0.41577753    91252.62     11.3139
   12 -2788.79254079     0.41561389    91216.70      0.41577758    91252.63     11.3139
   13 -2788.79254074     0.41561394    91216.72      0.41577764    91252.64     11.3139
   14 -2788.79254072     0.41561396    91216.72      0.41577766    91252.65     11.3139
   15 -2788.79254070     0.41561398    91216.72      0.41577768    91252.65     11.3139
   16 -2788.79254062     0.41561406    91216.74      0.41577775    91252.67     11.3139
   17 -2788.78883144     0.41932324    92030.81      0.41948694    92066.74     11.4148
   18 -2788.78883136     0.41932332    92030.83      0.41948702    92066.76     11.4148
   19 -2788.78883132     0.41932336    92030.84      0.41948705    92066.77     11.4148
   20 -2788.78742842     0.42072626    92338.74      0.42088996    92374.67     11.4530
   21 -2788.78742831     0.42072637    92338.76      0.42089006    92374.69     11.4530
   22 -2788.78742828     0.42072640    92338.77      0.42089010    92374.70     11.4530
   23 -2788.78742825     0.42072642    92338.78      0.42089012    92374.70     11.4530
   24 -2788.78742821     0.42072647    92338.79      0.42089017    92374.71     11.4530
   25 -2788.77814312     0.43001155    94376.63      0.43017525    94412.55     11.7057
   26 -2788.76828529     0.43986938    96540.17      0.44003308    96576.10     11.9739
   27 -2788.76828520     0.43986948    96540.19      0.44003317    96576.12     11.9739
   28 -2788.76828518     0.43986950    96540.20      0.44003320    96576.12     11.9739
   29 -2788.76574720     0.44240748    97097.22      0.44257118    97133.15     12.0430
   30 -2788.76574716     0.44240752    97097.23      0.44257122    97133.15     12.0430
   31 -2788.76574712     0.44240756    97097.24      0.44257125    97133.16     12.0430
   32 -2788.76574711     0.44240757    97097.24      0.44257126    97133.16     12.0430
   33 -2788.76574706     0.44240762    97097.25      0.44257132    97133.18     12.0430
   34 -2788.76551665     0.44263803    97147.82      0.44280173    97183.75     12.0492
   35 -2788.76551659     0.44263808    97147.83      0.44280178    97183.76     12.0493
   36 -2788.76551656     0.44263811    97147.84      0.44280181    97183.76     12.0493
   37 -2788.75674401     0.45141067    99073.19      0.45157436    99109.12     12.2880

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99981262  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000006  0.00000004  0.00000062  0.63237648  0.13368627  0.00012821  0.00018398
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000001 -0.00000159  0.00000003  0.00038173 -0.00242867  0.64634126  0.00163831
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000097 -0.00000001 -0.00000002  0.00038365 -0.00136951  0.00121081 -0.00268149
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000002  0.00000006 -0.00000000 -0.13366822  0.63230475  0.00248471 -0.01074559
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000002 -0.00000002 -0.00000000 -0.00240204  0.01047640 -0.00159228  0.64627334
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00408585 -0.17057849  0.00021417  0.00000003  0.00000012 -0.00000164 -0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.17050643 -0.00409023 -0.00483120  0.00000011 -0.00000006 -0.00000011  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00483495 -0.00009835 -0.17055780  0.00000779  0.00000161  0.00000004  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00043911 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000046 -0.00000002  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.92133527  0.00946936  0.00371023  0.00000001  0.00000002  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.01301116 -0.00013024 -0.00004949 -0.00063248  0.00228807  0.00623567  0.00290550
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.01377567 -0.00013977 -0.00005701  0.00055817 -0.00208495 -0.00597683 -0.00282709
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000003 -0.00000320  0.00005081  0.00000449  0.08262359 -0.40007019 -0.00471019  0.43864806
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00016417  0.01640533 -0.00003214 -0.00048781  0.00314094 -0.29911480 -0.00215364
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00006536 -0.00003147 -0.01641054  0.29273901  0.06043628  0.00016015  0.00015469
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000948  0.00252207 -0.24597860  0.00150205  0.00046356  0.00116537 -0.14750760 -0.00029324
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.01117329 -0.00000268 -0.00020165  0.00118025  0.02595479 -0.12192580 -0.00058827 -0.11605984
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00005355 -0.00100593  0.00149277  0.24598598  0.14434402  0.03046322  0.00069320  0.00057332
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00372590  0.00150605  0.92138299 -0.00000289 -0.00000060 -0.00000001 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00002486 -0.00000766 -0.00542631 -0.56303479 -0.11642421 -0.00012216  0.00006271

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00007495  0.00003173  0.01815420 -0.16816030 -0.03476394 -0.00000477  0.00004515

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00017306 -0.01640539  0.00002942 -0.00048576  0.00240747 -0.29935029  0.00098131

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000516  0.00005078 -0.00000096 -0.03553947  0.17222382  0.00045805  0.57287580

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.01640589 -0.00017323 -0.00006871  0.00031937 -0.00162158 -0.00440169 -0.00217623

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01117332 -0.00108756 -0.00022000 -0.00000404 -0.03298025  0.15946582  0.00129871 -0.04993062

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000925 -0.00370628  0.24596367 -0.00041703 -0.00018323  0.00106492 -0.14749273 -0.00042835

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00004954 -0.24596270 -0.00370703 -0.00098858 -0.00004718  0.00005568  0.00283146  0.00121646

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00946321  0.92134180 -0.00154425 -0.00000001  0.00000001 -0.00000182  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00018583  0.01843410 -0.00002969 -0.00010253  0.00077703 -0.13876427 -0.00039300

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00004679 -0.00438044  0.00000942 -0.00058757  0.00373549 -0.58328677 -0.00153769

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00011722 -0.00002553 -0.01641189 -0.29260737 -0.06069652 -0.00017148 -0.00007510

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.01641015  0.00016531  0.00011696  0.00126656 -0.00120517 -0.00421835 -0.00197353

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000003 -0.00000466  0.00000363 -0.00000462 -0.11835144  0.57168438  0.00334109  0.13436404

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00004950  0.24597798  0.00252849  0.00119938 -0.00028253  0.00057623  0.00212652  0.00172849

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00005359  0.00119830 -0.00039999 -0.24598673  0.14449643  0.02970257  0.00003534  0.00081233

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.01117319 -0.00109545 -0.00000928  0.00117459  0.00702521 -0.03753619 -0.00070725  0.16598494

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00009158 -0.00000079 -0.00000074 -0.00059867  0.00062322  0.00000024  0.00000140  0.00000109
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00120943  0.00021040 -0.00000751 -0.00000102  0.00000021 -0.00038197 -0.00001122  0.00000048
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.64633276  0.00000341  0.00047939  0.00000027 -0.00000076 -0.00000729  0.00063603  0.00000061
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00136992 -0.00000078 -0.00000154  0.00000271 -0.00000318  0.00000110 -0.00000182  0.00021934
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00270790  0.00000012 -0.00000109  0.00000028  0.00000005 -0.00000066 -0.00000133 -0.00004892
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000011  0.00001949  0.00000014 -0.00000003 -0.00000000 -0.00000044 -0.00000005  0.00000002
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000762  0.00000030 -0.00001240  0.00000014  0.00000014 -0.00000001  0.00000522  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000022 -0.00000006  0.00000031  0.00000458  0.00000687 -0.00000002 -0.00000013 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001 -0.00000031
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000157 -0.00000000  0.00000313 -0.00000001  0.00000000  0.00000000 -0.00000181 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.43631200  0.00006755  0.63911897 -0.00051456 -0.00013025 -0.00041235  0.22359794  0.00000800
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.41167150 -0.00006077  0.40397061 -0.00129342  0.00081485  0.00080915 -0.55757433 -0.00001899
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00071617 -0.00195710  0.00004633  0.00004099 -0.00044003  0.00130954 -0.00003382  0.57717773
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00426913 -0.51733222  0.00007470 -0.00000082 -0.00032671  0.51571571  0.00089794 -0.00184878
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00018307  0.00007392 -0.00023003 -0.02611051  0.73011822  0.00053745  0.00090921  0.00046065
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00212639 -0.00005372 -0.00000006 -0.00000032  0.00000061  0.00008977  0.00000019  0.00000004
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00145843 -0.00000002 -0.00000003 -0.00000065  0.00000074  0.00000016 -0.00000011 -0.00002976
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00001764  0.00000003 -0.00000017 -0.00012761  0.00014524 -0.00000037  0.00000030  0.00000017
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000063 -0.00000007 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00008098  0.00009399 -0.00074198 -0.52389487  0.28260505  0.00037298  0.00090180  0.00002309

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000003 -0.00000000  0.00000000  0.00000000
                           0.00006867 -0.00024534  0.00035501  0.46467734  0.60181262  0.00033905  0.00006839  0.00015403

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00438577  0.36974786  0.00015815  0.00031627 -0.00044698  0.62988685  0.00071999 -0.00124833

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00489136 -0.00079165 -0.00001523  0.00002582  0.00010956 -0.00166483  0.00017563 -0.57733745

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.29909337  0.00016616 -0.23498674  0.00112087 -0.00083348 -0.00082972  0.69166609  0.00012026

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00009815 -0.00000003 -0.00000045  0.00000002 -0.00000014  0.00000001 -0.00000059  0.00005495

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00283451 -0.00004236 -0.00000055  0.00000022 -0.00000003  0.00008769 -0.00000045  0.00000007

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.14750246  0.00000021 -0.00009834 -0.00000007  0.00000017 -0.00000019 -0.00013963 -0.00000025

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003 -0.00000344 -0.00000000 -0.00000001  0.00000000 -0.00000053  0.00000001 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00193806  0.76446076 -0.00004791  0.00015744  0.00012783 -0.03607471 -0.00009699  0.00034831

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00837877 -0.10606112 -0.00006964 -0.00029368  0.00054615 -0.57963007 -0.00083426 -0.00030041

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000014  0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00099249 -0.00014530  0.00287504  0.71338456 -0.15773568 -0.00043650  0.00009025 -0.00026728

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.29876417  0.00004987  0.61082451 -0.00244908  0.00028779 -0.00071566  0.40088488  0.00020571

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00399804 -0.00020869 -0.00022371  0.00023387 -0.00027959 -0.00024065 -0.00009555  0.57753072

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.14750539  0.00000001 -0.00011277  0.00000007  0.00000003  0.00000024 -0.00014111 -0.00000011

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00015182 -0.00000017 -0.00000027 -0.00013762  0.00013650  0.00000004  0.00000019 -0.00000007

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00155716  0.00000004  0.00000055  0.00000069 -0.00000057 -0.00000016  0.00000070 -0.00002367

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000002 -0.00001061 -0.00000010 -0.00073531  0.00002284 -0.00550342 -0.48860027 -0.00034347
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000324 -0.00000000  0.00000010 -0.00018111 -0.00045896  0.48860306 -0.00550218 -0.00145046
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000007  0.00000021 -0.00000442  0.00034049  0.00144750  0.00144805 -0.00036025  0.48863762
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   5    1  |0 0>          -0.00000021  0.00000006  0.00000015 -0.48817092 -0.02081229 -0.00019104  0.00073561  0.00040292
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000006  0.00000003 -0.00000014  0.02081436 -0.48817207 -0.00044717 -0.00005011  0.00143287
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.71865643  0.00048285 -0.00105507 -0.00000023  0.00000005 -0.00000402  0.00000005  0.00000007
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00105796 -0.00438492  0.71864147  0.00000015 -0.00000021  0.00000002  0.00000018 -0.00000633
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00047640  0.71864285  0.00438561  0.00000003  0.00000005 -0.00000006 -0.00000285  0.00000007
                          -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000172  0.00000044 -0.00000001  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00078357  0.00195533 -0.06426199 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000011
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00270026  0.00664121 -0.21666084  0.00042954  0.00062959 -0.00147316 -0.00008346  0.11165127
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00282776  0.00695517 -0.22941161 -0.00038405 -0.00061520  0.00141515  0.00007276 -0.10544885
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00084781  0.00007748 -0.00003173 -0.11115311  0.10604511  0.00057969 -0.00029197 -0.00018346
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.27343253 -0.00013968  0.00340182  0.00051290 -0.00040005  0.07679164 -0.00083732  0.00101192
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00003567 -0.27332240 -0.00833444 -0.00024926 -0.00000744  0.00083775  0.07680406  0.00008969
                           0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.33921710  0.00157667 -0.00408851  0.00172217 -0.00013372  0.60235855 -0.00407517  0.00802606
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00028104  0.00162653  0.00004607 -0.48017502 -0.50329257  0.00103655  0.00126607  0.00469915
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00145275  0.33907830  0.01033512  0.00058446  0.00212211  0.00406956  0.60241245  0.00041552
                           0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000974 -0.06426388 -0.00195535  0.00000000 -0.00000000 -0.00000002 -0.00000128  0.00000001

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00003286 -0.09034687 -0.00269997  0.00042587  0.00010335 -0.00165307 -0.14716773 -0.00010235

   3    1  |1 0>           0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001092  0.30237172  0.00917514  0.00012891  0.00003785 -0.00050190 -0.04397687 -0.00004195

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.27342325  0.00008931 -0.00325513  0.00028112  0.00039140  0.07678920 -0.00087550  0.00104173

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00084826 -0.00001215 -0.00006754  0.03625884  0.14928286 -0.00016302  0.00021436 -0.00101253

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00325610  0.00827197 -0.27330414 -0.00030005 -0.00048044  0.00104558  0.00002545 -0.07679125

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00026952  0.00004577 -0.00150568  0.67596887 -0.16418696 -0.00214056  0.00186352  0.00102764

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.33923401 -0.00002491  0.00250796  0.00189240 -0.00067904  0.60228975 -0.00674535  0.01091587

   9    1  |1 0>           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00250858  0.01031690 -0.33906538 -0.00073037  0.00416853 -0.01091409 -0.00035152  0.60231998

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.06428539  0.00001412 -0.00078353  0.00000002 -0.00000001  0.00000256 -0.00000002  0.00000003

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.30714231 -0.00004934  0.00380213  0.00005161 -0.00004076  0.03549992 -0.00039199  0.00045691

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.07296510  0.00004956 -0.00085799  0.00034167 -0.00013489  0.14942642 -0.00166361  0.00198286

   4    1  |1 1>-         -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00004392 -0.27333927 -0.00746878  0.00017620  0.00002384 -0.00083511 -0.07680602 -0.00029786

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00339015 -0.00746900  0.27332470 -0.00024879 -0.00042623  0.00100289  0.00028635 -0.07680056

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00006240 -0.00007421 -0.00007883  0.14742472  0.04323597 -0.00027573  0.00042188 -0.00078472

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00413473 -0.01002929  0.33907601  0.00140746  0.00639494 -0.00803520 -0.00088790  0.60233723

   8    1  |1 1>-         -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00004783 -0.33909119 -0.01003652 -0.00264831  0.00291189  0.00674150  0.60238283  0.00095750

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001805  0.00167087 -0.00145386 -0.19578518  0.66747153  0.00109126 -0.00312713 -0.00572932

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01606279 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000004
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000001  0.00000011  0.00000826  0.00000040  0.58596253  0.01021060 -0.00011470  0.00310459
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000004 -0.00000880 -0.00000007 -0.00000008  0.00010522 -0.00382295  0.58586916  0.01432934
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000002 -0.00000009 -0.00000012  0.00000597  0.00001910 -0.00169013 -0.00196610 -0.00584806
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000440  0.00000025 -0.00000003  0.00000003 -0.01064812  0.54785460 -0.00151873  0.20780167
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000011 -0.00000005 -0.00000001 -0.00000009  0.00071600 -0.20782022 -0.01477039  0.54774701
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000002 -0.51592834  0.00045448 -0.00368973  0.00000007  0.00000017 -0.00003119 -0.00000069
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00369091 -0.00143898  0.51592500  0.00000008  0.00000024 -0.00000128 -0.00000081
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000001  0.00044417  0.51594447  0.00144244 -0.00000415 -0.00000003  0.00000012  0.00000005
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.57676814  0.00000001  0.00000000  0.00000000  0.00000005 -0.00000328 -0.00000002 -0.00000059
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00051295 -0.00213765  0.07883486  0.00000034  0.00000029 -0.00000080 -0.00000076
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000003  0.00248468 -0.01002726  0.36677694  0.00010562 -0.00190678 -0.00752831 -0.00537838
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000002  0.00257758 -0.01048680  0.38834237 -0.00007884  0.00170656  0.00719192  0.00512655
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000410  0.00143469 -0.00013123  0.00006241 -0.00559481  0.48158665  0.01053827 -0.22774998
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000001  0.46277999  0.00011832 -0.00312887 -0.00001839 -0.00389288  0.26625813  0.00697165
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000003 -0.00003291  0.46261639  0.01257306 -0.26641487 -0.00344488 -0.00004530 -0.00100396
                           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00040029  0.08267686  0.00036330 -0.00052814  0.00145070  0.00322064 -0.33943505 -0.00768042
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.47154544  0.00006848  0.00039644  0.00001031  0.00512861 -0.16765994  0.00665569 -0.35431969
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00226010 -0.00034912  0.08264969  0.00224342  0.33952260  0.00535261  0.00143463  0.00292771
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00001665  0.07884515  0.00213767 -0.00000013  0.00000003 -0.00000001  0.00000003

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000005  0.00006535  0.15294110  0.00406428  0.51049658  0.00686898 -0.00007340  0.00168122

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00004937 -0.51181916 -0.01383447  0.15254652  0.00205508 -0.00004844  0.00047736

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003 -0.46278241 -0.00003390  0.00288053  0.00009947 -0.00226434  0.26633245  0.00461965

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000086  0.00143496  0.00002061  0.00012246  0.00115841  0.04346309  0.01219651 -0.53089599

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000002  0.00287998 -0.01246880  0.46261188  0.00003628  0.00127547  0.00528767  0.00386395

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.47154550  0.00006788  0.00000992 -0.00036661 -0.00536297  0.39075171  0.00303867  0.03203670

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00039023 -0.08267706  0.00001363  0.00014162 -0.00005508  0.00338987 -0.33934204 -0.00793605

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00209087 -0.00014136  0.00224102 -0.08265759 -0.00002626 -0.00010593  0.00826179  0.00462576

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.07886617  0.00000274  0.00051306 -0.00000004 -0.00000014 -0.00001936 -0.00000046

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.51989356 -0.00004892 -0.00348219 -0.00000230 -0.00103148  0.12309293  0.00295082

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000004 -0.12351310 -0.00005275  0.00075089  0.00004408 -0.00471002  0.51816109  0.01216405

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003  0.00011014  0.46265969  0.01110935  0.26639576  0.00370534  0.00006013  0.00103478

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003 -0.00310702  0.01110993 -0.46265241 -0.00086332  0.00115300  0.00513332  0.00362051

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000417  0.00010467  0.00012601  0.00013354  0.00702831 -0.43814054  0.00327996 -0.30311208

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00208900  0.00053755 -0.00217070  0.08264980 -0.00033131  0.00064839  0.00660697  0.00615858

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00226173 -0.00001697 -0.08264090 -0.00217228  0.33955481  0.00349408 -0.00007806  0.00274410

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.47154105 -0.00000231  0.00040601 -0.00035575  0.00023592 -0.22309761 -0.00968731  0.32227905

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.01080352
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00004095 -0.00000002 -0.00000041  0.00000148  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00209752 -0.00003266  0.00000144 -0.00000009 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.58602949 -0.00000102 -0.00005627  0.00000109 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00364894 -0.00000028 -0.00000028  0.00000007  0.00000066
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00481708  0.00000015  0.00000075  0.00000001 -0.00000033
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000107 -0.43384121 -0.00147787 -0.00125627  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00003897 -0.00142668  0.43350366 -0.01731529 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000082  0.00131425 -0.01731084 -0.43349426  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.81690778
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00003503  0.00386881  0.37501333 -0.00584051  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.38725786 -0.00087193 -0.08237495  0.00126451  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.36577537 -0.00091067 -0.08714539  0.00136661 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00065691 -0.00032245 -0.00001476 -0.00002954 -0.00000099
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00525097 -0.10388166  0.00109514 -0.00024455 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00011110 -0.00022755  0.00161367  0.10386288 -0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00673935 -0.56348008  0.00582875  0.00101229  0.00028263
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00561827 -0.00047287  0.00004689  0.00270136 -0.33293484
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00004372  0.00110499  0.00876363  0.56345502  0.00159573
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000016  0.00092749 -0.00585032 -0.37502981  0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00002614 -0.00009231  0.00055375  0.03433770  0.00000005

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00003185  0.00027096 -0.00180229 -0.11491152  0.00000002

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00534386  0.10385629 -0.00103820  0.00026103 -0.00000003

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00702482 -0.00032220 -0.00002648  0.00000501 -0.00000112

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.26636243 -0.00104223 -0.10382908  0.00163369 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00089097 -0.00045291  0.00250062 -0.00004010 -0.33293481

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00836922  0.56353520 -0.00308775  0.00144186 -0.00027551

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.33939675  0.00311199  0.56347675 -0.00878245  0.00147626

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000033 -0.37505754  0.00385390 -0.00098768 -0.00000001

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00239013 -0.11668950  0.00122099 -0.00031516 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01026531  0.02769516 -0.00027309  0.00005963 -0.00000003

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00083227 -0.00025846  0.00194200  0.10385698  0.00000003

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.26633671  0.00109425  0.10386810 -0.00193958 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00620323 -0.00002331 -0.00002836  0.00002941  0.00000118

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.33951060 -0.00581347 -0.56338364  0.00925244 -0.00147494

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00027815  0.00138864 -0.00925623 -0.56344428 -0.00159691

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00472925  0.00001930  0.00254077  0.00266162 -0.33293267


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2789.20831837     -0.00016370      -35.93      0.00000000        0.00      0.0000
     2   1  -2788.79930949      0.40884518    89731.15      0.40900888    89767.07     11.1297
     3   1  -2788.79930948      0.40884519    89731.15      0.40900889    89767.08     11.1297
     4   1  -2788.79930948      0.40884520    89731.15      0.40900890    89767.08     11.1297
     5   1  -2788.79266812      0.41548656    91188.76      0.41565026    91224.69     11.3104
     6   1  -2788.79266811      0.41548656    91188.76      0.41565026    91224.69     11.3104
     7   1  -2788.79266803      0.41548665    91188.78      0.41565034    91224.71     11.3104
     8   1  -2788.79266801      0.41548666    91188.78      0.41565036    91224.71     11.3104
     9   1  -2788.79266792      0.41548676    91188.80      0.41565045    91224.73     11.3104
    10   1  -2788.79254086      0.41561381    91216.69      0.41577751    91252.62     11.3139
    11   1  -2788.79254084      0.41561384    91216.69      0.41577753    91252.62     11.3139
    12   1  -2788.79254079      0.41561389    91216.70      0.41577758    91252.63     11.3139
    13   1  -2788.79254074      0.41561394    91216.72      0.41577764    91252.64     11.3139
    14   1  -2788.79254072      0.41561396    91216.72      0.41577766    91252.65     11.3139
    15   1  -2788.79254070      0.41561398    91216.72      0.41577768    91252.65     11.3139
    16   1  -2788.79254062      0.41561406    91216.74      0.41577775    91252.67     11.3139
    17   1  -2788.78883144      0.41932324    92030.81      0.41948694    92066.74     11.4148
    18   1  -2788.78883136      0.41932332    92030.83      0.41948702    92066.76     11.4148
    19   1  -2788.78883132      0.41932336    92030.84      0.41948705    92066.77     11.4148
    20   1  -2788.78742842      0.42072626    92338.74      0.42088996    92374.67     11.4530
    21   1  -2788.78742831      0.42072637    92338.76      0.42089006    92374.69     11.4530
    22   1  -2788.78742828      0.42072640    92338.77      0.42089010    92374.70     11.4530
    23   1  -2788.78742825      0.42072642    92338.78      0.42089012    92374.70     11.4530
    24   1  -2788.78742821      0.42072647    92338.79      0.42089017    92374.71     11.4530
    25   1  -2788.77814312      0.43001155    94376.63      0.43017525    94412.55     11.7057
    26   1  -2788.76828529      0.43986938    96540.17      0.44003308    96576.10     11.9739
    27   1  -2788.76828520      0.43986948    96540.19      0.44003317    96576.12     11.9739
    28   1  -2788.76828518      0.43986950    96540.20      0.44003320    96576.12     11.9739
    29   1  -2788.76574720      0.44240748    97097.22      0.44257118    97133.15     12.0430
    30   1  -2788.76574716      0.44240752    97097.23      0.44257122    97133.15     12.0430
    31   1  -2788.76574712      0.44240756    97097.24      0.44257125    97133.16     12.0430
    32   1  -2788.76574711      0.44240757    97097.24      0.44257126    97133.16     12.0430
    33   1  -2788.76574706      0.44240762    97097.25      0.44257132    97133.18     12.0430
    34   1  -2788.76551665      0.44263803    97147.82      0.44280173    97183.75     12.0492
    35   1  -2788.76551659      0.44263808    97147.83      0.44280178    97183.76     12.0493
    36   1  -2788.76551656      0.44263811    97147.84      0.44280181    97183.76     12.0493
    37   1  -2788.75674401      0.45141067    99073.19      0.45157436    99109.12     12.2880

 E0 =  -2789.20815468 is the energy of the lowest zeroth-order state
 E1 =  -2789.20831837 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99981262  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000006  0.00000004  0.00000062  0.63237648  0.13368627  0.00012821  0.00018398
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000001 -0.00000159  0.00000003  0.00038173 -0.00242867  0.64634126  0.00163831
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000097 -0.00000001 -0.00000002  0.00038365 -0.00136951  0.00121081 -0.00268149
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000002  0.00000006 -0.00000000 -0.13366822  0.63230475  0.00248471 -0.01074559
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000002 -0.00000002 -0.00000000 -0.00240204  0.01047640 -0.00159228  0.64627334
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00408585 -0.17057849  0.00021417  0.00000003  0.00000012 -0.00000164 -0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.17050643 -0.00409023 -0.00483120  0.00000011 -0.00000006 -0.00000011  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00483495 -0.00009835 -0.17055780  0.00000779  0.00000161  0.00000004  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00043911 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000046 -0.00000002  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.92133527  0.00946936  0.00371023  0.00000001  0.00000002  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000000 -0.01301116 -0.00013024 -0.00004949 -0.00063248  0.00228807  0.00623567  0.00290550
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00000000 -0.01377567 -0.00013977 -0.00005701  0.00055817 -0.00208495 -0.00597683 -0.00282709
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00000003 -0.00000320  0.00005081  0.00000449  0.08262359 -0.40007019 -0.00471019  0.43864806
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.00000000 -0.00016417  0.01640533 -0.00003214 -0.00048781  0.00314094 -0.29911480 -0.00215364
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00000000  0.00006536 -0.00003147 -0.01641054  0.29273901  0.06043628  0.00016015  0.00015469
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.00000948  0.00252207 -0.24597860  0.00150205  0.00046356  0.00116537 -0.14750760 -0.00029324
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.01117329 -0.00000268 -0.00020165  0.00118025  0.02595479 -0.12192580 -0.00058827 -0.11605984
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00005355 -0.00100593  0.00149277  0.24598598  0.14434402  0.03046322  0.00069320  0.00057332
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00372590  0.00150605  0.92138299 -0.00000289 -0.00000060 -0.00000001 -0.00000000

 21  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00002486 -0.00000766 -0.00542631 -0.56303479 -0.11642421 -0.00012216  0.00006271

 22  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00007495  0.00003173  0.01815420 -0.16816030 -0.03476394 -0.00000477  0.00004515

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00017306 -0.01640539  0.00002942 -0.00048576  0.00240747 -0.29935029  0.00098131

 24  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000516  0.00005078 -0.00000096 -0.03553947  0.17222382  0.00045805  0.57287580

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.01640589 -0.00017323 -0.00006871  0.00031937 -0.00162158 -0.00440169 -0.00217623

 26  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01117332 -0.00108756 -0.00022000 -0.00000404 -0.03298025  0.15946582  0.00129871 -0.04993062

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000925 -0.00370628  0.24596367 -0.00041703 -0.00018323  0.00106492 -0.14749273 -0.00042835

 28  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00004954 -0.24596270 -0.00370703 -0.00098858 -0.00004718  0.00005568  0.00283146  0.00121646

 29  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00946321  0.92134180 -0.00154425 -0.00000001  0.00000001 -0.00000182  0.00000000

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00018583  0.01843410 -0.00002969 -0.00010253  0.00077703 -0.13876427 -0.00039300

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00004679 -0.00438044  0.00000942 -0.00058757  0.00373549 -0.58328677 -0.00153769

 32  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00011722 -0.00002553 -0.01641189 -0.29260737 -0.06069652 -0.00017148 -0.00007510

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.01641015  0.00016531  0.00011696  0.00126656 -0.00120517 -0.00421835 -0.00197353

 34  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000003 -0.00000466  0.00000363 -0.00000462 -0.11835144  0.57168438  0.00334109  0.13436404

 35  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00004950  0.24597798  0.00252849  0.00119938 -0.00028253  0.00057623  0.00212652  0.00172849

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00005359  0.00119830 -0.00039999 -0.24598673  0.14449643  0.02970257  0.00003534  0.00081233

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.01117319 -0.00109545 -0.00000928  0.00117459  0.00702521 -0.03753619 -0.00070725  0.16598494


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00009158 -0.00000079 -0.00000074 -0.00059867  0.00062322  0.00000024  0.00000140  0.00000109
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00120943  0.00021040 -0.00000751 -0.00000102  0.00000021 -0.00038197 -0.00001122  0.00000048
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.64633276  0.00000341  0.00047939  0.00000027 -0.00000076 -0.00000729  0.00063603  0.00000061
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00136992 -0.00000078 -0.00000154  0.00000271 -0.00000318  0.00000110 -0.00000182  0.00021934
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00270790  0.00000012 -0.00000109  0.00000028  0.00000005 -0.00000066 -0.00000133 -0.00004892
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000011  0.00001949  0.00000014 -0.00000003 -0.00000000 -0.00000044 -0.00000005  0.00000002
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000762  0.00000030 -0.00001240  0.00000014  0.00000014 -0.00000001  0.00000522  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000022 -0.00000006  0.00000031  0.00000458  0.00000687 -0.00000002 -0.00000013 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001 -0.00000031
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000157 -0.00000000  0.00000313 -0.00000001  0.00000000  0.00000000 -0.00000181 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.43631200  0.00006755  0.63911897 -0.00051456 -0.00013025 -0.00041235  0.22359794  0.00000800
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.41167150 -0.00006077  0.40397061 -0.00129342  0.00081485  0.00080915 -0.55757433 -0.00001899
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00071617 -0.00195710  0.00004633  0.00004099 -0.00044003  0.00130954 -0.00003382  0.57717773
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00426913 -0.51733222  0.00007470 -0.00000082 -0.00032671  0.51571571  0.00089794 -0.00184878
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00018307  0.00007392 -0.00023003 -0.02611051  0.73011822  0.00053745  0.00090921  0.00046065
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00212639 -0.00005372 -0.00000006 -0.00000032  0.00000061  0.00008977  0.00000019  0.00000004
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00145843 -0.00000002 -0.00000003 -0.00000065  0.00000074  0.00000016 -0.00000011 -0.00002976
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00001764  0.00000003 -0.00000017 -0.00012761  0.00014524 -0.00000037  0.00000030  0.00000017
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000063 -0.00000007 -0.00000000  0.00000000 -0.00000000

 21  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00008098  0.00009399 -0.00074198 -0.52389487  0.28260505  0.00037298  0.00090180  0.00002309

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000003 -0.00000000  0.00000000  0.00000000
                                0.00006867 -0.00024534  0.00035501  0.46467734  0.60181262  0.00033905  0.00006839  0.00015403

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00438577  0.36974786  0.00015815  0.00031627 -0.00044698  0.62988685  0.00071999 -0.00124833

 24  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00489136 -0.00079165 -0.00001523  0.00002582  0.00010956 -0.00166483  0.00017563 -0.57733745

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.29909337  0.00016616 -0.23498674  0.00112087 -0.00083348 -0.00082972  0.69166609  0.00012026

 26  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00009815 -0.00000003 -0.00000045  0.00000002 -0.00000014  0.00000001 -0.00000059  0.00005495

 27  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00283451 -0.00004236 -0.00000055  0.00000022 -0.00000003  0.00008769 -0.00000045  0.00000007

 28  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.14750246  0.00000021 -0.00009834 -0.00000007  0.00000017 -0.00000019 -0.00013963 -0.00000025

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003 -0.00000344 -0.00000000 -0.00000001  0.00000000 -0.00000053  0.00000001 -0.00000000

 30  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00193806  0.76446076 -0.00004791  0.00015744  0.00012783 -0.03607471 -0.00009699  0.00034831

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00837877 -0.10606112 -0.00006964 -0.00029368  0.00054615 -0.57963007 -0.00083426 -0.00030041

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000014  0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00099249 -0.00014530  0.00287504  0.71338456 -0.15773568 -0.00043650  0.00009025 -0.00026728

 33  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.29876417  0.00004987  0.61082451 -0.00244908  0.00028779 -0.00071566  0.40088488  0.00020571

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00399804 -0.00020869 -0.00022371  0.00023387 -0.00027959 -0.00024065 -0.00009555  0.57753072

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.14750539  0.00000001 -0.00011277  0.00000007  0.00000003  0.00000024 -0.00014111 -0.00000011

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00015182 -0.00000017 -0.00000027 -0.00013762  0.00013650  0.00000004  0.00000019 -0.00000007

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00155716  0.00000004  0.00000055  0.00000069 -0.00000057 -0.00000016  0.00000070 -0.00002367


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000002 -0.00001061 -0.00000010 -0.00073531  0.00002284 -0.00550342 -0.48860027 -0.00034347
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000324 -0.00000000  0.00000010 -0.00018111 -0.00045896  0.48860306 -0.00550218 -0.00145046
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000007  0.00000021 -0.00000442  0.00034049  0.00144750  0.00144805 -0.00036025  0.48863762
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  5  1     5    1  |0 0>       -0.00000021  0.00000006  0.00000015 -0.48817092 -0.02081229 -0.00019104  0.00073561  0.00040292
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000006  0.00000003 -0.00000014  0.02081436 -0.48817207 -0.00044717 -0.00005011  0.00143287
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.71865643  0.00048285 -0.00105507 -0.00000023  0.00000005 -0.00000402  0.00000005  0.00000007
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00105796 -0.00438492  0.71864147  0.00000015 -0.00000021  0.00000002  0.00000018 -0.00000633
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00047640  0.71864285  0.00438561  0.00000003  0.00000005 -0.00000006 -0.00000285  0.00000007
                               -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000172  0.00000044 -0.00000001  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00078357  0.00195533 -0.06426199 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000011
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.00270026  0.00664121 -0.21666084  0.00042954  0.00062959 -0.00147316 -0.00008346  0.11165127
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00282776  0.00695517 -0.22941161 -0.00038405 -0.00061520  0.00141515  0.00007276 -0.10544885
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00084781  0.00007748 -0.00003173 -0.11115311  0.10604511  0.00057969 -0.00029197 -0.00018346
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.27343253 -0.00013968  0.00340182  0.00051290 -0.00040005  0.07679164 -0.00083732  0.00101192
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00003567 -0.27332240 -0.00833444 -0.00024926 -0.00000744  0.00083775  0.07680406  0.00008969
                                0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.33921710  0.00157667 -0.00408851  0.00172217 -0.00013372  0.60235855 -0.00407517  0.00802606
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00028104  0.00162653  0.00004607 -0.48017502 -0.50329257  0.00103655  0.00126607  0.00469915
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00145275  0.33907830  0.01033512  0.00058446  0.00212211  0.00406956  0.60241245  0.00041552
                                0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000974 -0.06426388 -0.00195535  0.00000000 -0.00000000 -0.00000002 -0.00000128  0.00000001

 21  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00003286 -0.09034687 -0.00269997  0.00042587  0.00010335 -0.00165307 -0.14716773 -0.00010235

 22  1     3    1  |1 0>        0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001092  0.30237172  0.00917514  0.00012891  0.00003785 -0.00050190 -0.04397687 -0.00004195

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.27342325  0.00008931 -0.00325513  0.00028112  0.00039140  0.07678920 -0.00087550  0.00104173

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00084826 -0.00001215 -0.00006754  0.03625884  0.14928286 -0.00016302  0.00021436 -0.00101253

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00325610  0.00827197 -0.27330414 -0.00030005 -0.00048044  0.00104558  0.00002545 -0.07679125

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00026952  0.00004577 -0.00150568  0.67596887 -0.16418696 -0.00214056  0.00186352  0.00102764

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.33923401 -0.00002491  0.00250796  0.00189240 -0.00067904  0.60228975 -0.00674535  0.01091587

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00250858  0.01031690 -0.33906538 -0.00073037  0.00416853 -0.01091409 -0.00035152  0.60231998

 29  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.06428539  0.00001412 -0.00078353  0.00000002 -0.00000001  0.00000256 -0.00000002  0.00000003

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.30714231 -0.00004934  0.00380213  0.00005161 -0.00004076  0.03549992 -0.00039199  0.00045691

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.07296510  0.00004956 -0.00085799  0.00034167 -0.00013489  0.14942642 -0.00166361  0.00198286

 32  1     4    1  |1 1>-      -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00004392 -0.27333927 -0.00746878  0.00017620  0.00002384 -0.00083511 -0.07680602 -0.00029786

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00339015 -0.00746900  0.27332470 -0.00024879 -0.00042623  0.00100289  0.00028635 -0.07680056

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00006240 -0.00007421 -0.00007883  0.14742472  0.04323597 -0.00027573  0.00042188 -0.00078472

 35  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00413473 -0.01002929  0.33907601  0.00140746  0.00639494 -0.00803520 -0.00088790  0.60233723

 36  1     8    1  |1 1>-      -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00004783 -0.33909119 -0.01003652 -0.00264831  0.00291189  0.00674150  0.60238283  0.00095750

 37  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001805  0.00167087 -0.00145386 -0.19578518  0.66747153  0.00109126 -0.00312713 -0.00572932


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01606279 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000004
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000011  0.00000826  0.00000040  0.58596253  0.01021060 -0.00011470  0.00310459
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000004 -0.00000880 -0.00000007 -0.00000008  0.00010522 -0.00382295  0.58586916  0.01432934
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000002 -0.00000009 -0.00000012  0.00000597  0.00001910 -0.00169013 -0.00196610 -0.00584806
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000440  0.00000025 -0.00000003  0.00000003 -0.01064812  0.54785460 -0.00151873  0.20780167
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000011 -0.00000005 -0.00000001 -0.00000009  0.00071600 -0.20782022 -0.01477039  0.54774701
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000002 -0.51592834  0.00045448 -0.00368973  0.00000007  0.00000017 -0.00003119 -0.00000069
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00369091 -0.00143898  0.51592500  0.00000008  0.00000024 -0.00000128 -0.00000081
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000001  0.00044417  0.51594447  0.00144244 -0.00000415 -0.00000003  0.00000012  0.00000005
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.57676814  0.00000001  0.00000000  0.00000000  0.00000005 -0.00000328 -0.00000002 -0.00000059
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.00051295 -0.00213765  0.07883486  0.00000034  0.00000029 -0.00000080 -0.00000076
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000003  0.00248468 -0.01002726  0.36677694  0.00010562 -0.00190678 -0.00752831 -0.00537838
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00000002  0.00257758 -0.01048680  0.38834237 -0.00007884  0.00170656  0.00719192  0.00512655
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00000410  0.00143469 -0.00013123  0.00006241 -0.00559481  0.48158665  0.01053827 -0.22774998
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00000001  0.46277999  0.00011832 -0.00312887 -0.00001839 -0.00389288  0.26625813  0.00697165
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00000003 -0.00003291  0.46261639  0.01257306 -0.26641487 -0.00344488 -0.00004530 -0.00100396
                                0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00040029  0.08267686  0.00036330 -0.00052814  0.00145070  0.00322064 -0.33943505 -0.00768042
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.47154544  0.00006848  0.00039644  0.00001031  0.00512861 -0.16765994  0.00665569 -0.35431969
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00226010 -0.00034912  0.08264969  0.00224342  0.33952260  0.00535261  0.00143463  0.00292771
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00001665  0.07884515  0.00213767 -0.00000013  0.00000003 -0.00000001  0.00000003

 21  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000005  0.00006535  0.15294110  0.00406428  0.51049658  0.00686898 -0.00007340  0.00168122

 22  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00004937 -0.51181916 -0.01383447  0.15254652  0.00205508 -0.00004844  0.00047736

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003 -0.46278241 -0.00003390  0.00288053  0.00009947 -0.00226434  0.26633245  0.00461965

 24  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000086  0.00143496  0.00002061  0.00012246  0.00115841  0.04346309  0.01219651 -0.53089599

 25  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000002  0.00287998 -0.01246880  0.46261188  0.00003628  0.00127547  0.00528767  0.00386395

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.47154550  0.00006788  0.00000992 -0.00036661 -0.00536297  0.39075171  0.00303867  0.03203670

 27  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00039023 -0.08267706  0.00001363  0.00014162 -0.00005508  0.00338987 -0.33934204 -0.00793605

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00209087 -0.00014136  0.00224102 -0.08265759 -0.00002626 -0.00010593  0.00826179  0.00462576

 29  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.07886617  0.00000274  0.00051306 -0.00000004 -0.00000014 -0.00001936 -0.00000046

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.51989356 -0.00004892 -0.00348219 -0.00000230 -0.00103148  0.12309293  0.00295082

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000004 -0.12351310 -0.00005275  0.00075089  0.00004408 -0.00471002  0.51816109  0.01216405

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003  0.00011014  0.46265969  0.01110935  0.26639576  0.00370534  0.00006013  0.00103478

 33  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003 -0.00310702  0.01110993 -0.46265241 -0.00086332  0.00115300  0.00513332  0.00362051

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000417  0.00010467  0.00012601  0.00013354  0.00702831 -0.43814054  0.00327996 -0.30311208

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00208900  0.00053755 -0.00217070  0.08264980 -0.00033131  0.00064839  0.00660697  0.00615858

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00226173 -0.00001697 -0.08264090 -0.00217228  0.33955481  0.00349408 -0.00007806  0.00274410

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.47154105 -0.00000231  0.00040601 -0.00035575  0.00023592 -0.22309761 -0.00968731  0.32227905


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.01080352
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00004095 -0.00000002 -0.00000041  0.00000148  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00209752 -0.00003266  0.00000144 -0.00000009 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.58602949 -0.00000102 -0.00005627  0.00000109 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00364894 -0.00000028 -0.00000028  0.00000007  0.00000066
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00481708  0.00000015  0.00000075  0.00000001 -0.00000033
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000107 -0.43384121 -0.00147787 -0.00125627  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00003897 -0.00142668  0.43350366 -0.01731529 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000082  0.00131425 -0.01731084 -0.43349426  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.81690778
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00003503  0.00386881  0.37501333 -0.00584051  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.38725786 -0.00087193 -0.08237495  0.00126451  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.36577537 -0.00091067 -0.08714539  0.00136661 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.00065691 -0.00032245 -0.00001476 -0.00002954 -0.00000099
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00525097 -0.10388166  0.00109514 -0.00024455 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00011110 -0.00022755  0.00161367  0.10386288 -0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00673935 -0.56348008  0.00582875  0.00101229  0.00028263
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00561827 -0.00047287  0.00004689  0.00270136 -0.33293484
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00004372  0.00110499  0.00876363  0.56345502  0.00159573
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000016  0.00092749 -0.00585032 -0.37502981  0.00000001

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00002614 -0.00009231  0.00055375  0.03433770  0.00000005

 22  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00003185  0.00027096 -0.00180229 -0.11491152  0.00000002

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00534386  0.10385629 -0.00103820  0.00026103 -0.00000003

 24  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00702482 -0.00032220 -0.00002648  0.00000501 -0.00000112

 25  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.26636243 -0.00104223 -0.10382908  0.00163369 -0.00000000

 26  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00089097 -0.00045291  0.00250062 -0.00004010 -0.33293481

 27  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00836922  0.56353520 -0.00308775  0.00144186 -0.00027551

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.33939675  0.00311199  0.56347675 -0.00878245  0.00147626

 29  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000033 -0.37505754  0.00385390 -0.00098768 -0.00000001

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00239013 -0.11668950  0.00122099 -0.00031516 -0.00000000

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01026531  0.02769516 -0.00027309  0.00005963 -0.00000003

 32  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00083227 -0.00025846  0.00194200  0.10385698  0.00000003

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.26633671  0.00109425  0.10386810 -0.00193958 -0.00000000

 34  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00620323 -0.00002331 -0.00002836  0.00002941  0.00000118

 35  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.33951060 -0.00581347 -0.56338364  0.00925244 -0.00147494

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00027815  0.00138864 -0.00925623 -0.56344428 -0.00159691

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00472925  0.00001930  0.00254077  0.00266162 -0.33293267



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   39.99%    1.79%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   41.78%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.79%   39.98%    0.00%    0.01%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   41.77%
  7  1     7    1  |0 0>          0.00%    0.00%    2.91%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    2.91%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    2.91%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   84.89%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.68%   16.01%    0.00%   19.24%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    8.95%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    8.57%    0.37%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    6.05%    0.00%    0.00%    0.00%    2.18%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.07%    1.49%    0.00%    1.35%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    6.05%    2.08%    0.09%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%   84.89%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   31.70%    1.36%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.03%    2.83%    0.12%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    8.96%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.13%    2.97%    0.00%   32.82%
 25  1     6    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.11%    2.54%    0.00%    0.25%
 27  1     8    1  |1 0>          0.00%    0.00%    6.05%    0.00%    0.00%    0.00%    2.18%    0.00%
 28  1     9    1  |1 0>          0.00%    6.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.01%   84.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    1.93%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.02%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    8.56%    0.37%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.40%   32.68%    0.00%    1.81%
 35  1     7    1  |1 1>-         0.00%    6.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    6.05%    2.09%    0.09%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    2.76%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         41.77%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+        19.04%    0.00%   40.85%    0.00%    0.00%    0.00%    5.00%    0.00%
 13  1     3    1  |1 1>+        16.95%    0.00%   16.32%    0.00%    0.00%    0.00%   31.09%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.31%
 15  1     5    1  |1 1>+         0.00%   26.76%    0.00%    0.00%    0.00%   26.60%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.07%   53.31%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%   27.45%    7.99%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%   21.59%   36.22%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%   13.67%    0.00%    0.00%    0.00%   39.68%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 25  1     6    1  |1 0>          8.95%    0.00%    5.52%    0.00%    0.00%    0.00%   47.84%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          2.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%   58.44%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.01%    1.12%    0.00%    0.00%    0.00%   33.60%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%   50.89%    2.49%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         8.93%    0.00%   37.31%    0.00%    0.00%    0.00%   16.07%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.35%
 35  1     7    1  |1 1>-         2.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.87%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.87%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.88%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   23.83%    0.04%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.04%   23.83%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         51.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   51.64%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   51.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.41%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    4.69%    0.00%    0.00%    0.00%    0.00%    1.25%
 13  1     3    1  |1 1>+         0.00%    0.00%    5.26%    0.00%    0.00%    0.00%    0.00%    1.11%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    1.24%    1.12%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         7.48%    0.00%    0.00%    0.00%    0.00%    0.59%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    7.47%    0.01%    0.00%    0.00%    0.00%    0.59%    0.00%
 17  1     7    1  |1 1>+        11.51%    0.00%    0.00%    0.00%    0.00%   36.28%    0.00%    0.01%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%   23.06%   25.33%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%   11.50%    0.01%    0.00%    0.00%    0.00%   36.29%    0.00%
 20  1     1    1  |1 0>          0.00%    0.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.82%    0.00%    0.00%    0.00%    0.00%    2.17%    0.00%
 22  1     3    1  |1 0>          0.00%    9.14%    0.01%    0.00%    0.00%    0.00%    0.19%    0.00%
 23  1     4    1  |1 0>          7.48%    0.00%    0.00%    0.00%    0.00%    0.59%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.13%    2.23%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.01%    7.47%    0.00%    0.00%    0.00%    0.00%    0.59%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%   45.69%    2.70%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>         11.51%    0.00%    0.00%    0.00%    0.00%   36.28%    0.00%    0.01%
 28  1     9    1  |1 0>          0.00%    0.01%   11.50%    0.00%    0.00%    0.01%    0.00%   36.28%
 29  1     1    1  |1 1>-         0.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         9.43%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.53%    0.00%    0.00%    0.00%    0.00%    2.23%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    7.47%    0.01%    0.00%    0.00%    0.00%    0.59%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.01%    7.47%    0.00%    0.00%    0.00%    0.00%    0.59%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    2.17%    0.19%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.01%   11.50%    0.00%    0.00%    0.01%    0.00%   36.28%
 36  1     8    1  |1 1>-         0.00%   11.50%    0.01%    0.00%    0.00%    0.00%   36.29%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    3.83%   44.55%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   34.34%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.32%    0.02%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   30.01%    0.00%    4.32%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.32%    0.02%   30.00%
  7  1     7    1  |0 0>          0.00%   26.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   26.62%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   26.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         33.27%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.62%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.01%   13.45%    0.00%    0.00%    0.01%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.01%   15.08%    0.00%    0.00%    0.01%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.19%    0.01%    5.19%
 15  1     5    1  |1 1>+         0.00%   21.42%    0.00%    0.00%    0.00%    0.00%    7.09%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%   21.40%    0.02%    7.10%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.68%    0.00%    0.00%    0.00%    0.00%   11.52%    0.01%
 18  1     8    1  |1 1>+        22.24%    0.00%    0.00%    0.00%    0.00%    2.81%    0.00%   12.55%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.68%    0.00%   11.53%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    2.34%    0.00%   26.06%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%   26.20%    0.02%    2.33%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%   21.42%    0.00%    0.00%    0.00%    0.00%    7.09%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.19%    0.01%   28.19%
 25  1     6    1  |1 0>          0.00%    0.00%    0.02%   21.40%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>         22.24%    0.00%    0.00%    0.00%    0.00%   15.27%    0.00%    0.10%
 27  1     8    1  |1 0>          0.00%    0.68%    0.00%    0.00%    0.00%    0.00%   11.52%    0.01%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.68%    0.00%    0.00%    0.01%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%   27.03%    0.00%    0.00%    0.00%    0.00%    1.52%    0.00%
 31  1     3    1  |1 1>-         0.00%    1.53%    0.00%    0.00%    0.00%    0.00%   26.85%    0.01%
 32  1     4    1  |1 1>-         0.00%    0.00%   21.41%    0.01%    7.10%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.01%   21.40%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   19.20%    0.00%    9.19%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.68%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.68%    0.00%   11.53%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-        22.24%    0.00%    0.00%    0.00%    0.00%    4.98%    0.01%   10.39%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         34.34%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   18.82%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   18.79%    0.03%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.03%   18.79%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   66.73%
 11  1     1    1  |1 1>+         0.00%    0.00%   14.06%    0.00%    0.00%
 12  1     2    1  |1 1>+        15.00%    0.00%    0.68%    0.00%    0.00%
 13  1     3    1  |1 1>+        13.38%    0.00%    0.76%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    1.08%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    1.08%    0.00%
 17  1     7    1  |1 1>+         0.00%   31.75%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   11.08%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.01%   31.75%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%   14.06%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.12%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    1.32%    0.00%
 23  1     4    1  |1 0>          0.00%    1.08%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          7.09%    0.00%    1.08%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   11.08%
 27  1     8    1  |1 0>          0.01%   31.76%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>         11.52%    0.00%   31.75%    0.01%    0.00%
 29  1     1    1  |1 1>-         0.00%   14.07%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    1.36%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.01%    0.08%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    1.08%    0.00%
 33  1     5    1  |1 1>-         7.09%    0.00%    1.08%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-        11.53%    0.00%   31.74%    0.01%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.01%   31.75%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   11.08%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1327.43       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     64944.09  60132.66      9.04   2657.08   2139.63      4.19      0.07      1.18
 REAL TIME  *     65517.94 SEC
 DISK USED  *         1.34 GB (local),       19.65 GB (total)
 SF USED    *         7.12 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2788.756744008688

              CI              CI           MULTI         RHF-SCF
  -2788.72011150  -2788.70031819  -2787.86221612  -2787.14843609
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
