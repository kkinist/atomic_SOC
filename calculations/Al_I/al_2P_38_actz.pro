
 Working directory              : /wrk/irikura/molpro.TKzMQBPivW/
 Global scratch directory       : /wrk/irikura/molpro.TKzMQBPivW/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.TKzMQBPivW/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.04 sec
 ***,Al SO-CI
                                                                                 ! Active space (3,8) instead of (11,8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Al};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=13,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,2,3;
     occ,4,9
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Al SO-                                                                        
  64 bit mpp version                                                                     DATE: 22-Feb-24          TIME: 15:28:13  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AL     13.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   13
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     10.486 MB (compressed) written to integral file ( 21.8%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.215E-02 0.861E-02 0.659E-01 0.190E+00 0.190E+00 0.190E+00 0.190E+00 0.190E+00
         2 0.133E-01 0.133E-01 0.133E-01 0.300E-01 0.300E-01 0.300E-01 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.99      1.65
 REAL TIME  *         2.50 SEC
 DISK USED  *        29.05 MB (local),      995.56 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   4
 Initial beta  occupancy:   3   3

 NELEC=   13   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -242.30201901    -242.30201901     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -242.30791125      -0.00589224     0.17D-02     0.74D-02     1     0       0.01      0.01    diag2
   3     -242.31006987      -0.00215862     0.75D-03     0.40D-02     2     0       0.00      0.01    diag2
   4     -242.31070953      -0.00063967     0.38D-03     0.27D-02     3     0       0.01      0.02    diag2
   5     -242.31082858      -0.00011904     0.17D-03     0.18D-02     4     0       0.00      0.02    diag2
   6     -242.31083011      -0.00000154     0.24D-04     0.29D-03     5     0       0.00      0.02    diag2
   7     -242.31083015      -0.00000003     0.41D-05     0.39D-04     6     0       0.01      0.03    diag2
   8     -242.31083015      -0.00000000     0.93D-06     0.88D-05     7     0       0.00      0.03    fixocc
   9     -242.31083015      -0.00000000     0.16D-06     0.13D-05     8     0       0.00      0.03    diag2
  10     -242.31083015      -0.00000000     0.18D-07     0.76D-07     0     0       0.01      0.04    diag/orth

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.310830151272
  RHF One-electron energy            -337.217010499599
  RHF Two-electron energy              94.906180348327
  RHF Kinetic energy                  245.081503104756
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988694891624

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62125     1  1  s    0.99967
    2.1     2.00000    -4.92939     1  2  s    0.99979
    3.1     2.00000    -0.39500     1  3  s    1.00963
    1.2     2.00000    -3.21757     1  1  py   0.99916
    2.2     2.00000    -3.21757     1  1  px   0.99916
    3.2     2.00000    -3.21680     1  1  pz   1.00195
    4.2     1.00000    -0.20947     1  2  pz   1.00542


 HOMO      4.2    -0.209472 =      -5.7000eV
 LUMO      5.2     0.007770 =       0.2114eV
 LUMO-HOMO         0.217242 =       5.9115eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.04      0.04      1.65
 REAL TIME  *         2.55 SEC
 DISK USED  *        29.65 MB (local),     1013.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.983D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   2 6 4 3 5 3 5 6 4 2   1 3 5 4 6 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.783D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.771D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.945D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.415D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.414D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   7 9 2 110 8 6 5 4 9   710 8 5 4 6 2 1 3 7   9 810 5 4 6 2 1 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    795
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   10    0   -242.32108879    -242.34089377   -0.01980499    0.03608374 0.00004937 0.00000000  0.17E+01      0.46
   2    9    8    0   -242.34066600    -242.34073418   -0.00006818    0.00264525 0.00000226 0.00000000  0.12E+00      0.93
   3    5    5    0   -242.34073418    -242.34073418   -0.00000000    0.00000125 0.00000000 0.00000000  0.30E-04      1.22

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.30E-09)
                       Final energy:   -242.34073418
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.340734182871
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.10862813
 One electron energy                          -337.19339276
 Two electron energy                            94.85265858
 Virial ratio                                    1.98870748
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.340734179377
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.10862813
 One electron energy                          -337.19339272
 Two electron energy                            94.85265854
 Virial ratio                                    1.98870748
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.340734179304
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.10862813
 One electron energy                          -337.19339272
 Two electron energy                            94.85265854
 Virial ratio                                    1.98870748
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999979918
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000020176
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999864
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000020218
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999979824
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000136
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999864
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 5 3 1   2 6 4 3 5 1 2 6 4 3   5 5 3 4 6 2 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 6 5 4 7 910 8 5   4 6 810 7 9 3 2 1 6   5 4 810 7 9 3 2 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62028     1  1  s    0.99967
    2.1     2.00000    -4.92912     1  2  s    0.99954
    3.1     1.90793    -0.38428     1  3  s    1.04027
    4.1     0.00588     0.35284     1  2  s    0.28473    1  3  s   -0.36490    1  4  s   -1.45946    1  5  s    1.43898
                                    1  6  s    0.30088
    1.2     2.00000    -3.21744     1  1  pz   1.00001
    2.2     2.00000    -3.21744     1  1  py   1.00001
    3.2     2.00000    -3.21744     1  1  px   1.00001
    4.2     0.35641    -0.00035     1  2  pz   1.02133
    5.2     0.35641    -0.00035     1  2  py   1.02133
    6.2     0.35641    -0.00035     1  2  px   1.02133
    7.2     0.00565     0.31019     1  2  px  -2.14073    1  4  px   2.29336
    8.2     0.00565     0.31019     1  2  py  -2.14073    1  4  py   2.29336
    9.2     0.00565     0.31019     1  2  pz  -2.14073    1  4  pz   2.29336
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 a00000      0.97548705     -0.00001139     -0.00000017
 20 00a000      0.00000017      0.00013824      0.97548704
 20 0a0000      0.00001139      0.97548704     -0.00013824
 00 2a0000     -0.00000147     -0.12631657      0.00001790
 00 20a000     -0.00000002     -0.00001790     -0.12631657
 00 a20000     -0.12631657      0.00000147      0.00000002
 00 a02000     -0.12631657      0.00000147      0.00000002
 00 02a000     -0.00000002     -0.00001790     -0.12631657
 00 0a2000     -0.00000147     -0.12631657      0.00001790
 
 Energy:     -242.34073418   -242.34073418   -242.34073418
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.22      1.18      0.04      1.65
 REAL TIME  *         4.00 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *         8.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3407342   2.0
    -242.3407342   2.0
    -242.3407342   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             2
 Maximum number of spin couplings:     2

 Reference space:       68 conf       94 CSFs
 N elec internal:      112 conf      168 CSFs
 N-1 el internal:       36 conf       64 CSFs
 N-2 el internal:        8 conf       16 CSFs

 Number of electrons in valence space:                      3
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  3


 Number of core orbitals:           5 (   2   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.34073418
     2      -242.34073418
     3      -242.34073418

 Number of blocks in overlap matrix:     8   Smallest eigenvalue:  0.70D+00
 Number of N-2 electron functions:      16
 Number of N-1 electron functions:      64

 Number of internal configurations:                   94
 Number of singly external configurations:          2016
 Number of doubly external configurations:         15408
 Total number of contracted configurations:        17518
 Total number of uncontracted configurations:      17518

 Diagonal Coupling coefficients finished.               Storage:  217145 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  225515 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.34073418     0.00000000    -0.02246745  0.21D-01  0.30D-02     0.04
    1     2     2     1.00000000     0.00000000  -242.34073418     0.00000000    -0.02252470  0.21D-01  0.30D-02     0.04
    1     3     3     1.00000000     0.00000000  -242.34073418     0.00000000    -0.02252386  0.21D-01  0.30D-02     0.04
    2     1     1     1.03063744    -0.02530764  -242.36604182    -0.02530764    -0.00122101  0.40D-03  0.44D-03     0.09
    2     2     2     1.03067336    -0.02530011  -242.36603429    -0.02530011    -0.00122531  0.40D-03  0.45D-03     0.09
    2     3     3     1.03067438    -0.02530007  -242.36603425    -0.02530007    -0.00122523  0.40D-03  0.45D-03     0.09
    3     1     1     1.03793151    -0.02684968  -242.36758387    -0.00154205    -0.00007678  0.34D-04  0.22D-04     0.13
    3     2     2     1.03793597    -0.02684891  -242.36758309    -0.00154880    -0.00007747  0.34D-04  0.22D-04     0.13
    3     3     3     1.03793616    -0.02684890  -242.36758308    -0.00154883    -0.00007747  0.34D-04  0.22D-04     0.13
    4     1     1     1.03900567    -0.02693756  -242.36767174    -0.00008787    -0.00000531  0.38D-05  0.12D-05     0.17
    4     2     2     1.03900680    -0.02693755  -242.36767173    -0.00008864    -0.00000532  0.38D-05  0.12D-05     0.17
    4     3     3     1.03900676    -0.02693755  -242.36767173    -0.00008865    -0.00000533  0.38D-05  0.12D-05     0.17
    5     1     1     1.03908158    -0.02694469  -242.36767887    -0.00000713    -0.00000059  0.52D-06  0.91D-07     0.22
    5     2     2     1.03908132    -0.02694469  -242.36767887    -0.00000713    -0.00000059  0.52D-06  0.91D-07     0.22
    5     3     3     1.03908132    -0.02694469  -242.36767887    -0.00000714    -0.00000059  0.52D-06  0.91D-07     0.22
    6     1     1     1.03912328    -0.02694556  -242.36767974    -0.00000087    -0.00000009  0.49D-07  0.22D-07     0.26
    6     2     2     1.03912290    -0.02694556  -242.36767974    -0.00000087    -0.00000009  0.49D-07  0.22D-07     0.26
    6     3     3     1.03912287    -0.02694556  -242.36767974    -0.00000087    -0.00000009  0.49D-07  0.22D-07     0.26
    7     1     1     1.03913401    -0.02694567  -242.36767986    -0.00000012    -0.00000001  0.61D-08  0.23D-08     0.30
    7     2     2     1.03913403    -0.02694567  -242.36767985    -0.00000012    -0.00000001  0.62D-08  0.23D-08     0.30
    7     3     3     1.03913403    -0.02694567  -242.36767985    -0.00000012    -0.00000001  0.61D-08  0.23D-08     0.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.7%
 S   3.3%   0.0%
 P  13.3%  10.0%   6.7%

 Initialization:  13.3%
 Other:           46.7%

 Total CPU:        0.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/00000           0.9604825   0.0000000  -0.0000000
 2000/000           0.0000000  -0.0000000   0.9604825
 200/0000           0.0000000   0.9604825   0.0000000
 000/2000           0.0000000  -0.1162929  -0.0000000
 0002/000          -0.0000000   0.0000000  -0.1162929
 00/02000          -0.1162928   0.0000000   0.0000000
 00/20000          -0.1162928   0.0000000   0.0000000
 0020/000          -0.0000000   0.0000000  -0.1162928
 002/0000           0.0000000  -0.1162927  -0.0000000
 00//00\0           0.0502169  -0.0000000   0.0000000
 00/0/\00           0.0502169  -0.0000000   0.0000000
 000//\00          -0.0000000   0.0502168   0.0000000
 00//000\           0.0000000  -0.0502168  -0.0000000
 000//0\0          -0.0000000   0.0000000  -0.0502168
 00/0/00\          -0.0000000   0.0000000  -0.0502168

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \0/00000  11.1    -0.0731650   0.0000000   0.0000000
 \00/0000  12.1    -0.0633634   0.0000000   0.0000000
 \000/000  15.1     0.0000000  -0.0000000  -0.0633633
 \00/0000  15.1     0.0000000   0.0633633  -0.0000000
 \000/000  14.1    -0.0000000  -0.0633633   0.0000000
 \00/0000  14.1     0.0000000  -0.0000000  -0.0633632
 \000/000  13.1    -0.0633632   0.0000000   0.0000000
 \0/00000  13.1     0.0000000  -0.0000000  -0.0633631
 \0/00000  12.1    -0.0000000  -0.0633631   0.0000000
 /0\00000  11.1     0.0513316   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.979943   -0.000000   -0.000000
 2           0.000000    0.979943    0.000000
 3           0.000000   -0.000000    0.979943

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979943    0.000000    0.000000
 2           0.000000    0.979943   -0.000000
 3           0.000000   -0.000000    0.979943


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97994316 (fixed)   0.98098919 (relaxed)   0.97994316 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00213601    0.00000000   -0.00574055
 Singles      0.03418221   -0.02102528   -0.02107413
 Pairs        0.00503539    0.00000000   -0.00013099
 Total        1.04135361   -0.02102528   -0.02694567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.34073418
 Nuclear energy                         0.00000000
 Kinetic energy                       245.13319953
 One electron energy                 -337.27521309
 Two electron energy                   94.90753324
 Virial quotient                       -0.98871830
 Correlation energy                    -0.02694567
 !MRCI STATE 1.2 Energy              -242.367679857529

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.36879416 (Davidson, fixed reference)
 Cluster corrected energies          -242.36873435 (Davidson, relaxed reference)
 Cluster corrected energies          -242.36879416 (Davidson, rotated reference)

 Cluster corrected energies          -242.36767986 (Pople, fixed reference)
 Cluster corrected energies          -242.36767986 (Pople, relaxed reference)
 Cluster corrected energies          -242.36767986 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97994315 (fixed)   0.98098918 (relaxed)   0.97994315 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00213601    0.00000000   -0.00574054
 Singles      0.03418225   -0.02102530   -0.02107414
 Pairs        0.00503536   -0.00000000   -0.00013100
 Total        1.04135363   -0.02102530   -0.02694567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.34073418
 Nuclear energy                         0.00000000
 Kinetic energy                       245.13319969
 One electron energy                 -337.27521323
 Two electron energy                   94.90753338
 Virial quotient                       -0.98871830
 Correlation energy                    -0.02694567
 !MRCI STATE 2.2 Energy              -242.367679853738

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.36879416 (Davidson, fixed reference)
 Cluster corrected energies          -242.36873435 (Davidson, relaxed reference)
 Cluster corrected energies          -242.36879416 (Davidson, rotated reference)

 Cluster corrected energies          -242.36767985 (Pople, fixed reference)
 Cluster corrected energies          -242.36767985 (Pople, relaxed reference)
 Cluster corrected energies          -242.36767985 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97994315 (fixed)   0.98098918 (relaxed)   0.97994315 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00213601    0.00000000   -0.00005526
 Singles      0.03418226   -0.02102530   -0.02107414
 Pairs        0.00503536   -0.00592038   -0.00581628
 Total        1.04135363   -0.02694568   -0.02694567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.34073418
 Nuclear energy                         0.00000000
 Kinetic energy                       245.13319979
 One electron energy                 -337.27521340
 Two electron energy                   94.90753355
 Virial quotient                       -0.98871830
 Correlation energy                    -0.02694567
 !MRCI STATE 3.2 Energy              -242.367679853681

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.36879416 (Davidson, fixed reference)
 Cluster corrected energies          -242.36873435 (Davidson, relaxed reference)
 Cluster corrected energies          -242.36879416 (Davidson, rotated reference)

 Cluster corrected energies          -242.36767985 (Pople, fixed reference)
 Cluster corrected energies          -242.36767985 (Pople, relaxed reference)
 Cluster corrected energies          -242.36767985 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.16       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.61      0.35      1.18      0.04      1.65
 REAL TIME  *         4.54 SEC
 DISK USED  *        33.06 MB (local),        1.09 GB (total)
 SF USED    *         8.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.36879416  AU                              
 SETTING HLSDIAG(2)     =      -242.36879416  AU                              
 SETTING HLSDIAG(3)     =      -242.36879416  AU                              


         HLSDIAG
    -242.3687942
    -242.3687942
    -242.3687942
                                                  


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

 Time for Seward_LS:       0.72 sec

        2497107. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.74 sec, REAL time:      0.76 sec


 SORTLS1 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.08 sec
 SORTLS2 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.00 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    73.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    73.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -242.367680   -242.367680   -242.367680
 Replaced energies:   -242.368794   -242.368794   -242.368794



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.36879416

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00     -29.87
                            0.00       0.00       0.00      -0.00      29.87       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      29.87     -29.87       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00      29.87      -0.00      -0.00
                           -0.00     -29.87       0.00      -0.00      -0.00       0.00

    4   1.2  0.5 -0.5       0.00      -0.00      29.87       0.00       0.00       0.00
                            0.00      29.87       0.00      -0.00      -0.00      -0.00

    5   2.2  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00
                          -29.87      -0.00       0.00       0.00       0.00     -29.87

    6   3.2  0.5 -0.5     -29.87       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      29.87      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.36906635    -0.00027219      -59.74      0.00000000        0.00      0.0000
     2  -242.36906635    -0.00027219      -59.74      0.00000000        0.00      0.0000
     3  -242.36865806     0.00013610       29.87      0.00040829       89.61      0.0111
     4  -242.36865806     0.00013610       29.87      0.00040829       89.61      0.0111
     5  -242.36865806     0.00013610       29.87      0.00040829       89.61      0.0111
     6  -242.36865806     0.00013610       29.87      0.00040829       89.61      0.0111


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.577353380  -0.000000000   0.815143239  -0.045431616  -0.007121144  -0.009477966
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000000  -0.577348638   0.022103591   0.396587106   0.083261371  -0.062557329
                         0.000000000  -0.000000035   0.001348029   0.024186605   0.563888121  -0.423669861

    3    3.2  0.5  0.5  -0.000000000   0.000000035  -0.001417587  -0.025434634   0.554511594  -0.416624931
                         0.000000000  -0.577348790   0.023244137   0.417051001  -0.081876872   0.061517104

    4    1.2  0.5 -0.5   0.000000000  -0.000000035  -0.002765593  -0.049620838  -0.009376305   0.007044762
                         0.000000000   0.577353380   0.045347362   0.813631534   0.001384466  -0.001040200

    5    2.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000001
                         0.577348638  -0.000000000  -0.397323954   0.022144659   0.428263436   0.570001990

    6    3.2  0.5 -0.5   0.577348790   0.000000000  -0.417825870   0.023287324  -0.421142123  -0.560523800
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000001


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  33.334%   0.000%  66.446%   0.206%   0.005%   0.009%
    2    2.2  0.5  0.5   0.000%  33.333%   0.049%  15.787%  32.490%  18.341%
    3    3.2  0.5  0.5   0.000%  33.333%   0.054%  17.458%  31.419%  17.736%
    4    1.2  0.5 -0.5   0.000%  33.334%   0.206%  66.446%   0.009%   0.005%
    5    2.2  0.5 -0.5  33.333%   0.000%  15.787%   0.049%  18.341%  32.490%
    6    3.2  0.5 -0.5  33.333%   0.000%  17.458%   0.054%  17.736%  31.419%


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
              1      24       70.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.16       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.49      2.84      0.35      1.18      0.04      1.65
 REAL TIME  *         8.84 SEC
 DISK USED  *        33.09 MB (local),        1.36 GB (total)
 SF USED    *        46.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -242.368658057258

              CI           MULTI         RHF-SCF
   -242.36767985   -242.34073418   -242.31083015
 **********************************************************************************************************************************
 Molpro calculation terminated
