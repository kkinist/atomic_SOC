
 Working directory              : /wrk/irikura/molpro.ceGJgxG4Kz/
 Global scratch directory       : /wrk/irikura/molpro.ceGJgxG4Kz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ceGJgxG4Kz/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Li SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Li};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=3,sym=1,spin=1}
 
                                                                                 ! Active space (3/6)
 {multi
     closed,0,0
     occ,3,3
     wf,sym=1,spin=1;state,2;
     weight,99,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=1;state,2; save,5201.2}
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
 LABEL *   Li SO-CI                                                                                                                                                      
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:06:50  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry LI     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry LI     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry LI     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry LI     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  LI      3.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    3
 NUMBER OF PRIMITIVE AOS:          82
 NUMBER OF SYMMETRY AOS:           72
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.621 MB (compressed) written to integral file ( 20.1%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.192E-03 0.136E-01 0.512E-01 0.512E-01 0.512E-01 0.512E-01 0.512E-01 0.701E-01
         2 0.853E-02 0.853E-02 0.853E-02 0.777E-01 0.777E-01 0.777E-01 0.106E+00 0.106E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.63      0.44
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.23 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   0
 Initial beta  occupancy:   1   0

 NELEC=    3   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1       -7.43107111      -7.43107111     0.00D+00     0.71D-01     0     0       0.00      0.01    start
   2       -7.43248412      -0.00141301     0.13D-02     0.42D-02     1     0       0.00      0.01    diag2
   3       -7.43335040      -0.00086628     0.78D-03     0.72D-02     2     0       0.00      0.01    diag2
   4       -7.43335600      -0.00000560     0.62D-04     0.52D-03     3     0       0.00      0.01    diag2
   5       -7.43335633      -0.00000032     0.16D-04     0.10D-03     4     0       0.01      0.02    diag2
   6       -7.43335634      -0.00000001     0.30D-05     0.28D-04     5     0       0.00      0.02    diag2
   7       -7.43335634      -0.00000000     0.71D-07     0.99D-06     6     0       0.00      0.02    diag2
   8       -7.43335634      -0.00000000     0.62D-08     0.88D-07     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   2   0
 Final beta  occupancy:   1   0

 !RHF STATE 1.1 Energy                 -7.433356337695
  RHF One-electron energy              -9.714488700166
  RHF Two-electron energy               2.281132362471
  RHF Kinetic energy                    7.438598302517
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.999295302070

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.47795     1  1  s    1.00016
    2.1     1.00000    -0.19633     1  2  s    1.00593


 HOMO      2.1    -0.196326 =      -5.3423eV
 LUMO      1.2     0.012670 =       0.3448eV
 LUMO-HOMO         0.208996 =       5.6871eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.66      0.03      0.44
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.43 MB (local),      168.22 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        6 (    3    3)
 Number of external orbitals:      53 (   24   29)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:              35   (45 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 2 4 6 1 5   2 6 3 4 2 4 5 6 3 1   2 5 4 3 6 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.356D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.356D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 3 1 210   5 8 9 7 6 4 2 3 1 7  10 9 6 4 5 8 2 1 3 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.99000   0.01000
 
 Number of orbital rotations:  159  ( 0 closed/active, 0 closed/virtual, 0 active/active, 159 active/virtual )
 Total number of variables:    249
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   13   15     -7.43208121      -7.45529938   -0.02321817    0.00022583 0.00000011 0.00000000  0.18E+01      0.09
   2    2    2    0     -7.45304254      -7.45307066   -0.00002812    0.01707863 0.00000825 0.00000000  0.37E-01      0.12
   3    4    4    0     -7.45307066      -7.45307066   -0.00000000    0.00000147 0.00000000 0.00000000  0.98E-04      0.15

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.75E-10)
                       Final energy:     -7.45307066
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                        -7.454300569059
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.45612534
 One electron energy                            -9.69557347
 Two electron energy                             2.24127290
 Virial ratio                                    1.99975526
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                        -7.331310112736
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.33607727
 One electron energy                            -9.20796196
 Two electron energy                             1.87665185
 Virial ratio                                    1.99935018
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 3 4 6 1 2   5 6 4 3 5 4 3 6 2 1   4 5 3 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 3   1 2 6 4 5 7 910 8 3   2 110 8 4 5 9 7 6 2   3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99667    -2.47708     1  1  s    1.00190
    2.1     0.98999    -0.07934     1  2  s    1.00213
    3.1     0.01000     0.03567     1  2  s   -0.52258    1  3  s   -0.28370    1  7  s    1.20017
    1.2     0.00111     4.79654     1  1  pz  -0.35149    1  4  pz   0.74937    1  5  pz   0.41394
    2.2     0.00111     4.79654     1  1  py  -0.35149    1  4  py   0.74937    1  5  py   0.41394
    3.2     0.00111     4.79654     1  1  px  -0.35149    1  4  px   0.74937    1  5  px   0.41394
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20a 000        0.00000083      0.99916455
 2a0 000        0.99916316      0.00000159
 
 Energy:       -7.45430057     -7.33131011
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         0.84      0.18      0.03      0.44
 REAL TIME  *         1.93 SEC
 DISK USED  *        29.87 MB (local),      170.42 MB (total)
 SF USED    *         1.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

       ENERGY      LL
    -7.45430057   0.0
    -7.33131011  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Doublet 
 Number of electrons:                  3
 Maximum number of shells:             2
 Maximum number of spin couplings:     2

 Reference space:       25 conf       35 CSFs
 N elec internal:       50 conf       70 CSFs
 N-1 el internal:       21 conf       36 CSFs
 N-2 el internal:        6 conf       12 CSFs

 Number of electrons in valence space:                      3
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  3


 Number of active  orbitals:        6 (   3   3 )
 Number of external orbitals:      53 (  24  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1        -7.45430057
     2        -7.33131011

 Number of blocks in overlap matrix:     8   Smallest eigenvalue:  0.65D-03
 Number of N-2 electron functions:      12
 Number of N-1 electron functions:      36

 Number of internal configurations:                   35
 Number of singly external configurations:           954
 Number of doubly external configurations:          8427
 Total number of contracted configurations:         9416
 Total number of uncontracted configurations:       9416

 Diagonal Coupling coefficients finished.               Storage:    180843 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193324 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000    -7.45430057    -0.00000000    -0.01603906  0.21D-03  0.11D-02     0.00
    1     2     2     1.00000000     0.00000000    -7.33131011     0.00000000    -0.01590036  0.31D-03  0.11D-02     0.00
    2     1     1     1.00154276    -0.01735342    -7.47165399    -0.01735342    -0.00039182  0.21D-04  0.23D-04     0.02
    2     2     2     1.00155307    -0.01658725    -7.34789736    -0.01658725    -0.00025384  0.29D-04  0.95D-05     0.02
    3     1     1     1.00182751    -0.01784582    -7.47214639    -0.00049240    -0.00006751  0.68D-05  0.15D-05     0.03
    3     2     2     1.00182582    -0.01687286    -7.34818297    -0.00028561    -0.00002487  0.10D-04  0.81D-06     0.03
    4     1     1     1.00193710    -0.01793133    -7.47223190    -0.00008551    -0.00000845  0.79D-06  0.60D-06     0.04
    4     2     2     1.00199289    -0.01690350    -7.34821361    -0.00003064    -0.00000303  0.12D-05  0.14D-06     0.04
    5     1     1     1.00193918    -0.01794059    -7.47224115    -0.00000925    -0.00000078  0.68D-07  0.30D-07     0.06
    5     2     2     1.00206613    -0.01690735    -7.34821746    -0.00000385    -0.00000038  0.31D-06  0.12D-07     0.06
    6     1     1     1.00194450    -0.01794145    -7.47224202    -0.00000086    -0.00000011  0.88D-08  0.37D-08     0.07
    6     2     2     1.00210287    -0.01690780    -7.34821792    -0.00000046    -0.00000008  0.33D-07  0.18D-08     0.07
    7     1     1     1.00194835    -0.01794159    -7.47224216    -0.00000014    -0.00000002  0.13D-08  0.97D-09     0.08
    7     2     2     1.00211813    -0.01690790    -7.34821801    -0.00000010    -0.00000001  0.11D-07  0.33D-09     0.08
    8     1     1     1.00194807    -0.01794159    -7.47224216    -0.00000000    -0.00000002  0.25D-08  0.84D-09     0.09
    8     2     2     1.00212804    -0.01690792    -7.34821803    -0.00000002    -0.00000000  0.86D-09  0.67D-10     0.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S  11.1%   0.0%
 P   0.0%  33.3%   0.0%

 Initialization:   0.0%
 Other:           55.6%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/0000           0.9981562   0.0053209
 20/000          -0.0052618   0.9980631

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.999006   -0.005262
 2           0.005331    0.998920

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.999020    0.000035
 2           0.000035    0.998934


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99900605 (fixed)   0.99902738 (relaxed)   0.99901991 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001497   -0.00000002   -0.01623696
 Singles      0.00046458   -0.00216712   -0.00217005
 Pairs        0.00148352    0.00049409    0.00046541
 Total        1.00196307   -0.00167305   -0.01794159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                      -7.45429711
 Nuclear energy                         0.00000000
 Kinetic energy                         7.46842738
 One electron energy                   -9.67930363
 Two electron energy                    2.20706147
 Virial quotient                       -1.00051079
 Correlation energy                    -0.01794505
 !MRCI STATE 1.1 Energy                -7.472242162745

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies            -7.47227739 (Davidson, fixed reference)
 Cluster corrected energies            -7.47227712 (Davidson, relaxed reference)
 Cluster corrected energies            -7.47227739 (Davidson, rotated reference)

 Cluster corrected energies            -7.47224216 (Pople, fixed reference)
 Cluster corrected energies            -7.47224216 (Pople, relaxed reference)
 Cluster corrected energies            -7.47224216 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.99891983 (fixed)   0.99893767 (relaxed)   0.99893405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000725   -0.00000002   -0.00000160
 Singles      0.00081780   -0.00176675   -0.00177686
 Pairs        0.00131026   -0.01513968   -0.01512946
 Total        1.00213531   -0.01690645   -0.01690792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                      -7.33131357
 Nuclear energy                         0.00000000
 Kinetic energy                         7.34308860
 One electron energy                   -9.18032667
 Two electron energy                    1.83210864
 Virial quotient                       -1.00069854
 Correlation energy                    -0.01690446
 !MRCI STATE 2.1 Energy                -7.348218029494

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies            -7.34825413 (Davidson, fixed reference)
 Cluster corrected energies            -7.34825400 (Davidson, relaxed reference)
 Cluster corrected energies            -7.34825413 (Davidson, rotated reference)

 Cluster corrected energies            -7.34821803 (Pople, fixed reference)
 Cluster corrected energies            -7.34821803 (Pople, relaxed reference)
 Cluster corrected energies            -7.34821803 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.81       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         0.99      0.14      0.18      0.03      0.44
 REAL TIME  *         2.09 SEC
 DISK USED  *        30.08 MB (local),      171.50 MB (total)
 SF USED    *         3.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =        -7.47227739  AU                              
 SETTING HLSDIAG(2)     =        -7.34825413  AU                              


       HLSDIAG
    -7.47227739
    -7.34825413
                                                  


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

 Time for Seward_LS:       0.18 sec

 CPU time:      0.19 sec, REAL time:      0.20 sec


 SORTLS1 read      953874. and wrote      953874. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953874. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    30.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    30.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:     -7.472242     -7.348218
 Replaced energies:     -7.472277     -7.348254



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=    -7.47227739

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   27219.96      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00

    3   1.1  0.5 -0.5      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

    4   2.1  0.5 -0.5       0.00      -0.00       0.00   27219.96
                            0.00      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1    -7.47227739     0.00000000        0.00      0.00000000        0.00      0.0000
     2    -7.47227739     0.00000000        0.00      0.00000000        0.00      0.0000
     3    -7.34825413     0.12402326    27219.96      0.12402326    27219.96      3.3748
     4    -7.34825413     0.12402326    27219.96      0.12402326    27219.96      3.3748


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5   1.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5   0.000000000  -0.000000000  -0.040371619   0.144055248
                         0.000000000  -0.000000000  -0.641106095   0.752729163

    3    1.1  0.5 -0.5   0.000000000  -0.045618791  -0.000000000   0.000000000
                        -0.000000000   0.998958921   0.000000000   0.000000000

    4    2.1  0.5 -0.5  -0.000000000  -0.000000000   0.528772831   0.498211045
                        -0.000000000  -0.000000000   0.554754360   0.405502956


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  41.265%  58.735%
    3    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%  58.735%  41.265%


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
              1      24       29.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.81       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.47      1.46      0.14      0.18      0.03      0.44
 REAL TIME  *         5.15 SEC
 DISK USED  *        30.11 MB (local),      247.52 MB (total)
 SF USED    *         3.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=     -7.348254125748

              CI           MULTI         RHF-SCF
     -7.34821803     -7.33131011     -7.43335634
 **********************************************************************************************************************************
 Molpro calculation terminated
