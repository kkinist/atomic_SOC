
 Working directory              : /wrk/irikura/molpro.EFDzRuDAZh/
 Global scratch directory       : /wrk/irikura/molpro.EFDzRuDAZh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.EFDzRuDAZh/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
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
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=1;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Li SO-CI                                                                                                                                                      
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 12:58:34  
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

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.62      0.43
 REAL TIME  *         1.66 SEC
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
   8       -7.43335634       0.00000000     0.62D-08     0.88D-07     0     0       0.00      0.02    fixocc

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
 CPU TIMES  *         0.64      0.02      0.43
 REAL TIME  *         1.69 SEC
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

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 2 3 6 1 5   3 6 4 2 3 6 2 5 4 1   6 2 5 3 4 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.284D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.284D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 3 1 2 4  10 8 9 6 7 5 3 1 2 7   9 610 8 5 4 2 1 3 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  159  ( 0 closed/active, 0 closed/virtual, 0 active/active, 159 active/virtual )
 Total number of variables:    249
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   11   15     -7.36945815      -7.39513793   -0.02567978    0.01059385 0.00008347 0.00000000  0.17E+01      0.09
   2    2    2    0     -7.39286113      -7.39288773   -0.00002660    0.01701592 0.00000670 0.00000000  0.36E-01      0.12
   3    4    4    0     -7.39288773      -7.39288773   -0.00000000    0.00000065 0.00000000 0.00000000  0.15E-04      0.15

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.44E-12)
                       Final energy:     -7.39288773
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                        -7.454296668416
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.45949946
 One electron energy                            -9.69616734
 Two electron energy                             2.24187067
 Virial ratio                                    1.99930253
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                        -7.331478794085
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.32745416
 One electron energy                            -9.19663175
 Two electron energy                             1.86515296
 Virial ratio                                    2.00054925
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 3 4 6 1 2   5 6 3 4 5 4 3 6 2 1   4 5 6 3 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 3 2 3   1 2 6 4 5 7 910 8 3   1 210 8 4 5 9 7 6 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99666    -2.56918     1  1  s    1.00282
    2.1     0.50000    -0.07362     1  2  s    1.12736    1  7  s   -0.31841
    3.1     0.50000    -0.00937     1  2  s   -0.33467    1  7  s    1.19672
    1.2     0.00111     4.68499     1  1  pz  -0.34294    1  4  pz   0.74735    1  5  pz   0.41555
    2.2     0.00111     4.68499     1  1  px  -0.34294    1  4  px   0.74735    1  5  px   0.41555
    3.2     0.00111     4.68499     1  1  py  -0.34294    1  4  py   0.74735    1  5  py   0.41555
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20a 000        0.26320883      0.96387256
 2a0 000        0.96386903     -0.26320631
 
 Energy:       -7.45429667     -7.33147879
 


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
 CPU TIMES  *         0.80      0.16      0.02      0.43
 REAL TIME  *         1.90 SEC
 DISK USED  *        29.87 MB (local),      170.42 MB (total)
 SF USED    *         1.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

       ENERGY      LL
    -7.45429667   0.0
    -7.33147879  -0.0
                                                  


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
     1        -7.45429667
     2        -7.33147879

 Number of blocks in overlap matrix:     8   Smallest eigenvalue:  0.81D+00
 Number of N-2 electron functions:      11
 Number of N-1 electron functions:      36

 Number of internal configurations:                   35
 Number of singly external configurations:           954
 Number of doubly external configurations:          7745
 Total number of contracted configurations:         8734
 Total number of uncontracted configurations:       9416

 Diagonal Coupling coefficients finished.               Storage:    180812 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193246 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000    -7.45429667     0.00000000    -0.01605516  0.20D-03  0.11D-02     0.01
    1     2     2     1.00000000     0.00000000    -7.33147879     0.00000000    -0.01536425  0.17D-03  0.10D-02     0.01
    2     1     1     1.00154339    -0.01735863    -7.47165529    -0.01735863    -0.00039359  0.21D-04  0.24D-04     0.02
    2     2     2     1.00138665    -0.01644177    -7.34792056    -0.01644177    -0.00024563  0.15D-04  0.95D-05     0.02
    3     1     1     1.00183028    -0.01785060    -7.47214727    -0.00049198    -0.00006744  0.66D-05  0.14D-05     0.04
    3     2     2     1.00155881    -0.01671673    -7.34819552    -0.00027496    -0.00002110  0.22D-05  0.71D-06     0.04
    4     1     1     1.00193961    -0.01793545    -7.47223212    -0.00008484    -0.00000846  0.69D-06  0.61D-06     0.06
    4     2     2     1.00159640    -0.01674277    -7.34822157    -0.00002604    -0.00000250  0.75D-06  0.14D-06     0.06
    5     1     1     1.00193898    -0.01794458    -7.47224125    -0.00000914    -0.00000079  0.86D-07  0.31D-07     0.08
    5     2     2     1.00159840    -0.01674583    -7.34822462    -0.00000305    -0.00000031  0.19D-06  0.93D-08     0.08
    6     1     1     1.00194485    -0.01794547    -7.47224214    -0.00000088    -0.00000011  0.11D-07  0.35D-08     0.10
    6     2     2     1.00160498    -0.01674623    -7.34822502    -0.00000040    -0.00000008  0.62D-07  0.22D-08     0.10
    7     1     1     1.00194884    -0.01794561    -7.47224228    -0.00000014    -0.00000002  0.10D-08  0.10D-08     0.11
    7     2     2     1.00161042    -0.01674633    -7.34822512    -0.00000010    -0.00000002  0.10D-07  0.69D-09     0.11
    8     1     1     1.00194990    -0.01794561    -7.47224228    -0.00000001    -0.00000001  0.15D-08  0.42D-09     0.12
    8     2     2     1.00161307    -0.01674635    -7.34822514    -0.00000002    -0.00000000  0.60D-09  0.64D-10     0.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   8.3%
 P   0.0%  25.0%   8.3%

 Initialization:   8.3%
 Other:           50.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/000           0.2580648   0.9644420
 2/0000           0.9642309  -0.2579153

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.999006   -0.005057
 2           0.005265    0.999177

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.999019    0.000103
 2           0.000103    0.999191


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99900617 (fixed)   0.99902647 (relaxed)   0.99901896 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001504   -0.00000007   -0.01626021
 Singles      0.00045799   -0.00210497   -0.00210859
 Pairs        0.00149194    0.00045125    0.00042319
 Total        1.00196497   -0.00165379   -0.01794561
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                      -7.45429339
 Nuclear energy                         0.00000000
 Kinetic energy                         7.46846214
 One electron energy                   -9.67935654
 Two electron energy                    2.20711426
 Virial quotient                       -1.00050615
 Correlation energy                    -0.01794889
 !MRCI STATE 1.1 Energy                -7.472242282560

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies            -7.47227755 (Davidson, fixed reference)
 Cluster corrected energies            -7.47227728 (Davidson, relaxed reference)
 Cluster corrected energies            -7.47227755 (Davidson, rotated reference)

 Cluster corrected energies            -7.47224228 (Pople, fixed reference)
 Cluster corrected energies            -7.47224228 (Pople, relaxed reference)
 Cluster corrected energies            -7.47224228 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.99917717 (fixed)   0.99919444 (relaxed)   0.99919103 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000682   -0.00000007   -0.00000169
 Singles      0.00029947   -0.00157740   -0.00158004
 Pairs        0.00131361   -0.01516736   -0.01516461
 Total        1.00161990   -0.01674483   -0.01674635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                      -7.33148207
 Nuclear energy                         0.00000000
 Kinetic energy                         7.34203752
 One electron energy                   -9.17887564
 Two electron energy                    1.83065049
 Virial quotient                       -1.00084277
 Correlation energy                    -0.01674307
 !MRCI STATE 2.1 Energy                -7.348225141806

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies            -7.34825226 (Davidson, fixed reference)
 Cluster corrected energies            -7.34825215 (Davidson, relaxed reference)
 Cluster corrected energies            -7.34825226 (Davidson, rotated reference)

 Cluster corrected energies            -7.34822514 (Pople, fixed reference)
 Cluster corrected energies            -7.34822514 (Pople, relaxed reference)
 Cluster corrected energies            -7.34822514 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.79       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         0.97      0.15      0.16      0.02      0.43
 REAL TIME  *         2.09 SEC
 DISK USED  *        30.07 MB (local),      171.44 MB (total)
 SF USED    *         2.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =        -7.47227755  AU                              
 SETTING HLSDIAG(2)     =        -7.34825226  AU                              


       HLSDIAG
    -7.47227755
    -7.34825226
                                                  


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

         907899. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      953874. and wrote      953874. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.03 sec
 SORTLS2 read      953874. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:     -7.472242     -7.348225
 Replaced energies:     -7.472278     -7.348252



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=    -7.47227755

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00   27220.40      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    3   1.1  0.5 -0.5       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00

    4   2.1  0.5 -0.5       0.00      -0.00       0.00   27220.40
                            0.00       0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1    -7.47227755     0.00000000        0.00      0.00000000        0.00      0.0000
     2    -7.47227755     0.00000000        0.00      0.00000000        0.00      0.0000
     3    -7.34825226     0.12402529    27220.40      0.12402529    27220.40      3.3749
     4    -7.34825226     0.12402529    27220.40      0.12402529    27220.40      3.3749


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5   0.000000000   1.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.480115866
                         0.000000000   0.000000000  -0.368606747   0.796001144

    3    1.1  0.5 -0.5  -0.630416777   0.000000000  -0.000000000  -0.000000000
                         0.776256844  -0.000000000  -0.000000000  -0.000000000

    4    2.1  0.5 -0.5   0.000000000  -0.000000000   0.657317215   0.088570925
                         0.000000000  -0.000000000   0.657315103   0.357807385


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  13.587%  86.413%
    3    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%  86.413%  13.587%


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
              1      24       43.97       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.79       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.65      1.68      0.15      0.16      0.02      0.43
 REAL TIME  *         3.87 SEC
 DISK USED  *        30.09 MB (local),      247.46 MB (total)
 SF USED    *        17.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=     -7.348252263914

              CI           MULTI         RHF-SCF
     -7.34822514     -7.33147879     -7.43335634
 **********************************************************************************************************************************
 Molpro calculation terminated
