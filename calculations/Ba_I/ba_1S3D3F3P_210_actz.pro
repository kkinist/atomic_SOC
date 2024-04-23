
 Working directory              : /wrk/irikura/molpro.PjJ9CrfZ0b/
 Global scratch directory       : /wrk/irikura/molpro.PjJ9CrfZ0b/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.PjJ9CrfZ0b/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=1
 NTRIP=15
 
                                                                                 ! active space (2/10)
 {multi
     closed,15,12
     occ,22,15
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,9,9
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 17:26:59  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BA     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     F aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  BA     56.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   56
 NUMBER OF PRIMITIVE AOS:         294
 NUMBER OF SYMMETRY AOS:          256
 NUMBER OF CONTRACTIONS:          109   (   51Ag  +   58Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     23.593 MB (compressed) written to integral file ( 14.4%)

     Node minimum: 0.786 MB, node maximum: 4.456 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     759972.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     759972      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    20698825. AND WROTE      158286. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     1919742. AND WROTE     9150775. INTEGRALS IN    204 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      758964.  Node maximum:      765474. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.442E-03 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.228E-02 0.222E-01
         2 0.132E-02 0.132E-02 0.132E-02 0.674E-02 0.674E-02 0.674E-02 0.690E-01 0.690E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.70      4.52
 REAL TIME  *         5.41 SEC
 DISK USED  *        29.73 MB (local),      415.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99670480   -8131.99670480     0.00D+00     0.19D+00     0     0       0.02      0.03    start
   2    -8131.99670480      -0.00000000     0.85D-06     0.19D-04     1     0       0.00      0.03    diag
   3    -8131.99670480      -0.00000000     0.14D-06     0.84D-05     2     0       0.01      0.04    diag
   4    -8131.99670480      -0.00000000     0.62D-07     0.40D-05     3     0       0.00      0.04    diag
   5    -8131.99670480      -0.00000000     0.32D-07     0.50D-05     4     0       0.00      0.04    diag
   6    -8131.99670480       0.00000000     0.49D-08     0.13D-06     5     0       0.01      0.05    diag
   7    -8131.99670480      -0.00000000     0.21D-08     0.18D-06     0     0       0.01      0.06    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.996704798134
  RHF One-electron energy            -11100.0286158105    
  RHF Two-electron energy            2968.031911012387
  RHF Kinetic energy                 9672.733921040488
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.840713367201

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.74847     1  1  s    1.00000
    2.1     2.00000  -222.46064     1  2  s    1.00000
    3.1     2.00000   -48.63407     1  3  s    1.00000
    4.1     2.00000   -29.94645     1  1  d1-  0.99985
    5.1     2.00000   -29.94645     1  1  d1+  0.99985
    6.1     2.00000   -29.94645     1  1  d2+  0.99962
    7.1     2.00000   -29.94645     1  1  d2-  0.99963
    8.1     2.00000   -29.94645     1  1  d0   1.00000
    9.1     2.00000   -10.25509     1  4  s    1.00008
   10.1     2.00000    -3.85433     1  2  d2-  0.99722
   11.1     2.00000    -3.85433     1  2  d2+  0.99653
   12.1     2.00000    -3.85433     1  2  d1-  0.99988
   13.1     2.00000    -3.85433     1  2  d1+  0.99995
   14.1     2.00000    -3.85433     1  2  d0   0.99937
   15.1     2.00000    -1.60335     1  5  s    0.99881
   16.1     2.00000    -0.16308     1  6  s    1.00172
    1.2     2.00000  -199.39477     1  1  pz   0.99985
    2.2     2.00000  -199.39477     1  1  px   0.99877
    3.2     2.00000  -199.39477     1  1  py   0.99885
    4.2     2.00000   -41.04464     1  2  pz   1.00000
    5.2     2.00000   -41.04464     1  2  px   0.99954
    6.2     2.00000   -41.04464     1  2  py   0.99953
    7.2     2.00000    -7.69922     1  3  pz   0.99997
    8.2     2.00000    -7.69922     1  3  py   0.99997
    9.2     2.00000    -7.69922     1  3  px   0.99998
   10.2     2.00000    -0.89930     1  4  pz   0.99992
   11.2     2.00000    -0.89930     1  4  py   0.99992
   12.2     2.00000    -0.89930     1  4  px   0.99992


 HOMO     16.1    -0.163084 =      -4.4378eV
 LUMO     13.2     0.008069 =       0.2196eV
 LUMO-HOMO         0.171153 =       4.6573eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        2.73       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.77      0.07      4.52
 REAL TIME  *         5.51 SEC
 DISK USED  *        32.55 MB (local),      448.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         1.00000000                                  
 SETTING NTRIP          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (  15  12 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.229D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.223D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.352D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.305D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.739D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.205D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.978D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.364D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.288D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.486D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 3   5 6 4 2 1 1 1 5 3 6   4 2 5 3 6 4 2 1 6 4   5 3 2 1 6 4 5 3 2 1
                                        6 4 2 5 3 2 4 6 5 3   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.230D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.585D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.531D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.182D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.296D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.312D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.213D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.208D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.703D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.518D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.518D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 2 1 3   2 1 1 2 3 1 2 3 1 2   3 610 8 4 5 7 910 8   4 5 6 9 7 1 2 3 6 7
                                        9 5 410 8 3 2 1 7 9  10 8 5 4 6 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  1424  ( 141 closed/active, 951 closed/virtual, 0 active/active, 332 active/virtual )
 Total number of variables:    1842
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   38    5  -8131.81347185   -8131.94974635   -0.13627450    0.06049433 0.00020627 0.00000000  0.24E+01      1.85
   2    8   14    0  -8131.92440352   -8131.93052378   -0.00612026    0.05343006 0.00005744 0.00000000  0.61E+00      3.17
   3   10   16    0  -8131.93057143   -8131.93057461   -0.00000318    0.00099695 0.00000040 0.00000000  0.13E-01      4.55
   4    6   12    0  -8131.93057461   -8131.93057461   -0.00000000    0.00000155 0.00000000 0.00000000  0.17E-04      5.54

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-09)
                       Final energy:  -8131.93057461
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.017724914564
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.20106563
 One electron energy                        -11098.62880537
 Two electron energy                          2966.61108045
 Virial ratio                                    1.84076186
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963273314692
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.43549473
 One electron energy                        -11101.78935272
 Two electron energy                          2969.82607940
 Virial ratio                                    1.84073585
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963273314674
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.43549473
 One electron energy                        -11101.78935271
 Two electron energy                          2969.82607940
 Virial ratio                                    1.84073585
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963273314673
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.43549473
 One electron energy                        -11101.78935272
 Two electron energy                          2969.82607940
 Virial ratio                                    1.84073585
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963273314668
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.43549473
 One electron energy                        -11101.78935271
 Two electron energy                          2969.82607940
 Virial ratio                                    1.84073585
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963273314641
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.43549473
 One electron energy                        -11101.78935271
 Two electron energy                          2969.82607940
 Virial ratio                                    1.84073585
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.907025617518
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.907025617516
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.907025617511
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.907025617507
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.907025617495
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.907025617472
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.907025617470
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.78049254
 One electron energy                        -11105.43408336
 Two electron energy                          2973.52705774
 Virial ratio                                    1.84070005
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.901974342328
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.50835750
 One electron energy                        -11102.40018684
 Two electron energy                          2970.49821250
 Virial ratio                                    1.84072318
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.901974342323
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.50835750
 One electron energy                        -11102.40018684
 Two electron energy                          2970.49821250
 Virial ratio                                    1.84072318
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.901974342310
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.50835750
 One electron energy                        -11102.40018683
 Two electron energy                          2970.49821249
 Virial ratio                                    1.84072318
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999565096
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.953167728370
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000571791224
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.046268521982
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999992393328
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000390723488
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     5.986682181096
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.821005077813
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.559252121475
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.012832444401
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.181197502938
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     8.438639948789
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000052431438
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999948205614
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999362947
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999354790
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.045945091982
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999478592897
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.954547974963
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000028985368
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999979577773
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     6.012709438169
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.057984336839
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.442537742135
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.987178223151
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     8.940233407769
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     2.559377274164
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.999948213308
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000052236394
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999550298
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000001080114
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000887179648
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999949615879
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999183503056
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999978621304
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999629698739
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000608380735
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.121010585348
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.998210136390
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999989332448
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.878569089294
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.001982777047
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999355253
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999557991
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000001086755
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.68784     1  1  s    1.00000
    2.1     2.00000  -222.39697     1  2  s    1.00000
    3.1     2.00000   -48.57043     1  3  s    1.00004
    4.1     2.00000   -29.88378     1  1  d2+  0.98852
    5.1     2.00000   -29.88378     1  1  d1-  0.98852
    6.1     2.00000   -29.88378     1  1  d2-  1.00000
    7.1     2.00000   -29.88378     1  1  d1+  1.00000
    8.1     2.00000   -29.88378     1  1  d0   1.00000
    9.1     2.00000   -10.19144     1  4  s    0.99856
   10.1     2.00000    -3.79261     1  2  d2-  1.00079
   11.1     2.00000    -3.79261     1  2  d2+  1.00079
   12.1     2.00000    -3.79261     1  2  d1-  1.00080
   13.1     2.00000    -3.79261     1  2  d1+  1.00080
   14.1     2.00000    -3.79261     1  2  d0   1.00080
   15.1     2.00000    -1.53699     1  5  s    0.96953
   16.1     0.42682    -0.02262     1  6  s    1.12065
   17.1     0.29026     0.06317     1  3  d1- -0.90275
   18.1     0.29026     0.06317     1  3  d0  -0.90275
   19.1     0.29026     0.06317     1  3  d1+ -0.90275
   20.1     0.29026     0.06317     1  3  d2+ -0.90275
   21.1     0.29026     0.06317     1  3  d2- -0.90275
   22.1     0.00027     0.18915     1  3  s   -0.26428    1  4  s   -0.83341    1  5  s    2.61774    1  6  s   -3.40517
                                    1  7  s    4.44369    1  8  s    0.51975    1 10  s   -0.36210
    1.2     2.00000  -199.33170     1  1  px   0.99999
    2.2     2.00000  -199.33170     1  1  py   0.99999
    3.2     2.00000  -199.33170     1  1  pz   1.00000
    4.2     2.00000   -40.98158     1  2  px   0.99992
    5.2     2.00000   -40.98158     1  2  py   0.99992
    6.2     2.00000   -40.98158     1  2  pz   1.00000
    7.2     2.00000    -7.63685     1  3  pz   0.99948
    8.2     2.00000    -7.63685     1  3  py   0.99948
    9.2     2.00000    -7.63685     1  3  px   0.99948
   10.2     2.00000    -0.84449     1  4  pz   0.96847
   11.2     2.00000    -0.84449     1  4  py   0.96847
   12.2     2.00000    -0.84449     1  4  px   0.96847
   13.2     0.04053     0.06059     1  5  px   1.09666
   14.2     0.04053     0.06059     1  5  py   1.09666
   15.2     0.04053     0.06059     1  5  pz   1.09666
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.988D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.109D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.177D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.386D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.386D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.924D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.924D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.119D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.428D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.434D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.149D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.149D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.128D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.128D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.382D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.441D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.372D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.125D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.125D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 3 4 2 1 3   5 6 4 2 1 1 6 2 4 5   3 1 1 5 3 6 4 2 6 4   5 3 2 1 6 4 5 3 2 1
                                        2 6 4 5 3 2 4 6 5 3   1
 *** IN SYMMETRY  2 ORBITAL   1 SYMMETRY CONTAMINATION OF 0.525D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.525D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.110D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.110D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.133D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.131D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.253D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.181D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.566D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.566D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.282D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.200D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.584D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.584D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.141D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.131D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.648D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.456D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.113D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.829D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.829D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.631D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.341D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.341D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.435D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.436D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.302D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.302D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.654D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.654D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.195D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 2 1 3   2 1 1 2 3 2 1 3 1 2   3 6 810 4 5 7 910 8   4 5 6 9 7 3 1 2 6 5
                                        4 7 910 8 3 2 1 7 9   810 5 4 6 3 2 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95614332
 0000000 002     -0.15585305
 0000000 200     -0.15585305
 0000000 020     -0.15585305
 
 Energy:      -8132.01772491
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 00a00a0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00266383     -0.00167779
 aa00000 000      0.99996118     -0.00064682      0.00004614     -0.00066448      0.00024607     -0.00000000      0.00000000
 a0000a0 000     -0.00024607      0.00230993     -0.00025219     -0.00227206      0.99995633      0.00000000     -0.00000000
 00a0a00 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.99994549      0.00985628
 a00a000 000     -0.00003421      0.01223402      0.99986803      0.00612188      0.00023781      0.00000000      0.00000000
 a000a00 000      0.00065550     -0.01332628     -0.00595926      0.99985222      0.00230126     -0.00000000     -0.00000000
 a0a0000 000      0.00065665      0.99979512     -0.01231373      0.01325695     -0.00228238      0.00000000      0.00000000
 0a0a000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00880995      0.89437049
 0a00a00 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00174921     -0.00438241
 000a0a0 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00074341     -0.00225649
 0000aa0 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00440498      0.44718524
 0a000a0 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00032408      0.00055387
 000aa00 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00086640     -0.00083383
 00aa000 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00031311      0.00016163
 0aa0000 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00058070      0.00122740
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 a0a      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0000000 0aa      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:      -8131.96327331  -8131.96327331  -8131.96327331  -8131.96327331  -8131.96327331  -8131.90702562  -8131.90702562

 State:                8               9              10              11              12              13              14
 00a00a0 000      0.00022499      0.00073039      0.99999435     -0.00078076      0.00043198     -0.00000000      0.00000000
 aa00000 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 00a0a00 000     -0.00192141      0.00081494      0.00268006      0.00026643      0.00051233      0.00000000      0.00000000
 a00a000 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a000a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0a0a000 000      0.00455961     -0.00085177      0.00147662     -0.00024330     -0.00025325     -0.00029746     -0.00024649
 0a00a00 000      0.84864519      0.00480669     -0.00041515     -0.28235417     -0.00565101      0.37416738     -0.00269252
 000a0a0 000      0.48558465      0.00478301      0.00046622      0.75100663      0.01295556     -0.37416738      0.00269252
 0000aa0 000      0.00227980     -0.00042588      0.00073831     -0.00012165     -0.00012663      0.00059492      0.00049299
 0a000a0 000     -0.00498366      0.71517666     -0.00028297      0.00793447     -0.53706058      0.00269233      0.37416742
 000aa00 000      0.00404817     -0.69884574      0.00076046      0.01145709     -0.55809046      0.00269233      0.37416742
 00aa000 000      0.00054010     -0.00942866     -0.00027568     -0.01119572      0.63228574      0.00466325      0.64807698
 0aa0000 000     -0.20961309     -0.00001367      0.00050886      0.59661113      0.01074251      0.64807692     -0.00466359
 0000000 aa0      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00043539     -0.00036079
 0000000 a0a     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00394076      0.54766915
 0000000 0aa     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.54766910      0.00394105
 
 Energy:      -8131.90702562  -8131.90702562  -8131.90702562  -8131.90702562  -8131.90702562  -8131.90197434  -8131.90197434

 State:               15
 00a00a0 000      0.00000000
 aa00000 000     -0.00000000
 a0000a0 000     -0.00000000
 00a0a00 000      0.00000000
 a00a000 000      0.00000000
 a000a00 000     -0.00000000
 a0a0000 000     -0.00000000
 0a0a000 000     -0.37417699
 0a00a00 000     -0.00029568
 000a0a0 000      0.00029568
 0000aa0 000      0.74835398
 0a000a0 000     -0.00024863
 000aa00 000     -0.00024863
 00aa000 000     -0.00043064
 0aa0000 000     -0.00051213
 0000000 aa0     -0.54768316
 0000000 a0a     -0.00036392
 0000000 0aa      0.00043279
 
 Energy:      -8131.90197434
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.33       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.79      4.01      0.07      4.52
 REAL TIME  *        11.70 SEC
 DISK USED  *        83.02 MB (local),        1.03 GB (total)
 SF USED    *       118.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.017725    0.0
    -8131.963273    6.0
    -8131.963273    6.0
    -8131.963273    6.0
    -8131.963273    6.0
    -8131.963273    6.0
    -8131.907026   12.0
    -8131.907026   12.0
    -8131.907026   12.0
    -8131.907026   12.0
    -8131.907026   12.0
    -8131.907026   12.0
    -8131.907026   12.0
    -8131.901974    2.0
    -8131.901974    2.0
    -8131.901974    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.08 sec, npass=  1  Memory used:   1.38 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.01772491

 Number of blocks in overlap matrix:   226   Smallest eigenvalue:  0.48D+00
 Number of N-2 electron functions:     262
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1148936
 Number of doubly external configurations:        341578
 Total number of contracted configurations:      1528630
 Total number of uncontracted configurations:    8644507

 Diagonal Coupling coefficients finished.               Storage:14377783 words, CPU-Time:      0.60 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  835942 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.01772491    -0.00000000    -0.58714875  0.38D-01  0.68D-01     1.66
    2     1     1     1.06615696    -0.48313589 -8132.50086081    -0.48313589    -0.00663631  0.99D-03  0.58D-03    14.97
    3     1     1     1.06574834    -0.48949721 -8132.50722213    -0.00636132    -0.00012212  0.16D-04  0.13D-04    28.25
    4     1     1     1.06649798    -0.48962533 -8132.50735025    -0.00012812    -0.00000282  0.55D-06  0.35D-06    41.16
    5     1     1     1.06651005    -0.48962834 -8132.50735326    -0.00000301    -0.00000010  0.17D-07  0.13D-07    53.65
    6     1     1     1.06650808    -0.48962845 -8132.50735336    -0.00000010    -0.00000000  0.56D-09  0.28D-09    66.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.5%
 S   4.0%  34.0%
 P   1.4%  43.2%   4.0%

 Initialization:   1.3%
 Other:            1.6%

 Total CPU:       66.1 seconds
 =====================================



 gnormi=  0.93763940  gnorms=  0.01981980  gnormp=  0.04254080  gnorm=  1.00000000
 ecorri= -0.45909493  ecorrs= -0.00970580  ecorrp= -0.02082772  ecorr= -0.48962845

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9247743
 2222220000000222002          -0.1422672
 2222220000000222020          -0.1422671
 2222220000000222200          -0.1422671
 222222/00000\222000           0.0547578


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96401675 (fixed)   0.96437991 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00894314   -0.01731260   -0.02015844
 Singles      0.02132702   -0.07424625   -0.07870494
 Pairs        0.04577586   -0.39806961   -0.39076507
 Total        1.07604601   -0.48962845   -0.48962845
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.01772491
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.72381826
 One electron energy               -11099.62951675
 Two electron energy                 2967.12216339
 Virial quotient                       -0.84076704
 Correlation energy                    -0.48962845
 !MRCI STATE 1.1 Energy             -8132.507353363232

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54458765 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54419092 (Davidson, relaxed reference)

 Cluster corrected energies         -8132.54301395 (Pople, fixed reference)
 Cluster corrected energies         -8132.54261012 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       18.16       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        76.00     67.21      4.01      0.07      4.52
 REAL TIME  *        79.84 SEC
 DISK USED  *        95.85 MB (local),        1.18 GB (total)
 SF USED    *       192.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =     -8132.54419092  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96327331
     2     -8131.96327331
     3     -8131.96327331
     4     -8131.96327331
     5     -8131.96327331
     6     -8131.90702562
     7     -8131.90702562
     8     -8131.90702562
     9     -8131.90702562
    10     -8131.90702562
    11     -8131.90702562
    12     -8131.90702562
    13     -8131.90197434
    14     -8131.90197434
    15     -8131.90197434

 Number of blocks in overlap matrix:  1342   Smallest eigenvalue:  0.60D+00
 Number of N-2 electron functions:    1378
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1764653
 Number of doubly external configurations:       1798258
 Total number of contracted configurations:      3623244
 Total number of uncontracted configurations:   13070967

 Diagonal Coupling coefficients finished.               Storage:35258449 words, CPU-Time:     50.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1159771 words, CPU-time:      0.19 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96327331    -0.00000000    -0.60083161  0.50D-01  0.72D-01    63.61
    1     2     2     1.00000000     0.00000000 -8131.96327331    -0.00000000    -0.60078293  0.50D-01  0.72D-01    63.61
    1     3     3     1.00000000     0.00000000 -8131.96327331     0.00000000    -0.60084204  0.50D-01  0.72D-01    63.61
    1     4     4     1.00000000     0.00000000 -8131.96327331    -0.00000000    -0.60078715  0.50D-01  0.72D-01    63.61
    1     5     5     1.00000000     0.00000000 -8131.96327331    -0.00000000    -0.60082707  0.50D-01  0.72D-01    63.61
    1     6     6     1.00000000     0.00000000 -8131.90702562    -0.00000000    -0.60737981  0.45D-01  0.81D-01    63.61
    1     7     7     1.00000000     0.00000000 -8131.90702562     0.00000000    -0.60742494  0.45D-01  0.81D-01    63.61
    1     8     8     1.00000000     0.00000000 -8131.90702562     0.00000000    -0.60740280  0.45D-01  0.81D-01    63.61
    1     9     9     1.00000000     0.00000000 -8131.90702562     0.00000000    -0.60745495  0.45D-01  0.81D-01    63.61
    1    10    10     1.00000000     0.00000000 -8131.90702562    -0.00000000    -0.60750477  0.45D-01  0.81D-01    63.61
    1    11    11     1.00000000     0.00000000 -8131.90702562    -0.00000000    -0.60738447  0.45D-01  0.81D-01    63.61
    1    12    12     1.00000000     0.00000000 -8131.90702562    -0.00000000    -0.60734916  0.45D-01  0.81D-01    63.61
    1    13    13     1.00000000     0.00000000 -8131.90197434     0.00000000    -0.59852349  0.41D-01  0.78D-01    63.61
    1    14    14     1.00000000     0.00000000 -8131.90197434     0.00000000    -0.59853949  0.41D-01  0.78D-01    63.61
    1    15    15     1.00000000     0.00000000 -8131.90197434    -0.00000000    -0.59849947  0.41D-01  0.78D-01    63.61
    2     1     1     1.07448451    -0.48416216 -8132.44743547    -0.48416216    -0.00780948  0.15D-02  0.73D-03   350.11
    2     2     2     1.07449023    -0.48415374 -8132.44742705    -0.48415374    -0.00781892  0.15D-02  0.73D-03   350.11
    2     3     3     1.07451120    -0.48414952 -8132.44742284    -0.48414952    -0.00782351  0.15D-02  0.73D-03   350.11
    2     4     4     1.07449902    -0.48414454 -8132.44741785    -0.48414454    -0.00782961  0.15D-02  0.73D-03   350.11
    2     5     5     1.07451177    -0.48414338 -8132.44741670    -0.48414338    -0.00783059  0.15D-02  0.74D-03   350.11
    2     6     6     1.07612784    -0.48261360 -8132.38963922    -0.48261360    -0.00758525  0.13D-02  0.86D-03   350.11
    2     7     7     1.07613595    -0.48260465 -8132.38963026    -0.48260465    -0.00759629  0.13D-02  0.86D-03   350.11
    2     8     8     1.07614227    -0.48260107 -8132.38962669    -0.48260107    -0.00760061  0.13D-02  0.86D-03   350.11
    2     9     9     1.07617559    -0.48259087 -8132.38961649    -0.48259087    -0.00761323  0.13D-02  0.87D-03   350.11
    2    10    10     1.07618250    -0.48258347 -8132.38960909    -0.48258347    -0.00762356  0.13D-02  0.87D-03   350.11
    2    11    11     1.07618343    -0.48257999 -8132.38960561    -0.48257999    -0.00762817  0.13D-02  0.87D-03   350.11
    2    12    12     1.07618861    -0.48257694 -8132.38960256    -0.48257694    -0.00763150  0.13D-02  0.86D-03   350.11
    2    13    13     1.07307147    -0.48034049 -8132.38231484    -0.48034049    -0.00755577  0.16D-02  0.85D-03   350.11
    2    14    14     1.07308817    -0.48033321 -8132.38230755    -0.48033321    -0.00756371  0.16D-02  0.85D-03   350.11
    2    15    15     1.07309663    -0.48032811 -8132.38230245    -0.48032811    -0.00756967  0.16D-02  0.85D-03   350.11
    3     1     1     1.07098799    -0.49155548 -8132.45482880    -0.00739332    -0.00014201  0.23D-04  0.16D-04   637.17
    3     2     2     1.07098681    -0.49155516 -8132.45482847    -0.00740142    -0.00014236  0.23D-04  0.16D-04   637.17
    3     3     3     1.07098740    -0.49155495 -8132.45482827    -0.00740543    -0.00014253  0.23D-04  0.16D-04   637.17
    3     4     4     1.07098627    -0.49155474 -8132.45482806    -0.00741021    -0.00014277  0.23D-04  0.16D-04   637.17
    3     5     5     1.07098677    -0.49155472 -8132.45482803    -0.00741134    -0.00014274  0.23D-04  0.16D-04   637.17
    3     6     6     1.07274654    -0.48972536 -8132.39675098    -0.00711177    -0.00013664  0.20D-04  0.19D-04   637.17
    3     7     7     1.07274667    -0.48972521 -8132.39675082    -0.00712056    -0.00013678  0.20D-04  0.19D-04   637.17
    3     8     8     1.07274902    -0.48972484 -8132.39675046    -0.00712377    -0.00013753  0.20D-04  0.19D-04   637.17
    3     9     9     1.07274981    -0.48972477 -8132.39675038    -0.00713389    -0.00013736  0.20D-04  0.19D-04   637.17
    3    10    10     1.07274788    -0.48972459 -8132.39675021    -0.00714112    -0.00013720  0.20D-04  0.19D-04   637.17
    3    11    11     1.07275031    -0.48972434 -8132.39674996    -0.00714435    -0.00013760  0.20D-04  0.19D-04   637.17
    3    12    12     1.07274952    -0.48972427 -8132.39674988    -0.00714733    -0.00013737  0.20D-04  0.19D-04   637.17
    3    13    13     1.06997145    -0.48744086 -8132.38941520    -0.00710036    -0.00016207  0.23D-04  0.25D-04   637.17
    3    14    14     1.06996828    -0.48744044 -8132.38941478    -0.00710723    -0.00016240  0.23D-04  0.25D-04   637.17
    3    15    15     1.06996948    -0.48744024 -8132.38941458    -0.00711213    -0.00016258  0.23D-04  0.25D-04   637.17
    4     1     1     1.07158626    -0.49170518 -8132.45497850    -0.00014970    -0.00000330  0.90D-06  0.39D-06   915.91
    4     2     2     1.07158630    -0.49170515 -8132.45497847    -0.00014999    -0.00000328  0.90D-06  0.38D-06   915.91
    4     3     3     1.07158634    -0.49170513 -8132.45497844    -0.00015018    -0.00000329  0.90D-06  0.39D-06   915.91
    4     4     4     1.07158621    -0.49170512 -8132.45497844    -0.00015038    -0.00000327  0.90D-06  0.38D-06   915.91
    4     5     5     1.07158617    -0.49170512 -8132.45497844    -0.00015040    -0.00000330  0.90D-06  0.39D-06   915.91
    4     6     6     1.07334024    -0.48986941 -8132.39689503    -0.00014404    -0.00000342  0.14D-05  0.42D-06   915.91
    4     7     7     1.07334094    -0.48986931 -8132.39689493    -0.00014411    -0.00000343  0.14D-05  0.42D-06   915.91
    4     8     8     1.07334090    -0.48986931 -8132.39689493    -0.00014447    -0.00000343  0.14D-05  0.42D-06   915.91
    4     9     9     1.07334024    -0.48986914 -8132.39689475    -0.00014437    -0.00000340  0.14D-05  0.41D-06   915.91
    4    10    10     1.07334062    -0.48986879 -8132.39689441    -0.00014420    -0.00000342  0.14D-05  0.42D-06   915.91
    4    11    11     1.07334061    -0.48986879 -8132.39689440    -0.00014445    -0.00000342  0.14D-05  0.42D-06   915.91
    4    12    12     1.07334066    -0.48986874 -8132.39689436    -0.00014448    -0.00000343  0.14D-05  0.42D-06   915.91
    4    13    13     1.07063805    -0.48761368 -8132.38958803    -0.00017283    -0.00000532  0.27D-05  0.62D-06   915.91
    4    14    14     1.07063734    -0.48761358 -8132.38958792    -0.00017314    -0.00000535  0.27D-05  0.62D-06   915.91
    4    15    15     1.07063742    -0.48761357 -8132.38958791    -0.00017333    -0.00000535  0.27D-05  0.62D-06   915.91
    5     1     1     1.07161474    -0.49170880 -8132.45498211    -0.00000361    -0.00000013  0.31D-07  0.15D-07  1185.35
    5     2     2     1.07161423    -0.49170874 -8132.45498205    -0.00000359    -0.00000013  0.30D-07  0.15D-07  1185.35
    5     3     3     1.07161465    -0.49170873 -8132.45498204    -0.00000360    -0.00000013  0.31D-07  0.15D-07  1185.35
    5     4     4     1.07161467    -0.49170873 -8132.45498204    -0.00000360    -0.00000013  0.31D-07  0.15D-07  1185.35
    5     5     5     1.07161418    -0.49170869 -8132.45498201    -0.00000357    -0.00000013  0.30D-07  0.15D-07  1185.35
    5     6     6     1.07337986    -0.48987327 -8132.39689888    -0.00000386    -0.00000016  0.39D-07  0.24D-07  1185.35
    5     7     7     1.07337996    -0.48987318 -8132.39689879    -0.00000386    -0.00000016  0.39D-07  0.24D-07  1185.35
    5     8     8     1.07337998    -0.48987318 -8132.39689879    -0.00000386    -0.00000016  0.39D-07  0.24D-07  1185.35
    5     9     9     1.07337939    -0.48987297 -8132.39689859    -0.00000384    -0.00000016  0.39D-07  0.24D-07  1185.35
    5    10    10     1.07337953    -0.48987265 -8132.39689827    -0.00000386    -0.00000016  0.39D-07  0.24D-07  1185.35
    5    11    11     1.07337954    -0.48987265 -8132.39689827    -0.00000386    -0.00000016  0.39D-07  0.24D-07  1185.35
    5    12    12     1.07337961    -0.48987261 -8132.39689823    -0.00000387    -0.00000016  0.39D-07  0.24D-07  1185.35
    5    13    13     1.07064781    -0.48761981 -8132.38959415    -0.00000612    -0.00000028  0.54D-07  0.44D-07  1185.35
    5    14    14     1.07064788    -0.48761972 -8132.38959406    -0.00000614    -0.00000028  0.55D-07  0.44D-07  1185.35
    5    15    15     1.07064789    -0.48761972 -8132.38959406    -0.00000615    -0.00000028  0.55D-07  0.44D-07  1185.35
    6     1     1     1.07161449    -0.49170894 -8132.45498225    -0.00000014    -0.00000001  0.28D-08  0.42D-09  1455.07
    6     2     2     1.07161392    -0.49170888 -8132.45498219    -0.00000014    -0.00000001  0.27D-08  0.41D-09  1455.07
    6     3     3     1.07161441    -0.49170887 -8132.45498218    -0.00000014    -0.00000001  0.28D-08  0.42D-09  1455.07
    6     4     4     1.07161441    -0.49170887 -8132.45498218    -0.00000014    -0.00000001  0.28D-08  0.42D-09  1455.07
    6     5     5     1.07161379    -0.49170883 -8132.45498215    -0.00000014    -0.00000001  0.27D-08  0.41D-09  1455.07
    6     6     6     1.07337705    -0.48987345 -8132.39689906    -0.00000018    -0.00000001  0.24D-08  0.81D-09  1455.07
    6     7     7     1.07337729    -0.48987336 -8132.39689898    -0.00000018    -0.00000001  0.24D-08  0.81D-09  1455.07
    6     8     8     1.07337729    -0.48987336 -8132.39689898    -0.00000018    -0.00000001  0.24D-08  0.81D-09  1455.07
    6     9     9     1.07337664    -0.48987316 -8132.39689877    -0.00000018    -0.00000001  0.24D-08  0.80D-09  1455.07
    6    10    10     1.07337693    -0.48987283 -8132.39689845    -0.00000018    -0.00000001  0.24D-08  0.81D-09  1455.07
    6    11    11     1.07337693    -0.48987283 -8132.39689845    -0.00000018    -0.00000001  0.24D-08  0.81D-09  1455.07
    6    12    12     1.07337700    -0.48987279 -8132.39689841    -0.00000018    -0.00000001  0.24D-08  0.81D-09  1455.07
    6    13    13     1.07063293    -0.48762011 -8132.38959445    -0.00000030    -0.00000001  0.29D-08  0.14D-08  1455.07
    6    14    14     1.07063284    -0.48762002 -8132.38959437    -0.00000030    -0.00000001  0.29D-08  0.14D-08  1455.07
    6    15    15     1.07063283    -0.48762002 -8132.38959437    -0.00000030    -0.00000001  0.29D-08  0.14D-08  1455.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.0%
 S   2.6%  38.8%
 P   0.6%  26.1%  12.5%

 Initialization:   3.5%
 Other:            6.0%

 Total CPU:     1455.1 seconds
 =====================================



 gnormi=  0.93317141  gnorms=  0.02255223  gnormp=  0.04427636  gnorm=  1.00000000
 ecorri= -0.45884872  ecorrs= -0.01109275  ecorrp= -0.02176747  ecorr= -0.49170894

 gnormi=  0.93317190  gnorms=  0.02255163  gnormp=  0.04427646  gnorm=  1.00000000
 ecorri= -0.45884891  ecorrs= -0.01109242  ecorrp= -0.02176755  ecorr= -0.49170888

 gnormi=  0.93317148  gnorms=  0.02255213  gnormp=  0.04427639  gnorm=  1.00000000
 ecorri= -0.45884869  ecorrs= -0.01109270  ecorrp= -0.02176748  ecorr= -0.49170887

 gnormi=  0.93317148  gnorms=  0.02255214  gnormp=  0.04427639  gnorm=  1.00000000
 ecorri= -0.45884869  ecorrs= -0.01109270  ecorrp= -0.02176748  ecorr= -0.49170887

 gnormi=  0.93317202  gnorms=  0.02255149  gnormp=  0.04427649  gnorm=  1.00000000
 ecorri= -0.45884892  ecorrs= -0.01109234  ecorrp= -0.02176757  ecorr= -0.49170883

 gnormi=  0.93163908  gnorms=  0.02055023  gnormp=  0.04781069  gnorm=  1.00000000
 ecorri= -0.45638525  ecorrs= -0.01007044  ecorrp= -0.02341776  ecorr= -0.48987345

 gnormi=  0.93163887  gnorms=  0.02055053  gnormp=  0.04781060  gnorm=  1.00000000
 ecorri= -0.45638506  ecorrs= -0.01007061  ecorrp= -0.02341769  ecorr= -0.48987336

 gnormi=  0.93163887  gnorms=  0.02055053  gnormp=  0.04781060  gnorm=  1.00000000
 ecorri= -0.45638506  ecorrs= -0.01007061  ecorrp= -0.02341769  ecorr= -0.48987336

 gnormi=  0.93163943  gnorms=  0.02054981  gnormp=  0.04781077  gnorm=  1.00000000
 ecorri= -0.45638515  ecorrs= -0.01007019  ecorrp= -0.02341782  ecorr= -0.48987316

 gnormi=  0.93163918  gnorms=  0.02055018  gnormp=  0.04781064  gnorm=  1.00000000
 ecorri= -0.45638472  ecorrs= -0.01007041  ecorrp= -0.02341770  ecorr= -0.48987283

 gnormi=  0.93163918  gnorms=  0.02055018  gnormp=  0.04781064  gnorm=  1.00000000
 ecorri= -0.45638472  ecorrs= -0.01007041  ecorrp= -0.02341770  ecorr= -0.48987283

 gnormi=  0.93163912  gnorms=  0.02055027  gnormp=  0.04781061  gnorm=  1.00000000
 ecorri= -0.45638466  ecorrs= -0.01007047  ecorrp= -0.02341767  ecorr= -0.48987279

 gnormi=  0.93402694  gnorms=  0.01938131  gnormp=  0.04659175  gnorm=  1.00000000
 ecorri= -0.45545032  ecorrs= -0.00945526  ecorrp= -0.02271454  ecorr= -0.48762011

 gnormi=  0.93402702  gnorms=  0.01938116  gnormp=  0.04659181  gnorm=  1.00000000
 ecorri= -0.45545028  ecorrs= -0.00945520  ecorrp= -0.02271455  ecorr= -0.48762002

 gnormi=  0.93402703  gnorms=  0.01938117  gnormp=  0.04659181  gnorm=  1.00000000
 ecorri= -0.45545028  ecorrs= -0.00945520  ecorrp= -0.02271454  ecorr= -0.48762002

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222200/0/00222000           0.0000000   0.0000464  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                               0.9631477   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 22222200/00/0222000           0.0000488  -0.0000000  -0.0000000   0.0000000   0.0000000   0.9631474  -0.0000000   0.0000000
                               0.0000000   0.0000000   0.0000000   0.0000033  -0.0000000  -0.0000000  -0.0000000
 222222/0/0000222000          -0.0000000  -0.0000307  -0.0000000   0.0000000   0.9627485  -0.0000000  -0.0000000   0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 222222//00000222000           0.0000000   0.0000000   0.9627485  -0.0000000   0.0000000   0.0000000   0.0000357   0.0000000
                               0.0000000  -0.0000345   0.0000000   0.0000000  -0.0000000  -0.0000002   0.0000000
 222222/00/000222000           0.0000000   0.0000000   0.0000000   0.9627485  -0.0000000  -0.0000000  -0.0000000  -0.0000357
                               0.0000000   0.0000000  -0.0000345   0.0000000   0.0000000   0.0000000   0.0000002
 222222/000/00222000          -0.0000000   0.9627485  -0.0000000  -0.0000000   0.0000307   0.0000000   0.0000000   0.0000000
                              -0.0000501   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 222222/0000/0222000           0.9627485   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000528   0.0000000  -0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222220/0/000222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000029   0.0000000  -0.0000000
                               0.0000000   0.0000000  -0.0000000   0.8615065  -0.3635994   0.0000000   0.0000000
 2222220/00/00222000          -0.0000000  -0.0000000  -0.0000398   0.0000000   0.0000000   0.0000000   0.7463375  -0.0000000
                               0.0000000  -0.4302466   0.0000000  -0.0000000   0.0000000   0.3636842   0.0000000
 222222000//00222000           0.0000000   0.0000000  -0.0000000   0.0000398  -0.0000000  -0.0000000  -0.0000000   0.7463191
                              -0.0000000   0.0000000   0.4302784   0.0000000  -0.0000000   0.0000000   0.3636842
 2222220000//0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000015  -0.0000000   0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.4306510   0.7274416   0.0000000  -0.0000000
 2222220//0000222000           0.0000000  -0.0000000   0.0000230  -0.0000000   0.0000000   0.0000000  -0.0827081  -0.0000000
                               0.0000000   0.6034502   0.0000000  -0.0000000   0.0000000   0.6299963   0.0000000
 22222200//000222000          -0.0000000   0.0000000   0.0000000  -0.0000230   0.0000000  -0.0000000  -0.0000000  -0.0826823
                              -0.0000000   0.0000000  -0.6034537  -0.0000000   0.0000000   0.0000000   0.6299963
 222222000/0/0222000          -0.0000000  -0.0000000  -0.0000004  -0.0000000  -0.0000000  -0.0000000   0.6031522   0.0000000
                              -0.0000000   0.6151336  -0.0000000   0.0000000   0.0000000  -0.3636149  -0.0000000
 2222220/000/0222000           0.0000000   0.0000000   0.0000000  -0.0000004   0.0000000   0.0000000  -0.0000000  -0.6031785
                              -0.0000000   0.0000000   0.6151079   0.0000000  -0.0000000  -0.0000000   0.3636149
 2222220000000222//0          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                               0.0000000   0.0000000  -0.0000000   0.0000566  -0.5177985   0.0000000   0.0000000
 2222220000000222/0/           0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000191
                               0.0000000  -0.0000000   0.0000482   0.0000000   0.0000000  -0.0000000   0.5177972
 22222200000002220//          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000191   0.0000000
                               0.0000000   0.0000483  -0.0000000   0.0000000  -0.0000000  -0.5177972   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.000000   -0.000000    0.962641    0.000000    0.000000   -0.000000   -0.000000    0.000049
             0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000   -0.000031    0.000000    0.962641    0.000000    0.000046   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.962641   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000039   -0.000000   -0.000000
             0.000025    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.962641   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000028    0.000000
            -0.000000   -0.000036   -0.000000   -0.000000   -0.000000
 5           0.000000    0.962641   -0.000000    0.000031    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000053   -0.000000   -0.000003    0.000000   -0.000000    0.963147
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 7           0.000036   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.943655    0.000000   -0.000000
             0.192790   -0.000000   -0.000036    0.000000   -0.000000
 8           0.000000    0.000000   -0.000036    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.954239    0.000000
            -0.000000   -0.130694   -0.000000   -0.000036    0.000000
 9           0.000000    0.000000    0.000000   -0.000050   -0.000000    0.963148   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000
 10         -0.000034   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.192790    0.000000    0.000000
             0.943655   -0.000000   -0.000091   -0.000000   -0.000000
 11          0.000000    0.000000   -0.000034    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.130694    0.000000
            -0.000000   -0.954239    0.000000    0.000091    0.000000
 12          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.963148   -0.000000    0.000000    0.000003
            -0.000000   -0.000000   -0.000000    0.000000   -0.000108
 13         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000109    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000    0.964024
 14         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000018    0.000000   -0.000000
             0.000098    0.000000    0.964024   -0.000000   -0.000000
 15          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000049   -0.000000
             0.000000    0.000087   -0.000000    0.964024   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962641   -0.000000    0.000000    0.000000    0.000000   -0.000002   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.962641    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000002    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.962641   -0.000000    0.000000   -0.000000    0.000001   -0.000000    0.000000   -0.000001
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.962641    0.000000    0.000000    0.000000   -0.000001   -0.000000   -0.000000
            -0.000001    0.000000    0.000000   -0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.962641    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000002    0.000000   -0.000000    0.000000    0.000000    0.963147   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000    0.000001    0.000000    0.000000   -0.000000    0.963147    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000000    0.000000    0.963147    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 9           0.000000   -0.000002    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.963148   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 10          0.000000    0.000000   -0.000001   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.963148
             0.000000    0.000000    0.000000    0.000000   -0.000000
 11          0.000000   -0.000000   -0.000000   -0.000001    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.963148    0.000000   -0.000000   -0.000000   -0.000000
 12          0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.963148    0.000000    0.000000    0.000000
 13          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.964024    0.000000   -0.000000
 14         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.964024   -0.000000
 15          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.964024


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96264102 (fixed)   0.96278211 (relaxed)   0.96264102 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700747   -0.01427146   -0.38934754
 Singles      0.02433665   -0.07500038   -0.08059393
 Pairs        0.04777967   -0.00000000   -0.02176747
 Total        1.07912380   -0.08927184   -0.49170894
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96327331
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70543965
 One electron energy               -11102.26351356
 Two electron energy                 2969.80853131
 Virial quotient                       -0.84076322
 Correlation energy                    -0.49170894
 !MRCI STATE 1.1 Energy             -8132.454982250579

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49388813 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49373262 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49388813 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49180724 (Pople, fixed reference)
 Cluster corrected energies         -8132.49165066 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49180724 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96264107 (fixed)   0.96278217 (relaxed)   0.96264107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700791   -0.01427181   -0.38934825
 Singles      0.02433600   -0.07499981   -0.08059308
 Pairs        0.04777978   -0.00000000   -0.02176755
 Total        1.07912369   -0.08927162   -0.49170888
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96327331
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70544457
 One electron energy               -11102.26353266
 Two electron energy                 2969.80855047
 Virial quotient                       -0.84076322
 Correlation energy                    -0.49170888
 !MRCI STATE 2.1 Energy             -8132.454982190436

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49388801 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49373250 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49388801 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49180713 (Pople, fixed reference)
 Cluster corrected energies         -8132.49165054 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49180713 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96264107 (fixed)   0.96278217 (relaxed)   0.96264107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700744   -0.01427142   -0.38934753
 Singles      0.02433654   -0.07500034   -0.08059386
 Pairs        0.04777970   -0.00000000   -0.02176748
 Total        1.07912368   -0.08927176   -0.49170887
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96327331
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70543921
 One electron energy               -11102.26351424
 Two electron energy                 2969.80853205
 Virial quotient                       -0.84076322
 Correlation energy                    -0.49170887
 !MRCI STATE 3.1 Energy             -8132.454982182034

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49388800 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49373249 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49388800 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49180711 (Pople, fixed reference)
 Cluster corrected energies         -8132.49165053 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49180711 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96264107 (fixed)   0.96278216 (relaxed)   0.96264107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700744   -0.01427142   -0.38934753
 Singles      0.02433654   -0.07500034   -0.08059386
 Pairs        0.04777970    0.00000000   -0.02176748
 Total        1.07912368   -0.08927176   -0.49170887
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96327331
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70543879
 One electron energy               -11102.26351352
 Two electron energy                 2969.80853134
 Virial quotient                       -0.84076322
 Correlation energy                    -0.49170887
 !MRCI STATE 4.1 Energy             -8132.454982182015

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49388800 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49373249 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49388800 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49180711 (Pople, fixed reference)
 Cluster corrected energies         -8132.49165053 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49180711 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96264109 (fixed)   0.96278219 (relaxed)   0.96264109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700799   -0.01427185   -0.38934834
 Singles      0.02433585   -0.07499972   -0.08059292
 Pairs        0.04777981   -0.00000000   -0.02176757
 Total        1.07912365   -0.08927157   -0.49170883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96327331
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70544147
 One electron energy               -11102.26352506
 Two electron energy                 2969.80854291
 Virial quotient                       -0.84076322
 Correlation energy                    -0.49170883
 !MRCI STATE 5.1 Energy             -8132.454982147430

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49388794 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49373243 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49388794 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49180706 (Pople, fixed reference)
 Cluster corrected energies         -8132.49165047 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49180706 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96314742 (fixed)   0.96314742 (relaxed)   0.96314742 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429699   -0.00970803   -0.39065543
 Singles      0.02215293   -0.07085605   -0.07580026
 Pairs        0.05153941    0.00000000   -0.02341776
 Total        1.07798934   -0.08056407   -0.48987345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71906665
 One electron energy               -11104.90169923
 Two electron energy                 2972.50480017
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987345
 !MRCI STATE 6.1 Energy             -8132.396899064824

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510397 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510397 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510397 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302738 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302738 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302738 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94365514 (fixed)   0.96314740 (relaxed)   0.96314740 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429682   -0.00970782   -0.39065506
 Singles      0.02215326   -0.07085625   -0.07580061
 Pairs        0.05153932    0.00000000   -0.02341769
 Total        1.07798939   -0.08056406   -0.48987336
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71907900
 One electron energy               -11104.90175893
 Two electron energy                 2972.50485996
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987336
 !MRCI STATE 7.1 Energy             -8132.396898976859

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510390 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510390 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510390 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302731 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302731 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302731 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95423892 (fixed)   0.96314740 (relaxed)   0.96314740 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429682   -0.00970782   -0.39065505
 Singles      0.02215326   -0.07085625   -0.07580061
 Pairs        0.05153932   -0.00000000   -0.02341769
 Total        1.07798939   -0.08056407   -0.48987336
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71907930
 One electron energy               -11104.90175912
 Two electron energy                 2972.50486014
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987336
 !MRCI STATE 8.1 Energy             -8132.396898976855

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510390 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510390 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510390 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302731 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302731 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302731 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96314767 (fixed)   0.96314767 (relaxed)   0.96314767 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429685   -0.00970795   -0.39065556
 Singles      0.02215246   -0.07085575   -0.07579977
 Pairs        0.05153947    0.00000000   -0.02341782
 Total        1.07798878   -0.08056370   -0.48987316
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71905082
 One electron energy               -11104.90162833
 Two electron energy                 2972.50472956
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987315
 !MRCI STATE 9.1 Energy             -8132.396898772659

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510338 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510338 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510338 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302679 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302679 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302679 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94365549 (fixed)   0.96314779 (relaxed)   0.96314779 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429634   -0.00970744   -0.39065477
 Singles      0.02215286   -0.07085613   -0.07580036
 Pairs        0.05153932    0.00000000   -0.02341770
 Total        1.07798852   -0.08056357   -0.48987283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71907359
 One electron energy               -11104.90176216
 Two electron energy                 2972.50486371
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987283
 !MRCI STATE 10.1 Energy            -8132.396898449880

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510291 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510291 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510291 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302631 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302631 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302631 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95423932 (fixed)   0.96314779 (relaxed)   0.96314779 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429634   -0.00970744   -0.39065478
 Singles      0.02215286   -0.07085613   -0.07580036
 Pairs        0.05153932   -0.00000000   -0.02341770
 Total        1.07798852   -0.08056357   -0.48987283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71907352
 One electron energy               -11104.90176182
 Two electron energy                 2972.50486337
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987283
 !MRCI STATE 11.1 Energy            -8132.396898449871

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510290 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510290 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510290 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302631 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302631 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302631 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96314779 (fixed)   0.96314780 (relaxed)   0.96314780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429626   -0.00970735   -0.39069674
 Singles      0.02215295   -0.07085622   -0.07580051
 Pairs        0.05153929    0.00004540   -0.02337555
 Total        1.07798851   -0.08051817   -0.48987279
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90702562
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71907956
 One electron energy               -11104.90180016
 Two electron energy                 2972.50490175
 Virial quotient                       -0.84075603
 Correlation energy                    -0.48987279
 !MRCI STATE 12.1 Energy            -8132.396898410416

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43510286 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43510286 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43510286 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43302626 (Pople, fixed reference)
 Cluster corrected energies         -8132.43302626 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43302626 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.96402439 (fixed)   0.96410120 (relaxed)   0.96402440 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00504001   -0.01110328   -0.01260272
 Singles      0.02085485   -0.07051692   -0.07498966
 Pairs        0.05013408   -0.40599990   -0.40002772
 Total        1.07602893   -0.48762011   -0.48762011
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90197434
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.65661608
 One electron energy               -11102.25498611
 Two electron energy                 2969.86539166
 Virial quotient                       -0.84076070
 Correlation energy                    -0.48762011
 !MRCI STATE 13.1 Energy            -8132.389594450417

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42666769 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42658409 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42666769 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42459704 (Pople, fixed reference)
 Cluster corrected energies         -8132.42451328 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42459704 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96402443 (fixed)   0.96410126 (relaxed)   0.96402443 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00504003   -0.01110327   -0.38991598
 Singles      0.02085469   -0.07051680   -0.07498950
 Pairs        0.05013414    0.00000000   -0.02271455
 Total        1.07602885   -0.08162007   -0.48762002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90197434
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.65661048
 One electron energy               -11102.25498578
 Two electron energy                 2969.86539141
 Virial quotient                       -0.84076071
 Correlation energy                    -0.48762002
 !MRCI STATE 14.1 Energy            -8132.389594365947

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42666756 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42658394 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42666756 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42459691 (Pople, fixed reference)
 Cluster corrected energies         -8132.42451313 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42459691 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96402443 (fixed)   0.96410126 (relaxed)   0.96402444 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00504003   -0.01110327   -0.38991598
 Singles      0.02085469   -0.07051679   -0.07498950
 Pairs        0.05013413    0.00000000   -0.02271454
 Total        1.07602885   -0.08162006   -0.48762002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90197434
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.65661039
 One electron energy               -11102.25498481
 Two electron energy                 2969.86539045
 Virial quotient                       -0.84076071
 Correlation energy                    -0.48762002
 !MRCI STATE 15.1 Energy            -8132.389594365938

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42666756 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42658394 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42666756 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42459691 (Pople, fixed reference)
 Cluster corrected energies         -8132.42451312 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42459691 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      457.85       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6722.50   6646.50     67.21      4.01      0.07      4.52
 REAL TIME  *      6789.45 SEC
 DISK USED  *       535.55 MB (local),        6.33 GB (total)
 SF USED    *         4.52 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -8132.49388813  AU                              
 SETTING HLSDIAG(3)     =     -8132.49388801  AU                              
 SETTING HLSDIAG(4)     =     -8132.49388800  AU                              
 SETTING HLSDIAG(5)     =     -8132.49388800  AU                              
 SETTING HLSDIAG(6)     =     -8132.49388794  AU                              
 SETTING HLSDIAG(7)     =     -8132.43510397  AU                              
 SETTING HLSDIAG(8)     =     -8132.43510390  AU                              
 SETTING HLSDIAG(9)     =     -8132.43510390  AU                              
 SETTING HLSDIAG(10)    =     -8132.43510338  AU                              
 SETTING HLSDIAG(11)    =     -8132.43510291  AU                              
 SETTING HLSDIAG(12)    =     -8132.43510290  AU                              
 SETTING HLSDIAG(13)    =     -8132.43510286  AU                              
 SETTING HLSDIAG(14)    =     -8132.42666769  AU                              
 SETTING HLSDIAG(15)    =     -8132.42666756  AU                              
 SETTING HLSDIAG(16)    =     -8132.42666756  AU                              


         HLSDIAG
    -8132.544191
    -8132.493888
    -8132.493888
    -8132.493888
    -8132.493888
    -8132.493888
    -8132.435104
    -8132.435104
    -8132.435104
    -8132.435103
    -8132.435103
    -8132.435103
    -8132.435103
    -8132.426668
    -8132.426668
    -8132.426668
                                                  

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

 Time for Seward_LS:      75.62 sec

       11141882. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2726 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     75.62 sec, REAL time:     76.73 sec


 SORTLS1 read    11148006. and wrote    11148006. SO integrals in    72 records. CPU time:      0.12 sec, REAL time:      0.19 sec
 SORTLS2 read    11148006. and wrote    11148006. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.08 sec

 FILE SIZES: FILE 1:   260.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   260.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      248.07       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      457.85       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6798.70     76.17   6646.50     67.21      4.01      0.07      4.52
 REAL TIME  *      6866.94 SEC
 DISK USED  *       535.62 MB (local),        6.73 GB (total)
 SF USED    *         4.52 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:***********
 Replaced energies:***********

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:**************************************************************************************************************
                   *******************************************************
 Replaced energies:**************************************************************************************************************
                   *******************************************************



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.54419092

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.00

    2   1.1  1.0  1.0       0.00   11040.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     161.68      -0.00       0.00       0.01      -0.00       0.00      -0.00       3.07

    3   2.1  1.0  1.0       0.00       0.00   11040.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -161.68       0.00       0.00      -0.00      -0.00      -3.07      -0.00      -0.00       0.00

    4   3.1  1.0  1.0      -0.00       0.00       0.00   11040.22       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      80.85      -0.00      -0.00      -0.00      -0.55      -0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00   11040.21       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -80.85      -0.00       0.00       0.00      -0.55       0.00       0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   11040.23       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   23941.82       0.00       0.00       0.00
                           -0.00       0.00       3.07       0.00      -0.00       0.00       0.00      -0.00      -0.00     154.72

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23941.83       0.00       0.00
                           -0.01      -0.00       0.00       0.00       0.55      -0.00       0.00      -0.00     226.36       0.00

    9   8.1  1.0  1.0      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23941.83       0.00
                           -0.00       0.00       0.00       0.55      -0.00      -0.00       0.00    -226.36       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23941.95
                           -0.00      -3.07      -0.00       0.00      -0.00      -0.00    -154.72      -0.00      -0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00      -0.00      -0.00      -3.89       0.00      -0.00      -0.00      41.61       0.00

   12  11.1  1.0  1.0       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       3.89       0.00      -0.00      -0.00      41.60      -0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       4.19       0.00      -0.00      -0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -8.22      -0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           90.29      -0.00      -0.00       0.00      -7.16       0.00      -0.00      -0.00       0.02      -0.00

   16  15.1  1.0  1.0      90.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -7.16      -0.00      -0.00      -0.00      -0.02      -0.00      -0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00     -57.17      -0.00      -0.00      -0.00      -2.76       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     -57.17      -0.00      -0.00       0.00       2.76       0.00

   18   2.1  1.0  0.0       0.00      -0.00       0.00      -0.00     -57.17       0.00       0.00      -0.00      -2.56       0.00
                           -0.00       0.00      -0.00      57.16      -0.00      -0.00       0.00      -2.56      -0.00      -0.00

   19   3.1  1.0  0.0       0.00      57.17       0.00       0.00      -0.00       0.00      -2.21       0.00       0.00       0.00
                           -0.00       0.00     -57.16       0.00       0.00     -99.01      -0.00      -0.00      -0.00       2.20

   20   4.1  1.0  0.0       0.00       0.00      57.17       0.00       0.00     -99.01       0.00       0.00      -0.00      -2.20
                           -0.00      57.17       0.00      -0.00      -0.00       0.00      -2.21       0.00      -0.00      -0.00

   21   5.1  1.0  0.0       0.00       0.00      -0.00      -0.00      99.01       0.00      -0.00      -0.00       0.32       0.00
                           -0.00       0.00       0.00      99.01      -0.00       0.00      -0.00      -0.32       0.00       0.00

   22   6.1  1.0  0.0       0.00       0.00      -0.00       2.21      -0.00       0.00       0.00      54.63      -0.00       0.00
                            0.00       0.00      -0.00       0.00       2.21       0.00      -0.00       0.00     -54.63      -0.00

   23   7.1  1.0  0.0       0.00       2.76       0.00      -0.00      -0.00       0.00     -54.63      -0.00      -0.00      -0.00
                            0.00      -0.00       2.56       0.00      -0.00       0.32      -0.00       0.00       0.00     -78.10

   24   8.1  1.0  0.0       0.00      -0.00       2.56      -0.00       0.00      -0.32       0.00       0.00      -0.00     -78.10
                           -0.00      -2.76       0.00       0.00       0.00      -0.00      54.63      -0.00      -0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00      -0.00      -0.00       2.20      -0.00      -0.00       0.00      78.10      -0.00
                            0.00      -0.00       0.00      -2.20       0.00      -0.00       0.00      78.10      -0.00       0.00

   26  10.1  1.0  0.0       0.00      -0.33      -0.00      -0.00      -0.00      -0.00     -94.77       0.00      -0.00       0.00
                            0.00       0.00       1.07       0.00       0.00      -2.37       0.00      -0.00      -0.00      76.58

   27  11.1  1.0  0.0       0.00       0.00      -1.07       0.00       0.00      -2.37       0.00       0.00       0.00     -76.59
                           -0.00      -0.33       0.00       0.00      -0.00      -0.00     -94.77       0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00      -0.00       0.00       1.69       0.00      -0.00       0.00      18.19      -0.00      -0.00
                            0.03       0.00       0.00       0.00      -1.69      -0.00      -0.00      -0.00      18.18      -0.00

   29  13.1  1.0  0.0       0.00       0.00      -0.00       5.07      -0.00      -0.00      -0.00       0.00       0.00       0.00
                         -127.70       0.00       0.00      -0.00      -5.07      -0.00       0.00       0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       5.07      -0.00      -0.00      -0.00      -0.00      -0.02       0.00      -0.00       0.00
                            0.00       0.00      -5.07       0.00       0.00       2.95       0.00       0.00       0.00       0.01

   31  15.1  1.0  0.0       0.00      -0.00      -5.07      -0.00      -0.00      -2.95      -0.00      -0.00       0.00       0.01
                            0.00      -5.07      -0.00      -0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -90.29      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0      90.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.02       0.00       0.00       0.00      90.29       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00      -0.00     -90.29       0.00       0.00       0.00       0.00       0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      57.17       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00     -57.17

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      57.17
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      57.16      -0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -57.17      -0.00       0.00       0.00
                            0.00      -3.89       0.00       0.00      -0.00       7.16       0.00     -57.16      -0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -57.17      -0.00       0.00
                            3.89      -0.00       0.00       0.00       7.16       0.00      57.17       0.00      -0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -99.01
                           -0.00       0.00      -4.19       8.22      -0.00       0.00       0.00       0.00      99.01      -0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -2.21       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       2.21

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.76      -0.00       0.00       0.00
                            0.00     -41.60       0.00      -0.00       0.00       0.02      -0.00       2.56       0.00      -0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.56       0.00      -0.00
                          -41.61       0.00       0.00      -0.00      -0.02       0.00      -2.76       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -2.20
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -2.20       0.00

   11  10.1  1.0  1.0   23942.05       0.00       0.00       0.00       0.00       0.00       0.33       0.00       0.00       0.00
                           -0.00      71.67       0.00      -0.00      -0.00       0.00       0.00       1.07       0.00       0.00

   12  11.1  1.0  1.0       0.00   23942.05       0.00       0.00       0.00       0.00      -0.00       1.07      -0.00      -0.00
                          -71.67      -0.00      -0.00      -0.00       0.00      -0.00      -0.33       0.00       0.00      -0.00

   13  12.1  1.0  1.0       0.00       0.00   23942.06       0.00       0.00       0.00       0.00      -0.00      -1.69      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -1.69

   14  13.1  1.0  1.0       0.00       0.00       0.00   25793.37       0.00       0.00      -0.00       0.00      -5.07       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -5.07

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   25793.40       0.00      -5.07       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -217.38       0.00      -5.07       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25793.40       0.00       5.07       0.00       0.00
                           -0.00       0.00      -0.00       0.00     217.38      -0.00      -5.07      -0.00      -0.00      -0.00

   17   1.1  1.0  0.0       0.33      -0.00       0.00      -0.00      -5.07       0.00   11040.19       0.00       0.00       0.00
                           -0.00       0.33      -0.00      -0.00      -0.00       5.07       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       1.07      -0.00       0.00       0.00       5.07       0.00   11040.21       0.00       0.00
                           -1.07      -0.00      -0.00      -0.00       5.07       0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -1.69      -5.07       0.00       0.00       0.00       0.00   11040.22       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   11040.21
                           -0.00       0.00       1.69       5.07      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       0.00       2.37       0.00       0.00       0.00       2.95       0.00       0.00       0.00       0.00
                            2.37       0.00       0.00       0.00      -2.95       0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      94.77      -0.00      -0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00
                           -0.00      94.77       0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0      -0.00      -0.00     -18.19      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -18.18      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0      -0.00      76.59       0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00
                          -76.58       0.00       0.00      -0.00      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00      -0.00     132.74       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -132.74      -0.03      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0    -132.74      -0.00      -0.00       0.00      -0.02      -0.00       0.00       0.00       0.00       0.00
                            0.00     132.74      -0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0      -0.03       0.00      -0.00      -0.00     153.72      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.03       0.00      -0.00       0.00     153.72      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0      -0.00      -0.00       0.02    -153.72      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.02    -153.72       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -57.17      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -57.17

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -57.17
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      57.16      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      57.17       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -57.16       0.00       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      57.17       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      57.17       0.00      -0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      99.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      99.01      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.21      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       2.21

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.76       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.56       0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.56      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.76       0.00       0.00       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       2.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.20       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.33      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.07       0.00       0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.07       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.33       0.00       0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       1.69       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -1.69

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.07      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -5.07

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       5.07      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -5.07       0.00       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -5.07      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -5.07      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.03     127.70      -0.00

    2   1.1  1.0  1.0       0.00       0.00       2.76      -0.00       0.00      -0.33       0.00      -0.00       0.00       5.07
                           -0.00      -0.00       0.00       2.76       0.00      -0.00       0.33      -0.00      -0.00      -0.00

    3   2.1  1.0  1.0      -0.00      -0.00       0.00       2.56      -0.00      -0.00      -1.07       0.00      -0.00      -0.00
                           -0.00       0.00      -2.56      -0.00      -0.00      -1.07      -0.00      -0.00      -0.00       5.07

    4   3.1  1.0  1.0      -0.00       2.21      -0.00      -0.00      -0.00      -0.00       0.00       1.69       5.07      -0.00
                          -99.01      -0.00      -0.00      -0.00       2.20      -0.00      -0.00      -0.00       0.00      -0.00

    5   4.1  1.0  1.0      99.01      -0.00      -0.00       0.00       2.20      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -2.21       0.00      -0.00      -0.00      -0.00       0.00       1.69       5.07      -0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00      -0.32      -0.00      -0.00      -2.37      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.32       0.00       0.00       2.37       0.00       0.00       0.00      -2.95

    7   6.1  1.0  1.0      -0.00       0.00     -54.63       0.00      -0.00     -94.77       0.00       0.00      -0.00      -0.02
                            0.00       0.00       0.00     -54.63      -0.00      -0.00      94.77       0.00      -0.00      -0.00

    8   7.1  1.0  1.0      -0.00      54.63      -0.00       0.00       0.00       0.00       0.00      18.19       0.00       0.00
                            0.32      -0.00      -0.00       0.00     -78.10       0.00      -0.00       0.00      -0.00      -0.00

    9   8.1  1.0  1.0       0.32      -0.00      -0.00      -0.00      78.10      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      54.63      -0.00       0.00       0.00       0.00       0.00     -18.18      -0.00      -0.00

   10   9.1  1.0  1.0       0.00       0.00      -0.00     -78.10      -0.00       0.00     -76.59      -0.00       0.00       0.00
                           -0.00       0.00      78.10      -0.00      -0.00     -76.58       0.00       0.00      -0.00      -0.01

   11  10.1  1.0  1.0       0.00      94.77      -0.00       0.00      -0.00       0.00       0.00    -132.74      -0.03      -0.00
                           -2.37       0.00      -0.00      -0.00      76.58      -0.00       0.00      -0.00       0.00       0.00

   12  11.1  1.0  1.0       2.37      -0.00      -0.00      -0.00      76.59      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00     -94.77       0.00      -0.00      -0.00      -0.00       0.00    -132.74      -0.03      -0.00

   13  12.1  1.0  1.0       0.00      -0.00     -18.19       0.00       0.00     132.74       0.00      -0.00      -0.00       0.02
                           -0.00      -0.00      -0.00      18.18      -0.00       0.00     132.74       0.00      -0.00      -0.00

   14  13.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00       0.03      -0.00       0.00      -0.00    -153.72
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.03       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.02      -0.00       0.00      -0.00       0.00       0.00      -0.02     153.72      -0.00
                            2.95       0.00       0.00       0.00       0.01      -0.00       0.00       0.00      -0.00      -0.00

   16  15.1  1.0  1.0       2.95       0.00       0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.02       0.00      -0.00       0.00      -0.00      -0.00       0.02    -153.72       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0   11040.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   23941.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   23941.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   23941.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   23941.95       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   23942.05       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23942.05       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23942.06       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25793.37       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25793.40
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0      -0.00      -0.00      -2.76       0.00      -0.00       0.33      -0.00       0.00      -0.00      -5.07
                           -0.00      -0.00       0.00       2.76       0.00      -0.00       0.33      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00      -0.00      -2.56       0.00       0.00       1.07      -0.00       0.00       0.00
                           -0.00       0.00      -2.56      -0.00      -0.00      -1.07      -0.00      -0.00      -0.00       5.07

   34   3.1  1.0 -1.0       0.00      -2.21       0.00       0.00       0.00       0.00      -0.00      -1.69      -5.07       0.00
                          -99.01      -0.00      -0.00      -0.00       2.20      -0.00      -0.00      -0.00       0.00      -0.00

   35   4.1  1.0 -1.0     -99.01       0.00       0.00      -0.00      -2.20       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -2.21       0.00      -0.00      -0.00      -0.00       0.00       1.69       5.07      -0.00

   36   5.1  1.0 -1.0       0.00      -0.00      -0.00       0.32       0.00       0.00       2.37       0.00       0.00       0.00
                            0.00      -0.00      -0.32       0.00       0.00       2.37       0.00       0.00       0.00      -2.95

   37   6.1  1.0 -1.0       0.00       0.00      54.63      -0.00       0.00      94.77      -0.00      -0.00       0.00       0.02
                            0.00      -0.00       0.00     -54.63      -0.00      -0.00      94.77       0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00     -54.63      -0.00      -0.00      -0.00      -0.00      -0.00     -18.19      -0.00      -0.00
                            0.32      -0.00       0.00       0.00     -78.10       0.00      -0.00       0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.32       0.00       0.00      -0.00     -78.10       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      54.63      -0.00      -0.00       0.00       0.00       0.00     -18.18      -0.00      -0.00

   40   9.1  1.0 -1.0      -0.00      -0.00       0.00      78.10      -0.00      -0.00      76.59       0.00      -0.00      -0.00
                           -0.00       0.00      78.10      -0.00       0.00     -76.58       0.00       0.00      -0.00      -0.01

   41  10.1  1.0 -1.0      -0.00     -94.77       0.00      -0.00       0.00       0.00      -0.00     132.74       0.03       0.00
                           -2.37       0.00      -0.00      -0.00      76.58       0.00       0.00      -0.00       0.00       0.00

   42  11.1  1.0 -1.0      -2.37       0.00       0.00       0.00     -76.59       0.00      -0.00       0.00      -0.00       0.00
                           -0.00     -94.77       0.00      -0.00      -0.00      -0.00      -0.00    -132.74      -0.03      -0.00

   43  12.1  1.0 -1.0      -0.00       0.00      18.19      -0.00      -0.00    -132.74      -0.00      -0.00       0.00      -0.02
                           -0.00      -0.00      -0.00      18.18      -0.00       0.00     132.74      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00      -0.03       0.00      -0.00      -0.00     153.72
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.03       0.00      -0.00       0.00

   45  14.1  1.0 -1.0      -0.00      -0.02       0.00      -0.00       0.00      -0.00      -0.00       0.02    -153.72      -0.00
                            2.95       0.00       0.00       0.00       0.01      -0.00       0.00       0.00      -0.00       0.00

   46  15.1  1.0 -1.0      -2.95      -0.00      -0.00       0.00       0.01      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.02       0.00      -0.00       0.00      -0.00      -0.00       0.02    -153.72       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01      -0.00      -0.00

    2   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0      -5.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0      -2.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          153.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00      -0.00      57.17       0.00       0.00       0.00       2.76      -0.00       0.00
                            0.00       0.00      -0.00      -0.00     -57.17      -0.00      -0.00       0.00       2.76       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00      57.17      -0.00      -0.00       0.00       2.56      -0.00
                            0.00       0.00       0.00      57.16      -0.00      -0.00       0.00      -2.56      -0.00      -0.00

   19   3.1  1.0  0.0       0.00     -57.17      -0.00       0.00       0.00      -0.00       2.21      -0.00      -0.00      -0.00
                            0.00       0.00     -57.16      -0.00       0.00     -99.01      -0.00      -0.00      -0.00       2.20

   20   4.1  1.0  0.0       0.00      -0.00     -57.17      -0.00       0.00      99.01      -0.00      -0.00       0.00       2.20
                            0.00      57.17       0.00      -0.00       0.00       0.00      -2.21       0.00      -0.00      -0.00

   21   5.1  1.0  0.0       0.00      -0.00       0.00       0.00     -99.01       0.00       0.00       0.00      -0.32      -0.00
                            0.00       0.00       0.00      99.01      -0.00      -0.00      -0.00      -0.32       0.00       0.00

   22   6.1  1.0  0.0       0.00      -0.00       0.00      -2.21       0.00      -0.00       0.00     -54.63       0.00      -0.00
                            0.00       0.00      -0.00       0.00       2.21       0.00       0.00       0.00     -54.63      -0.00

   23   7.1  1.0  0.0       0.00      -2.76      -0.00       0.00       0.00      -0.00      54.63      -0.00       0.00       0.00
                            0.00      -0.00       2.56       0.00      -0.00       0.32      -0.00      -0.00       0.00     -78.10

   24   8.1  1.0  0.0       0.00       0.00      -2.56       0.00      -0.00       0.32      -0.00      -0.00      -0.00      78.10
                            0.00      -2.76       0.00       0.00       0.00      -0.00      54.63      -0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00      -0.00       0.00       0.00      -2.20       0.00       0.00      -0.00     -78.10      -0.00
                            0.00      -0.00       0.00      -2.20       0.00      -0.00       0.00      78.10      -0.00      -0.00

   26  10.1  1.0  0.0       0.00       0.33       0.00       0.00       0.00       0.00      94.77      -0.00       0.00      -0.00
                            0.00       0.00       1.07       0.00       0.00      -2.37       0.00      -0.00      -0.00      76.58

   27  11.1  1.0  0.0       0.00      -0.00       1.07      -0.00      -0.00       2.37      -0.00      -0.00      -0.00      76.59
                            0.00      -0.33       0.00       0.00      -0.00      -0.00     -94.77       0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00       0.00      -0.00      -1.69      -0.00       0.00      -0.00     -18.19       0.00       0.00
                            0.00       0.00       0.00       0.00      -1.69      -0.00      -0.00      -0.00      18.18      -0.00

   29  13.1  1.0  0.0       0.00      -0.00       0.00      -5.07       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -5.07      -0.00       0.00       0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00      -5.07       0.00       0.00       0.00       0.00       0.02      -0.00       0.00      -0.00
                            0.00       0.00      -5.07       0.00       0.00       2.95       0.00       0.00       0.00       0.01

   31  15.1  1.0  0.0   25793.40       0.00       5.07       0.00       0.00       2.95       0.00       0.00      -0.00      -0.01
                            0.00      -5.07      -0.00      -0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00

   32   1.1  1.0 -1.0       0.00   11040.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.07      -0.00    -161.68       0.00      -0.00      -0.01       0.00      -0.00       0.00      -3.07

   33   2.1  1.0 -1.0       5.07       0.00   11040.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     161.68      -0.00      -0.00       0.00       0.00       3.07       0.00       0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00   11040.22       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     -80.85       0.00       0.00       0.00       0.55       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00   11040.21       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      80.85       0.00      -0.00      -0.00       0.55      -0.00      -0.00

   36   5.1  1.0 -1.0       2.95       0.00       0.00       0.00       0.00   11040.23       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   23941.82       0.00       0.00       0.00
                           -0.02      -0.00      -3.07      -0.00       0.00      -0.00      -0.00       0.00       0.00    -154.72

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23941.83       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.55       0.00      -0.00       0.00    -226.36      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23941.83       0.00
                            0.00      -0.00      -0.00      -0.55       0.00       0.00      -0.00     226.36      -0.00      -0.00

   40   9.1  1.0 -1.0      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23941.95
                           -0.00       3.07       0.00      -0.00       0.00       0.00     154.72       0.00       0.00      -0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       3.89      -0.00       0.00       0.00     -41.61      -0.00

   42  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -3.89      -0.00       0.00       0.00     -41.60       0.00      -0.00

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00      -4.19      -0.00       0.00       0.00      -0.00

   44  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          153.72      -0.00      -0.00       0.00       0.00       8.22       0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       7.16      -0.00       0.00       0.00      -0.02       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       7.16       0.00       0.00       0.00       0.02       0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0      -0.00       0.02       0.00       0.00       0.00      90.29
                           -0.02       0.00      -0.00       0.00      90.29      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0      -0.33       0.00      -0.00       0.00       5.07      -0.00
                           -0.00       0.33      -0.00      -0.00      -0.00       5.07

   18   2.1  1.0  0.0      -0.00      -1.07       0.00      -0.00      -0.00      -5.07
                           -1.07      -0.00      -0.00      -0.00       5.07       0.00

   19   3.1  1.0  0.0      -0.00       0.00       1.69       5.07      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00

   20   4.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       1.69       5.07      -0.00       0.00

   21   5.1  1.0  0.0      -0.00      -2.37      -0.00      -0.00      -0.00      -2.95
                            2.37       0.00       0.00       0.00      -2.95       0.00

   22   6.1  1.0  0.0     -94.77       0.00       0.00      -0.00      -0.02      -0.00
                           -0.00      94.77       0.00      -0.00      -0.00      -0.02

   23   7.1  1.0  0.0       0.00       0.00      18.19       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00     -18.18      -0.00      -0.00       0.00

   25   9.1  1.0  0.0       0.00     -76.59      -0.00       0.00       0.00       0.01
                          -76.58       0.00       0.00      -0.00      -0.01      -0.00

   26  10.1  1.0  0.0       0.00       0.00    -132.74      -0.03      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00    -132.74      -0.03      -0.00       0.00

   28  12.1  1.0  0.0     132.74       0.00      -0.00      -0.00       0.02       0.00
                            0.00     132.74       0.00      -0.00      -0.00      -0.02

   29  13.1  1.0  0.0       0.03      -0.00       0.00      -0.00    -153.72       0.00
                           -0.00       0.03       0.00       0.00       0.00     153.72

   30  14.1  1.0  0.0       0.00       0.00      -0.02     153.72      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.02    -153.72       0.00       0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.89      -0.00      -0.00       0.00      -7.16

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.89       0.00      -0.00      -0.00      -7.16      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.19      -8.22       0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      41.60      -0.00       0.00      -0.00      -0.02

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           41.61      -0.00      -0.00       0.00       0.02      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00

   41  10.1  1.0 -1.0   23942.05       0.00       0.00       0.00       0.00       0.00
                            0.00     -71.67      -0.00       0.00       0.00      -0.00

   42  11.1  1.0 -1.0       0.00   23942.05       0.00       0.00       0.00       0.00
                           71.67       0.00       0.00       0.00      -0.00       0.00

   43  12.1  1.0 -1.0       0.00       0.00   23942.06       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00   25793.37       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   25793.40       0.00
                           -0.00       0.00       0.00       0.00      -0.00     217.38

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   25793.40
                            0.00      -0.00       0.00      -0.00    -217.38       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by  -8132.54419092 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000      -0.000      -0.003      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000   11040.186       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000   11040.212       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000   11040.215       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.003       0.000       0.000       0.000   11040.215       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000   11040.227       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   23941.818       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23941.833
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.008       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.024       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            127.694       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -80.848      -0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      80.836      -0.000      -0.000       0.000      -3.622

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000     -80.836       0.000       0.000    -140.022      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      80.848       0.000      -0.000       0.000       0.000      -3.125       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000     140.022      -0.000       0.000      -0.000      -0.448

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       3.125       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000       3.622       0.000      -0.000       0.448      -0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -3.903       0.000       0.000       0.000      -0.000      77.261      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -3.118       0.000      -0.000       0.000     110.453

   10    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       1.509       0.000       0.000      -3.358       0.000      -0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.473       0.000       0.000      -0.000      -0.000    -134.027       0.000

   12    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.028       0.000       0.000       0.000      -2.394      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                             -127.696       0.000       0.000      -0.000      -7.170      -0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -7.163       0.000       0.000       4.167       0.000       0.000

   15    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -7.172      -0.000      -0.000      -0.000      -0.000       0.031       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     161.680      -0.000       0.000       0.005      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -161.680       0.000       0.000      -0.000      -0.000      -3.068      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       0.000      -0.000       0.000      80.847      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -80.847      -0.000       0.000       0.000      -0.552

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.005       0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       3.068       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.008      -0.000       0.000       0.000       0.552      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.552      -0.000      -0.000       0.000    -226.360

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -3.069      -0.000       0.000      -0.000      -0.000    -154.724      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.024       0.000      -0.000      -0.000      -3.891       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       3.891       0.000      -0.000      -0.000      41.600

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       4.185       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -8.225      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              127.694      -0.000      -0.000       0.000      -7.164       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -7.164      -0.000      -0.000      -0.000      -0.025

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.008       0.000      -0.000       0.024       0.000       0.000       0.000     127.694
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          23941.832       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   23941.946       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   23942.051       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   23942.052       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   23942.062       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   25793.368       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   25793.396       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   25793.397
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                3.903       0.000      -0.000       0.473      -0.000      -0.000      -0.000       7.172

    2    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -1.509      -0.000      -0.000      -0.000       7.163       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       3.118      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       2.394       7.170      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       3.358       0.000       0.000       0.000      -4.167       0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                              -77.261      -0.000      -0.000     134.027       0.000      -0.000      -0.000      -0.031

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000    -110.453       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     -25.717      -0.004      -0.000       0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000    -108.305       0.000       0.000      -0.000      -0.019      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     108.305       0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000    -187.726      -0.038      -0.000       0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               25.717      -0.000       0.000     187.726       0.000      -0.000      -0.000      -0.034

   13    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.004       0.000      -0.000       0.038       0.000       0.000       0.000     217.389

   14    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.019      -0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.034    -217.389       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.069      -0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.552      -0.000       0.000      -3.891       0.000       0.000      -0.000       7.164

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       3.891      -0.000       0.000       0.000       7.164       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -4.185       8.225      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     154.724       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              226.360       0.000       0.000     -41.600       0.000      -0.000       0.000       0.025

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -41.606       0.000       0.000      -0.000      -0.025       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.001      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               41.606       0.000      -0.000      71.670       0.000      -0.000      -0.000       0.001

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -71.670      -0.000      -0.000      -0.000       0.001      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001      -0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.025      -0.000       0.000      -0.001      -0.000      -0.000       0.000    -217.382

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001       0.000      -0.000       0.000     217.382      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -80.848      -0.000      -0.000       0.000       3.903

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      80.836      -0.000      -0.000       0.000      -3.622      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000     -80.836       0.000       0.000    -140.022      -0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               80.848       0.000      -0.000       0.000       0.000      -3.125       0.000      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000     140.022      -0.000       0.000      -0.000      -0.448       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000       3.125       0.000       0.000       0.000     -77.261

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       3.622       0.000      -0.000       0.448      -0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -3.903       0.000       0.000       0.000      -0.000      77.261      -0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -3.118       0.000      -0.000       0.000     110.453      -0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       1.509       0.000       0.000      -3.358       0.000      -0.000      -0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.473       0.000       0.000      -0.000      -0.000    -134.027       0.000      -0.000

   12    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -2.394      -0.000      -0.000      -0.000      25.717

   13    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -7.170      -0.000       0.000       0.000       0.004

   14    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -7.163       0.000       0.000       4.167       0.000       0.000       0.000

   15    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -7.172      -0.000      -0.000      -0.000      -0.000       0.031       0.000      -0.000

    1    1  |1 0>           11040.186       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   11040.212       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   11040.215       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   11040.215       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   11040.227       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   23941.818       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   23941.833       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23941.832
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      80.848       0.000       0.000       0.000       3.903      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      80.845      -0.000      -0.000       0.000       3.622
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 1>-            -80.848      -0.000       0.000       0.000      -0.000       3.125      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-             -0.000     -80.845      -0.000       0.000     140.017      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-             -0.000       0.000       0.000    -140.017       0.000       0.000       0.000      -0.447
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-             -0.000       0.000      -3.125       0.000      -0.000       0.000     -77.255       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-             -3.903      -0.000       0.000       0.000      -0.000      77.255       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000      -3.622       0.000      -0.000       0.447      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.000       0.000      -3.118       0.000       0.000      -0.000    -110.448
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.472       0.000       0.000       0.000       0.000     134.031      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>-             -0.000       1.508      -0.000      -0.000       3.358      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000      -0.000      -2.394      -0.000       0.000      -0.000     -25.726       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000       0.000      -7.170       0.000       0.000       0.000      -0.004      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>-             -7.172       0.000       0.000       0.000       0.000       0.031      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       7.163       0.000       0.000       4.167       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.028     127.696      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.473      -0.000      -0.000      -0.000       7.172       0.000

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -1.509      -0.000      -0.000      -0.000       7.163       0.000    -161.680

    3    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                3.118      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       2.394       7.170      -0.000       0.000      -0.000

    5    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       3.358       0.000       0.000       0.000      -4.167       0.000      -0.005

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     134.027       0.000      -0.000      -0.000      -0.031       0.000

    7    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                             -110.453       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -25.717      -0.004      -0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000    -108.305       0.000       0.000      -0.000      -0.019      -0.000      -3.069

   10    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                              108.305       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000    -187.726      -0.038      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000     187.726       0.000      -0.000      -0.000      -0.034      -0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.038       0.000       0.000       0.000     217.389       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.019      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.034    -217.389       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      80.848
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       3.903
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>           23941.946       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000   23942.051       0.000       0.000       0.000       0.000       0.000      -0.472
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000   23942.052       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000   23942.062       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   25793.368       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   25793.396       0.000       7.172
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   25793.397      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000      -0.472       0.000      -0.000       0.000       7.172      -0.000   11040.186
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-             -0.000      -0.000      -1.508       0.000      -0.000      -0.000      -7.163       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000      -0.000       0.000       2.394       7.170      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>-              3.118      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000      -0.000      -3.358      -0.000      -0.000      -0.000      -4.167       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.000    -134.031       0.000       0.000      -0.000      -0.031      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000      25.726       0.004       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-            110.448      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000    -108.310      -0.000       0.000       0.000       0.019       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 1>-             -0.000       0.000       0.000    -187.724      -0.039      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-            108.310      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000     187.724       0.000       0.000      -0.000       0.034       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000       0.039      -0.000       0.000       0.000    -217.389       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 1>-             -0.000       0.000       0.000      -0.034     217.389       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 1>-             -0.019       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.003       0.000       0.000       0.000       0.008       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              161.680      -0.000       0.000       0.005      -0.000       0.000      -0.000       3.069

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -3.068      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      80.847      -0.000      -0.000      -0.000      -0.552      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -80.847      -0.000       0.000       0.000      -0.552       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.068       0.000      -0.000       0.000       0.000      -0.000      -0.000     154.724

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.552      -0.000       0.000      -0.000     226.360       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.552      -0.000      -0.000       0.000    -226.360       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000    -154.724      -0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -3.891       0.000      -0.000      -0.000      41.606       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.891       0.000      -0.000      -0.000      41.600      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       4.185       0.000      -0.000      -0.000       0.001

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -8.225      -0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -7.164       0.000      -0.000      -0.000       0.025      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -7.164      -0.000      -0.000      -0.000      -0.025      -0.000      -0.000

    1    1  |1 0>               0.000     -80.848      -0.000      -0.000      -0.000      -3.903       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000     -80.845       0.000       0.000      -0.000      -3.622       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000      -3.125       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              80.845       0.000       0.000    -140.017       0.000       0.000      -0.000      -3.118
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>              -0.000      -0.000     140.017       0.000      -0.000      -0.000       0.447       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000       3.125      -0.000       0.000       0.000      77.255      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000       0.000     -77.255       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               3.622      -0.000       0.000      -0.447       0.000       0.000       0.000    -110.448
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       3.118      -0.000      -0.000       0.000     110.448       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 0>              -0.000      -0.000      -0.000      -0.000    -134.031       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>              -1.508       0.000       0.000      -3.358       0.000       0.000       0.000    -108.310
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       2.394       0.000      -0.000       0.000      25.726      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>              -0.000       7.170      -0.000      -0.000      -0.000       0.004       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.031       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -7.163      -0.000      -0.000      -4.167      -0.000      -0.000       0.000       0.019
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          11040.212       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   11040.215       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   11040.215       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   11040.227       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   23941.818       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   23941.833       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   23941.832       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23941.946
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.024      -0.000       0.000      -0.000    -127.694       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.891       0.000       0.000      -0.000       7.164

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                3.891      -0.000       0.000       0.000       7.164       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -4.185       8.225      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -41.600       0.000      -0.000       0.000       0.025

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                              -41.606       0.000       0.000      -0.000      -0.025       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001      -0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      71.670       0.000      -0.000      -0.000       0.001

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                              -71.670      -0.000      -0.000      -0.000       0.001      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.001      -0.000      -0.000       0.000    -217.382

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000      -0.000       0.000     217.382      -0.000

    1    1  |1 0>               0.472      -0.000       0.000      -0.000      -7.172       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       1.508      -0.000       0.000       0.000       7.163
                                0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000      -2.394      -7.170       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       3.358       0.000       0.000       0.000       4.167
                                0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>             134.031      -0.000      -0.000       0.000       0.031       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000     -25.726      -0.004      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000     108.310       0.000      -0.000      -0.000      -0.019
                               -0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000      -0.000     187.724       0.039       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 0>            -187.724      -0.000       0.000       0.000      -0.034      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>              -0.039       0.000      -0.000       0.000     217.389      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>              -0.000      -0.000       0.034    -217.389       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          23942.051       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   23942.052       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   23942.062       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   25793.368       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   25793.396       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   25793.397
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.54419971    -0.00000879       -1.93      0.00000000        0.00      0.0000
    2 -8132.49499309     0.04919783    10797.68      0.04920662    10799.60      1.3390
    3 -8132.49499309     0.04919783    10797.68      0.04920662    10799.60      1.3390
    4 -8132.49499303     0.04919789    10797.69      0.04920668    10799.62      1.3390
    5 -8132.49425651     0.04993441    10959.34      0.04994319    10961.26      1.3590
    6 -8132.49425642     0.04993450    10959.36      0.04994329    10961.28      1.3590
    7 -8132.49425639     0.04993453    10959.36      0.04994331    10961.29      1.3590
    8 -8132.49425637     0.04993454    10959.37      0.04994333    10961.29      1.3590
    9 -8132.49425637     0.04993455    10959.37      0.04994333    10961.29      1.3590
   10 -8132.49315142     0.05103950    11201.88      0.05104829    11203.81      1.3891
   11 -8132.49315142     0.05103950    11201.88      0.05104829    11203.81      1.3891
   12 -8132.49315132     0.05103960    11201.90      0.05104839    11203.83      1.3891
   13 -8132.49315132     0.05103960    11201.90      0.05104839    11203.83      1.3891
   14 -8132.49315132     0.05103960    11201.90      0.05104839    11203.83      1.3891
   15 -8132.49315131     0.05103961    11201.90      0.05104840    11203.83      1.3891
   16 -8132.49315131     0.05103961    11201.90      0.05104840    11203.83      1.3891
   17 -8132.43651355     0.10767737    23632.45      0.10768616    23634.38      2.9303
   18 -8132.43651349     0.10767743    23632.46      0.10768622    23634.39      2.9303
   19 -8132.43651306     0.10767786    23632.56      0.10768665    23634.49      2.9303
   20 -8132.43651306     0.10767786    23632.56      0.10768665    23634.49      2.9303
   21 -8132.43651274     0.10767818    23632.63      0.10768697    23634.56      2.9303
   22 -8132.43545625     0.10873467    23864.50      0.10874346    23866.43      2.9591
   23 -8132.43545625     0.10873467    23864.50      0.10874346    23866.43      2.9591
   24 -8132.43545602     0.10873490    23864.55      0.10874369    23866.48      2.9591
   25 -8132.43545565     0.10873526    23864.63      0.10874405    23866.56      2.9591
   26 -8132.43545565     0.10873526    23864.63      0.10874405    23866.56      2.9591
   27 -8132.43545560     0.10873532    23864.64      0.10874410    23866.57      2.9591
   28 -8132.43545543     0.10873549    23864.68      0.10874428    23866.61      2.9591
   29 -8132.43404655     0.11014437    24173.89      0.11015316    24175.82      2.9974
   30 -8132.43404655     0.11014437    24173.90      0.11015316    24175.82      2.9974
   31 -8132.43404636     0.11014456    24173.94      0.11015334    24175.86      2.9974
   32 -8132.43404636     0.11014456    24173.94      0.11015334    24175.86      2.9974
   33 -8132.43404601     0.11014491    24174.01      0.11015370    24175.94      2.9974
   34 -8132.43404590     0.11014502    24174.04      0.11015381    24175.97      2.9974
   35 -8132.43404565     0.11014526    24174.09      0.11015405    24176.02      2.9974
   36 -8132.43404565     0.11014526    24174.09      0.11015405    24176.02      2.9974
   37 -8132.43404555     0.11014537    24174.11      0.11015416    24176.04      2.9974
   38 -8132.42863978     0.11555114    25360.54      0.11555992    25362.47      3.1445
   39 -8132.42765809     0.11653283    25576.00      0.11654162    25577.93      3.1713
   40 -8132.42765809     0.11653283    25576.00      0.11654162    25577.93      3.1713
   41 -8132.42765799     0.11653292    25576.02      0.11654171    25577.95      3.1713
   42 -8132.42567709     0.11851383    26010.78      0.11852262    26012.71      3.2252
   43 -8132.42567708     0.11851384    26010.78      0.11852263    26012.71      3.2252
   44 -8132.42567708     0.11851384    26010.78      0.11852263    26012.71      3.2252
   45 -8132.42567705     0.11851387    26010.79      0.11852266    26012.72      3.2252
   46 -8132.42567705     0.11851387    26010.79      0.11852266    26012.72      3.2252

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99996197  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000035 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.54776722  0.00000062  0.00000000  0.00000000 -0.00000000  0.00000000  0.40823528
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000062 -0.54771356 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000023
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.54773235 -0.00000000  0.00000000 -0.40823776  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000035  0.00000000 -0.00000000 -0.00013532  0.00000000

   4    1  |1 1>+          0.00000025  0.00000000 -0.00000000  0.00000000  0.40989966 -0.70613268 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000036 -0.31620095 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000040
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000236 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00019950
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000143  0.00000000 -0.00000000  0.00025115 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000

   8    1  |1 1>+          0.00000034  0.00000000  0.00000000  0.00000000 -0.00023381  0.00003017  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000203  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000057 -0.00000000  0.00000000 -0.00002820  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

  11    1  |1 1>+         -0.00000101 -0.00000000 -0.00000000 -0.00000000  0.00009441  0.00021731  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000091 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00015637
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00044172  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00058085
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00044385 -0.00000000  0.00000000 -0.00058289  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000019  0.00000000

  15    1  |1 1>+         -0.00503495  0.00000000  0.00000000  0.00000000 -0.00058256 -0.00033794 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.81652495  0.00194452 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00027064  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00002029  0.00000000 -0.00000001  0.81650663 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000062 -0.54770183 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000023

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.54770210 -0.00000062 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40829430

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000040 -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.63243785  0.00000000 -0.00000000  0.00002630 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00020124 -0.00000048  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000096 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000096  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00003404

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00020082  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000171 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000171  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00025117

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000119 -0.00000000  0.00000000  0.00000000  0.00000064 -0.00026714 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00503504 -0.00000000  0.00000000 -0.00000000  0.00000160 -0.00067372 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00044215 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00044215  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00058461

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000062  0.54776741  0.00000000  0.00000000  0.00000000  0.00000000  0.00000023

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.54773353  0.00000062  0.00000000  0.00000000 -0.00000000  0.00000000  0.40818191

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000024 -0.00000000 -0.00000000  0.00000000  0.40653219  0.70807628  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000035  0.00000000 -0.00000000 -0.00013532  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.54773282  0.00000000 -0.00000000  0.40823754 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.31616621 -0.00000036 -0.00000000  0.00000000 -0.00000000  0.00000000  0.70712545

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000236  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000034  0.00000000  0.00000000  0.00000000  0.00023366  0.00003130 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000143  0.00000000 -0.00000000  0.00025115 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000203 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00019930

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000101  0.00000000 -0.00000000 -0.00000000  0.00009546 -0.00021686 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000057  0.00000000 -0.00000000  0.00002821 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000091  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00044172 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00503495  0.00000000  0.00000000 -0.00000000  0.00058416 -0.00033516 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000019 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00044385 -0.00000000  0.00000000 -0.00058289  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000023  0.00001014 -0.70436744 -0.00000000  0.00000000  0.00000000  0.19277228 -0.00000005
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.40822669  0.70978420  0.00001022  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.17195010
                           0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.54621205  0.48475063 -0.00000021 -0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00010972  0.00000964 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000019  0.57737186 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.70709978  0.00947816  0.00000014  0.00000000 -0.00000001 -0.00000001 -0.00000016 -0.63240531
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00017459 -0.00000000 -0.00000000  0.00000000  0.00022195 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00013653  0.00005611 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00020311 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00019930 -0.00016801 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00022661
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00026852 -0.00032564  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000001  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00019896 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000501  0.00000000 -0.00000000 -0.00000000 -0.00034702  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000238  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000007  0.00000167 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000027  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000019 -0.57730631  0.00000000  0.00000001

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00011572 -0.00000077 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.57604888  0.03852107 -0.00000006 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                           0.40829426 -0.01091638 -0.00000016 -0.00000000  0.00000001  0.00000001  0.00000019  0.73020473

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000023 -0.00000015  0.01055011 -0.00000000  0.00000000  0.00000000  0.73020988 -0.00000019

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00001039 -0.00001537  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.05169866  0.77288376 -0.00000025 -0.00000000 -0.00000001

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00028493  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00003405 -0.00042045 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00001202

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00042044 -0.00000000  0.00000000  0.00000000 -0.00001223  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00028370  0.00001898 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00025117 -0.00005577 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00014002

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00005582  0.00000000 -0.00000000 -0.00000000 -0.00014000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00058460 -0.00000041 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000129

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000041 -0.00000000  0.00000000  0.00000000 -0.00000129  0.00000000

   1    1  |1 1>-          0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                           0.40823501  0.70427065  0.00001014  0.00000000  0.00000000  0.00000000  0.00000005  0.19312560

   2    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000023 -0.00001022  0.70969843 -0.00000000 -0.00000000 -0.00000000  0.17234634 -0.00000004

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000019  0.57737243 -0.00000000 -0.00000001

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00012172 -0.00000810  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.60592660  0.40765598 -0.00000008  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000040  0.00000013 -0.00911574  0.00000000 -0.00000000 -0.00000000 -0.63239930  0.00000016

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00019950 -0.00017471 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00022185

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00020312  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00014280 -0.00003740  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00016813 -0.00000000  0.00000000  0.00000000  0.00022652 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00019895 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00022273 -0.00035851  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00015637 -0.00000519 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00034702

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00058085 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000238

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000027 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000167  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000022 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00016677 -0.00000000 -0.00031174 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00016702 -0.00000000 -0.00000000 -0.00000000  0.00035606  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00016871 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00016725  0.00000000 -0.00000000 -0.00000000 -0.00028940  0.00000000 -0.00000000  0.00028467
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00028966  0.00000000  0.00000000 -0.00000000  0.00007886 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000005  0.48819705  0.00000000 -0.45860580 -0.00000018  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000001  0.00000000

   7    1  |1 1>+         -0.00000000  0.61310457 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00215272  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.57122114  0.00000000 -0.00000000 -0.00000000 -0.07254790 -0.00000000  0.00000000 -0.41213428
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.48805894  0.00000005  0.00000000 -0.00000009  0.22487038  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

  10    1  |1 1>+          0.00000000 -0.07165147  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00025158 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.23381614 -0.00000000 -0.00000000  0.00000000 -0.52959368 -0.00000000  0.00000000 -0.40409475
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000004  0.37776221  0.00000000  0.18112157  0.00000007  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00001091  0.00000000  0.00000112  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000403 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00001094 -0.00000000 -0.00000000 -0.00000000  0.00000938 -0.00000000  0.00000000  0.00000392
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00033446  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00028425

   2    1  |1 0>          -0.00000000 -0.00000117  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00033338  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00016908  0.00000000  0.00000000  0.00000000 -0.00009199  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00016908 -0.00000000  0.00009203  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.48791581  0.00000000  0.00000000 -0.00000000  0.00001384  0.00000000 -0.00000000  0.57767255

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000003  0.00000000
                           0.00000000 -0.00000000 -0.08377550  0.00000001  0.00000000 -0.00000033  0.83949682  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000001  0.08374925  0.00000000  0.83947770  0.00000033 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00171267  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.48777582  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.61134237 -0.00000007 -0.00000000 -0.00000002  0.04023947  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000007  0.61134581  0.00000000 -0.04016815 -0.00000002  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00002004  0.00000000  0.00000000 -0.00000000  0.65463356  0.00000000 -0.00000000  0.00000225

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001531  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00001787 -0.00000000  0.00000000 -0.00000000  0.00000221 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00001785 -0.00000000  0.00000218  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00016677  0.00000000  0.00000000 -0.00000000  0.00031176  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00016701 -0.00000000  0.00035606  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00016723  0.00000000  0.00000000 -0.00000000  0.00028942  0.00000000 -0.00000000  0.00028467

   4    1  |1 1>-         -0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00016871  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00028967 -0.00000000 -0.00007888 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000000
                          -0.00000000  0.00000000  0.48819948 -0.00000005 -0.00000000 -0.00000018  0.45856439 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.57120625 -0.00000000 -0.00000000  0.00000000 -0.07260863  0.00000000 -0.00000000  0.41215133

   8    1  |1 1>-          0.00000000  0.00215271 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.61310152 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000005  0.48805896  0.00000000  0.22480916  0.00000009 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.23387569 -0.00000000  0.00000000  0.00000000  0.52957535 -0.00000000  0.00000000 -0.40407701

  11    1  |1 1>-          0.00000000  0.00025167 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.07167725 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.37775883  0.00000004  0.00000000 -0.00000007  0.18104600 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00001091  0.00000000 -0.00000000 -0.00000000  0.00000111 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001099 -0.00000000 -0.00000000  0.00000000  0.00000941 -0.00000000  0.00000000 -0.00000392

  15    1  |1 1>-          0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000400 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000071 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00017350 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000162  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000359  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000143
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00028288  0.00022001 -0.00000000  0.00000096  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000101  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00030087 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000042
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.35057051  0.00000047 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.61942060 -0.00000013
                           0.00000314 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000309 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.28802471 -0.09663630  0.00000001 -0.70046049 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000819  0.00000031  0.00000000 -0.00014337 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.70281703  0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000071 -0.53155331  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000013  0.60468738
                          -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004465

  10    1  |1 1>+         -0.00000000  0.00000000  0.50154046  0.69951923  0.00000000 -0.09626975 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00001425 -0.00000223  0.00000000 -0.00001970  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.07268523 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.68355031 -0.00000092  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01918161 -0.00000000
                          -0.00000611  0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000

  13    1  |1 1>+          0.00000568 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000176  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000859  0.00000093 -0.00000000  0.00001241  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001191 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00028402  0.00000057  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00034659  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000032

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00034658 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000032  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000077  0.00037838  0.00000000 -0.00000135 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00017181 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003632
                          -0.00000024 -0.18184721  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000010 -0.49180691

   8    1  |1 0>          -0.00000163  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000245  0.00000000
                          -0.18195691  0.00000024 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.49184709 -0.00000010

   9    1  |1 0>           0.00000000  0.00000000  0.00001642 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.57763695 -0.00119376  0.00000000  0.00030246  0.00000000 -0.00000000

  10    1  |1 0>           0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000674
                          -0.00000041 -0.30688140  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.09131967

  11    1  |1 0>           0.00000274 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000
                           0.30687829 -0.00000041  0.00000000 -0.00000000  0.00000000  0.00000000 -0.09107019  0.00000002

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.03799237  0.00000000  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000328  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000067 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000573

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000068  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000567  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00017347  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000162

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000361  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000143 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000101 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00028379  0.00021884 -0.00000000  0.00000096  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00030086  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000042 -0.00000000

   6    1  |1 1>-         -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004575
                           0.00000047  0.35061868 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000013  0.61948752

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.70284670  0.00000001  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000820  0.00000030  0.00000000 -0.00014341 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.28844298  0.09541553 -0.00000001  0.70065170  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000475  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000301 -0.00000000
                          -0.53157920  0.00000071 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.60476677  0.00000013

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.07299417  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00001417  0.00000224 -0.00000000  0.00001960  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.49863302  0.70158997  0.00000000 -0.09578252  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000143
                           0.00000092  0.68357353 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01936637

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000569 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000177

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001195 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000859 -0.00000094  0.00000000 -0.00001237  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000218 -0.00872084  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000156  0.00000000  0.00000000  0.00000000 -0.00034314
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000181  0.00000000  0.00000000  0.00000000 -0.00034272 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000029 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000096  0.00000000  0.00000000 -0.00000000  0.00000068 -0.00000027 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000167  0.00000000 -0.00000000 -0.00000000 -0.00019412 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000019 -0.21157192 -0.00000000  0.00000000 -0.00000000  0.00001436
                           0.00000000 -0.00000000 -0.00000000  0.00000098  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.20287024 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000632 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.06227640 -0.00000000 -0.00000000  0.00000000  0.02753769 -0.00001001  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.25106951  0.00000022  0.00000000  0.00000000  0.00000816  0.00000000
                           0.00000000  0.00000000 -0.00000067  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.49469989  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00001541 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.53096727  0.00000000 -0.00000000  0.00000000  0.46298865  0.00001956  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000052 -0.59739567  0.00000000  0.00000000 -0.00000000  0.00001719
                          -0.00000000  0.00000000 -0.00000001  0.00000278  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00002044  0.00000000 -0.00000000 -0.00000017  0.70713018
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000906 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000999  0.00000000 -0.00000000 -0.00000000  0.00002248 -0.57731761  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000131  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000193 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000098  0.00000000 -0.00000000 -0.00000000 -0.00034313 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000098 -0.00000000 -0.00000000 -0.00000000  0.00034313

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.65439469  0.00000000  0.00000000  0.00000000  0.00016148 -0.00000004  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000031  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.11525682 -0.00000010 -0.00000000  0.00000000 -0.00000180 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000054  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000010  0.11507039 -0.00000000 -0.00000000  0.00000000 -0.00000180

   9    1  |1 0>           0.00000000 -0.00002039 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.65452710 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000194 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.72258268  0.00000063  0.00000000 -0.00000000  0.00002035  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000336  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000063  0.72261654 -0.00000000 -0.00000000  0.00000000 -0.00002034

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00019717  0.00000000 -0.00000000  0.00000000  0.75499097  0.00003253  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00002800  0.57734935  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00002237 -0.00000000 -0.00000000 -0.00000000  0.70708346  0.00000017

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00002235  0.00000000 -0.00000000 -0.00000017  0.70708311

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000157 -0.00000000 -0.00000000  0.00000000  0.00034314  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000181  0.00000000 -0.00000000  0.00000000 -0.00034273

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000096 -0.00000000 -0.00000000  0.00000000 -0.00000068  0.00000027 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000029 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000167  0.00000000 -0.00000000 -0.00000000  0.00019410

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000057  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.21138024 -0.00000018 -0.00000000 -0.00000000 -0.00001441 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.06187065 -0.00000000 -0.00000000  0.00000000  0.02758850 -0.00000999  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000630 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.20220165  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000117 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000022 -0.25087821  0.00000000  0.00000000 -0.00000000  0.00000816

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.53116379  0.00000000  0.00000000 -0.00000000 -0.46272094 -0.00001960 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00001541  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.49479738 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000160 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.59738818  0.00000052  0.00000000 -0.00000000  0.00001721  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00002046 -0.00000000 -0.00000000 -0.00000000  0.70712983  0.00000017

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001006  0.00000000  0.00000000 -0.00000000  0.00002247 -0.57731798 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000905 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>           0.00000000  0.00000015  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00033694 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00033655  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00034275 -0.00000000  0.00000000  0.00000000 -0.00033656  0.00000000
                          -0.00000088  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00058773  0.00000000  0.00000000  0.00000000  0.00032872
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00058214 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00001053 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00001238 -0.00000000  0.00000000  0.00000000 -0.00000935  0.00000000
                          -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000667 -0.00000000 -0.00000000 -0.00000000 -0.00000581
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000585 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000077 -0.00000000 -0.00000000 -0.00000000  0.00000064 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00001246  0.00000000 -0.00000000 -0.00000000 -0.00000143
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00001135 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000015 -0.70708301 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000

  14    1  |1 1>+          0.70710467  0.00000000 -0.00000000 -0.00000000  0.70710619 -0.00000003
                          -0.00181420 -0.00000000  0.00000000  0.00000000 -0.00003343  0.00000000

  15    1  |1 1>+         -0.00000000  0.39877191  0.00000000 -0.00000000  0.00000003  0.71250231
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000901  0.00000000 -0.00000000  0.00000000  0.00067379

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00067305 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00033686 -0.00000000  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00033686 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000102 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00039881  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000029 -0.00000000  0.00000000 -0.00000000 -0.00002021

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000143 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000143 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001279  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00001241  0.00000000 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00001241 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000975 -0.00000000  0.00000000  0.00000000 -0.00000012

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.81640844 -0.00000000 -0.00000000 -0.00000000  0.01091690

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.70712972 -0.00000015  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000015  0.70713007  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00033694 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00033651 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00057873 -0.00000000 -0.00000000  0.00000000  0.00034432

   4    1  |1 1>-          0.00000088  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000
                           0.00034275  0.00000000 -0.00000000 -0.00000000  0.00033656 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00058216 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00001057  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000649  0.00000000 -0.00000000  0.00000000  0.00000595

   8    1  |1 1>-         -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001242 -0.00000000  0.00000000  0.00000000 -0.00000939  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000587  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00001241 -0.00000000  0.00000000 -0.00000000 -0.00000174

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000074  0.00000000 -0.00000000  0.00000000 -0.00000065 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00001136 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.70708336  0.00000015 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.41768115 -0.00000000 -0.00000000 -0.00000003 -0.70158435

  15    1  |1 1>-         -0.00181420  0.00000000 -0.00000000 -0.00000000  0.00003343 -0.00000000
                          -0.70710396  0.00000000 -0.00000000 -0.00000000  0.70710689 -0.00000003


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1  -8132.54419971     -0.00000879       -1.93      0.00000000        0.00      0.0000
   2   1  -8132.49499309      0.04919783    10797.68      0.04920662    10799.60      1.3390
   3   1  -8132.49499309      0.04919783    10797.68      0.04920662    10799.60      1.3390
   4   1  -8132.49499303      0.04919789    10797.69      0.04920668    10799.62      1.3390
   5   1  -8132.49425651      0.04993441    10959.34      0.04994319    10961.26      1.3590
   6   1  -8132.49425642      0.04993450    10959.36      0.04994329    10961.28      1.3590
   7   1  -8132.49425639      0.04993453    10959.36      0.04994331    10961.29      1.3590
   8   1  -8132.49425637      0.04993454    10959.37      0.04994333    10961.29      1.3590
   9   1  -8132.49425637      0.04993455    10959.37      0.04994333    10961.29      1.3590
  10   1  -8132.49315142      0.05103950    11201.88      0.05104829    11203.81      1.3891
  11   1  -8132.49315142      0.05103950    11201.88      0.05104829    11203.81      1.3891
  12   1  -8132.49315132      0.05103960    11201.90      0.05104839    11203.83      1.3891
  13   1  -8132.49315132      0.05103960    11201.90      0.05104839    11203.83      1.3891
  14   1  -8132.49315132      0.05103960    11201.90      0.05104839    11203.83      1.3891
  15   1  -8132.49315131      0.05103961    11201.90      0.05104840    11203.83      1.3891
  16   1  -8132.49315131      0.05103961    11201.90      0.05104840    11203.83      1.3891
  17   1  -8132.43651355      0.10767737    23632.45      0.10768616    23634.38      2.9303
  18   1  -8132.43651349      0.10767743    23632.46      0.10768622    23634.39      2.9303
  19   1  -8132.43651306      0.10767786    23632.56      0.10768665    23634.49      2.9303
  20   1  -8132.43651306      0.10767786    23632.56      0.10768665    23634.49      2.9303
  21   1  -8132.43651274      0.10767818    23632.63      0.10768697    23634.56      2.9303
  22   1  -8132.43545625      0.10873467    23864.50      0.10874346    23866.43      2.9591
  23   1  -8132.43545625      0.10873467    23864.50      0.10874346    23866.43      2.9591
  24   1  -8132.43545602      0.10873490    23864.55      0.10874369    23866.48      2.9591
  25   1  -8132.43545565      0.10873526    23864.63      0.10874405    23866.56      2.9591
  26   1  -8132.43545565      0.10873526    23864.63      0.10874405    23866.56      2.9591
  27   1  -8132.43545560      0.10873532    23864.64      0.10874410    23866.57      2.9591
  28   1  -8132.43545543      0.10873549    23864.68      0.10874428    23866.61      2.9591
  29   1  -8132.43404655      0.11014437    24173.89      0.11015316    24175.82      2.9974
  30   1  -8132.43404655      0.11014437    24173.90      0.11015316    24175.82      2.9974
  31   1  -8132.43404636      0.11014456    24173.94      0.11015334    24175.86      2.9974
  32   1  -8132.43404636      0.11014456    24173.94      0.11015334    24175.86      2.9974
  33   1  -8132.43404601      0.11014491    24174.01      0.11015370    24175.94      2.9974
  34   1  -8132.43404590      0.11014502    24174.04      0.11015381    24175.97      2.9974
  35   1  -8132.43404565      0.11014526    24174.09      0.11015405    24176.02      2.9974
  36   1  -8132.43404565      0.11014526    24174.09      0.11015405    24176.02      2.9974
  37   1  -8132.43404555      0.11014537    24174.11      0.11015416    24176.04      2.9974
  38   1  -8132.42863978      0.11555114    25360.54      0.11555992    25362.47      3.1445
  39   1  -8132.42765809      0.11653283    25576.00      0.11654162    25577.93      3.1713
  40   1  -8132.42765809      0.11653283    25576.00      0.11654162    25577.93      3.1713
  41   1  -8132.42765799      0.11653292    25576.02      0.11654171    25577.95      3.1713
  42   1  -8132.42567709      0.11851383    26010.78      0.11852262    26012.71      3.2252
  43   1  -8132.42567708      0.11851384    26010.78      0.11852263    26012.71      3.2252
  44   1  -8132.42567708      0.11851384    26010.78      0.11852263    26012.71      3.2252
  45   1  -8132.42567705      0.11851387    26010.79      0.11852266    26012.72      3.2252
  46   1  -8132.42567705      0.11851387    26010.79      0.11852266    26012.72      3.2252

 E0 =  -8132.54419092 is the energy of the lowest zeroth-order state
 E1 =  -8132.54419971 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99996197  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000035 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.54776722  0.00000062  0.00000000  0.00000000 -0.00000000  0.00000000  0.40823528
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.00000062 -0.54771356 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000023
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.54773235 -0.00000000  0.00000000 -0.40823776  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000035  0.00000000 -0.00000000 -0.00013532  0.00000000

  5  1     4    1  |1 1>+       0.00000025  0.00000000 -0.00000000  0.00000000  0.40989966 -0.70613268 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000036 -0.31620095 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000040
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+      -0.00000000 -0.00000236 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00019950
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000143  0.00000000 -0.00000000  0.00025115 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000

  9  1     8    1  |1 1>+       0.00000034  0.00000000  0.00000000  0.00000000 -0.00023381  0.00003017  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000203  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000057 -0.00000000  0.00000000 -0.00002820  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

 12  1    11    1  |1 1>+      -0.00000101 -0.00000000 -0.00000000 -0.00000000  0.00009441  0.00021731  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000000 -0.00000091 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00015637
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+      -0.00000000  0.00044172  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00058085
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00044385 -0.00000000  0.00000000 -0.00058289  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000019  0.00000000

 16  1    15    1  |1 1>+      -0.00503495  0.00000000  0.00000000  0.00000000 -0.00058256 -0.00033794 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.81652495  0.00194452 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00027064  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00002029  0.00000000 -0.00000001  0.81650663 -0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000062 -0.54770183 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000023

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.54770210 -0.00000062 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40829430

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000040 -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.63243785  0.00000000 -0.00000000  0.00002630 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00020124 -0.00000048  0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000096 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000096  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00003404

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00020082  0.00000000

 26  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000171 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000171  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00025117

 28  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000119 -0.00000000  0.00000000  0.00000000  0.00000064 -0.00026714 -0.00000000 -0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00503504 -0.00000000  0.00000000 -0.00000000  0.00000160 -0.00067372 -0.00000000 -0.00000000

 30  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00044215 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00044215  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00058461

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000062  0.54776741  0.00000000  0.00000000  0.00000000  0.00000000  0.00000023

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.54773353  0.00000062  0.00000000  0.00000000 -0.00000000  0.00000000  0.40818191

 34  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000024 -0.00000000 -0.00000000  0.00000000  0.40653219  0.70807628  0.00000000  0.00000000

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000035  0.00000000 -0.00000000 -0.00013532  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.54773282  0.00000000 -0.00000000  0.40823754 -0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.31616621 -0.00000036 -0.00000000  0.00000000 -0.00000000  0.00000000  0.70712545

 37  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000236  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000034  0.00000000  0.00000000  0.00000000  0.00023366  0.00003130 -0.00000000  0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000143  0.00000000 -0.00000000  0.00025115 -0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000203 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00019930

 41  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000101  0.00000000 -0.00000000 -0.00000000  0.00009546 -0.00021686 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000057  0.00000000 -0.00000000  0.00002821 -0.00000000

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000091  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00044172 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00503495  0.00000000  0.00000000 -0.00000000  0.00058416 -0.00033516 -0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000019 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00044385 -0.00000000  0.00000000 -0.00058289  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000023  0.00001014 -0.70436744 -0.00000000  0.00000000  0.00000000  0.19277228 -0.00000005
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.40822669  0.70978420  0.00001022  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.17195010
                                0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

  4  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.54621205  0.48475063 -0.00000021 -0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00010972  0.00000964 -0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000019  0.57737186 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.70709978  0.00947816  0.00000014  0.00000000 -0.00000001 -0.00000001 -0.00000016 -0.63240531
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

  7  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00017459 -0.00000000 -0.00000000  0.00000000  0.00022195 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00013653  0.00005611 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00020311 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00019930 -0.00016801 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00022661
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00026852 -0.00032564  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000001  0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00019896 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000501  0.00000000 -0.00000000 -0.00000000 -0.00034702  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000238  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000007  0.00000167 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000027  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000019 -0.57730631  0.00000000  0.00000001

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00011572 -0.00000077 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.57604888  0.03852107 -0.00000006 -0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                                0.40829426 -0.01091638 -0.00000016 -0.00000000  0.00000001  0.00000001  0.00000019  0.73020473

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000023 -0.00000015  0.01055011 -0.00000000  0.00000000  0.00000000  0.73020988 -0.00000019

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00001039 -0.00001537  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.05169866  0.77288376 -0.00000025 -0.00000000 -0.00000001

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00028493  0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00003405 -0.00042045 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00001202

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00042044 -0.00000000  0.00000000  0.00000000 -0.00001223  0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00028370  0.00001898 -0.00000000 -0.00000000 -0.00000000

 26  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00025117 -0.00005577 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00014002

 27  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00005582  0.00000000 -0.00000000 -0.00000000 -0.00014000  0.00000000

 28  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00058460 -0.00000041 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000129

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000041 -0.00000000  0.00000000  0.00000000 -0.00000129  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                                0.40823501  0.70427065  0.00001014  0.00000000  0.00000000  0.00000000  0.00000005  0.19312560

 33  1     2    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000023 -0.00001022  0.70969843 -0.00000000 -0.00000000 -0.00000000  0.17234634 -0.00000004

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000019  0.57737243 -0.00000000 -0.00000001

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00012172 -0.00000810  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.60592660  0.40765598 -0.00000008  0.00000000 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000040  0.00000013 -0.00911574  0.00000000 -0.00000000 -0.00000000 -0.63239930  0.00000016

 37  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00019950 -0.00017471 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00022185

 38  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00020312  0.00000000  0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00014280 -0.00003740  0.00000000 -0.00000000 -0.00000000

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00016813 -0.00000000  0.00000000  0.00000000  0.00022652 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00019895 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00022273 -0.00035851  0.00000000  0.00000000  0.00000000

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00015637 -0.00000519 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00034702

 44  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00058085 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000238

 45  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000027 -0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000167  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000022 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00016677 -0.00000000 -0.00031174 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00016702 -0.00000000 -0.00000000 -0.00000000  0.00035606  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.00016871 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00016725  0.00000000 -0.00000000 -0.00000000 -0.00028940  0.00000000 -0.00000000  0.00028467
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00028966  0.00000000  0.00000000 -0.00000000  0.00007886 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000005  0.48819705  0.00000000 -0.45860580 -0.00000018  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000001  0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.61310457 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00215272  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.57122114  0.00000000 -0.00000000 -0.00000000 -0.07254790 -0.00000000  0.00000000 -0.41213428
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.48805894  0.00000005  0.00000000 -0.00000009  0.22487038  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 11  1    10    1  |1 1>+       0.00000000 -0.07165147  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00025158 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.23381614 -0.00000000 -0.00000000  0.00000000 -0.52959368 -0.00000000  0.00000000 -0.40409475
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000004  0.37776221  0.00000000  0.18112157  0.00000007  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00001091  0.00000000  0.00000112  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000403 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00001094 -0.00000000 -0.00000000 -0.00000000  0.00000938 -0.00000000  0.00000000  0.00000392
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00033446  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00028425

 18  1     2    1  |1 0>       -0.00000000 -0.00000117  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00033338  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00016908  0.00000000  0.00000000  0.00000000 -0.00009199  0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00016908 -0.00000000  0.00009203  0.00000000  0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.48791581  0.00000000  0.00000000 -0.00000000  0.00001384  0.00000000 -0.00000000  0.57767255

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000003  0.00000000
                                0.00000000 -0.00000000 -0.08377550  0.00000001  0.00000000 -0.00000033  0.83949682  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000001  0.08374925  0.00000000  0.83947770  0.00000033 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00171267  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.48777582  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.61134237 -0.00000007 -0.00000000 -0.00000002  0.04023947  0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000007  0.61134581  0.00000000 -0.04016815 -0.00000002  0.00000000

 28  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00002004  0.00000000  0.00000000 -0.00000000  0.65463356  0.00000000 -0.00000000  0.00000225

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001531  0.00000000  0.00000000 -0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00001787 -0.00000000  0.00000000 -0.00000000  0.00000221 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00001785 -0.00000000  0.00000218  0.00000000 -0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00016677  0.00000000  0.00000000 -0.00000000  0.00031176  0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00016701 -0.00000000  0.00035606  0.00000000 -0.00000000

 34  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00016723  0.00000000  0.00000000 -0.00000000  0.00028942  0.00000000 -0.00000000  0.00028467

 35  1     4    1  |1 1>-      -0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00016871  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00028967 -0.00000000 -0.00007888 -0.00000000 -0.00000000

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000000
                               -0.00000000  0.00000000  0.48819948 -0.00000005 -0.00000000 -0.00000018  0.45856439 -0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.57120625 -0.00000000 -0.00000000  0.00000000 -0.07260863  0.00000000 -0.00000000  0.41215133

 39  1     8    1  |1 1>-       0.00000000  0.00215271 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.61310152 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000005  0.48805896  0.00000000  0.22480916  0.00000009 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.23387569 -0.00000000  0.00000000  0.00000000  0.52957535 -0.00000000  0.00000000 -0.40407701

 42  1    11    1  |1 1>-       0.00000000  0.00025167 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.07167725 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.37775883  0.00000004  0.00000000 -0.00000007  0.18104600 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00001091  0.00000000 -0.00000000 -0.00000000  0.00000111 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001099 -0.00000000 -0.00000000  0.00000000  0.00000941 -0.00000000  0.00000000 -0.00000392

 46  1    15    1  |1 1>-       0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000400 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000071 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00017350 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000162  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00000359  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000143
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00028288  0.00022001 -0.00000000  0.00000096  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000101  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00030087 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000042
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.35057051  0.00000047 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.61942060 -0.00000013
                                0.00000314 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000309 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000000  0.28802471 -0.09663630  0.00000001 -0.70046049 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000819  0.00000031  0.00000000 -0.00014337 -0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.70281703  0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000071 -0.53155331  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000013  0.60468738
                               -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004465

 11  1    10    1  |1 1>+      -0.00000000  0.00000000  0.50154046  0.69951923  0.00000000 -0.09626975 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00001425 -0.00000223  0.00000000 -0.00001970  0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.07268523 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+       0.68355031 -0.00000092  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01918161 -0.00000000
                               -0.00000611  0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000

 14  1    13    1  |1 1>+       0.00000568 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000176  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000859  0.00000093 -0.00000000  0.00001241  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001191 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00028402  0.00000057  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00034659  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000032

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00034658 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000032  0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000077  0.00037838  0.00000000 -0.00000135 -0.00000000 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00017181 -0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003632
                               -0.00000024 -0.18184721  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000010 -0.49180691

 24  1     8    1  |1 0>       -0.00000163  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000245  0.00000000
                               -0.18195691  0.00000024 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.49184709 -0.00000010

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00001642 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.57763695 -0.00119376  0.00000000  0.00030246  0.00000000 -0.00000000

 26  1    10    1  |1 0>        0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000674
                               -0.00000041 -0.30688140  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.09131967

 27  1    11    1  |1 0>        0.00000274 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000
                                0.30687829 -0.00000041  0.00000000 -0.00000000  0.00000000  0.00000000 -0.09107019  0.00000002

 28  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.03799237  0.00000000  0.00000000 -0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000328  0.00000000 -0.00000000 -0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000067 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000573

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000068  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000567  0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00017347  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000162

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000361  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000143 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000101 -0.00000000 -0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00028379  0.00021884 -0.00000000  0.00000096  0.00000000  0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00030086  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000042 -0.00000000

 37  1     6    1  |1 1>-      -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004575
                                0.00000047  0.35061868 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000013  0.61948752

 38  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.70284670  0.00000001  0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000820  0.00000030  0.00000000 -0.00014341 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.28844298  0.09541553 -0.00000001  0.70065170  0.00000000  0.00000000

 40  1     9    1  |1 1>-      -0.00000475  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000301 -0.00000000
                               -0.53157920  0.00000071 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.60476677  0.00000013

 41  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.07299417  0.00000000 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00001417  0.00000224 -0.00000000  0.00001960  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.49863302  0.70158997  0.00000000 -0.09578252  0.00000000 -0.00000000

 43  1    12    1  |1 1>-      -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000143
                                0.00000092  0.68357353 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01936637

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000569 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000177

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001195 -0.00000000  0.00000000  0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000859 -0.00000094  0.00000000 -0.00001237  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000218 -0.00872084  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000156  0.00000000  0.00000000  0.00000000 -0.00034314
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000181  0.00000000  0.00000000  0.00000000 -0.00034272 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000029 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000096  0.00000000  0.00000000 -0.00000000  0.00000068 -0.00000027 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000167  0.00000000 -0.00000000 -0.00000000 -0.00019412 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000019 -0.21157192 -0.00000000  0.00000000 -0.00000000  0.00001436
                                0.00000000 -0.00000000 -0.00000000  0.00000098  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.20287024 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000632 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.06227640 -0.00000000 -0.00000000  0.00000000  0.02753769 -0.00001001  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000000  0.00000000  0.25106951  0.00000022  0.00000000  0.00000000  0.00000816  0.00000000
                                0.00000000  0.00000000 -0.00000067  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000000 -0.49469989  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00001541 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.53096727  0.00000000 -0.00000000  0.00000000  0.46298865  0.00001956  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000052 -0.59739567  0.00000000  0.00000000 -0.00000000  0.00001719
                               -0.00000000  0.00000000 -0.00000001  0.00000278  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00002044  0.00000000 -0.00000000 -0.00000017  0.70713018
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.00000906 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+       0.00000999  0.00000000 -0.00000000 -0.00000000  0.00002248 -0.57731761  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000131  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000193 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000098  0.00000000 -0.00000000 -0.00000000 -0.00034313 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000098 -0.00000000 -0.00000000 -0.00000000  0.00034313

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.65439469  0.00000000  0.00000000  0.00000000  0.00016148 -0.00000004  0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000031  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.11525682 -0.00000010 -0.00000000  0.00000000 -0.00000180 -0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000054  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000010  0.11507039 -0.00000000 -0.00000000  0.00000000 -0.00000180

 25  1     9    1  |1 0>        0.00000000 -0.00002039 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.65452710 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000194 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.72258268  0.00000063  0.00000000 -0.00000000  0.00002035  0.00000000

 27  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000336  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000063  0.72261654 -0.00000000 -0.00000000  0.00000000 -0.00002034

 28  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00019717  0.00000000 -0.00000000  0.00000000  0.75499097  0.00003253  0.00000000 -0.00000000

 29  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00002800  0.57734935  0.00000000  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00002237 -0.00000000 -0.00000000 -0.00000000  0.70708346  0.00000017

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00002235  0.00000000 -0.00000000 -0.00000017  0.70708311

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000157 -0.00000000 -0.00000000  0.00000000  0.00034314  0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000181  0.00000000 -0.00000000  0.00000000 -0.00034273

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000096 -0.00000000 -0.00000000  0.00000000 -0.00000068  0.00000027 -0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000029 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000167  0.00000000 -0.00000000 -0.00000000  0.00019410

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000057  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.21138024 -0.00000018 -0.00000000 -0.00000000 -0.00001441 -0.00000000

 38  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.06187065 -0.00000000 -0.00000000  0.00000000  0.02758850 -0.00000999  0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000 -0.00000630 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.20220165  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000117 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000022 -0.25087821  0.00000000  0.00000000 -0.00000000  0.00000816

 41  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.53116379  0.00000000  0.00000000 -0.00000000 -0.46272094 -0.00001960 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00001541  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.49479738 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 43  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000160 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.59738818  0.00000052  0.00000000 -0.00000000  0.00001721  0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00002046 -0.00000000 -0.00000000 -0.00000000  0.70712983  0.00000017

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001006  0.00000000  0.00000000 -0.00000000  0.00002247 -0.57731798 -0.00000000  0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000905 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>        0.00000000  0.00000015  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00033694 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00033655  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00034275 -0.00000000  0.00000000  0.00000000 -0.00033656  0.00000000
                               -0.00000088  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00058773  0.00000000  0.00000000  0.00000000  0.00032872
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000  0.00058214 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00001053 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00001238 -0.00000000  0.00000000  0.00000000 -0.00000935  0.00000000
                               -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.00000000  0.00000667 -0.00000000 -0.00000000 -0.00000000 -0.00000581
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000585 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.00000077 -0.00000000 -0.00000000 -0.00000000  0.00000064 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00001246  0.00000000 -0.00000000 -0.00000000 -0.00000143
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00001135 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000015 -0.70708301 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.70710467  0.00000000 -0.00000000 -0.00000000  0.70710619 -0.00000003
                               -0.00181420 -0.00000000  0.00000000  0.00000000 -0.00003343  0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.39877191  0.00000000 -0.00000000  0.00000003  0.71250231
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000901  0.00000000 -0.00000000  0.00000000  0.00067379

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.00067305 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00033686 -0.00000000  0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00033686 -0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000102 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00039881  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000029 -0.00000000  0.00000000 -0.00000000 -0.00002021

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000143 -0.00000000 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000143 -0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001279  0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00001241  0.00000000 -0.00000000  0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00001241 -0.00000000  0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000975 -0.00000000  0.00000000  0.00000000 -0.00000012

 29  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.81640844 -0.00000000 -0.00000000 -0.00000000  0.01091690

 30  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.70712972 -0.00000015  0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000015  0.70713007  0.00000000  0.00000000

 32  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00033694 -0.00000000  0.00000000 -0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00033651 -0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00057873 -0.00000000 -0.00000000  0.00000000  0.00034432

 35  1     4    1  |1 1>-       0.00000088  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000
                                0.00034275  0.00000000 -0.00000000 -0.00000000  0.00033656 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00058216 -0.00000000 -0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00001057  0.00000000  0.00000000  0.00000000

 38  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000649  0.00000000 -0.00000000  0.00000000  0.00000595

 39  1     8    1  |1 1>-      -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001242 -0.00000000  0.00000000  0.00000000 -0.00000939  0.00000000

 40  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000587  0.00000000  0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00001241 -0.00000000  0.00000000 -0.00000000 -0.00000174

 42  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000074  0.00000000 -0.00000000  0.00000000 -0.00000065 -0.00000000

 43  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00001136 -0.00000000  0.00000000  0.00000000

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.70708336  0.00000015 -0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.41768115 -0.00000000 -0.00000000 -0.00000003 -0.70158435

 46  1    15    1  |1 1>-      -0.00181420  0.00000000 -0.00000000 -0.00000000  0.00003343 -0.00000000
                               -0.70710396  0.00000000 -0.00000000 -0.00000000  0.70710689 -0.00000003



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.67%
  3  1     2    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.67%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.80%   49.86%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.67%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.67%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.67%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   40.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.66%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.53%   50.14%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.67%    0.00%
 36  1     5    1  |1 1>-         0.00%   10.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%   49.61%    0.00%    0.00%    0.00%    3.72%    0.00%
  3  1     2    1  |1 1>+        16.66%   50.38%    0.00%    0.00%    0.00%    0.00%    0.00%    2.96%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%   29.83%   23.50%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%
  6  1     5    1  |1 1>+        50.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   39.99%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   33.18%    0.15%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>         16.67%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   53.32%
 20  1     4    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   53.32%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.27%   59.73%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-        16.67%   49.60%    0.00%    0.00%    0.00%    0.00%    0.00%    3.73%
 33  1     2    1  |1 1>-         0.00%    0.00%   50.37%    0.00%    0.00%    0.00%    2.97%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%   36.71%   16.62%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   39.99%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%   23.83%    0.00%   21.03%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%   37.59%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+        32.63%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%   16.99%
 10  1     9    1  |1 1>+         0.00%    0.00%   23.82%    0.00%    0.00%    0.00%    5.06%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.51%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         5.47%    0.00%    0.00%    0.00%   28.05%    0.00%    0.00%   16.33%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%   14.27%    0.00%    3.28%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>         23.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.37%
 23  1     7    1  |1 0>          0.00%    0.00%    0.70%    0.00%    0.00%    0.00%   70.48%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.70%    0.00%   70.47%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%   23.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%   37.37%    0.00%    0.00%    0.00%    0.16%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%   37.37%    0.00%    0.16%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   42.85%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%   23.83%    0.00%    0.00%    0.00%   21.03%    0.00%
 38  1     7    1  |1 1>-        32.63%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%   16.99%
 39  1     8    1  |1 1>-         0.00%   37.59%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%   23.82%    0.00%    5.05%    0.00%    0.00%
 41  1    10    1  |1 1>-         5.47%    0.00%    0.00%    0.00%   28.05%    0.00%    0.00%   16.33%
 42  1    11    1  |1 1>-         0.00%    0.51%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%   14.27%    0.00%    0.00%    0.00%    3.28%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+        12.29%    0.00%    0.00%    0.00%    0.00%    0.00%   38.37%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    8.30%    0.93%    0.00%   49.06%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.40%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%   28.25%    0.00%    0.00%    0.00%    0.00%    0.00%   36.56%
 11  1    10    1  |1 1>+         0.00%    0.00%   25.15%   48.93%    0.00%    0.93%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+        46.72%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    3.31%    0.00%    0.00%    0.00%    0.00%    0.00%   24.19%
 24  1     8    1  |1 0>          3.31%    0.00%    0.00%    0.00%    0.00%    0.00%   24.19%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%   33.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    9.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.83%
 27  1    11    1  |1 0>          9.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.83%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   12.29%    0.00%    0.00%    0.00%    0.00%    0.00%   38.38%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   49.40%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    8.32%    0.91%    0.00%   49.09%    0.00%    0.00%
 40  1     9    1  |1 1>-        28.26%    0.00%    0.00%    0.00%    0.00%    0.00%   36.57%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%   24.86%   49.22%    0.00%    0.92%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%   46.73%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    4.48%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    4.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.39%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    6.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%   24.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+        28.19%    0.00%    0.00%    0.00%   21.44%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%   35.69%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>         42.82%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    1.33%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    1.32%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%   42.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%   52.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%   52.22%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   57.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    4.47%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.38%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    4.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    6.29%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-        28.21%    0.00%    0.00%    0.00%   21.41%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%   24.48%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%   35.69%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 15  1    14    1  |1 1>+        50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 16  1    15    1  |1 1>+         0.00%   15.90%    0.00%    0.00%    0.00%   50.77%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%   66.65%    0.00%    0.00%    0.00%    0.01%
 30  1    14    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%   17.45%    0.00%    0.00%    0.00%   49.22%
 46  1    15    1  |1 1>-        50.00%    0.00%    0.00%    0.00%   50.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      248.07       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      457.85       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     28768.29  21969.59     76.17   6646.50     67.21      4.01      0.07      4.52
 REAL TIME  *     28989.66 SEC
 DISK USED  *       535.62 MB (local),        6.73 GB (total)
 SF USED    *         4.52 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -8132.425677045381

              CI              CI           MULTI         RHF-SCF
  -8132.38959437  -8132.50735336  -8131.90702562  -8131.99670480
 **********************************************************************************************************************************
 Molpro calculation terminated
