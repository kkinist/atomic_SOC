
 Working directory              : /wrk/irikura/molpro.xo2Tfs7nMr/
 Global scratch directory       : /wrk/irikura/molpro.xo2Tfs7nMr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xo2Tfs7nMr/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Be SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Be};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=4,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,1,0
     occ,3,3
     wf,sym=1,spin=0;state,6;
     wf,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag(7) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Be SO-CI                                                                                                                                                      
  (12 PROC) 64 bit mpp version                                                           DATE: 29-Feb-24          TIME: 16:52:31  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BE     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry BE     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry BE     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry BE     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry BE     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry BE     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  BE      4.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    4
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     109.052 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 19.137 MB, node maximum: 25.952 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2441192. INTEGRALS IN      7 RECORDS. CPU TIME:     0.54 SEC, REAL TIME:     0.58 SEC
 SORT2 READ    12084466. AND WROTE    68575111. INTEGRALS IN    395 RECORDS. CPU TIME:     0.38 SEC, REAL TIME:     0.41 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.150E-05 0.336E-03 0.597E-02 0.123E-01 0.251E-01 0.251E-01 0.251E-01 0.251E-01
         2 0.106E-03 0.106E-03 0.106E-03 0.210E-01 0.210E-01 0.210E-01 0.210E-01 0.210E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.93      2.68
 REAL TIME  *         4.17 SEC
 DISK USED  *        30.07 MB (local),      376.27 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   0

 NELEC=    4   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -14.57552667     -14.57552667     0.00D+00     0.32D-01     0     0       0.06      0.13    start
   2      -14.57552678      -0.00000011     0.42D-04     0.83D-04     1     0       0.06      0.19    diag
   3      -14.57552679      -0.00000001     0.27D-05     0.98D-05     2     0       0.07      0.26    diag
   4      -14.57552679      -0.00000000     0.66D-06     0.22D-05     3     0       0.06      0.32    diag
   5      -14.57552679      -0.00000000     0.54D-07     0.25D-06     0     0       0.07      0.39    diag

 Final occupancy:   2   0

 !RHF STATE 1.1 Energy                -14.575526793268
  RHF One-electron energy             -19.065956974595
  RHF Two-electron energy               4.490430181327
  RHF Kinetic energy                   14.594457678923
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998702871592

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.73323     1  1  s    0.99848
    2.1     2.00000    -0.30932     1  2  s    1.01941


 HOMO      2.1    -0.309317 =      -8.4170eV
 LUMO      1.2     0.015252 =       0.4150eV
 LUMO-HOMO         0.324570 =       8.8320eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.65       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.33      0.40      2.68
 REAL TIME  *         4.58 SEC
 DISK USED  *        31.22 MB (local),      381.99 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:     175 (   84   91)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 2 3 4 6 1 6   2 3 4 512 8 7 91410  131113 1 4 2 5 3 612   7 8141510 91113 1 5
                                        4 3 2 612 810 71415   91111 5 6 4 2 3 110   712 8 913151415 5 4   2 6 3 1 6 5 4 2 3 1
                                        1 2 5 3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 3 2 1 7   410 8 6 9 5 3 1 2 4   8 5 9 610 7 3 1 219  11141720211513181612
                                        8 6 910 4 7 5 3 1 2  14121920211513111718  16 6 8 910 5 4 7 3 1   2 6 510 8 9 4 7 1 3
                                        2 3 1 2 5 7 6 8 4 9  10 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111
 
 Number of orbital rotations:  527  ( 2 closed/active, 84 closed/virtual, 0 active/active, 441 active/virtual )
 Total number of variables:    617
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    6    -14.08757493     -14.42897659   -0.34140167    0.07358187 0.00004064 0.00000000  0.17E+01      0.46
   2    7   12    0    -14.32848374     -14.35002050   -0.02153676    0.07337609 0.00001915 0.00000000  0.44E+00      0.84
   3    7   12    0    -14.35057625     -14.35065063   -0.00007438    0.00475189 0.00000353 0.00000000  0.19E-01      1.25
   4    5   10    0    -14.35065094     -14.35065094   -0.00000000    0.00003049 0.00000000 0.00000000  0.15E-03      1.54
   5    2    4    0    -14.35065094     -14.35065094   -0.00000000    0.00000000 0.00000000 0.00000000  0.40E-07      1.76

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.28E-08)
                       Final energy:    -14.35065094
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.615676998935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.58125608
 One electron energy                           -19.03588423
 Two electron energy                             4.42020723
 Virial ratio                                    2.00236063
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -14.304952049300
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236330
 One electron energy                           -18.60827347
 Two electron energy                             4.30332142
 Virial ratio                                    1.99739156
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -14.304952049295
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236330
 One electron energy                           -18.60827347
 Two electron energy                             4.30332143
 Virial ratio                                    1.99739156
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -14.304952049293
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236330
 One electron energy                           -18.60827347
 Two electron energy                             4.30332143
 Virial ratio                                    1.99739156
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -14.304952049200
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236331
 One electron energy                           -18.60827348
 Two electron energy                             4.30332143
 Virial ratio                                    1.99739156
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -14.304952049174
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236331
 One electron energy                           -18.60827348
 Two electron energy                             4.30332143
 Virial ratio                                    1.99739156
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.338473745287
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236331
 One electron energy                           -18.60827348
 Two electron energy                             4.26979974
 Virial ratio                                    1.99972881
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -14.338473745197
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236330
 One electron energy                           -18.60827347
 Two electron energy                             4.26979973
 Virial ratio                                    1.99972881
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -14.338473745195
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34236330
 One electron energy                           -18.60827347
 Two electron energy                             4.26979973
 Virial ratio                                    1.99972881
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.967557023646
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000044629
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999938256
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000067
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.032434004246
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999978
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000733
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999035
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000347147564
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999990698
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999193
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999999866
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.999653055818
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000044
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999978
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999978
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.032095828790
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999964673
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000062551
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000067
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.967912939936
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999978
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999289
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000987
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 2 4 5 3 6   2 4 5 3 111 712 8 9  14151013 6 2 4 5 311   712 8 914151013 1 6
                                        2 4 5 311 712 8 915  141013 6 2 4 5 3 111   7 812 914151013 6 2   4 5 3 1 6 2 4 5 3 1
                                        1 2 6 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 1 2 5   6 410 8 9 7 3 2 1 5   6 410 8 9 7 3 2 112  19132111141617152018
                                        5 6 4 810 9 7 3 2 1  12192113111416171520  18 5 6 4 810 9 7 3 2   1 5 6 410 8 9 7 3 2
                                        1 3 2 1 5 6 4 810 7   9 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.80172     1  1  s    1.00365
    2.1     0.20107    -0.09811     1  2  s    1.03678
    3.1     0.00040     0.39938     1  1  s   -0.47740    1  2  s   -4.15566    1  3  s   -0.31345    1  4  s   -0.51493
                                    1  5  s    3.19631    1  6  s    1.77561
    1.2     0.59951    -0.00275     1  1  px   1.05390
    2.2     0.59951    -0.00275     1  1  py   1.05390
    3.2     0.59951    -0.00275     1  1  pz   1.05390
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.95121828      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 00 020        -0.17642268      0.81646115     -0.00007932     -0.00004754     -0.00000120     -0.00760630
 00 002        -0.17642268     -0.40164332      0.00003607      0.00002154      0.00000062      0.71087925
 00 a0b        -0.00000000      0.00000104     -0.00000278      0.00000277      0.70710678     -0.00000003
 00 b0a         0.00000000     -0.00000104      0.00000278     -0.00000277     -0.70710678      0.00000003
 00 0ba        -0.00000000     -0.00004118      0.00006768     -0.70710678      0.00000277     -0.00000185
 00 0ab         0.00000000      0.00004118     -0.00006768      0.70710678     -0.00000277      0.00000185
 00 ba0         0.00000000     -0.00006873     -0.70710677     -0.00006768     -0.00000278     -0.00000295
 00 ab0        -0.00000000      0.00006873      0.70710677      0.00006768      0.00000278      0.00000295
 00 200        -0.17642268     -0.41481782      0.00004325      0.00002600      0.00000058     -0.70327295
 
 Energy:      -14.61567700    -14.30495205    -14.30495205    -14.30495205    -14.30495205    -14.30495205
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 00 a0a         1.00000000     -0.00000471      0.00000473
 00 0aa         0.00000471      1.00000000      0.00002666
 00 aa0        -0.00000473     -0.00002666      1.00000000
 
 Energy:      -14.33847375    -14.33847375    -14.33847375
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       34.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.39       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.09      1.73      0.40      2.68
 REAL TIME  *         6.65 SEC
 DISK USED  *        35.77 MB (local),      404.75 MB (total)
 SF USED    *        15.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.61567700  -0.0
    -14.30495205   6.0
    -14.30495205   6.0
    -14.30495205   6.0
    -14.30495205   6.0
    -14.30495205   6.0
    -14.33847375   2.0
    -14.33847375   2.0
    -14.33847375   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  4
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:        9 conf        9 CSFs
 N elec internal:       90 conf      105 CSFs
 N-1 el internal:       50 conf       70 CSFs
 N-2 el internal:       15 conf       24 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:     175 (  84  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.61567700
     2       -14.30495205
     3       -14.30495205
     4       -14.30495205
     5       -14.30495205
     6       -14.30495205

 Number of blocks in overlap matrix:    17   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      17
 Number of N-1 electron functions:      70

 Number of internal configurations:                   57
 Number of singly external configurations:          6125
 Number of doubly external configurations:        130830
 Total number of contracted configurations:       137012
 Total number of uncontracted configurations:     190604

 Diagonal Coupling coefficients finished.               Storage:    190936 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    392647 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.61567700     0.00000000    -0.05041651  0.52D-02  0.21D-02     0.03
    1     2     2     1.00000000     0.00000000   -14.30495205    -0.00000000    -0.08085181  0.46D-01  0.11D-01     0.03
    1     3     3     1.00000000     0.00000000   -14.30495205     0.00000000    -0.07711171  0.28D-01  0.11D-01     0.03
    1     4     4     1.00000000     0.00000000   -14.30495205     0.00000000    -0.07709202  0.28D-01  0.11D-01     0.03
    1     5     5     1.00000000     0.00000000   -14.30495205     0.00000000    -0.07709197  0.28D-01  0.11D-01     0.03
    1     6     6     1.00000000     0.00000000   -14.30495205    -0.00000000    -0.08082339  0.46D-01  0.11D-01     0.03
    2     1     1     1.00768302    -0.05220097   -14.66787797    -0.05220097    -0.00042059  0.69D-04  0.79D-04     1.12
    2     2     2     1.05770353    -0.08220600   -14.38715805    -0.08220600    -0.00553374  0.81D-02  0.78D-03     1.12
    2     3     3     1.05771052    -0.08219313   -14.38714518    -0.08219313    -0.00555452  0.81D-02  0.79D-03     1.12
    2     4     4     1.04085823    -0.07959611   -14.38454816    -0.07959611    -0.00647427  0.12D-01  0.73D-03     1.12
    2     5     5     1.04084018    -0.07958821   -14.38454026    -0.07958821    -0.00647149  0.12D-01  0.73D-03     1.12
    2     6     6     1.04084020    -0.07958820   -14.38454025    -0.07958820    -0.00647151  0.12D-01  0.73D-03     1.12
    3     1     1     1.00864791    -0.05265791   -14.66833491    -0.00045694    -0.00001842  0.11D-04  0.35D-05     2.20
    3     2     2     1.12066874    -0.09024581   -14.39519786    -0.00803981    -0.00126463  0.17D-02  0.15D-03     2.20
    3     3     3     1.12032882    -0.09023293   -14.39518498    -0.00803981    -0.00127005  0.17D-02  0.15D-03     2.20
    3     4     4     1.11880749    -0.08988654   -14.39483858    -0.01029042    -0.00151893  0.19D-02  0.18D-03     2.20
    3     5     5     1.11880733    -0.08988653   -14.39483858    -0.01029832    -0.00151893  0.19D-02  0.18D-03     2.20
    3     6     6     1.11861587    -0.08987664   -14.39482869    -0.01028844    -0.00152349  0.19D-02  0.18D-03     2.20
    4     1     1     1.00935169    -0.05268076   -14.66835776    -0.00002285    -0.00000113  0.32D-06  0.18D-06     3.26
    4     2     2     1.19255897    -0.09221350   -14.39716555    -0.00196769    -0.00018217  0.20D-03  0.46D-04     3.26
    4     3     3     1.19255167    -0.09221251   -14.39716456    -0.00197957    -0.00018302  0.20D-03  0.47D-04     3.26
    4     4     4     1.18837596    -0.09210376   -14.39705581    -0.00221723    -0.00025239  0.29D-03  0.59D-04     3.26
    4     5     5     1.18837594    -0.09210376   -14.39705581    -0.00221723    -0.00025239  0.29D-03  0.59D-04     3.26
    4     6     6     1.18841046    -0.09210322   -14.39705527    -0.00222658    -0.00025322  0.29D-03  0.60D-04     3.26
    5     1     1     1.00939590    -0.05268210   -14.66835910    -0.00000134    -0.00000004  0.17D-07  0.67D-08     4.35
    5     2     2     1.20481487    -0.09249134   -14.39744339    -0.00027784    -0.00002021  0.97D-05  0.36D-05     4.35
    5     3     3     1.20481065    -0.09249122   -14.39744327    -0.00027871    -0.00002031  0.97D-05  0.36D-05     4.35
    5     4     4     1.20282589    -0.09247871   -14.39743076    -0.00037494    -0.00002982  0.14D-04  0.65D-05     4.35
    5     5     5     1.20282589    -0.09247871   -14.39743076    -0.00037495    -0.00002982  0.14D-04  0.65D-05     4.35
    5     6     6     1.20280327    -0.09247864   -14.39743069    -0.00037542    -0.00002986  0.14D-04  0.66D-05     4.35
    6     1     1     1.00939470    -0.05268215   -14.66835915    -0.00000006    -0.00000000  0.88D-09  0.41D-09     5.35
    6     2     2     1.20818831    -0.09251530   -14.39746735    -0.00002396    -0.00000202  0.20D-05  0.31D-06     5.35
    6     3     3     1.20818013    -0.09251529   -14.39746733    -0.00002407    -0.00000203  0.20D-05  0.31D-06     5.35
    6     4     4     1.20729404    -0.09251357   -14.39746562    -0.00003487    -0.00000311  0.29D-05  0.46D-06     5.35
    6     5     5     1.20729404    -0.09251357   -14.39746562    -0.00003487    -0.00000311  0.29D-05  0.46D-06     5.35
    6     6     6     1.20727969    -0.09251354   -14.39746559    -0.00003490    -0.00000313  0.29D-05  0.46D-06     5.35
    7     1     1     1.00939470    -0.05268215   -14.66835915    -0.00000000    -0.00000000  0.88D-09  0.41D-09     6.22
    7     2     2     1.21081415    -0.09251798   -14.39747002    -0.00000268    -0.00000041  0.26D-06  0.83D-07     6.22
    7     3     3     1.21049332    -0.09251789   -14.39746994    -0.00000261    -0.00000040  0.40D-06  0.52D-07     6.22
    7     4     4     1.21049162    -0.09251789   -14.39746994    -0.00000432    -0.00000040  0.41D-06  0.52D-07     6.22
    7     5     5     1.21015152    -0.09251756   -14.39746961    -0.00000399    -0.00000061  0.63D-06  0.78D-07     6.22
    7     6     6     1.21015151    -0.09251756   -14.39746961    -0.00000402    -0.00000061  0.63D-06  0.78D-07     6.22
    8     1     1     1.00939470    -0.05268215   -14.66835915    -0.00000000    -0.00000000  0.88D-09  0.41D-09     7.07
    8     2     2     1.21172146    -0.09251850   -14.39747055    -0.00000052    -0.00000004  0.20D-07  0.73D-08     7.07
    8     3     3     1.21189278    -0.09251849   -14.39747054    -0.00000060    -0.00000004  0.19D-07  0.13D-07     7.07
    8     4     4     1.21164030    -0.09251847   -14.39747052    -0.00000058    -0.00000005  0.33D-07  0.83D-08     7.07
    8     5     5     1.21163918    -0.09251847   -14.39747052    -0.00000090    -0.00000005  0.33D-07  0.83D-08     7.07
    8     6     6     1.21151025    -0.09251842   -14.39747047    -0.00000086    -0.00000009  0.61D-07  0.15D-07     7.07
    9     1     1     1.00939470    -0.05268215   -14.66835915    -0.00000000    -0.00000000  0.88D-09  0.41D-09     7.92
    9     2     2     1.21195446    -0.09251854   -14.39747059    -0.00000004    -0.00000000  0.18D-08  0.80D-09     7.92
    9     3     3     1.21190502    -0.09251854   -14.39747059    -0.00000005    -0.00000000  0.29D-08  0.81D-09     7.92
    9     4     4     1.21183701    -0.09251853   -14.39747058    -0.00000006    -0.00000001  0.72D-08  0.17D-08     7.92
    9     5     5     1.21183669    -0.09251853   -14.39747058    -0.00000006    -0.00000001  0.73D-08  0.17D-08     7.92
    9     6     6     1.21176190    -0.09251852   -14.39747057    -0.00000010    -0.00000001  0.14D-07  0.30D-08     7.92
   10     1     1     1.00939470    -0.05268215   -14.66835915     0.00000000    -0.00000000  0.88D-09  0.41D-09     8.19
   10     2     2     1.21199930    -0.09251854   -14.39747059    -0.00000000    -0.00000000  0.30D-09  0.19D-09     8.19
   10     3     3     1.21195446    -0.09251854   -14.39747059    -0.00000000    -0.00000000  0.18D-08  0.80D-09     8.19
   10     4     4     1.21190502    -0.09251854   -14.39747059    -0.00000001    -0.00000000  0.29D-08  0.81D-09     8.19
   10     5     5     1.21183701    -0.09251853   -14.39747058    -0.00000000    -0.00000001  0.72D-08  0.17D-08     8.19
   10     6     6     1.21183669    -0.09251853   -14.39747058    -0.00000001    -0.00000001  0.73D-08  0.17D-08     8.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.0%   0.6%
 P   0.7%   3.9%  11.0%

 Initialization:   0.1%
 Other:           83.2%

 Total CPU:        8.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220000           0.9527513   0.0000000   0.0000000   0.0000000   0.0000004   0.0000008
 200/\0          -0.0000000   0.0000000   0.0000000   0.9083439  -0.0000000   0.0000000
 200/0\          -0.0000000  -0.0000000   0.9083254  -0.0000000  -0.0000000  -0.0000000
 2000/\          -0.0000000   0.9083086  -0.0000000  -0.0000000   0.0000000   0.0000000
 200200          -0.1640058   0.0000000   0.0000000   0.0000000   0.7410821  -0.0297906
 200020          -0.1640058   0.0000000   0.0000000   0.0000000  -0.3447412   0.6566918
 200002          -0.1640058   0.0000000   0.0000000   0.0000000  -0.3963406  -0.6269000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0000   5.1    -0.0000000   0.3510553   0.0000000  -0.0000000   0.0000000  -0.0000000
 2\0000   7.1     0.0000000   0.0000000  -0.3510023  -0.0000000   0.0000000  -0.0000000
 2\0000   9.1    -0.0000000   0.0000000   0.0000000  -0.3509562   0.0000000  -0.0000000
 2\0000   8.1     0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2966014   0.1874746
 2\0000   6.1     0.0000000   0.0000000   0.0000000  -0.0000000   0.1874750   0.2966013
 2\0000  14.1     0.0000000  -0.0000000   0.0000000  -0.1954882   0.0000000  -0.0000000
 2\0000  12.1     0.0000000  -0.0000000  -0.1954861  -0.0000000   0.0000000  -0.0000000
 2\0000  10.1     0.0000000  -0.1954840   0.0000000  -0.0000000   0.0000000   0.0000000
 2\0000  13.1     0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1652466   0.1044712
 2\0000  11.1    -0.0000001   0.0000000  -0.0000000  -0.0000000   0.1044711   0.1652465

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.994813   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.000000    0.000000    0.908309   -0.000000   -0.000000
 3           0.000000   -0.000000    0.000000   -0.000000    0.908325    0.000000
 4           0.000000    0.000000    0.908344   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.429688   -0.000000    0.000000   -0.000000   -0.800314
 6           0.000001    0.800314    0.000000    0.000000   -0.000000   -0.429688

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.994813    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.908309   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.908325    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.908344    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.908369   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.908370


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99481314 (fixed)   0.99530199 (relaxed)   0.99481314 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00105043   -0.00048757   -0.04291832
 Singles      0.00711479   -0.00937045   -0.00964479
 Pairs        0.00228978   -0.00000001   -0.00011904
 Total        1.01045500   -0.00985802   -0.05268215
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.61567700
 Nuclear energy                         0.00000000
 Kinetic energy                        14.68086438
 One electron energy                  -19.04098936
 Two electron energy                    4.37263020
 Virial quotient                       -0.99914820
 Correlation energy                    -0.05268215
 !MRCI STATE 1.1 Energy               -14.668359151255

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.66890994 (Davidson, fixed reference)
 Cluster corrected energies           -14.66885766 (Davidson, relaxed reference)
 Cluster corrected energies           -14.66890994 (Davidson, rotated reference)

 Cluster corrected energies           -14.66863454 (Pople, fixed reference)
 Cluster corrected energies           -14.66860840 (Pople, relaxed reference)
 Cluster corrected energies           -14.66863454 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.90830857 (fixed)   0.90830857 (relaxed)   0.90830857 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007095   -0.00068183   -0.04267370
 Singles      0.20068157   -0.04080093   -0.04898092
 Pairs        0.01133277    0.00000000   -0.00086391
 Total        1.21208529   -0.04148276   -0.09251854
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30495205
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41473958
 One electron energy                  -18.52374355
 Two electron energy                    4.12627296
 Virial quotient                       -0.99880199
 Correlation energy                    -0.09251854
 !MRCI STATE 2.1 Energy               -14.397470589914

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41709241 (Davidson, fixed reference)
 Cluster corrected energies           -14.41709241 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41709241 (Davidson, rotated reference)

 Cluster corrected energies           -14.40717359 (Pople, fixed reference)
 Cluster corrected energies           -14.40717359 (Pople, relaxed reference)
 Cluster corrected energies           -14.40717359 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.90832537 (fixed)   0.90832537 (relaxed)   0.90832537 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007095   -0.00068182   -0.04267688
 Singles      0.20063180   -0.04079900   -0.04897901
 Pairs        0.01133769    0.00000000   -0.00086265
 Total        1.21204045   -0.04148081   -0.09251854
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30495205
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41472387
 One electron energy                  -18.52374804
 Two electron energy                    4.12627745
 Virial quotient                       -0.99880308
 Correlation energy                    -0.09251854
 !MRCI STATE 3.1 Energy               -14.397470587975

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41708826 (Davidson, fixed reference)
 Cluster corrected energies           -14.41708826 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41708826 (Davidson, rotated reference)

 Cluster corrected energies           -14.40717158 (Pople, fixed reference)
 Cluster corrected energies           -14.40717158 (Pople, relaxed reference)
 Cluster corrected energies           -14.40717158 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.90834389 (fixed)   0.90834389 (relaxed)   0.90834389 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007095   -0.00068183   -0.04268006
 Singles      0.20058339   -0.04079726   -0.04897750
 Pairs        0.01133667    0.00000000   -0.00086098
 Total        1.21199101   -0.04147908   -0.09251854
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30495205
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41472103
 One electron energy                  -18.52377989
 Two electron energy                    4.12630930
 Virial quotient                       -0.99880328
 Correlation energy                    -0.09251854
 !MRCI STATE 4.1 Energy               -14.397470586097

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41708368 (Davidson, fixed reference)
 Cluster corrected energies           -14.41708368 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41708368 (Davidson, rotated reference)

 Cluster corrected energies           -14.40716937 (Pople, fixed reference)
 Cluster corrected energies           -14.40716937 (Pople, relaxed reference)
 Cluster corrected energies           -14.40716937 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.80031420 (fixed)   0.90836938 (relaxed)   0.90836938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007095   -0.00068182   -0.07979017
 Singles      0.20051622   -0.04079551   -0.04897498
 Pairs        0.01133581    0.04496996    0.03624662
 Total        1.21192299    0.00349263   -0.09251853
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30495205
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41476331
 One electron energy                  -18.52379112
 Two electron energy                    4.12632054
 Virial quotient                       -0.99880035
 Correlation energy                    -0.09251853
 !MRCI STATE 5.1 Energy               -14.397470580795

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41707738 (Davidson, fixed reference)
 Cluster corrected energies           -14.41707738 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41707738 (Davidson, rotated reference)

 Cluster corrected energies           -14.40716632 (Pople, fixed reference)
 Cluster corrected energies           -14.40716632 (Pople, relaxed reference)
 Cluster corrected energies           -14.40716632 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.80031435 (fixed)   0.90836950 (relaxed)   0.90836950 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007095   -0.00068182   -0.06260551
 Singles      0.20051588   -0.04079551   -0.04897497
 Pairs        0.01133584    0.02414345    0.01906195
 Total        1.21192267   -0.01733388   -0.09251853
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30495205
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41476212
 One electron energy                  -18.52379060
 Two electron energy                    4.12632002
 Virial quotient                       -0.99880043
 Correlation energy                    -0.09251853
 !MRCI STATE 6.1 Energy               -14.397470580744

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41707736 (Davidson, fixed reference)
 Cluster corrected energies           -14.41707736 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41707736 (Davidson, rotated reference)

 Cluster corrected energies           -14.40716630 (Pople, fixed reference)
 Cluster corrected energies           -14.40716630 (Pople, relaxed reference)
 Cluster corrected energies           -14.40716630 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       34.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        8.64       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.42      8.32      1.73      0.40      2.68
 REAL TIME  *        15.33 SEC
 DISK USED  *        43.02 MB (local),      441.02 MB (total)
 SF USED    *        59.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.66890994  AU                              
 SETTING HLSDIAG(2)     =       -14.41709241  AU                              
 SETTING HLSDIAG(3)     =       -14.41708826  AU                              
 SETTING HLSDIAG(4)     =       -14.41708368  AU                              
 SETTING HLSDIAG(5)     =       -14.41707738  AU                              
 SETTING HLSDIAG(6)     =       -14.41707736  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  4
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        4 conf        4 CSFs
 N elec internal:       75 conf      105 CSFs
 N-1 el internal:       38 conf       78 CSFs
 N-2 el internal:       10 conf       28 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:     175 (  84  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.33847375
     2       -14.33847375
     3       -14.33847375

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      78

 Number of internal configurations:                   51
 Number of singly external configurations:          6825
 Number of doubly external configurations:         76713
 Total number of contracted configurations:        83589
 Total number of uncontracted configurations:     220761

 Diagonal Coupling coefficients finished.               Storage:    182494 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    391194 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.33847375     0.00000000    -0.05316097  0.85D-03  0.73D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.33847375     0.00000000    -0.05314093  0.85D-03  0.73D-02     0.01
    1     3     3     1.00000000     0.00000000   -14.33847375     0.00000000    -0.05316814  0.85D-03  0.73D-02     0.01
    2     1     1     1.00899253    -0.05668151   -14.39515526    -0.05668151    -0.00068829  0.20D-03  0.28D-03     0.34
    2     2     2     1.00898166    -0.05667993   -14.39515367    -0.05667993    -0.00068920  0.20D-03  0.29D-03     0.34
    2     3     3     1.00894718    -0.05667234   -14.39514608    -0.05667234    -0.00069294  0.20D-03  0.29D-03     0.34
    3     1     1     1.01335012    -0.05755344   -14.39602718    -0.00087193    -0.00003276  0.99D-06  0.14D-04     0.65
    3     2     2     1.01334925    -0.05755339   -14.39602713    -0.00087346    -0.00003281  0.99D-06  0.14D-04     0.65
    3     3     3     1.01334401    -0.05755262   -14.39602636    -0.00088028    -0.00003333  0.98D-06  0.14D-04     0.65
    4     1     1     1.01431491    -0.05759498   -14.39606872    -0.00004154    -0.00000119  0.35D-06  0.53D-06     0.99
    4     2     2     1.01431528    -0.05759497   -14.39606872    -0.00004158    -0.00000119  0.35D-06  0.53D-06     0.99
    4     3     3     1.01431589    -0.05759492   -14.39606867    -0.00004231    -0.00000122  0.37D-06  0.55D-06     0.99
    5     1     1     1.01432144    -0.05759663   -14.39607038    -0.00000166    -0.00000015  0.11D-06  0.36D-07     1.30
    5     2     2     1.01432151    -0.05759663   -14.39607038    -0.00000166    -0.00000015  0.11D-06  0.36D-07     1.30
    5     3     3     1.01432147    -0.05759663   -14.39607037    -0.00000171    -0.00000015  0.11D-06  0.37D-07     1.30
    6     1     1     1.01430322    -0.05759685   -14.39607060    -0.00000022    -0.00000001  0.47D-08  0.15D-08     1.60
    6     2     2     1.01430319    -0.05759685   -14.39607060    -0.00000022    -0.00000001  0.47D-08  0.16D-08     1.60
    6     3     3     1.01430308    -0.05759685   -14.39607060    -0.00000022    -0.00000001  0.48D-08  0.16D-08     1.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.6%   0.6%
 P   0.6%   3.1%   9.4%

 Initialization:   0.6%
 Other:           85.0%

 Total CPU:        1.6 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000//           0.0000000  -0.0000000   0.9928686
 200//0           0.0000000   0.9928685  -0.0000000
 200/0/           0.9928685   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.992869    0.000000    0.000000
 2           0.000000   -0.000000    0.992869
 3           0.000000    0.992869   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.992869    0.000000    0.000000
 2           0.000000    0.992869   -0.000000
 3           0.000000   -0.000000    0.992869


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99286853 (fixed)   0.99286853 (relaxed)   0.99286853 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011215   -0.00085049   -0.05021235
 Singles      0.00183177   -0.00666705   -0.00667516
 Pairs        0.01247306    0.00000000   -0.00070934
 Total        1.01441697   -0.00751753   -0.05759685
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33847375
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41030132
 One electron energy                  -18.59394615
 Two electron energy                    4.19787555
 Virial quotient                       -0.99901246
 Correlation energy                    -0.05759685
 !MRCI STATE 1.1 Energy               -14.396070597225

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39690097 (Davidson, fixed reference)
 Cluster corrected energies           -14.39690097 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39690097 (Davidson, rotated reference)

 Cluster corrected energies           -14.39607060 (Pople, fixed reference)
 Cluster corrected energies           -14.39607060 (Pople, relaxed reference)
 Cluster corrected energies           -14.39607060 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.99286855 (fixed)   0.99286855 (relaxed)   0.99286855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011215   -0.00085049   -0.00084477
 Singles      0.00183179   -0.00666705   -0.00667516
 Pairs        0.01247300   -0.05007932   -0.05007693
 Total        1.01441694   -0.05759685   -0.05759685
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33847375
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41030159
 One electron energy                  -18.59394660
 Two electron energy                    4.19787601
 Virial quotient                       -0.99901244
 Correlation energy                    -0.05759685
 !MRCI STATE 2.1 Energy               -14.396070597197

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39690097 (Davidson, fixed reference)
 Cluster corrected energies           -14.39690097 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39690097 (Davidson, rotated reference)

 Cluster corrected energies           -14.39607060 (Pople, fixed reference)
 Cluster corrected energies           -14.39607060 (Pople, relaxed reference)
 Cluster corrected energies           -14.39607060 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.99286860 (fixed)   0.99286860 (relaxed)   0.99286860 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011215   -0.00085049   -0.05021233
 Singles      0.00183179   -0.00666707   -0.00667517
 Pairs        0.01247289   -0.00000000   -0.00070935
 Total        1.01441683   -0.00751756   -0.05759685
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33847375
 Nuclear energy                         0.00000000
 Kinetic energy                        14.41030186
 One electron energy                  -18.59394579
 Two electron energy                    4.19787519
 Virial quotient                       -0.99901242
 Correlation energy                    -0.05759685
 !MRCI STATE 3.1 Energy               -14.396070596882

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39690096 (Davidson, fixed reference)
 Cluster corrected energies           -14.39690096 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39690096 (Davidson, rotated reference)

 Cluster corrected energies           -14.39607060 (Pople, fixed reference)
 Cluster corrected energies           -14.39607060 (Pople, relaxed reference)
 Cluster corrected energies           -14.39607060 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       34.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       10.69       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        15.10      1.67      8.32      1.73      0.40      2.68
 REAL TIME  *        17.12 SEC
 DISK USED  *        45.08 MB (local),      451.28 MB (total)
 SF USED    *        59.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =       -14.39690097  AU                              
 SETTING HLSDIAG(8)     =       -14.39690097  AU                              
 SETTING HLSDIAG(9)     =       -14.39690096  AU                              


        HLSDIAG
    -14.66890994
    -14.41709241
    -14.41708826
    -14.41708368
    -14.41707738
    -14.41707736
    -14.39690097
    -14.39690097
    -14.39690096
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 Time for Seward_LS:       7.73 sec

       79970547. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19543 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.73 sec, REAL time:      8.02 sec


 SORTLS1 read    79992732. and wrote    79992732. SO integrals in   313 records. CPU time:      0.79 sec, REAL time:      1.25 sec
 SORTLS2 read    79992732. and wrote   406960599. SO integrals in    15 records. CPU time:      1.02 sec, REAL time:      1.74 sec

 FILE SIZES: FILE 1:  1316.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1316.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -14.668359    -14.397471    -14.397471    -14.397471    -14.397471    -14.397471
 Replaced energies:    -14.668910    -14.417092    -14.417088    -14.417084    -14.417077    -14.417077

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -14.396071    -14.396071    -14.396071
 Replaced energies:    -14.396901    -14.396901    -14.396901



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.66890994

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.45       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.45      -0.00

    2   2.1  0.0  0.0       0.00   55267.56       0.00       0.00       0.00       0.00      -0.00      -0.88       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       1.25

    3   3.1  0.0  0.0       0.00       0.00   55268.47       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.88      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   55269.48       0.00       0.00      -0.00       0.00      -0.88       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.88       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   55270.86       0.00      -0.47      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       1.02       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   55270.86       0.90       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.04      -0.00

    7   1.1  1.0  1.0       0.45      -0.00      -0.00      -0.00      -0.47       0.90   59699.07       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.88      -0.00      -0.00      -0.00       0.00      -0.87      -0.00

    8   2.1  1.0  1.0       0.00      -0.88       0.00       0.00      -0.00       0.00       0.00   59699.07       0.00      -0.00
                            0.00      -0.00      -0.88      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.62

    9   3.1  1.0  1.0       0.00       0.00      -0.00      -0.88       0.00       0.00       0.00       0.00   59699.07       0.00
                           -0.45       0.00       0.00       0.00      -1.02       0.04       0.87      -0.00      -0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   59699.07
                            0.00      -1.25       0.00       0.00      -0.00       0.00       0.00       0.62      -0.00       0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.62       0.00
                            0.65      -0.00      -0.00      -0.00      -0.77      -1.22      -0.62       0.00      -0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.62       0.00       0.00
                           -0.00       0.00       1.25       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   13   1.1  1.0 -1.0       0.45      -0.00      -0.00      -0.00      -0.47       0.90       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.88       0.00       0.00      -0.00      -0.00      -0.00       0.00

   14   2.1  1.0 -1.0       0.00      -0.88       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.88       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.62

   15   3.1  1.0 -1.0       0.00       0.00      -0.00      -0.88       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.45      -0.00      -0.00      -0.00       1.02      -0.04      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  0.0  0.0       0.00       0.00       0.45       0.00       0.00
                           -0.65       0.00      -0.00       0.00      -0.45

    2   2.1  0.0  0.0       0.00       0.00      -0.00      -0.88       0.00
                            0.00      -0.00       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -1.25       0.00      -0.88       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.88
                            0.00      -0.00       0.88      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.47      -0.00       0.00
                            0.77      -0.00      -0.00       0.00      -1.02

    6   6.1  0.0  0.0       0.00       0.00       0.90       0.00       0.00
                            1.22      -0.00      -0.00      -0.00       0.04

    7   1.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00
                            0.62      -0.00       0.00       0.00       0.00

    8   2.1  1.0  1.0       0.00      -0.62       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

    9   3.1  1.0  1.0       0.62       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.62      -0.00

   11   2.1  1.0  0.0   59699.07       0.00      -0.00       0.00      -0.62
                            0.00       0.00      -0.62      -0.00      -0.00

   12   3.1  1.0  0.0       0.00   59699.07       0.00       0.62       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0 -1.0      -0.00       0.00   59699.07       0.00       0.00
                            0.62      -0.00       0.00      -0.00       0.87

   14   2.1  1.0 -1.0       0.00       0.62       0.00   59699.07       0.00
                            0.00      -0.00       0.00       0.00      -0.00

   15   3.1  1.0 -1.0      -0.62       0.00       0.00       0.00   59699.07
                            0.00      -0.00      -0.87       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -14.66890994 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.643       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   55267.560       0.000       0.000       0.000       0.000      -0.000      -1.249
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   55268.471       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   55269.475       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   55270.858       0.000      -0.670      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   55270.864       1.276       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.643      -0.000      -0.000      -0.000      -0.670       1.276   59699.069       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -1.249       0.000       0.000      -0.000       0.000       0.000   59699.070
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -1.248       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -1.250       0.000       0.000      -0.000       0.000       0.000       0.872

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.646      -0.000      -0.000      -0.000      -0.771      -1.220      -0.872       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       1.250       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       1.248      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.249      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.643       0.000       0.000       0.000      -1.440       0.058       0.872      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.646       0.000       0.000      -0.000       0.643

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.250       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -1.250      -0.000       1.249      -0.000

    4    1  |0 0>              -1.248       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -1.248       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.771      -0.000       0.000      -0.000       1.440

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.220      -0.000       0.000       0.000      -0.058

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.872      -0.000      -0.000       0.000      -0.872

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.872       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>+          59699.071      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.872      -0.000      -0.000

    1    1  |1 0>              -0.000   59699.069       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000       0.000   59699.070       0.000       0.000       0.000       0.872
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000   59699.071      -0.000      -0.872       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000      -0.000   59699.069       0.000       0.000
                               -0.872      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000      -0.000       0.000      -0.872       0.000   59699.070       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.872       0.000       0.000       0.000   59699.071
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.66890994    -0.00000000       -0.00      0.00000000        0.00      0.0000
    2   -14.41709241     0.25181753    55267.56      0.25181753    55267.56      6.8523
    3   -14.41708826     0.25182168    55268.47      0.25182168    55268.47      6.8524
    4   -14.41708369     0.25182626    55269.47      0.25182626    55269.47      6.8525
    5   -14.41707739     0.25183256    55270.86      0.25183256    55270.86      6.8527
    6   -14.41707736     0.25183258    55270.86      0.25183259    55270.86      6.8527
    7   -14.39690891     0.27200103    59697.33      0.27200103    59697.33      7.4015
    8   -14.39690494     0.27200500    59698.20      0.27200500    59698.20      7.4016
    9   -14.39690494     0.27200500    59698.20      0.27200500    59698.20      7.4016
   10   -14.39690494     0.27200500    59698.20      0.27200500    59698.20      7.4016
   11   -14.39689699     0.27201295    59699.94      0.27201295    59699.94      7.4018
   12   -14.39689699     0.27201295    59699.94      0.27201295    59699.94      7.4018
   13   -14.39689699     0.27201296    59699.94      0.27201296    59699.94      7.4018
   14   -14.39689699     0.27201296    59699.94      0.27201296    59699.94      7.4018
   15   -14.39689699     0.27201296    59699.94      0.27201296    59699.94      7.4018

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001868 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.99999992 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000021
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.99999992  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.99999992  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000068  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99999992 -0.00010064 -0.00000021  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010064  0.99999992 -0.00000012  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00001077 -0.00000000 -0.00000000 -0.00000000  0.00015120 -0.00028820  0.57751593 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00028169 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.70701867
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00028173  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00028192 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.70719488

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001081 -0.00000000  0.00000000 -0.00000000  0.00017416  0.00027541  0.57741976 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00028198 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00028173 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00028175  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001077 -0.00000000 -0.00000000 -0.00000000  0.00032519 -0.00001305 -0.57711505 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00039853 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00039862  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000001  0.00000000  0.00000000  0.00000000 -0.00039841  0.00000000  0.00000000
                          -0.00000021  0.00000000  0.00000000 -0.00000000  0.00000311  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00003006  0.00000000 -0.00000000  0.00000000 -0.00039754
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00039768 -0.00000000  0.00000000  0.00000000 -0.00003044
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.74958177 -0.00000000  0.00000000 -0.00000000  0.32342298
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.70719483  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.04005904  0.00000000 -0.00000000 -0.00000000  0.70745377 -0.00000001 -0.00000000
                          -0.70560181  0.00000002 -0.00000000  0.00000000 -0.00551763 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.70701861  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.65510994  0.00000000  0.00000000 -0.00000000  0.48725485

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000002  0.70682617 -0.00000000 -0.00000000  0.00000001  0.70738722  0.00000000

   1    1  |1 1>-          0.70633794 -0.00000002 -0.00000000  0.00000000 -0.00551188 -0.00000000 -0.00000000
                           0.04010083  0.00000000  0.00000000  0.00000000 -0.70671648  0.00000001  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                           0.00000002  0.70738728  0.00000000  0.00000000 -0.00000001 -0.70682612 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.09464662 -0.00000000  0.00000000 -0.00000000  0.81115975


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -14.66890994     -0.00000000       -0.00      0.00000000        0.00      0.0000
     2   1    -14.41709241      0.25181753    55267.56      0.25181753    55267.56      6.8523
     3   1    -14.41708826      0.25182168    55268.47      0.25182168    55268.47      6.8524
     4   1    -14.41708369      0.25182626    55269.47      0.25182626    55269.47      6.8525
     5   1    -14.41707739      0.25183256    55270.86      0.25183256    55270.86      6.8527
     6   1    -14.41707736      0.25183258    55270.86      0.25183259    55270.86      6.8527
     7   1    -14.39690891      0.27200103    59697.33      0.27200103    59697.33      7.4015
     8   1    -14.39690494      0.27200500    59698.20      0.27200500    59698.20      7.4016
     9   1    -14.39690494      0.27200500    59698.20      0.27200500    59698.20      7.4016
    10   1    -14.39690494      0.27200500    59698.20      0.27200500    59698.20      7.4016
    11   1    -14.39689699      0.27201295    59699.94      0.27201295    59699.94      7.4018
    12   1    -14.39689699      0.27201295    59699.94      0.27201295    59699.94      7.4018
    13   1    -14.39689699      0.27201296    59699.94      0.27201296    59699.94      7.4018
    14   1    -14.39689699      0.27201296    59699.94      0.27201296    59699.94      7.4018
    15   1    -14.39689699      0.27201296    59699.94      0.27201296    59699.94      7.4018

 E0 =    -14.66890994 is the energy of the lowest zeroth-order state
 E1 =    -14.66890994 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001868 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.99999992 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000021
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.99999992  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.99999992  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000068  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99999992 -0.00010064 -0.00000021  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010064  0.99999992 -0.00000012  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>+      -0.00001077 -0.00000000 -0.00000000 -0.00000000  0.00015120 -0.00028820  0.57751593 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>+      -0.00000000  0.00028169 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.70701867
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00028173  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00028192 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.70719488

 11  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001081 -0.00000000  0.00000000 -0.00000000  0.00017416  0.00027541  0.57741976 -0.00000000

 12  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00028198 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00028173 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00028175  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001077 -0.00000000 -0.00000000 -0.00000000  0.00032519 -0.00001305 -0.57711505 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00039853 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00039862  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000001  0.00000000  0.00000000  0.00000000 -0.00039841  0.00000000  0.00000000
                               -0.00000021  0.00000000  0.00000000 -0.00000000  0.00000311  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00003006  0.00000000 -0.00000000  0.00000000 -0.00039754
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00039768 -0.00000000  0.00000000  0.00000000 -0.00003044
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>+      -0.00000000  0.00000000  0.74958177 -0.00000000  0.00000000 -0.00000000  0.32342298
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.70719483  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>+       0.04005904  0.00000000 -0.00000000 -0.00000000  0.70745377 -0.00000001 -0.00000000
                               -0.70560181  0.00000002 -0.00000000  0.00000000 -0.00551763 -0.00000000 -0.00000000

 10  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.70701861  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.65510994  0.00000000  0.00000000 -0.00000000  0.48725485

 12  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000002  0.70682617 -0.00000000 -0.00000000  0.00000001  0.70738722  0.00000000

 13  1     1    1  |1 1>-       0.70633794 -0.00000002 -0.00000000  0.00000000 -0.00551188 -0.00000000 -0.00000000
                                0.04010083  0.00000000  0.00000000  0.00000000 -0.70671648  0.00000001  0.00000000

 14  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                                0.00000002  0.70738728  0.00000000  0.00000000 -0.00000001 -0.70682612 -0.00000000

 15  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.09464662 -0.00000000  0.00000000 -0.00000000  0.81115975



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.35%    0.00%
  8  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.99%
  9  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.01%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.31%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    0.00%   56.19%    0.00%    0.00%    0.00%   10.46%
  8  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>+        49.95%    0.00%    0.00%    0.00%   50.05%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%   42.92%    0.00%    0.00%    0.00%   23.74%
 12  1     3    1  |1 0>          0.00%   49.96%    0.00%    0.00%    0.00%   50.04%    0.00%
 13  1     1    1  |1 1>-        50.05%    0.00%    0.00%    0.00%   49.95%    0.00%    0.00%
 14  1     2    1  |1 1>-         0.00%   50.04%    0.00%    0.00%    0.00%   49.96%    0.00%
 15  1     3    1  |1 1>-         0.00%    0.00%    0.90%    0.00%    0.00%    0.00%   65.80%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1255.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       10.69       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.27     15.16      1.67      8.32      1.73      0.40      2.68
 REAL TIME  *        34.52 SEC
 DISK USED  *        45.27 MB (local),        4.53 GB (total)
 SF USED    *         1.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -14.396896986088

              CI              CI           MULTI         RHF-SCF
    -14.39607060    -14.39747058    -14.33847375    -14.57552679
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
