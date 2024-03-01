
 Working directory              : /wrk/irikura/molpro.5PHlBG7vPG/
 Global scratch directory       : /wrk/irikura/molpro.5PHlBG7vPG/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.5PHlBG7vPG/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Al SO-CI
                                                                                 ! Active space (3,4)
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
  64 bit mpp version                                                                     DATE: 22-Feb-24          TIME: 15:18:55  
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

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         1.56      1.21
 REAL TIME  *         2.42 SEC
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
   4     -242.31070953      -0.00063967     0.38D-03     0.27D-02     3     0       0.00      0.01    diag2
   5     -242.31082858      -0.00011904     0.17D-03     0.18D-02     4     0       0.01      0.02    diag2
   6     -242.31083011      -0.00000154     0.24D-04     0.29D-03     5     0       0.00      0.02    diag2
   7     -242.31083015      -0.00000003     0.41D-05     0.39D-04     6     0       0.00      0.02    diag2
   8     -242.31083015      -0.00000000     0.93D-06     0.88D-05     7     0       0.01      0.03    fixocc
   9     -242.31083015      -0.00000000     0.16D-06     0.13D-05     8     0       0.00      0.03    diag2
  10     -242.31083015      -0.00000000     0.18D-07     0.76D-07     0     0       0.00      0.03    diag/orth

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
 CPU TIMES  *         1.60      0.04      1.21
 REAL TIME  *         2.48 SEC
 DISK USED  *        29.65 MB (local),     1013.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:  11    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             516   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   2 6 4 3 5 3 5 6 4 2   1 3 5 4 6 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.783D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.771D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.944D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.243D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.415D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   7 9 2 110 8 6 5 4 7   910 8 5 4 6 2 1 3 7   9 810 5 4 6 2 1 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    2636
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   28    0   -242.29184271    -242.33086700   -0.03902429    0.04932209 0.00002582 0.00020007  0.81E+00      2.65
   2    9   19    0   -242.32745061    -242.32885495   -0.00140434    0.14492477 0.00000090 0.00000029  0.41E-01      5.20
   3    4    8    0   -242.32886143    -242.32886153   -0.00000010    0.00064859 0.00000019 0.00000016  0.53E-03      6.50
   4    6    6    0   -242.32886153    -242.32886153   -0.00000000    0.00000006 0.00000000 0.00000001  0.91E-06      7.77

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.69E-09)
                       Final energy:   -242.32886153
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.328861533325
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.09878919
 One electron energy                          -337.29362507
 Two electron energy                            94.96476353
 Virial ratio                                    1.98869873
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.328861529835
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.09878919
 One electron energy                          -337.29362501
 Two electron energy                            94.96476348
 Virial ratio                                    1.98869873
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.328861529762
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.09878919
 One electron energy                          -337.29362501
 Two electron energy                            94.96476348
 Virial ratio                                    1.98869873
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999958633
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000041367
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999675
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000041692
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999958633
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000325
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999675
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 5 3 1   2 6 4 3 5 2 6 4 3 5   1 5 3 4 6 2 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 3   2 1 6 5 4 7 910 8 5   4 6 810 7 9 3 2 1 6   5 4 810 7 9 3 2 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.61174     1  1  s    0.99966
    2.1     2.00000    -4.92098     1  2  s    0.99944
    3.1     1.92098    -0.37911     1  3  s    1.02004
    1.2     1.99997    -3.20943     1  1  pz   1.00011
    2.2     1.99997    -3.20943     1  1  py   1.00011
    3.2     1.99997    -3.20943     1  1  px   1.00011
    4.2     0.35971     0.00989     1  2  pz   1.14252
    5.2     0.35971     0.00989     1  2  py   1.14252
    6.2     0.35971     0.00989     1  2  px   1.14252
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 222a00      0.98002198     -0.00001767     -0.00000058
 22 22200a      0.00000058      0.00019933      0.98002196
 22 2220a0      0.00001767      0.98002196     -0.00019933
 20 22220a     -0.00000008     -0.00002859     -0.14055018
 20 2222a0     -0.00000253     -0.14055018      0.00002859
 20 222a20     -0.14055018      0.00000253      0.00000008
 20 222a02     -0.14055018      0.00000253      0.00000008
 20 22202a     -0.00000008     -0.00002859     -0.14055018
 20 2220a2     -0.00000253     -0.14055018      0.00002859
 
 Energy:     -242.32886153   -242.32886153   -242.32886153
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.35       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.94      1.33      0.04      1.21
 REAL TIME  *        10.45 SEC
 DISK USED  *        31.04 MB (local),        1.03 GB (total)
 SF USED    *         5.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3288615   2.0
    -242.3288615   2.0
    -242.3288615   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:      282 conf      516 CSFs
 N elec internal:      504 conf     1008 CSFs
 N-1 el internal:      784 conf     2688 CSFs
 N-2 el internal:     1016 conf     6048 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.32886153
     2      -242.32886153
     3      -242.32886153

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.29D-04
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    2688

 Number of internal configurations:                  516
 Number of singly external configurations:         88800
 Number of doubly external configurations:        210312
 Total number of contracted configurations:       299628
 Total number of uncontracted configurations:    6654660

 Diagonal Coupling coefficients finished.               Storage:  463722 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  279154 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.32886153     0.00000000    -0.28879160  0.30D-01  0.15D-01     0.11
    1     2     2     1.00000000     0.00000000  -242.32886153    -0.00000000    -0.28886060  0.31D-01  0.15D-01     0.11
    1     3     3     1.00000000     0.00000000  -242.32886153    -0.00000000    -0.28886227  0.31D-01  0.15D-01     0.11
    2     1     1     1.04039873    -0.27136823  -242.60022976    -0.27136823    -0.00325569  0.77D-03  0.24D-03     0.69
    2     2     2     1.04055552    -0.27134687  -242.60020840    -0.27134687    -0.00327262  0.79D-03  0.24D-03     0.69
    2     3     3     1.04055495    -0.27134653  -242.60020806    -0.27134653    -0.00327290  0.79D-03  0.24D-03     0.69
    3     1     1     1.03609629    -0.27621683  -242.60507836    -0.00484860    -0.00102472  0.84D-04  0.10D-03     1.20
    3     2     2     1.03604673    -0.27621269  -242.60507422    -0.00486582    -0.00102412  0.84D-04  0.10D-03     1.20
    3     3     3     1.03604712    -0.27621265  -242.60507418    -0.00486612    -0.00102410  0.84D-04  0.10D-03     1.20
    4     1     1     1.03994845    -0.27880790  -242.60766944    -0.00259107    -0.00037537  0.45D-04  0.32D-04     1.72
    4     2     2     1.03992571    -0.27880644  -242.60766797    -0.00259375    -0.00037629  0.45D-04  0.32D-04     1.72
    4     3     3     1.03992553    -0.27880639  -242.60766792    -0.00259374    -0.00037632  0.45D-04  0.32D-04     1.72
    5     1     1     1.04114725    -0.27928766  -242.60814919    -0.00047976    -0.00008427  0.50D-05  0.97D-05     2.26
    5     2     2     1.04116405    -0.27928745  -242.60814898    -0.00048101    -0.00008441  0.52D-05  0.97D-05     2.26
    5     3     3     1.04116395    -0.27928744  -242.60814897    -0.00048104    -0.00008441  0.52D-05  0.97D-05     2.26
    6     1     1     1.04097900    -0.27940851  -242.60827005    -0.00012085    -0.00004071  0.18D-05  0.46D-05     2.78
    6     2     2     1.04097676    -0.27940842  -242.60826995    -0.00012097    -0.00004071  0.18D-05  0.46D-05     2.78
    6     3     3     1.04097680    -0.27940841  -242.60826994    -0.00012098    -0.00004071  0.18D-05  0.46D-05     2.78
    7     1     1     1.04129083    -0.27947506  -242.60833659    -0.00006654    -0.00001906  0.14D-05  0.17D-05     3.30
    7     2     2     1.04128186    -0.27947502  -242.60833655    -0.00006660    -0.00001908  0.14D-05  0.17D-05     3.30
    7     3     3     1.04128187    -0.27947502  -242.60833655    -0.00006660    -0.00001909  0.14D-05  0.17D-05     3.30
    8     1     1     1.04164685    -0.27949973  -242.60836126    -0.00002467    -0.00000690  0.25D-06  0.84D-06     3.81
    8     2     2     1.04164866    -0.27949972  -242.60836125    -0.00002470    -0.00000690  0.26D-06  0.84D-06     3.81
    8     3     3     1.04164862    -0.27949972  -242.60836125    -0.00002471    -0.00000690  0.26D-06  0.84D-06     3.81
    9     1     1     1.04172100    -0.27950858  -242.60837011    -0.00000885    -0.00000364  0.12D-06  0.45D-06     4.30
    9     2     2     1.04172250    -0.27950858  -242.60837011    -0.00000886    -0.00000364  0.13D-06  0.45D-06     4.30
    9     3     3     1.04172250    -0.27950858  -242.60837011    -0.00000886    -0.00000364  0.13D-06  0.45D-06     4.30
   10     1     1     1.04177057    -0.27951387  -242.60837540    -0.00000529    -0.00000200  0.11D-06  0.21D-06     4.83
   10     2     2     1.04176904    -0.27951387  -242.60837540    -0.00000529    -0.00000200  0.11D-06  0.21D-06     4.83
   10     3     3     1.04176905    -0.27951387  -242.60837540    -0.00000529    -0.00000200  0.11D-06  0.21D-06     4.83
   11     1     1     1.04185402    -0.27951629  -242.60837783    -0.00000242    -0.00000090  0.85D-08  0.13D-06     5.34
   11     2     2     1.04185380    -0.27951629  -242.60837782    -0.00000243    -0.00000090  0.86D-08  0.13D-06     5.34
   11     3     3     1.04185379    -0.27951629  -242.60837782    -0.00000243    -0.00000090  0.86D-08  0.13D-06     5.34
   12     1     1     1.04189495    -0.27951733  -242.60837886    -0.00000104    -0.00000047  0.14D-07  0.59D-07     5.85
   12     2     2     1.04189530    -0.27951733  -242.60837886    -0.00000104    -0.00000047  0.14D-07  0.59D-07     5.85
   12     3     3     1.04189530    -0.27951733  -242.60837886    -0.00000104    -0.00000047  0.14D-07  0.59D-07     5.85
   13     1     1     1.04191355    -0.27951800  -242.60837953    -0.00000067    -0.00000029  0.77D-08  0.34D-07     6.35
   13     2     2     1.04191346    -0.27951800  -242.60837953    -0.00000067    -0.00000029  0.77D-08  0.34D-07     6.35
   13     3     3     1.04191347    -0.27951800  -242.60837953    -0.00000067    -0.00000029  0.77D-08  0.34D-07     6.35
   14     1     1     1.04193307    -0.27951833  -242.60837986    -0.00000033    -0.00000014  0.58D-09  0.22D-07     6.87
   14     2     2     1.04193299    -0.27951833  -242.60837986    -0.00000033    -0.00000014  0.58D-09  0.22D-07     6.87
   14     3     3     1.04193299    -0.27951833  -242.60837986    -0.00000033    -0.00000014  0.58D-09  0.22D-07     6.87
   15     1     1     1.04194833    -0.27951849  -242.60838002    -0.00000016    -0.00000008  0.15D-08  0.10D-07     7.38
   15     2     2     1.04194835    -0.27951849  -242.60838002    -0.00000016    -0.00000008  0.15D-08  0.10D-07     7.38
   15     3     3     1.04194835    -0.27951849  -242.60838002    -0.00000016    -0.00000008  0.15D-08  0.10D-07     7.38
   16     1     1     1.04195766    -0.27951859  -242.60838012    -0.00000010    -0.00000005  0.43D-09  0.65D-08     7.91
   16     2     2     1.04195766    -0.27951859  -242.60838012    -0.00000010    -0.00000005  0.43D-09  0.65D-08     7.91
   16     3     3     1.04195766    -0.27951859  -242.60838012    -0.00000010    -0.00000005  0.43D-09  0.65D-08     7.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   1.0%   4.3%
 P   1.8%  28.7%  26.3%

 Initialization:   1.0%
 Other:           35.5%

 Total CPU:        7.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/00           0.9635477   0.0000000  -0.0000000
 222220/0          -0.0000000   0.9635477   0.0000000
 2222200/          -0.0000000  -0.0000000   0.9635477
 2022220/           0.0000000  -0.0000000  -0.1249801
 202222/0           0.0000000  -0.1249801  -0.0000000
 20222/20          -0.1249801  -0.0000000   0.0000000
 20222/02          -0.1249801  -0.0000000   0.0000000
 2022202/           0.0000000  -0.0000000  -0.1249801
 202220/2           0.0000000  -0.1249801  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/00  11.1    -0.0516567  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.979478   -0.000000   -0.000000
 2           0.000000    0.979478   -0.000000
 3          -0.000000    0.000000    0.979478

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979478    0.000000   -0.000000
 2           0.000000    0.979478    0.000000
 3          -0.000000    0.000000    0.979478


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97947754 (fixed)   0.97965907 (relaxed)   0.97947754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037072    0.00000000   -0.23710391
 Singles      0.02107786   -0.03247840   -0.03680984
 Pairs        0.02089535   -0.00000000   -0.00560484
 Total        1.04234393   -0.03247840   -0.27951859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32886153
 Nuclear energy                         0.00000000
 Kinetic energy                       245.27523820
 One electron energy                 -337.03782163
 Two electron energy                   94.42944150
 Virial quotient                       -0.98912708
 Correlation energy                    -0.27951859
 !MRCI STATE 1.2 Energy              -242.608380123475

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62021604 (Davidson, fixed reference)
 Cluster corrected energies          -242.62010807 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62021604 (Davidson, rotated reference)

 Cluster corrected energies          -242.61809276 (Pople, fixed reference)
 Cluster corrected energies          -242.61800193 (Pople, relaxed reference)
 Cluster corrected energies          -242.61809276 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97947753 (fixed)   0.97965907 (relaxed)   0.97947753 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037072    0.00000000   -0.23710391
 Singles      0.02107786   -0.03247839   -0.03680984
 Pairs        0.02089535   -0.00000000   -0.00560483
 Total        1.04234393   -0.03247839   -0.27951859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32886153
 Nuclear energy                         0.00000000
 Kinetic energy                       245.27523801
 One electron energy                 -337.03782177
 Two electron energy                   94.42944165
 Virial quotient                       -0.98912708
 Correlation energy                    -0.27951859
 !MRCI STATE 2.2 Energy              -242.608380119597

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62021604 (Davidson, fixed reference)
 Cluster corrected energies          -242.62010807 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62021604 (Davidson, rotated reference)

 Cluster corrected energies          -242.61809276 (Pople, fixed reference)
 Cluster corrected energies          -242.61800192 (Pople, relaxed reference)
 Cluster corrected energies          -242.61809276 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97947753 (fixed)   0.97965907 (relaxed)   0.97947753 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037072    0.00000000   -0.00009941
 Singles      0.02107786   -0.03247838   -0.03680984
 Pairs        0.02089535   -0.24704020   -0.24260933
 Total        1.04234393   -0.27951859   -0.27951859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32886153
 Nuclear energy                         0.00000000
 Kinetic energy                       245.27523785
 One electron energy                 -337.03782166
 Two electron energy                   94.42944154
 Virial quotient                       -0.98912708
 Correlation energy                    -0.27951859
 !MRCI STATE 3.2 Energy              -242.608380119537

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62021604 (Davidson, fixed reference)
 Cluster corrected energies          -242.62010807 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62021604 (Davidson, rotated reference)

 Cluster corrected energies          -242.61809276 (Pople, fixed reference)
 Cluster corrected energies          -242.61800192 (Pople, relaxed reference)
 Cluster corrected energies          -242.61809276 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.35       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.80       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.18      8.23      1.33      0.04      1.21
 REAL TIME  *        21.25 SEC
 DISK USED  *        38.20 MB (local),        1.24 GB (total)
 SF USED    *        76.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.62021604  AU                              
 SETTING HLSDIAG(2)     =      -242.62021604  AU                              
 SETTING HLSDIAG(3)     =      -242.62021604  AU                              


         HLSDIAG
    -242.6202160
    -242.6202160
    -242.6202160
                                                  


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

 Time for Seward_LS:       0.70 sec

 CPU time:      0.71 sec, REAL time:      0.75 sec


 SORTLS1 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.05 sec, REAL time:      0.09 sec
 SORTLS2 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    31.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -242.608380   -242.608380   -242.608380
 Replaced energies:   -242.620216   -242.620216   -242.620216



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.62021604

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00     -38.35
                            0.00       0.00      -0.00       0.00      38.35       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      38.35     -38.35      -0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00      38.35       0.00       0.00
                            0.00     -38.35      -0.00      -0.00      -0.00       0.00

    4   1.2  0.5 -0.5      -0.00      -0.00      38.35       0.00       0.00       0.00
                           -0.00      38.35       0.00      -0.00      -0.00       0.00

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.35       0.00       0.00       0.00      -0.00     -38.35

    6   3.2  0.5 -0.5     -38.35      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      38.35       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.62056551    -0.00034947      -76.70      0.00000000        0.00      0.0000
     2  -242.62056551    -0.00034947      -76.70      0.00000000        0.00      0.0000
     3  -242.62004130     0.00017474       38.35      0.00052421      115.05      0.0143
     4  -242.62004130     0.00017474       38.35      0.00052421      115.05      0.0143
     5  -242.62004130     0.00017474       38.35      0.00052421      115.05      0.0143
     6  -242.62004130     0.00017474       38.35      0.00052421      115.05      0.0143


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.577352313   0.000000000   0.002050559   0.816212600  -0.002760323  -0.021200802
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000000  -0.577349153   0.381798427  -0.000959186   0.164369703  -0.021400761
                         0.000000000  -0.000000390  -0.077541500   0.000194810   0.692303538  -0.090137086

    3    3.2  0.5  0.5  -0.000000000   0.000000390   0.084911831  -0.000213319   0.671675819  -0.087451378
                        -0.000000000  -0.577349342   0.418088433  -0.001050357  -0.159472179   0.020763109

    4    1.2  0.5 -0.5  -0.000000000  -0.000000390   0.162452469  -0.000408127  -0.020627386   0.002685665
                        -0.000000000   0.577352313   0.799882619  -0.002009533   0.004897444  -0.000637642

    5    2.2  0.5 -0.5  -0.000000000   0.000000000   0.000000003   0.000000001  -0.000000018   0.000000040
                         0.577349153  -0.000000000  -0.000978769  -0.389593023   0.092642792   0.711548725

    6    3.2  0.5 -0.5   0.577349342  -0.000000000  -0.001071800  -0.426623906  -0.089882425  -0.690347580
                         0.000000000  -0.000000000   0.000000003   0.000000001  -0.000000018   0.000000040


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  33.334%   0.000%   0.000%  66.620%   0.001%   0.045%
    2    2.2  0.5  0.5   0.000%  33.333%  15.178%   0.000%  50.630%   0.858%
    3    3.2  0.5  0.5   0.000%  33.333%  18.201%   0.000%  47.658%   0.808%
    4    1.2  0.5 -0.5   0.000%  33.334%  66.620%   0.000%   0.045%   0.001%
    5    2.2  0.5 -0.5  33.333%   0.000%   0.000%  15.178%   0.858%  50.630%
    6    3.2  0.5 -0.5  33.333%   0.000%   0.000%  18.201%   0.808%  47.658%


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
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.80       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        22.29     11.08      8.23      1.33      0.04      1.21
 REAL TIME  *        34.03 SEC
 DISK USED  *        38.23 MB (local),        1.51 GB (total)
 SF USED    *        76.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -242.620041298466

              CI           MULTI         RHF-SCF
   -242.60838012   -242.32886153   -242.31083015
 **********************************************************************************************************************************
 Molpro calculation terminated
