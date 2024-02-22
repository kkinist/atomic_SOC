
 Working directory              : /wrk/irikura/molpro.vWUOsTT7Fq/
 Global scratch directory       : /wrk/irikura/molpro.vWUOsTT7Fq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.vWUOsTT7Fq/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,C SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={C};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=6,sym=1,spin=2}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=2;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   C SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:11:57  
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

 Library entry C      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  C       6.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    6
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.621 MB (compressed) written to integral file ( 21.0%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.492E-02 0.191E-01 0.662E-01 0.181E+00 0.248E+00 0.248E+00 0.248E+00 0.248E+00
         2 0.161E-01 0.161E-01 0.161E-01 0.176E+00 0.176E+00 0.176E+00 0.415E+00 0.415E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.66      0.47
 REAL TIME  *         1.66 SEC
 DISK USED  *        29.03 MB (local),      166.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   2
 Initial beta  occupancy:   2   0

 NELEC=    6   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -37.66479587     -37.66479587     0.00D+00     0.94D-01     0     0       0.00      0.01    start
   2      -37.70053776      -0.03574189     0.11D-01     0.19D-01     1     0       0.00      0.01    diag2
   3      -37.70157540      -0.00103765     0.24D-02     0.15D-02     2     0       0.00      0.01    diag2
   4      -37.70179414      -0.00021874     0.74D-03     0.11D-02     3     0       0.01      0.02    diag2
   5      -37.70180788      -0.00001374     0.17D-03     0.59D-03     4     0       0.00      0.02    diag2
   6      -37.70180810      -0.00000022     0.25D-04     0.10D-03     5     0       0.00      0.02    diag2
   7      -37.70180810      -0.00000000     0.24D-05     0.62D-05     6     0       0.00      0.02    diag2
   8      -37.70180810      -0.00000000     0.24D-06     0.11D-05     7     0       0.00      0.02    fixocc
   9      -37.70180810      -0.00000000     0.11D-07     0.19D-07     0     0       0.01      0.03    diag

 Final alpha occupancy:   2   2
 Final beta  occupancy:   2   0

 !RHF STATE 1.1 Energy                -37.701808101516
  RHF One-electron energy             -50.462984368628
  RHF Two-electron energy              12.761176267112
  RHF Kinetic energy                   37.802980609807
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.997323689649

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.33053     1  1  s    0.99939
    2.1     2.00000    -0.70671     1  2  s    1.00864
    1.2     1.00000    -0.43308     1  1  py   0.96849
    2.2     1.00000    -0.43308     1  1  pz   0.96849


 HOMO      2.2    -0.433078 =     -11.7847eV
 LUMO      3.2     0.012156 =       0.3308eV
 LUMO-HOMO         0.445234 =      12.1154eV

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
 CPU TIMES  *         0.69      0.03      0.47
 REAL TIME  *         1.68 SEC
 DISK USED  *        29.44 MB (local),      168.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.127D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.913D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 6 2 1 6   2 4 3 5 1 6 2 4 3 5   1 5 4 3 2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 3 2 1 7   910 8 4 6 5 3 2 1 7   910 8 4 6 5 1 2 3 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    156
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0    -37.65815786     -37.72059991   -0.06244204    0.13582697 0.00049562 0.00000000  0.50E+00      0.11
   2    7    6    0    -37.71846974     -37.71904310   -0.00057336    0.03854229 0.00000053 0.00000000  0.27E-01      0.34
   3    5    5    0    -37.71904574     -37.71904577   -0.00000003    0.00024888 0.00000001 0.00000000  0.19E-03      0.51
   4    2    2    0    -37.71904577     -37.71904577    0.00000000    0.00000001 0.00000000 0.00000000  0.23E-07      0.56

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.33E-08)
                       Final energy:    -37.71904577
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -37.719045774284
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82016627
 One electron energy                           -50.47494809
 Two electron energy                            12.75590232
 Virial ratio                                    1.99732628
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -37.719045774225
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82016628
 One electron energy                           -50.47494810
 Two electron energy                            12.75590232
 Virial ratio                                    1.99732628
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -37.719045773997
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82016629
 One electron energy                           -50.47494811
 Two electron energy                            12.75590234
 Virial ratio                                    1.99732628
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.999999999991
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000021
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.999999999988
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 2 3 5 1 5   3 6 4 2 1 2 4 6 3 5   1 2 4 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 7   9 810 5 4 6 2 1 3 4   6 5 810 9 7 3 1 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.32104     1  1  s    0.99925
    2.1     1.95584    -0.69538     1  2  s    1.01537
    1.2     0.68139    -0.05624     1  1  py   0.99999
    2.2     0.68139    -0.05624     1  1  px   0.99999
    3.2     0.68139    -0.05624     1  1  pz   0.99999
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 aa0         -0.00000336      0.00000000      0.98889742
 2 a0a          0.00000296      0.98889742     -0.00000000
 2 0aa          0.98889742     -0.00000296      0.00000336
 0 2aa         -0.14859976      0.00000045     -0.00000050
 0 a2a         -0.00000045     -0.14859976     -0.00000000
 0 aa2          0.00000050     -0.00000000     -0.14859976
 
 Energy:      -37.71904577    -37.71904577    -37.71904577
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.23      0.54      0.03      0.47
 REAL TIME  *         2.33 SEC
 DISK USED  *        29.75 MB (local),      169.84 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -37.71904577   2.0
    -37.71904577   2.0
    -37.71904577   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  6
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        6 conf        6 CSFs
 N elec internal:       13 conf       15 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       10 conf       22 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.71904577
     2       -37.71904577
     3       -37.71904577

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      18
 Number of N-1 electron functions:      24

 Number of internal configurations:                    6
 Number of singly external configurations:           648
 Number of doubly external configurations:         12984
 Total number of contracted configurations:        13638
 Total number of uncontracted configurations:      16519

 Diagonal Coupling coefficients finished.               Storage:    174137 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186694 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.71904577    -0.00000000    -0.07638029  0.23D-01  0.11D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.71904577     0.00000000    -0.07657812  0.24D-01  0.11D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.71904577    -0.00000000    -0.07685798  0.24D-01  0.11D-01     0.01
    2     1     1     1.03456492    -0.07643052   -37.79547629    -0.07643052    -0.00147205  0.14D-03  0.38D-03     0.03
    2     2     2     1.03447663    -0.07642550   -37.79547127    -0.07642550    -0.00147498  0.14D-03  0.37D-03     0.03
    2     3     3     1.03441066    -0.07642039   -37.79546617    -0.07642039    -0.00147746  0.15D-03  0.37D-03     0.03
    3     1     1     1.03804340    -0.07809446   -37.79714023    -0.00166394    -0.00006089  0.27D-04  0.13D-04     0.05
    3     2     2     1.03804103    -0.07809391   -37.79713968    -0.00166841    -0.00006119  0.27D-04  0.13D-04     0.05
    3     3     3     1.03803957    -0.07809331   -37.79713908    -0.00167292    -0.00006147  0.27D-04  0.13D-04     0.05
    4     1     1     1.03867382    -0.07817207   -37.79721785    -0.00007761    -0.00000581  0.19D-05  0.13D-05     0.08
    4     2     2     1.03867571    -0.07817205   -37.79721782    -0.00007814    -0.00000583  0.19D-05  0.13D-05     0.08
    4     3     3     1.03867750    -0.07817202   -37.79721779    -0.00007871    -0.00000584  0.19D-05  0.13D-05     0.08
    5     1     1     1.03877864    -0.07817993   -37.79722571    -0.00000786    -0.00000050  0.18D-06  0.10D-06     0.10
    5     2     2     1.03877856    -0.07817993   -37.79722570    -0.00000788    -0.00000050  0.18D-06  0.10D-06     0.10
    5     3     3     1.03877862    -0.07817993   -37.79722570    -0.00000791    -0.00000051  0.18D-06  0.10D-06     0.10
    6     1     1     1.03876362    -0.07818059   -37.79722636    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    6     2     2     1.03876300    -0.07818059   -37.79722636    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    6     3     3     1.03876333    -0.07818059   -37.79722636    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    7     1     1     1.03876384    -0.07818064   -37.79722641    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.14
    7     2     2     1.03876389    -0.07818064   -37.79722641    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.14
    7     3     3     1.03876394    -0.07818064   -37.79722641    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   7.1%   0.0%
 P   7.1%   7.1%  28.6%

 Initialization:   7.1%
 Other:           42.9%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//           0.9719179   0.0000000   0.0000000
 2/0/           0.0000000   0.9719179   0.0000000
 2//0           0.0000000   0.0000000   0.9719179
 02//          -0.1343813   0.0000000   0.0000000
 0/2/           0.0000000  -0.1343811   0.0000000
 0//2           0.0000000   0.0000000  -0.1343810

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.981096    0.000000    0.000000
 2           0.000000    0.981096    0.000000
 3           0.000000    0.000000    0.981096

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981096    0.000000    0.000000
 2           0.000000    0.981096    0.000000
 3           0.000000    0.000000    0.981096


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98109613 (fixed)   0.98116396 (relaxed)   0.98109613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013829   -0.00000000   -0.03720230
 Singles      0.02508962   -0.03954171   -0.03994865
 Pairs        0.01367957    0.00000000   -0.00102970
 Total        1.03890749   -0.03954171   -0.07818064
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904577
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89251383
 One electron energy                  -50.41103391
 Two electron energy                   12.61380750
 Virial quotient                       -0.99748532
 Correlation energy                    -0.07818064
 !MRCI STATE 1.1 Energy               -37.797226414931

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026823 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025700 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026823 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722641 (Pople, fixed reference)
 Cluster corrected energies           -37.79722641 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722641 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98109610 (fixed)   0.98116394 (relaxed)   0.98109610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013830   -0.00000000   -0.03720226
 Singles      0.02508967   -0.03954174   -0.03994865
 Pairs        0.01367958   -0.00000000   -0.00102973
 Total        1.03890755   -0.03954174   -0.07818064
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904577
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89251674
 One electron energy                  -50.41103625
 Two electron energy                   12.61380984
 Virial quotient                       -0.99748525
 Correlation energy                    -0.07818064
 !MRCI STATE 2.1 Energy               -37.797226414909

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026823 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025700 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026823 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722641 (Pople, fixed reference)
 Cluster corrected energies           -37.79722641 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722641 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.98109607 (fixed)   0.98116391 (relaxed)   0.98109607 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013830   -0.00000000   -0.00001041
 Singles      0.02508973   -0.03954178   -0.03994865
 Pairs        0.01367958   -0.03863886   -0.03822159
 Total        1.03890761   -0.07818064   -0.07818064
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904577
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89251947
 One electron energy                  -50.41103844
 Two electron energy                   12.61381202
 Virial quotient                       -0.99748517
 Correlation energy                    -0.07818064
 !MRCI STATE 3.1 Energy               -37.797226414893

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026824 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025700 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026824 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722641 (Pople, fixed reference)
 Cluster corrected energies           -37.79722641 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722641 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.99       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.43      0.20      0.54      0.03      0.47
 REAL TIME  *         2.56 SEC
 DISK USED  *        30.15 MB (local),      171.84 MB (total)
 SF USED    *         4.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -37.80026823  AU                              
 SETTING HLSDIAG(2)     =       -37.80026823  AU                              
 SETTING HLSDIAG(3)     =       -37.80026824  AU                              


        HLSDIAG
    -37.80026823
    -37.80026823
    -37.80026824
                                                  


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

 Time for Seward_LS:       0.21 sec

         895620. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.21 sec, REAL time:      0.22 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -37.797226    -37.797226    -37.797226
 Replaced energies:    -37.800268    -37.800268    -37.800268



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -37.80026824

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00     -12.65      -0.00      -0.00      -0.00      -8.95       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -8.95       0.00       0.00       0.00
                           12.65       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       8.95       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       8.95       0.00      -0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -8.95       0.00       0.00       0.00      -0.00      -0.00      -8.95

    5   2.1  1.0  0.0      -0.00       0.00       8.95       0.00       0.00       0.00       0.00       0.00      -8.95
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0      -0.00      -8.95       0.00       0.00       0.00       0.00       0.00       8.95       0.00
                            8.95       0.00       0.00      -0.00      -0.00       0.00       8.95       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -8.95       0.00      12.65       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       8.95       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     -12.65      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -8.95       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       8.95       0.00       0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by    -37.80026824 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -12.652      -0.000     -12.652

    2    1  |1 1>+              0.000       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      12.652       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      12.652       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.002       0.000       0.000       0.000       0.000
                                0.000      -0.000     -12.652       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.001       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -12.652
                               12.652       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.002       0.000
                               -0.000     -12.652      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -12.652       0.000       0.001
                               12.652       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      12.652       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                               -0.000

    2    1  |1 1>+              0.000
                               -0.000

    3    1  |1 1>+              0.000
                                0.000

    1    1  |1 0>               0.000
                                0.000

    2    1  |1 0>              12.652
                               -0.000

    3    1  |1 0>               0.000
                                0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.000
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -37.80038353    -0.00011529      -25.30      0.00000000        0.00      0.0000
    2   -37.80032588    -0.00005765      -12.65      0.00005765       12.65      0.0016
    3   -37.80032588    -0.00005764      -12.65      0.00005765       12.65      0.0016
    4   -37.80032588    -0.00005764      -12.65      0.00005765       12.65      0.0016
    5   -37.80021059     0.00005765       12.65      0.00017294       37.96      0.0047
    6   -37.80021059     0.00005765       12.65      0.00017294       37.96      0.0047
    7   -37.80021058     0.00005765       12.65      0.00017294       37.96      0.0047
    8   -37.80021058     0.00005765       12.65      0.00017295       37.96      0.0047
    9   -37.80021058     0.00005766       12.65      0.00017295       37.96      0.0047

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.57733528 -0.00000000  0.00000000  0.00000000  0.21303440 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.22152434  0.00000000  0.00000000  0.00000000 -0.64652216
                           0.00000000 -0.00000000  0.00000000  0.67152526 -0.00000000 -0.00000000 -0.00000000 -0.28633875

   3    1  |1 1>+          0.00000000 -0.00000000  0.70713417  0.00000000  0.00000000  0.00000000 -0.70707939 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.70707939  0.00000000 -0.00000000 -0.00000000  0.70713417  0.00000000

   2    1  |1 0>          -0.00000000  0.36508900 -0.00000000  0.00000000 -0.00000000 -0.37948659  0.00000000 -0.00000000
                           0.00000000 -0.60554975 -0.00000000  0.00000000 -0.00000000  0.59666528  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57736535 -0.00000000 -0.00000000  0.00000000  0.78912042  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.67149946 -0.00000000 -0.00000000 -0.00000000 -0.28634975
                          -0.00000000 -0.00000000  0.00000000 -0.22151583 -0.00000000 -0.00000000 -0.00000000  0.64654700

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57735018 -0.00000000  0.00000000 -0.00000000 -0.57611224 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.36510326  0.00000000 -0.00000000 -0.00000000 -0.37947177  0.00000000 -0.00000000
                           0.00000000  0.60557339  0.00000000 -0.00000000 -0.00000000  0.59664198  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9

   1    1  |1 1>+          0.78822606
                           0.00000000

   2    1  |1 1>+          0.00000000
                           0.00000000

   3    1  |1 1>+          0.00000000
                           0.00000000

   1    1  |1 0>           0.00000000
                          -0.00000000

   2    1  |1 0>           0.00000000
                           0.00000000

   3    1  |1 0>           0.00000000
                           0.20961447

   1    1  |1 1>-          0.00000000
                          -0.00000000

   2    1  |1 1>-         -0.00000000
                           0.57858574

   3    1  |1 1>-          0.00000000
                           0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -37.80038353     -0.00011529      -25.30      0.00000000        0.00      0.0000
     2   1    -37.80032588     -0.00005765      -12.65      0.00005765       12.65      0.0016
     3   1    -37.80032588     -0.00005764      -12.65      0.00005765       12.65      0.0016
     4   1    -37.80032588     -0.00005764      -12.65      0.00005765       12.65      0.0016
     5   1    -37.80021059      0.00005765       12.65      0.00017294       37.96      0.0047
     6   1    -37.80021059      0.00005765       12.65      0.00017294       37.96      0.0047
     7   1    -37.80021058      0.00005765       12.65      0.00017294       37.96      0.0047
     8   1    -37.80021058      0.00005765       12.65      0.00017295       37.96      0.0047
     9   1    -37.80021058      0.00005766       12.65      0.00017295       37.96      0.0047

 E0 =    -37.80026824 is the energy of the lowest zeroth-order state
 E1 =    -37.80038353 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.57733528 -0.00000000  0.00000000  0.00000000  0.21303440 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.22152434  0.00000000  0.00000000  0.00000000 -0.64652216
                                0.00000000 -0.00000000  0.00000000  0.67152526 -0.00000000 -0.00000000 -0.00000000 -0.28633875

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.70713417  0.00000000  0.00000000  0.00000000 -0.70707939 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.70707939  0.00000000 -0.00000000 -0.00000000  0.70713417  0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.36508900 -0.00000000  0.00000000 -0.00000000 -0.37948659  0.00000000 -0.00000000
                                0.00000000 -0.60554975 -0.00000000  0.00000000 -0.00000000  0.59666528  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57736535 -0.00000000 -0.00000000  0.00000000  0.78912042  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.67149946 -0.00000000 -0.00000000 -0.00000000 -0.28634975
                               -0.00000000 -0.00000000  0.00000000 -0.22151583 -0.00000000 -0.00000000 -0.00000000  0.64654700

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57735018 -0.00000000  0.00000000 -0.00000000 -0.57611224 -0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.36510326  0.00000000 -0.00000000 -0.00000000 -0.37947177  0.00000000 -0.00000000
                                0.00000000  0.60557339  0.00000000 -0.00000000 -0.00000000  0.59664198  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+       0.78822606
                                0.00000000

  2  1     2    1  |1 1>+       0.00000000
                                0.00000000

  3  1     3    1  |1 1>+       0.00000000
                                0.00000000

  4  1     1    1  |1 0>        0.00000000
                               -0.00000000

  5  1     2    1  |1 0>        0.00000000
                                0.00000000

  6  1     3    1  |1 0>        0.00000000
                                0.20961447

  7  1     1    1  |1 1>-       0.00000000
                               -0.00000000

  8  1     2    1  |1 1>-      -0.00000000
                                0.57858574

  9  1     3    1  |1 1>-       0.00000000
                                0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    4.54%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.34%    0.00%    0.00%    0.00%   62.27%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   33.19%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+        62.13%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>          4.39%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-        33.48%
  9  1     3    1  |1 1>-         0.00%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.99       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.14      1.71      0.20      0.54      0.03      0.47
 REAL TIME  *         5.62 SEC
 DISK USED  *        30.17 MB (local),      247.86 MB (total)
 SF USED    *        17.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -37.800210581278

              CI           MULTI         RHF-SCF
    -37.79722641    -37.71904577    -37.70180810
 **********************************************************************************************************************************
 Molpro calculation terminated
