
 Working directory              : /wrk/irikura/molpro.oohu7CgsZE/
 Global scratch directory       : /wrk/irikura/molpro.oohu7CgsZE/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.oohu7CgsZE/

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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 27-Sep-24          TIME: 09:31:06  
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

 SORT1 READ    23841670. AND WROTE      173335. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2334873. AND WROTE    11712051. INTEGRALS IN     98 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

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
 CPU TIMES  *         1.48      1.26
 REAL TIME  *         3.14 SEC
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
   3    -2787.14835220      -0.00090958     0.32D-02     0.22D-02     2     0       0.00      0.03    diag2
   4    -2787.14842922      -0.00007702     0.47D-03     0.92D-03     3     0       0.01      0.04    diag2
   5    -2787.14843600      -0.00000678     0.19D-03     0.17D-03     4     0       0.01      0.05    diag2
   6    -2787.14843609      -0.00000008     0.95D-05     0.17D-04     5     0       0.00      0.05    diag2
   7    -2787.14843609      -0.00000000     0.12D-05     0.28D-05     6     0       0.01      0.06    diag2
   8    -2787.14843609      -0.00000000     0.58D-07     0.17D-06     0     0       0.01      0.07    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.148436087696
  RHF One-electron energy           -3858.448225732900
  RHF Two-electron energy            1071.299789645204
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
    5.1     2.00000    -4.26020     1  1  d1-  1.00117
    6.1     2.00000    -4.26020     1  1  d1+  1.00119
    7.1     2.00000    -4.26020     1  1  d2-  0.99560
    8.1     2.00000    -4.26020     1  1  d2+  0.99561
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
 CPU TIMES  *         1.55      0.07      1.26
 REAL TIME  *         3.23 SEC
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
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.138D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.866D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.104D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.103D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   2 3 5 4 6 1 2 4 6 3   5 1 4 6 3 5 2 6 4 5   3 2 1 4 6 5 3 2 7 8
                                       12 91113101415 1 2 6   4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.358D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.427D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.768D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.814D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.757D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.757D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.138D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.138D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 3 2 1 5 4 9 7 6  10 8 2 1 3 6 5 4 7 9   810 2 1 3 4 5 6 9 7
                                       10 8 6 4 9 7 510 8 2   1 3 5 4 6 9 710 8 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    10404
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   16    0  -2787.90588807   -2787.90778842   -0.00190036    0.11417171 0.00008328 0.00000240  0.64E-01      2.11
   2    4   12    0  -2787.90779900   -2787.90779919   -0.00000019    0.00074341 0.00000010 0.00000029  0.16E-02      3.23
   3   15   30    0  -2787.90779919   -2787.90779919   -0.00000000    0.00000012 0.00000001 0.00000000  0.19E-06      7.18

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.13E-07)
                       Final energy:  -2787.90779919
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.260645920403
 Nuclear energy                                  0.00000000
 Kinetic energy                               2996.30374972
 One electron energy                         -3881.35156152
 Two electron energy                          1093.09091560
 Virial ratio                                    1.93056675
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.889231449182
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.43215745
 One electron energy                         -3866.07732017
 Two electron energy                          1078.18808872
 Virial ratio                                    1.93133537
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.889231449140
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.43215745
 One electron energy                         -3866.07732016
 Two electron energy                          1078.18808871
 Virial ratio                                    1.93133537
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.889231449085
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.43215745
 One electron energy                         -3866.07732014
 Two electron energy                          1078.18808869
 Virial ratio                                    1.93133537
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.889231449062
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.43215745
 One electron energy                         -3866.07732011
 Two electron energy                          1078.18808866
 Virial ratio                                    1.93133537
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.889231449037
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.43215745
 One electron energy                         -3866.07732011
 Two electron energy                          1078.18808866
 Virial ratio                                    1.93133537
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.886317642539
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.42670247
 One electron energy                         -3866.06296117
 Two electron energy                          1078.17664352
 Virial ratio                                    1.93133609
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.886317642511
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.42670247
 One electron energy                         -3866.06296114
 Two electron energy                          1078.17664350
 Virial ratio                                    1.93133609
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.886317642487
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.42670247
 One electron energy                         -3866.06296112
 Two electron energy                          1078.17664347
 Virial ratio                                    1.93133609
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.872410624996
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.87582127
 One electron energy                         -3867.48593721
 Two electron energy                          1079.61352658
 Virial ratio                                    1.93119173
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.897256987053
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.40343470
 One electron energy                         -3865.99754374
 Two electron energy                          1078.10028675
 Virial ratio                                    1.93134698
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.890672863972
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.41786681
 One electron energy                         -3866.03835285
 Two electron energy                          1078.14767998
 Virial ratio                                    1.93134029
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.890672863940
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.41786681
 One electron energy                         -3866.03835285
 Two electron energy                          1078.14767998
 Virial ratio                                    1.93134029
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.890672863841
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.41786680
 One electron energy                         -3866.03835282
 Two electron energy                          1078.14767996
 Virial ratio                                    1.93134029
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.890672863759
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.41786680
 One electron energy                         -3866.03835279
 Two electron energy                          1078.14767993
 Virial ratio                                    1.93134029
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.890672863756
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.41786680
 One electron energy                         -3866.03835280
 Two electron energy                          1078.14767993
 Virial ratio                                    1.93134029
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.886465530124
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.42376572
 One electron energy                         -3866.05414980
 Two electron energy                          1078.16768427
 Virial ratio                                    1.93133705
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.886465530090
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.42376572
 One electron energy                         -3866.05414977
 Two electron energy                          1078.16768424
 Virial ratio                                    1.93133705
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.886465530063
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.42376572
 One electron energy                         -3866.05414975
 Two electron energy                          1078.16768422
 Virial ratio                                    1.93133705
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.917546593283
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000446605
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999998969957
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.082453861108
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000129047
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999911687
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000088371
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999942
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.919011825264
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000279330
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999999210502
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     2.081003325953
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000001364273
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999959085
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000273107
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999789176
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.771804902923
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999509274
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999957798
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.228195609322
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000000020683
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000335563
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999911689
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999752748
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.771124188569
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999158443
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000189617
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.228868769646
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000060800
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000002494583
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999935505
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999997543259
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.310648503794
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000044121
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000001072245
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.689350529570
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999999850269
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999752750
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999999940
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000247310
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.309863986166
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000562228
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000599881
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.690127904401
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999998574928
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999997546332
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999791387
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000002667565
 
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
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 5 4 1 1   2 6 4 5 3 1 2 6 3 5   4 1 6 2 4 5 3 6 2 4   3 5 1 6 2 4 5 311 7
                                       12 81415 91310 1 6 2   4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 2 3 3   2 1 3 1 2 5 9 7 6 4   810 2 1 3 5 6 810 4   7 9 2 3 1 5 6 810 4
                                        9 7 5 6 810 4 9 7 2   3 1 5 610 8 4 9 7 2   3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.65992     1  1  s    0.99997
    2.1     2.00000   -72.33195     1  2  s    0.99991
    3.1     2.00000   -11.49861     1  3  s    0.99901
    4.1     2.00000    -4.02585     1  1  d1-  1.00043
    5.1     2.00000    -4.02585     1  1  d0   1.00043
    6.1     2.00000    -4.02585     1  1  d2-  1.00043
    7.1     2.00000    -4.02585     1  1  d2+  1.00043
    8.1     2.00000    -4.02585     1  1  d1+  1.00043
    9.1     1.99995    -1.41325     1  4  s    1.06095
    1.2     2.00000   -63.79649     1  1  py   0.99997
    2.2     2.00000   -63.79649     1  1  pz   0.99997
    3.2     2.00000   -63.79649     1  1  px   0.99997
    4.2     2.00000    -8.68913     1  2  py   0.99955
    5.2     2.00000    -8.68913     1  2  pz   0.99955
    6.2     2.00000    -8.68913     1  2  px   0.99955
    7.2     1.68417    -0.68482     1  3  px   1.08505
    8.2     1.68417    -0.68482     1  3  py   1.08505
    9.2     1.68417    -0.68482     1  3  pz   1.08505
   10.2     0.31585     0.00551     1  8  pz   0.40765    1  9  pz   0.72557
   11.2     0.31585     0.00551     1  8  py   0.40765    1  9  py   0.72557
   12.2     0.31585     0.00551     1  8  px   0.40765    1  9  px   0.72557
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.98858902     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 2a20b0       0.06137341     -0.13788483      0.00002284      0.00040131      0.56058038      0.00008795      0.00000000
 2 2b20a0      -0.06137341      0.13788483     -0.00002284     -0.00040131     -0.56058038     -0.00008795     -0.00000000
 2 22ab00       0.06137342      0.55441937     -0.00002156     -0.00019506     -0.16087839     -0.00004767     -0.00000000
 2 22ba00      -0.06137342     -0.55441937      0.00002156      0.00019506      0.16087839      0.00004767      0.00000000
 2 2b2a00      -0.00000000     -0.00007758      0.00019162     -0.49994687      0.00033883     -0.00008099     -0.00014858
 2 2a2b00       0.00000000      0.00007758     -0.00019162      0.49994687     -0.00033883      0.00008099      0.00014858
 2 22a0b0       0.00000000      0.00007758     -0.00019162      0.49994691     -0.00033883      0.00008099     -0.00014858
 2 22b0a0      -0.00000000     -0.00007758      0.00019162     -0.49994691      0.00033883     -0.00008099      0.00014858
 2 2b200a       0.00000000     -0.00002177     -0.00006039      0.00008102      0.00007303     -0.49994703     -0.00024861
 2 2a200b      -0.00000000      0.00002177      0.00006039     -0.00008102     -0.00007303      0.49994703      0.00024861
 2 b220a0      -0.00000000     -0.00002177     -0.00006039      0.00008102      0.00007303     -0.49994705      0.00024861
 2 a220b0       0.00000000      0.00002177      0.00006039     -0.00008102     -0.00007303      0.49994705     -0.00024861
 2 b22a00       0.00000000     -0.00001460     -0.49994700     -0.00019161      0.00001691      0.00006036      0.49997776
 2 a22b00      -0.00000000      0.00001460      0.49994700      0.00019161     -0.00001691     -0.00006036     -0.49997776
 2 22b00a      -0.00000000     -0.00001460     -0.49994702     -0.00019161      0.00001691      0.00006036     -0.49997774
 2 22a00b       0.00000000      0.00001460      0.49994702      0.00019161     -0.00001691     -0.00006036      0.49997774
 2 a2200b       0.06137341     -0.41653456     -0.00000128     -0.00020625     -0.39970196     -0.00004028     -0.00000000
 2 b2200a      -0.06137341      0.41653456      0.00000128      0.00020625      0.39970196      0.00004028      0.00000000
 
 Energy:    -2788.26064592  -2787.88923145  -2787.88923145  -2787.88923145  -2787.88923145  -2787.88923145  -2787.88631764

 State:              8               9              10
 2 222000      -0.00000000      0.00000000     -0.15033684
 2 2a20b0      -0.00000000     -0.00000000      0.40352108
 2 2b20a0       0.00000000      0.00000000     -0.40352108
 2 22ab00       0.00000000     -0.00000000      0.40352110
 2 22ba00      -0.00000000      0.00000000     -0.40352110
 2 2b2a00       0.49997783     -0.00000381      0.00000000
 2 2a2b00      -0.49997783      0.00000381     -0.00000000
 2 22a0b0       0.49997779     -0.00000381     -0.00000000
 2 22b0a0      -0.49997779      0.00000381      0.00000000
 2 2b200a      -0.00000388     -0.49997778     -0.00000000
 2 2a200b       0.00000388      0.49997778      0.00000000
 2 b220a0       0.00000388      0.49997776     -0.00000000
 2 a220b0      -0.00000388     -0.49997776      0.00000000
 2 b22a00       0.00014858     -0.00024861      0.00000000
 2 a22b00      -0.00014858      0.00024861     -0.00000000
 2 22b00a      -0.00014858      0.00024861     -0.00000000
 2 22a00b       0.00014858     -0.00024861      0.00000000
 2 a2200b       0.00000000      0.00000000      0.40352110
 2 b2200a      -0.00000000     -0.00000000     -0.40352110
 
 Energy:    -2787.88631764  -2787.88631764  -2787.87241062
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57731929     -0.19530359      0.00001253      0.00017875      0.79276730      0.00003208     -0.00000000
 2 22aa00       0.57731934      0.78420839     -0.00000932     -0.00015609     -0.22724575     -0.00003107      0.00000000
 2 22a00a       0.00000000      0.00000552      0.70708379     -0.00021609     -0.00000976     -0.00030578     -0.70704855
 2 a22a00      -0.00000000      0.00000552      0.70708378     -0.00021609     -0.00000976     -0.00030578      0.70704856
 2 22a0a0       0.00000000      0.00010180      0.00021596      0.70708377     -0.00013434     -0.00030690      0.00014302
 2 a220a0      -0.00000000      0.00002129      0.00030587      0.00030680     -0.00002344      0.70708375      0.00110754
 2 2a2a00       0.00000000      0.00010180      0.00021596      0.70708375     -0.00013434     -0.00030690     -0.00014302
 2 2a200a      -0.00000000      0.00002129      0.00030587      0.00030680     -0.00002344      0.70708374     -0.00110754
 2 a2200a       0.57731931     -0.58890484     -0.00000322     -0.00002266     -0.56552151     -0.00000101      0.00000000
 
 Energy:    -2787.89725699  -2787.89067286  -2787.89067286  -2787.89067286  -2787.89067286  -2787.89067286  -2787.88646553

 State:              8               9
 2 2a20a0       0.00000000      0.00000000
 2 22aa00      -0.00000000     -0.00000000
 2 22a00a      -0.00014352      0.00110747
 2 a22a00       0.00014352     -0.00110747
 2 22a0a0      -0.70704933     -0.00032322
 2 a220a0      -0.00032299      0.70704849
 2 2a2a00       0.70704935      0.00032322
 2 2a200a       0.00032300     -0.70704850
 2 a2200a       0.00000000     -0.00000000
 
 Energy:    -2787.88646553  -2787.88646553
 


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
 CPU TIMES  *         6.33      4.78      0.07      1.26
 REAL TIME  *        10.98 SEC
 DISK USED  *        48.34 MB (local),      746.55 MB (total)
 SF USED    *        45.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2788.260646  -0.0
    -2787.889231   6.0
    -2787.889231   6.0
    -2787.889231   6.0
    -2787.889231   6.0
    -2787.889231   6.0
    -2787.886318   2.0
    -2787.886318   2.0
    -2787.886318   2.0
    -2787.872411  -0.0
    -2787.897257   0.0
    -2787.890673   6.0
    -2787.890673   6.0
    -2787.890673   6.0
    -2787.890673   6.0
    -2787.890673   6.0
    -2787.886466   2.0
    -2787.886466   2.0
    -2787.886466   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.10 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2788.26064592
     2     -2787.88923145
     3     -2787.88923145
     4     -2787.88923145
     5     -2787.88923145
     6     -2787.88923145
     7     -2787.88631764
     8     -2787.88631764
     9     -2787.88631764
    10     -2787.87241062

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1065D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1014D-06

 Number of blocks in overlap matrix:   994   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2429
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       2767590
 Number of doubly external configurations:       5485115
 Total number of contracted configurations:      8263527
 Total number of uncontracted configurations:  177497512

 Diagonal Coupling coefficients finished.               Storage:  15178202 words, CPU-Time:     29.87 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1301351 words, CPU-time:      0.38 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.26064592    -0.00000000    -1.00398403  0.40D-01  0.63D-01    34.38
    1     2     2     1.00000000     0.00000000 -2787.88923145    -0.00000000    -0.97365486  0.16D-01  0.66D-01    34.38
    1     3     3     1.00000000     0.00000000 -2787.88923145    -0.00000000    -0.96501005  0.16D-01  0.61D-01    34.38
    1     4     4     1.00000000     0.00000000 -2787.88923145    -0.00000000    -0.96516137  0.16D-01  0.61D-01    34.38
    1     5     5     1.00000000     0.00000000 -2787.88923145    -0.00000000    -0.97365674  0.16D-01  0.66D-01    34.38
    1     6     6     1.00000000     0.00000000 -2787.88923145    -0.00000000    -0.96499436  0.16D-01  0.61D-01    34.38
    1     7     7     1.00000000     0.00000000 -2787.88631764    -0.00000000    -0.96599159  0.16D-01  0.62D-01    34.38
    1     8     8     1.00000000     0.00000000 -2787.88631764    -0.00000000    -0.96602446  0.16D-01  0.62D-01    34.38
    1     9     9     1.00000000     0.00000000 -2787.88631764    -0.00000000    -0.96597818  0.16D-01  0.62D-01    34.38
    1    10    10     1.00000000     0.00000000 -2787.87241062    -0.00000000    -0.98223340  0.37D-01  0.64D-01    34.38
    2     1     1     1.07452824    -0.85270235 -2789.11334827    -0.85270235    -0.02598235  0.62D-02  0.15D-02   293.17
    2     2     2     1.05762362    -0.83209113 -2788.72132258    -0.83209113    -0.01384008  0.11D-02  0.90D-03   293.17
    2     3     3     1.05758227    -0.83205641 -2788.72128786    -0.83205641    -0.01385177  0.11D-02  0.90D-03   293.17
    2     4     4     1.05756848    -0.83205578 -2788.72128723    -0.83205578    -0.01384964  0.11D-02  0.90D-03   293.17
    2     5     5     1.06024405    -0.83190583 -2788.72113728    -0.83190583    -0.01405567  0.11D-02  0.98D-03   293.17
    2     6     6     1.06019522    -0.83184266 -2788.72107411    -0.83184266    -0.01409784  0.11D-02  0.99D-03   293.17
    2     7     7     1.05778145    -0.83247141 -2788.71878905    -0.83247141    -0.01378292  0.10D-02  0.91D-03   293.17
    2     8     8     1.05776746    -0.83240544 -2788.71872308    -0.83240544    -0.01382092  0.10D-02  0.92D-03   293.17
    2     9     9     1.05775614    -0.83240450 -2788.71872214    -0.83240450    -0.01381813  0.10D-02  0.91D-03   293.17
    2    10    10     1.07041399    -0.82927391 -2788.70168454    -0.82927391    -0.02168295  0.68D-02  0.97D-03   293.17
    3     1     1     1.06542961    -0.87988857 -2789.14053449    -0.02718621    -0.00111908  0.34D-04  0.13D-03   553.65
    3     2     2     1.05874390    -0.84569697 -2788.73492842    -0.01360585    -0.00054595  0.13D-04  0.76D-04   553.65
    3     3     3     1.05872830    -0.84568703 -2788.73491848    -0.01363062    -0.00055202  0.13D-04  0.77D-04   553.65
    3     4     4     1.05872390    -0.84568419 -2788.73491564    -0.01362841    -0.00055287  0.13D-04  0.77D-04   553.65
    3     5     5     1.05908312    -0.84568025 -2788.73491170    -0.01377442    -0.00054765  0.12D-04  0.81D-04   553.65
    3     6     6     1.05906124    -0.84566683 -2788.73489828    -0.01382417    -0.00055425  0.12D-04  0.82D-04   553.65
    3     7     7     1.05892149    -0.84605758 -2788.73237522    -0.01358617    -0.00057225  0.14D-04  0.80D-04   553.65
    3     8     8     1.05889567    -0.84604455 -2788.73236220    -0.01363911    -0.00058046  0.14D-04  0.81D-04   553.65
    3     9     9     1.05889100    -0.84604065 -2788.73235829    -0.01363615    -0.00058161  0.14D-04  0.82D-04   553.65
    3    10    10     1.06049968    -0.85050537 -2788.72291600    -0.02123146    -0.00086188  0.71D-04  0.98D-04   553.65
    4     1     1     1.06909289    -0.88122494 -2789.14187086    -0.00133637    -0.00008032  0.38D-05  0.78D-05   813.57
    4     2     2     1.06078303    -0.84640080 -2788.73563225    -0.00070383    -0.00005764  0.21D-05  0.67D-05   813.57
    4     3     3     1.06078042    -0.84639969 -2788.73563114    -0.00071266    -0.00005837  0.22D-05  0.67D-05   813.57
    4     4     4     1.06069364    -0.84639917 -2788.73563062    -0.00071498    -0.00006105  0.21D-05  0.71D-05   813.57
    4     5     5     1.06078048    -0.84639893 -2788.73563038    -0.00071868    -0.00005881  0.22D-05  0.68D-05   813.57
    4     6     6     1.06068225    -0.84639631 -2788.73562776    -0.00072948    -0.00006253  0.21D-05  0.72D-05   813.57
    4     7     7     1.06097984    -0.84680583 -2788.73312347    -0.00074825    -0.00006253  0.22D-05  0.71D-05   813.57
    4     8     8     1.06097545    -0.84680474 -2788.73312239    -0.00076019    -0.00006339  0.22D-05  0.72D-05   813.57
    4     9     9     1.06097512    -0.84680368 -2788.73312132    -0.00076304    -0.00006399  0.22D-05  0.72D-05   813.57
    4    10    10     1.06202550    -0.85152822 -2788.72393884    -0.00102285    -0.00008364  0.39D-05  0.99D-05   813.57
    5     1     1     1.06989627    -0.88132179 -2789.14196771    -0.00009685    -0.00000702  0.20D-06  0.69D-06  1073.07
    5     2     2     1.06118269    -0.84647588 -2788.73570733    -0.00007508    -0.00000611  0.27D-06  0.68D-06  1073.07
    5     3     3     1.06118206    -0.84647525 -2788.73570670    -0.00007555    -0.00000641  0.28D-06  0.72D-06  1073.07
    5     4     4     1.06120103    -0.84647466 -2788.73570610    -0.00007549    -0.00000669  0.29D-06  0.76D-06  1073.07
    5     5     5     1.06119993    -0.84647440 -2788.73570585    -0.00007548    -0.00000675  0.29D-06  0.77D-06  1073.07
    5     6     6     1.06120026    -0.84647433 -2788.73570578    -0.00007802    -0.00000685  0.30D-06  0.78D-06  1073.07
    5     7     7     1.06140455    -0.84688520 -2788.73320285    -0.00007937    -0.00000687  0.29D-06  0.77D-06  1073.07
    5     8     8     1.06140379    -0.84688509 -2788.73320273    -0.00008034    -0.00000693  0.29D-06  0.78D-06  1073.07
    5     9     9     1.06140387    -0.84688493 -2788.73320257    -0.00008125    -0.00000704  0.30D-06  0.79D-06  1073.07
    5    10    10     1.06255827    -0.85163401 -2788.72404464    -0.00010580    -0.00001055  0.53D-06  0.12D-05  1073.07
    6     1     1     1.06991237    -0.88133004 -2789.14197596    -0.00000825    -0.00000068  0.14D-07  0.70D-07  1332.67
    6     2     2     1.06117904    -0.84648342 -2788.73571487    -0.00000754    -0.00000086  0.27D-07  0.11D-06  1332.67
    6     3     3     1.06117609    -0.84648322 -2788.73571467    -0.00000798    -0.00000104  0.30D-07  0.12D-06  1332.67
    6     4     4     1.06117875    -0.84648320 -2788.73571464    -0.00000854    -0.00000092  0.29D-07  0.12D-06  1332.67
    6     5     5     1.06117507    -0.84648311 -2788.73571455    -0.00000870    -0.00000107  0.31D-07  0.13D-06  1332.67
    6     6     6     1.06117554    -0.84648305 -2788.73571450    -0.00000871    -0.00000105  0.30D-07  0.13D-06  1332.67
    6     7     7     1.06138464    -0.84689383 -2788.73321147    -0.00000862    -0.00000100  0.29D-07  0.12D-06  1332.67
    6     8     8     1.06138421    -0.84689378 -2788.73321142    -0.00000869    -0.00000101  0.29D-07  0.12D-06  1332.67
    6     9     9     1.06138355    -0.84689378 -2788.73321142    -0.00000884    -0.00000103  0.30D-07  0.12D-06  1332.67
    6    10    10     1.06256268    -0.85164748 -2788.72405811    -0.00001347    -0.00000158  0.53D-07  0.20D-06  1332.67
    7     1     1     1.06992056    -0.88133086 -2789.14197678    -0.00000082    -0.00000007  0.15D-08  0.74D-08  1591.78
    7     2     2     1.06118842    -0.84648463 -2788.73571608    -0.00000121    -0.00000019  0.52D-08  0.21D-07  1591.78
    7     3     3     1.06119084    -0.84648461 -2788.73571606    -0.00000139    -0.00000016  0.49D-08  0.18D-07  1591.78
    7     4     4     1.06118794    -0.84648455 -2788.73571600    -0.00000135    -0.00000019  0.53D-08  0.22D-07  1591.78
    7     5     5     1.06118812    -0.84648447 -2788.73571592    -0.00000136    -0.00000019  0.52D-08  0.22D-07  1591.78
    7     6     6     1.06119022    -0.84648445 -2788.73571590    -0.00000140    -0.00000017  0.52D-08  0.19D-07  1591.78
    7     7     7     1.06139838    -0.84689518 -2788.73321282    -0.00000136    -0.00000018  0.47D-08  0.21D-07  1591.78
    7     8     8     1.06139789    -0.84689517 -2788.73321281    -0.00000139    -0.00000019  0.48D-08  0.21D-07  1591.78
    7     9     9     1.06139816    -0.84689514 -2788.73321278    -0.00000136    -0.00000018  0.47D-08  0.21D-07  1591.78
    7    10    10     1.06258047    -0.85164960 -2788.72406022    -0.00000212    -0.00000031  0.15D-07  0.34D-07  1591.78
    8     1     1     1.06992128    -0.88133087 -2789.14197679    -0.00000000    -0.00000007  0.16D-08  0.73D-08  1834.33
    8     2     2     1.06119687    -0.84648487 -2788.73571632    -0.00000024    -0.00000004  0.20D-08  0.32D-08  1834.33
    8     3     3     1.06119755    -0.84648481 -2788.73571626    -0.00000020    -0.00000003  0.14D-08  0.25D-08  1834.33
    8     4     4     1.06119670    -0.84648479 -2788.73571624    -0.00000024    -0.00000004  0.20D-08  0.34D-08  1834.33
    8     5     5     1.06119675    -0.84648471 -2788.73571616    -0.00000024    -0.00000004  0.20D-08  0.33D-08  1834.33
    8     6     6     1.06119708    -0.84648465 -2788.73571610    -0.00000020    -0.00000003  0.14D-08  0.26D-08  1834.33
    8     7     7     1.06140715    -0.84689541 -2788.73321305    -0.00000023    -0.00000003  0.18D-08  0.30D-08  1834.33
    8     8     8     1.06140697    -0.84689540 -2788.73321304    -0.00000023    -0.00000003  0.19D-08  0.31D-08  1834.33
    8     9     9     1.06140709    -0.84689537 -2788.73321301    -0.00000023    -0.00000003  0.19D-08  0.31D-08  1834.33
    8    10    10     1.06258356    -0.85165003 -2788.72406066    -0.00000044    -0.00000003  0.14D-08  0.37D-08  1834.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   6.1%
 P   0.3%  47.3%  35.6%

 Initialization:   1.7%
 Other:            8.2%

 Total CPU:     1834.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9603912  -0.0000000   0.0000008  -0.0000000   0.0000000   0.0000016  -0.0000000  -0.0000000
                           -0.0000000  -0.1077940
 2222222222/2200\           0.0638247  -0.0018642  -0.0303866  -0.0001017   0.0141750   0.7917892   0.0000001   0.0000001
                            0.0000002   0.5565122
 22222222222/20\0           0.0638248   0.0029470   0.7009704  -0.0072716  -0.0045137  -0.3696330   0.0000003  -0.0000001
                           -0.0000002   0.5565011
 222222222222/00\           0.0000000  -0.0016370  -0.0021075  -0.0010125   0.6861815  -0.0123694  -0.0012119   0.0006291
                            0.6863452  -0.0000000
 22222222222/2\00          -0.0000000   0.6862830  -0.0021696  -0.0084122   0.0016451   0.0015020  -0.6861697  -0.0135242
                           -0.0011991   0.0000001
 2222222222/22\00          -0.0000000  -0.0016371  -0.0021079  -0.0010127   0.6862485  -0.0123702   0.0012117  -0.0006293
                           -0.6862783   0.0000000
 222222222222/0\0          -0.0000000   0.6862646  -0.0021701  -0.0084120   0.0016452   0.0015019   0.6861879   0.0135247
                            0.0011992  -0.0000001
 2222222222/220\0          -0.0000000   0.0084315   0.0072848   0.6862574   0.0010620   0.0003685  -0.0135230   0.6861632
                           -0.0006530  -0.0000000
 22222222222/200\          -0.0000000   0.0084313   0.0072842   0.6862247   0.0010617   0.0003685   0.0135237  -0.6861960
                            0.0006530   0.0000000
 222222222222/\00           0.0638248  -0.0010828  -0.6705940   0.0073734  -0.0096616  -0.4221784  -0.0000002   0.0000001
                            0.0000000   0.5564917

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966134    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.035093
 2           0.000000   -0.000330   -0.002315    0.970651    0.003637    0.011925    0.000000   -0.000013    0.000000    0.000000
 3          -0.000000   -0.645523   -0.002981   -0.003069    0.724913    0.010303    0.000000   -0.000000    0.000000   -0.000006
 4           0.000000    0.007269   -0.001432   -0.011898   -0.007379    0.970605    0.000000    0.000000    0.000023    0.000000
 5          -0.000000   -0.015038    0.970568    0.002327   -0.009411    0.001502   -0.000047    0.000000    0.000000   -0.000000
 6          -0.000000   -0.724806   -0.017496    0.002124   -0.645499    0.000521    0.000001   -0.000000   -0.000000   -0.000013
 7           0.000000   -0.000000   -0.000000    0.000013    0.000000    0.000001   -0.001714    0.970449   -0.019126    0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000023    0.000890    0.019127    0.970450    0.000000
 9           0.000000   -0.000000    0.000047    0.000000   -0.000000   -0.000000    0.970637    0.001696   -0.000924    0.000000
 10          0.038403   -0.000014   -0.000000   -0.000000   -0.000004    0.000000   -0.000000   -0.000000   -0.000000    0.969336

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966770    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.001593
 2           0.000000    0.970734   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.970734    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.970734    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.970734   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970734    0.000000    0.000000    0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.970639   -0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970639   -0.000000   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970639    0.000000
 10          0.001593    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970095


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96613417 (fixed)   0.96677156 (relaxed)   0.96676999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000426   -0.00002861   -0.84714737
 Singles      0.00868741   -0.02335584   -0.02898309
 Pairs        0.06123417    0.04840608   -0.00520041
 Total        1.06992584    0.02502164   -0.88133087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.26008690
 Nuclear energy                         0.00000000
 Kinetic energy                      2995.16008741
 One electron energy                -3877.65879105
 Two electron energy                 1088.51681426
 Virial quotient                       -0.93121633
 Correlation energy                    -0.88188988
 !MRCI STATE 1.1 Energy             -2789.141976785512

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.20364368 (Davidson, fixed reference)
 Cluster corrected energies         -2789.20364062 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.20364368 (Davidson, rotated reference)

 Cluster corrected energies         -2789.20245621 (Pople, fixed reference)
 Cluster corrected energies         -2789.20245303 (Pople, relaxed reference)
 Cluster corrected energies         -2789.20245621 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97065115 (fixed)   0.97073617 (relaxed)   0.97073403 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00001377   -0.76774358
 Singles      0.00832324   -0.03175803   -0.03656241
 Pairs        0.05287413   -0.00000001   -0.04217888
 Total        1.06120549   -0.03177181   -0.84648487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88923145
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93791038
 One electron energy                -3865.29811399
 Two electron energy                 1076.56239768
 Virial quotient                       -0.93146077
 Correlation energy                    -0.84648487
 !MRCI STATE 2.1 Energy             -2788.735716317164

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78752584 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78752188 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78752584 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78613763 (Pople, fixed reference)
 Cluster corrected energies         -2788.78613357 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78613763 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72491306 (fixed)   0.97073586 (relaxed)   0.97073372 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00001377   -0.76774837
 Singles      0.00832273   -0.03175741   -0.03656211
 Pairs        0.05287532    0.00000503   -0.04217433
 Total        1.06120617   -0.03176615   -0.84648481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88923145
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93841658
 One electron energy                -3865.29849060
 Two electron energy                 1076.56277434
 Virial quotient                       -0.93146061
 Correlation energy                    -0.84648481
 !MRCI STATE 3.1 Energy             -2788.735716259582

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78752635 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78752239 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78752635 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78613816 (Pople, fixed reference)
 Cluster corrected energies         -2788.78613410 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78613816 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97060488 (fixed)   0.97073625 (relaxed)   0.97073411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00001377   -0.76774365
 Singles      0.00832322   -0.03175799   -0.03656229
 Pairs        0.05287398   -0.00000004   -0.04217885
 Total        1.06120532   -0.03177180   -0.84648479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88923145
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93785535
 One electron energy                -3865.29807437
 Two electron energy                 1076.56235813
 Virial quotient                       -0.93146079
 Correlation energy                    -0.84648479
 !MRCI STATE 4.1 Energy             -2788.735716243297

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78752561 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78752165 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78752561 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78613740 (Pople, fixed reference)
 Cluster corrected energies         -2788.78613334 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78613740 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97056802 (fixed)   0.97073623 (relaxed)   0.97073409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00001377   -0.76774385
 Singles      0.00832313   -0.03175788   -0.03656214
 Pairs        0.05287412    0.00000020   -0.04217872
 Total        1.06120537   -0.03177146   -0.84648471
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88923145
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93785668
 One electron energy                -3865.29807249
 Two electron energy                 1076.56235633
 Virial quotient                       -0.93146079
 Correlation energy                    -0.84648471
 !MRCI STATE 5.1 Energy             -2788.735716161283

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78752557 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78752161 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78752557 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78613736 (Pople, fixed reference)
 Cluster corrected energies         -2788.78613330 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78613736 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.72480643 (fixed)   0.97073608 (relaxed)   0.97073394 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00001377   -0.76775423
 Singles      0.00832259   -0.03175724   -0.03656186
 Pairs        0.05287498    0.00001087   -0.04216856
 Total        1.06120569   -0.03176014   -0.84648465
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88923145
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93836736
 One electron energy                -3865.29844620
 Two electron energy                 1076.56273010
 Virial quotient                       -0.93146063
 Correlation energy                    -0.84648465
 !MRCI STATE 6.1 Energy             -2788.735716102468

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78752578 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78752182 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78752578 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78613758 (Pople, fixed reference)
 Cluster corrected energies         -2788.78613352 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78613758 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97044874 (fixed)   0.97063993 (relaxed)   0.97063871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000640   -0.00001414   -0.76752490
 Singles      0.00853300   -0.03223910   -0.03717914
 Pairs        0.05287455   -0.00000010   -0.04219137
 Total        1.06141394   -0.03225333   -0.84689541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88631764
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93769608
 One electron energy                -3865.28868227
 Two electron energy                 1076.55546922
 Virial quotient                       -0.93146000
 Correlation energy                    -0.84689541
 !MRCI STATE 7.1 Energy             -2788.733213052231

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78522424 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78522197 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78522424 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78383994 (Pople, fixed reference)
 Cluster corrected energies         -2788.78383762 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78383994 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.97044990 (fixed)   0.97064001 (relaxed)   0.97063879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000640   -0.00001414   -0.76752508
 Singles      0.00853301   -0.03223910   -0.03717912
 Pairs        0.05287435   -0.00000004   -0.04219120
 Total        1.06141376   -0.03225327   -0.84689540
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88631764
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93765734
 One electron energy                -3865.28865491
 Two electron energy                 1076.55544187
 Virial quotient                       -0.93146001
 Correlation energy                    -0.84689540
 !MRCI STATE 8.1 Energy             -2788.733213044369

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78522407 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78522181 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78522407 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78383977 (Pople, fixed reference)
 Cluster corrected energies         -2788.78383745 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78383977 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97063681 (fixed)   0.97063996 (relaxed)   0.97063874 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000640   -0.00001414   -0.76752504
 Singles      0.00853296   -0.03223904   -0.03717904
 Pairs        0.05287453   -0.00000001   -0.04219129
 Total        1.06141388   -0.03225319   -0.84689537
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88631764
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93768211
 One electron energy                -3865.28867004
 Two electron energy                 1076.55545703
 Virial quotient                       -0.93146001
 Correlation energy                    -0.84689537
 !MRCI STATE 9.1 Energy             -2788.733213010673

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78522414 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78522187 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78522414 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78383984 (Pople, fixed reference)
 Cluster corrected energies         -2788.78383752 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78383984 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96933585 (fixed)   0.97010257 (relaxed)   0.97009497 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001933   -0.00004223   -0.00052237
 Singles      0.00939642   -0.03340257   -0.03896530
 Pairs        0.05318835   -0.81770886   -0.81216236
 Total        1.06260411   -0.85115366   -0.85165003
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87296964
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.07138645
 One electron energy                -3865.81710223
 Two electron energy                 1077.09304157
 Virial quotient                       -0.93141535
 Correlation energy                    -0.85109102
 !MRCI STATE 10.1 Energy            -2788.724060659389

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77734245 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77732829 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77734245 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77597885 (Pople, fixed reference)
 Cluster corrected energies         -2788.77596429 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77597885 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      642.84       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2138.82   2132.48      4.78      0.07      1.26
 REAL TIME  *      2215.08 SEC
 DISK USED  *       690.25 MB (local),        9.51 GB (total)
 SF USED    *         6.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.20364368  AU                              
 SETTING HLSDIAG(2)     =     -2788.78752584  AU                              
 SETTING HLSDIAG(3)     =     -2788.78752635  AU                              
 SETTING HLSDIAG(4)     =     -2788.78752561  AU                              
 SETTING HLSDIAG(5)     =     -2788.78752557  AU                              
 SETTING HLSDIAG(6)     =     -2788.78752578  AU                              
 SETTING HLSDIAG(7)     =     -2788.78522424  AU                              
 SETTING HLSDIAG(8)     =     -2788.78522407  AU                              
 SETTING HLSDIAG(9)     =     -2788.78522414  AU                              
 SETTING HLSDIAG(10)    =     -2788.77734245  AU                              


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
     1     -2787.89725699
     2     -2787.89067286
     3     -2787.89067286
     4     -2787.89067286
     5     -2787.89067286
     6     -2787.89067286
     7     -2787.88646553
     8     -2787.88646553
     9     -2787.88646553

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1313D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2225
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:       4749855
 Number of doubly external configurations:       5023925
 Total number of contracted configurations:      9790004
 Total number of uncontracted configurations:  316326744

 Diagonal Coupling coefficients finished.               Storage:  18350029 words, CPU-Time:     46.58 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1335524 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.89725699     0.00000000    -0.97703617  0.19D-01  0.68D-01    51.21
    1     2     2     1.00000000     0.00000000 -2787.89067286     0.00000000    -0.97490226  0.17D-01  0.67D-01    51.21
    1     3     3     1.00000000     0.00000000 -2787.89067286     0.00000000    -0.97355008  0.17D-01  0.66D-01    51.21
    1     4     4     1.00000000     0.00000000 -2787.89067286     0.00000000    -0.97368754  0.17D-01  0.66D-01    51.21
    1     5     5     1.00000000     0.00000000 -2787.89067286    -0.00000000    -0.97482206  0.17D-01  0.67D-01    51.21
    1     6     6     1.00000000     0.00000000 -2787.89067286    -0.00000000    -0.97344600  0.17D-01  0.66D-01    51.21
    1     7     7     1.00000000     0.00000000 -2787.88646553    -0.00000000    -0.97251177  0.16D-01  0.66D-01    51.21
    1     8     8     1.00000000     0.00000000 -2787.88646553    -0.00000000    -0.97281795  0.16D-01  0.66D-01    51.21
    1     9     9     1.00000000     0.00000000 -2787.88646553    -0.00000000    -0.97245540  0.16D-01  0.66D-01    51.21
    2     1     1     1.06277788    -0.83128540 -2788.72854239    -0.83128540    -0.01457606  0.15D-02  0.97D-03   372.49
    2     2     2     1.06053452    -0.83242027 -2788.72309313    -0.83242027    -0.01380137  0.11D-02  0.91D-03   372.49
    2     3     3     1.06049031    -0.83240878 -2788.72308164    -0.83240878    -0.01381088  0.11D-02  0.91D-03   372.49
    2     4     4     1.06045785    -0.83236976 -2788.72304263    -0.83236976    -0.01383046  0.11D-02  0.92D-03   372.49
    2     5     5     1.06086746    -0.83182698 -2788.72249984    -0.83182698    -0.01420183  0.11D-02  0.10D-02   372.49
    2     6     6     1.06081872    -0.83174560 -2788.72241846    -0.83174560    -0.01425415  0.11D-02  0.10D-02   372.49
    2     7     7     1.06008893    -0.83282330 -2788.71928883    -0.83282330    -0.01359189  0.11D-02  0.90D-03   372.49
    2     8     8     1.05999633    -0.83273545 -2788.71920098    -0.83273545    -0.01364325  0.11D-02  0.91D-03   372.49
    2     9     9     1.05997516    -0.83271292 -2788.71917845    -0.83271292    -0.01365302  0.11D-02  0.92D-03   372.49
    3     1     1     1.05970611    -0.84544569 -2788.74270268    -0.01416029    -0.00047427  0.22D-04  0.68D-04   693.57
    3     2     2     1.05942059    -0.84581056 -2788.73648343    -0.01339029    -0.00047833  0.12D-04  0.70D-04   693.57
    3     3     3     1.05941079    -0.84580997 -2788.73648283    -0.01340119    -0.00047969  0.12D-04  0.71D-04   693.57
    3     4     4     1.05939067    -0.84579979 -2788.73647265    -0.01343003    -0.00048550  0.12D-04  0.72D-04   693.57
    3     5     5     1.05925917    -0.84570471 -2788.73637757    -0.01387773    -0.00054108  0.12D-04  0.81D-04   693.57
    3     6     6     1.05922419    -0.84568833 -2788.73636120    -0.01394273    -0.00055127  0.12D-04  0.83D-04   693.57
    3     7     7     1.05942959    -0.84602975 -2788.73249528    -0.01320645    -0.00047727  0.13D-04  0.70D-04   693.57
    3     8     8     1.05938184    -0.84601245 -2788.73247798    -0.01327700    -0.00048880  0.13D-04  0.72D-04   693.57
    3     9     9     1.05936945    -0.84600547 -2788.73247100    -0.01329255    -0.00049259  0.13D-04  0.72D-04   693.57
    4     1     1     1.06078397    -0.84602643 -2788.74328342    -0.00058074    -0.00004333  0.17D-05  0.56D-05  1015.82
    4     2     2     1.06080950    -0.84641546 -2788.73708833    -0.00060490    -0.00004871  0.17D-05  0.60D-05  1015.82
    4     3     3     1.06080848    -0.84641493 -2788.73708779    -0.00060496    -0.00004892  0.17D-05  0.60D-05  1015.82
    4     4     4     1.06080661    -0.84641433 -2788.73708719    -0.00061454    -0.00004960  0.18D-05  0.61D-05  1015.82
    4     5     5     1.06074569    -0.84640420 -2788.73707706    -0.00069949    -0.00005777  0.20D-05  0.68D-05  1015.82
    4     6     6     1.06074156    -0.84640299 -2788.73707585    -0.00071465    -0.00005886  0.21D-05  0.69D-05  1015.82
    4     7     7     1.06086508    -0.84663343 -2788.73309896    -0.00060368    -0.00004911  0.16D-05  0.61D-05  1015.82
    4     8     8     1.06085985    -0.84663257 -2788.73309810    -0.00062012    -0.00005011  0.16D-05  0.61D-05  1015.82
    4     9     9     1.06085817    -0.84663171 -2788.73309724    -0.00062625    -0.00005078  0.16D-05  0.62D-05  1015.82
    5     1     1     1.06121967    -0.84608043 -2788.74333742    -0.00005400    -0.00000388  0.27D-06  0.41D-06  1338.63
    5     2     2     1.06124147    -0.84647616 -2788.73714902    -0.00006069    -0.00000447  0.22D-06  0.49D-06  1338.63
    5     3     3     1.06124136    -0.84647609 -2788.73714896    -0.00006117    -0.00000453  0.22D-06  0.50D-06  1338.63
    5     4     4     1.06124257    -0.84647608 -2788.73714895    -0.00006175    -0.00000452  0.22D-06  0.49D-06  1338.63
    5     5     5     1.06123680    -0.84647559 -2788.73714845    -0.00007139    -0.00000501  0.24D-06  0.53D-06  1338.63
    5     6     6     1.06123704    -0.84647553 -2788.73714839    -0.00007254    -0.00000505  0.25D-06  0.53D-06  1338.63
    5     7     7     1.06129423    -0.84669503 -2788.73316056    -0.00006160    -0.00000473  0.21D-06  0.53D-06  1338.63
    5     8     8     1.06129436    -0.84669499 -2788.73316052    -0.00006241    -0.00000477  0.21D-06  0.54D-06  1338.63
    5     9     9     1.06129621    -0.84669498 -2788.73316051    -0.00006327    -0.00000474  0.21D-06  0.54D-06  1338.63
    6     1     1     1.06123957    -0.84608496 -2788.74334195    -0.00000453    -0.00000041  0.16D-07  0.56D-07  1662.08
    6     2     2     1.06124740    -0.84648144 -2788.73715431    -0.00000529    -0.00000056  0.19D-07  0.77D-07  1662.08
    6     3     3     1.06125101    -0.84648144 -2788.73715431    -0.00000535    -0.00000054  0.18D-07  0.74D-07  1662.08
    6     4     4     1.06125050    -0.84648144 -2788.73715430    -0.00000536    -0.00000054  0.17D-07  0.74D-07  1662.08
    6     5     5     1.06125092    -0.84648143 -2788.73715430    -0.00000585    -0.00000053  0.17D-07  0.74D-07  1662.08
    6     6     6     1.06124804    -0.84648142 -2788.73715428    -0.00000589    -0.00000057  0.19D-07  0.77D-07  1662.08
    6     7     7     1.06130022    -0.84670072 -2788.73316625    -0.00000569    -0.00000061  0.19D-07  0.83D-07  1662.08
    6     8     8     1.06130055    -0.84670072 -2788.73316625    -0.00000573    -0.00000061  0.19D-07  0.83D-07  1662.08
    6     9     9     1.06130139    -0.84670071 -2788.73316624    -0.00000573    -0.00000061  0.19D-07  0.83D-07  1662.08
    7     1     1     1.06124677    -0.84608549 -2788.74334248    -0.00000053    -0.00000006  0.25D-08  0.84D-08  1984.45
    7     2     2     1.06125858    -0.84648220 -2788.73715506    -0.00000075    -0.00000010  0.31D-08  0.13D-07  1984.45
    7     3     3     1.06125851    -0.84648218 -2788.73715504    -0.00000073    -0.00000010  0.31D-08  0.13D-07  1984.45
    7     4     4     1.06125964    -0.84648217 -2788.73715503    -0.00000073    -0.00000010  0.31D-08  0.12D-07  1984.45
    7     5     5     1.06125950    -0.84648216 -2788.73715502    -0.00000072    -0.00000010  0.30D-08  0.13D-07  1984.45
    7     6     6     1.06125965    -0.84648215 -2788.73715501    -0.00000073    -0.00000010  0.30D-08  0.13D-07  1984.45
    7     7     7     1.06130863    -0.84670155 -2788.73316708    -0.00000083    -0.00000011  0.35D-08  0.14D-07  1984.45
    7     8     8     1.06130872    -0.84670155 -2788.73316708    -0.00000083    -0.00000011  0.36D-08  0.14D-07  1984.45
    7     9     9     1.06130877    -0.84670155 -2788.73316708    -0.00000083    -0.00000011  0.35D-08  0.14D-07  1984.45
    8     1     1     1.06124886    -0.84608557 -2788.74334256    -0.00000008    -0.00000001  0.56D-09  0.10D-08  2306.95
    8     2     2     1.06126397    -0.84648232 -2788.73715519    -0.00000013    -0.00000002  0.86D-09  0.17D-08  2306.95
    8     3     3     1.06126384    -0.84648230 -2788.73715517    -0.00000012    -0.00000002  0.85D-09  0.18D-08  2306.95
    8     4     4     1.06126397    -0.84648229 -2788.73715515    -0.00000012    -0.00000002  0.86D-09  0.17D-08  2306.95
    8     5     5     1.06126402    -0.84648228 -2788.73715514    -0.00000012    -0.00000002  0.89D-09  0.20D-08  2306.95
    8     6     6     1.06126404    -0.84648227 -2788.73715514    -0.00000012    -0.00000002  0.90D-09  0.20D-08  2306.95
    8     7     7     1.06131388    -0.84670170 -2788.73316723    -0.00000015    -0.00000002  0.11D-08  0.21D-08  2306.95
    8     8     8     1.06131374    -0.84670169 -2788.73316722    -0.00000014    -0.00000002  0.11D-08  0.20D-08  2306.95
    8     9     9     1.06131391    -0.84670169 -2788.73316722    -0.00000015    -0.00000002  0.11D-08  0.21D-08  2306.95


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   7.3%
 P   0.3%  57.5%  26.3%

 Initialization:   2.1%
 Other:            5.8%

 Total CPU:     2307.0 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2200/           0.5604169   0.7832705  -0.1208985   0.0032562   0.0016790   0.0009759  -0.0000000   0.0000000
                            0.0000000
 222222222222//00           0.5604179  -0.2869334   0.7387782  -0.0015774   0.0017559  -0.0035834   0.0000000   0.0000000
                           -0.0000001
 2222222222/22/00           0.0000000  -0.0003747   0.0032020   0.0050289  -0.0033028   0.6863381  -0.0082944  -0.0617007
                           -0.6834864
 222222222222/00/           0.0000000  -0.0003747   0.0032022   0.0050289  -0.0033029   0.6863374   0.0082946   0.0617007
                            0.6834872
 2222222222/220/0           0.0000000  -0.0017960  -0.0023326  -0.0094672   0.6862945   0.0033819   0.6862517  -0.0047146
                           -0.0079024
 22222222222/200/           0.0000000  -0.0017961  -0.0023325  -0.0094671   0.6862890   0.0033820  -0.6862575   0.0047146
                            0.0079026
 222222222222/0/0          -0.0000000  -0.0028171   0.0003245   0.6862864   0.0094853  -0.0049859   0.0039847   0.6835166
                           -0.0617518
 22222222222/2/00          -0.0000000  -0.0028170   0.0003245   0.6862779   0.0094853  -0.0049859  -0.0039847  -0.6835252
                            0.0617526
 22222222222/20/0           0.5604213  -0.4963328  -0.6178763  -0.0016788  -0.0034350   0.0026074   0.0000000  -0.0000000
                            0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970712   -0.000000    0.000000   -0.000000    0.000003    0.000000    0.000000   -0.000000   -0.000000
 2           0.000003   -0.589275   -0.000530   -0.003984   -0.771362   -0.002540   -0.000000   -0.000000    0.000000
 3           0.000002    0.771361    0.004529    0.000459   -0.589268   -0.003299    0.000000   -0.000000   -0.000000
 4           0.000000   -0.002827    0.007112    0.970578   -0.002814   -0.013389    0.000000    0.000006   -0.000000
 5          -0.000000    0.001060   -0.004671    0.013415   -0.004072    0.970591   -0.000000    0.000000    0.000004
 6          -0.000000   -0.003895    0.970656   -0.007051    0.002329    0.004783   -0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000004    0.011731    0.005636    0.970593
 8           0.000000    0.000000   -0.000000   -0.000006   -0.000000    0.000000    0.087265    0.966727   -0.006668
 9          -0.000000   -0.000000    0.000001    0.000001    0.000000    0.000000    0.966679   -0.087338   -0.011177

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970712   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.970704    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.970704    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.970704    0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.970704    0.000000   -0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970704    0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970681    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970681   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970680


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97071169 (fixed)   0.97071310 (relaxed)   0.97071169 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000516   -0.00000487   -0.76681852
 Singles      0.00870370   -0.03230048   -0.03737407
 Pairs        0.05254548    0.00000002   -0.04189298
 Total        1.06125433   -0.03230532   -0.84608557
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89725699
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.92328884
 One electron energy                -3865.27527494
 Two electron energy                 1076.53193239
 Virial quotient                       -0.93146787
 Correlation energy                    -0.84608557
 !MRCI STATE 1.1 Energy             -2788.743342557288

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.79516897 (Davidson, fixed reference)
 Cluster corrected energies         -2788.79516637 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.79516897 (Davidson, rotated reference)

 Cluster corrected energies         -2788.79338966 (Pople, fixed reference)
 Cluster corrected energies         -2788.79338701 (Pople, relaxed reference)
 Cluster corrected energies         -2788.79338966 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.77136223 (fixed)   0.97070571 (relaxed)   0.97070432 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000612   -0.00001058   -0.76732729
 Singles      0.00849996   -0.03214566   -0.03706812
 Pairs        0.05276438   -0.00000005   -0.04208691
 Total        1.06127046   -0.03215630   -0.84648232
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89067286
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93264748
 One electron energy                -3865.28371044
 Two electron energy                 1076.54655525
 Virial quotient                       -0.93146289
 Correlation energy                    -0.84648232
 !MRCI STATE 2.1 Energy             -2788.737155187061

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78901955 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78901698 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78901955 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78723963 (Pople, fixed reference)
 Cluster corrected energies         -2788.78723703 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78723963 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77136117 (fixed)   0.97070576 (relaxed)   0.97070438 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000612   -0.00001058   -0.76732737
 Singles      0.00849998   -0.03214572   -0.03706814
 Pairs        0.05276423    0.00000001   -0.04208679
 Total        1.06127033   -0.03215629   -0.84648230
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89067286
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93265064
 One electron energy                -3865.28371297
 Two electron energy                 1076.54655780
 Virial quotient                       -0.93146289
 Correlation energy                    -0.84648230
 !MRCI STATE 3.1 Energy             -2788.737155165547

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78901942 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78901685 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78901942 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78723950 (Pople, fixed reference)
 Cluster corrected energies         -2788.78723689 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78723950 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97057772 (fixed)   0.97070570 (relaxed)   0.97070431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000612   -0.00001058   -0.76732720
 Singles      0.00850010   -0.03214581   -0.03706822
 Pairs        0.05276425    0.00000004   -0.04208687
 Total        1.06127047   -0.03215635   -0.84648229
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89067286
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93261954
 One electron energy                -3865.28369391
 Two electron energy                 1076.54653876
 Virial quotient                       -0.93146290
 Correlation energy                    -0.84648229
 !MRCI STATE 4.1 Energy             -2788.737155151816

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78901952 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78901695 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78901952 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78723961 (Pople, fixed reference)
 Cluster corrected energies         -2788.78723700 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78723961 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97059124 (fixed)   0.97070568 (relaxed)   0.97070430 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000612   -0.00001058   -0.76732380
 Singles      0.00850020   -0.03214608   -0.03706836
 Pairs        0.05276419   -0.00000326   -0.04209012
 Total        1.06127051   -0.03215992   -0.84648228
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89067286
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93254919
 One electron energy                -3865.28364136
 Two electron energy                 1076.54648622
 Virial quotient                       -0.93146292
 Correlation energy                    -0.84648228
 !MRCI STATE 5.1 Energy             -2788.737155143623

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78901954 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78901698 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78901954 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78723963 (Pople, fixed reference)
 Cluster corrected energies         -2788.78723702 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78723963 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97065628 (fixed)   0.97070567 (relaxed)   0.97070428 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000612   -0.00001058   -0.76732694
 Singles      0.00850021   -0.03214612   -0.03706838
 Pairs        0.05276420    0.00000014   -0.04208696
 Total        1.06127054   -0.03215656   -0.84648227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89067286
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93253190
 One electron energy                -3865.28362910
 Two electron energy                 1076.54647396
 Virial quotient                       -0.93146293
 Correlation energy                    -0.84648227
 !MRCI STATE 6.1 Energy             -2788.737155136051

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78901956 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78901699 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78901956 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78723965 (Pople, fixed reference)
 Cluster corrected energies         -2788.78723704 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78723965 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.97059325 (fixed)   0.97068288 (relaxed)   0.97068051 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000815   -0.00001101   -0.00008587
 Singles      0.00842936   -0.03199538   -0.03686969
 Pairs        0.05288502   -0.81462208   -0.80974613
 Total        1.06132253   -0.84662847   -0.84670170
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88646553
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93718703
 One electron energy                -3865.28350057
 Two electron energy                 1076.55033334
 Virial quotient                       -0.93146015
 Correlation energy                    -0.84670170
 !MRCI STATE 7.1 Energy             -2788.733167228515

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78508912 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78508473 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78508912 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78330949 (Pople, fixed reference)
 Cluster corrected energies         -2788.78330503 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78330949 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96672698 (fixed)   0.97068294 (relaxed)   0.97068057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000815   -0.00001101   -0.77291289
 Singles      0.00842934   -0.03199532   -0.03686967
 Pairs        0.05288491    0.00559649   -0.03691913
 Total        1.06132239   -0.02640984   -0.84670169
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88646553
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93721985
 One electron energy                -3865.28352534
 Two electron energy                 1076.55035812
 Virial quotient                       -0.93146014
 Correlation energy                    -0.84670169
 !MRCI STATE 8.1 Energy             -2788.733167221827

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78508899 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78508461 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78508899 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78330937 (Pople, fixed reference)
 Cluster corrected energies         -2788.78330491 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78330937 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96667872 (fixed)   0.97068287 (relaxed)   0.97068050 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000815   -0.00001101   -0.77647829
 Singles      0.00842936   -0.03199537   -0.03686968
 Pairs        0.05288505    0.00938070   -0.03335372
 Total        1.06132255   -0.02262568   -0.84670169
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88646553
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.93717911
 One electron energy                -3865.28349480
 Two electron energy                 1076.55032758
 Virial quotient                       -0.93146015
 Correlation energy                    -0.84670169
 !MRCI STATE 9.1 Energy             -2788.733167220831

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78508913 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78508474 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78508913 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78330951 (Pople, fixed reference)
 Cluster corrected energies         -2788.78330505 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78330951 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1325.00       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4824.96   2686.14   2132.48      4.78      0.07      1.26
 REAL TIME  *      4970.65 SEC
 DISK USED  *         1.34 GB (local),       18.83 GB (total)
 SF USED    *         7.12 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2788.79516637  AU                              
 SETTING HLSDIAG(12)    =     -2788.78901698  AU                              
 SETTING HLSDIAG(13)    =     -2788.78901685  AU                              
 SETTING HLSDIAG(14)    =     -2788.78901695  AU                              
 SETTING HLSDIAG(15)    =     -2788.78901698  AU                              
 SETTING HLSDIAG(16)    =     -2788.78901699  AU                              
 SETTING HLSDIAG(17)    =     -2788.78508473  AU                              
 SETTING HLSDIAG(18)    =     -2788.78508461  AU                              
 SETTING HLSDIAG(19)    =     -2788.78508474  AU                              


         HLSDIAG
    -2789.203644
    -2788.787526
    -2788.787526
    -2788.787526
    -2788.787526
    -2788.787526
    -2788.785224
    -2788.785224
    -2788.785224
    -2788.777342
    -2788.795166
    -2788.789017
    -2788.789017
    -2788.789017
    -2788.789017
    -2788.789017
    -2788.785085
    -2788.785085
    -2788.785085
                                                  

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

 Time for Seward_LS:       7.37 sec

 CPU time:      7.37 sec, REAL time:      7.66 sec


 SORTLS1 read    14261546. and wrote    14261546. SO integrals in    84 records. CPU time:      0.11 sec, REAL time:      0.22 sec
 SORTLS2 read    14261546. and wrote    69083406. SO integrals in    42 records. CPU time:      0.03 sec, REAL time:      0.13 sec

 FILE SIZES: FILE 1:    49.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    49.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1325.00       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4834.15      9.16   2686.14   2132.48      4.78      0.07      1.26
 REAL TIME  *      4980.48 SEC
 DISK USED  *         1.34 GB (local),       19.62 GB (total)
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

 Original energies:  -2789.141977  -2788.735716  -2788.735716  -2788.735716  -2788.735716  -2788.735716  -2788.733213  -2788.733213
                     -2788.733213  -2788.724061
 Replaced energies:  -2789.203644  -2788.787526  -2788.787526  -2788.787526  -2788.787526  -2788.787526  -2788.785224  -2788.785224
                     -2788.785224  -2788.777342

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.743343  -2788.737155  -2788.737155  -2788.737155  -2788.737155  -2788.737155  -2788.733167  -2788.733167
                     -2788.733167
 Replaced energies:  -2788.795166  -2788.789017  -2788.789017  -2788.789017  -2788.789017  -2788.789017  -2788.785085  -2788.785085
                     -2788.785085



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.20364368

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   91327.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   91327.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   91327.36       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   91327.37       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   91327.32       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   91832.45       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91832.49       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91832.47       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   93562.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.05       0.00      -1.84       0.95    1040.71      -0.00
                            0.00       0.01       0.00      -0.00      -0.00       0.00   -1040.51     -20.51      -1.82       0.00

   12   2.1  1.0  1.0      -0.00      -4.23      -2.85       1.23    1049.38     -18.27      -2.53       3.00     459.62      -0.00
                           -0.00     205.31      -6.18      -2.83       2.23       0.21     725.10      14.64       2.93      -0.00

   13   3.1  1.0  1.0      -0.00      -0.28      -0.34       0.99    -843.10       9.64      -3.16       0.18     572.06      -0.00
                           -0.00    1330.42      -3.54     -13.18       5.48       2.90    -111.85      -5.17       1.97      -0.00

   14   4.1  1.0  1.0       0.00     -17.56     -11.73    -672.82       3.50      -9.19       3.75    -635.48       2.14      -0.00
                            0.00       4.09    1345.05      -9.45      14.34      51.36       3.09      -4.59       8.78       0.02

   15   5.1  1.0  1.0       0.00     672.88       0.79     -17.59       1.64       7.20     635.51       3.74       4.30       0.00
                            0.00       6.71      20.61      -2.51    -672.84      12.85       2.62       2.51    -635.49       0.00

   16   6.1  1.0  1.0       0.00       4.13    -627.84      12.17     -18.89   -1190.64       3.04       4.68      -2.41      -0.02
                            0.00       2.18      -2.60     673.18      -2.33       0.03      13.43    -635.38      -2.53       0.00

   17   7.1  1.0  1.0      -6.28     634.51       5.79     -11.54       1.46      -2.74     671.34       9.33       1.18     -12.10
                            3.02      -1.41      -1.70       6.73     634.38     -15.68      -1.03      -7.50     671.43       5.81

   18   8.1  1.0  1.0     -46.71     -11.88      51.58    -632.54      -1.36     -31.08       8.56    -668.66       0.63     -90.00
                          517.48       2.43      28.58      57.15     -17.32    -729.09       1.20     -60.36      -4.56     996.99

   19   9.1  1.0  1.0    -517.46      -3.89     646.15      50.49      -4.09    -340.35      -8.92      60.25      -0.07    -996.95
                          -46.75       7.63       4.20     631.93      -5.15      66.35      13.19    -668.58      -7.10     -90.07

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.04      -0.00      -0.00      29.00   -1471.50       1.40       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      21.26      16.17    1774.52       6.72       5.10       7.90    -375.70      -3.33       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      12.89       3.86     689.19       0.72       5.86     -23.25     967.10      -0.50      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       9.24     -11.02       8.30    -951.33      39.39      -8.13      -1.37     898.59       0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.21    1014.42      -2.78     -39.07   -1610.50       4.26       2.40      12.42      -0.01

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     951.83       1.94     -13.99       9.06      -5.98    -898.44     -22.41      -8.09      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          734.76      -9.44     876.86      -9.52      17.82     551.90      11.48       0.22      -5.49    1415.63

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.05     -82.82      -8.51      -0.26     893.48     -20.08      87.02       0.82    -945.52      -9.73

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.46    -893.58      -7.02      11.19     -83.03      -6.86     945.32      18.71      87.09     -16.30

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.05       0.00      -1.84       0.95    1040.71      -0.00
                           -0.00      -0.01      -0.00       0.00       0.00      -0.00    1040.51      20.51       1.82      -0.00

   30   2.1  1.0 -1.0      -0.00      -4.23      -2.85       1.23    1049.38     -18.27      -2.53       3.00     459.62      -0.00
                            0.00    -205.31       6.18       2.83      -2.23      -0.21    -725.10     -14.64      -2.93       0.00

   31   3.1  1.0 -1.0      -0.00      -0.28      -0.34       0.99    -843.10       9.64      -3.16       0.18     572.06      -0.00
                            0.00   -1330.42       3.54      13.18      -5.48      -2.90     111.85       5.17      -1.97       0.00

   32   4.1  1.0 -1.0       0.00     -17.56     -11.73    -672.82       3.50      -9.19       3.75    -635.48       2.14      -0.00
                           -0.00      -4.09   -1345.05       9.45     -14.34     -51.36      -3.09       4.59      -8.78      -0.02

   33   5.1  1.0 -1.0       0.00     672.88       0.79     -17.59       1.64       7.20     635.51       3.74       4.30       0.00
                           -0.00      -6.71     -20.61       2.51     672.84     -12.85      -2.62      -2.51     635.49      -0.00

   34   6.1  1.0 -1.0       0.00       4.13    -627.84      12.17     -18.89   -1190.64       3.04       4.68      -2.41      -0.02
                           -0.00      -2.18       2.60    -673.18       2.33      -0.03     -13.43     635.38       2.53      -0.00

   35   7.1  1.0 -1.0      -6.28     634.51       5.79     -11.54       1.46      -2.74     671.34       9.33       1.18     -12.10
                           -3.02       1.41       1.70      -6.73    -634.38      15.68       1.03       7.50    -671.43      -5.81

   36   8.1  1.0 -1.0     -46.71     -11.88      51.58    -632.54      -1.36     -31.08       8.56    -668.66       0.63     -90.00
                         -517.48      -2.43     -28.58     -57.15      17.32     729.09      -1.20      60.36       4.56    -996.99

   37   9.1  1.0 -1.0    -517.46      -3.89     646.15      50.49      -4.09    -340.35      -8.92      60.25      -0.07    -996.95
                           46.75      -7.63      -4.20    -631.93       5.15     -66.35     -13.19     668.58       7.10      90.07


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00      -6.28     -46.71    -517.46       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -3.02    -517.48      46.75       0.00

    2   2.1  0.0  0.0       0.00      -4.23      -0.28     -17.56     672.88       4.13     634.51     -11.88      -3.89       0.00
                           -0.01    -205.31   -1330.42      -4.09      -6.71      -2.18       1.41      -2.43      -7.63       0.00

    3   3.1  0.0  0.0       0.00      -2.85      -0.34     -11.73       0.79    -627.84       5.79      51.58     646.15       0.00
                           -0.00       6.18       3.54   -1345.05     -20.61       2.60       1.70     -28.58      -4.20       0.00

    4   4.1  0.0  0.0       0.00       1.23       0.99    -672.82     -17.59      12.17     -11.54    -632.54      50.49       0.00
                            0.00       2.83      13.18       9.45       2.51    -673.18      -6.73     -57.15    -631.93       0.04

    5   5.1  0.0  0.0      -0.05    1049.38    -843.10       3.50       1.64     -18.89       1.46      -1.36      -4.09       0.00
                            0.00      -2.23      -5.48     -14.34     672.84       2.33    -634.38      17.32       5.15       0.00

    6   6.1  0.0  0.0       0.00     -18.27       9.64      -9.19       7.20   -1190.64      -2.74     -31.08    -340.35       0.00
                           -0.00      -0.21      -2.90     -51.36     -12.85      -0.03      15.68     729.09     -66.35       0.00

    7   7.1  0.0  0.0      -1.84      -2.53      -3.16       3.75     635.51       3.04     671.34       8.56      -8.92       0.00
                         1040.51    -725.10     111.85      -3.09      -2.62     -13.43       1.03      -1.20     -13.19     -29.00

    8   8.1  0.0  0.0       0.95       3.00       0.18    -635.48       3.74       4.68       9.33    -668.66      60.25       0.00
                           20.51     -14.64       5.17       4.59      -2.51     635.38       7.50      60.36     668.58    1471.50

    9   9.1  0.0  0.0    1040.71     459.62     572.06       2.14       4.30      -2.41       1.18       0.63      -0.07       0.00
                            1.82      -2.93      -1.97      -8.78     635.49       2.53    -671.43       4.56       7.10      -1.40

   10  10.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.02     -12.10     -90.00    -996.95       0.00
                           -0.00       0.00       0.00      -0.02      -0.00      -0.00      -5.81    -996.99      90.07      -0.00

   11   1.1  1.0  1.0   89650.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.01       0.00   -1552.33      10.66      17.88      -0.00

   12   2.1  1.0  1.0       0.00   91000.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -3.98     -23.61    1679.23      11.97    -397.14       2.89       0.64       0.00

   13   3.1  1.0  1.0       0.00       0.00   91000.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.98      -0.00      -4.78     652.28       2.75    1022.35     -11.40     -10.93       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   91000.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      23.61       4.78       0.00      10.99    -900.72       9.26      78.47     946.54      -0.01

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   91000.04       0.00       0.00       0.00       0.00      -0.00
                            0.01   -1679.23    -652.28     -10.99       0.00     -10.24       2.62       5.72      12.63      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   91000.04       0.00       0.00       0.00      -0.00
                           -0.00     -11.97      -2.75     900.72      10.24       0.00     -10.56    -946.61      78.65      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   91863.07       0.00       0.00      13.27
                         1552.33     397.14   -1022.35      -9.26      -2.62      10.56       0.00      10.34      -6.17      -6.37

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91863.10       0.00      98.69
                          -10.66      -2.89      11.40     -78.47      -5.72     946.61     -10.34       0.00    -897.93   -1093.29

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91863.07    1093.23
                          -17.88      -0.64      10.93    -946.54     -12.63     -78.65       6.17     897.93      -0.00      98.77

   20   1.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.00      13.27      98.69    1093.23   89650.41
                            0.00      -0.00      -0.00       0.01       0.00       0.00       6.37    1093.29     -98.77       0.00

   21   2.1  1.0  0.0       0.00      -0.00       4.19       5.58      -2.19     993.18       8.62      41.90     483.86       0.00
                            0.00       0.00      -5.27    -194.33      -2.35      -0.23      -4.84    -763.56      67.22      -0.00

   22   3.1  1.0  0.0      -0.00      -4.19       0.00      -8.03       3.51    -797.79       6.98      52.09     602.39       0.00
                            0.00       5.27       0.00   -1258.86     -20.36       6.96       3.79     117.62     -12.96      -0.00

   23   4.1  1.0  0.0      -0.00      -5.58       8.03       0.00    -636.98       1.38    -671.59      -4.47      10.20       0.00
                           -0.01     194.33    1258.86       0.00       0.19     -14.55       4.79      -4.04      -9.00      -0.00

   24   5.1  1.0  0.0       0.00       2.19      -3.51     636.98       0.00      -4.72      -5.34     669.26     -56.98       0.00
                           -0.00       2.35      20.36      -0.19      -0.00     636.85       4.88      58.77     669.04      -0.00

   25   6.1  1.0  0.0       0.00    -993.18     797.79      -1.38       4.72      -0.00       4.87       3.03      -2.90       0.00
                           -0.00       0.23      -6.96      14.55    -636.85       0.00     671.65      -5.27      -4.35      -0.00

   26   7.1  1.0  0.0     -13.27      -8.62      -6.98     671.59       5.34      -4.87       0.00     632.36     -57.09       0.00
                           -6.37       4.84      -3.79      -4.79      -4.88    -671.65      -0.00     -57.13    -632.41      -0.00

   27   8.1  1.0  0.0     -98.69     -41.90     -52.09       4.47    -669.26      -3.03    -632.36      -0.00       7.67       0.00
                        -1093.29     763.56    -117.62       4.04     -58.77       5.27      57.13       0.00       3.69      -0.00

   28   9.1  1.0  0.0   -1093.23    -483.86    -602.39     -10.20      56.98       2.90      57.09      -7.67       0.00       0.00
                           98.77     -67.22      12.96       9.00    -669.04       4.35     632.41      -3.69       0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -6.37

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -98.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1093.29

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1093.23
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      98.77


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00    -734.76       5.05       8.46       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.23
                          -21.26     -12.89      -9.24      -2.21    -951.83       9.44      82.82     893.58       0.01     205.31

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.85
                          -16.17      -3.86      11.02   -1014.42      -1.94    -876.86       8.51       7.02       0.00      -6.18

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.23
                        -1774.52    -689.19      -8.30       2.78      13.99       9.52       0.26     -11.19      -0.00      -2.83

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.05    1049.38
                           -6.72      -0.72     951.33      39.07      -9.06     -17.82    -893.48      83.03      -0.00       2.23

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.27
                           -5.10      -5.86     -39.39    1610.50       5.98    -551.90      20.08       6.86       0.00       0.21

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.84      -2.53
                           -7.90      23.25       8.13      -4.26     898.44     -11.48     -87.02    -945.32   -1040.51     725.10

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.95       3.00
                          375.70    -967.10       1.37      -2.40      22.41      -0.22      -0.82     -18.71     -20.51      14.64

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1040.71     459.62
                            3.33       0.50    -898.59     -12.42       8.09       5.49     945.52     -87.09      -1.82       2.93

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.01       0.00   -1415.63       9.73      16.30       0.00      -0.00

   11   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00     -13.27     -98.69   -1093.23       0.00       0.00
                           -0.00      -0.00       0.01       0.00       0.00       6.37    1093.29     -98.77       0.00       0.00

   12   2.1  1.0  1.0      -0.00      -4.19      -5.58       2.19    -993.18      -8.62     -41.90    -483.86       0.00       0.00
                           -0.00      -5.27    -194.33      -2.35      -0.23      -4.84    -763.56      67.22       0.00       0.00

   13   3.1  1.0  1.0       4.19       0.00       8.03      -3.51     797.79      -6.98     -52.09    -602.39       0.00       0.00
                            5.27      -0.00   -1258.86     -20.36       6.96       3.79     117.62     -12.96       0.00       0.00

   14   4.1  1.0  1.0       5.58      -8.03       0.00     636.98      -1.38     671.59       4.47     -10.20       0.00       0.00
                          194.33    1258.86      -0.00       0.19     -14.55       4.79      -4.04      -9.00       0.00       0.00

   15   5.1  1.0  1.0      -2.19       3.51    -636.98       0.00       4.72       5.34    -669.26      56.98       0.00       0.00
                            2.35      20.36      -0.19       0.00     636.85       4.88      58.77     669.04       0.00       0.00

   16   6.1  1.0  1.0     993.18    -797.79       1.38      -4.72      -0.00      -4.87      -3.03       2.90       0.00       0.00
                            0.23      -6.96      14.55    -636.85      -0.00     671.65      -5.27      -4.35       0.00       0.00

   17   7.1  1.0  1.0       8.62       6.98    -671.59      -5.34       4.87       0.00    -632.36      57.09       0.00       0.00
                            4.84      -3.79      -4.79      -4.88    -671.65       0.00     -57.13    -632.41       0.00       0.00

   18   8.1  1.0  1.0      41.90      52.09      -4.47     669.26       3.03     632.36      -0.00      -7.67       0.00       0.00
                          763.56    -117.62       4.04     -58.77       5.27      57.13      -0.00       3.69       0.00       0.00

   19   9.1  1.0  1.0     483.86     602.39      10.20     -56.98      -2.90     -57.09       7.67       0.00       0.00       0.00
                          -67.22      12.96       9.00    -669.04       4.35     632.41      -3.69      -0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   21   2.1  1.0  0.0   91000.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   22   3.1  1.0  0.0       0.00   91000.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.19
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.27

   23   4.1  1.0  0.0       0.00       0.00   91000.05       0.00       0.00       0.00       0.00       0.00       0.00       5.58
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01     194.33

   24   5.1  1.0  0.0       0.00       0.00       0.00   91000.04       0.00       0.00       0.00       0.00      -0.00      -2.19
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.35

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   91000.04       0.00       0.00       0.00      -0.00     993.18
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.23

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   91863.07       0.00       0.00      13.27       8.62
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -6.37       4.84

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   91863.10       0.00      98.69      41.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1093.29     763.56

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91863.07    1093.23     483.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      98.77     -67.22

   29   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00      13.27      98.69    1093.23   89650.41       0.00
                           -0.00      -0.00       0.01       0.00       0.00       6.37    1093.29     -98.77      -0.00       0.00

   30   2.1  1.0 -1.0      -0.00       4.19       5.58      -2.19     993.18       8.62      41.90     483.86       0.00   91000.04
                            0.00      -5.27    -194.33      -2.35      -0.23      -4.84    -763.56      67.22      -0.00       0.00

   31   3.1  1.0 -1.0      -4.19       0.00      -8.03       3.51    -797.79       6.98      52.09     602.39       0.00       0.00
                            5.27       0.00   -1258.86     -20.36       6.96       3.79     117.62     -12.96       0.00      -3.98

   32   4.1  1.0 -1.0      -5.58       8.03       0.00    -636.98       1.38    -671.59      -4.47      10.20       0.00       0.00
                          194.33    1258.86       0.00       0.19     -14.55       4.79      -4.04      -9.00       0.00     -23.61

   33   5.1  1.0 -1.0       2.19      -3.51     636.98       0.00      -4.72      -5.34     669.26     -56.98       0.00       0.00
                            2.35      20.36      -0.19      -0.00     636.85       4.88      58.77     669.04      -0.01    1679.23

   34   6.1  1.0 -1.0    -993.18     797.79      -1.38       4.72      -0.00       4.87       3.03      -2.90       0.00       0.00
                            0.23      -6.96      14.55    -636.85       0.00     671.65      -5.27      -4.35       0.00      11.97

   35   7.1  1.0 -1.0      -8.62      -6.98     671.59       5.34      -4.87       0.00     632.36     -57.09       0.00       0.00
                            4.84      -3.79      -4.79      -4.88    -671.65      -0.00     -57.13    -632.41   -1552.33    -397.14

   36   8.1  1.0 -1.0     -41.90     -52.09       4.47    -669.26      -3.03    -632.36      -0.00       7.67       0.00       0.00
                          763.56    -117.62       4.04     -58.77       5.27      57.13       0.00       3.69      10.66       2.89

   37   9.1  1.0 -1.0    -483.86    -602.39     -10.20      56.98       2.90      57.09      -7.67       0.00       0.00       0.00
                          -67.22      12.96       9.00    -669.04       4.35     632.41      -3.69       0.00      17.88       0.64


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00      -6.28     -46.71    -517.46
                           -0.00       0.00       0.00       0.00       3.02     517.48     -46.75

    2   2.1  0.0  0.0      -0.28     -17.56     672.88       4.13     634.51     -11.88      -3.89
                         1330.42       4.09       6.71       2.18      -1.41       2.43       7.63

    3   3.1  0.0  0.0      -0.34     -11.73       0.79    -627.84       5.79      51.58     646.15
                           -3.54    1345.05      20.61      -2.60      -1.70      28.58       4.20

    4   4.1  0.0  0.0       0.99    -672.82     -17.59      12.17     -11.54    -632.54      50.49
                          -13.18      -9.45      -2.51     673.18       6.73      57.15     631.93

    5   5.1  0.0  0.0    -843.10       3.50       1.64     -18.89       1.46      -1.36      -4.09
                            5.48      14.34    -672.84      -2.33     634.38     -17.32      -5.15

    6   6.1  0.0  0.0       9.64      -9.19       7.20   -1190.64      -2.74     -31.08    -340.35
                            2.90      51.36      12.85       0.03     -15.68    -729.09      66.35

    7   7.1  0.0  0.0      -3.16       3.75     635.51       3.04     671.34       8.56      -8.92
                         -111.85       3.09       2.62      13.43      -1.03       1.20      13.19

    8   8.1  0.0  0.0       0.18    -635.48       3.74       4.68       9.33    -668.66      60.25
                           -5.17      -4.59       2.51    -635.38      -7.50     -60.36    -668.58

    9   9.1  0.0  0.0     572.06       2.14       4.30      -2.41       1.18       0.63      -0.07
                            1.97       8.78    -635.49      -2.53     671.43      -4.56      -7.10

   10  10.1  0.0  0.0      -0.00      -0.00       0.00      -0.02     -12.10     -90.00    -996.95
                           -0.00       0.02       0.00       0.00       5.81     996.99     -90.07

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

   20   1.1  1.0  0.0      -0.00      -0.00       0.00       0.00     -13.27     -98.69   -1093.23
                           -0.00       0.01       0.00       0.00       6.37    1093.29     -98.77

   21   2.1  1.0  0.0      -4.19      -5.58       2.19    -993.18      -8.62     -41.90    -483.86
                           -5.27    -194.33      -2.35      -0.23      -4.84    -763.56      67.22

   22   3.1  1.0  0.0       0.00       8.03      -3.51     797.79      -6.98     -52.09    -602.39
                           -0.00   -1258.86     -20.36       6.96       3.79     117.62     -12.96

   23   4.1  1.0  0.0      -8.03       0.00     636.98      -1.38     671.59       4.47     -10.20
                         1258.86      -0.00       0.19     -14.55       4.79      -4.04      -9.00

   24   5.1  1.0  0.0       3.51    -636.98       0.00       4.72       5.34    -669.26      56.98
                           20.36      -0.19       0.00     636.85       4.88      58.77     669.04

   25   6.1  1.0  0.0    -797.79       1.38      -4.72      -0.00      -4.87      -3.03       2.90
                           -6.96      14.55    -636.85      -0.00     671.65      -5.27      -4.35

   26   7.1  1.0  0.0       6.98    -671.59      -5.34       4.87       0.00    -632.36      57.09
                           -3.79      -4.79      -4.88    -671.65       0.00     -57.13    -632.41

   27   8.1  1.0  0.0      52.09      -4.47     669.26       3.03     632.36      -0.00      -7.67
                         -117.62       4.04     -58.77       5.27      57.13      -0.00       3.69

   28   9.1  1.0  0.0     602.39      10.20     -56.98      -2.90     -57.09       7.67       0.00
                           12.96       9.00    -669.04       4.35     632.41      -3.69      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01      -0.00    1552.33     -10.66     -17.88

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.98      23.61   -1679.23     -11.97     397.14      -2.89      -0.64

   31   3.1  1.0 -1.0   91000.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.78    -652.28      -2.75   -1022.35      11.40      10.93

   32   4.1  1.0 -1.0       0.00   91000.05       0.00       0.00       0.00       0.00       0.00
                           -4.78      -0.00     -10.99     900.72      -9.26     -78.47    -946.54

   33   5.1  1.0 -1.0       0.00       0.00   91000.04       0.00       0.00       0.00       0.00
                          652.28      10.99      -0.00      10.24      -2.62      -5.72     -12.63

   34   6.1  1.0 -1.0       0.00       0.00       0.00   91000.04       0.00       0.00       0.00
                            2.75    -900.72     -10.24      -0.00      10.56     946.61     -78.65

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   91863.07       0.00       0.00
                         1022.35       9.26       2.62     -10.56      -0.00     -10.34       6.17

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   91863.10       0.00
                          -11.40      78.47       5.72    -946.61      10.34      -0.00     897.93

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   91863.07
                          -10.93     946.54      12.63      78.65      -6.17    -897.93       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.20364368 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   91327.311       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   91327.198       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   91327.360       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   91327.369       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   91327.323       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   91832.453       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   91832.489
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.074       0.001      -2.599       1.349
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -5.984      -4.024       1.742    1484.052     -25.836      -3.572       4.237
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.391      -0.475       1.397   -1192.327      13.627      -4.474       0.257
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000     -24.831     -16.588    -951.511       4.956     -12.998       5.309    -898.708
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000     951.594       1.124     -24.870       2.314      10.181     898.747       5.296
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.002       5.843    -887.902      17.215     -26.716   -1683.822       4.304       6.612
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -8.881     897.331       8.186     -16.325       2.072      -3.880     949.425      13.199
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            -66.062     -16.799      72.942    -894.543      -1.928     -43.947      12.112    -945.630
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -731.793      -5.503     913.787      71.403      -5.777    -481.331     -12.615      85.205
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001      -0.042      -0.000      -0.000      29.001   -1471.503

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      21.256      16.172    1774.524       6.719       5.097       7.901    -375.695

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      12.887       3.856     689.193       0.715       5.863     -23.254     967.104

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       9.237     -11.018       8.300    -951.327      39.394      -8.130      -1.371

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.005       2.210    1014.425      -2.776     -39.072   -1610.500       4.257       2.395

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     951.833       1.944     -13.989       9.065      -5.980    -898.436     -22.407

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              734.755      -9.443     876.864      -9.516      17.817     551.898      11.484       0.221

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.048     -82.824      -8.514      -0.264     893.485     -20.080      87.020       0.815

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.461    -893.580      -7.024      11.185     -83.034      -6.857     945.315      18.713

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.015       0.000      -0.000      -0.000       0.000   -1471.505     -29.003

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     290.353      -8.740      -3.999       3.157       0.291    1025.442      20.704

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1881.504      -5.012     -18.636       7.755       4.096    -158.181      -7.309

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.005       5.784    1902.184     -13.358      20.278      72.634       4.372      -6.489

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       9.490      29.142      -3.545    -951.533      18.175       3.700       3.544

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.079      -3.675     952.026      -3.290       0.047      18.995    -898.558

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.266      -1.993      -2.410       9.522     897.156     -22.180      -1.451     -10.604

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              731.831       3.434      40.425      80.817     -24.501   -1031.089       1.694     -85.360

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -66.117      10.785       5.945     893.685      -7.282      93.833      18.654    -945.514

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.002
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000      -5.984      -0.391     -24.831     951.594       5.843
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000      -4.024      -0.475     -16.588       1.124    -887.902
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       1.742       1.397    -951.511     -24.870      17.215
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.074    1484.052   -1192.327       4.956       2.314     -26.716
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.001     -25.836      13.627     -12.998      10.181   -1683.822
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -2.599      -3.572      -4.474       5.309     898.747       4.304
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       1.349       4.237       0.257    -898.708       5.296       6.612
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           91832.474       0.000    1471.783     649.995     809.020       3.032       6.080      -3.413
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   93562.305      -0.000      -0.000      -0.000      -0.000       0.000      -0.029
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+           1471.783      -0.000   89650.408       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+            649.995      -0.000       0.000   91000.042       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            809.020      -0.000       0.000       0.000   91000.070       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              3.032      -0.000       0.000       0.000       0.000   91000.048       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              6.080       0.000       0.000       0.000       0.000       0.000   91000.043       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -3.413      -0.029       0.000       0.000       0.000       0.000       0.000   91000.039
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              1.664     -17.110       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.888    -127.277       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.101   -1409.903       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                1.400       0.000       0.000      -0.000      -0.000       0.014       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -3.330       0.000       0.000       0.000      -7.450    -274.825      -3.323      -0.325

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.503      -0.000       0.000       7.450       0.000   -1780.294     -28.791       9.848

    4    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              898.594       0.000      -0.014     274.825    1780.294       0.000       0.270     -20.580

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               12.425      -0.009      -0.000       3.323      28.791      -0.270       0.000     900.644

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -8.094      -0.000      -0.000       0.325      -9.848      20.580    -900.644       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -5.493    1415.625      -9.014       6.842      -5.364      -6.775      -6.895    -949.855

    8    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                             -945.523      -9.725   -1546.148    1079.840    -166.337       5.714     -83.107       7.450

    9    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               87.088     -16.302     139.685     -95.068      18.322      12.723    -946.168       6.154

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.572       0.000       0.000      -0.000       0.000       0.000      -0.012       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.144      -0.000       0.000      -0.000      -3.984     -23.612    1679.231      11.970

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.782      -0.000      -0.000       3.984      -0.000      -4.776     652.278       2.750

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.411       0.022      -0.000      23.612       4.776       0.000      10.994    -900.717

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -898.712       0.000       0.012   -1679.231    -652.278     -10.994       0.000     -10.243

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.572       0.000      -0.000     -11.970      -2.750     900.717      10.243       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              949.552       8.220    1552.330     397.136   -1022.346      -9.255      -2.615      10.557

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.443    1409.962     -10.665      -2.894      11.397     -78.472      -5.716     946.612

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -10.035    -127.382     -17.876      -0.643      10.927    -946.542     -12.634     -78.653

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -8.881     -66.062    -731.793       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.005

    2    1  |0 0>             897.331     -16.799      -5.503       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -21.256     -12.887      -9.237      -2.210

    3    1  |0 0>               8.186      72.942     913.787       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001     -16.172      -3.856      11.018   -1014.425

    4    1  |0 0>             -16.325    -894.543      71.403       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.042   -1774.524    -689.193      -8.300       2.776

    5    1  |0 0>               2.072      -1.928      -5.777       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -6.719      -0.715     951.327      39.072

    6    1  |0 0>              -3.880     -43.947    -481.331       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.097      -5.863     -39.394    1610.500

    7    1  |0 0>             949.425      12.112     -12.615       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -29.001      -7.901      23.254       8.130      -4.257

    8    1  |0 0>              13.199    -945.630      85.205       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1471.503     375.695    -967.104       1.371      -2.395

    9    1  |0 0>               1.664       0.888      -0.101       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.400       3.330       0.503    -898.594     -12.425

   10    1  |0 0>             -17.110    -127.277   -1409.903       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.009

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.014       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -7.450    -274.825      -3.323

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       7.450       0.000   -1780.294     -28.791

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.014     274.825    1780.294       0.000       0.270

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       3.323      28.791      -0.270       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.325      -9.848      20.580    -900.644

    7    1  |1 1>+          91863.071       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -9.014       6.842      -5.364      -6.775      -6.895

    8    1  |1 1>+              0.000   91863.098       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000   -1546.148    1079.840    -166.337       5.714     -83.107

    9    1  |1 1>+              0.000       0.000   91863.068      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     139.685     -95.068      18.322      12.723    -946.168

    1    1  |1 0>               0.000       0.000      -0.000   89650.408       0.000       0.000       0.000       0.000
                                9.014    1546.148    -139.685       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000   91000.042       0.000       0.000       0.000
                               -6.842   -1079.840      95.068      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000   91000.070       0.000       0.000
                                5.364     166.337     -18.322      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000   91000.048       0.000
                                6.775      -5.714     -12.723      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000   91000.043
                                6.895      83.107     946.168      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              949.855      -7.450      -6.154      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -80.800    -894.356      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               80.800       0.000       5.214      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              894.356      -5.214       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                            -1552.330      10.665      17.876      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -5.923      -7.887       3.095
                             -397.136       2.894       0.643       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       5.923       0.000      11.352      -4.962
                             1022.346     -11.397     -10.927      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       7.887     -11.352       0.000     900.828
                                9.255      78.472     946.542      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000      -3.095       4.962    -900.828       0.000
                                2.615       5.716      12.634      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.002    1404.574   -1128.248       1.952      -6.677
                              -10.557    -946.612      78.653       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000      18.762      12.186       9.867    -949.777      -7.554
                                0.000      10.340      -6.169       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000     139.569      59.254      73.667      -6.316     946.472
                              -10.340       0.000    -897.933       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000    1546.065     684.277     851.913      14.429     -80.576
                                6.169     897.933      -0.000      -0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -734.755       5.048       8.461      -0.000       0.000       0.000      -0.005

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -951.833       9.443      82.824     893.580      -0.015    -290.353   -1881.504      -5.784

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.944    -876.864       8.514       7.024      -0.000       8.740       5.012   -1902.184

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               13.989       9.516       0.264     -11.185       0.000       3.999      18.636      13.358

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.065     -17.817    -893.485      83.034       0.000      -3.157      -7.755     -20.278

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.980    -551.898      20.080       6.857      -0.000      -0.291      -4.096     -72.634

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              898.436     -11.484     -87.020    -945.315    1471.505   -1025.442     158.181      -4.372

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.407      -0.221      -0.815     -18.713      29.003     -20.704       7.309       6.489

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.094       5.493     945.523     -87.088       2.572      -4.144      -2.782     -12.411

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1415.625       9.725      16.302      -0.000       0.000       0.000      -0.022

    1    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       9.014    1546.148    -139.685       0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.325      -6.842   -1079.840      95.068       0.000      -0.000      -3.984     -23.612

    3    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                9.848       5.364     166.337     -18.322      -0.000       3.984      -0.000      -4.776

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -20.580       6.775      -5.714     -12.723      -0.000      23.612       4.776       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              900.644       6.895      83.107     946.168       0.012   -1679.231    -652.278     -10.994

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     949.855      -7.450      -6.154      -0.000     -11.970      -2.750     900.717

    7    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -949.855       0.000     -80.800    -894.356    1552.330     397.136   -1022.346      -9.255

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                7.450      80.800       0.000       5.214     -10.665      -2.894      11.397     -78.472

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.154     894.356      -5.214       0.000     -17.876      -0.643      10.927    -946.542

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       5.923       7.887
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -5.923       0.000     -11.352
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -7.887      11.352       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       3.095      -4.962     900.828
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>           91000.039       0.000       0.000       0.000       0.002   -1404.574    1128.248      -1.952
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000   91863.071       0.000       0.000     -18.762     -12.186      -9.867     949.777
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000   91863.098       0.000    -139.569     -59.254     -73.667       6.316
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000   91863.068   -1546.065    -684.277    -851.913     -14.429
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.002     -18.762    -139.569   -1546.065   89650.408       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          -1404.574     -12.186     -59.254    -684.277       0.000   91000.042       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-           1128.248      -9.867     -73.667    -851.913       0.000       0.000   91000.070       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -1.952     949.777       6.316     -14.429       0.000       0.000       0.000   91000.048
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              6.677       7.554    -946.472      80.576       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -6.883      -4.289       4.095       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              6.883       0.000    -894.297      80.731       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              4.289     894.297       0.000     -10.853       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -4.095     -80.731      10.853       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -4.266    -731.831      66.117

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -9.490      -3.079       1.993      -3.434     -10.785

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -29.142       3.675       2.410     -40.425      -5.945

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                3.545    -952.026      -9.522     -80.817    -893.685

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              951.533       3.290    -897.156      24.501       7.282

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -18.175      -0.047      22.180    1031.089     -93.833

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -3.700     -18.995       1.451      -1.694     -18.654

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -3.544     898.558      10.604      85.360     945.514

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              898.712       3.572    -949.552       6.443      10.035

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -8.220   -1409.962     127.382

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.012       0.000   -1552.330      10.665      17.876

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             1679.231      11.970    -397.136       2.894       0.643

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              652.278       2.750    1022.346     -11.397     -10.927

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               10.994    -900.717       9.255      78.472     946.542

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000     -10.243       2.615       5.716      12.634

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               10.243       0.000     -10.557    -946.612      78.653

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -2.615      10.557       0.000      10.340      -6.169

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -5.716     946.612     -10.340       0.000    -897.933

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -12.634     -78.653       6.169     897.933      -0.000

    1    1  |1 0>              -0.000      -0.002      18.762     139.569    1546.065
                                0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>              -3.095    1404.574      12.186      59.254     684.277
                               -0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 0>               4.962   -1128.248       9.867      73.667     851.913
                                0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>            -900.828       1.952    -949.777      -6.316      14.429
                               -0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000      -6.677      -7.554     946.472     -80.576
                               -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 0>               6.677       0.000       6.883       4.289      -4.095
                                0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               7.554      -6.883       0.000     894.297     -80.731
                               -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>            -946.472      -4.289    -894.297       0.000      10.853
                               -0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>              80.576       4.095      80.731     -10.853       0.000
                                0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          91000.043       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   91000.039       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   91863.071       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   91863.098       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   91863.068
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2789.20372252    -0.00007884      -17.30      0.00000000        0.00      0.0000
    2 -2788.80110707     0.40253661    88346.57      0.40261546    88363.88     10.9557
    3 -2788.80110705     0.40253663    88346.58      0.40261547    88363.88     10.9557
    4 -2788.80110704     0.40253664    88346.58      0.40261548    88363.88     10.9557
    5 -2788.79722603     0.40641765    89198.36      0.40649649    89215.67     11.0613
    6 -2788.79722603     0.40641765    89198.36      0.40649649    89215.67     11.0613
    7 -2788.79722603     0.40641765    89198.36      0.40649650    89215.67     11.0613
    8 -2788.79722602     0.40641766    89198.37      0.40649650    89215.67     11.0613
    9 -2788.79722599     0.40641769    89198.37      0.40649653    89215.68     11.0613
   10 -2788.79722596     0.40641772    89198.38      0.40649657    89215.68     11.0613
   11 -2788.79722595     0.40641773    89198.38      0.40649658    89215.69     11.0613
   12 -2788.79703273     0.40661095    89240.79      0.40668979    89258.09     11.0666
   13 -2788.79703248     0.40661120    89240.84      0.40669005    89258.15     11.0666
   14 -2788.79703246     0.40661122    89240.85      0.40669006    89258.15     11.0666
   15 -2788.79703239     0.40661129    89240.86      0.40669014    89258.17     11.0666
   16 -2788.79703237     0.40661131    89240.87      0.40669015    89258.17     11.0666
   17 -2788.79446603     0.40917765    89804.11      0.40925650    89821.42     11.1364
   18 -2788.79446594     0.40917774    89804.13      0.40925658    89821.44     11.1364
   19 -2788.79446592     0.40917776    89804.14      0.40925660    89821.44     11.1364
   20 -2788.79389782     0.40974586    89928.82      0.40982470    89946.13     11.1519
   21 -2788.79389771     0.40974597    89928.84      0.40982481    89946.15     11.1519
   22 -2788.79389766     0.40974602    89928.86      0.40982486    89946.16     11.1519
   23 -2788.79389763     0.40974605    89928.86      0.40982489    89946.17     11.1519
   24 -2788.79389762     0.40974606    89928.86      0.40982490    89946.17     11.1519
   25 -2788.78825725     0.41538643    91166.78      0.41546527    91184.09     11.3054
   26 -2788.77185524     0.43178844    94766.61      0.43186728    94783.91     11.7517
   27 -2788.77185518     0.43178850    94766.62      0.43186734    94783.93     11.7517
   28 -2788.77185516     0.43178852    94766.63      0.43186736    94783.93     11.7517
   29 -2788.77068460     0.43295908    95023.53      0.43303792    95040.84     11.7836
   30 -2788.77068439     0.43295929    95023.58      0.43303813    95040.88     11.7836
   31 -2788.77068439     0.43295929    95023.58      0.43303814    95040.89     11.7836
   32 -2788.77068434     0.43295934    95023.59      0.43303819    95040.90     11.7836
   33 -2788.77068429     0.43295939    95023.60      0.43303824    95040.91     11.7836
   34 -2788.77065879     0.43298489    95029.20      0.43306374    95046.50     11.7843
   35 -2788.77065873     0.43298495    95029.21      0.43306379    95046.52     11.7843
   36 -2788.77065872     0.43298496    95029.22      0.43306381    95046.52     11.7843
   37 -2788.76590779     0.43773589    96071.92      0.43781473    96089.23     11.9135

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99990752  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000304 -0.00000019  0.00000009 -0.00001714 -0.00001339  0.00000031 -0.00000063
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000008 -0.00000013  0.00000009  0.00000115  0.00000115  0.00000029  0.00000295
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000004 -0.00000014  0.00000916 -0.00000645  0.00000975  0.00000027 -0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000068  0.00001609  0.00000018  0.00000023  0.00000036 -0.00002242  0.00000063
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000001 -0.00000016 -0.00000026  0.00000007  0.00000040  0.00000019 -0.00000048  0.00002740
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.22054483  0.01095606 -0.00219061  0.00000089  0.00000068 -0.00000003  0.00000009
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00226027 -0.00134922  0.22080801 -0.00000114  0.00000141 -0.00000013  0.00000003
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.01094160 -0.22054963 -0.00145964 -0.00000004  0.00000006  0.00000057 -0.00000006
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00035623 -0.00000002 -0.00000000  0.00000000  0.00000004  0.00000002  0.00000000  0.00000020
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.04283481  0.89518459  0.00508674  0.00000013 -0.00000014  0.00000094  0.00000011
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00035527 -0.00804028 -0.00000021  0.01246103 -0.02526553  0.64789531  0.00462970
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000001  0.00000000

   3    1  |1 1>+          0.00000000  0.00044101 -0.01000660 -0.00006243  0.00382801 -0.00094602  0.05817257  0.00567244
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00004636  0.00003373 -0.01113056  0.23028197 -0.29201390 -0.01697483 -0.00064452
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000004  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.01111950  0.00047655 -0.00004534 -0.41463075 -0.32095163 -0.00439376  0.01051926
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000002  0.00005181  0.00004425  0.00008147  0.00887639  0.00251076 -0.00394879  0.57725918
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00009486  0.27133598  0.01297745  0.00107812 -0.00000180 -0.00000145  0.00000006 -0.00000044
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00070563  0.00070432  0.00157115 -0.27056123 -0.00000041  0.00000030  0.00000026  0.00000007
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00781657 -0.00335638 -0.00029933  0.02441179  0.00000033  0.00000026  0.00000015  0.00000019
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00850746 -0.00549940  0.89616599  0.00000072 -0.00000085 -0.00000018  0.00000003

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000006 -0.00000001 -0.00000000
                          -0.00000000  0.00004809  0.00007437 -0.00465173  0.36188379 -0.48228701 -0.02768593 -0.00490503

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00000000 -0.00016521 -0.00008120  0.01197495 -0.04011823  0.05917518 -0.00016975  0.00187502

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00045030 -0.01111151 -0.00008946  0.00652469 -0.00977968  0.20799073  0.00672829

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000005  0.00006046 -0.00015110  0.00002798 -0.01310304 -0.00417390  0.00692092 -0.57711590

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.01111609 -0.00045001 -0.00016649  0.29083200  0.21365043  0.00172145 -0.00582512

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00784821  0.00320395  0.00173221  0.00004101  0.00000029  0.00000021 -0.00000009  0.00000367

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00005392  0.01146266  0.27141205  0.00177439  0.00000072  0.00000010 -0.00000155  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00009038  0.27139509 -0.01150004  0.00250585  0.00000468  0.00000365  0.00000007  0.00000028

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.89515811  0.04278383  0.00876045  0.00000060  0.00000059 -0.00000002  0.00000002

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                           0.00000000  0.01268330  0.00057691  0.00013000  0.61607186  0.46201495  0.00626760 -0.01714961

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00195485 -0.00013109 -0.00007131 -0.03268847 -0.01666466 -0.00215946 -0.00266819

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000005  0.00006083 -0.00015027 -0.00008197  0.01182242  0.00834848 -0.01393107  0.57702423

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000001 -0.00000000
                          -0.00000000 -0.00050499  0.01111118  0.00011707  0.01737274 -0.03233134  0.72872531  0.01301860

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000007  0.00000001  0.00000000
                          -0.00000000  0.00011868  0.00012396 -0.01112468 -0.41997775  0.56067800  0.03418221  0.00315407

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00004557  0.01301431 -0.27131093 -0.00482488  0.00000001  0.00000008 -0.00000605 -0.00000005

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00781697  0.00014269  0.00201390 -0.02441103 -0.00000027  0.00000055  0.00000030 -0.00000497

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00070622  0.00241868  0.00478464 -0.27051603 -0.00000341  0.00000468  0.00000008  0.00000039

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000008 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00010256  0.00000046  0.00000037 -0.00082492  0.68723551 -0.00873843 -0.00333105 -0.00024398
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000103  0.00000090  0.00000067  0.68682396  0.00049052 -0.02618209 -0.00017043 -0.00035700
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000198 -0.00000150  0.00004447  0.00012983  0.00331649 -0.00086538  0.68720581 -0.01001761
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   5    1  |0 0>          -0.00000033 -0.00007762 -0.00000142  0.00041221  0.00031047  0.00138383  0.01001781  0.68721046
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000217  0.00000230 -0.00000014  0.02617083  0.00876691  0.68673907  0.00079684 -0.00141417
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000015  0.00000000 -0.00000017  0.00000012  0.00000696  0.00000020  0.00000008  0.00000010
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000004 -0.00000012  0.00000941 -0.00000028 -0.00000002  0.00000032 -0.00001027 -0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000010  0.00000348  0.00000010 -0.00000012  0.00000013 -0.00000022  0.00000014  0.00002067
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000002  0.00000000  0.00000183  0.00000002  0.00000192  0.00000006  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000007  0.00000162 -0.00000002  0.00000006 -0.00000009  0.00000009  0.00000002 -0.00000379
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00061464  0.13178527  0.00084452  0.00124419  0.00170737  0.00684824 -0.00708169 -0.44964433
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00036689  0.70136007  0.00263102  0.00020219  0.00022672 -0.00340727  0.00484026  0.36136170
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00524414 -0.00182185  0.62826934  0.00521680  0.00896679  0.00328246  0.28820587 -0.00571675
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.50818458  0.00266623  0.00695448 -0.00010868 -0.28827544  0.00058641  0.00891783 -0.00070136
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00118301 -0.00535119 -0.00396331  0.28828919  0.00490898  0.49960755 -0.00456425  0.00698070
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00002358  0.00000007 -0.00000009  0.00092172  0.11897086 -0.00206522 -0.00273833  0.00026469
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000008  0.00000029 -0.00000687  0.00942160 -0.00286752 -0.00601474 -0.11861988  0.00148121
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000006 -0.00000005  0.00000070  0.11863203 -0.00141203 -0.06840201  0.00935655 -0.00083560
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000006 -0.00000002  0.00000165 -0.00000009 -0.00000007  0.00000019 -0.00000092 -0.00000004

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00372862  0.00287833 -0.06270457 -0.00505050 -0.00906021 -0.00060164 -0.53765576  0.00580917

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00764953 -0.00252462  0.74822279 -0.00127089 -0.00493536 -0.00141827 -0.20885127  0.00283498

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00340453 -0.69991643 -0.00176958  0.00305832 -0.00282958 -0.01143356  0.00168366  0.28822634

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00060051 -0.00749372  0.00177529 -0.28857158  0.00534458  0.49939474  0.00165886  0.01098200

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.63486482  0.00326806 -0.00802307 -0.00017387 -0.28824889  0.00549012  0.00559654 -0.00270888

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000050  0.00000014  0.00000004  0.11896448 -0.00024030  0.06872558 -0.00116524  0.00217063

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000181 -0.00001111 -0.00000025 -0.00114509 -0.01096330 -0.00223916  0.00174256  0.11848126

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002006  0.00000090 -0.00000005 -0.00082907 -0.11849434  0.00060937  0.00189622 -0.01098740

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000062 -0.00000004 -0.00000001  0.00000003  0.00000136  0.00000019 -0.00000004  0.00000010

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.02128516 -0.00143409 -0.00202144  0.00274649 -0.08794502  0.00092621  0.00162269 -0.00094453

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.58142987  0.00107965  0.00439826  0.00215361 -0.57016952  0.00593843  0.00837554 -0.00222819

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00322919 -0.00255618  0.00205011 -0.57682428 -0.00242760 -0.00005531  0.00408342 -0.00585925

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00142174  0.02670776  0.00252688 -0.00885764 -0.00281729 -0.00455101  0.00528760  0.28835015

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00742267 -0.00025182  0.20330285  0.00105877 -0.00232268  0.00032054 -0.28847041  0.00520340

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00002153 -0.00000025 -0.00035945 -0.00024213 -0.00268549  0.00299530  0.11897246

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000045 -0.00000004  0.00000092  0.00015416 -0.00123472 -0.13684867  0.01050792 -0.00312686

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000010 -0.00000006  0.00000981  0.00128126  0.00216105  0.01223363  0.11850875 -0.00271995

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00001594 -0.00000168 -0.00000043  0.00036995  0.43453453  0.00125687  0.00396731  0.02232017
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000023  0.00000035  0.00000245 -0.43483934  0.00041348 -0.01267247 -0.00803318  0.00130011
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000021  0.00000060  0.00000831 -0.00910002 -0.00424349  0.03776654  0.43336873  0.00360858
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000260 -0.00003243  0.00000072 -0.00128879  0.02229190 -0.00216725  0.00399855 -0.43454833
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000007  0.00000016 -0.00000335 -0.01193586 -0.00076706  0.43329836 -0.03799752 -0.00251462
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.73333342 -0.01461296 -0.00018122 -0.00000027  0.00001787 -0.00000017  0.00000048 -0.00000222
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00025785  0.00384585  0.73346849  0.00000375  0.00000066  0.00000516 -0.00000323  0.00000067
                           0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.01461181  0.73332364 -0.00385024  0.00000037  0.00000488 -0.00000019 -0.00000040 -0.00003146
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000001 -0.00000002 -0.00000002  0.00000048 -0.00000002  0.00000221 -0.00000080 -0.00000011
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00075979 -0.04182803  0.00018119 -0.00000004 -0.00000019  0.00000014 -0.00000003  0.00000588
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00265432 -0.18390793 -0.00023366  0.00002708  0.00645850 -0.00303001  0.00162675 -0.13662769
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00329466 -0.22891708  0.00112878  0.00033210 -0.00567106  0.00181066 -0.00099082  0.10975435
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00142945  0.00050551  0.25430690  0.00339336 -0.00140634 -0.00876745 -0.08723099 -0.00129857
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.25430158  0.00333841 -0.00142678 -0.00000705  0.08763064  0.00098499 -0.00156542  0.00426377
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00119953  0.00098010 -0.00187507  0.08605047  0.00059185 -0.15203923  0.01662962  0.00315251
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.34962559  0.00633106 -0.00477126  0.00480529 -0.61748113  0.00202375  0.00542079 -0.03021985
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00434486  0.00158844  0.34829684  0.03650645  0.00551430  0.08511768  0.61207327  0.00405249
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00463544 -0.00022069 -0.03138970  0.62099630  0.00328658  0.34422894 -0.06624566 -0.00798504
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00081024  0.00019593  0.04183099  0.00000006  0.00000000 -0.00000068 -0.00000467  0.00000001

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00217923  0.00154423  0.10629863 -0.00492344  0.00039398  0.01462501  0.16286786  0.00084031

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00648573 -0.00142388 -0.27367453 -0.00169910  0.00056956  0.00604214  0.06322349  0.00051971

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00276502 -0.25426589  0.00172206  0.00116000 -0.00365785  0.00415131 -0.00033427  0.08759723

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00127473 -0.00349464 -0.00065782 -0.08938713  0.00037238 -0.15056969  0.01095187  0.00474246

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.25422823 -0.00274218  0.00626579 -0.00006454  0.08768432 -0.00041698 -0.00043156  0.00365859

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00418867  0.00210672 -0.00009136  0.61399558  0.00589878 -0.36032692  0.05082549  0.01303643

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02510584  0.34884602 -0.00212123 -0.00437306  0.02542732  0.01684776 -0.00627054  0.61744081

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.34876929 -0.02517399 -0.00663849 -0.00444931  0.61767870  0.00538712 -0.00203781 -0.02561644

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.04182043 -0.00075573  0.00081378 -0.00000001  0.00000045 -0.00000002 -0.00000000  0.00000020

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.29013781  0.00457792 -0.00578071  0.00083423  0.02674293  0.00009392 -0.00010799  0.00107792

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04473939 -0.00166857  0.00206112  0.00063279  0.17327200  0.00073786 -0.00014728  0.00816585

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00130610 -0.00347668  0.00185550 -0.17544667  0.00079500  0.00144547 -0.00502746 -0.00136418

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00401921  0.25426154 -0.00233726 -0.00246391 -0.00361563  0.00200122 -0.00131983  0.08763360

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00526422  0.00245057  0.25424759 -0.00149451 -0.00058821  0.00763569  0.08741396  0.00104465

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00642858 -0.34963048  0.00574053 -0.00010975 -0.03025214  0.01767848 -0.01356356  0.61710774

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00056515  0.00254885  0.03142177  0.00947499 -0.00223302  0.70312772 -0.11681575 -0.02162440

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00667272  0.00565730  0.34822963  0.01871907 -0.00104877 -0.11771570 -0.60740416 -0.01013408

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00975528  0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000014 -0.00000002 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000003 -0.00000941  0.00000007  0.00000005  0.00213264 -0.06229879  0.57824042  0.00244996
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000216 -0.00000044  0.00000026  0.00000016  0.58078866  0.03075784  0.00120200 -0.00282271
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000050  0.00000020 -0.00000003  0.00001267  0.00239790  0.00800706 -0.00158816  0.58155786
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000015 -0.00000009 -0.00002797  0.00000035 -0.00196541 -0.00008055  0.00547445 -0.00232113
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000527 -0.00000017  0.00000035 -0.00000009 -0.03074260  0.57740196  0.06234820 -0.00765018
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000003  0.47719821 -0.00455603 -0.00788147 -0.00000244 -0.00001280 -0.00013207 -0.00000831
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000003  0.00794867  0.00704882  0.47715933  0.00004083 -0.00006359 -0.00001728  0.00006459
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000002  0.00443785  0.47719969 -0.00712335 -0.00000236 -0.00001273 -0.00004112  0.00001700
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.71528163 -0.00000023  0.00000002 -0.00000001  0.00000095  0.00000511  0.00000054 -0.00000072
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000001  0.00066834  0.08856602 -0.00123850 -0.00000197 -0.00001235 -0.00004135  0.00001721
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000005  0.00134365  0.34333433 -0.00285488 -0.00222095 -0.00734204  0.00152094 -0.00111504
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000008  0.00161381  0.42738646 -0.00620430  0.00082086  0.00397170 -0.00292765  0.00172461
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000014 -0.00508766 -0.00543689 -0.47473332 -0.00574623 -0.00701704 -0.00678909 -0.27500121
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000002  0.47477017 -0.00127912 -0.00509179  0.00114680 -0.02662644  0.27390270 -0.00607187
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000652  0.00231548 -0.00177281  0.00348141 -0.23055939 -0.49697308 -0.05112252  0.01266344
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00487574 -0.08025906  0.00060853  0.00021209  0.00415552 -0.03579370  0.31964430 -0.00450644
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.03626969  0.00030660  0.00111513  0.07994365  0.02556178 -0.01795450 -0.00673616 -0.32081516
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.40176866  0.00094625 -0.00010805 -0.00721932  0.33648734 -0.15348330 -0.01987876  0.02629360
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00027088 -0.00124066 -0.08857293 -0.00004141  0.00006340  0.00001462 -0.00008333

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000030  0.00085185 -0.00472993 -0.19844027  0.00672614  0.00810842  0.00489325  0.51296920

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000013 -0.00377679  0.00739679  0.51099812  0.00184785  0.00410115  0.00334942  0.19919254

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00010851  0.47470024 -0.00773831 -0.00283362  0.01092589  0.00128323  0.00337010

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000329  0.00233051  0.00656075  0.00113013  0.31752110 -0.44681008 -0.04877554  0.00394605

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.47478572  0.00007998 -0.00393281  0.00163528 -0.03122148  0.27340220 -0.00287655

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.40340152 -0.00096678  0.00047333 -0.00000960  0.30351996  0.21344035  0.01856836 -0.00758238

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00277144 -0.00661141  0.07998890 -0.00114001 -0.00385831 -0.00416046 -0.02725731 -0.00141109

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00464536 -0.07998255 -0.00662201 -0.00015203 -0.00344609  0.03179252 -0.31934764  0.00281786

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.08858923  0.00066516 -0.00028041  0.00000206  0.00001324  0.00014297  0.00000689

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000006  0.54182473 -0.00282072  0.00195645 -0.00222678 -0.00905484  0.08351768 -0.00079347

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.08361587  0.00221005 -0.00250211  0.00045505 -0.05724216  0.54096434 -0.00311360

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000452  0.00231222  0.00648264 -0.00356290  0.54803550  0.04969735  0.00511606 -0.00682296

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000004 -0.00242954 -0.47466563  0.00892458  0.00907081  0.00538969  0.00071243 -0.00002171

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000019  0.00210999 -0.00899222 -0.47469747  0.00008918  0.00363696  0.00012040  0.27525200

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00234227 -0.00060937 -0.08024927  0.00209165 -0.00152164 -0.00787828  0.00140213  0.00225671

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.40178921 -0.00001789  0.00065244  0.00720856  0.03417260 -0.36605678 -0.03854510  0.03380522

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.03629870 -0.00023761  0.00204307  0.07992339  0.00164290  0.03759831  0.00657650  0.31994578

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00947514
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00543453  0.00018855 -0.00003563 -0.00001310 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00194436  0.00000541 -0.00000448  0.00005020 -0.00000020
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00234516  0.00000923  0.00002256  0.00009996  0.00000035
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.58159124  0.00007634 -0.00033764  0.00001726 -0.00000011
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00064134  0.00003795 -0.00001987 -0.00009160 -0.00000221
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00003573  0.42929772  0.03384304  0.00086897  0.00000009
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00001225  0.00100791 -0.00173503 -0.43063684  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

   9    1  |0 0>          -0.00023136  0.03384090 -0.42930829  0.00180885 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000020  0.00000005  0.00000001  0.00000003  0.69883622
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00026839  0.03323777 -0.43137095  0.00141880 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.42911472 -0.00516474  0.07095768  0.00018079 -0.00000006
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.34463081 -0.00654130  0.08887182 -0.00035471 -0.00000005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00038192 -0.00038329 -0.00012218 -0.09880126 -0.00000020
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00192451 -0.09841590 -0.00711101  0.00037213  0.00000016
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00804088 -0.00047853 -0.00038488  0.00078223 -0.00000452
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00232159  0.54378865  0.04184992 -0.00648413 -0.00499060
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00184029  0.00569581  0.00221435  0.54307143 -0.03712340
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   9    1  |1 1>+         -0.00066230 -0.00712155 -0.00070329 -0.04889070 -0.41122830
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00001334  0.00751843  0.00200209  0.43258067 -0.00000001

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00396852 -0.00072933 -0.00058083 -0.04117797  0.00000036

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00097402  0.00230759  0.00058075  0.10631041  0.00000011

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.27498606 -0.00690323  0.09867408 -0.00057307  0.00000002

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00980994 -0.00060322  0.00134577  0.00035478 -0.00000039

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00002818  0.09859217  0.00684464 -0.00226613 -0.00000017

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00724190  0.00634303  0.00365001 -0.00013124  0.41289688

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.32100836  0.00718352  0.54510753 -0.00263682 -0.00283668

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02684637  0.54509225 -0.00720013 -0.00943509 -0.00475475

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003584 -0.43130583 -0.03320742  0.00764990  0.00000004

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00012438 -0.11235148 -0.00839919  0.00204377  0.00000009

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00286983  0.01748952  0.00163320 -0.00078282 -0.00000004

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00764762 -0.00057646  0.00131013 -0.00067589  0.00000497

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.27517187  0.00731750 -0.09829969  0.00079426  0.00000011

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00014954 -0.00181403 -0.00094120 -0.09868025  0.00000017

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.32143274  0.04204983 -0.54386813  0.00838956  0.00239741

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00822403  0.00053996  0.00398095  0.04907384  0.41124904

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00139799  0.00896395  0.00878677  0.54306387 -0.03715360


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2789.20372252     -0.00007884      -17.30      0.00000000        0.00      0.0000
     2   1  -2788.80110707      0.40253661    88346.57      0.40261546    88363.88     10.9557
     3   1  -2788.80110705      0.40253663    88346.58      0.40261547    88363.88     10.9557
     4   1  -2788.80110704      0.40253664    88346.58      0.40261548    88363.88     10.9557
     5   1  -2788.79722603      0.40641765    89198.36      0.40649649    89215.67     11.0613
     6   1  -2788.79722603      0.40641765    89198.36      0.40649649    89215.67     11.0613
     7   1  -2788.79722603      0.40641765    89198.36      0.40649650    89215.67     11.0613
     8   1  -2788.79722602      0.40641766    89198.37      0.40649650    89215.67     11.0613
     9   1  -2788.79722599      0.40641769    89198.37      0.40649653    89215.68     11.0613
    10   1  -2788.79722596      0.40641772    89198.38      0.40649657    89215.68     11.0613
    11   1  -2788.79722595      0.40641773    89198.38      0.40649658    89215.69     11.0613
    12   1  -2788.79703273      0.40661095    89240.79      0.40668979    89258.09     11.0666
    13   1  -2788.79703248      0.40661120    89240.84      0.40669005    89258.15     11.0666
    14   1  -2788.79703246      0.40661122    89240.85      0.40669006    89258.15     11.0666
    15   1  -2788.79703239      0.40661129    89240.86      0.40669014    89258.17     11.0666
    16   1  -2788.79703237      0.40661131    89240.87      0.40669015    89258.17     11.0666
    17   1  -2788.79446603      0.40917765    89804.11      0.40925650    89821.42     11.1364
    18   1  -2788.79446594      0.40917774    89804.13      0.40925658    89821.44     11.1364
    19   1  -2788.79446592      0.40917776    89804.14      0.40925660    89821.44     11.1364
    20   1  -2788.79389782      0.40974586    89928.82      0.40982470    89946.13     11.1519
    21   1  -2788.79389771      0.40974597    89928.84      0.40982481    89946.15     11.1519
    22   1  -2788.79389766      0.40974602    89928.86      0.40982486    89946.16     11.1519
    23   1  -2788.79389763      0.40974605    89928.86      0.40982489    89946.17     11.1519
    24   1  -2788.79389762      0.40974606    89928.86      0.40982490    89946.17     11.1519
    25   1  -2788.78825725      0.41538643    91166.78      0.41546527    91184.09     11.3054
    26   1  -2788.77185524      0.43178844    94766.61      0.43186728    94783.91     11.7517
    27   1  -2788.77185518      0.43178850    94766.62      0.43186734    94783.93     11.7517
    28   1  -2788.77185516      0.43178852    94766.63      0.43186736    94783.93     11.7517
    29   1  -2788.77068460      0.43295908    95023.53      0.43303792    95040.84     11.7836
    30   1  -2788.77068439      0.43295929    95023.58      0.43303813    95040.88     11.7836
    31   1  -2788.77068439      0.43295929    95023.58      0.43303814    95040.89     11.7836
    32   1  -2788.77068434      0.43295934    95023.59      0.43303819    95040.90     11.7836
    33   1  -2788.77068429      0.43295939    95023.60      0.43303824    95040.91     11.7836
    34   1  -2788.77065879      0.43298489    95029.20      0.43306374    95046.50     11.7843
    35   1  -2788.77065873      0.43298495    95029.21      0.43306379    95046.52     11.7843
    36   1  -2788.77065872      0.43298496    95029.22      0.43306381    95046.52     11.7843
    37   1  -2788.76590779      0.43773589    96071.92      0.43781473    96089.23     11.9135

 E0 =  -2789.20364368 is the energy of the lowest zeroth-order state
 E1 =  -2789.20372252 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99990752  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000304 -0.00000019  0.00000009 -0.00001714 -0.00001339  0.00000031 -0.00000063
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000008 -0.00000013  0.00000009  0.00000115  0.00000115  0.00000029  0.00000295
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000004 -0.00000014  0.00000916 -0.00000645  0.00000975  0.00000027 -0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000068  0.00001609  0.00000018  0.00000023  0.00000036 -0.00002242  0.00000063
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000001 -0.00000016 -0.00000026  0.00000007  0.00000040  0.00000019 -0.00000048  0.00002740
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.22054483  0.01095606 -0.00219061  0.00000089  0.00000068 -0.00000003  0.00000009
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00226027 -0.00134922  0.22080801 -0.00000114  0.00000141 -0.00000013  0.00000003
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.01094160 -0.22054963 -0.00145964 -0.00000004  0.00000006  0.00000057 -0.00000006
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00035623 -0.00000002 -0.00000000  0.00000000  0.00000004  0.00000002  0.00000000  0.00000020
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.04283481  0.89518459  0.00508674  0.00000013 -0.00000014  0.00000094  0.00000011
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.00000000  0.00035527 -0.00804028 -0.00000021  0.01246103 -0.02526553  0.64789531  0.00462970
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000001  0.00000000

 13  1     3    1  |1 1>+       0.00000000  0.00044101 -0.01000660 -0.00006243  0.00382801 -0.00094602  0.05817257  0.00567244
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000000 -0.00004636  0.00003373 -0.01113056  0.23028197 -0.29201390 -0.01697483 -0.00064452
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000004  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00000000  0.01111950  0.00047655 -0.00004534 -0.41463075 -0.32095163 -0.00439376  0.01051926
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00000002  0.00005181  0.00004425  0.00008147  0.00887639  0.00251076 -0.00394879  0.57725918
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00009486  0.27133598  0.01297745  0.00107812 -0.00000180 -0.00000145  0.00000006 -0.00000044
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00070563  0.00070432  0.00157115 -0.27056123 -0.00000041  0.00000030  0.00000026  0.00000007
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00781657 -0.00335638 -0.00029933  0.02441179  0.00000033  0.00000026  0.00000015  0.00000019
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00850746 -0.00549940  0.89616599  0.00000072 -0.00000085 -0.00000018  0.00000003

 21  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000006 -0.00000001 -0.00000000
                               -0.00000000  0.00004809  0.00007437 -0.00465173  0.36188379 -0.48228701 -0.02768593 -0.00490503

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00000000 -0.00016521 -0.00008120  0.01197495 -0.04011823  0.05917518 -0.00016975  0.00187502

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00045030 -0.01111151 -0.00008946  0.00652469 -0.00977968  0.20799073  0.00672829

 24  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000005  0.00006046 -0.00015110  0.00002798 -0.01310304 -0.00417390  0.00692092 -0.57711590

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.01111609 -0.00045001 -0.00016649  0.29083200  0.21365043  0.00172145 -0.00582512

 26  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00784821  0.00320395  0.00173221  0.00004101  0.00000029  0.00000021 -0.00000009  0.00000367

 27  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00005392  0.01146266  0.27141205  0.00177439  0.00000072  0.00000010 -0.00000155  0.00000000

 28  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00009038  0.27139509 -0.01150004  0.00250585  0.00000468  0.00000365  0.00000007  0.00000028

 29  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.89515811  0.04278383  0.00876045  0.00000060  0.00000059 -0.00000002  0.00000002

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                                0.00000000  0.01268330  0.00057691  0.00013000  0.61607186  0.46201495  0.00626760 -0.01714961

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00195485 -0.00013109 -0.00007131 -0.03268847 -0.01666466 -0.00215946 -0.00266819

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000005  0.00006083 -0.00015027 -0.00008197  0.01182242  0.00834848 -0.01393107  0.57702423

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000001 -0.00000000
                               -0.00000000 -0.00050499  0.01111118  0.00011707  0.01737274 -0.03233134  0.72872531  0.01301860

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000007  0.00000001  0.00000000
                               -0.00000000  0.00011868  0.00012396 -0.01112468 -0.41997775  0.56067800  0.03418221  0.00315407

 35  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00004557  0.01301431 -0.27131093 -0.00482488  0.00000001  0.00000008 -0.00000605 -0.00000005

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00781697  0.00014269  0.00201390 -0.02441103 -0.00000027  0.00000055  0.00000030 -0.00000497

 37  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00070622  0.00241868  0.00478464 -0.27051603 -0.00000341  0.00000468  0.00000008  0.00000039


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000008 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00010256  0.00000046  0.00000037 -0.00082492  0.68723551 -0.00873843 -0.00333105 -0.00024398
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000103  0.00000090  0.00000067  0.68682396  0.00049052 -0.02618209 -0.00017043 -0.00035700
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000198 -0.00000150  0.00004447  0.00012983  0.00331649 -0.00086538  0.68720581 -0.01001761
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

  5  1     5    1  |0 0>       -0.00000033 -0.00007762 -0.00000142  0.00041221  0.00031047  0.00138383  0.01001781  0.68721046
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000217  0.00000230 -0.00000014  0.02617083  0.00876691  0.68673907  0.00079684 -0.00141417
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000015  0.00000000 -0.00000017  0.00000012  0.00000696  0.00000020  0.00000008  0.00000010
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000004 -0.00000012  0.00000941 -0.00000028 -0.00000002  0.00000032 -0.00001027 -0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000010  0.00000348  0.00000010 -0.00000012  0.00000013 -0.00000022  0.00000014  0.00002067
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000002  0.00000000  0.00000183  0.00000002  0.00000192  0.00000006  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000007  0.00000162 -0.00000002  0.00000006 -0.00000009  0.00000009  0.00000002 -0.00000379
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00061464  0.13178527  0.00084452  0.00124419  0.00170737  0.00684824 -0.00708169 -0.44964433
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00036689  0.70136007  0.00263102  0.00020219  0.00022672 -0.00340727  0.00484026  0.36136170
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00524414 -0.00182185  0.62826934  0.00521680  0.00896679  0.00328246  0.28820587 -0.00571675
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.50818458  0.00266623  0.00695448 -0.00010868 -0.28827544  0.00058641  0.00891783 -0.00070136
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00118301 -0.00535119 -0.00396331  0.28828919  0.00490898  0.49960755 -0.00456425  0.00698070
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.00002358  0.00000007 -0.00000009  0.00092172  0.11897086 -0.00206522 -0.00273833  0.00026469
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00000008  0.00000029 -0.00000687  0.00942160 -0.00286752 -0.00601474 -0.11861988  0.00148121
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00000006 -0.00000005  0.00000070  0.11863203 -0.00141203 -0.06840201  0.00935655 -0.00083560
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000006 -0.00000002  0.00000165 -0.00000009 -0.00000007  0.00000019 -0.00000092 -0.00000004

 21  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00372862  0.00287833 -0.06270457 -0.00505050 -0.00906021 -0.00060164 -0.53765576  0.00580917

 22  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00764953 -0.00252462  0.74822279 -0.00127089 -0.00493536 -0.00141827 -0.20885127  0.00283498

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00340453 -0.69991643 -0.00176958  0.00305832 -0.00282958 -0.01143356  0.00168366  0.28822634

 24  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00060051 -0.00749372  0.00177529 -0.28857158  0.00534458  0.49939474  0.00165886  0.01098200

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.63486482  0.00326806 -0.00802307 -0.00017387 -0.28824889  0.00549012  0.00559654 -0.00270888

 26  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000050  0.00000014  0.00000004  0.11896448 -0.00024030  0.06872558 -0.00116524  0.00217063

 27  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000181 -0.00001111 -0.00000025 -0.00114509 -0.01096330 -0.00223916  0.00174256  0.11848126

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002006  0.00000090 -0.00000005 -0.00082907 -0.11849434  0.00060937  0.00189622 -0.01098740

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000062 -0.00000004 -0.00000001  0.00000003  0.00000136  0.00000019 -0.00000004  0.00000010

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.02128516 -0.00143409 -0.00202144  0.00274649 -0.08794502  0.00092621  0.00162269 -0.00094453

 31  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.58142987  0.00107965  0.00439826  0.00215361 -0.57016952  0.00593843  0.00837554 -0.00222819

 32  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00322919 -0.00255618  0.00205011 -0.57682428 -0.00242760 -0.00005531  0.00408342 -0.00585925

 33  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00142174  0.02670776  0.00252688 -0.00885764 -0.00281729 -0.00455101  0.00528760  0.28835015

 34  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00742267 -0.00025182  0.20330285  0.00105877 -0.00232268  0.00032054 -0.28847041  0.00520340

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00002153 -0.00000025 -0.00035945 -0.00024213 -0.00268549  0.00299530  0.11897246

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000045 -0.00000004  0.00000092  0.00015416 -0.00123472 -0.13684867  0.01050792 -0.00312686

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000010 -0.00000006  0.00000981  0.00128126  0.00216105  0.01223363  0.11850875 -0.00271995


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00001594 -0.00000168 -0.00000043  0.00036995  0.43453453  0.00125687  0.00396731  0.02232017
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000023  0.00000035  0.00000245 -0.43483934  0.00041348 -0.01267247 -0.00803318  0.00130011
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000021  0.00000060  0.00000831 -0.00910002 -0.00424349  0.03776654  0.43336873  0.00360858
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000260 -0.00003243  0.00000072 -0.00128879  0.02229190 -0.00216725  0.00399855 -0.43454833
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000007  0.00000016 -0.00000335 -0.01193586 -0.00076706  0.43329836 -0.03799752 -0.00251462
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.73333342 -0.01461296 -0.00018122 -0.00000027  0.00001787 -0.00000017  0.00000048 -0.00000222
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00025785  0.00384585  0.73346849  0.00000375  0.00000066  0.00000516 -0.00000323  0.00000067
                                0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.01461181  0.73332364 -0.00385024  0.00000037  0.00000488 -0.00000019 -0.00000040 -0.00003146
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000001 -0.00000002 -0.00000002  0.00000048 -0.00000002  0.00000221 -0.00000080 -0.00000011
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00075979 -0.04182803  0.00018119 -0.00000004 -0.00000019  0.00000014 -0.00000003  0.00000588
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00265432 -0.18390793 -0.00023366  0.00002708  0.00645850 -0.00303001  0.00162675 -0.13662769
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00329466 -0.22891708  0.00112878  0.00033210 -0.00567106  0.00181066 -0.00099082  0.10975435
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00142945  0.00050551  0.25430690  0.00339336 -0.00140634 -0.00876745 -0.08723099 -0.00129857
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.25430158  0.00333841 -0.00142678 -0.00000705  0.08763064  0.00098499 -0.00156542  0.00426377
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00119953  0.00098010 -0.00187507  0.08605047  0.00059185 -0.15203923  0.01662962  0.00315251
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.34962559  0.00633106 -0.00477126  0.00480529 -0.61748113  0.00202375  0.00542079 -0.03021985
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00434486  0.00158844  0.34829684  0.03650645  0.00551430  0.08511768  0.61207327  0.00405249
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00463544 -0.00022069 -0.03138970  0.62099630  0.00328658  0.34422894 -0.06624566 -0.00798504
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00081024  0.00019593  0.04183099  0.00000006  0.00000000 -0.00000068 -0.00000467  0.00000001

 21  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00217923  0.00154423  0.10629863 -0.00492344  0.00039398  0.01462501  0.16286786  0.00084031

 22  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00648573 -0.00142388 -0.27367453 -0.00169910  0.00056956  0.00604214  0.06322349  0.00051971

 23  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00276502 -0.25426589  0.00172206  0.00116000 -0.00365785  0.00415131 -0.00033427  0.08759723

 24  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00127473 -0.00349464 -0.00065782 -0.08938713  0.00037238 -0.15056969  0.01095187  0.00474246

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.25422823 -0.00274218  0.00626579 -0.00006454  0.08768432 -0.00041698 -0.00043156  0.00365859

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00418867  0.00210672 -0.00009136  0.61399558  0.00589878 -0.36032692  0.05082549  0.01303643

 27  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02510584  0.34884602 -0.00212123 -0.00437306  0.02542732  0.01684776 -0.00627054  0.61744081

 28  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.34876929 -0.02517399 -0.00663849 -0.00444931  0.61767870  0.00538712 -0.00203781 -0.02561644

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.04182043 -0.00075573  0.00081378 -0.00000001  0.00000045 -0.00000002 -0.00000000  0.00000020

 30  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.29013781  0.00457792 -0.00578071  0.00083423  0.02674293  0.00009392 -0.00010799  0.00107792

 31  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04473939 -0.00166857  0.00206112  0.00063279  0.17327200  0.00073786 -0.00014728  0.00816585

 32  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00130610 -0.00347668  0.00185550 -0.17544667  0.00079500  0.00144547 -0.00502746 -0.00136418

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00401921  0.25426154 -0.00233726 -0.00246391 -0.00361563  0.00200122 -0.00131983  0.08763360

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00526422  0.00245057  0.25424759 -0.00149451 -0.00058821  0.00763569  0.08741396  0.00104465

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00642858 -0.34963048  0.00574053 -0.00010975 -0.03025214  0.01767848 -0.01356356  0.61710774

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00056515  0.00254885  0.03142177  0.00947499 -0.00223302  0.70312772 -0.11681575 -0.02162440

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00667272  0.00565730  0.34822963  0.01871907 -0.00104877 -0.11771570 -0.60740416 -0.01013408


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00975528  0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000014 -0.00000002 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000003 -0.00000941  0.00000007  0.00000005  0.00213264 -0.06229879  0.57824042  0.00244996
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000216 -0.00000044  0.00000026  0.00000016  0.58078866  0.03075784  0.00120200 -0.00282271
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000050  0.00000020 -0.00000003  0.00001267  0.00239790  0.00800706 -0.00158816  0.58155786
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000015 -0.00000009 -0.00002797  0.00000035 -0.00196541 -0.00008055  0.00547445 -0.00232113
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000527 -0.00000017  0.00000035 -0.00000009 -0.03074260  0.57740196  0.06234820 -0.00765018
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000003  0.47719821 -0.00455603 -0.00788147 -0.00000244 -0.00001280 -0.00013207 -0.00000831
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000003  0.00794867  0.00704882  0.47715933  0.00004083 -0.00006359 -0.00001728  0.00006459
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000002  0.00443785  0.47719969 -0.00712335 -0.00000236 -0.00001273 -0.00004112  0.00001700
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.71528163 -0.00000023  0.00000002 -0.00000001  0.00000095  0.00000511  0.00000054 -0.00000072
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000001  0.00066834  0.08856602 -0.00123850 -0.00000197 -0.00001235 -0.00004135  0.00001721
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000005  0.00134365  0.34333433 -0.00285488 -0.00222095 -0.00734204  0.00152094 -0.00111504
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00000008  0.00161381  0.42738646 -0.00620430  0.00082086  0.00397170 -0.00292765  0.00172461
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.00000014 -0.00508766 -0.00543689 -0.47473332 -0.00574623 -0.00701704 -0.00678909 -0.27500121
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00000002  0.47477017 -0.00127912 -0.00509179  0.00114680 -0.02662644  0.27390270 -0.00607187
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000652  0.00231548 -0.00177281  0.00348141 -0.23055939 -0.49697308 -0.05112252  0.01266344
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00487574 -0.08025906  0.00060853  0.00021209  0.00415552 -0.03579370  0.31964430 -0.00450644
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.03626969  0.00030660  0.00111513  0.07994365  0.02556178 -0.01795450 -0.00673616 -0.32081516
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.40176866  0.00094625 -0.00010805 -0.00721932  0.33648734 -0.15348330 -0.01987876  0.02629360
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00027088 -0.00124066 -0.08857293 -0.00004141  0.00006340  0.00001462 -0.00008333

 21  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000030  0.00085185 -0.00472993 -0.19844027  0.00672614  0.00810842  0.00489325  0.51296920

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000013 -0.00377679  0.00739679  0.51099812  0.00184785  0.00410115  0.00334942  0.19919254

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00010851  0.47470024 -0.00773831 -0.00283362  0.01092589  0.00128323  0.00337010

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000329  0.00233051  0.00656075  0.00113013  0.31752110 -0.44681008 -0.04877554  0.00394605

 25  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.47478572  0.00007998 -0.00393281  0.00163528 -0.03122148  0.27340220 -0.00287655

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.40340152 -0.00096678  0.00047333 -0.00000960  0.30351996  0.21344035  0.01856836 -0.00758238

 27  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00277144 -0.00661141  0.07998890 -0.00114001 -0.00385831 -0.00416046 -0.02725731 -0.00141109

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00464536 -0.07998255 -0.00662201 -0.00015203 -0.00344609  0.03179252 -0.31934764  0.00281786

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.08858923  0.00066516 -0.00028041  0.00000206  0.00001324  0.00014297  0.00000689

 30  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000006  0.54182473 -0.00282072  0.00195645 -0.00222678 -0.00905484  0.08351768 -0.00079347

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.08361587  0.00221005 -0.00250211  0.00045505 -0.05724216  0.54096434 -0.00311360

 32  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000452  0.00231222  0.00648264 -0.00356290  0.54803550  0.04969735  0.00511606 -0.00682296

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000004 -0.00242954 -0.47466563  0.00892458  0.00907081  0.00538969  0.00071243 -0.00002171

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000019  0.00210999 -0.00899222 -0.47469747  0.00008918  0.00363696  0.00012040  0.27525200

 35  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00234227 -0.00060937 -0.08024927  0.00209165 -0.00152164 -0.00787828  0.00140213  0.00225671

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.40178921 -0.00001789  0.00065244  0.00720856  0.03417260 -0.36605678 -0.03854510  0.03380522

 37  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.03629870 -0.00023761  0.00204307  0.07992339  0.00164290  0.03759831  0.00657650  0.31994578


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00947514
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00543453  0.00018855 -0.00003563 -0.00001310 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00194436  0.00000541 -0.00000448  0.00005020 -0.00000020
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00234516  0.00000923  0.00002256  0.00009996  0.00000035
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.58159124  0.00007634 -0.00033764  0.00001726 -0.00000011
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00064134  0.00003795 -0.00001987 -0.00009160 -0.00000221
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00003573  0.42929772  0.03384304  0.00086897  0.00000009
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00001225  0.00100791 -0.00173503 -0.43063684  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

  9  1     9    1  |0 0>       -0.00023136  0.03384090 -0.42930829  0.00180885 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000020  0.00000005  0.00000001  0.00000003  0.69883622
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00026839  0.03323777 -0.43137095  0.00141880 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.42911472 -0.00516474  0.07095768  0.00018079 -0.00000006
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.34463081 -0.00654130  0.08887182 -0.00035471 -0.00000005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00038192 -0.00038329 -0.00012218 -0.09880126 -0.00000020
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.00192451 -0.09841590 -0.00711101  0.00037213  0.00000016
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00804088 -0.00047853 -0.00038488  0.00078223 -0.00000452
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00232159  0.54378865  0.04184992 -0.00648413 -0.00499060
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00184029  0.00569581  0.00221435  0.54307143 -0.03712340
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

 19  1     9    1  |1 1>+      -0.00066230 -0.00712155 -0.00070329 -0.04889070 -0.41122830
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00001334  0.00751843  0.00200209  0.43258067 -0.00000001

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00396852 -0.00072933 -0.00058083 -0.04117797  0.00000036

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00097402  0.00230759  0.00058075  0.10631041  0.00000011

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.27498606 -0.00690323  0.09867408 -0.00057307  0.00000002

 24  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00980994 -0.00060322  0.00134577  0.00035478 -0.00000039

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00002818  0.09859217  0.00684464 -0.00226613 -0.00000017

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00724190  0.00634303  0.00365001 -0.00013124  0.41289688

 27  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.32100836  0.00718352  0.54510753 -0.00263682 -0.00283668

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02684637  0.54509225 -0.00720013 -0.00943509 -0.00475475

 29  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003584 -0.43130583 -0.03320742  0.00764990  0.00000004

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00012438 -0.11235148 -0.00839919  0.00204377  0.00000009

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00286983  0.01748952  0.00163320 -0.00078282 -0.00000004

 32  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00764762 -0.00057646  0.00131013 -0.00067589  0.00000497

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.27517187  0.00731750 -0.09829969  0.00079426  0.00000011

 34  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00014954 -0.00181403 -0.00094120 -0.09868025  0.00000017

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.32143274  0.04204983 -0.54386813  0.00838956  0.00239741

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00822403  0.00053996  0.00398095  0.04907384  0.41124904

 37  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00139799  0.00896395  0.00878677  0.54306387 -0.03715360



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
  7  1     7    1  |0 0>          0.00%    4.86%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    4.88%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.01%    4.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.18%   80.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.02%    0.06%   41.98%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.34%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    5.30%    8.53%    0.03%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.01%    0.00%    0.00%   17.19%   10.30%    0.00%    0.01%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%   33.32%
 17  1     7    1  |1 1>+         0.00%    7.36%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    7.32%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.01%    0.00%   80.31%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   13.10%   23.26%    0.08%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.16%    0.35%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    4.33%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%   33.31%
 25  1     6    1  |1 0>          0.00%    0.01%    0.00%    0.00%    8.46%    4.56%    0.00%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.01%    7.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    7.37%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   80.13%    0.18%    0.01%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.02%    0.00%    0.00%   37.95%   21.35%    0.00%    0.03%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.11%    0.03%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.02%   33.30%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.03%    0.10%   53.10%    0.02%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.01%   17.64%   31.44%    0.12%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.02%    7.36%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    7.32%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   47.23%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   47.17%    0.00%    0.07%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   47.23%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   47.23%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.07%    0.01%   47.16%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    1.74%    0.00%    0.00%    0.00%    0.00%    0.01%   20.22%
 13  1     3    1  |1 1>+         0.00%   49.19%    0.00%    0.00%    0.00%    0.00%    0.00%   13.06%
 14  1     4    1  |1 1>+         0.00%    0.00%   39.47%    0.00%    0.01%    0.00%    8.31%    0.00%
 15  1     5    1  |1 1>+        25.83%    0.00%    0.00%    0.00%    8.31%    0.00%    0.01%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    8.31%    0.00%   24.96%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.42%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.41%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    1.41%    0.00%    0.47%    0.01%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.39%    0.00%    0.01%    0.00%   28.91%    0.00%
 22  1     3    1  |1 0>          0.01%    0.00%   55.98%    0.00%    0.00%    0.00%    4.36%    0.00%
 23  1     4    1  |1 0>          0.00%   48.99%    0.00%    0.00%    0.00%    0.01%    0.00%    8.31%
 24  1     5    1  |1 0>          0.00%    0.01%    0.00%    8.33%    0.00%   24.94%    0.00%    0.01%
 25  1     6    1  |1 0>         40.31%    0.00%    0.01%    0.00%    8.31%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    1.42%    0.00%    0.47%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.40%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.40%    0.00%    0.00%    0.01%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.05%    0.00%    0.00%    0.00%    0.77%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-        33.81%    0.00%    0.00%    0.00%   32.51%    0.00%    0.01%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%   33.27%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.07%    0.00%    0.01%    0.00%    0.00%    0.00%    8.31%
 34  1     6    1  |1 1>-         0.01%    0.00%    4.13%    0.00%    0.00%    0.00%    8.32%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.42%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    1.87%    0.01%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    1.40%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   18.88%    0.00%    0.00%    0.05%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   18.91%    0.00%    0.02%    0.01%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.14%   18.78%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%   18.88%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%   18.77%    0.14%    0.00%
  7  1     7    1  |0 0>         53.78%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   53.80%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.02%   53.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    3.38%    0.00%    0.00%    0.00%    0.00%    0.00%    1.87%
 13  1     3    1  |1 1>+         0.00%    5.24%    0.00%    0.00%    0.00%    0.00%    0.00%    1.20%
 14  1     4    1  |1 1>+         0.00%    0.00%    6.47%    0.00%    0.00%    0.01%    0.76%    0.00%
 15  1     5    1  |1 1>+         6.47%    0.00%    0.00%    0.00%    0.77%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.74%    0.00%    2.31%    0.03%    0.00%
 17  1     7    1  |1 1>+        12.22%    0.00%    0.00%    0.00%   38.13%    0.00%    0.00%    0.09%
 18  1     8    1  |1 1>+         0.00%    0.00%   12.13%    0.13%    0.00%    0.72%   37.46%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.10%   38.56%    0.00%   11.85%    0.44%    0.01%
 20  1     1    1  |1 0>          0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    1.13%    0.00%    0.00%    0.02%    2.65%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    7.49%    0.00%    0.00%    0.00%    0.40%    0.00%
 23  1     4    1  |1 0>          0.00%    6.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.77%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.80%    0.00%    2.27%    0.01%    0.00%
 25  1     6    1  |1 0>          6.46%    0.00%    0.00%    0.00%    0.77%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%   37.70%    0.00%   12.98%    0.26%    0.02%
 27  1     8    1  |1 0>          0.06%   12.17%    0.00%    0.00%    0.06%    0.03%    0.00%   38.12%
 28  1     9    1  |1 0>         12.16%    0.06%    0.00%    0.00%   38.15%    0.00%    0.00%    0.07%
 29  1     1    1  |1 1>-         0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         8.42%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.20%    0.00%    0.00%    0.00%    3.00%    0.00%    0.00%    0.01%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    3.08%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    6.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.77%
 34  1     6    1  |1 1>-         0.00%    0.00%    6.46%    0.00%    0.00%    0.01%    0.76%    0.00%
 35  1     7    1  |1 1>-         0.00%   12.22%    0.00%    0.00%    0.09%    0.03%    0.02%   38.08%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.10%    0.01%    0.00%   49.44%    1.36%    0.05%
 37  1     9    1  |1 1>-         0.00%    0.00%   12.13%    0.04%    0.00%    1.39%   36.89%    0.01%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.39%   33.44%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   33.73%    0.09%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   33.82%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.09%   33.34%    0.39%    0.01%
  7  1     7    1  |0 0>          0.00%   22.77%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.01%    0.00%   22.77%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   22.77%    0.01%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         51.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%   11.79%    0.00%    0.00%    0.01%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%   18.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%   22.54%    0.00%    0.00%    0.00%    7.56%
 15  1     5    1  |1 1>+         0.00%   22.54%    0.00%    0.00%    0.00%    0.07%    7.50%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.32%   24.70%    0.26%    0.02%
 17  1     7    1  |1 1>+         0.00%    0.64%    0.00%    0.00%    0.00%    0.13%   10.22%    0.00%
 18  1     8    1  |1 1>+         0.13%    0.00%    0.00%    0.64%    0.07%    0.03%    0.00%   10.29%
 19  1     9    1  |1 1>+        16.14%    0.00%    0.00%    0.01%   11.32%    2.36%    0.04%    0.07%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.78%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    3.94%    0.00%    0.01%    0.00%   26.31%
 22  1     3    1  |1 0>          0.00%    0.00%    0.01%   26.11%    0.00%    0.00%    0.00%    3.97%
 23  1     4    1  |1 0>          0.00%    0.00%   22.53%    0.01%    0.00%    0.01%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   10.08%   19.96%    0.24%    0.00%
 25  1     6    1  |1 0>          0.00%   22.54%    0.00%    0.00%    0.00%    0.10%    7.47%    0.00%
 26  1     7    1  |1 0>         16.27%    0.00%    0.00%    0.00%    9.21%    4.56%    0.03%    0.01%
 27  1     8    1  |1 0>          0.00%    0.00%    0.64%    0.00%    0.00%    0.00%    0.07%    0.00%
 28  1     9    1  |1 0>          0.00%    0.64%    0.00%    0.00%    0.00%    0.10%   10.20%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%   29.36%    0.00%    0.00%    0.00%    0.01%    0.70%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.70%    0.00%    0.00%    0.00%    0.33%   29.26%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   30.03%    0.25%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%   22.53%    0.01%    0.01%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.01%   22.53%    0.00%    0.00%    0.00%    7.58%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.64%    0.00%    0.00%    0.01%    0.00%    0.00%
 36  1     8    1  |1 1>-        16.14%    0.00%    0.00%    0.01%    0.12%   13.40%    0.15%    0.11%
 37  1     9    1  |1 1>-         0.13%    0.00%    0.00%    0.64%    0.00%    0.14%    0.00%   10.24%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>         33.82%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   18.43%    0.11%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   18.54%    0.00%
  9  1     9    1  |0 0>          0.00%    0.11%   18.43%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   48.84%
 11  1     1    1  |1 1>+         0.00%    0.11%   18.61%    0.00%    0.00%
 12  1     2    1  |1 1>+        18.41%    0.00%    0.50%    0.00%    0.00%
 13  1     3    1  |1 1>+        11.88%    0.00%    0.79%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.98%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.97%    0.01%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%   29.57%    0.18%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%   29.49%    0.14%
 19  1     9    1  |1 1>+         0.00%    0.01%    0.00%    0.24%   16.91%
 20  1     1    1  |1 0>          0.00%    0.01%    0.00%   18.71%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.17%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    1.13%    0.00%
 23  1     4    1  |1 0>          7.56%    0.00%    0.97%    0.00%    0.00%
 24  1     5    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.97%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%   17.05%
 27  1     8    1  |1 0>         10.30%    0.01%   29.71%    0.00%    0.00%
 28  1     9    1  |1 0>          0.07%   29.71%    0.01%    0.01%    0.00%
 29  1     1    1  |1 1>-         0.00%   18.60%    0.11%    0.01%    0.00%
 30  1     2    1  |1 1>-         0.00%    1.26%    0.01%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         7.57%    0.01%    0.97%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.97%    0.00%
 35  1     7    1  |1 1>-        10.33%    0.18%   29.58%    0.01%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.24%   16.91%
 37  1     9    1  |1 1>-         0.00%    0.01%    0.01%   29.49%    0.14%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1325.00       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     76266.09  71431.93      9.16   2686.14   2132.48      4.78      0.07      1.26
 REAL TIME  *     76905.53 SEC
 DISK USED  *         1.34 GB (local),       19.62 GB (total)
 SF USED    *         7.12 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2788.765907789924

              CI              CI           MULTI         RHF-SCF
  -2788.73316722  -2788.72406066  -2787.88646553  -2787.14843609
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
