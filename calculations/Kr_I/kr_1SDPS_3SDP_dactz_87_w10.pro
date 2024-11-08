
 Working directory              : /wrk/irikura/molpro.CPBoO66x5I/
 Global scratch directory       : /wrk/irikura/molpro.CPBoO66x5I/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CPBoO66x5I/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
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
     wf,nelec=36,sym=1,spin=0;state,10; weight,10,1,1,1,1,1,1,1,1,1
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
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 05-Oct-24          TIME: 12:19:31  
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

 SORT1 READ    23841670. AND WROTE      173335. INTEGRALS IN      1 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.13 SEC
 SORT2 READ     2334873. AND WROTE    11712051. INTEGRALS IN    154 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

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
 CPU TIMES  *         1.44      1.26
 REAL TIME  *         2.98 SEC
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
   2    -2787.14744263      -0.04112983     0.12D-01     0.10D-01     1     0       0.00      0.02    diag2
   3    -2787.14835220      -0.00090958     0.32D-02     0.22D-02     2     0       0.01      0.03    diag2
   4    -2787.14842922      -0.00007702     0.47D-03     0.92D-03     3     0       0.01      0.04    diag2
   5    -2787.14843600      -0.00000678     0.19D-03     0.17D-03     4     0       0.01      0.05    diag2
   6    -2787.14843609      -0.00000008     0.95D-05     0.17D-04     5     0       0.00      0.05    diag2
   7    -2787.14843609      -0.00000000     0.12D-05     0.28D-05     6     0       0.01      0.06    diag2
   8    -2787.14843609      -0.00000000     0.58D-07     0.17D-06     0     0       0.01      0.07    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.148436087694
  RHF One-electron energy           -3858.448225732895
  RHF Two-electron energy            1071.299789645201
  RHF Kinetic energy                 2992.657328216169
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
    5.1     2.00000    -4.26020     1  1  d1+  0.30730    1  1  d1-  0.95266
    6.1     2.00000    -4.26020     1  1  d1+  0.95288    1  1  d1- -0.30731
    7.1     2.00000    -4.26020     1  1  d2-  1.00082
    8.1     2.00000    -4.26020     1  1  d2+  1.00102
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
 CPU TIMES  *         1.52      0.08      1.26
 REAL TIME  *         3.07 SEC
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
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.256D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.246D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.410D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.252D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   2 3 5 4 6 1 2 4 6 3   5 1 4 6 3 5 2 6 4 5   3 2 1 4 6 5 3 2 7 8
                                       12 91113101415 1 2 6   4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.337D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.134D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.247D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.869D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.463D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.683D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.794D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.794D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 3 2 1 5 4 9 7 6  10 8 2 1 3 6 5 4 7 9  10 8 2 1 3 4 5 6 9 7
                                       10 8 6 4 9 7 510 8 2   1 3 5 4 6 9 710 8 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.35714   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    10404
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   16    0  -2788.01649721   -2788.02440213   -0.00790493    0.19729665 0.00005358 0.00000440  0.67E-01      2.19
   2    7   18    0  -2788.02447406   -2788.02447608   -0.00000202    0.00292418 0.00000051 0.00000036  0.37E-02      4.71
   3   24   52    0  -2788.02447608   -2788.02447608    0.00000000    0.00000103 0.00000257 0.00000012  0.37E-05     12.18

 CONVERGENCE REACHED!  Final gradient:    0.00000140 ( 0.14E-05)
                       Final energy:  -2788.02447608
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.277281056342
 Nuclear energy                                  0.00000000
 Kinetic energy                               2995.42887597
 One electron energy                         -3879.60328924
 Two electron energy                          1091.32600818
 Virial ratio                                    1.93084409
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.885084172853
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.74318194
 One electron energy                         -3864.89686660
 Two electron energy                          1077.01178243
 Virial ratio                                    1.93154839
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.885084170192
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.74318213
 One electron energy                         -3864.89686804
 Two electron energy                          1077.01178387
 Virial ratio                                    1.93154839
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.885084159272
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.74318207
 One electron energy                         -3864.89687020
 Two electron energy                          1077.01178604
 Virial ratio                                    1.93154839
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.885084144688
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.74318275
 One electron energy                         -3864.89687649
 Two electron energy                          1077.01179234
 Virial ratio                                    1.93154839
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.885084143303
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.74318269
 One electron energy                         -3864.89687655
 Two electron energy                          1077.01179241
 Virial ratio                                    1.93154839
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.881849953428
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.73659064
 One electron energy                         -3864.88028673
 Two electron energy                          1076.99843678
 Virial ratio                                    1.93154936
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.881849940388
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.73659055
 One electron energy                         -3864.88028885
 Two electron energy                          1076.99843891
 Virial ratio                                    1.93154936
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.881849919833
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.73659120
 One electron energy                         -3864.88029505
 Two electron energy                          1076.99844513
 Virial ratio                                    1.93154936
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.866038272095
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.22252243
 One electron energy                         -3866.34892298
 Two electron energy                          1078.48288470
 Virial ratio                                    1.93139284
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.894675373787
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.70885428
 One electron energy                         -3864.80556007
 Two electron energy                          1076.91088470
 Virial ratio                                    1.93156228
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.886955317240
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.72604695
 One electron energy                         -3864.85216780
 Two electron energy                          1076.96521248
 Virial ratio                                    1.93155435
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.886955316462
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.72604709
 One electron energy                         -3864.85216902
 Two electron energy                          1076.96521370
 Virial ratio                                    1.93155435
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.886955309989
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.72604697
 One electron energy                         -3864.85217107
 Two electron energy                          1076.96521576
 Virial ratio                                    1.93155435
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.886955304542
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.72604755
 One electron energy                         -3864.85217711
 Two electron energy                          1076.96522181
 Virial ratio                                    1.93155435
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.886955303460
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.72604746
 One electron energy                         -3864.85217700
 Two electron energy                          1076.96522170
 Virial ratio                                    1.93155435
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.882019622441
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.73316180
 One electron energy                         -3864.87039736
 Two electron energy                          1076.98837774
 Virial ratio                                    1.93155048
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.882019609778
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.73316170
 One electron energy                         -3864.87039946
 Two electron energy                          1076.98837985
 Virial ratio                                    1.93155048
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.882019590028
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.73316233
 One electron energy                         -3864.87040560
 Two electron energy                          1076.98838601
 Virial ratio                                    1.93155048
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000001
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.165261905234
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000014
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999821
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000003
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.834738094679
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999999997
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000000169
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.000000000084
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000010
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.900719776367
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000003
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999999999959
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000001
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     2.099279182825
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999996
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000000043
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.643496614144
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999871
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000013
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999999999
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.356503385822
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000119
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999997
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.000000000035
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000006
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.779555594673
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999999927
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000042
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.220444880920
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000000034
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999996
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.191241480530
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999999993
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.808758519460
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000000005
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.000000000011
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000001
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.319724628947
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000041
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000002
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999999956
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.680275936250
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000001
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000001
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999908
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999885
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999835
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999995
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     5.999999999961
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000115
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000166
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000005
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     0.000000000130
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000018
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     5.999999999987
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     5.999999999971
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     5.999999999961
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     5.999999999999
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     5.999999999996
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000030
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000039
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 1   5 3 6 2 4 1 2 4 6 3   5 1 2 6 4 5 3 6 3 5   2 4 1 6 5 3 2 4 9 7
                                       12 81415111310 1 4 2   6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 3 2 1 1   2 3 2 1 3 6 4 5 810   9 7 2 1 3 6 5 4 810   7 9 2 1 3 5 6 4 810
                                        9 7 4 6 810 5 9 7 2   1 3 4 610 8 5 9 7 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.56591     1  1  s    0.99997
    2.1     2.00000   -72.23874     1  2  s    0.99991
    3.1     2.00000   -11.40598     1  3  s    0.99898
    4.1     2.00000    -3.93364     1  1  d1-  1.00028
    5.1     2.00000    -3.93364     1  1  d2-  1.00028
    6.1     2.00000    -3.93364     1  1  d2+  1.00028
    7.1     2.00000    -3.93364     1  1  d0   1.00028
    8.1     2.00000    -3.93364     1  1  d1+  1.00028
    9.1     1.99996    -1.33783     1  4  s    1.04179
    1.2     2.00000   -63.70340     1  1  pz   0.99997
    2.2     2.00000   -63.70340     1  1  py   0.99997
    3.2     2.00000   -63.70340     1  1  px   0.99997
    4.2     2.00000    -8.59715     1  2  py   0.99955
    5.2     2.00000    -8.59715     1  2  px   0.99955
    6.2     2.00000    -8.59715     1  2  pz   0.99955
    7.2     1.78422    -0.62913     1  3  pz   1.05822
    8.2     1.78422    -0.62913     1  3  py   1.05822
    9.2     1.78422    -0.62913     1  3  px   1.05822
   10.2     0.21579     0.02622     1  3  px  -0.26052    1  8  px   0.46972    1  9  px   0.66458
   11.2     0.21579     0.02622     1  3  py  -0.26052    1  8  py   0.46972    1  9  py   0.66458
   12.2     0.21579     0.02622     1  3  pz  -0.26052    1  8  pz   0.46971    1  9  pz   0.66458
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.99591475     -0.00000012     -0.00000000      0.00000000      0.00000000      0.00000009     -0.00000000
 2 a2200b       0.03595215      0.56252794      0.00000042     -0.00000118     -0.00000028     -0.12605082      0.00000000
 2 b2200a      -0.03595215     -0.56252794     -0.00000042      0.00000118      0.00000028      0.12605082     -0.00000000
 2 2a20b0       0.03595239     -0.17209937     -0.00000009      0.00000119      0.00000087      0.55018612     -0.00000000
 2 2b20a0      -0.03595239      0.17209937      0.00000009     -0.00000119     -0.00000087     -0.55018612      0.00000000
 2 a220b0       0.00000000      0.00000086     -0.00000106      0.49923977     -0.00000008     -0.00000081     -0.00000087
 2 b220a0      -0.00000000     -0.00000086      0.00000106     -0.49923977      0.00000008      0.00000081      0.00000087
 2 b22a00       0.00000000      0.00000038     -0.49924025     -0.00000106      0.00000026      0.00000004     -0.49935032
 2 a22b00      -0.00000000     -0.00000038      0.49924025      0.00000106     -0.00000026     -0.00000004      0.49935032
 2 22a0b0       0.00000000      0.00000008      0.00000026      0.00000008      0.49924237     -0.00000076     -0.00000034
 2 22b0a0      -0.00000000     -0.00000008     -0.00000026     -0.00000008     -0.49924237      0.00000076      0.00000034
 2 2b2a00       0.00000000     -0.00000008     -0.00000026     -0.00000008     -0.49924333      0.00000076     -0.00000034
 2 2a2b00      -0.00000000      0.00000008      0.00000026      0.00000008      0.49924333     -0.00000076      0.00000034
 2 22a00b       0.00000000     -0.00000038      0.49924544      0.00000106     -0.00000026     -0.00000004     -0.49934513
 2 22b00a      -0.00000000      0.00000038     -0.49924544     -0.00000106      0.00000026      0.00000004      0.49934513
 2 2b200a      -0.00000000     -0.00000086      0.00000106     -0.49924592      0.00000008      0.00000081     -0.00000087
 2 2a200b       0.00000000      0.00000086     -0.00000106      0.49924592     -0.00000008     -0.00000081      0.00000087
 2 22ab00       0.03595231     -0.39042409     -0.00000033     -0.00000002     -0.00000059     -0.42413826      0.00000000
 2 22ba00      -0.03595231      0.39042409      0.00000033      0.00000002      0.00000059      0.42413826     -0.00000000
 
 Energy:    -2788.27728106  -2787.88508417  -2787.88508417  -2787.88508416  -2787.88508414  -2787.88508414  -2787.88184995

 State:              8               9              10
 2 222000      -0.00000000     -0.00000000     -0.08929992
 2 a2200b       0.00000000     -0.00000000      0.40548537
 2 b2200a      -0.00000000      0.00000000     -0.40548537
 2 2a20b0      -0.00000000     -0.00000000      0.40548970
 2 2b20a0       0.00000000      0.00000000     -0.40548970
 2 a220b0       0.49935080     -0.00000018     -0.00000000
 2 b220a0      -0.49935080      0.00000018      0.00000000
 2 b22a00      -0.00000087     -0.00000034      0.00000000
 2 a22b00       0.00000087      0.00000034     -0.00000000
 2 22a0b0       0.00000018      0.49934821      0.00000000
 2 22b0a0      -0.00000018     -0.49934821     -0.00000000
 2 2b2a00       0.00000018      0.49934725      0.00000000
 2 2a2b00      -0.00000018     -0.49934725     -0.00000000
 2 22a00b      -0.00000087     -0.00000034      0.00000000
 2 22b00a       0.00000087      0.00000034     -0.00000000
 2 2b200a       0.49934465     -0.00000018      0.00000000
 2 2a200b      -0.49934465      0.00000018     -0.00000000
 2 22ab00       0.00000000     -0.00000000      0.40548814
 2 22ba00      -0.00000000      0.00000000     -0.40548814
 
 Energy:    -2787.88184994  -2787.88184992  -2787.86603827
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57690409     -0.19147094      0.00000016      0.00000226     -0.00000165      0.79281994      0.00000000
 2 a2200a       0.57690340      0.78233827     -0.00000007     -0.00000224      0.00000012     -0.23059096      0.00000000
 2 2a200a       0.00000000      0.00000154     -0.00000073      0.70634344     -0.00000051     -0.00000164      0.00000151
 2 22a00a       0.00000000      0.00000002      0.70634334      0.00000073      0.00000261     -0.00000014     -0.70619649
 2 2a2a00      -0.00000000      0.00000035     -0.00000261      0.00000051      0.70634178      0.00000155      0.00000014
 2 22a0a0       0.00000000      0.00000035     -0.00000261      0.00000051      0.70634158      0.00000155     -0.00000014
 2 a22a00      -0.00000000      0.00000002      0.70634001      0.00000073      0.00000261     -0.00000014      0.70619983
 2 a220a0       0.00000000      0.00000154     -0.00000073      0.70633991     -0.00000051     -0.00000164     -0.00000151
 2 22aa00       0.57690431     -0.59086618     -0.00000009     -0.00000002      0.00000153     -0.56222903      0.00000000
 
 Energy:    -2787.89467537  -2787.88695532  -2787.88695532  -2787.88695531  -2787.88695530  -2787.88695530  -2787.88201962

 State:              8               9
 2 2a20a0      -0.00000000      0.00000000
 2 a2200a       0.00000000     -0.00000000
 2 2a200a      -0.70619639      0.00000001
 2 22a00a      -0.00000151      0.00000014
 2 2a2a00       0.00000001      0.70619806
 2 22a0a0      -0.00000001     -0.70619826
 2 a22a00       0.00000151     -0.00000014
 2 a220a0       0.70619993     -0.00000001
 2 22aa00      -0.00000000      0.00000000
 
 Energy:    -2787.88201961  -2787.88201959
 


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
 CPU TIMES  *         8.56      7.04      0.08      1.26
 REAL TIME  *        16.12 SEC
 DISK USED  *        48.34 MB (local),      746.55 MB (total)
 SF USED    *        45.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY         LL
    -2788.277281   7.95807864D-13
    -2787.885084   6.00000000D+00
    -2787.885084   6.00000000D+00
    -2787.885084   6.00000000D+00
    -2787.885084   6.00000000D+00
    -2787.885084   6.00000000D+00
    -2787.881850   2.00000000D+00
    -2787.881850   2.00000000D+00
    -2787.881850   2.00000000D+00
    -2787.866038   1.30299327D-10
    -2787.894675   1.75717219D-11
    -2787.886955   6.00000000D+00
    -2787.886955   6.00000000D+00
    -2787.886955   6.00000000D+00
    -2787.886955   6.00000000D+00
    -2787.886955   6.00000000D+00
    -2787.882020   2.00000000D+00
    -2787.882020   2.00000000D+00
    -2787.882020   2.00000000D+00
                                                  


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
     1     -2788.27728106
     2     -2787.88508417
     3     -2787.88508417
     4     -2787.88508416
     5     -2787.88508414
     6     -2787.88508414
     7     -2787.88184995
     8     -2787.88184994
     9     -2787.88184992
    10     -2787.86603827

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.5744D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1124D-06

 Number of blocks in overlap matrix:   982   Smallest eigenvalue:  0.57D-07
 Number of N-2 electron functions:    2420
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       2767590
 Number of doubly external configurations:       5464155
 Total number of contracted configurations:      8242567
 Total number of uncontracted configurations:  177497512

 Diagonal Coupling coefficients finished.               Storage:  15120353 words, CPU-Time:     29.91 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1299173 words, CPU-time:      0.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.27728106    -0.00000000    -0.98125401  0.18D-01  0.64D-01    34.47
    1     2     2     1.00000000     0.00000000 -2787.88508417     0.00000000    -0.97523171  0.19D-01  0.67D-01    34.47
    1     3     3     1.00000000     0.00000000 -2787.88508417    -0.00000000    -0.96542950  0.19D-01  0.61D-01    34.47
    1     4     4     1.00000000     0.00000000 -2787.88508416    -0.00000000    -0.96553202  0.19D-01  0.61D-01    34.47
    1     5     5     1.00000000     0.00000000 -2787.88508414    -0.00000000    -0.96540361  0.19D-01  0.61D-01    34.47
    1     6     6     1.00000000     0.00000000 -2787.88508414     0.00000000    -0.97499008  0.19D-01  0.67D-01    34.47
    1     7     7     1.00000000     0.00000000 -2787.88184995     0.00000000    -0.96621065  0.20D-01  0.61D-01    34.47
    1     8     8     1.00000000     0.00000000 -2787.88184994    -0.00000000    -0.96627912  0.20D-01  0.61D-01    34.47
    1     9     9     1.00000000     0.00000000 -2787.88184992    -0.00000000    -0.96621927  0.20D-01  0.61D-01    34.47
    1    10    10     1.00000000     0.00000000 -2787.86603827    -0.00000000    -0.98423089  0.43D-01  0.64D-01    34.47
    2     1     1     1.06204065    -0.85007827 -2789.12735933    -0.85007827    -0.01943061  0.31D-02  0.13D-02   287.66
    2     2     2     1.06008794    -0.83407040 -2788.71915458    -0.83407040    -0.01399891  0.12D-02  0.89D-03   287.66
    2     3     3     1.06005508    -0.83405111 -2788.71913528    -0.83405111    -0.01401051  0.12D-02  0.89D-03   287.66
    2     4     4     1.06003839    -0.83404535 -2788.71912951    -0.83404535    -0.01401107  0.12D-02  0.89D-03   287.66
    2     5     5     1.06309823    -0.83356115 -2788.71864529    -0.83356115    -0.01439501  0.12D-02  0.10D-02   287.66
    2     6     6     1.06310127    -0.83350704 -2788.71859118    -0.83350704    -0.01442891  0.12D-02  0.11D-02   287.66
    2     7     7     1.06042157    -0.83461613 -2788.71646608    -0.83461613    -0.01389163  0.12D-02  0.89D-03   287.66
    2     8     8     1.06039964    -0.83457415 -2788.71642409    -0.83457415    -0.01391540  0.12D-02  0.89D-03   287.66
    2     9     9     1.06039225    -0.83456429 -2788.71641421    -0.83456429    -0.01391796  0.12D-02  0.89D-03   287.66
    2    10    10     1.07581585    -0.83032881 -2788.69636708    -0.83032881    -0.02284865  0.76D-02  0.10D-02   287.66
    3     1     1     1.06210980    -0.87026739 -2789.14754844    -0.02018911    -0.00079085  0.14D-04  0.94D-04   541.71
    3     2     2     1.06056548    -0.84775770 -2788.73284187    -0.01368730    -0.00056770  0.19D-04  0.76D-04   541.71
    3     3     3     1.06055437    -0.84775433 -2788.73283850    -0.01370322    -0.00057030  0.19D-04  0.76D-04   541.71
    3     4     4     1.06054826    -0.84774975 -2788.73283391    -0.01370440    -0.00057203  0.19D-04  0.76D-04   541.71
    3     5     5     1.06083231    -0.84768823 -2788.73277237    -0.01412708    -0.00060034  0.18D-04  0.86D-04   541.71
    3     6     6     1.06080465    -0.84767405 -2788.73275820    -0.01416702    -0.00060648  0.18D-04  0.87D-04   541.71
    3     7     7     1.06086151    -0.84824578 -2788.73009573    -0.01362965    -0.00059234  0.22D-04  0.79D-04   541.71
    3     8     8     1.06084340    -0.84823777 -2788.73008771    -0.01366362    -0.00059784  0.22D-04  0.80D-04   541.71
    3     9     9     1.06083681    -0.84823277 -2788.73008269    -0.01366849    -0.00060004  0.22D-04  0.80D-04   541.71
    3    10    10     1.06277901    -0.85280984 -2788.71884811    -0.02248103    -0.00092603  0.78D-04  0.10D-03   541.71
    4     1     1     1.06551961    -0.87122952 -2789.14851057    -0.00096213    -0.00005378  0.21D-05  0.55D-05   796.58
    4     2     2     1.06249220    -0.84846700 -2788.73355117    -0.00070930    -0.00005992  0.22D-05  0.68D-05   796.58
    4     3     3     1.06249138    -0.84846688 -2788.73355105    -0.00071255    -0.00006001  0.22D-05  0.68D-05   796.58
    4     4     4     1.06249147    -0.84846568 -2788.73354984    -0.00071593    -0.00006066  0.23D-05  0.69D-05   796.58
    4     5     5     1.06233218    -0.84845583 -2788.73353998    -0.00076760    -0.00006919  0.25D-05  0.79D-05   796.58
    4     6     6     1.06233157    -0.84845232 -2788.73353646    -0.00077826    -0.00007102  0.26D-05  0.81D-05   796.58
    4     7     7     1.06275354    -0.84899488 -2788.73084483    -0.00074910    -0.00006503  0.24D-05  0.73D-05   796.58
    4     8     8     1.06275083    -0.84899462 -2788.73084456    -0.00075685    -0.00006550  0.24D-05  0.73D-05   796.58
    4     9     9     1.06274994    -0.84899360 -2788.73084352    -0.00076083    -0.00006612  0.24D-05  0.74D-05   796.58
    4    10    10     1.06405909    -0.85390019 -2788.71993846    -0.00109035    -0.00009136  0.43D-05  0.11D-04   796.58
    5     1     1     1.06606521    -0.87129557 -2789.14857663    -0.00006606    -0.00000422  0.12D-06  0.42D-06  1050.70
    5     2     2     1.06293004    -0.84854163 -2788.73362580    -0.00007463    -0.00000619  0.25D-06  0.71D-06  1050.70
    5     3     3     1.06292915    -0.84854153 -2788.73362570    -0.00007465    -0.00000617  0.25D-06  0.71D-06  1050.70
    5     4     4     1.06292966    -0.84854131 -2788.73362547    -0.00007563    -0.00000631  0.25D-06  0.72D-06  1050.70
    5     5     5     1.06291099    -0.84854110 -2788.73362524    -0.00008527    -0.00000648  0.27D-06  0.72D-06  1050.70
    5     6     6     1.06291205    -0.84854037 -2788.73362451    -0.00008805    -0.00000694  0.28D-06  0.79D-06  1050.70
    5     7     7     1.06319509    -0.84907580 -2788.73092576    -0.00008092    -0.00000654  0.25D-06  0.73D-06  1050.70
    5     8     8     1.06319610    -0.84907571 -2788.73092565    -0.00008109    -0.00000657  0.25D-06  0.74D-06  1050.70
    5     9     9     1.06319522    -0.84907565 -2788.73092557    -0.00008205    -0.00000664  0.25D-06  0.74D-06  1050.70
    5    10    10     1.06464819    -0.85401468 -2788.72005295    -0.00011449    -0.00001001  0.57D-06  0.11D-05  1050.70
    6     1     1     1.06605733    -0.87130060 -2789.14858166    -0.00000503    -0.00000041  0.83D-08  0.43D-07  1304.87
    6     2     2     1.06291126    -0.84854943 -2788.73363360    -0.00000780    -0.00000082  0.19D-07  0.10D-06  1304.87
    6     3     3     1.06291102    -0.84854931 -2788.73363348    -0.00000777    -0.00000081  0.19D-07  0.10D-06  1304.87
    6     4     4     1.06291046    -0.84854928 -2788.73363344    -0.00000797    -0.00000084  0.20D-07  0.11D-06  1304.87
    6     5     5     1.06291195    -0.84854912 -2788.73363327    -0.00000802    -0.00000087  0.23D-07  0.12D-06  1304.87
    6     6     6     1.06291124    -0.84854902 -2788.73363316    -0.00000865    -0.00000093  0.24D-07  0.12D-06  1304.87
    6     7     7     1.06318344    -0.84908394 -2788.73093389    -0.00000813    -0.00000085  0.20D-07  0.11D-06  1304.87
    6     8     8     1.06318362    -0.84908392 -2788.73093386    -0.00000821    -0.00000086  0.20D-07  0.11D-06  1304.87
    6     9     9     1.06318299    -0.84908392 -2788.73093384    -0.00000828    -0.00000087  0.20D-07  0.11D-06  1304.87
    6    10    10     1.06465789    -0.85402695 -2788.72006522    -0.00001226    -0.00000125  0.42D-07  0.16D-06  1304.87
    7     1     1     1.06605851    -0.87130110 -2789.14858216    -0.00000050    -0.00000004  0.10D-08  0.46D-08  1558.93
    7     2     2     1.06291960    -0.84855051 -2788.73363468    -0.00000108    -0.00000014  0.50D-08  0.15D-07  1558.93
    7     3     3     1.06291920    -0.84855039 -2788.73363456    -0.00000108    -0.00000014  0.52D-08  0.16D-07  1558.93
    7     4     4     1.06291948    -0.84855039 -2788.73363455    -0.00000111    -0.00000014  0.49D-08  0.15D-07  1558.93
    7     5     5     1.06291833    -0.84855038 -2788.73363452    -0.00000126    -0.00000018  0.66D-08  0.19D-07  1558.93
    7     6     6     1.06291906    -0.84855023 -2788.73363438    -0.00000122    -0.00000016  0.58D-08  0.17D-07  1558.93
    7     7     7     1.06319288    -0.84908507 -2788.73093502    -0.00000113    -0.00000015  0.52D-08  0.17D-07  1558.93
    7     8     8     1.06319282    -0.84908508 -2788.73093502    -0.00000116    -0.00000016  0.54D-08  0.17D-07  1558.93
    7     9     9     1.06319265    -0.84908509 -2788.73093501    -0.00000116    -0.00000016  0.54D-08  0.17D-07  1558.93
    7    10    10     1.06468052    -0.85402856 -2788.72006683    -0.00000162    -0.00000024  0.13D-07  0.27D-07  1558.93
    8     1     1     1.06605966    -0.87130111 -2789.14858216    -0.00000001    -0.00000004  0.67D-09  0.41D-08  1796.93
    8     2     2     1.06292681    -0.84855068 -2788.73363485    -0.00000017    -0.00000002  0.16D-08  0.22D-08  1796.93
    8     3     3     1.06292617    -0.84855057 -2788.73363474    -0.00000018    -0.00000003  0.19D-08  0.28D-08  1796.93
    8     4     4     1.06292658    -0.84855058 -2788.73363473    -0.00000018    -0.00000003  0.16D-08  0.23D-08  1796.93
    8     5     5     1.06292670    -0.84855058 -2788.73363472    -0.00000020    -0.00000002  0.15D-08  0.22D-08  1796.93
    8     6     6     1.06292653    -0.84855042 -2788.73363457    -0.00000019    -0.00000003  0.16D-08  0.24D-08  1796.93
    8     7     7     1.06320051    -0.84908526 -2788.73093521    -0.00000019    -0.00000003  0.18D-08  0.26D-08  1796.93
    8     8     8     1.06320060    -0.84908527 -2788.73093521    -0.00000019    -0.00000003  0.18D-08  0.25D-08  1796.93
    8     9     9     1.06320050    -0.84908528 -2788.73093520    -0.00000019    -0.00000003  0.18D-08  0.25D-08  1796.93
    8    10    10     1.06468489    -0.85402889 -2788.72006716    -0.00000033    -0.00000002  0.12D-08  0.28D-08  1796.93


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   6.2%
 P   0.3%  48.1%  34.5%

 Initialization:   1.7%
 Other:            8.3%

 Total CPU:     1796.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9666426   0.0000000   0.0000002   0.0000000  -0.0000000   0.0000001  -0.0000000   0.0000000
                           -0.0000000  -0.0571851
 222222222222/\00           0.0334674  -0.0000918  -0.0252363  -0.0016396  -0.0013719   0.7902898  -0.0000000   0.0000001
                           -0.0000000   0.5568858
 22222222222/20\0           0.0334676  -0.0001168   0.6949716   0.0480664  -0.0234652  -0.3733058   0.0000004  -0.0000000
                            0.0000001   0.5568825
 22222222222/200\          -0.0000000   0.6847666   0.0002035  -0.0008546  -0.0004506   0.0000835   0.6841585   0.0298272
                            0.0065729   0.0000000
 2222222222/220\0          -0.0000000   0.6847621   0.0002041  -0.0008544  -0.0004506   0.0000835  -0.6841628  -0.0298275
                           -0.0065729   0.0000000
 222222222222/00\          -0.0000000   0.0004402   0.0243072  -0.0021422   0.6843380   0.0019597  -0.0287341   0.6785199
                           -0.0881988   0.0000000
 2222222222/22\00          -0.0000000   0.0004401   0.0243063  -0.0021417   0.6843165   0.0019598   0.0287350  -0.6785413
                            0.0882013  -0.0000000
 222222222222/0\0          -0.0000000   0.0008690  -0.0471630   0.6831360   0.0038130  -0.0000820   0.0103537  -0.0878352
                           -0.6790988  -0.0000000
 22222222222/2\00          -0.0000000   0.0008690  -0.0471620   0.6831197   0.0038132  -0.0000820  -0.0103538   0.0878378
                            0.6791151   0.0000000
 2222222222/2200\           0.0334674   0.0002085  -0.6697417  -0.0464273   0.0248374  -0.4169933  -0.0000003  -0.0000001
                           -0.0000001   0.5568768

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968129    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.027528
 2          -0.000000    0.000246    0.000623    0.969943    0.001231   -0.000073    0.000000   -0.000003   -0.000000   -0.000000
 3           0.000000   -0.690155    0.034430    0.000289   -0.066804    0.677370    0.000000   -0.000000    0.000001    0.000000
 4           0.000000   -0.047876   -0.003034   -0.001210    0.967625    0.046804   -0.000000   -0.000000   -0.000012    0.000000
 5          -0.000000    0.026309    0.969324   -0.000638    0.005401   -0.021930    0.000010    0.000000    0.000000    0.000000
 6          -0.000000   -0.679334    0.002776    0.000118   -0.000116   -0.692308   -0.000000    0.000000    0.000000   -0.000005
 7           0.000000   -0.000000    0.000000    0.000003   -0.000000    0.000000   -0.040692    0.968855   -0.014662    0.000000
 8          -0.000000   -0.000000   -0.000010    0.000000    0.000002   -0.000000    0.960882    0.042239    0.124387   -0.000000
 9          -0.000000   -0.000000    0.000001    0.000000    0.000013    0.000000   -0.124902    0.009308    0.961698    0.000000
 10          0.029472   -0.000003   -0.000000    0.000000   -0.000000   -0.000003    0.000000   -0.000000    0.000000    0.968692

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968520   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000964
 2          -0.000000    0.969944    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.969944    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.969944    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.969944    0.000000    0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.969944   -0.000000    0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.969820    0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.969820    0.000000    0.000000
 9           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.969820   -0.000000
 10          0.000964    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.969140


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96812914 (fixed)   0.96852084 (relaxed)   0.96851995 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000310   -0.00001693   -0.84472077
 Singles      0.00458002   -0.01447544   -0.01732275
 Pairs        0.06147984    0.04369716   -0.00925758
 Total        1.06606296    0.02920479   -0.87130111
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.27692518
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89101025
 One electron energy                -3876.96947208
 Two electron energy                 1087.82088992
 Virial quotient                       -0.93130220
 Correlation energy                    -0.87165698
 !MRCI STATE 1.1 Energy             -2789.148582164329

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.20616641 (Davidson, fixed reference)
 Cluster corrected energies         -2789.20616470 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.20616641 (Davidson, rotated reference)

 Cluster corrected energies         -2789.20486453 (Pople, fixed reference)
 Cluster corrected energies         -2789.20486277 (Pople, relaxed reference)
 Cluster corrected energies         -2789.20486453 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96994313 (fixed)   0.96994545 (relaxed)   0.96994414 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000734   -0.00001730   -0.76545749
 Singles      0.01007287   -0.03492569   -0.04089672
 Pairs        0.05285441    0.00000005   -0.04219647
 Total        1.06293462   -0.03494295   -0.84855068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88508416
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73886084
 One electron energy                -3865.01785081
 Two electron energy                 1076.28421596
 Virial quotient                       -0.93152201
 Correlation energy                    -0.84855069
 !MRCI STATE 2.1 Energy             -2788.733634848225

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78703806 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78703563 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78703806 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78568654 (Pople, fixed reference)
 Cluster corrected energies         -2788.78568404 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78568654 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.69015461 (fixed)   0.96994574 (relaxed)   0.96994443 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000735   -0.00001730   -0.76545773
 Singles      0.01007242   -0.03492536   -0.04089613
 Pairs        0.05285421   -0.00000041   -0.04219671
 Total        1.06293398   -0.03494307   -0.84855057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88508416
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73850407
 One electron energy                -3865.01757522
 Two electron energy                 1076.28394048
 Virial quotient                       -0.93152212
 Correlation energy                    -0.84855058
 !MRCI STATE 3.1 Energy             -2788.733634736716

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78703740 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78703496 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78703740 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78568586 (Pople, fixed reference)
 Cluster corrected energies         -2788.78568336 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78568586 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96762513 (fixed)   0.96994556 (relaxed)   0.96994425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000734   -0.00001730   -0.76545760
 Singles      0.01007279   -0.03492558   -0.04089651
 Pairs        0.05285425   -0.00000003   -0.04219647
 Total        1.06293438   -0.03494291   -0.84855058
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88508414
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73878044
 One electron energy                -3865.01779816
 Two electron energy                 1076.28416342
 Virial quotient                       -0.93152203
 Correlation energy                    -0.84855059
 !MRCI STATE 4.1 Energy             -2788.733634734479

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78703774 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78703531 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78703774 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78568621 (Pople, fixed reference)
 Cluster corrected energies         -2788.78568371 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78568621 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96932401 (fixed)   0.96994550 (relaxed)   0.96994419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000734   -0.00001730   -0.76545759
 Singles      0.01007274   -0.03492552   -0.04089648
 Pairs        0.05285442   -0.00000001   -0.04219651
 Total        1.06293450   -0.03494283   -0.84855058
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88508417
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73885956
 One electron energy                -3865.01784963
 Two electron energy                 1076.28421491
 Virial quotient                       -0.93152201
 Correlation energy                    -0.84855055
 !MRCI STATE 5.1 Energy             -2788.733634720782

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78703783 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78703539 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78703783 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78568630 (Pople, fixed reference)
 Cluster corrected energies         -2788.78568380 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78568630 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.69230772 (fixed)   0.96994558 (relaxed)   0.96994427 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000735   -0.00001730   -0.76546155
 Singles      0.01007221   -0.03492506   -0.04089583
 Pairs        0.05285478    0.00000377   -0.04219304
 Total        1.06293434   -0.03493859   -0.84855042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88508416
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73872833
 One electron energy                -3865.01774553
 Two electron energy                 1076.28411096
 Virial quotient                       -0.93152205
 Correlation energy                    -0.84855041
 !MRCI STATE 6.1 Energy             -2788.733634565125

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78703753 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78703509 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78703753 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78568600 (Pople, fixed reference)
 Cluster corrected energies         -2788.78568349 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78568600 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96885515 (fixed)   0.96982050 (relaxed)   0.96982013 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000560   -0.00001765   -0.76515353
 Singles      0.01036088   -0.03557382   -0.04173082
 Pairs        0.05283998   -0.00000001   -0.04220091
 Total        1.06320647   -0.03559148   -0.84908526
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88184994
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73797006
 One electron energy                -3865.00720762
 Two electron energy                 1076.27627241
 Virial quotient                       -0.93152138
 Correlation energy                    -0.84908527
 !MRCI STATE 7.1 Energy             -2788.730935214318

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78460290 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78460221 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78460290 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78325724 (Pople, fixed reference)
 Cluster corrected energies         -2788.78325653 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78325724 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96088224 (fixed)   0.96982046 (relaxed)   0.96982009 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000560   -0.00001765   -0.76515353
 Singles      0.01036086   -0.03557379   -0.04173080
 Pairs        0.05284009    0.00000001   -0.04220094
 Total        1.06320656   -0.03559142   -0.84908527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88184995
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73802062
 One electron energy                -3865.00724364
 Two electron energy                 1076.27630843
 Virial quotient                       -0.93152137
 Correlation energy                    -0.84908526
 !MRCI STATE 8.1 Energy             -2788.730935210603

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78460296 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78460228 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78460296 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78325732 (Pople, fixed reference)
 Cluster corrected energies         -2788.78325661 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78325732 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96169846 (fixed)   0.96982051 (relaxed)   0.96982014 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000560   -0.00001765   -0.76515357
 Singles      0.01036089   -0.03557382   -0.04173082
 Pairs        0.05283997   -0.00000000   -0.04220089
 Total        1.06320646   -0.03559147   -0.84908528
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88184992
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73797290
 One electron energy                -3865.00721541
 Two electron energy                 1076.27628021
 Virial quotient                       -0.93152138
 Correlation energy                    -0.84908528
 !MRCI STATE 9.1 Energy             -2788.730935198801

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78460287 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78460218 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78460287 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78325722 (Pople, fixed reference)
 Cluster corrected energies         -2788.78325651 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78325722 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96869249 (fixed)   0.96914434 (relaxed)   0.96914026 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001299   -0.00003517   -0.00016103
 Singles      0.01138573   -0.03650469   -0.04341906
 Pairs        0.05330001   -0.81736384   -0.81044880
 Total        1.06469872   -0.85390370   -0.85402889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86639415
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.89127049
 One electron energy                -3865.57271644
 Two electron energy                 1076.85264928
 Virial quotient                       -0.93147006
 Correlation energy                    -0.85367301
 !MRCI STATE 10.1 Energy            -2788.720067162397

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.77529872 (Davidson, fixed reference)
 Cluster corrected energies         -2788.77529106 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.77529872 (Davidson, rotated reference)

 Cluster corrected energies         -2788.77398492 (Pople, fixed reference)
 Cluster corrected energies         -2788.77397702 (Pople, relaxed reference)
 Cluster corrected energies         -2788.77398492 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      640.81       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2101.18   2092.61      7.04      0.08      1.26
 REAL TIME  *      2179.32 SEC
 DISK USED  *       688.22 MB (local),        9.48 GB (total)
 SF USED    *         6.60 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.20616641  AU                              
 SETTING HLSDIAG(2)     =     -2788.78703806  AU                              
 SETTING HLSDIAG(3)     =     -2788.78703740  AU                              
 SETTING HLSDIAG(4)     =     -2788.78703774  AU                              
 SETTING HLSDIAG(5)     =     -2788.78703783  AU                              
 SETTING HLSDIAG(6)     =     -2788.78703753  AU                              
 SETTING HLSDIAG(7)     =     -2788.78460290  AU                              
 SETTING HLSDIAG(8)     =     -2788.78460296  AU                              
 SETTING HLSDIAG(9)     =     -2788.78460287  AU                              
 SETTING HLSDIAG(10)    =     -2788.77529872  AU                              


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
     1     -2787.89467537
     2     -2787.88695532
     3     -2787.88695532
     4     -2787.88695531
     5     -2787.88695530
     6     -2787.88695530
     7     -2787.88201962
     8     -2787.88201961
     9     -2787.88201959

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1812D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8388D-07

 Number of blocks in overlap matrix:   937   Smallest eigenvalue:  0.84D-07
 Number of N-2 electron functions:    2213
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:       4749855
 Number of doubly external configurations:       4996205
 Total number of contracted configurations:      9762284
 Total number of uncontracted configurations:  316326744

 Diagonal Coupling coefficients finished.               Storage:  18301693 words, CPU-Time:     46.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1332620 words, CPU-time:      0.33 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.89467537     0.00000000    -0.97786365  0.21D-01  0.68D-01    50.97
    1     2     2     1.00000000     0.00000000 -2787.88695532     0.00000000    -0.97688070  0.19D-01  0.68D-01    50.97
    1     3     3     1.00000000     0.00000000 -2787.88695532     0.00000000    -0.97441073  0.19D-01  0.66D-01    50.97
    1     4     4     1.00000000     0.00000000 -2787.88695531    -0.00000000    -0.97429159  0.19D-01  0.66D-01    50.97
    1     5     5     1.00000000     0.00000000 -2787.88695530     0.00000000    -0.97435951  0.19D-01  0.66D-01    50.97
    1     6     6     1.00000000     0.00000000 -2787.88695530     0.00000000    -0.97724624  0.19D-01  0.68D-01    50.97
    1     7     7     1.00000000     0.00000000 -2787.88201962    -0.00000000    -0.97357811  0.20D-01  0.66D-01    50.97
    1     8     8     1.00000000     0.00000000 -2787.88201961     0.00000000    -0.97350445  0.20D-01  0.66D-01    50.97
    1     9     9     1.00000000     0.00000000 -2787.88201959    -0.00000000    -0.97356176  0.20D-01  0.66D-01    50.97
    2     1     1     1.06471614    -0.83271364 -2788.72738901    -0.83271364    -0.01473677  0.14D-02  0.10D-02   367.30
    2     2     2     1.06290181    -0.83503775 -2788.72199307    -0.83503775    -0.01341589  0.11D-02  0.82D-03   367.30
    2     3     3     1.06288208    -0.83502705 -2788.72198236    -0.83502705    -0.01341673  0.11D-02  0.82D-03   367.30
    2     4     4     1.06287173    -0.83500659 -2788.72196190    -0.83500659    -0.01342672  0.11D-02  0.82D-03   367.30
    2     5     5     1.06369216    -0.83379491 -2788.72075021    -0.83379490    -0.01429667  0.11D-02  0.10D-02   367.30
    2     6     6     1.06357552    -0.83370546 -2788.72066076    -0.83370546    -0.01432461  0.11D-02  0.10D-02   367.30
    2     7     7     1.06277983    -0.83508973 -2788.71710935    -0.83508973    -0.01355767  0.12D-02  0.85D-03   367.30
    2     8     8     1.06279090    -0.83508797 -2788.71710758    -0.83508797    -0.01356283  0.12D-02  0.85D-03   367.30
    2     9     9     1.06277047    -0.83507231 -2788.71709190    -0.83507231    -0.01356851  0.12D-02  0.85D-03   367.30
    3     1     1     1.06102300    -0.84703761 -2788.74171299    -0.01432398    -0.00054112  0.19D-04  0.77D-04   683.10
    3     2     2     1.06139572    -0.84788318 -2788.73483849    -0.01284542    -0.00042825  0.15D-04  0.58D-04   683.10
    3     3     3     1.06138746    -0.84787757 -2788.73483289    -0.01285053    -0.00043101  0.15D-04  0.59D-04   683.10
    3     4     4     1.06137965    -0.84787225 -2788.73482756    -0.01286566    -0.00043409  0.15D-04  0.59D-04   683.10
    3     5     5     1.06104765    -0.84768716 -2788.73464246    -0.01389225    -0.00054890  0.16D-04  0.80D-04   683.10
    3     6     6     1.06099318    -0.84765901 -2788.73461431    -0.01395355    -0.00056528  0.16D-04  0.82D-04   683.10
    3     7     7     1.06140471    -0.84819401 -2788.73021363    -0.01310428    -0.00048235  0.23D-04  0.66D-04   683.10
    3     8     8     1.06140248    -0.84819176 -2788.73021137    -0.01310379    -0.00048321  0.23D-04  0.66D-04   683.10
    3     9     9     1.06139679    -0.84818824 -2788.73020783    -0.01311593    -0.00048534  0.23D-04  0.66D-04   683.10
    4     1     1     1.06216890    -0.84770517 -2788.74238054    -0.00066755    -0.00005742  0.23D-05  0.68D-05   999.18
    4     2     2     1.06249358    -0.84839301 -2788.73534833    -0.00050984    -0.00004236  0.15D-05  0.55D-05   999.18
    4     3     3     1.06249171    -0.84839193 -2788.73534725    -0.00051435    -0.00004308  0.16D-05  0.55D-05   999.18
    4     4     4     1.06249036    -0.84839116 -2788.73534647    -0.00051891    -0.00004362  0.16D-05  0.56D-05   999.18
    4     5     5     1.06235214    -0.84837220 -2788.73532750    -0.00068504    -0.00006000  0.22D-05  0.71D-05   999.18
    4     6     6     1.06234088    -0.84836882 -2788.73532413    -0.00070982    -0.00006266  0.23D-05  0.73D-05   999.18
    4     7     7     1.06262617    -0.84877882 -2788.73079844    -0.00058481    -0.00004924  0.18D-05  0.61D-05   999.18
    4     8     8     1.06262560    -0.84877827 -2788.73079788    -0.00058651    -0.00004958  0.18D-05  0.62D-05   999.18
    4     9     9     1.06262548    -0.84877781 -2788.73079740    -0.00058957    -0.00004991  0.18D-05  0.62D-05   999.18
    5     1     1     1.06269890    -0.84777569 -2788.74245106    -0.00007052    -0.00000487  0.28D-06  0.50D-06  1316.54
    5     2     2     1.06290319    -0.84844613 -2788.73540145    -0.00005312    -0.00000409  0.18D-06  0.47D-06  1316.54
    5     3     3     1.06290379    -0.84844603 -2788.73540135    -0.00005410    -0.00000418  0.19D-06  0.48D-06  1316.54
    5     4     4     1.06290407    -0.84844596 -2788.73540127    -0.00005480    -0.00000423  0.19D-06  0.48D-06  1316.54
    5     5     5     1.06289517    -0.84844531 -2788.73540061    -0.00007311    -0.00000496  0.23D-06  0.54D-06  1316.54
    5     6     6     1.06289556    -0.84844505 -2788.73540035    -0.00007622    -0.00000516  0.23D-06  0.55D-06  1316.54
    5     7     7     1.06306759    -0.84883972 -2788.73085934    -0.00006090    -0.00000450  0.20D-06  0.52D-06  1316.54
    5     8     8     1.06306783    -0.84883965 -2788.73085926    -0.00006138    -0.00000455  0.20D-06  0.52D-06  1316.54
    5     9     9     1.06306827    -0.84883962 -2788.73085921    -0.00006181    -0.00000459  0.20D-06  0.53D-06  1316.54
    6     1     1     1.06270866    -0.84778137 -2788.74245674    -0.00000568    -0.00000047  0.15D-07  0.65D-07  1633.03
    6     2     2     1.06290805    -0.84845109 -2788.73540641    -0.00000497    -0.00000050  0.14D-07  0.72D-07  1633.03
    6     3     3     1.06291389    -0.84845108 -2788.73540640    -0.00000505    -0.00000046  0.13D-07  0.66D-07  1633.03
    6     4     4     1.06291404    -0.84845108 -2788.73540639    -0.00000512    -0.00000045  0.12D-07  0.64D-07  1633.03
    6     5     5     1.06291377    -0.84845107 -2788.73540638    -0.00000577    -0.00000047  0.13D-07  0.66D-07  1633.03
    6     6     6     1.06290742    -0.84845107 -2788.73540637    -0.00000602    -0.00000051  0.15D-07  0.73D-07  1633.03
    6     7     7     1.06308239    -0.84884512 -2788.73086475    -0.00000540    -0.00000050  0.14D-07  0.72D-07  1633.03
    6     8     8     1.06308230    -0.84884512 -2788.73086473    -0.00000547    -0.00000051  0.14D-07  0.73D-07  1633.03
    6     9     9     1.06308229    -0.84884514 -2788.73086473    -0.00000551    -0.00000051  0.14D-07  0.73D-07  1633.03
    7     1     1     1.06271403    -0.84778197 -2788.74245734    -0.00000060    -0.00000007  0.29D-08  0.89D-08  1949.25
    7     2     2     1.06291466    -0.84845175 -2788.73540707    -0.00000066    -0.00000008  0.31D-08  0.10D-07  1949.25
    7     3     3     1.06291415    -0.84845172 -2788.73540704    -0.00000064    -0.00000008  0.30D-08  0.10D-07  1949.25
    7     4     4     1.06291654    -0.84845170 -2788.73540701    -0.00000062    -0.00000008  0.30D-08  0.90D-08  1949.25
    7     5     5     1.06291644    -0.84845169 -2788.73540699    -0.00000061    -0.00000008  0.30D-08  0.91D-08  1949.25
    7     6     6     1.06291670    -0.84845168 -2788.73540698    -0.00000061    -0.00000007  0.30D-08  0.89D-08  1949.25
    7     7     7     1.06308679    -0.84884579 -2788.73086542    -0.00000067    -0.00000009  0.33D-08  0.11D-07  1949.25
    7     8     8     1.06308663    -0.84884580 -2788.73086541    -0.00000068    -0.00000009  0.34D-08  0.11D-07  1949.25
    7     9     9     1.06308669    -0.84884582 -2788.73086541    -0.00000068    -0.00000009  0.34D-08  0.11D-07  1949.25
    8     1     1     1.06271766    -0.84778205 -2788.74245743    -0.00000009    -0.00000001  0.75D-09  0.11D-08  2266.09
    8     2     2     1.06291968    -0.84845185 -2788.73540717    -0.00000010    -0.00000001  0.81D-09  0.13D-08  2266.09
    8     3     3     1.06291957    -0.84845182 -2788.73540713    -0.00000010    -0.00000001  0.80D-09  0.14D-08  2266.09
    8     4     4     1.06291976    -0.84845179 -2788.73540710    -0.00000009    -0.00000001  0.78D-09  0.12D-08  2266.09
    8     5     5     1.06291971    -0.84845178 -2788.73540708    -0.00000009    -0.00000001  0.78D-09  0.12D-08  2266.09
    8     6     6     1.06291981    -0.84845177 -2788.73540707    -0.00000009    -0.00000001  0.76D-09  0.11D-08  2266.09
    8     7     7     1.06309104    -0.84884590 -2788.73086552    -0.00000011    -0.00000002  0.97D-09  0.15D-08  2266.09
    8     8     8     1.06309094    -0.84884591 -2788.73086552    -0.00000011    -0.00000002  0.98D-09  0.15D-08  2266.09
    8     9     9     1.06309099    -0.84884593 -2788.73086552    -0.00000011    -0.00000002  0.98D-09  0.15D-08  2266.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   7.4%
 P   0.3%  58.4%  25.3%

 Initialization:   2.1%
 Other:            5.7%

 Total CPU:     2266.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2200/           0.5595992  -0.0206126   0.7907859  -0.0007692  -0.0049644   0.0009808  -0.0000000   0.0000002
                           -0.0000001
 22222222222/20/0           0.5596066   0.6951286  -0.3775797   0.0005748  -0.0038158  -0.0004299   0.0000000  -0.0000002
                           -0.0000001
 222222222222/00/          -0.0000000   0.0000010  -0.0008297  -0.0062770   0.0041537   0.6850442   0.6774460   0.0771573
                           -0.0644952
 2222222222/22/00          -0.0000000   0.0000010  -0.0008297  -0.0062773   0.0041537   0.6850430  -0.6774471  -0.0771576
                            0.0644955
 222222222222/0/0          -0.0000001  -0.0001612   0.0006868   0.6850407   0.0051326   0.0062467   0.0563444   0.0725905
                            0.6786738
 22222222222/2/00          -0.0000001  -0.0001615   0.0006866   0.6850341   0.0051325   0.0062468  -0.0563452  -0.0725913
                           -0.6786804
 2222222222/220/0           0.0000001   0.0061853   0.0044620  -0.0050972   0.6850172  -0.0041949   0.0832951  -0.6766210
                            0.0654557
 22222222222/200/           0.0000000   0.0061854   0.0044616  -0.0050971   0.6850053  -0.0041947  -0.0832965   0.6766329
                           -0.0654569
 222222222222//00           0.5596022  -0.6745214  -0.4131990   0.0001946   0.0087800  -0.0005509   0.0000000   0.0000000
                            0.0000002

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970041   -0.000003   -0.000000    0.000000   -0.000000    0.000004   -0.000000   -0.000000    0.000000
 2          -0.000003    0.249879    0.000001    0.008757   -0.000228    0.937168    0.000000    0.000000    0.000000
 3           0.000004    0.937171   -0.001175    0.006317    0.000972   -0.249939    0.000000   -0.000000    0.000000
 4           0.000000   -0.000829   -0.008887   -0.007217    0.969880    0.000525    0.000000    0.000000    0.000005
 5          -0.000000   -0.008359    0.005881    0.969843    0.007267   -0.006832   -0.000000   -0.000011    0.000000
 6           0.000000    0.001178    0.969889   -0.005939    0.008844   -0.000258   -0.000001    0.000000   -0.000000
 7          -0.000000   -0.000000    0.000001   -0.000001   -0.000001   -0.000000    0.959357   -0.117958    0.079792
 8           0.000000    0.000000    0.000000    0.000011   -0.000001   -0.000000    0.109266    0.958196    0.102799
 9          -0.000000   -0.000000   -0.000000   -0.000001   -0.000005   -0.000000   -0.091334   -0.092695    0.961100

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970041    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.969949   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.969949   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.969949   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.969949   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.969948    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.969869   -0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969869   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.969869


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97004144 (fixed)   0.97004179 (relaxed)   0.97004144 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000350   -0.00000587   -0.76452925
 Singles      0.01026628   -0.03530341   -0.04140842
 Pairs        0.05245161   -0.00000002   -0.04184438
 Total        1.06272139   -0.03530931   -0.84778205
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89467537
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.72208591
 One electron energy                -3864.99516994
 Two electron energy                 1076.25271251
 Virial quotient                       -0.93153017
 Correlation energy                    -0.84778205
 !MRCI STATE 1.1 Energy             -2788.742457427723

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.79563149 (Davidson, fixed reference)
 Cluster corrected energies         -2788.79563085 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.79563149 (Davidson, rotated reference)

 Cluster corrected energies         -2788.79387132 (Pople, fixed reference)
 Cluster corrected energies         -2788.79387066 (Pople, relaxed reference)
 Cluster corrected energies         -2788.79387132 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93716798 (fixed)   0.96994899 (relaxed)   0.96994855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000496   -0.00001315   -0.76500412
 Singles      0.01020732   -0.03531395   -0.04136983
 Pairs        0.05271267   -0.00000015   -0.04207790
 Total        1.06292495   -0.03532725   -0.84845185
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88695530
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73258057
 One electron energy                -3865.00356102
 Two electron energy                 1076.26815386
 Virial quotient                       -0.93152455
 Correlation energy                    -0.84845186
 !MRCI STATE 2.1 Energy             -2788.735407165297

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78879596 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78879514 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78879596 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78703780 (Pople, fixed reference)
 Cluster corrected energies         -2788.78703697 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78703780 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93717057 (fixed)   0.96994904 (relaxed)   0.96994860 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000496   -0.00001315   -0.76500415
 Singles      0.01020733   -0.03531399   -0.04136984
 Pairs        0.05271254   -0.00000012   -0.04207783
 Total        1.06292484   -0.03532727   -0.84845182
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88695532
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73259624
 One electron energy                -3865.00356806
 Two electron energy                 1076.26816092
 Virial quotient                       -0.93152455
 Correlation energy                    -0.84845182
 !MRCI STATE 3.1 Energy             -2788.735407133681

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78879583 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78879501 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78879583 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78703766 (Pople, fixed reference)
 Cluster corrected energies         -2788.78703683 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78703766 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96988046 (fixed)   0.96994895 (relaxed)   0.96994852 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000496   -0.00001315   -0.76500029
 Singles      0.01020746   -0.03531400   -0.04136992
 Pairs        0.05271261   -0.00000403   -0.04208157
 Total        1.06292503   -0.03533118   -0.84845179
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88695530
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73262554
 One electron energy                -3865.00361100
 Two electron energy                 1076.26820390
 Virial quotient                       -0.93152454
 Correlation energy                    -0.84845179
 !MRCI STATE 4.1 Energy             -2788.735407096386

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78879595 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78879514 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78879595 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78703779 (Pople, fixed reference)
 Cluster corrected energies         -2788.78703696 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78703779 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96984340 (fixed)   0.96994898 (relaxed)   0.96994854 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000496   -0.00001315   -0.76500409
 Singles      0.01020746   -0.03531400   -0.04136991
 Pairs        0.05271256   -0.00000003   -0.04207778
 Total        1.06292498   -0.03532718   -0.84845178
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88695531
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73261604
 One electron energy                -3865.00359957
 Two electron energy                 1076.26819248
 Virial quotient                       -0.93152454
 Correlation energy                    -0.84845177
 !MRCI STATE 5.1 Energy             -2788.735407082137

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78879589 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78879508 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78879589 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78703773 (Pople, fixed reference)
 Cluster corrected energies         -2788.78703690 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78703773 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96988924 (fixed)   0.96994893 (relaxed)   0.96994849 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000496   -0.00001315   -0.76500414
 Singles      0.01020743   -0.03531395   -0.04136988
 Pairs        0.05271269    0.00000006   -0.04207775
 Total        1.06292508   -0.03532704   -0.84845177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88695532
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73265056
 One electron energy                -3865.00362304
 Two electron energy                 1076.26821597
 Virial quotient                       -0.93152453
 Correlation energy                    -0.84845175
 !MRCI STATE 6.1 Energy             -2788.735407069603

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78879597 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78879515 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78879597 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78703781 (Pople, fixed reference)
 Cluster corrected energies         -2788.78703698 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78703781 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95935690 (fixed)   0.96987081 (relaxed)   0.96986936 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000707   -0.00001379   -0.70233666
 Singles      0.01023645   -0.03526608   -0.04134492
 Pairs        0.05285504   -0.06693273   -0.10516432
 Total        1.06309855   -0.10221260   -0.84884590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88201962
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73752908
 One electron energy                -3865.00251241
 Two electron energy                 1076.27164689
 Virial quotient                       -0.93152150
 Correlation energy                    -0.84884590
 !MRCI STATE 7.1 Energy             -2788.730865524096

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78442647 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78442377 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78442647 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78267045 (Pople, fixed reference)
 Cluster corrected energies         -2788.78266769 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78267045 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95819629 (fixed)   0.96987085 (relaxed)   0.96986940 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000707   -0.00001379   -0.68418321
 Singles      0.01023645   -0.03526609   -0.04134492
 Pairs        0.05285494   -0.08623171   -0.12331778
 Total        1.06309846   -0.12151158   -0.84884591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88201961
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73751473
 One electron energy                -3865.00250400
 Two electron energy                 1076.27163848
 Virial quotient                       -0.93152150
 Correlation energy                    -0.84884591
 !MRCI STATE 8.1 Energy             -2788.730865517485

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78442639 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78442369 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78442639 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78267036 (Pople, fixed reference)
 Cluster corrected energies         -2788.78266761 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78267036 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96109952 (fixed)   0.96987082 (relaxed)   0.96986937 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000707   -0.00001379   -0.00693849
 Singles      0.01023645   -0.03526610   -0.04134492
 Pairs        0.05285498   -0.80620953   -0.80056251
 Total        1.06309851   -0.84148941   -0.84884593
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88201959
 Nuclear energy                         0.00000000
 Kinetic energy                      2993.73751586
 One electron energy                -3865.00250933
 Two electron energy                 1076.27164382
 Virial quotient                       -0.93152150
 Correlation energy                    -0.84884592
 !MRCI STATE 9.1 Energy             -2788.730865515324

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.78442643 (Davidson, fixed reference)
 Cluster corrected energies         -2788.78442373 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.78442643 (Davidson, rotated reference)

 Cluster corrected energies         -2788.78267040 (Pople, fixed reference)
 Cluster corrected energies         -2788.78266765 (Pople, relaxed reference)
 Cluster corrected energies         -2788.78267040 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1320.71       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4752.26   2651.07   2092.61      7.04      0.08      1.26
 REAL TIME  *      4898.75 SEC
 DISK USED  *         1.34 GB (local),       18.77 GB (total)
 SF USED    *         7.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2788.79563085  AU                              
 SETTING HLSDIAG(12)    =     -2788.78879514  AU                              
 SETTING HLSDIAG(13)    =     -2788.78879501  AU                              
 SETTING HLSDIAG(14)    =     -2788.78879514  AU                              
 SETTING HLSDIAG(15)    =     -2788.78879508  AU                              
 SETTING HLSDIAG(16)    =     -2788.78879515  AU                              
 SETTING HLSDIAG(17)    =     -2788.78442377  AU                              
 SETTING HLSDIAG(18)    =     -2788.78442369  AU                              
 SETTING HLSDIAG(19)    =     -2788.78442373  AU                              


         HLSDIAG
    -2789.206166
    -2788.787038
    -2788.787037
    -2788.787038
    -2788.787038
    -2788.787038
    -2788.784603
    -2788.784603
    -2788.784603
    -2788.775299
    -2788.795631
    -2788.788795
    -2788.788795
    -2788.788795
    -2788.788795
    -2788.788795
    -2788.784424
    -2788.784424
    -2788.784424
                                                  

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

 Time for Seward_LS:       7.43 sec

 CPU time:      7.43 sec, REAL time:      7.71 sec


 SORTLS1 read    14261546. and wrote    14261546. SO integrals in    84 records. CPU time:      0.11 sec, REAL time:      0.22 sec
 SORTLS2 read    14261546. and wrote    69083406. SO integrals in    42 records. CPU time:      0.02 sec, REAL time:      0.14 sec

 FILE SIZES: FILE 1:    49.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    49.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1320.71       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4761.54      9.24   2651.07   2092.61      7.04      0.08      1.26
 REAL TIME  *      4908.60 SEC
 DISK USED  *         1.34 GB (local),       19.56 GB (total)
 SF USED    *         7.10 GB
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

 Original energies:  -2789.148582  -2788.733635  -2788.733635  -2788.733635  -2788.733635  -2788.733635  -2788.730935  -2788.730935
                     -2788.730935  -2788.720067
 Replaced energies:  -2789.206166  -2788.787038  -2788.787037  -2788.787038  -2788.787038  -2788.787038  -2788.784603  -2788.784603
                     -2788.784603  -2788.775299

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.742457  -2788.735407  -2788.735407  -2788.735407  -2788.735407  -2788.735407  -2788.730866  -2788.730866
                     -2788.730866
 Replaced energies:  -2788.795631  -2788.788795  -2788.788795  -2788.788795  -2788.788795  -2788.788795  -2788.784424  -2788.784424
                     -2788.784424



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.20616641

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   91988.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   91988.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   91988.11       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   91988.09       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   91988.16       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   92522.50       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92522.48       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92522.50       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94564.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.01       0.00      42.80   -1010.77     131.39      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00    1019.16      44.43       9.79       0.00

   12   2.1  1.0  1.0       0.00      -0.58     -22.27      -4.03    -638.85      -1.83     -26.45     626.86     -75.81       0.00
                           -0.00    -699.68      11.85       1.71       0.19       0.30     612.60      26.56       5.91      -0.00

   13   3.1  1.0  1.0       0.00      -0.09     -40.71      -0.62   -1176.28      -1.94      13.72    -339.59      48.22       0.00
                            0.00    1142.15       9.06      -1.63      -1.73       0.42     375.25      16.88       2.78       0.00

   14   4.1  1.0  1.0       0.00     669.67       5.67       4.53       0.29      10.90    -622.10     -27.20     -10.64       0.00
                           -0.00      -1.75     -33.28      -4.71    -668.91      -2.23     -26.22     616.29     -85.87      -0.00

   15   5.1  1.0  1.0      -0.00       4.18      42.78    -668.37       9.85      -7.04     -13.93      76.23     617.93      -0.00
                            0.01      -1.44    1334.11      96.47     -52.23      42.70      -8.23       4.76       3.07       0.01

   16   6.1  1.0  1.0      -0.00       6.40    -630.64     -39.71      24.15   -1180.68      -5.60      -1.12      -3.79      -0.01
                           -0.00       2.23     -54.51     667.52      -2.09      -0.36      -9.15      85.52     616.84      -0.00

   17   7.1  1.0  1.0     561.88      51.17    -619.03    -118.69      20.62     335.33     -56.12       8.02      80.02     965.18
                           69.09      -0.74      46.96    -613.58      47.85     -87.06      12.29    -139.17    -648.01     118.67

   18   8.1  1.0  1.0      64.00      66.70    -113.39     607.87       5.78      38.12     -60.74     -87.71    -654.95     109.93
                         -561.20      -0.13     -15.46     -71.56      64.24     709.21       4.11     -79.79     -65.49    -964.00

   19   9.1  1.0  1.0     -53.49     616.11      63.71     -55.95      -2.74     -31.84    -662.12     -20.64      56.94     -91.89
                           54.29       0.48      20.03      56.63     616.24     -66.83      26.82    -647.66     147.60      93.26

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.02       0.00       0.00     -21.81     185.04    1430.67       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.41     129.88   -1888.98     -19.08       0.58      -0.07      -4.48      27.27       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.21       4.17     -49.02      -6.47      -1.63      14.55    -136.13   -1007.42       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -8.71     996.36      68.21     -23.51   -1609.27      -8.35       6.27       0.06       0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       5.16     -27.35      20.84    -946.55     -14.77      42.19    -871.50     119.80       0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     947.07       9.58      -0.74       4.89     -14.54     879.64      43.54       6.51      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           66.09     869.90      74.81       3.48     103.69      44.47     928.49     154.50      -5.83     113.53

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           85.15      98.48      60.35       8.91    -871.72      54.29     145.45    -919.87     121.20     146.26

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          796.07     -83.02     855.26      58.92      52.44     530.89     -92.64      85.56     -12.48    1367.45

   29   1.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -0.01       0.00      42.80   -1010.77     131.39      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00   -1019.16     -44.43      -9.79      -0.00

   30   2.1  1.0 -1.0       0.00      -0.58     -22.27      -4.03    -638.85      -1.83     -26.45     626.86     -75.81       0.00
                            0.00     699.68     -11.85      -1.71      -0.19      -0.30    -612.60     -26.56      -5.91       0.00

   31   3.1  1.0 -1.0       0.00      -0.09     -40.71      -0.62   -1176.28      -1.94      13.72    -339.59      48.22       0.00
                           -0.00   -1142.15      -9.06       1.63       1.73      -0.42    -375.25     -16.88      -2.78      -0.00

   32   4.1  1.0 -1.0       0.00     669.67       5.67       4.53       0.29      10.90    -622.10     -27.20     -10.64       0.00
                            0.00       1.75      33.28       4.71     668.91       2.23      26.22    -616.29      85.87       0.00

   33   5.1  1.0 -1.0      -0.00       4.18      42.78    -668.37       9.85      -7.04     -13.93      76.23     617.93      -0.00
                           -0.01       1.44   -1334.11     -96.47      52.23     -42.70       8.23      -4.76      -3.07      -0.01

   34   6.1  1.0 -1.0      -0.00       6.40    -630.64     -39.71      24.15   -1180.68      -5.60      -1.12      -3.79      -0.01
                            0.00      -2.23      54.51    -667.52       2.09       0.36       9.15     -85.52    -616.84       0.00

   35   7.1  1.0 -1.0     561.88      51.17    -619.03    -118.69      20.62     335.33     -56.12       8.02      80.02     965.18
                          -69.09       0.74     -46.96     613.58     -47.85      87.06     -12.29     139.17     648.01    -118.67

   36   8.1  1.0 -1.0      64.00      66.70    -113.39     607.87       5.78      38.12     -60.74     -87.71    -654.95     109.93
                          561.20       0.13      15.46      71.56     -64.24    -709.21      -4.11      79.79      65.49     964.00

   37   9.1  1.0 -1.0     -53.49     616.11      63.71     -55.95      -2.74     -31.84    -662.12     -20.64      56.94     -91.89
                          -54.29      -0.48     -20.03     -56.63    -616.24      66.83     -26.82     647.66    -147.60     -93.26


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.00      -0.00     561.88      64.00     -53.49       0.00
                           -0.00       0.00      -0.00       0.00      -0.01       0.00     -69.09     561.20     -54.29      -0.00

    2   2.1  0.0  0.0      -0.00      -0.58      -0.09     669.67       4.18       6.40      51.17      66.70     616.11       0.00
                            0.00     699.68   -1142.15       1.75       1.44      -2.23       0.74       0.13      -0.48       0.00

    3   3.1  0.0  0.0      -0.00     -22.27     -40.71       5.67      42.78    -630.64    -619.03    -113.39      63.71       0.00
                            0.00     -11.85      -9.06      33.28   -1334.11      54.51     -46.96      15.46     -20.03      -0.00

    4   4.1  0.0  0.0       0.00      -4.03      -0.62       4.53    -668.37     -39.71    -118.69     607.87     -55.95       0.00
                            0.00      -1.71       1.63       4.71     -96.47    -667.52     613.58      71.56     -56.63       0.02

    5   5.1  0.0  0.0      -0.01    -638.85   -1176.28       0.29       9.85      24.15      20.62       5.78      -2.74       0.00
                           -0.00      -0.19       1.73     668.91      52.23       2.09     -47.85     -64.24    -616.24      -0.00

    6   6.1  0.0  0.0       0.00      -1.83      -1.94      10.90      -7.04   -1180.68     335.33      38.12     -31.84       0.00
                            0.00      -0.30      -0.42       2.23     -42.70       0.36      87.06    -709.21      66.83      -0.00

    7   7.1  0.0  0.0      42.80     -26.45      13.72    -622.10     -13.93      -5.60     -56.12     -60.74    -662.12       0.00
                        -1019.16    -612.60    -375.25      26.22       8.23       9.15     -12.29      -4.11     -26.82      21.81

    8   8.1  0.0  0.0   -1010.77     626.86    -339.59     -27.20      76.23      -1.12       8.02     -87.71     -20.64       0.00
                          -44.43     -26.56     -16.88    -616.29      -4.76     -85.52     139.17      79.79     647.66    -185.04

    9   9.1  0.0  0.0     131.39     -75.81      48.22     -10.64     617.93      -3.79      80.02    -654.95      56.94       0.00
                           -9.79      -5.91      -2.78      85.87      -3.07    -616.84     648.01      65.49    -147.60   -1430.67

   10  10.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.00      -0.01     965.18     109.93     -91.89       0.00
                           -0.00       0.00      -0.00       0.00      -0.01       0.00    -118.67     964.00     -93.26      -0.00

   11   1.1  1.0  1.0   90102.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01      -0.00       0.00    -127.06    -163.70   -1530.46       0.00

   12   2.1  1.0  1.0       0.00   91602.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -1.77   -1765.26     -13.27     -24.07     -10.78      -3.97     -27.35       0.00

   13   3.1  1.0  1.0       0.00       0.00   91602.43       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       1.77       0.00     -45.84      -1.46      -6.16      83.78     113.78    1081.52      -0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   91602.41       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.01    1765.26      45.84      -0.00     -24.29       6.77       7.92      -7.87      -0.89       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   91602.42       0.00       0.00       0.00       0.00       0.00
                            0.00      13.27       1.46      24.29       0.00    -882.79    -935.83    -101.51      81.64      -0.02

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   91602.40       0.00       0.00       0.00       0.00
                           -0.00      24.07       6.16      -6.77     882.79      -0.00    -109.08     934.29     -89.51       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   92561.81       0.00       0.00   -1080.23
                          127.06      10.78     -83.78      -7.92     935.83     109.08      -0.00     872.08     -93.28    -132.82

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92561.83       0.00    -123.03
                          163.70       3.97    -113.78       7.87     101.51    -934.29    -872.08       0.00      72.40    1078.92

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92561.82     102.84
                         1530.46      27.35   -1081.52       0.89     -81.64      89.51      93.28     -72.40      -0.00    -104.37

   20   1.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00       0.00   -1080.23    -123.03     102.84   90102.14
                           -0.00      -0.00       0.00      -0.00       0.02      -0.00     132.82   -1078.92     104.37       0.00

   21   2.1  1.0  0.0       0.00      -0.00       0.72      -0.18      -3.80    -596.02     670.10      75.90     -69.84       0.00
                            0.00      -0.00      13.86      -4.86     652.28      -4.13      80.16    -649.91      62.86      -0.00

   22   3.1  1.0  0.0       0.00      -0.72      -0.00       5.98      -6.04   -1097.35    -364.54     -42.61      30.43       0.00
                           -0.00     -13.86       0.00       8.67   -1064.78       7.16      48.29    -398.31      37.78      -0.00

   23   4.1  1.0  0.0       0.00       0.18      -5.98      -0.00     624.48      -2.92      82.22    -659.48      68.73       0.00
                            0.00       4.86      -8.67       0.00       5.06     624.37    -661.39     -75.73      56.83      -0.00

   24   5.1  1.0  0.0      -0.00       3.80       6.04    -624.48      -0.00       6.81     -58.04     -76.18    -661.22       0.00
                           -0.02    -652.28    1064.78      -5.06      -0.00       5.92      -5.66       8.33       3.67      -0.00

   25   6.1  1.0  0.0      -0.00     596.02    1097.35       2.92      -6.81       0.00       0.66      -5.63       4.68       0.00
                            0.00       4.13      -7.16    -624.37      -5.92       0.00      49.01      69.60     662.70      -0.00

   26   7.1  1.0  0.0    1080.23    -670.10     364.54     -82.22      58.04      -0.66      -0.00     -58.60     -70.11       0.00
                         -132.82     -80.16     -48.29     661.39       5.66     -49.01      -0.00     -59.47    -614.79      -0.00

   27   8.1  1.0  0.0     123.03     -75.90      42.61     659.48      76.18       5.63      58.60       0.00     615.53       0.00
                         1078.92     649.91     398.31      75.73      -8.33     -69.60      59.47      -0.00     -75.68      -0.00

   28   9.1  1.0  0.0    -102.84      69.84     -30.43     -68.73     661.22      -4.68      70.11    -615.53      -0.00       0.00
                         -104.37     -62.86     -37.78     -56.83      -3.67    -662.70     614.79      75.68      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.02

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1080.23
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -132.82

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     123.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1078.92

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -102.84
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -104.37


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -66.09     -85.15    -796.07       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.58
                            2.41       1.21       8.71      -5.16    -947.07    -869.90     -98.48      83.02      -0.00    -699.68

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -22.27
                         -129.88      -4.17    -996.36      27.35      -9.58     -74.81     -60.35    -855.26      -0.00      11.85

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.03
                         1888.98      49.02     -68.21     -20.84       0.74      -3.48      -8.91     -58.92      -0.00       1.71

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01    -638.85
                           19.08       6.47      23.51     946.55      -4.89    -103.69     871.72     -52.44       0.00       0.19

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.83
                           -0.58       1.63    1609.27      14.77      14.54     -44.47     -54.29    -530.89      -0.00       0.30

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      42.80     -26.45
                            0.07     -14.55       8.35     -42.19    -879.64    -928.49    -145.45      92.64    1019.16     612.60

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1010.77     626.86
                            4.48     136.13      -6.27     871.50     -43.54    -154.50     919.87     -85.56      44.43      26.56

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     131.39     -75.81
                          -27.27    1007.42      -0.06    -119.80      -6.51       5.83    -121.20      12.48       9.79       5.91

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -113.53    -146.26   -1367.45       0.00      -0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00    1080.23     123.03    -102.84       0.00       0.00
                           -0.00       0.00      -0.00       0.02      -0.00     132.82   -1078.92     104.37       0.00       0.00

   12   2.1  1.0  1.0      -0.00      -0.72       0.18       3.80     596.02    -670.10     -75.90      69.84       0.00       0.00
                            0.00      13.86      -4.86     652.28      -4.13      80.16    -649.91      62.86       0.00       0.00

   13   3.1  1.0  1.0       0.72      -0.00      -5.98       6.04    1097.35     364.54      42.61     -30.43       0.00       0.00
                          -13.86      -0.00       8.67   -1064.78       7.16      48.29    -398.31      37.78       0.00       0.00

   14   4.1  1.0  1.0      -0.18       5.98      -0.00    -624.48       2.92     -82.22     659.48     -68.73       0.00       0.00
                            4.86      -8.67      -0.00       5.06     624.37    -661.39     -75.73      56.83       0.00       0.00

   15   5.1  1.0  1.0      -3.80      -6.04     624.48      -0.00      -6.81      58.04      76.18     661.22       0.00       0.00
                         -652.28    1064.78      -5.06       0.00       5.92      -5.66       8.33       3.67       0.00       0.00

   16   6.1  1.0  1.0    -596.02   -1097.35      -2.92       6.81       0.00      -0.66       5.63      -4.68       0.00       0.00
                            4.13      -7.16    -624.37      -5.92      -0.00      49.01      69.60     662.70       0.00       0.00

   17   7.1  1.0  1.0     670.10    -364.54      82.22     -58.04       0.66      -0.00      58.60      70.11       0.00       0.00
                          -80.16     -48.29     661.39       5.66     -49.01       0.00     -59.47    -614.79       0.00       0.00

   18   8.1  1.0  1.0      75.90     -42.61    -659.48     -76.18      -5.63     -58.60       0.00    -615.53       0.00       0.00
                          649.91     398.31      75.73      -8.33     -69.60      59.47       0.00     -75.68       0.00       0.00

   19   9.1  1.0  1.0     -69.84      30.43      68.73    -661.22       4.68     -70.11     615.53      -0.00       0.00       0.00
                          -62.86     -37.78     -56.83      -3.67    -662.70     614.79      75.68       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   21   2.1  1.0  0.0   91602.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   3.1  1.0  0.0       0.00   91602.43       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.72
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -13.86

   23   4.1  1.0  0.0       0.00       0.00   91602.41       0.00       0.00       0.00       0.00       0.00      -0.00      -0.18
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.86

   24   5.1  1.0  0.0       0.00       0.00       0.00   91602.42       0.00       0.00       0.00       0.00       0.00      -3.80
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.02    -652.28

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   91602.40       0.00       0.00       0.00       0.00    -596.02
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       4.13

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   92561.81       0.00       0.00   -1080.23     670.10
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -132.82     -80.16

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   92561.83       0.00    -123.03      75.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    1078.92     649.91

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   92561.82     102.84     -69.84
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -104.37     -62.86

   29   1.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00   -1080.23    -123.03     102.84   90102.14       0.00
                           -0.00       0.00      -0.00       0.02      -0.00     132.82   -1078.92     104.37       0.00       0.00

   30   2.1  1.0 -1.0      -0.00       0.72      -0.18      -3.80    -596.02     670.10      75.90     -69.84       0.00   91602.40
                           -0.00      13.86      -4.86     652.28      -4.13      80.16    -649.91      62.86      -0.00       0.00

   31   3.1  1.0 -1.0      -0.72      -0.00       5.98      -6.04   -1097.35    -364.54     -42.61      30.43       0.00       0.00
                          -13.86       0.00       8.67   -1064.78       7.16      48.29    -398.31      37.78      -0.00      -1.77

   32   4.1  1.0 -1.0       0.18      -5.98      -0.00     624.48      -2.92      82.22    -659.48      68.73       0.00       0.00
                            4.86      -8.67       0.00       5.06     624.37    -661.39     -75.73      56.83      -0.01   -1765.26

   33   5.1  1.0 -1.0       3.80       6.04    -624.48      -0.00       6.81     -58.04     -76.18    -661.22       0.00       0.00
                         -652.28    1064.78      -5.06      -0.00       5.92      -5.66       8.33       3.67      -0.00     -13.27

   34   6.1  1.0 -1.0     596.02    1097.35       2.92      -6.81       0.00       0.66      -5.63       4.68       0.00       0.00
                            4.13      -7.16    -624.37      -5.92       0.00      49.01      69.60     662.70       0.00     -24.07

   35   7.1  1.0 -1.0    -670.10     364.54     -82.22      58.04      -0.66      -0.00     -58.60     -70.11       0.00       0.00
                          -80.16     -48.29     661.39       5.66     -49.01      -0.00     -59.47    -614.79    -127.06     -10.78

   36   8.1  1.0 -1.0     -75.90      42.61     659.48      76.18       5.63      58.60       0.00     615.53       0.00       0.00
                          649.91     398.31      75.73      -8.33     -69.60      59.47      -0.00     -75.68    -163.70      -3.97

   37   9.1  1.0 -1.0      69.84     -30.43     -68.73     661.22      -4.68      70.11    -615.53      -0.00       0.00       0.00
                          -62.86     -37.78     -56.83      -3.67    -662.70     614.79      75.68      -0.00   -1530.46     -27.35


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00     561.88      64.00     -53.49
                            0.00      -0.00       0.01      -0.00      69.09    -561.20      54.29

    2   2.1  0.0  0.0      -0.09     669.67       4.18       6.40      51.17      66.70     616.11
                         1142.15      -1.75      -1.44       2.23      -0.74      -0.13       0.48

    3   3.1  0.0  0.0     -40.71       5.67      42.78    -630.64    -619.03    -113.39      63.71
                            9.06     -33.28    1334.11     -54.51      46.96     -15.46      20.03

    4   4.1  0.0  0.0      -0.62       4.53    -668.37     -39.71    -118.69     607.87     -55.95
                           -1.63      -4.71      96.47     667.52    -613.58     -71.56      56.63

    5   5.1  0.0  0.0   -1176.28       0.29       9.85      24.15      20.62       5.78      -2.74
                           -1.73    -668.91     -52.23      -2.09      47.85      64.24     616.24

    6   6.1  0.0  0.0      -1.94      10.90      -7.04   -1180.68     335.33      38.12     -31.84
                            0.42      -2.23      42.70      -0.36     -87.06     709.21     -66.83

    7   7.1  0.0  0.0      13.72    -622.10     -13.93      -5.60     -56.12     -60.74    -662.12
                          375.25     -26.22      -8.23      -9.15      12.29       4.11      26.82

    8   8.1  0.0  0.0    -339.59     -27.20      76.23      -1.12       8.02     -87.71     -20.64
                           16.88     616.29       4.76      85.52    -139.17     -79.79    -647.66

    9   9.1  0.0  0.0      48.22     -10.64     617.93      -3.79      80.02    -654.95      56.94
                            2.78     -85.87       3.07     616.84    -648.01     -65.49     147.60

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.01     965.18     109.93     -91.89
                            0.00      -0.00       0.01      -0.00     118.67    -964.00      93.26

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

   20   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00    1080.23     123.03    -102.84
                            0.00      -0.00       0.02      -0.00     132.82   -1078.92     104.37

   21   2.1  1.0  0.0      -0.72       0.18       3.80     596.02    -670.10     -75.90      69.84
                           13.86      -4.86     652.28      -4.13      80.16    -649.91      62.86

   22   3.1  1.0  0.0      -0.00      -5.98       6.04    1097.35     364.54      42.61     -30.43
                           -0.00       8.67   -1064.78       7.16      48.29    -398.31      37.78

   23   4.1  1.0  0.0       5.98      -0.00    -624.48       2.92     -82.22     659.48     -68.73
                           -8.67      -0.00       5.06     624.37    -661.39     -75.73      56.83

   24   5.1  1.0  0.0      -6.04     624.48      -0.00      -6.81      58.04      76.18     661.22
                         1064.78      -5.06       0.00       5.92      -5.66       8.33       3.67

   25   6.1  1.0  0.0   -1097.35      -2.92       6.81       0.00      -0.66       5.63      -4.68
                           -7.16    -624.37      -5.92      -0.00      49.01      69.60     662.70

   26   7.1  1.0  0.0    -364.54      82.22     -58.04       0.66      -0.00      58.60      70.11
                          -48.29     661.39       5.66     -49.01       0.00     -59.47    -614.79

   27   8.1  1.0  0.0     -42.61    -659.48     -76.18      -5.63     -58.60       0.00    -615.53
                          398.31      75.73      -8.33     -69.60      59.47       0.00     -75.68

   28   9.1  1.0  0.0      30.43      68.73    -661.22       4.68     -70.11     615.53      -0.00
                          -37.78     -56.83      -3.67    -662.70     614.79      75.68       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00      -0.00     127.06     163.70    1530.46

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.77    1765.26      13.27      24.07      10.78       3.97      27.35

   31   3.1  1.0 -1.0   91602.43       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      45.84       1.46       6.16     -83.78    -113.78   -1081.52

   32   4.1  1.0 -1.0       0.00   91602.41       0.00       0.00       0.00       0.00       0.00
                          -45.84       0.00      24.29      -6.77      -7.92       7.87       0.89

   33   5.1  1.0 -1.0       0.00       0.00   91602.42       0.00       0.00       0.00       0.00
                           -1.46     -24.29      -0.00     882.79     935.83     101.51     -81.64

   34   6.1  1.0 -1.0       0.00       0.00       0.00   91602.40       0.00       0.00       0.00
                           -6.16       6.77    -882.79       0.00     109.08    -934.29      89.51

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   92561.81       0.00       0.00
                           83.78       7.92    -935.83    -109.08       0.00    -872.08      93.28

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   92561.83       0.00
                          113.78      -7.87    -101.51     934.29     872.08      -0.00     -72.40

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   92561.82
                         1081.52      -0.89      81.64     -89.51     -93.28      72.40       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.20616641 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   91988.039       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   91988.184       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   91988.109       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   91988.090       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   91988.156       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   92522.496       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   92522.481
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000      -0.001       0.000      -0.018       0.000      60.535   -1429.450
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.815     -31.501      -5.703    -903.475      -2.589     -37.412     886.509
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.129     -57.579      -0.873   -1663.513      -2.741      19.398    -480.250
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000     947.061       8.012       6.412       0.416      15.418    -879.786     -38.468
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       5.909      60.498    -945.217      13.931      -9.956     -19.701     107.807
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.001       9.057    -891.853     -56.162      34.159   -1669.735      -7.919      -1.589
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            794.621      72.360    -875.439    -167.848      29.165     474.222     -79.363      11.349
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             90.503      94.327    -160.359     859.660       8.171      53.916     -85.901    -124.037
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -75.651     871.308      90.097     -79.121      -3.879     -45.030    -936.374     -29.186
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001      -0.023       0.000       0.000     -21.812     185.045

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.407     129.876   -1888.977     -19.083       0.581      -0.065      -4.484

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.213       4.170     -49.025      -6.468      -1.625      14.545    -136.125

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004      -8.709     996.356      68.210     -23.511   -1609.267      -8.351       6.268

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       5.156     -27.351      20.842    -946.554     -14.769      42.189    -871.497

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     947.067       9.582      -0.740       4.893     -14.543     879.643      43.540

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               66.091     869.902      74.814       3.485     103.691      44.469     928.491     154.500

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               85.147      98.485      60.351       8.914    -871.715      54.285     145.450    -919.873

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              796.065     -83.025     855.259      58.923      52.442     530.894     -92.641      85.562

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.006      -0.001      -0.000       0.000      -0.000    1441.315      62.837

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -989.499      16.755       2.415       0.271       0.426     866.343      37.564

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1615.240      12.819      -2.306      -2.453       0.588     530.685      23.875

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.474     -47.063      -6.665    -945.981      -3.159     -37.081     871.569

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009      -2.035    1886.723     136.436     -73.860      60.389     -11.634       6.731

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.149     -77.091     944.012      -2.949      -0.508     -12.945     120.951

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               97.703      -1.043      66.417    -867.735      67.671    -123.126      17.385    -196.815

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -793.659      -0.182     -21.863    -101.204      90.854    1002.978       5.809    -112.834

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               76.778       0.676      28.324      80.090     871.497     -94.516      37.926    -915.925

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.000      -0.815      -0.129     947.061       5.909       9.057
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.001     -31.501     -57.579       8.012      60.498    -891.853
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000      -5.703      -0.873       6.412    -945.217     -56.162
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.018    -903.475   -1663.513       0.416      13.931      34.159
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000      -2.589      -2.741      15.418      -9.956   -1669.735
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      60.535     -37.412      19.398    -879.786     -19.701      -7.919
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000   -1429.450     886.509    -480.250     -38.468     107.807      -1.589
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           92522.502       0.000     185.810    -107.213      68.197     -15.046     873.879      -5.354
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   94564.528      -0.000       0.000       0.000       0.000      -0.000      -0.012
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            185.810      -0.000   90102.140       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -107.213       0.000       0.000   91602.404       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             68.197       0.000       0.000       0.000   91602.432       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+            -15.046       0.000       0.000       0.000       0.000   91602.405       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            873.879      -0.000       0.000       0.000       0.000       0.000   91602.418       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -5.354      -0.012       0.000       0.000       0.000       0.000       0.000   91602.402
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            113.161    1364.968       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -926.244     155.462       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             80.528    -129.950       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                             1430.670       0.000       0.000      -0.000       0.001      -0.000       0.023      -0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               27.275       0.000       0.000       0.000      19.606      -6.879     922.468      -5.841

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                            -1007.424       0.000      -0.001     -19.606       0.000      12.255   -1505.826      10.128

    4    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.060       0.001       0.000       6.879     -12.255       0.000       7.158     882.991

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                              119.800       0.000      -0.023    -922.468    1505.826      -7.158       0.000       8.376

    6    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                6.508      -0.000       0.000       5.841     -10.128    -882.991      -8.376       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -5.827     113.528    -187.836    -113.369     -68.286     935.350       8.004     -69.304

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              121.195     146.262    1525.825     919.105     563.302     107.099     -11.775     -98.427

    9    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                              -12.479    1367.450    -147.607     -88.896     -53.427     -80.372      -5.186    -937.202

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               13.847       0.000      -0.000      -0.000      -0.000      -0.013      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.351      -0.000       0.000      -0.000      -1.771   -1765.258     -13.270     -24.070

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.927       0.001       0.000       1.771       0.000     -45.843      -1.464      -6.163

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -121.434      -0.000       0.013    1765.258      45.843      -0.000     -24.288       6.771

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.338       0.019       0.000      13.270       1.464      24.288       0.000    -882.792

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              872.337      -0.000      -0.000      24.070       6.163      -6.771     882.792      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -916.424     167.829     127.061      10.776     -83.785      -7.920     935.827     109.083

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -92.623   -1363.309     163.697       3.971    -113.782       7.874     101.508    -934.293

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              208.741     131.885    1530.456      27.354   -1081.523       0.887     -81.641      89.510

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>             794.621      90.503     -75.651       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.004      -0.000

    2    1  |0 0>              72.360      94.327     871.308       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.407       1.213       8.709      -5.156

    3    1  |0 0>            -875.439    -160.359      90.097       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001    -129.876      -4.170    -996.356      27.351

    4    1  |0 0>            -167.848     859.660     -79.121       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.023    1888.977      49.025     -68.210     -20.842

    5    1  |0 0>              29.165       8.171      -3.879       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      19.083       6.468      23.511     946.554

    6    1  |0 0>             474.222      53.916     -45.030       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.581       1.625    1609.267      14.769

    7    1  |0 0>             -79.363     -85.901    -936.374       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      21.812       0.065     -14.545       8.351     -42.189

    8    1  |0 0>              11.349    -124.037     -29.186       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -185.045       4.484     136.125      -6.268     871.497

    9    1  |0 0>             113.161    -926.244      80.528       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1430.670     -27.275    1007.424      -0.060    -119.800

   10    1  |0 0>            1364.968     155.462    -129.950       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.001      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.001      -0.000       0.023

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      19.606      -6.879     922.468

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.001     -19.606       0.000      12.255   -1505.826

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       6.879     -12.255       0.000       7.158

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.023    -922.468    1505.826      -7.158       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       5.841     -10.128    -882.991      -8.376

    7    1  |1 1>+          92561.809       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000    -187.836    -113.369     -68.286     935.350       8.004

    8    1  |1 1>+              0.000   92561.828       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000    1525.825     919.105     563.302     107.099     -11.775

    9    1  |1 1>+              0.000       0.000   92561.819       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000    -147.607     -88.896     -53.427     -80.372      -5.186

    1    1  |1 0>               0.000       0.000       0.000   90102.140       0.000       0.000       0.000       0.000
                              187.836   -1525.825     147.607       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000   91602.404       0.000       0.000       0.000
                              113.369    -919.105      88.896      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000   91602.432       0.000       0.000
                               68.286    -563.302      53.427      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000   91602.405       0.000
                             -935.350    -107.099      80.372      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   91602.418
                               -8.004      11.775       5.186      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               69.304      98.427     937.202      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -84.109    -869.445      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               84.109       0.000    -107.033      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              869.445     107.033       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                             -127.061    -163.697   -1530.456       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -1.014       0.248       5.378
                              -10.776      -3.971     -27.354       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       1.014       0.000      -8.463       8.546
                               83.785     113.782    1081.523       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.248       8.463       0.000    -883.143
                                7.920      -7.874      -0.887       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -5.378      -8.546     883.143       0.000
                             -935.827    -101.508      81.641       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.003    -842.899   -1551.886      -4.123       9.636
                             -109.083     934.293     -89.510       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000   -1527.676     947.659    -515.540     116.278     -82.076
                               -0.000     872.084     -93.278      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000    -173.994     107.332     -60.261    -932.645    -107.731
                             -872.084       0.000      72.402      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000     145.440     -98.765      43.036      97.196    -935.107
                               93.278     -72.402      -0.000       0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -66.091     -85.147    -796.065      -0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -947.067    -869.902     -98.485      83.025       0.006     989.499   -1615.240       2.474

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.582     -74.814     -60.351    -855.259       0.001     -16.755     -12.819      47.063

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.740      -3.485      -8.914     -58.923       0.000      -2.415       2.306       6.665

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.893    -103.691     871.715     -52.442      -0.000      -0.271       2.453     945.981

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.543     -44.469     -54.285    -530.894       0.000      -0.426      -0.588       3.159

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -879.643    -928.491    -145.450      92.641   -1441.315    -866.343    -530.685      37.081

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -43.540    -154.500     919.873     -85.562     -62.837     -37.564     -23.875    -871.569

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.508       5.827    -121.195      12.479     -13.847      -8.351      -3.927     121.434

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -113.528    -146.262   -1367.450      -0.000       0.000      -0.001       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     187.836   -1525.825     147.607      -0.000      -0.000      -0.000      -0.013

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -5.841     113.369    -919.105      88.896       0.000      -0.000      -1.771   -1765.258

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               10.128      68.286    -563.302      53.427       0.000       1.771       0.000     -45.843

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              882.991    -935.350    -107.099      80.372       0.013    1765.258      45.843      -0.000

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.376      -8.004      11.775       5.186       0.000      13.270       1.464      24.288

    6    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      69.304      98.427     937.202      -0.000      24.070       6.163      -6.771

    7    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -69.304       0.000     -84.109    -869.445     127.061      10.776     -83.785      -7.920

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -98.427      84.109       0.000    -107.033     163.697       3.971    -113.782       7.874

    9    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -937.202     869.445     107.033       0.000    1530.456      27.354   -1081.523       0.887

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       1.014      -0.248
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -1.014       0.000       8.463
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.248      -8.463       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       5.378       8.546    -883.143
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>           91602.402       0.000       0.000       0.000      -0.003     842.899    1551.886       4.123
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000   92561.809       0.000       0.000    1527.676    -947.659     515.540    -116.278
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000   92561.828       0.000     173.994    -107.332      60.261     932.645
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000   92561.819    -145.440      98.765     -43.036     -97.196
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-             -0.003    1527.676     173.994    -145.440   90102.140       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-            842.899    -947.659    -107.332      98.765       0.000   91602.404       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-           1551.886     515.540      60.261     -43.036       0.000       0.000   91602.432       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              4.123    -116.278     932.645     -97.196       0.000       0.000       0.000   91602.405
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -9.636      82.076     107.731     935.107       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.937       7.966      -6.613       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.937       0.000      82.873      99.144       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -7.966     -82.873       0.000    -870.486       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              6.613     -99.144     870.486       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.009       0.000     -97.703     793.659     -76.778

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                2.035      -3.149       1.043       0.182      -0.676

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                            -1886.723      77.091     -66.417      21.863     -28.324

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -136.436    -944.012     867.735     101.204     -80.090

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               73.860       2.949     -67.671     -90.854    -871.497

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -60.389       0.508     123.126   -1002.978      94.516

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               11.634      12.945     -17.385      -5.809     -37.926

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -6.731    -120.951     196.815     112.834     915.925

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -4.338    -872.337     916.424      92.623    -208.741

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.019       0.000    -167.829    1363.309    -131.885

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -127.061    -163.697   -1530.456

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -13.270     -24.070     -10.776      -3.971     -27.354

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -1.464      -6.163      83.785     113.782    1081.523

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -24.288       6.771       7.920      -7.874      -0.887

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000    -882.792    -935.827    -101.508      81.641

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              882.792      -0.000    -109.083     934.293     -89.510

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              935.827     109.083      -0.000     872.084     -93.278

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              101.508    -934.293    -872.084       0.000      72.402

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -81.641      89.510      93.278     -72.402      -0.000

    1    1  |1 0>               0.000       0.003   -1527.676    -173.994     145.440
                               -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>              -5.378    -842.899     947.659     107.332     -98.765
                                0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>              -8.546   -1551.886    -515.540     -60.261      43.036
                               -0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>             883.143      -4.123     116.278    -932.645      97.196
                                0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       9.636     -82.076    -107.731    -935.107
                               -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -9.636       0.000       0.937      -7.966       6.613
                                0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>              82.076      -0.937       0.000     -82.873     -99.144
                               -0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>             107.731       7.966      82.873       0.000     870.486
                               -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>             935.107      -6.613      99.144    -870.486       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          91602.418       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   91602.402       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   92561.809       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   92561.828       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   92561.819
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2789.20625997    -0.00009356      -20.53      0.00000000        0.00      0.0000
    2 -2788.80129039     0.40487601    88860.01      0.40496957    88880.55     11.0198
    3 -2788.80129037     0.40487603    88860.02      0.40496959    88880.55     11.0198
    4 -2788.80129037     0.40487603    88860.02      0.40496960    88880.55     11.0198
    5 -2788.79684222     0.40932419    89836.28      0.40941775    89856.81     11.1408
    6 -2788.79684221     0.40932420    89836.28      0.40941776    89856.81     11.1408
    7 -2788.79684221     0.40932420    89836.28      0.40941776    89856.81     11.1408
    8 -2788.79684221     0.40932420    89836.28      0.40941776    89856.81     11.1408
    9 -2788.79684218     0.40932422    89836.28      0.40941778    89856.82     11.1408
   10 -2788.79684210     0.40932430    89836.30      0.40941786    89856.83     11.1408
   11 -2788.79684210     0.40932431    89836.30      0.40941787    89856.84     11.1408
   12 -2788.79667760     0.40948881    89872.41      0.40958237    89892.94     11.1453
   13 -2788.79667752     0.40948889    89872.42      0.40958245    89892.96     11.1453
   14 -2788.79667748     0.40948893    89872.43      0.40958249    89892.97     11.1453
   15 -2788.79667740     0.40948900    89872.45      0.40958256    89892.98     11.1453
   16 -2788.79667729     0.40948911    89872.47      0.40958267    89893.01     11.1453
   17 -2788.79385164     0.41231477    90492.63      0.41240833    90513.17     11.2222
   18 -2788.79385163     0.41231478    90492.63      0.41240834    90513.17     11.2222
   19 -2788.79385160     0.41231480    90492.64      0.41240836    90513.17     11.2222
   20 -2788.79313685     0.41302956    90649.51      0.41312312    90670.04     11.2417
   21 -2788.79313679     0.41302961    90649.52      0.41312317    90670.06     11.2417
   22 -2788.79313679     0.41302962    90649.52      0.41312318    90670.06     11.2417
   23 -2788.79313674     0.41302967    90649.53      0.41312323    90670.07     11.2417
   24 -2788.79313671     0.41302970    90649.54      0.41312326    90670.07     11.2417
   25 -2788.78670536     0.41946105    92061.06      0.41955461    92081.59     11.4167
   26 -2788.77185996     0.43430645    95319.25      0.43440001    95339.78     11.8206
   27 -2788.77185995     0.43430645    95319.25      0.43440001    95339.78     11.8206
   28 -2788.77185991     0.43430649    95319.26      0.43440006    95339.79     11.8206
   29 -2788.77042862     0.43573778    95633.39      0.43583135    95653.92     11.8596
   30 -2788.77042854     0.43573786    95633.41      0.43583142    95653.94     11.8596
   31 -2788.77042852     0.43573789    95633.41      0.43583145    95653.95     11.8596
   32 -2788.77042846     0.43573794    95633.42      0.43583150    95653.96     11.8596
   33 -2788.77042840     0.43573800    95633.44      0.43583156    95653.97     11.8596
   34 -2788.77037032     0.43579608    95646.18      0.43588964    95666.72     11.8612
   35 -2788.77037032     0.43579609    95646.19      0.43588965    95666.72     11.8612
   36 -2788.77037030     0.43579611    95646.19      0.43588967    95666.72     11.8612
   37 -2788.76490406     0.44126235    96845.89      0.44135591    96866.43     12.0099

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99989105  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000100  0.00000002  0.00000004 -0.00000007  0.00000378  0.00000044  0.00005892
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000011 -0.00000027  0.00000006  0.00000468  0.00003527  0.00000582 -0.00000335
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000001  0.00000388  0.00000091 -0.00005300  0.00000197  0.00000079 -0.00000003
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000012 -0.00000093  0.00000350  0.00000142 -0.00000602  0.00007919 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000002  0.00000000 -0.00000005  0.00000064  0.00001455  0.00000089 -0.00000090
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.20804793  0.00401263 -0.01550214  0.00000008  0.00000024 -0.00000008  0.00000277
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.01588270 -0.07742458  0.19311920 -0.00000058  0.00000000  0.00000094  0.00000020
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00203827 -0.19372635 -0.07750090 -0.00000449  0.00000006  0.00000004  0.00000009
                           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00037288 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000001  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.03144940 -0.22465400  0.87375625 -0.00000002  0.00000004 -0.00000042  0.00000005
                           0.00000000  0.00000000 -0.00000001  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00044128 -0.00325278  0.01219980 -0.01696971  0.04281769 -0.66650458  0.00532719
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   3    1  |1 1>+         -0.00000000  0.00025281  0.00162931 -0.00666260 -0.00465182  0.00591536 -0.11377045  0.00088277
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.01244376  0.00016017  0.00049981  0.01000549  0.04126580  0.00792004  0.63110587
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001

   5    1  |1 1>+          0.00000000  0.00028250 -0.01204725 -0.00315898 -0.34928082 -0.00151493  0.01251592  0.00743715
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000002  0.00011256  0.00007649  0.00001570 -0.00371366  0.57512452  0.03634159 -0.03561833
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00842721  0.02231582 -0.03115226 -0.00720643  0.00000161 -0.00000562 -0.00000056  0.00000159
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00095981  0.02419124  0.25425800  0.06624384 -0.00001415 -0.00000070  0.00000016  0.00000151
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00080230  0.26334064 -0.02303877  0.00355503  0.00000139  0.00000134  0.00000020  0.00001247
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000003 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.01353892  0.87430576  0.22430800  0.00000064 -0.00000002 -0.00000005 -0.00000001

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000951 -0.00033665 -0.00020238  0.52041064  0.00611568 -0.00886145 -0.00571958

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00019769  0.01394011  0.00349351  0.32415392  0.00158923 -0.00756175 -0.00476839

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000005  0.00011089 -0.00003605  0.00009043  0.00576107 -0.57449476 -0.03729398  0.04313998

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00035946  0.00300928 -0.01207088 -0.00442813 -0.01077455  0.11128284 -0.00083237

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.01244413 -0.00007462 -0.00038843 -0.00126695 -0.01618062 -0.00175105 -0.19446434

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00070091 -0.26361062 -0.00957677  0.02141700  0.00000011  0.00000125  0.00000259  0.00001477

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00090301 -0.02075556  0.06511408 -0.25505429 -0.00000038  0.00000183 -0.00002036  0.00000162

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00844252  0.02410524 -0.00616953  0.02550251  0.00000031  0.00000422  0.00000238 -0.00000190

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.90207261  0.00528996  0.03382877  0.00000000 -0.00000004  0.00000005 -0.00000015

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001
                           0.00000000 -0.01225203 -0.00007112 -0.00046240  0.00812437  0.05691715  0.00888935  0.72321061

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00750491 -0.00003244 -0.00026568  0.00083767  0.01454234  0.00183716  0.18727691

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00043191 -0.00298716  0.01207707  0.00860203 -0.05053538  0.72490099 -0.00504892

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000010  0.00015740 -0.00009545  0.00007745 -0.00159804  0.57374225  0.04173016 -0.04919236

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00017282 -0.01208809 -0.00298450  0.70815164  0.00334471 -0.00831299 -0.00818849

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00103617 -0.00317844  0.25984404  0.04412344  0.00000629 -0.00000016  0.00000130 -0.00000002

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00841701  0.00053187  0.03597986 -0.01980933  0.00000093  0.00000068  0.00000180 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00081425  0.00954271  0.04126783 -0.26092017 -0.00000021 -0.00000109  0.00001704 -0.00000011

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00016221 -0.00000033  0.00000020  0.67659033 -0.00278956 -0.00021238 -0.00028721  0.00047591
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000137  0.00000554  0.00000274 -0.00040364  0.00288434 -0.00507538  0.12618395  0.66466624
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000008  0.00000145 -0.00003576  0.00020047 -0.00064186  0.67646618 -0.01014681  0.00709448
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000132  0.00015300  0.00000040  0.00279346  0.67655848  0.00073193  0.00353037 -0.00359900
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000027 -0.00000049 -0.00000057  0.00035711 -0.00415218  0.01128674  0.66460810 -0.12607147
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000144  0.00000015  0.00000011 -0.00000730  0.00000027  0.00000000 -0.00000005  0.00000011
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000007 -0.00000374 -0.00000122 -0.00000052 -0.00000695  0.00000003 -0.00000020 -0.00000022
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000001  0.00000057 -0.00000800 -0.00000010  0.00000088 -0.00000077 -0.00000010  0.00000027
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000003 -0.00000000 -0.00000000  0.00000002 -0.00000007  0.00000012  0.00000114  0.00000087
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000119 -0.00000009 -0.00000009 -0.00000006  0.00000001 -0.00000007 -0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00032753  0.30470001  0.00566488  0.00139384  0.27803954  0.00199464  0.00401512  0.00791533
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00250805 -0.61718861  0.00103806  0.00214397  0.51207329  0.00070477  0.00680111  0.01453394
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.36491114  0.00108045 -0.00342934 -0.29138078  0.00109376 -0.00194144 -0.00496770 -0.00176120
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00267026 -0.00169806  0.64115567 -0.00173713 -0.00465392  0.29099045 -0.00484529 -0.01578808
                          -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00087461 -0.00131350 -0.00285571 -0.00271762 -0.01249759  0.02377857  0.55556313  0.17407445
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000246 -0.00000020  0.00000089  0.01063366  0.00325138 -0.02227591  0.04434462 -0.13807463
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000353  0.00000024 -0.00000811  0.01376181  0.00086469  0.12517120  0.00147722 -0.02303708
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00003350 -0.00000010  0.00000083  0.12654930 -0.00097841 -0.01174041 -0.00386961  0.01405129
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000009  0.00000238  0.00000005 -0.00000000  0.00000288  0.00000004 -0.00000029

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00025968  0.00765594 -0.24993555  0.00096136  0.00514599  0.58147657 -0.01631765 -0.03316582

   3    1  |1 0>           0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00136028  0.00140894  0.70331085  0.00038701  0.00196530  0.01516896  0.00003408 -0.00121055

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00397374 -0.00480437 -0.00184344  0.00314611  0.00289720 -0.01041494  0.42961668 -0.39369394

   5    1  |1 0>           0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00183194  0.72172654  0.00128647 -0.00038817  0.29108355 -0.00608597  0.00764886  0.00579798

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.70380510 -0.00201132  0.00076254 -0.29122016 -0.00034315  0.00041412  0.00395828 -0.00392352

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002779  0.00000349  0.00000007  0.12642701  0.01454825  0.00050913  0.00839191  0.00949021

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000292 -0.00002905 -0.00000006  0.01378287 -0.12670205  0.00121907  0.00869742  0.00784316

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000247  0.00000276 -0.00000004 -0.01206007  0.00771577  0.00892619  0.09886896  0.10775838

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000032 -0.00000000  0.00000000  0.00000205  0.00000004  0.00000003  0.00000005  0.00000002

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02875759 -0.00080625  0.00138807  0.30441205 -0.00135910 -0.00080170 -0.00120889 -0.00483327

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.60879512 -0.00203521 -0.00011499 -0.49715976  0.00278723  0.00089295 -0.00070911 -0.00418884

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00108063  0.07244700  0.00037572  0.00195543  0.29101955  0.00227252  0.00514248  0.01251591

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00123510 -0.00002701  0.00214423  0.00104556  0.02040225 -0.03790697 -0.12580390 -0.56747434

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00128729 -0.00020343  0.17815746 -0.00106496  0.00128650 -0.29053625  0.00893652  0.02021884

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000248  0.00001071 -0.00016343  0.01010218 -0.12641045 -0.01383145  0.01144064

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002  0.00000355  0.00000108  0.00010249  0.01230507 -0.01223213  0.14284838 -0.03050484

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000034  0.00003579 -0.00000078  0.00061490  0.12669671  0.01151096 -0.01223636  0.00605128

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002  0.00000004 -0.00000007
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000487  0.00001484  0.00000099 -0.44857264 -0.03076036  0.00787244  0.00626495  0.00127023
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000080  0.00000035 -0.00000179 -0.00067821  0.00710167  0.02019483  0.05142120 -0.44631471
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000038  0.00000046  0.00000077  0.01283171 -0.06953963  0.44339177  0.01594455  0.02077314
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00001014 -0.00000078 -0.00000237 -0.02925229  0.44308515  0.07023170 -0.00906815  0.00922769
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000146 -0.00000038  0.00000205 -0.00532198 -0.01109941  0.01684857 -0.44640376 -0.05084227
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.12558672  0.71930824  0.02604041  0.00001230 -0.00000084 -0.00000147 -0.00000047  0.00000066
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.71801283 -0.12334526 -0.05566704  0.00000338 -0.00000746 -0.00000133  0.00000204  0.00000113
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.05040664 -0.03515807  0.72806400  0.00000087  0.00000113  0.00000377  0.00000373 -0.00000172
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000001 -0.00000002 -0.00000019  0.00000028 -0.00000063 -0.00000235  0.00000274
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.04528486 -0.00957049 -0.00971010  0.00000008 -0.00000257 -0.00000034 -0.00000005  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.25161102  0.05321532  0.05156642  0.00529036 -0.07912041 -0.01318357  0.00150891  0.00113305
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.13614877 -0.02843597 -0.03088524  0.00964323 -0.14582423 -0.02342015  0.00263709  0.00206951
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.05577909  0.25207288  0.01274232 -0.08401910 -0.00583642  0.00212527 -0.00008657 -0.00059661
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.04779101  0.02337394 -0.25294051 -0.00300101  0.01428856 -0.08246080 -0.00150544 -0.00909330
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00096575  0.00213360  0.00161264  0.00073293  0.00612230 -0.01355877  0.13808334  0.09531731
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00195594  0.03143303 -0.04010454  0.05810118 -0.01691673  0.12660816  0.40268514 -0.56468604
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.07373826  0.00700538  0.33699910  0.04925200  0.09445722 -0.59060718  0.02810621 -0.13497771
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.06767390  0.33853514 -0.01805131  0.60837970  0.03399311  0.04262037 -0.04500273  0.05980304
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00907427  0.00398510 -0.04625010 -0.00000009  0.00000080 -0.00000500  0.00000002 -0.00000065

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00074414  0.00018175 -0.00807571 -0.00448698  0.02449857 -0.16536672 -0.00465556 -0.01926107

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.05892515 -0.02517464  0.29143001  0.00002206  0.00012557 -0.00438619  0.00004278 -0.00056678

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00138785  0.00272462  0.00020942  0.00264138  0.00198543  0.00425765  0.15241221 -0.07150792

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.24679572 -0.05367675 -0.05496386  0.00509055 -0.08325674 -0.01146856  0.00279547  0.00092191

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.05706199 -0.25190244 -0.01013043 -0.08403812 -0.00527691  0.00146799  0.00254340 -0.00045589

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.11435610 -0.32659912 -0.00570442  0.61134944 -0.02948508 -0.02786491  0.01776941  0.05207038

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.32009681 -0.10759809 -0.07207684  0.02935732  0.60600005  0.08445414  0.01936584  0.05814945

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02474516  0.03862294  0.00818326 -0.05136329 -0.03398274 -0.08602417  0.29993957  0.63245576

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01017768 -0.04614924 -0.00197940  0.00000189  0.00000006 -0.00000011 -0.00000002  0.00000008

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.05470586 -0.24833229 -0.01066415  0.08777756  0.00603303 -0.00125616 -0.00108599 -0.00172121

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.03373623 -0.15209569 -0.00616559 -0.14329353 -0.00999289  0.00233216  0.00207703 -0.00074547

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.24703367  0.05217957  0.05538804  0.00568329 -0.08283557 -0.01392394  0.00147206  0.00242988

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00144215  0.00375633 -0.00099673  0.00063755 -0.00581859  0.01866703  0.01441274 -0.16666502

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.05189055  0.02205117 -0.25226316  0.00214347 -0.01336621  0.08242514  0.00224534  0.01068189

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.09325685 -0.03472089  0.33000374  0.01869989 -0.14323838  0.59151872 -0.06823311  0.06336445

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.04274758 -0.01074398  0.03069364  0.01428900 -0.05595046  0.03423891  0.70110617  0.06600973

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.32323441 -0.06688525 -0.10262730  0.03773126 -0.59318927 -0.14868723 -0.05752197 -0.00290454

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01093118 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000018 -0.00000086 -0.00000633  0.00000009  0.58302093  0.00313165 -0.00522659 -0.00023049
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000073  0.00000004 -0.00000036 -0.00000088 -0.00060460 -0.00295009 -0.00227852 -0.10789212
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000045 -0.00000106 -0.00000004  0.00001233 -0.00318114  0.58301729 -0.00521860  0.00093218
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000018  0.00000278 -0.00000046  0.00000025  0.00519593  0.00523604  0.58300512 -0.00072621
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000367 -0.00000021  0.00000002  0.00000015  0.00013245 -0.00149606  0.00031624  0.57299091
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000002  0.04609368  0.48297594  0.00623091  0.00002413  0.00000705  0.00001348 -0.00000429
                          -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000001  0.48205929 -0.04560525 -0.03108399  0.00001481 -0.00000344  0.00006255  0.00001217
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000002 -0.03035299  0.00914314 -0.48417889  0.00000521 -0.00007380 -0.00001034  0.00002432
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.69049828  0.00000000 -0.00000004  0.00000004  0.00000020 -0.00000039  0.00000015  0.00000254
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.08493546  0.01179979 -0.00554232 -0.00001268 -0.00000542 -0.00006707 -0.00000862
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000005  0.47407804 -0.06574651  0.02666352 -0.00254233 -0.00393960 -0.26055370  0.00126765
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000011 -0.25721983  0.03525750 -0.01986549 -0.00429325 -0.00447445 -0.47973080  0.00289478
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000017 -0.06481990 -0.46791312  0.00331501  0.27315960  0.00329567 -0.00234853  0.00383715
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000009  0.02712217 -0.00712054 -0.47154784  0.00320742 -0.27264071  0.00637408 -0.00649848
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000286 -0.00107045 -0.00420152  0.00286535  0.00294607 -0.01355922  0.01071822 -0.42575747
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.41303904  0.00028861  0.00672410  0.00989299  0.02761228 -0.06075147  0.01247890  0.23250951
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.04704329  0.00633608  0.00787754 -0.08033302  0.03328299  0.31897633  0.00010697  0.03107787
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.03932296  0.01061141  0.08005094  0.00780910  0.32281242 -0.02772858 -0.00422749 -0.02273211
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00549678 -0.00072346 -0.08576104  0.00000648 -0.00008362 -0.00000225  0.00002470

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000034 -0.00330625  0.00046677 -0.01446405  0.00219070 -0.54508881 -0.00076694 -0.00763166

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000006 -0.03799410  0.00444606  0.54396029 -0.00028907 -0.01419653 -0.00174143 -0.00069692

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000050  0.00291263 -0.00477448 -0.00030483 -0.00308319  0.01933668 -0.00830984 -0.50932398

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000008 -0.46627822  0.06767069 -0.03388435 -0.00096870  0.00361982 -0.27303529 -0.00237577

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000003  0.06780233  0.46749420  0.00107960  0.27318166  0.00126206 -0.00105263 -0.00474330

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.03435401 -0.02088662 -0.07848575 -0.00067669  0.32254490  0.00319235  0.03543609  0.01088327

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.04425976  0.07831512 -0.02014930  0.00518999  0.03355080  0.00042698 -0.32337995  0.01600535

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.41379772 -0.00664259  0.00867116 -0.00049900 -0.03098255  0.01972614  0.01837867  0.13465613

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.01182208  0.08511605  0.00003961  0.00001968  0.00000580  0.00001559 -0.00000334

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008  0.06387915  0.46071998  0.00020681 -0.28541939 -0.00086168  0.00260811 -0.00065908

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000018  0.03962945  0.28215509  0.00073305  0.46589559  0.00181123 -0.00489480 -0.00070160

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000008  0.46661649 -0.06496171  0.03479026 -0.00312410 -0.00430721 -0.27278921  0.00195174

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000365  0.00284844 -0.00650709 -0.00263281 -0.00155204  0.03636033 -0.02376776 -0.08349919

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000022  0.03452070 -0.00419170 -0.47111403 -0.00056337  0.27242356 -0.00320876  0.00440136

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.05078552  0.01178095 -0.00159903 -0.08000459  0.00154507 -0.32107807  0.02781982 -0.04994970

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.41254387  0.00912419 -0.00126326 -0.00860400  0.00052713 -0.03808389  0.03421158  0.36649170

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.03990895  0.07932659 -0.01102398  0.01286761  0.00293098  0.03258436  0.32237595 -0.03670962

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00991951
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00056713  0.00002976  0.00001270  0.00000818 -0.00000009
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.57298124  0.00001298  0.00000395 -0.00001095 -0.00000092
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00315310  0.00000174  0.00001933 -0.00011001  0.00000016
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00221411  0.00008498 -0.00002853 -0.00001487 -0.00000007
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.10788747  0.00001265 -0.00001497  0.00003025 -0.00000093
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000661 -0.22263195 -0.36953897 -0.03243323 -0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000941 -0.37074705  0.22293157  0.00487613 -0.00000001
                           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000528  0.01254961  0.03030086 -0.43138813 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

  10    1  |0 0>           0.00000187 -0.00000002 -0.00000002 -0.00000004  0.72333394
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000959  0.34818006 -0.22509340 -0.05978752 -0.00000000
                          -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.01006878  0.08375322 -0.05422005 -0.01348120  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.01829038 -0.04555362  0.02924442  0.00845021  0.00000009
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00337150 -0.05467237 -0.08232946 -0.00907117  0.00000004
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.01516043  0.00641386 -0.01506510  0.09795483 -0.00000012
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.34197844 -0.00060981 -0.00061805 -0.00068381 -0.00000124
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.28643240  0.02002124  0.04746781 -0.06211681  0.39429709
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.05290557  0.07196843 -0.03224833  0.54049585  0.04490856
                          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

   9    1  |1 1>+          0.02985065  0.29641714  0.46009896 -0.00606280 -0.03753858
                           0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000327 -0.03073333  0.06218691 -0.41310691 -0.00000001

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.03387819 -0.00052673  0.00001974  0.00318210 -0.00000015

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00101122 -0.00901192  0.01725909 -0.11292178  0.00000003

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.19661843  0.00011601 -0.00115388 -0.00010503  0.00000124

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00954190 -0.08215990  0.05374447  0.01493236  0.00000006

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00220854  0.05521267  0.08210386  0.00811153 -0.00000005

   7    1  |1 0>          -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                           0.03075702 -0.35526451 -0.41553479 -0.03611761  0.03279460

   8    1  |1 0>          -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.02450500  0.41728726 -0.34327073 -0.08271546  0.04225065

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.34787237 -0.01512831  0.07121264  0.01184617  0.39501464

   1    1  |1 1>-         -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00000639 -0.23086157 -0.34775932 -0.03517470 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00449738  0.05383035  0.08114510  0.00820623  0.00000003

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00411130  0.03309293  0.04967718  0.00490114  0.00000008

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01455893  0.08237873 -0.05321108 -0.01505791  0.00000002

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.53817798 -0.00002943 -0.00153965  0.00036431  0.00000414

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02040927  0.00807974 -0.01514756  0.09771851  0.00000006

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.01409728  0.07749716 -0.10504913  0.52991343  0.04848079

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.06070829  0.05299264 -0.04052056  0.05279181 -0.39382040

   9    1  |1 1>-          0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00520602  0.44908846 -0.28508254 -0.12883368  0.03809772


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2789.20625997     -0.00009356      -20.53      0.00000000        0.00      0.0000
     2   1  -2788.80129039      0.40487601    88860.01      0.40496957    88880.55     11.0198
     3   1  -2788.80129037      0.40487603    88860.02      0.40496959    88880.55     11.0198
     4   1  -2788.80129037      0.40487603    88860.02      0.40496960    88880.55     11.0198
     5   1  -2788.79684222      0.40932419    89836.28      0.40941775    89856.81     11.1408
     6   1  -2788.79684221      0.40932420    89836.28      0.40941776    89856.81     11.1408
     7   1  -2788.79684221      0.40932420    89836.28      0.40941776    89856.81     11.1408
     8   1  -2788.79684221      0.40932420    89836.28      0.40941776    89856.81     11.1408
     9   1  -2788.79684218      0.40932422    89836.28      0.40941778    89856.82     11.1408
    10   1  -2788.79684210      0.40932430    89836.30      0.40941786    89856.83     11.1408
    11   1  -2788.79684210      0.40932431    89836.30      0.40941787    89856.84     11.1408
    12   1  -2788.79667760      0.40948881    89872.41      0.40958237    89892.94     11.1453
    13   1  -2788.79667752      0.40948889    89872.42      0.40958245    89892.96     11.1453
    14   1  -2788.79667748      0.40948893    89872.43      0.40958249    89892.97     11.1453
    15   1  -2788.79667740      0.40948900    89872.45      0.40958256    89892.98     11.1453
    16   1  -2788.79667729      0.40948911    89872.47      0.40958267    89893.01     11.1453
    17   1  -2788.79385164      0.41231477    90492.63      0.41240833    90513.17     11.2222
    18   1  -2788.79385163      0.41231478    90492.63      0.41240834    90513.17     11.2222
    19   1  -2788.79385160      0.41231480    90492.64      0.41240836    90513.17     11.2222
    20   1  -2788.79313685      0.41302956    90649.51      0.41312312    90670.04     11.2417
    21   1  -2788.79313679      0.41302961    90649.52      0.41312317    90670.06     11.2417
    22   1  -2788.79313679      0.41302962    90649.52      0.41312318    90670.06     11.2417
    23   1  -2788.79313674      0.41302967    90649.53      0.41312323    90670.07     11.2417
    24   1  -2788.79313671      0.41302970    90649.54      0.41312326    90670.07     11.2417
    25   1  -2788.78670536      0.41946105    92061.06      0.41955461    92081.59     11.4167
    26   1  -2788.77185996      0.43430645    95319.25      0.43440001    95339.78     11.8206
    27   1  -2788.77185995      0.43430645    95319.25      0.43440001    95339.78     11.8206
    28   1  -2788.77185991      0.43430649    95319.26      0.43440006    95339.79     11.8206
    29   1  -2788.77042862      0.43573778    95633.39      0.43583135    95653.92     11.8596
    30   1  -2788.77042854      0.43573786    95633.41      0.43583142    95653.94     11.8596
    31   1  -2788.77042852      0.43573789    95633.41      0.43583145    95653.95     11.8596
    32   1  -2788.77042846      0.43573794    95633.42      0.43583150    95653.96     11.8596
    33   1  -2788.77042840      0.43573800    95633.44      0.43583156    95653.97     11.8596
    34   1  -2788.77037032      0.43579608    95646.18      0.43588964    95666.72     11.8612
    35   1  -2788.77037032      0.43579609    95646.19      0.43588965    95666.72     11.8612
    36   1  -2788.77037030      0.43579611    95646.19      0.43588967    95666.72     11.8612
    37   1  -2788.76490406      0.44126235    96845.89      0.44135591    96866.43     12.0099

 E0 =  -2789.20616641 is the energy of the lowest zeroth-order state
 E1 =  -2789.20625997 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99989105  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000100  0.00000002  0.00000004 -0.00000007  0.00000378  0.00000044  0.00005892
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000011 -0.00000027  0.00000006  0.00000468  0.00003527  0.00000582 -0.00000335
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000001  0.00000388  0.00000091 -0.00005300  0.00000197  0.00000079 -0.00000003
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000012 -0.00000093  0.00000350  0.00000142 -0.00000602  0.00007919 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000002  0.00000000 -0.00000005  0.00000064  0.00001455  0.00000089 -0.00000090
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.20804793  0.00401263 -0.01550214  0.00000008  0.00000024 -0.00000008  0.00000277
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.01588270 -0.07742458  0.19311920 -0.00000058  0.00000000  0.00000094  0.00000020
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00203827 -0.19372635 -0.07750090 -0.00000449  0.00000006  0.00000004  0.00000009
                                0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00037288 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000001  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.03144940 -0.22465400  0.87375625 -0.00000002  0.00000004 -0.00000042  0.00000005
                                0.00000000  0.00000000 -0.00000001  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000000 -0.00044128 -0.00325278  0.01219980 -0.01696971  0.04281769 -0.66650458  0.00532719
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 13  1     3    1  |1 1>+      -0.00000000  0.00025281  0.00162931 -0.00666260 -0.00465182  0.00591536 -0.11377045  0.00088277
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.00000000  0.01244376  0.00016017  0.00049981  0.01000549  0.04126580  0.00792004  0.63110587
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001

 15  1     5    1  |1 1>+       0.00000000  0.00028250 -0.01204725 -0.00315898 -0.34928082 -0.00151493  0.01251592  0.00743715
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00000002  0.00011256  0.00007649  0.00001570 -0.00371366  0.57512452  0.03634159 -0.03561833
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00842721  0.02231582 -0.03115226 -0.00720643  0.00000161 -0.00000562 -0.00000056  0.00000159
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00095981  0.02419124  0.25425800  0.06624384 -0.00001415 -0.00000070  0.00000016  0.00000151
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00080230  0.26334064 -0.02303877  0.00355503  0.00000139  0.00000134  0.00000020  0.00001247
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000003 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.01353892  0.87430576  0.22430800  0.00000064 -0.00000002 -0.00000005 -0.00000001

 21  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000951 -0.00033665 -0.00020238  0.52041064  0.00611568 -0.00886145 -0.00571958

 22  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00019769  0.01394011  0.00349351  0.32415392  0.00158923 -0.00756175 -0.00476839

 23  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000005  0.00011089 -0.00003605  0.00009043  0.00576107 -0.57449476 -0.03729398  0.04313998

 24  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00035946  0.00300928 -0.01207088 -0.00442813 -0.01077455  0.11128284 -0.00083237

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.01244413 -0.00007462 -0.00038843 -0.00126695 -0.01618062 -0.00175105 -0.19446434

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00070091 -0.26361062 -0.00957677  0.02141700  0.00000011  0.00000125  0.00000259  0.00001477

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00090301 -0.02075556  0.06511408 -0.25505429 -0.00000038  0.00000183 -0.00002036  0.00000162

 28  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00844252  0.02410524 -0.00616953  0.02550251  0.00000031  0.00000422  0.00000238 -0.00000190

 29  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.90207261  0.00528996  0.03382877  0.00000000 -0.00000004  0.00000005 -0.00000015

 30  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001
                                0.00000000 -0.01225203 -0.00007112 -0.00046240  0.00812437  0.05691715  0.00888935  0.72321061

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00750491 -0.00003244 -0.00026568  0.00083767  0.01454234  0.00183716  0.18727691

 32  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00043191 -0.00298716  0.01207707  0.00860203 -0.05053538  0.72490099 -0.00504892

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000010  0.00015740 -0.00009545  0.00007745 -0.00159804  0.57374225  0.04173016 -0.04919236

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00017282 -0.01208809 -0.00298450  0.70815164  0.00334471 -0.00831299 -0.00818849

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00103617 -0.00317844  0.25984404  0.04412344  0.00000629 -0.00000016  0.00000130 -0.00000002

 36  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00841701  0.00053187  0.03597986 -0.01980933  0.00000093  0.00000068  0.00000180 -0.00000000

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00081425  0.00954271  0.04126783 -0.26092017 -0.00000021 -0.00000109  0.00001704 -0.00000011


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00016221 -0.00000033  0.00000020  0.67659033 -0.00278956 -0.00021238 -0.00028721  0.00047591
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000137  0.00000554  0.00000274 -0.00040364  0.00288434 -0.00507538  0.12618395  0.66466624
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000008  0.00000145 -0.00003576  0.00020047 -0.00064186  0.67646618 -0.01014681  0.00709448
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000132  0.00015300  0.00000040  0.00279346  0.67655848  0.00073193  0.00353037 -0.00359900
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000027 -0.00000049 -0.00000057  0.00035711 -0.00415218  0.01128674  0.66460810 -0.12607147
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000144  0.00000015  0.00000011 -0.00000730  0.00000027  0.00000000 -0.00000005  0.00000011
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000007 -0.00000374 -0.00000122 -0.00000052 -0.00000695  0.00000003 -0.00000020 -0.00000022
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000001  0.00000057 -0.00000800 -0.00000010  0.00000088 -0.00000077 -0.00000010  0.00000027
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000003 -0.00000000 -0.00000000  0.00000002 -0.00000007  0.00000012  0.00000114  0.00000087
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.00000119 -0.00000009 -0.00000009 -0.00000006  0.00000001 -0.00000007 -0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00032753  0.30470001  0.00566488  0.00139384  0.27803954  0.00199464  0.00401512  0.00791533
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00250805 -0.61718861  0.00103806  0.00214397  0.51207329  0.00070477  0.00680111  0.01453394
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.36491114  0.00108045 -0.00342934 -0.29138078  0.00109376 -0.00194144 -0.00496770 -0.00176120
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00267026 -0.00169806  0.64115567 -0.00173713 -0.00465392  0.29099045 -0.00484529 -0.01578808
                               -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00087461 -0.00131350 -0.00285571 -0.00271762 -0.01249759  0.02377857  0.55556313  0.17407445
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.00000246 -0.00000020  0.00000089  0.01063366  0.00325138 -0.02227591  0.04434462 -0.13807463
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00000353  0.00000024 -0.00000811  0.01376181  0.00086469  0.12517120  0.00147722 -0.02303708
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+      -0.00003350 -0.00000010  0.00000083  0.12654930 -0.00097841 -0.01174041 -0.00386961  0.01405129
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000009  0.00000238  0.00000005 -0.00000000  0.00000288  0.00000004 -0.00000029

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00025968  0.00765594 -0.24993555  0.00096136  0.00514599  0.58147657 -0.01631765 -0.03316582

 22  1     3    1  |1 0>        0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00136028  0.00140894  0.70331085  0.00038701  0.00196530  0.01516896  0.00003408 -0.00121055

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00397374 -0.00480437 -0.00184344  0.00314611  0.00289720 -0.01041494  0.42961668 -0.39369394

 24  1     5    1  |1 0>        0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00183194  0.72172654  0.00128647 -0.00038817  0.29108355 -0.00608597  0.00764886  0.00579798

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.70380510 -0.00201132  0.00076254 -0.29122016 -0.00034315  0.00041412  0.00395828 -0.00392352

 26  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002779  0.00000349  0.00000007  0.12642701  0.01454825  0.00050913  0.00839191  0.00949021

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000292 -0.00002905 -0.00000006  0.01378287 -0.12670205  0.00121907  0.00869742  0.00784316

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000247  0.00000276 -0.00000004 -0.01206007  0.00771577  0.00892619  0.09886896  0.10775838

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000032 -0.00000000  0.00000000  0.00000205  0.00000004  0.00000003  0.00000005  0.00000002

 30  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02875759 -0.00080625  0.00138807  0.30441205 -0.00135910 -0.00080170 -0.00120889 -0.00483327

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.60879512 -0.00203521 -0.00011499 -0.49715976  0.00278723  0.00089295 -0.00070911 -0.00418884

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00108063  0.07244700  0.00037572  0.00195543  0.29101955  0.00227252  0.00514248  0.01251591

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00123510 -0.00002701  0.00214423  0.00104556  0.02040225 -0.03790697 -0.12580390 -0.56747434

 34  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00128729 -0.00020343  0.17815746 -0.00106496  0.00128650 -0.29053625  0.00893652  0.02021884

 35  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000248  0.00001071 -0.00016343  0.01010218 -0.12641045 -0.01383145  0.01144064

 36  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002  0.00000355  0.00000108  0.00010249  0.01230507 -0.01223213  0.14284838 -0.03050484

 37  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000034  0.00003579 -0.00000078  0.00061490  0.12669671  0.01151096 -0.01223636  0.00605128


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002  0.00000004 -0.00000007
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000487  0.00001484  0.00000099 -0.44857264 -0.03076036  0.00787244  0.00626495  0.00127023
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000080  0.00000035 -0.00000179 -0.00067821  0.00710167  0.02019483  0.05142120 -0.44631471
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000038  0.00000046  0.00000077  0.01283171 -0.06953963  0.44339177  0.01594455  0.02077314
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00001014 -0.00000078 -0.00000237 -0.02925229  0.44308515  0.07023170 -0.00906815  0.00922769
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000146 -0.00000038  0.00000205 -0.00532198 -0.01109941  0.01684857 -0.44640376 -0.05084227
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.12558672  0.71930824  0.02604041  0.00001230 -0.00000084 -0.00000147 -0.00000047  0.00000066
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.71801283 -0.12334526 -0.05566704  0.00000338 -0.00000746 -0.00000133  0.00000204  0.00000113
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.05040664 -0.03515807  0.72806400  0.00000087  0.00000113  0.00000377  0.00000373 -0.00000172
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000001 -0.00000002 -0.00000019  0.00000028 -0.00000063 -0.00000235  0.00000274
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.04528486 -0.00957049 -0.00971010  0.00000008 -0.00000257 -0.00000034 -0.00000005  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.25161102  0.05321532  0.05156642  0.00529036 -0.07912041 -0.01318357  0.00150891  0.00113305
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.13614877 -0.02843597 -0.03088524  0.00964323 -0.14582423 -0.02342015  0.00263709  0.00206951
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.05577909  0.25207288  0.01274232 -0.08401910 -0.00583642  0.00212527 -0.00008657 -0.00059661
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.04779101  0.02337394 -0.25294051 -0.00300101  0.01428856 -0.08246080 -0.00150544 -0.00909330
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00096575  0.00213360  0.00161264  0.00073293  0.00612230 -0.01355877  0.13808334  0.09531731
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00195594  0.03143303 -0.04010454  0.05810118 -0.01691673  0.12660816  0.40268514 -0.56468604
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.07373826  0.00700538  0.33699910  0.04925200  0.09445722 -0.59060718  0.02810621 -0.13497771
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.06767390  0.33853514 -0.01805131  0.60837970  0.03399311  0.04262037 -0.04500273  0.05980304
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00907427  0.00398510 -0.04625010 -0.00000009  0.00000080 -0.00000500  0.00000002 -0.00000065

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00074414  0.00018175 -0.00807571 -0.00448698  0.02449857 -0.16536672 -0.00465556 -0.01926107

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.05892515 -0.02517464  0.29143001  0.00002206  0.00012557 -0.00438619  0.00004278 -0.00056678

 23  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00138785  0.00272462  0.00020942  0.00264138  0.00198543  0.00425765  0.15241221 -0.07150792

 24  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.24679572 -0.05367675 -0.05496386  0.00509055 -0.08325674 -0.01146856  0.00279547  0.00092191

 25  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.05706199 -0.25190244 -0.01013043 -0.08403812 -0.00527691  0.00146799  0.00254340 -0.00045589

 26  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.11435610 -0.32659912 -0.00570442  0.61134944 -0.02948508 -0.02786491  0.01776941  0.05207038

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.32009681 -0.10759809 -0.07207684  0.02935732  0.60600005  0.08445414  0.01936584  0.05814945

 28  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02474516  0.03862294  0.00818326 -0.05136329 -0.03398274 -0.08602417  0.29993957  0.63245576

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01017768 -0.04614924 -0.00197940  0.00000189  0.00000006 -0.00000011 -0.00000002  0.00000008

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.05470586 -0.24833229 -0.01066415  0.08777756  0.00603303 -0.00125616 -0.00108599 -0.00172121

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.03373623 -0.15209569 -0.00616559 -0.14329353 -0.00999289  0.00233216  0.00207703 -0.00074547

 32  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.24703367  0.05217957  0.05538804  0.00568329 -0.08283557 -0.01392394  0.00147206  0.00242988

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00144215  0.00375633 -0.00099673  0.00063755 -0.00581859  0.01866703  0.01441274 -0.16666502

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.05189055  0.02205117 -0.25226316  0.00214347 -0.01336621  0.08242514  0.00224534  0.01068189

 35  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.09325685 -0.03472089  0.33000374  0.01869989 -0.14323838  0.59151872 -0.06823311  0.06336445

 36  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.04274758 -0.01074398  0.03069364  0.01428900 -0.05595046  0.03423891  0.70110617  0.06600973

 37  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.32323441 -0.06688525 -0.10262730  0.03773126 -0.59318927 -0.14868723 -0.05752197 -0.00290454


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01093118 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000018 -0.00000086 -0.00000633  0.00000009  0.58302093  0.00313165 -0.00522659 -0.00023049
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000073  0.00000004 -0.00000036 -0.00000088 -0.00060460 -0.00295009 -0.00227852 -0.10789212
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000045 -0.00000106 -0.00000004  0.00001233 -0.00318114  0.58301729 -0.00521860  0.00093218
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000018  0.00000278 -0.00000046  0.00000025  0.00519593  0.00523604  0.58300512 -0.00072621
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000367 -0.00000021  0.00000002  0.00000015  0.00013245 -0.00149606  0.00031624  0.57299091
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000002  0.04609368  0.48297594  0.00623091  0.00002413  0.00000705  0.00001348 -0.00000429
                               -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000001  0.48205929 -0.04560525 -0.03108399  0.00001481 -0.00000344  0.00006255  0.00001217
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000002 -0.03035299  0.00914314 -0.48417889  0.00000521 -0.00007380 -0.00001034  0.00002432
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.69049828  0.00000000 -0.00000004  0.00000004  0.00000020 -0.00000039  0.00000015  0.00000254
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.08493546  0.01179979 -0.00554232 -0.00001268 -0.00000542 -0.00006707 -0.00000862
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.00000005  0.47407804 -0.06574651  0.02666352 -0.00254233 -0.00393960 -0.26055370  0.00126765
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00000011 -0.25721983  0.03525750 -0.01986549 -0.00429325 -0.00447445 -0.47973080  0.00289478
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000017 -0.06481990 -0.46791312  0.00331501  0.27315960  0.00329567 -0.00234853  0.00383715
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.00000009  0.02712217 -0.00712054 -0.47154784  0.00320742 -0.27264071  0.00637408 -0.00649848
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000286 -0.00107045 -0.00420152  0.00286535  0.00294607 -0.01355922  0.01071822 -0.42575747
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.41303904  0.00028861  0.00672410  0.00989299  0.02761228 -0.06075147  0.01247890  0.23250951
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.04704329  0.00633608  0.00787754 -0.08033302  0.03328299  0.31897633  0.00010697  0.03107787
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.03932296  0.01061141  0.08005094  0.00780910  0.32281242 -0.02772858 -0.00422749 -0.02273211
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00549678 -0.00072346 -0.08576104  0.00000648 -0.00008362 -0.00000225  0.00002470

 21  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000034 -0.00330625  0.00046677 -0.01446405  0.00219070 -0.54508881 -0.00076694 -0.00763166

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000006 -0.03799410  0.00444606  0.54396029 -0.00028907 -0.01419653 -0.00174143 -0.00069692

 23  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000050  0.00291263 -0.00477448 -0.00030483 -0.00308319  0.01933668 -0.00830984 -0.50932398

 24  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000008 -0.46627822  0.06767069 -0.03388435 -0.00096870  0.00361982 -0.27303529 -0.00237577

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000003  0.06780233  0.46749420  0.00107960  0.27318166  0.00126206 -0.00105263 -0.00474330

 26  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.03435401 -0.02088662 -0.07848575 -0.00067669  0.32254490  0.00319235  0.03543609  0.01088327

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.04425976  0.07831512 -0.02014930  0.00518999  0.03355080  0.00042698 -0.32337995  0.01600535

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.41379772 -0.00664259  0.00867116 -0.00049900 -0.03098255  0.01972614  0.01837867  0.13465613

 29  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.01182208  0.08511605  0.00003961  0.00001968  0.00000580  0.00001559 -0.00000334

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008  0.06387915  0.46071998  0.00020681 -0.28541939 -0.00086168  0.00260811 -0.00065908

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000018  0.03962945  0.28215509  0.00073305  0.46589559  0.00181123 -0.00489480 -0.00070160

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000008  0.46661649 -0.06496171  0.03479026 -0.00312410 -0.00430721 -0.27278921  0.00195174

 33  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000365  0.00284844 -0.00650709 -0.00263281 -0.00155204  0.03636033 -0.02376776 -0.08349919

 34  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000022  0.03452070 -0.00419170 -0.47111403 -0.00056337  0.27242356 -0.00320876  0.00440136

 35  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.05078552  0.01178095 -0.00159903 -0.08000459  0.00154507 -0.32107807  0.02781982 -0.04994970

 36  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.41254387  0.00912419 -0.00126326 -0.00860400  0.00052713 -0.03808389  0.03421158  0.36649170

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.03990895  0.07932659 -0.01102398  0.01286761  0.00293098  0.03258436  0.32237595 -0.03670962


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00991951
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00056713  0.00002976  0.00001270  0.00000818 -0.00000009
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.57298124  0.00001298  0.00000395 -0.00001095 -0.00000092
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00315310  0.00000174  0.00001933 -0.00011001  0.00000016
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00221411  0.00008498 -0.00002853 -0.00001487 -0.00000007
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.10788747  0.00001265 -0.00001497  0.00003025 -0.00000093
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000661 -0.22263195 -0.36953897 -0.03243323 -0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000941 -0.37074705  0.22293157  0.00487613 -0.00000001
                                0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000528  0.01254961  0.03030086 -0.43138813 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

 10  1    10    1  |0 0>        0.00000187 -0.00000002 -0.00000002 -0.00000004  0.72333394
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000959  0.34818006 -0.22509340 -0.05978752 -0.00000000
                               -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.01006878  0.08375322 -0.05422005 -0.01348120  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.01829038 -0.04555362  0.02924442  0.00845021  0.00000009
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00337150 -0.05467237 -0.08232946 -0.00907117  0.00000004
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.01516043  0.00641386 -0.01506510  0.09795483 -0.00000012
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.34197844 -0.00060981 -0.00061805 -0.00068381 -0.00000124
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.28643240  0.02002124  0.04746781 -0.06211681  0.39429709
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.05290557  0.07196843 -0.03224833  0.54049585  0.04490856
                               -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

 19  1     9    1  |1 1>+       0.02985065  0.29641714  0.46009896 -0.00606280 -0.03753858
                                0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000327 -0.03073333  0.06218691 -0.41310691 -0.00000001

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.03387819 -0.00052673  0.00001974  0.00318210 -0.00000015

 22  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00101122 -0.00901192  0.01725909 -0.11292178  0.00000003

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.19661843  0.00011601 -0.00115388 -0.00010503  0.00000124

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00954190 -0.08215990  0.05374447  0.01493236  0.00000006

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00220854  0.05521267  0.08210386  0.00811153 -0.00000005

 26  1     7    1  |1 0>       -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                                0.03075702 -0.35526451 -0.41553479 -0.03611761  0.03279460

 27  1     8    1  |1 0>       -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.02450500  0.41728726 -0.34327073 -0.08271546  0.04225065

 28  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.34787237 -0.01512831  0.07121264  0.01184617  0.39501464

 29  1     1    1  |1 1>-      -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00000639 -0.23086157 -0.34775932 -0.03517470 -0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00449738  0.05383035  0.08114510  0.00820623  0.00000003

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00411130  0.03309293  0.04967718  0.00490114  0.00000008

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01455893  0.08237873 -0.05321108 -0.01505791  0.00000002

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.53817798 -0.00002943 -0.00153965  0.00036431  0.00000414

 34  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02040927  0.00807974 -0.01514756  0.09771851  0.00000006

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.01409728  0.07749716 -0.10504913  0.52991343  0.04848079

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.06070829  0.05299264 -0.04052056  0.05279181 -0.39382040

 37  1     9    1  |1 1>-       0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00520602  0.44908846 -0.28508254 -0.12883368  0.03809772



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
  7  1     7    1  |0 0>          0.00%    4.33%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.03%    0.60%    3.73%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    3.75%    0.60%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.10%    5.05%   76.34%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.03%    0.18%   44.42%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.29%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.01%    0.17%    0.01%   39.83%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.00%   12.20%    0.00%    0.02%    0.01%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.08%    0.13%    0.13%
 17  1     7    1  |1 1>+         0.01%    0.05%    0.10%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.06%    6.46%    0.44%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    6.93%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.02%   76.44%    5.03%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   27.08%    0.00%    0.01%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.02%    0.00%   10.51%    0.00%    0.01%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.00%    0.14%    0.19%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    1.24%    0.00%
 25  1     6    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.03%    0.00%    3.78%
 26  1     7    1  |1 0>          0.00%    6.95%    0.01%    0.05%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.04%    0.42%    6.51%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.01%    0.06%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   81.37%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.01%    0.32%    0.01%   52.30%
 31  1     3    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.02%    0.00%    3.51%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.01%    0.26%   52.55%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.92%    0.17%    0.24%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%   50.15%    0.00%    0.01%    0.01%
 35  1     7    1  |1 1>-         0.00%    0.00%    6.75%    0.19%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.13%    0.04%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.01%    0.17%    6.81%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%   45.78%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.59%   44.18%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   45.76%    0.01%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   45.77%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   44.17%    1.59%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    9.28%    0.00%    0.00%    7.73%    0.00%    0.00%    0.01%
 13  1     3    1  |1 1>+         0.00%   38.09%    0.00%    0.00%   26.22%    0.00%    0.00%    0.02%
 14  1     4    1  |1 1>+        13.32%    0.00%    0.00%    8.49%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%   41.11%    0.00%    0.00%    8.47%    0.00%    0.02%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.06%   30.87%    3.03%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.05%    0.20%    1.91%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    1.57%    0.00%    0.05%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    1.60%    0.00%    0.01%    0.00%    0.02%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.01%    6.25%    0.00%    0.00%   33.81%    0.03%    0.11%
 22  1     3    1  |1 0>          0.00%    0.00%   49.46%    0.00%    0.00%    0.02%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   18.46%   15.50%
 24  1     5    1  |1 0>          0.00%   52.09%    0.00%    0.00%    8.47%    0.00%    0.01%    0.00%
 25  1     6    1  |1 0>         49.53%    0.00%    0.00%    8.48%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    1.60%    0.02%    0.00%    0.01%    0.01%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.02%    1.61%    0.00%    0.01%    0.01%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.01%    0.01%    0.98%    1.16%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.08%    0.00%    0.00%    9.27%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-        37.06%    0.00%    0.00%   24.72%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.52%    0.00%    0.00%    8.47%    0.00%    0.00%    0.02%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.14%    1.58%   32.20%
 34  1     6    1  |1 1>-         0.00%    0.00%    3.17%    0.00%    0.00%    8.44%    0.01%    0.04%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    1.60%    0.02%    0.01%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    2.04%    0.09%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.61%    0.01%    0.01%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%   20.12%    0.09%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.04%    0.26%   19.92%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.02%    0.48%   19.66%    0.03%    0.04%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.09%   19.63%    0.49%    0.01%    0.01%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.03%   19.93%    0.26%
  7  1     7    1  |0 0>          1.58%   51.74%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         51.55%    1.52%    0.31%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.25%    0.12%   53.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.21%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         6.33%    0.28%    0.27%    0.00%    0.63%    0.02%    0.00%    0.00%
 13  1     3    1  |1 1>+         1.85%    0.08%    0.10%    0.01%    2.13%    0.05%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.31%    6.35%    0.02%    0.71%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.23%    0.05%    6.40%    0.00%    0.02%    0.68%    0.00%    0.01%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    1.91%    0.91%
 17  1     7    1  |1 1>+         0.00%    0.10%    0.16%    0.34%    0.03%    1.60%   16.22%   31.89%
 18  1     8    1  |1 1>+         0.54%    0.00%   11.36%    0.24%    0.89%   34.88%    0.08%    1.82%
 19  1     9    1  |1 1>+         0.46%   11.46%    0.03%   37.01%    0.12%    0.18%    0.20%    0.36%
 20  1     1    1  |1 0>          0.01%    0.00%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.06%    2.73%    0.00%    0.04%
 22  1     3    1  |1 0>          0.35%    0.06%    8.49%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.32%    0.51%
 24  1     5    1  |1 0>          6.09%    0.29%    0.30%    0.00%    0.69%    0.01%    0.00%    0.00%
 25  1     6    1  |1 0>          0.33%    6.35%    0.01%    0.71%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          1.31%   10.67%    0.00%   37.37%    0.09%    0.08%    0.03%    0.27%
 27  1     8    1  |1 0>         10.25%    1.16%    0.52%    0.09%   36.72%    0.71%    0.04%    0.34%
 28  1     9    1  |1 0>          0.06%    0.15%    0.01%    0.26%    0.12%    0.74%    9.00%   40.00%
 29  1     1    1  |1 1>-         0.01%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.30%    6.17%    0.01%    0.77%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.11%    2.31%    0.00%    2.05%    0.01%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         6.10%    0.27%    0.31%    0.00%    0.69%    0.02%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.02%    2.78%
 34  1     6    1  |1 1>-         0.27%    0.05%    6.36%    0.00%    0.02%    0.68%    0.00%    0.01%
 35  1     7    1  |1 1>-         0.87%    0.12%   10.89%    0.03%    2.05%   34.99%    0.47%    0.40%
 36  1     8    1  |1 1>-         0.18%    0.01%    0.09%    0.02%    0.31%    0.12%   49.15%    0.44%
 37  1     9    1  |1 1>-        10.45%    0.45%    1.05%    0.14%   35.19%    2.21%    0.33%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   33.99%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.16%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.99%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.99%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.83%
  7  1     7    1  |0 0>          0.00%    0.21%   23.33%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%   23.24%    0.21%    0.10%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.09%    0.01%   23.44%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         47.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.72%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   22.47%    0.43%    0.07%    0.00%    0.00%    6.79%    0.00%
 13  1     3    1  |1 1>+         0.00%    6.62%    0.12%    0.04%    0.00%    0.00%   23.01%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.42%   21.89%    0.00%    7.46%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.07%    0.01%   22.24%    0.00%    7.43%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%   18.13%
 17  1     7    1  |1 1>+        17.06%    0.00%    0.00%    0.01%    0.08%    0.37%    0.02%    5.41%
 18  1     8    1  |1 1>+         0.22%    0.00%    0.01%    0.65%    0.11%   10.17%    0.00%    0.10%
 19  1     9    1  |1 1>+         0.15%    0.01%    0.64%    0.01%   10.42%    0.08%    0.00%    0.05%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.74%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%   29.71%    0.00%    0.01%
 22  1     3    1  |1 0>          0.00%    0.14%    0.00%   29.59%    0.00%    0.02%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.01%   25.94%
 24  1     5    1  |1 0>          0.00%   21.74%    0.46%    0.11%    0.00%    0.00%    7.45%    0.00%
 25  1     6    1  |1 0>          0.00%    0.46%   21.86%    0.00%    7.46%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.12%    0.04%    0.62%    0.00%   10.40%    0.00%    0.13%    0.01%
 27  1     8    1  |1 0>          0.20%    0.61%    0.04%    0.00%    0.11%    0.00%   10.46%    0.03%
 28  1     9    1  |1 0>         17.12%    0.00%    0.01%    0.00%    0.10%    0.04%    0.03%    1.81%
 29  1     1    1  |1 1>-         0.00%    0.01%    0.72%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.41%   21.23%    0.00%    8.15%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.16%    7.96%    0.00%   21.71%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%   21.77%    0.42%    0.12%    0.00%    0.00%    7.44%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.06%    0.70%
 34  1     6    1  |1 1>-         0.00%    0.12%    0.00%   22.19%    0.00%    7.42%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.26%    0.01%    0.00%    0.64%    0.00%   10.31%    0.08%    0.25%
 36  1     8    1  |1 1>-        17.02%    0.01%    0.00%    0.01%    0.00%    0.15%    0.12%   13.43%
 37  1     9    1  |1 1>-         0.16%    0.63%    0.01%    0.02%    0.00%    0.11%   10.39%    0.13%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         32.83%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          1.16%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    4.96%   13.66%    0.11%    0.00%
  8  1     8    1  |0 0>          0.00%   13.75%    4.97%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.02%    0.09%   18.61%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   52.32%
 11  1     1    1  |1 1>+         0.00%   12.12%    5.07%    0.36%    0.00%
 12  1     2    1  |1 1>+         0.01%    0.70%    0.29%    0.02%    0.00%
 13  1     3    1  |1 1>+         0.03%    0.21%    0.09%    0.01%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.30%    0.68%    0.01%    0.00%
 15  1     5    1  |1 1>+         0.02%    0.00%    0.02%    0.96%    0.00%
 16  1     6    1  |1 1>+        11.69%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         8.20%    0.04%    0.23%    0.39%   15.55%
 18  1     8    1  |1 1>+         0.28%    0.52%    0.10%   29.21%    0.20%
 19  1     9    1  |1 1>+         0.09%    8.79%   21.17%    0.00%    0.14%
 20  1     1    1  |1 0>          0.00%    0.09%    0.39%   17.07%    0.00%
 21  1     2    1  |1 0>          0.11%    0.00%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.01%    0.03%    1.28%    0.00%
 23  1     4    1  |1 0>          3.87%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.01%    0.68%    0.29%    0.02%    0.00%
 25  1     6    1  |1 0>          0.00%    0.30%    0.67%    0.01%    0.00%
 26  1     7    1  |1 0>          0.09%   12.62%   17.27%    0.13%    0.11%
 27  1     8    1  |1 0>          0.06%   17.41%   11.78%    0.68%    0.18%
 28  1     9    1  |1 0>         12.10%    0.02%    0.51%    0.01%   15.60%
 29  1     1    1  |1 1>-         0.00%    5.33%   12.09%    0.12%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.29%    0.66%    0.01%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.11%    0.25%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.02%    0.68%    0.28%    0.02%    0.00%
 33  1     5    1  |1 1>-        28.96%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.04%    0.01%    0.02%    0.95%    0.00%
 35  1     7    1  |1 1>-         0.02%    0.60%    1.10%   28.08%    0.24%
 36  1     8    1  |1 1>-         0.37%    0.28%    0.16%    0.28%   15.51%
 37  1     9    1  |1 1>-         0.00%   20.17%    8.13%    1.66%    0.15%


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

              2       7     1320.71       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     58624.93  53863.39      9.24   2651.07   2092.61      7.04      0.08      1.26
 REAL TIME  *     59161.00 SEC
 DISK USED  *         1.34 GB (local),       19.56 GB (total)
 SF USED    *         7.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2788.764904055928

              CI              CI           MULTI         RHF-SCF
  -2788.73086552  -2788.72006716  -2787.88201959  -2787.14843609
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
