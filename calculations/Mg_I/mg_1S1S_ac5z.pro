
 Working directory              : /wrk/irikura/molpro.A7iUToRpZm/
 Global scratch directory       : /wrk/irikura/molpro.A7iUToRpZm/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.A7iUToRpZm/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Mg SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Mg};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=12,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,2,3
     occ,4,3
     wf,sym=1,spin=0;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Mg SO-CI                                                                                                                                                      
  (4 PROC) 64 bit mpp version                                                            DATE: 22-Feb-24          TIME: 10:40:28  
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

 Library entry MG     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  MG     12.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   12
 NUMBER OF PRIMITIVE AOS:         340
 NUMBER OF SYMMETRY AOS:          250
 NUMBER OF CONTRACTIONS:          216   (  101Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     222.822 MB (compressed) written to integral file ( 11.7%)

     Node minimum: 38.273 MB, node maximum: 60.293 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   27721352.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15992525      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   238001710. AND WROTE     4922360. INTEGRALS IN     15 RECORDS. CPU TIME:     1.24 SEC, REAL TIME:     1.35 SEC
 SORT2 READ    24337992. AND WROTE   138588271. INTEGRALS IN    730 RECORDS. CPU TIME:     0.58 SEC, REAL TIME:     0.62 SEC

 Node minimum:    27714260.  Node maximum:    27721352. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.451E-04 0.151E-02 0.621E-02 0.818E-02 0.818E-02 0.818E-02 0.818E-02 0.818E-02
         2 0.426E-04 0.426E-04 0.426E-04 0.610E-02 0.610E-02 0.610E-02 0.193E-01 0.193E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.24       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         6.40      6.20
 REAL TIME  *         7.91 SEC
 DISK USED  *        30.62 MB (local),      628.32 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   3   3

 NELEC=   12   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -199.92109812    -199.92109812     0.00D+00     0.43D-01     0     0       0.13      0.27    start
   2     -199.92111928      -0.00002116     0.51D-03     0.16D-03     1     0       0.13      0.40    diag
   3     -199.92112156      -0.00000228     0.14D-03     0.86D-04     2     0       0.14      0.54    diag
   4     -199.92112159      -0.00000003     0.12D-04     0.88D-05     3     0       0.13      0.67    diag
   5     -199.92112159      -0.00000000     0.94D-06     0.23D-05     4     0       0.14      0.81    diag
   6     -199.92112159      -0.00000000     0.94D-07     0.40D-06     0     0       0.14      0.95    diag

 Final occupancy:   3   3

 !RHF STATE 1.1 Energy               -199.921121585988
  RHF One-electron energy            -279.860150394259
  RHF Two-electron energy              79.939028808272
  RHF Kinetic energy                  201.881673279306
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.990288609850

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.11642     1  1  s    0.99464
    2.1     2.00000    -3.77961     1  2  s    1.00506
    3.1     2.00000    -0.25343     1  8  s    0.32494    1  9  s    0.59083
    1.2     2.00000    -2.28053     1  1  pz   1.00501
    2.2     2.00000    -2.28053     1  1  px   1.00501
    3.2     2.00000    -2.28053     1  1  py   1.00501


 HOMO      3.1    -0.253429 =      -6.8962eV
 LUMO      4.2     0.012807 =       0.3485eV
 LUMO-HOMO         0.266236 =       7.2447eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.24       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.77       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         7.42      1.02      6.20
 REAL TIME  *         8.96 SEC
 DISK USED  *        32.29 MB (local),      636.65 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:     209 (   97  112)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 6 5 3 2 1   4 6 3 5 2151412 8 9  11 71013 1 2 4 6 5 3  1514 911 7 8121310 2
                                        6 4 3 5 1141512 8 7   9111013 2 4 6 3 5 1  141512 8 9 7111310 4   6 5 3 2 4 6 5 3 2 1
                                       151013141211 8 9 7 2   3 5 6 4 1 2 3 5 6 4   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.194D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.307D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.381D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 4 5 6 7 910 8 3   1 2 3 1 210 8 4 5 6   7 91117151214162018
                                       19211310 8 4 5 6 7 9   3 1 220181112151714  16132119 810 4 5 9 7   6 3 1 210 8 7 9 4 5
                                        6141611192112171520  1813 3 1 210 8 7 9 6   4 510 8 9 6 7 5 4 2   1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  728  ( 4 closed/active, 530 closed/virtual, 0 active/active, 194 active/virtual )
 Total number of variables:    736
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -199.83091939    -199.83535965   -0.00444026    0.03517769 0.00001231 0.00000000  0.27E+00      0.50
   2    4    4    0   -199.83523749    -199.83524453   -0.00000704    0.00163475 0.00000284 0.00000000  0.88E-02      0.93
   3    4    4    0   -199.83524454    -199.83524454   -0.00000000    0.00000410 0.00000001 0.00000000  0.19E-04      1.36

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.22E-10)
                       Final energy:   -199.83524454
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -199.920035822686
 Nuclear energy                                  0.00000000
 Kinetic energy                                202.00064064
 One electron energy                          -280.06833514
 Two electron energy                            80.14829932
 Virial ratio                                    1.98970001
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -199.750453255003
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.59397568
 One electron energy                          -277.43860400
 Two electron energy                            77.68815074
 Virial ratio                                    1.99085527
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 6 5 3 2 1   4 6 3 5 2151412 8 9  11 71013 1 4 2 6 3 5  1415 911 812 71013 2
                                        4 6 3 5 1141512 8 7   9111013 4 6 3 5 2 1  141512 8 9 7111310 4   6 3 5 2 4 6 3 5 2 1
                                       131014151112 8 9 7 2   3 5 6 4 1 2 3 5 6 4   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 4 5 6 7 910 8 3   1 2 3 1 210 8 4 5 6   7 91715111416121820
                                       19132110 8 4 5 6 7 9   3 1 220181115171214  1621131910 8 4 5 7 9   6 3 1 210 8 7 9 4 5
                                        6141611192113151712  2018 3 1 2 810 7 9 5   4 610 8 6 9 7 5 4 2   1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.21290     1  1  s    0.99466
    2.1     2.00000    -3.87328     1  2  s    1.00483
    3.1     1.49996    -0.25938     1  8  s    0.38805    1  9  s    0.65353
    4.1     0.50004    -0.00406     1  9  s   -0.35238    1 10  s   -0.45471    1 11  s    1.43069
    1.2     2.00000    -2.37538     1  1  pz   1.00290
    2.2     2.00000    -2.37538     1  1  px   1.00290
    3.2     2.00000    -2.37538     1  1  py   1.00290
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98868831     -0.14986541
 ab             0.10597274      0.69912072
 ba            -0.10597274     -0.69912072
 
 Energy:     -199.92003582   -199.75045326
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.77       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.96      1.53      1.02      6.20
 REAL TIME  *        10.73 SEC
 DISK USED  *        40.51 MB (local),      677.76 MB (total)
 SF USED    *        21.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -199.9200358  -0.0
    -199.7504533  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 12
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       21 conf       21 CSFs
 N-1 el internal:       34 conf       50 CSFs
 N-2 el internal:       39 conf       87 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:     209 (  97 112 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.27 sec, npass=  1  Memory used:   0.89 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.92003582
     2      -199.75045326

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.90D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          5210
 Number of doubly external configurations:        536089
 Total number of contracted configurations:       541311
 Total number of uncontracted configurations:     956417

 Diagonal Coupling coefficients finished.               Storage:    178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    493903 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.92003582    -0.00000000    -0.35283860  0.27D-02  0.57D-01     0.41
    1     2     2     1.00000000     0.00000000  -199.75045326    -0.00000000    -0.32233907  0.30D-02  0.29D-01     0.41
    2     1     1     1.05065488    -0.32532239  -200.24535821    -0.32532239    -0.00572668  0.72D-03  0.20D-02     2.02
    2     2     2     1.02830423    -0.30718023  -200.05763348    -0.30718023    -0.00251062  0.37D-03  0.63D-03     2.02
    3     1     1     1.04295129    -0.33050084  -200.25053666    -0.00517845    -0.00015970  0.23D-04  0.33D-04     3.62
    3     2     2     1.02686661    -0.30965980  -200.06011305    -0.00247957    -0.00007778  0.66D-05  0.21D-04     3.62
    4     1     1     1.04329400    -0.33067475  -200.25071057    -0.00017390    -0.00000504  0.45D-06  0.90D-06     5.24
    4     2     2     1.02732564    -0.30974414  -200.06019739    -0.00008434    -0.00000336  0.67D-06  0.82D-06     5.24
    5     1     1     1.04342199    -0.33068033  -200.25071616    -0.00000559    -0.00000013  0.10D-07  0.25D-07     6.82
    5     2     2     1.02742089    -0.30974768  -200.06020094    -0.00000355    -0.00000012  0.16D-07  0.32D-07     6.82
    6     1     1     1.04343922    -0.33068047  -200.25071629    -0.00000013    -0.00000000  0.97D-10  0.13D-08     8.42
    6     2     2     1.02743302    -0.30974781  -200.06020107    -0.00000013    -0.00000000  0.58D-09  0.18D-08     8.42


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.4%
 P   0.2%   3.3%  10.7%

 Initialization:   4.8%
 Other:           80.5%

 Total CPU:        8.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.1072462   0.9809965
 220222           0.9730512  -0.1043577

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.978154   -0.039797
 2           0.043885    0.985550

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978961    0.001885
 2           0.001885    0.986525


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97815366 (fixed)   0.97896299 (relaxed)   0.97896111 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000452   -0.00001476   -0.33653950
 Singles      0.00075216   -0.00116061   -0.00135069
 Pairs        0.04268725    0.02163875    0.00720973
 Total        1.04344394    0.02046338   -0.33068047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.91972842
 Nuclear energy                         0.00000000
 Kinetic energy                       202.21219314
 One electron energy                 -279.72626748
 Two electron energy                   79.47555120
 Virial quotient                       -0.99029991
 Correlation energy                    -0.33098787
 !MRCI STATE 1.1 Energy              -200.250716288955

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.26509571 (Davidson, fixed reference)
 Cluster corrected energies          -200.26509438 (Davidson, relaxed reference)
 Cluster corrected energies          -200.26509571 (Davidson, rotated reference)

 Cluster corrected energies          -200.26252395 (Pople, fixed reference)
 Cluster corrected energies          -200.26252283 (Pople, relaxed reference)
 Cluster corrected energies          -200.26252395 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98555032 (fixed)   0.98655795 (relaxed)   0.98652512 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006952   -0.00001775   -0.00023838
 Singles      0.00329633   -0.00393350   -0.00482211
 Pairs        0.02413859   -0.30559091   -0.30468732
 Total        1.02750444   -0.30954216   -0.30974781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.75076066
 Nuclear energy                         0.00000000
 Kinetic energy                       201.95204164
 One electron energy                 -277.23508820
 Two electron energy                   77.17488713
 Virial quotient                       -0.99063223
 Correlation energy                    -0.30944041
 !MRCI STATE 2.1 Energy              -200.060201069533

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.06871205 (Davidson, fixed reference)
 Cluster corrected energies          -200.06869089 (Davidson, relaxed reference)
 Cluster corrected energies          -200.06871205 (Davidson, rotated reference)

 Cluster corrected energies          -200.06712324 (Pople, fixed reference)
 Cluster corrected energies          -200.06710574 (Pople, relaxed reference)
 Cluster corrected energies          -200.06712324 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       10.83       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        17.49      8.53      1.53      1.02      6.20
 REAL TIME  *        19.63 SEC
 DISK USED  *        49.57 MB (local),      723.04 MB (total)
 SF USED    *        91.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -200.26509571  AU                              
 SETTING HLSDIAG(2)     =      -200.06871205  AU                              


         HLSDIAG
    -200.2650957
    -200.0687121
                                                  


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

 Time for Seward_LS:      23.03 sec

      151815639. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    39946 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     23.03 sec, REAL time:     23.86 sec


 SORTLS1 read   163549745. and wrote   163549745. SO integrals in   633 records. CPU time:      1.57 sec, REAL time:      2.55 sec
 SORTLS2 read   163549745. and wrote   823932798. SO integrals in    15 records. CPU time:      2.73 sec, REAL time:      8.58 sec

 FILE SIZES: FILE 1:  2658.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2658.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -200.250716   -200.060201
 Replaced energies:   -200.265096   -200.068712



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -200.26509571

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   43101.23
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by   -200.26509571 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   43101.230
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -200.26509571     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -200.06871205     0.19638365    43101.23      0.19638365    43101.23      5.3439

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2

   1    1  |0 0>           1.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00000000  1.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -200.26509571      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -200.06871205      0.19638365    43101.23      0.19638365    43101.23      5.3439

 E0 =   -200.26509571 is the energy of the lowest zeroth-order state
 E1 =   -200.26509571 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2

  1  1     1    1  |0 0>        1.00000000  0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  1.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2

  1  1     1    1  |0 0>        100.00%    0.00%
  2  1     2    1  |0 0>          0.00%  100.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2535.53       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       10.83       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        48.10     30.61      8.53      1.53      1.02      6.20
 REAL TIME  *        58.25 SEC
 DISK USED  *        49.84 MB (local),        8.97 GB (total)
 SF USED    *         2.47 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -200.068712054606

              CI           MULTI         RHF-SCF
   -200.06020107   -199.75045326   -199.92112159
 **********************************************************************************************************************************
 Molpro calculation terminated
