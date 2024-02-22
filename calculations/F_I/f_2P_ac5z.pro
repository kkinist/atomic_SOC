
 Working directory              : /wrk/irikura/molpro.Rh6DK5lhBf/
 Global scratch directory       : /wrk/irikura/molpro.Rh6DK5lhBf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Rh6DK5lhBf/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,F SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={F};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=9,sym=2,spin=1}
 
 {multi
     closed,1,0;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 22-Feb-24          TIME: 09:53:28  
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

 Library entry F      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  F       9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
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

     115.081 MB (compressed) written to integral file ( 12.3%)

     Node minimum: 19.399 MB, node maximum: 28.836 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2456840. INTEGRALS IN      8 RECORDS. CPU TIME:     0.57 SEC, REAL TIME:     0.61 SEC
 SORT2 READ    12192376. AND WROTE    68575111. INTEGRALS IN    370 RECORDS. CPU TIME:     0.34 SEC, REAL TIME:     0.37 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.578E-05 0.405E-03 0.391E-02 0.886E-02 0.376E-01 0.376E-01 0.376E-01 0.376E-01
         2 0.317E-03 0.317E-03 0.317E-03 0.260E-01 0.260E-01 0.260E-01 0.387E-01 0.387E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.02      2.81
 REAL TIME  *         4.23 SEC
 DISK USED  *        30.07 MB (local),      390.02 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   2

 NELEC=    9   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -99.49134886     -99.49134886     0.00D+00     0.44D-01     0     0       0.08      0.15    start
   2      -99.49732919      -0.00598032     0.46D-02     0.25D-02     1     0       0.09      0.24    diag2
   3      -99.49818338      -0.00085419     0.21D-02     0.90D-03     2     0       0.08      0.32    diag2
   4      -99.49824680      -0.00006343     0.24D-03     0.14D-03     3     0       0.09      0.41    diag2
   5      -99.49825472      -0.00000792     0.83D-04     0.75D-04     4     0       0.08      0.49    diag2
   6      -99.49825481      -0.00000008     0.92D-05     0.89D-05     5     0       0.09      0.58    diag2
   7      -99.49825481      -0.00000000     0.95D-06     0.46D-06     6     0       0.09      0.67    diag2
   8      -99.49825481      -0.00000000     0.64D-07     0.42D-07     0     0       0.08      0.75    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   2

 !RHF STATE 1.2 Energy                -99.498254806963
  RHF One-electron energy            -139.372778428241
  RHF Two-electron energy              39.874523621278
  RHF Kinetic energy                  100.077194811892
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.994215065620

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.40805     1  1  s    0.98990
    2.1     2.00000    -1.57616     1  2  s    1.01356
    1.2     2.00000    -0.70536     1  1  pz   0.99282
    2.2     2.00000    -0.70536     1  1  py   0.99282
    3.2     1.00000    -0.83386     1  1  px   1.01854


 HOMO      3.2    -0.833864 =     -22.6906eV
 LUMO      4.2     0.126894 =       3.4530eV
 LUMO-HOMO         0.960758 =      26.1436eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.91       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.78      0.76      2.81
 REAL TIME  *         5.02 SEC
 DISK USED  *        32.61 MB (local),      402.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     176 (   85   91)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.821D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.637D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 6 2 1 5   4 3 6 210 913 715 8  141211 1 5 4 3 6 210   913 715 8141211 5 4
                                        3 2 6 110 913 715 8  141211 5 4 3 2 6 1 5   4 3 6 2 110 913 715   8141211 5 3 4 6 2 1
                                        1 5 3 4 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.461D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.453D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.168D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 7   910 4 8 5 6 1 3 2 7  10 9 8 4 6 5 1 3 220  13181115161714211219
                                        710 9 8 4 6 5 1 3 2  20131815111617142112  19 7 910 8 4 5 6 1 3   2 710 9 8 4 5 6 1 3
                                        2 710 9 8 4 6 5 1 3   2 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  444  ( 1 closed/active, 85 closed/virtual, 0 active/active, 358 active/virtual )
 Total number of variables:    453
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0    -99.49436600     -99.49618981   -0.00182381    0.06575247 0.00000024 0.00000000  0.34E-01      0.22
   2    3    3    0    -99.49619090     -99.49619094   -0.00000003    0.00039849 0.00005186 0.00000000  0.10E-03      0.42

 CONVERGENCE REACHED!  Final gradient:    0.00000190 ( 0.19E-05)
                       Final energy:    -99.49619094
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -99.496191001154
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.07512372
 One electron energy                          -139.37743468
 Two electron energy                            39.88124368
 Virial ratio                                    1.99421502
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -99.496190935597
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.07512698
 One electron energy                          -139.37743783
 Two electron energy                            39.88124689
 Virial ratio                                    1.99421499
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -99.496190870021
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.07513025
 One electron energy                          -139.37744098
 Two electron energy                            39.88125011
 Virial ratio                                    1.99421495
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000005
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000010
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000005
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000000000003
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000001
 !MCSCF expec                      <3.2|LYLY|3.2>     1.000000000001
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     1.000000000001
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000001
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000000003
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000009
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000013
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000009
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 4   2 6 5 3101315141112   8 7 9 1 3 5 6 4 2 9   7 8121114151013 2 4
                                        6 3 5 1 9 7 8121115  141310 2 4 6 3 5 1 4   2 6 3 5 1 9 7 81211  15141310 4 2 6 3 5 1
                                        1 4 2 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 9   710 8 5 6 4 2 1 3 9   710 8 5 6 4 2 1 320  18151714161221131911
                                        4 6 510 8 9 7 3 1 2  11192113121416151720  18 4 6 510 8 7 9 3 1   2 4 6 510 8 7 9 3 1
                                        2 4 6 5 810 9 7 3 1   2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.40772     1  1  s    0.98990
    2.1     2.00000    -1.57584     1  2  s    1.01362
    1.2     1.66667    -0.59130     1  1  pz   0.99874
    2.2     1.66667    -0.59130     1  1  py   0.99874
    3.2     1.66667    -0.59130     1  1  px   0.99874
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 2a2          1.00000000      0.00000001      0.00000004
 2 22a         -0.00000000      1.00000000     -0.00000008
 2 a22         -0.00000000      0.00000002      1.00000000
 
 Energy:      -99.49619100    -99.49619094    -99.49619087
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.58       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.34      0.53      0.76      2.81
 REAL TIME  *         5.69 SEC
 DISK USED  *        34.83 MB (local),      413.81 MB (total)
 SF USED    *        10.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.49619100   2.0
    -99.49619094   2.0
    -99.49619087   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:        4 conf        4 CSFs
 N-1 el internal:       10 conf       16 CSFs
 N-2 el internal:       16 conf       44 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.49619100
     2       -99.49619094
     3       -99.49619087

 Number of blocks in overlap matrix:    29   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      38
 Number of N-1 electron functions:      16

 Number of internal configurations:                    3
 Number of singly external configurations:          1420
 Number of doubly external configurations:        294466
 Total number of contracted configurations:       295889
 Total number of uncontracted configurations:     342089

 Diagonal Coupling coefficients finished.               Storage:    173986 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    320296 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.49619100    -0.00000000    -0.26080927  0.78D-02  0.34D-01     0.11
    1     2     2     1.00000000     0.00000000   -99.49619094     0.00000000    -0.26088030  0.78D-02  0.35D-01     0.11
    1     3     3     1.00000000     0.00000000   -99.49619087     0.00000000    -0.26069551  0.78D-02  0.34D-01     0.11
    2     1     1     1.03589605    -0.24043631   -99.73662731    -0.24043631    -0.00250425  0.26D-03  0.24D-03     1.12
    2     2     2     1.03590115    -0.24043607   -99.73662700    -0.24043607    -0.00250622  0.26D-03  0.24D-03     1.12
    2     3     3     1.03589467    -0.24043418   -99.73662505    -0.24043418    -0.00250547  0.26D-03  0.24D-03     1.12
    3     1     1     1.03741962    -0.24310786   -99.73929886    -0.00267154    -0.00010782  0.21D-04  0.14D-04     2.12
    3     2     2     1.03742060    -0.24310769   -99.73929862    -0.00267162    -0.00010797  0.21D-04  0.14D-04     2.12
    3     3     3     1.03741960    -0.24310774   -99.73929861    -0.00267356    -0.00010802  0.21D-04  0.14D-04     2.12
    4     1     1     1.03852959    -0.24324599   -99.73943699    -0.00013814    -0.00000622  0.12D-05  0.65D-06     3.12
    4     2     2     1.03852945    -0.24324605   -99.73943699    -0.00013837    -0.00000621  0.12D-05  0.65D-06     3.12
    4     3     3     1.03852969    -0.24324611   -99.73943698    -0.00013837    -0.00000621  0.12D-05  0.65D-06     3.12
    5     1     1     1.03865220    -0.24325362   -99.73944462    -0.00000763    -0.00000033  0.83D-07  0.33D-07     4.09
    5     2     2     1.03865232    -0.24325368   -99.73944461    -0.00000762    -0.00000033  0.83D-07  0.33D-07     4.09
    5     3     3     1.03865234    -0.24325374   -99.73944461    -0.00000762    -0.00000033  0.83D-07  0.33D-07     4.09
    6     1     1     1.03865753    -0.24325400   -99.73944501    -0.00000038    -0.00000002  0.50D-08  0.21D-08     5.08
    6     2     2     1.03865764    -0.24325406   -99.73944500    -0.00000038    -0.00000002  0.50D-08  0.21D-08     5.08
    6     3     3     1.03865765    -0.24325412   -99.73944499    -0.00000038    -0.00000002  0.50D-08  0.21D-08     5.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   3.3%  11.8%

 Initialization:   2.2%
 Other:           82.7%

 Total CPU:        5.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2           0.9812142   0.0000000   0.0000000
 222/           0.0000000   0.9812141   0.0000000
 2/22           0.0000000   0.0000000   0.9812141

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.981214    0.000000    0.000000
 2           0.000000    0.981214    0.000000
 3           0.000000    0.000000    0.981214

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981214    0.000000    0.000000
 2           0.000000    0.981214    0.000000
 3           0.000000    0.000000    0.981214


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98121417 (fixed)   0.98121417 (relaxed)   0.98121417 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.20895254
 Singles      0.00791168   -0.02622387   -0.02710480
 Pairs        0.03074586   -0.00000000   -0.00719666
 Total        1.03865753   -0.02622387   -0.24325400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.49619100
 Nuclear energy                         0.00000000
 Kinetic energy                       100.30902391
 One electron energy                 -139.12171542
 Two electron energy                   39.38227041
 Virial quotient                       -0.99432176
 Correlation energy                    -0.24325400
 !MRCI STATE 1.2 Energy               -99.739445005338

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.74884861 (Davidson, fixed reference)
 Cluster corrected energies           -99.74884861 (Davidson, relaxed reference)
 Cluster corrected energies           -99.74884861 (Davidson, rotated reference)

 Cluster corrected energies           -99.74579375 (Pople, fixed reference)
 Cluster corrected energies           -99.74579375 (Pople, relaxed reference)
 Cluster corrected energies           -99.74579375 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98121412 (fixed)   0.98121412 (relaxed)   0.98121412 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.20895252
 Singles      0.00791175   -0.02622393   -0.02710486
 Pairs        0.03074589    0.00000000   -0.00719667
 Total        1.03865764   -0.02622393   -0.24325406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.49619094
 Nuclear energy                         0.00000000
 Kinetic energy                       100.30902679
 One electron energy                 -139.12171777
 Two electron energy                   39.38227277
 Virial quotient                       -0.99432173
 Correlation energy                    -0.24325406
 !MRCI STATE 2.2 Energy               -99.739444997285

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.74884863 (Davidson, fixed reference)
 Cluster corrected energies           -99.74884863 (Davidson, relaxed reference)
 Cluster corrected energies           -99.74884863 (Davidson, rotated reference)

 Cluster corrected energies           -99.74579376 (Pople, fixed reference)
 Cluster corrected energies           -99.74579376 (Pople, relaxed reference)
 Cluster corrected energies           -99.74579376 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98121412 (fixed)   0.98121412 (relaxed)   0.98121412 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.00791179   -0.02622394   -0.02710491
 Pairs        0.03074586   -0.21703017   -0.21614920
 Total        1.03865765   -0.24325412   -0.24325412
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.49619087
 Nuclear energy                         0.00000000
 Kinetic energy                       100.30902306
 One electron energy                 -139.12171499
 Two electron energy                   39.38227000
 Virial quotient                       -0.99432177
 Correlation energy                    -0.24325412
 !MRCI STATE 3.2 Energy               -99.739444989278

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.74884862 (Davidson, fixed reference)
 Cluster corrected energies           -99.74884862 (Davidson, relaxed reference)
 Cluster corrected energies           -99.74884862 (Davidson, rotated reference)

 Cluster corrected energies           -99.74579375 (Pople, fixed reference)
 Cluster corrected energies           -99.74579375 (Pople, relaxed reference)
 Cluster corrected energies           -99.74579375 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        8.97       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.53      5.18      0.53      0.76      2.81
 REAL TIME  *        11.20 SEC
 DISK USED  *        42.22 MB (local),      450.76 MB (total)
 SF USED    *        71.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.74884861  AU                              
 SETTING HLSDIAG(2)     =       -99.74884863  AU                              
 SETTING HLSDIAG(3)     =       -99.74884862  AU                              


        HLSDIAG
    -99.74884861
    -99.74884863
    -99.74884862
                                                  


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

 Time for Seward_LS:       7.25 sec

       80933377. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19775 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.25 sec, REAL time:      7.60 sec


 SORTLS1 read    80941655. and wrote    80941655. SO integrals in   318 records. CPU time:      0.77 sec, REAL time:      1.25 sec
 SORTLS2 read    80941655. and wrote   406960599. SO integrals in    15 records. CPU time:      1.07 sec, REAL time:      1.77 sec

 FILE SIZES: FILE 1:  1330.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1330.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -99.739445    -99.739445    -99.739445
 Replaced energies:    -99.748849    -99.748849    -99.748849



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.74884863

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00    -132.79      -0.00      -0.00       0.00     132.79

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00    -132.79
                          132.79       0.00       0.00      -0.00       0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00     132.79       0.00
                            0.00      -0.00      -0.00    -132.79       0.00      -0.00

    4   1.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     132.79       0.00     132.79       0.00

    5   2.2  0.5 -0.5       0.00       0.00     132.79       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -132.79      -0.00      -0.00

    6   3.2  0.5 -0.5      -0.00    -132.79       0.00       0.00       0.00       0.00
                         -132.79       0.00       0.00      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -99.74945365    -0.00060503     -132.79      0.00000000        0.00      0.0000
     2   -99.74945365    -0.00060503     -132.79      0.00000000        0.00      0.0000
     3   -99.74945364    -0.00060501     -132.79      0.00000001        0.00      0.0000
     4   -99.74945364    -0.00060501     -132.79      0.00000001        0.00      0.0000
     5   -99.74763856     0.00121007      265.58      0.00181509      398.37      0.0494
     6   -99.74763856     0.00121007      265.58      0.00181509      398.37      0.0494


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5  -0.015001038  -0.089622828   0.007091710   0.811390622   0.577354037  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.123506952   0.737885118  -0.002858096  -0.327006118   0.577347742  -0.000000000

    3    3.2  0.5  0.5  -0.647979643   0.108458605  -0.482643947   0.004218401   0.000000000   0.572601161
                        -0.019058818   0.003190058  -0.041118046   0.000359380   0.000000000   0.073890530

    4    1.2  0.5 -0.5   0.002634908  -0.000441030  -0.068875576   0.000601986  -0.000000000  -0.073891172
                        -0.089584087   0.014994553   0.808462056  -0.007066114   0.000000000   0.572606129

    5    2.2  0.5 -0.5   0.737566151  -0.123453563  -0.325825849   0.002847781   0.000000000   0.572599886
                         0.021693797  -0.003631100  -0.027758190   0.000242612  -0.000000000   0.073890366

    6    3.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.108505509   0.648259868   0.004233682   0.484392272  -0.577349028  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.023%   0.803%   0.005%  65.835%  33.334%   0.000%
    2    2.2  0.5  0.5   1.525%  54.447%   0.001%  10.693%  33.333%   0.000%
    3    3.2  0.5  0.5  42.024%   1.177%  23.464%   0.002%   0.000%  33.333%
    4    1.2  0.5 -0.5   0.803%   0.023%  65.835%   0.005%   0.000%  33.334%
    5    2.2  0.5 -0.5  54.447%   1.525%  10.693%   0.001%   0.000%  33.333%
    6    3.2  0.5 -0.5   1.177%  42.024%   0.002%  23.464%  33.333%   0.000%


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
              1      24     1269.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        8.97       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.05     11.51      5.18      0.53      0.76      2.81
 REAL TIME  *        26.71 SEC
 DISK USED  *        42.41 MB (local),        4.54 GB (total)
 SF USED    *         1.24 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -99.747638559331

              CI           MULTI         RHF-SCF
    -99.73944499    -99.49619087    -99.49825481
 **********************************************************************************************************************************
 Molpro calculation terminated
