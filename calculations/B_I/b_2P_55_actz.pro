
 Working directory              : /wrk/irikura/molpro.OtITFyHDed/
 Global scratch directory       : /wrk/irikura/molpro.OtITFyHDed/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.OtITFyHDed/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,B SO-CI
                                                                                 ! Active space (5,5) (all electrons!)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=5,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,0,0;
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 15-Feb-24          TIME: 16:12:15  
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

 Library entry B      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  B       5.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    5
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

     2.621 MB (compressed) written to integral file ( 20.5%)

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

         1 0.496E-02 0.182E-01 0.705E-01 0.187E+00 0.247E+00 0.247E+00 0.247E+00 0.247E+00
         2 0.152E-01 0.152E-01 0.152E-01 0.186E+00 0.186E+00 0.186E+00 0.432E+00 0.432E+00


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
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50737218     -24.50737218     0.00D+00     0.92D-01     0     0       0.01      0.01    start
   2      -24.53087375      -0.02350157     0.72D-02     0.16D-01     1     0       0.00      0.01    diag2
   3      -24.53397033      -0.00309658     0.20D-02     0.34D-02     2     0       0.00      0.01    diag2
   4      -24.53491093      -0.00094059     0.11D-02     0.37D-02     3     0       0.00      0.01    diag2
   5      -24.53495253      -0.00004160     0.24D-03     0.13D-02     4     0       0.00      0.01    diag2
   6      -24.53495314      -0.00000062     0.36D-04     0.16D-03     5     0       0.00      0.01    diag2
   7      -24.53495315      -0.00000000     0.29D-05     0.13D-04     6     0       0.00      0.01    diag2
   8      -24.53495315      -0.00000000     0.28D-06     0.22D-05     7     0       0.00      0.01    fixocc
   9      -24.53495315      -0.00000000     0.26D-07     0.51D-07     0     0       0.01      0.02    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.534953148026
  RHF One-electron energy             -32.375004267273
  RHF Two-electron energy               7.840051119247
  RHF Kinetic energy                   24.581653293385
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998100203237

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69742     1  1  s    0.99946
    2.1     2.00000    -0.49521     1  2  s    1.00903
    1.2     1.00000    -0.30965     1  1  px   0.99639


 HOMO      1.2    -0.309645 =      -8.4259eV
 LUMO      2.2     0.022718 =       0.6182eV
 LUMO-HOMO         0.332363 =       9.0441eV

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
 CPU TIMES  *         0.68      0.02      0.47
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.44 MB (local),      168.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:              39   (52 determinants, 100 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.117D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 5   4 3 2 6 1 5 4 3 6 2   1 6 2 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.181D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.122D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 3 2 6   5 8 4 910 7 1 2 3 6   5 8 4 910 7 2 3 1 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  137  ( 0 closed/active, 0 closed/virtual, 0 active/active, 137 active/virtual )
 Total number of variables:    293
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    5    0    -24.47988338     -24.56964333   -0.08975995    0.09715225 0.00016684 0.00000000  0.96E+00      0.06
   2    2    2    0    -24.56546399     -24.56608153   -0.00061755    0.02553100 0.00022241 0.00000000  0.44E-01      0.09
   3    7    7    0    -24.56608410     -24.56608413   -0.00000003    0.00019905 0.00000001 0.00000000  0.29E-03      0.13
   4    3    3    0    -24.56608413     -24.56608413    0.00000000    0.00000002 0.00000000 0.00000000  0.21E-07      0.17

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.22E-08)
                       Final energy:    -24.56608413
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -24.566084133722
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61271058
 One electron energy                           -32.40130793
 Two electron energy                             7.83522380
 Virial ratio                                    1.99810559
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -24.566084133445
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61271059
 One electron energy                           -32.40130794
 Two electron energy                             7.83522380
 Virial ratio                                    1.99810559
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -24.566084132963
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61271060
 One electron energy                           -32.40130795
 Two electron energy                             7.83522382
 Virial ratio                                    1.99810559
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000000087
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999999936
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999916
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000000195
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999999986
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999999998
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999869
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000000014
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 5   3 4 6 2 1 5 3 4 2 6   1 3 5 4 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 6   5 4 810 9 7 3 2 1 9   710 8 4 6 5 1 2 3 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.67880     1  1  s    0.99923
    2.1     1.89170    -0.46968     1  2  s    1.02773
    1.2     0.36944     0.03440     1  1  pz   1.03015
    2.2     0.36944     0.03440     1  1  py   1.03015
    3.2     0.36944     0.03440     1  1  px   1.03015
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 a00        -0.00000152     -0.00001115      0.97254668
 22 00a         0.97254668     -0.00000892      0.00000152
 22 0a0         0.00000892      0.97254668      0.00001115
 20 2a0        -0.00000151     -0.16454770     -0.00000189
 20 20a        -0.16454770      0.00000151     -0.00000026
 20 a20         0.00000026      0.00000189     -0.16454770
 20 02a        -0.16454770      0.00000151     -0.00000026
 20 a02         0.00000026      0.00000189     -0.16454770
 20 0a2        -0.00000151     -0.16454770     -0.00000189
 
 Energy:      -24.56608413    -24.56608413    -24.56608413
 


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
 CPU TIMES  *         0.86      0.18      0.02      0.47
 REAL TIME  *         1.91 SEC
 DISK USED  *        29.75 MB (local),      169.83 MB (total)
 SF USED    *         1.38 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.56608413   2.0
    -24.56608413   2.0
    -24.56608413   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  5
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:       27 conf       39 CSFs
 N elec internal:       51 conf       75 CSFs
 N-1 el internal:       45 conf       95 CSFs
 N-2 el internal:       30 conf       90 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   5

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.56608413
     2       -24.56608413
     3       -24.56608413

 Number of blocks in overlap matrix:    12   Smallest eigenvalue:  0.30D-06
 Number of N-2 electron functions:      65
 Number of N-1 electron functions:      95

 Number of internal configurations:                   39
 Number of singly external configurations:          2571
 Number of doubly external configurations:         47492
 Total number of contracted configurations:        50102
 Total number of uncontracted configurations:      68104

 Diagonal Coupling coefficients finished.               Storage:    183073 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193522 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.56608413    -0.00000000    -0.06845312  0.19D-01  0.15D-02     0.02
    1     2     2     1.00000000     0.00000000   -24.56608413    -0.00000000    -0.06845303  0.19D-01  0.15D-02     0.02
    1     3     3     1.00000000     0.00000000   -24.56608413    -0.00000000    -0.06838613  0.19D-01  0.15D-02     0.02
    2     1     1     1.02301837    -0.07291277   -24.63899690    -0.07291277    -0.00206102  0.27D-03  0.13D-03     0.10
    2     2     2     1.02309913    -0.07290728   -24.63899142    -0.07290728    -0.00206106  0.28D-03  0.13D-03     0.10
    2     3     3     1.02309900    -0.07290717   -24.63899130    -0.07290717    -0.00206107  0.28D-03  0.13D-03     0.10
    3     1     1     1.02904921    -0.07844287   -24.64452700    -0.00553010    -0.00142313  0.52D-03  0.50D-04     0.19
    3     2     2     1.02904922    -0.07844271   -24.64452684    -0.00553542    -0.00142319  0.52D-03  0.50D-04     0.19
    3     3     3     1.02915715    -0.07844131   -24.64452544    -0.00553414    -0.00142233  0.52D-03  0.50D-04     0.19
    4     1     1     1.02949675    -0.08126189   -24.64734602    -0.00281902    -0.00034947  0.74D-04  0.19D-04     0.28
    4     2     2     1.02948646    -0.08126077   -24.64734491    -0.00281807    -0.00034968  0.74D-04  0.19D-04     0.28
    4     3     3     1.02948647    -0.08126076   -24.64734490    -0.00281946    -0.00034968  0.74D-04  0.19D-04     0.28
    5     1     1     1.02787963    -0.08191021   -24.64799434    -0.00064832    -0.00017742  0.25D-04  0.91D-05     0.36
    5     2     2     1.02791161    -0.08191015   -24.64799429    -0.00064938    -0.00017749  0.26D-04  0.91D-05     0.36
    5     3     3     1.02791157    -0.08191014   -24.64799427    -0.00064938    -0.00017749  0.26D-04  0.91D-05     0.36
    6     1     1     1.02941818    -0.08224971   -24.64833384    -0.00033950    -0.00011891  0.16D-04  0.69D-05     0.44
    6     2     2     1.02939996    -0.08224950   -24.64833363    -0.00033935    -0.00011892  0.16D-04  0.69D-05     0.44
    6     3     3     1.02939986    -0.08224949   -24.64833362    -0.00033935    -0.00011893  0.16D-04  0.69D-05     0.44
    7     1     1     1.03040472    -0.08240346   -24.64848759    -0.00015375    -0.00005785  0.13D-04  0.30D-05     0.52
    7     2     2     1.03039230    -0.08240343   -24.64848757    -0.00015393    -0.00005791  0.13D-04  0.30D-05     0.52
    7     3     3     1.03039226    -0.08240343   -24.64848756    -0.00015394    -0.00005791  0.13D-04  0.30D-05     0.52
    8     1     1     1.03015043    -0.08249276   -24.64857689    -0.00008930    -0.00003319  0.28D-05  0.18D-05     0.61
    8     2     2     1.03016223    -0.08249271   -24.64857684    -0.00008927    -0.00003319  0.28D-05  0.18D-05     0.61
    8     3     3     1.03016217    -0.08249270   -24.64857684    -0.00008928    -0.00003319  0.28D-05  0.18D-05     0.61
    9     1     1     1.03022694    -0.08254489   -24.64862902    -0.00005213    -0.00002414  0.16D-05  0.15D-05     0.70
    9     2     2     1.03022680    -0.08254487   -24.64862900    -0.00005216    -0.00002414  0.16D-05  0.15D-05     0.70
    9     3     3     1.03022678    -0.08254486   -24.64862900    -0.00005216    -0.00002414  0.16D-05  0.15D-05     0.70
   10     1     1     1.03057182    -0.08257588   -24.64866002    -0.00003100    -0.00001532  0.11D-05  0.11D-05     0.79
   10     2     2     1.03056599    -0.08257588   -24.64866001    -0.00003101    -0.00001533  0.11D-05  0.11D-05     0.79
   10     3     3     1.03056597    -0.08257587   -24.64866001    -0.00003101    -0.00001533  0.11D-05  0.11D-05     0.79
   11     1     1     1.03068291    -0.08259480   -24.64867893    -0.00001892    -0.00001021  0.47D-06  0.72D-06     0.87
   11     2     2     1.03068352    -0.08259480   -24.64867893    -0.00001892    -0.00001020  0.47D-06  0.72D-06     0.87
   11     3     3     1.03068349    -0.08259480   -24.64867893    -0.00001892    -0.00001020  0.47D-06  0.72D-06     0.87
   12     1     1     1.03068108    -0.08260780   -24.64869194    -0.00001301    -0.00000716  0.42D-06  0.46D-06     0.96
   12     2     2     1.03068332    -0.08260780   -24.64869194    -0.00001300    -0.00000716  0.43D-06  0.46D-06     0.96
   12     3     3     1.03068331    -0.08260780   -24.64869193    -0.00001301    -0.00000716  0.43D-06  0.46D-06     0.96
   13     1     1     1.03075935    -0.08261728   -24.64870141    -0.00000947    -0.00000519  0.15D-06  0.40D-06     1.05
   13     2     2     1.03076032    -0.08261728   -24.64870141    -0.00000947    -0.00000519  0.15D-06  0.40D-06     1.05
   13     3     3     1.03075934    -0.08261728   -24.64870141    -0.00000948    -0.00000519  0.15D-06  0.40D-06     1.05
   14     1     1     1.03083676    -0.08262303   -24.64870716    -0.00000575    -0.00000361  0.71D-07  0.28D-06     1.13
   14     2     2     1.03083675    -0.08262302   -24.64870716    -0.00000575    -0.00000361  0.71D-07  0.28D-06     1.13
   14     3     3     1.03083760    -0.08262302   -24.64870716    -0.00000575    -0.00000361  0.71D-07  0.28D-06     1.13
   15     1     1     1.03088066    -0.08262737   -24.64871150    -0.00000434    -0.00000259  0.10D-06  0.18D-06     1.22
   15     2     2     1.03088065    -0.08262736   -24.64871150    -0.00000434    -0.00000259  0.10D-06  0.18D-06     1.22
   15     3     3     1.03088019    -0.08262737   -24.64871150    -0.00000434    -0.00000259  0.10D-06  0.18D-06     1.22
   16     1     1     1.03090591    -0.08263066   -24.64871479    -0.00000329    -0.00000197  0.22D-07  0.16D-06     1.30
   16     2     2     1.03090590    -0.08263066   -24.64871479    -0.00000329    -0.00000197  0.22D-07  0.16D-06     1.30
   16     3     3     1.03090571    -0.08263066   -24.64871479    -0.00000329    -0.00000197  0.22D-07  0.16D-06     1.30
   17     1     1     1.03093604    -0.08263279   -24.64871693    -0.00000214    -0.00000139  0.21D-07  0.11D-06     1.39
   17     2     2     1.03093604    -0.08263279   -24.64871693    -0.00000214    -0.00000139  0.21D-07  0.11D-06     1.39
   17     3     3     1.03093626    -0.08263279   -24.64871692    -0.00000214    -0.00000139  0.21D-07  0.11D-06     1.39
   18     1     1     1.03096674    -0.08263443   -24.64871856    -0.00000163    -0.00000104  0.14D-07  0.76D-07     1.47
   18     2     2     1.03096673    -0.08263443   -24.64871856    -0.00000163    -0.00000104  0.14D-07  0.76D-07     1.47
   18     3     3     1.03096682    -0.08263443   -24.64871856    -0.00000163    -0.00000104  0.14D-07  0.76D-07     1.47
   19     1     1     1.03098692    -0.08263569   -24.64871982    -0.00000126    -0.00000079  0.83D-08  0.65D-07     1.56
   19     2     2     1.03098691    -0.08263569   -24.64871982    -0.00000126    -0.00000079  0.83D-08  0.65D-07     1.56
   19     3     3     1.03098682    -0.08263569   -24.64871982    -0.00000126    -0.00000079  0.83D-08  0.65D-07     1.56
   20     1     1     1.03100256    -0.08263655   -24.64872069    -0.00000086    -0.00000057  0.55D-08  0.46D-07     1.65
   20     2     2     1.03100255    -0.08263655   -24.64872069    -0.00000086    -0.00000057  0.55D-08  0.46D-07     1.65
   20     3     3     1.03100254    -0.08263655   -24.64872069    -0.00000086    -0.00000057  0.55D-08  0.46D-07     1.65
   21     1     1     1.03101885    -0.08263721   -24.64872135    -0.00000066    -0.00000044  0.30D-08  0.33D-07     1.74
   21     2     2     1.03101884    -0.08263721   -24.64872135    -0.00000066    -0.00000044  0.30D-08  0.33D-07     1.74
   21     3     3     1.03101890    -0.08263721   -24.64872135    -0.00000066    -0.00000044  0.30D-08  0.33D-07     1.74
   22     1     1     1.03103243    -0.08263773   -24.64872186    -0.00000052    -0.00000034  0.28D-08  0.28D-07     1.82
   22     2     2     1.03103242    -0.08263773   -24.64872186    -0.00000052    -0.00000034  0.28D-08  0.28D-07     1.82
   22     3     3     1.03103242    -0.08263773   -24.64872186    -0.00000052    -0.00000034  0.28D-08  0.28D-07     1.82
   23     1     1     1.03104270    -0.08263810   -24.64872223    -0.00000037    -0.00000025  0.17D-08  0.20D-07     1.91
   23     2     2     1.03104269    -0.08263810   -24.64872223    -0.00000037    -0.00000025  0.17D-08  0.20D-07     1.91
   23     3     3     1.03104268    -0.08263810   -24.64872223    -0.00000037    -0.00000025  0.17D-08  0.20D-07     1.91
   24     1     1     1.03105226    -0.08263838   -24.64872251    -0.00000028    -0.00000019  0.13D-08  0.15D-07     1.99
   24     2     2     1.03105225    -0.08263838   -24.64872251    -0.00000028    -0.00000019  0.13D-08  0.15D-07     1.99
   24     3     3     1.03105226    -0.08263838   -24.64872251    -0.00000028    -0.00000019  0.13D-08  0.15D-07     1.99
   25     1     1     1.03106055    -0.08263860   -24.64872273    -0.00000022    -0.00000015  0.84D-09  0.12D-07     2.09
   25     2     2     1.03106055    -0.08263860   -24.64872273    -0.00000022    -0.00000015  0.84D-09  0.12D-07     2.09
   25     3     3     1.03106055    -0.08263860   -24.64872273    -0.00000022    -0.00000015  0.84D-09  0.12D-07     2.09
   26     1     1     1.03106730    -0.08263876   -24.64872289    -0.00000016    -0.00000011  0.68D-09  0.88D-08     2.17
   26     2     2     1.03106729    -0.08263876   -24.64872289    -0.00000016    -0.00000011  0.68D-09  0.88D-08     2.17
   26     3     3     1.03106729    -0.08263876   -24.64872289    -0.00000016    -0.00000011  0.68D-09  0.88D-08     2.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.0%   1.4%
 P   0.5%  10.1%  45.2%

 Initialization:   0.5%
 Other:           41.9%

 Total CPU:        2.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/00           0.0000000   0.0000000   0.9621313
 2200/           0.0000000   0.9621313  -0.0000000
 220/0           0.9621313  -0.0000000  -0.0000000
 2002/          -0.0000000  -0.1486120   0.0000000
 200/2          -0.1486120  -0.0000000  -0.0000000
 20/20          -0.0000000  -0.0000000  -0.1486120
 20/02          -0.0000000  -0.0000000  -0.1486120
 2020/           0.0000000  -0.1486119   0.0000000
 202/0          -0.1486119   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\/00  14.1    -0.0000000  -0.0000000  -0.0531000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.984626    0.000000
 2           0.984626   -0.000000    0.000000
 3          -0.000000   -0.000000    0.984626

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.984626   -0.000000   -0.000000
 2          -0.000000    0.984626    0.000000
 3          -0.000000    0.000000    0.984626


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98462611 (fixed)   0.98481917 (relaxed)   0.98462611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039219    0.00000000   -0.05512522
 Singles      0.02166905   -0.02581107   -0.02675573
 Pairs        0.00941043   -0.00000000   -0.00075781
 Total        1.03147167   -0.02581107   -0.08263876
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56608413
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68361836
 One electron energy                  -32.33477926
 Two electron energy                    7.68605637
 Virial quotient                       -0.99858629
 Correlation energy                    -0.08263876
 !MRCI STATE 1.2 Energy               -24.648722894603

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65132367 (Davidson, fixed reference)
 Cluster corrected energies           -24.65129026 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65132367 (Davidson, rotated reference)

 Cluster corrected energies           -24.65002296 (Pople, fixed reference)
 Cluster corrected energies           -24.65000627 (Pople, relaxed reference)
 Cluster corrected energies           -24.65002296 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98462611 (fixed)   0.98481917 (relaxed)   0.98462611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039219    0.00000000   -0.05512522
 Singles      0.02166905   -0.02581107   -0.02675573
 Pairs        0.00941043   -0.00000000   -0.00075781
 Total        1.03147166   -0.02581107   -0.08263876
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56608413
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68361837
 One electron energy                  -32.33477927
 Two electron energy                    7.68605638
 Virial quotient                       -0.99858629
 Correlation energy                    -0.08263876
 !MRCI STATE 2.2 Energy               -24.648722894565

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65132367 (Davidson, fixed reference)
 Cluster corrected energies           -24.65129026 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65132367 (Davidson, rotated reference)

 Cluster corrected energies           -24.65002296 (Pople, fixed reference)
 Cluster corrected energies           -24.65000627 (Pople, relaxed reference)
 Cluster corrected energies           -24.65002296 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98462611 (fixed)   0.98481917 (relaxed)   0.98462611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039219    0.00000000   -0.00003142
 Singles      0.02166906   -0.02581108   -0.02675573
 Pairs        0.00941041   -0.05682769   -0.05585161
 Total        1.03147166   -0.08263876   -0.08263876
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56608413
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68361836
 One electron energy                  -32.33477934
 Two electron energy                    7.68605644
 Virial quotient                       -0.99858629
 Correlation energy                    -0.08263876
 !MRCI STATE 3.2 Energy               -24.648722894382

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65132367 (Davidson, fixed reference)
 Cluster corrected energies           -24.65129026 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65132367 (Davidson, rotated reference)

 Cluster corrected energies           -24.65002296 (Pople, fixed reference)
 Cluster corrected energies           -24.65000627 (Pople, relaxed reference)
 Cluster corrected energies           -24.65002296 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.84       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.09      2.22      0.18      0.02      0.47
 REAL TIME  *         4.41 SEC
 DISK USED  *        30.99 MB (local),      176.06 MB (total)
 SF USED    *        12.67 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.65132367  AU                              
 SETTING HLSDIAG(2)     =       -24.65132367  AU                              
 SETTING HLSDIAG(3)     =       -24.65132367  AU                              


        HLSDIAG
    -24.65132367
    -24.65132367
    -24.65132367
                                                  


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

 Time for Seward_LS:       0.17 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -24.648723    -24.648723    -24.648723
 Replaced energies:    -24.651324    -24.651324    -24.651324



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.65132367

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       4.66      -0.00      -0.00      -0.00      -4.66

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       4.66
                           -4.66      -0.00       0.00       0.00       0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -4.66      -0.00
                            0.00      -0.00      -0.00       4.66       0.00      -0.00

    4   1.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -4.66       0.00      -4.66       0.00

    5   2.2  0.5 -0.5      -0.00      -0.00      -4.66       0.00       0.00       0.00
                            0.00      -0.00      -0.00       4.66       0.00      -0.00

    6   3.2  0.5 -0.5      -0.00       4.66      -0.00       0.00       0.00       0.00
                            4.66       0.00       0.00      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.65136614    -0.00004247       -9.32      0.00000000        0.00      0.0000
     2   -24.65136614    -0.00004247       -9.32      0.00000000        0.00      0.0000
     3   -24.65130244     0.00002123        4.66      0.00006370       13.98      0.0017
     4   -24.65130244     0.00002123        4.66      0.00006370       13.98      0.0017
     5   -24.65130244     0.00002123        4.66      0.00006370       13.98      0.0017
     6   -24.65130244     0.00002123        4.66      0.00006370       13.98      0.0017


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.000000000   0.577352960   0.019656749   0.797137052   0.163598004   0.063917012
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000009   0.000000026
                         0.000000000   0.577349997  -0.013578196  -0.550635297   0.561403779   0.219338052

    3    3.2  0.5  0.5   0.573159361  -0.000000000  -0.246063509   0.006067746  -0.274015623   0.701353073
                         0.069418204  -0.000000000  -0.014776127   0.000364368   0.071761077  -0.183675198

    4    1.2  0.5 -0.5  -0.069418819   0.000000000  -0.047782050   0.001178266   0.016192942  -0.041446447
                         0.573164434  -0.000000000   0.795703686  -0.019621403   0.061831812  -0.158260858

    5    2.2  0.5 -0.5   0.573161492   0.000000000  -0.549645176   0.013553781   0.212182474  -0.543088796
                         0.069418463  -0.000000000  -0.033006223   0.000813906  -0.055567785   0.142227855

    6    3.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000009   0.000000026
                        -0.000000000  -0.577347850   0.006078676   0.246506764   0.725005318   0.283256445


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.000%  33.334%   0.039%  63.543%   2.676%   0.409%
    2    2.2  0.5  0.5   0.000%  33.333%   0.018%  30.320%  31.517%   4.811%
    3    3.2  0.5  0.5  33.333%   0.000%   6.077%   0.004%   8.023%  52.563%
    4    1.2  0.5 -0.5  33.334%   0.000%  63.543%   0.039%   0.409%   2.676%
    5    2.2  0.5 -0.5  33.333%   0.000%  30.320%   0.018%   4.811%  31.517%
    6    3.2  0.5 -0.5   0.000%  33.333%   0.004%   6.077%  52.563%   8.023%


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
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.84       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.23      3.12      2.22      0.18      0.02      0.47
 REAL TIME  *         7.71 SEC
 DISK USED  *        31.01 MB (local),      252.08 MB (total)
 SF USED    *        20.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -24.651302440919

              CI           MULTI         RHF-SCF
    -24.64872289    -24.56608413    -24.53495315
 **********************************************************************************************************************************
 Molpro calculation terminated
