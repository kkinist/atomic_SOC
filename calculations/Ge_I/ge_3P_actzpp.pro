
 Working directory              : /wrk/irikura/molpro.bbKuZO2ydl/
 Global scratch directory       : /wrk/irikura/molpro.bbKuZO2ydl/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.bbKuZO2ydl/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-PP
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 12:48:00  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ge   ECP ECP10MDF                 selected for group  1
 Library entry GE     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  GE     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         182
 NUMBER OF SYMMETRY AOS:          152
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.374E-04 0.434E-02 0.256E-01 0.577E-01 0.577E-01 0.577E-01 0.577E-01 0.577E-01
         2 0.912E-02 0.912E-02 0.912E-02 0.254E-01 0.254E-01 0.254E-01 0.185E+00 0.185E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.039 MB (compressed) written to integral file ( 18.3%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.83      0.60
 REAL TIME  *         1.63 SEC
 DISK USED  *        29.18 MB (local),      406.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.317D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.667D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.467D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.352D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.573D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 2 4 5 1 1 6 4   3 5 2 1 4 6 2 5 3 1   6 4 5 3 2 1 4 6 3 5   2 71310 8121415 911
                                        2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.833D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.409D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.412D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.710D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.710D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 2 1 3 2   1 3 5 4 6 7 9 810 2   1 3 9 7 6 4 5 810 9   7 810 4 5 6 2 1 3 6
                                        4 5 9 8 710 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    571
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   21   14    0   -293.33680480    -293.35623044   -0.01942564    0.08259508 0.00020777 0.00000000  0.40E+00      0.23
   2    8    7    0   -293.35549922    -293.35756161   -0.00206239    0.14446145 0.00000569 0.00000000  0.30E-01      0.47
   3    5    5    0   -293.35757305    -293.35757324   -0.00000019    0.00092900 0.00000003 0.00000000  0.52E-03      0.64

 CONVERGENCE REACHED!  Final gradient:    0.00000010 ( 0.10E-06)
                       Final energy:   -293.35757324
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -293.357573236517
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07185542
 One electron energy                          -522.74780308
 Two electron energy                           229.39022985
 Virial ratio                                    2.43051114
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -293.357573236517
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07185542
 One electron energy                          -522.74780308
 Two electron energy                           229.39022985
 Virial ratio                                    2.43051114
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -293.357573236517
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07185542
 One electron energy                          -522.74780308
 Two electron energy                           229.39022985
 Virial ratio                                    2.43051114
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 3 2 5 1 1 6 4   3 5 2 1 6 4 2 3 5 1   6 4 3 5 2 1 4 6 3 5   2 71310 812141511 9
                                        2 6 4 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 2   1 3 5 4 6 9 7 810 2   1 3 7 9 6 4 5 810 9   7 810 5 4 6 1 2 3 6
                                        4 5 810 9 7 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.34498     1  1  s    0.99567
    2.1     2.00000    -1.59953     1  1  d1+  1.00004
    3.1     2.00000    -1.59953     1  1  d1-  1.00004
    4.1     2.00000    -1.59953     1  1  d2-  1.00004
    5.1     2.00000    -1.59953     1  1  d0   1.00004
    6.1     2.00000    -1.59953     1  1  d2+  1.00004
    7.1     1.97386    -0.56040     1  2  s    0.96184
    1.2     2.00000    -5.25951     1  1  pz   0.99988
    2.2     2.00000    -5.25951     1  1  py   0.99988
    3.2     2.00000    -5.25951     1  1  px   0.99988
    4.2     0.67538    -0.06238     1  2  py   1.01968
    5.2     0.67538    -0.06238     1  2  px   1.01968
    6.2     0.67538    -0.06238     1  2  pz   1.01968
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 aa0          0.99344229     -0.00000000      0.00000000
 2 0aa         -0.00000000     -0.00000000      0.99344229
 2 a0a         -0.00000000      0.99344229     -0.00000000
 0 2aa          0.00000000     -0.00000000     -0.11433470
 0 a2a          0.00000000     -0.11433470      0.00000000
 0 aa2         -0.11433470     -0.00000000      0.00000000
 
 Energy:     -293.35757324   -293.35757324   -293.35757324
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.51       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         1.46      0.63      0.60
 REAL TIME  *         2.44 SEC
 DISK USED  *        34.50 MB (local),      470.15 MB (total)
 SF USED    *        12.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3575732   2.0
    -293.3575732   2.0
    -293.3575732   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.35757324
     2      -293.35757324
     3      -293.35757324

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.35757324    -0.00000000    -0.88565389  0.35D-01  0.71D-01     0.13
    1     2     2     1.00000000     0.00000000  -293.35757324     0.00000000    -0.88606894  0.36D-01  0.71D-01     0.13
    1     3     3     1.00000000     0.00000000  -293.35757324    -0.00000000    -0.88582441  0.35D-01  0.71D-01     0.13
    2     1     1     1.06914216    -0.71595032  -294.07352355    -0.71595032    -0.02028651  0.28D-02  0.11D-02     2.65
    2     2     2     1.06931481    -0.71585262  -294.07342585    -0.71585262    -0.02037958  0.28D-02  0.11D-02     2.65
    2     3     3     1.06956613    -0.71571221  -294.07328545    -0.71571221    -0.02051130  0.29D-02  0.11D-02     2.65
    3     1     1     1.06176963    -0.73459138  -294.09216461    -0.01864106    -0.00063678  0.94D-04  0.44D-04     4.78
    3     2     2     1.06176668    -0.73458982  -294.09216305    -0.01873720    -0.00063836  0.94D-04  0.44D-04     4.78
    3     3     3     1.06176254    -0.73458770  -294.09216094    -0.01887549    -0.00064061  0.95D-04  0.44D-04     4.78
    4     1     1     1.06091110    -0.73518629  -294.09275953    -0.00059491    -0.00002999  0.46D-05  0.23D-05     6.93
    4     2     2     1.06090664    -0.73518620  -294.09275943    -0.00059638    -0.00003010  0.46D-05  0.23D-05     6.93
    4     3     3     1.06090006    -0.73518607  -294.09275931    -0.00059837    -0.00003025  0.46D-05  0.23D-05     6.93
    5     1     1     1.06103519    -0.73521546  -294.09278869    -0.00002917    -0.00000114  0.12D-06  0.11D-06     9.07
    5     2     2     1.06103484    -0.73521546  -294.09278869    -0.00002926    -0.00000114  0.12D-06  0.11D-06     9.07
    5     3     3     1.06103438    -0.73521545  -294.09278869    -0.00002938    -0.00000115  0.12D-06  0.12D-06     9.07
    6     1     1     1.06106226    -0.73521664  -294.09278988    -0.00000119    -0.00000005  0.34D-08  0.66D-08    11.81
    6     2     2     1.06106212    -0.73521664  -294.09278988    -0.00000119    -0.00000005  0.34D-08  0.67D-08    11.81
    6     3     3     1.06106198    -0.73521664  -294.09278988    -0.00000119    -0.00000005  0.33D-08  0.67D-08    11.81
    7     1     1     1.06106244    -0.73521669  -294.09278993    -0.00000005    -0.00000000  0.48D-09  0.35D-09    14.25
    7     2     2     1.06106242    -0.73521669  -294.09278993    -0.00000005    -0.00000000  0.48D-09  0.35D-09    14.25
    7     3     3     1.06106239    -0.73521669  -294.09278993    -0.00000005    -0.00000000  0.48D-09  0.36D-09    14.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.6%   4.1%
 P   0.4%  27.5%  24.6%

 Initialization:   0.7%
 Other:           41.4%

 Total CPU:       14.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.0000000   0.9651914
 2222222222/0/          -0.0000000   0.9651914  -0.0000000
 22222222220//           0.9651913   0.0000000   0.0000000
 2222220222//2           0.0000000  -0.0000000  -0.1029774
 2222220222/2/           0.0000000  -0.1029774   0.0000000
 22222202222//          -0.1029774  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970636   -0.000000   -0.000000
 2           0.000000    0.000000    0.970636
 3           0.000000    0.970636   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970636    0.000000    0.000000
 2           0.000000    0.970636   -0.000000
 3           0.000000   -0.000000    0.970636


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97063579 (fixed)   0.97066919 (relaxed)   0.97063579 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033729   -0.00064900   -0.65108567
 Singles      0.01438691   -0.04438911   -0.05178791
 Pairs        0.04669612    0.00000000   -0.03234312
 Total        1.06142032   -0.04503812   -0.73521669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35757324
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90785884
 One electron energy                 -521.70096241
 Two electron energy                  227.60817248
 Virial quotient                       -1.43524407
 Correlation energy                    -0.73521669
 !MRCI STATE 1.1 Energy              -294.092789930220

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13794718 (Davidson, fixed reference)
 Cluster corrected energies          -294.13789347 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13794718 (Davidson, rotated reference)

 Cluster corrected energies          -294.13551558 (Pople, fixed reference)
 Cluster corrected energies          -294.13546218 (Pople, relaxed reference)
 Cluster corrected energies          -294.13551558 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97063580 (fixed)   0.97066920 (relaxed)   0.97063580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033729   -0.00064900   -0.00084508
 Singles      0.01438689   -0.04438910   -0.05178790
 Pairs        0.04669612   -0.69017859   -0.68258372
 Total        1.06142030   -0.73521669   -0.73521669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35757324
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90785785
 One electron energy                 -521.70096195
 Two electron energy                  227.60817202
 Virial quotient                       -1.43524408
 Correlation energy                    -0.73521669
 !MRCI STATE 2.1 Energy              -294.092789930208

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13794716 (Davidson, fixed reference)
 Cluster corrected energies          -294.13789345 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13794716 (Davidson, rotated reference)

 Cluster corrected energies          -294.13551556 (Pople, fixed reference)
 Cluster corrected energies          -294.13546216 (Pople, relaxed reference)
 Cluster corrected energies          -294.13551556 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97063581 (fixed)   0.97066922 (relaxed)   0.97063581 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033729   -0.00064900   -0.65108573
 Singles      0.01438687   -0.04438908   -0.05178788
 Pairs        0.04669612    0.00000000   -0.03234308
 Total        1.06142027   -0.04503808   -0.73521669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35757324
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90785579
 One electron energy                 -521.70096101
 Two electron energy                  227.60817108
 Virial quotient                       -1.43524409
 Correlation energy                    -0.73521669
 !MRCI STATE 3.1 Energy              -294.092789930196

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13794714 (Davidson, fixed reference)
 Cluster corrected energies          -294.13789343 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13794714 (Davidson, rotated reference)

 Cluster corrected energies          -294.13551555 (Pople, fixed reference)
 Cluster corrected energies          -294.13546215 (Pople, relaxed reference)
 Cluster corrected energies          -294.13551555 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       22.58       700     1000      520     2140     5201   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        16.25     14.78      0.63      0.60
 REAL TIME  *        19.36 SEC
 DISK USED  *        56.56 MB (local),      734.98 MB (total)
 SF USED    *       237.56 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.13794718  AU                              
 SETTING HLSDIAG(2)     =      -294.13794716  AU                              
 SETTING HLSDIAG(3)     =      -294.13794714  AU                              


         HLSDIAG
    -294.1379472
    -294.1379472
    -294.1379471
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.092790   -294.092790   -294.092790
 Replaced energies:   -294.137947   -294.137947   -294.137947



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.13794718

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00    -452.75       0.00      -0.00      -0.00    -320.14       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00    -320.14       0.00       0.00       0.00
                          452.75      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01      -0.00     320.14      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     320.14       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00    -320.14       0.00       0.00       0.00      -0.00      -0.00    -320.14

    5   2.1  1.0  0.0      -0.00       0.00     320.14       0.00       0.00       0.00       0.00       0.00    -320.14
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00    -320.14      -0.00       0.00       0.00       0.01      -0.00     320.14      -0.00
                          320.14       0.00      -0.00      -0.00      -0.00       0.00     320.14       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00    -320.14      -0.00     452.75      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     320.14       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -452.75       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -320.14      -0.00       0.00       0.00       0.01
                           -0.00      -0.00      -0.00     320.14       0.00      -0.00       0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -294.13794718 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -452.748       0.000    -452.748

    2    1  |1 1>+              0.000       0.004       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     452.748      -0.000

    3    1  |1 1>+              0.000       0.000       0.008       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     452.748       0.000       0.000      -0.000      -0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -452.748       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.004       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.008       0.000    -452.749
                              452.748       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000    -452.748       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -452.749       0.000       0.004
                              452.748      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     452.749       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                                0.000

    2    1  |1 1>+              0.000
                                0.000

    3    1  |1 1>+              0.000
                               -0.000

    1    1  |1 0>              -0.000
                                0.000

    2    1  |1 0>             452.749
                               -0.000

    3    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.008
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.14207291    -0.00412573     -905.49      0.00000000        0.00      0.0000
    2  -294.14001004    -0.00206286     -452.75      0.00206286      452.75      0.0561
    3  -294.14001003    -0.00206286     -452.74      0.00206287      452.75      0.0561
    4  -294.14001003    -0.00206285     -452.74      0.00206288      452.75      0.0561
    5  -294.13588430     0.00206288      452.75      0.00618861     1358.24      0.1684
    6  -294.13588430     0.00206288      452.75      0.00618861     1358.24      0.1684
    7  -294.13588429     0.00206289      452.75      0.00618862     1358.25      0.1684
    8  -294.13588428     0.00206290      452.75      0.00618863     1358.25      0.1684
    9  -294.13588428     0.00206290      452.75      0.00618863     1358.25      0.1684

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57735186 -0.00000000 -0.00000000  0.00000000  0.78591884  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.70710532  0.00000001 -0.00000000 -0.00000001  0.70710695 -0.00000001  0.00000000
                          -0.00000000 -0.00000094  0.00000000 -0.00000000  0.00000000 -0.00135230 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000001  0.70710370 -0.00000000  0.00000000  0.00000001  0.70710986 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001  0.70710986 -0.00000000 -0.00000000 -0.00000001 -0.70710370  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00010159  0.00000000 -0.00000000  0.00000000  0.01045654
                          -0.00000000  0.00000000  0.00000000  0.70710839  0.00000001 -0.00000000  0.00000000  0.70702784

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.57734862  0.00000000  0.00000000 -0.00000000  0.20126405  0.00000000 -0.00000000  0.00000002

   1    1  |1 1>-          0.00000000  0.00000094 -0.00000000  0.00000000  0.00000000 -0.00135230 -0.00000000 -0.00000000
                           0.00000000  0.70710824  0.00000001 -0.00000000  0.00000001 -0.70710403  0.00000001 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.57735033  0.00000000 -0.00000000 -0.00000000  0.58465747  0.00000001  0.00000000 -0.00000002

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00010159  0.00000000 -0.00000000  0.00000000  0.01045659
                           0.00000000 -0.00000000 -0.00000000 -0.70710516  0.00000000 -0.00000000  0.00000000  0.70703108

 State Sym Spin     / Nr.      9

   1    1  |1 1>+          0.22135132
                          -0.00000000

   2    1  |1 1>+          0.00000000
                          -0.00000000

   3    1  |1 1>+          0.00000000
                           0.00000000

   1    1  |1 0>           0.00000000
                          -0.00000000

   2    1  |1 0>          -0.00000000
                          -0.00000002

   3    1  |1 0>           0.00000000
                           0.79130358

   1    1  |1 1>-         -0.00000000
                          -0.00000000

   2    1  |1 1>-         -0.00000000
                          -0.56994933

   3    1  |1 1>-         -0.00000000
                          -0.00000002


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.14207291     -0.00412573     -905.49      0.00000000        0.00      0.0000
     2   1   -294.14001004     -0.00206286     -452.75      0.00206286      452.75      0.0561
     3   1   -294.14001003     -0.00206286     -452.74      0.00206287      452.75      0.0561
     4   1   -294.14001003     -0.00206285     -452.74      0.00206288      452.75      0.0561
     5   1   -294.13588430      0.00206288      452.75      0.00618861     1358.24      0.1684
     6   1   -294.13588430      0.00206288      452.75      0.00618861     1358.24      0.1684
     7   1   -294.13588429      0.00206289      452.75      0.00618862     1358.25      0.1684
     8   1   -294.13588428      0.00206290      452.75      0.00618863     1358.25      0.1684
     9   1   -294.13588428      0.00206290      452.75      0.00618863     1358.25      0.1684

 E0 =   -294.13794718 is the energy of the lowest zeroth-order state
 E1 =   -294.14207291 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57735186 -0.00000000 -0.00000000  0.00000000  0.78591884  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70710532  0.00000001 -0.00000000 -0.00000001  0.70710695 -0.00000001  0.00000000
                               -0.00000000 -0.00000094  0.00000000 -0.00000000  0.00000000 -0.00135230 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000001  0.70710370 -0.00000000  0.00000000  0.00000001  0.70710986 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001  0.70710986 -0.00000000 -0.00000000 -0.00000001 -0.70710370  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00010159  0.00000000 -0.00000000  0.00000000  0.01045654
                               -0.00000000  0.00000000  0.00000000  0.70710839  0.00000001 -0.00000000  0.00000000  0.70702784

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.57734862  0.00000000  0.00000000 -0.00000000  0.20126405  0.00000000 -0.00000000  0.00000002

  7  1     1    1  |1 1>-       0.00000000  0.00000094 -0.00000000  0.00000000  0.00000000 -0.00135230 -0.00000000 -0.00000000
                                0.00000000  0.70710824  0.00000001 -0.00000000  0.00000001 -0.70710403  0.00000001 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.57735033  0.00000000 -0.00000000 -0.00000000  0.58465747  0.00000001  0.00000000 -0.00000002

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00010159  0.00000000 -0.00000000  0.00000000  0.01045659
                                0.00000000 -0.00000000 -0.00000000 -0.70710516  0.00000000 -0.00000000  0.00000000  0.70703108


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+       0.22135132
                               -0.00000000

  2  1     2    1  |1 1>+       0.00000000
                               -0.00000000

  3  1     3    1  |1 1>+       0.00000000
                                0.00000000

  4  1     1    1  |1 0>        0.00000000
                               -0.00000000

  5  1     2    1  |1 0>       -0.00000000
                               -0.00000002

  6  1     3    1  |1 0>        0.00000000
                                0.79130358

  7  1     1    1  |1 1>-      -0.00000000
                               -0.00000000

  8  1     2    1  |1 1>-      -0.00000000
                               -0.56994933

  9  1     3    1  |1 1>-      -0.00000000
                               -0.00000002



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   61.77%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    4.05%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   34.18%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+         4.90%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>         62.62%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-        32.48%
  9  1     3    1  |1 1>-         0.00%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       22.58       700     1000      520     2140     5201   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *        27.16     10.90     14.78      0.63      0.60
 REAL TIME  *        31.35 SEC
 DISK USED  *        56.56 MB (local),      734.98 MB (total)
 SF USED    *       237.56 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -294.135884275395

              CI           MULTI
   -294.09278993   -293.35757324
 **********************************************************************************************************************************
 Molpro calculation terminated
