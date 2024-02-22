
 Working directory              : /wrk/irikura/molpro.omENLTlpPS/
 Global scratch directory       : /wrk/irikura/molpro.omENLTlpPS/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.omENLTlpPS/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,O SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={O};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=8,sym=1,spin=2}
 
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   O SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:01:17  
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

 Library entry O      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry O      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry O      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry O      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  O       8.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    8
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

     2.884 MB (compressed) written to integral file ( 19.7%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.523E-02 0.198E-01 0.649E-01 0.196E+00 0.243E+00 0.243E+00 0.243E+00 0.243E+00
         2 0.190E-01 0.190E-01 0.190E-01 0.197E+00 0.197E+00 0.197E+00 0.399E+00 0.399E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.62      0.42
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   1

 NELEC=    8   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -74.83530778     -74.83530778     0.00D+00     0.12D+00     0     0       0.01      0.01    start
   2      -74.85667378      -0.02136600     0.11D-01     0.14D-01     1     0       0.00      0.01    diag2
   3      -74.85844975      -0.00177597     0.49D-02     0.36D-02     2     0       0.00      0.01    diag2
   4      -74.85865869      -0.00020894     0.94D-03     0.12D-02     3     0       0.00      0.01    diag2
   5      -74.85867755      -0.00001886     0.22D-03     0.44D-03     4     0       0.00      0.01    diag2
   6      -74.85867807      -0.00000051     0.36D-04     0.75D-04     5     0       0.01      0.02    diag2
   7      -74.85867808      -0.00000001     0.51D-05     0.13D-04     6     0       0.00      0.02    diag2
   8      -74.85867808      -0.00000000     0.32D-06     0.53D-06     7     0       0.00      0.02    fixocc
   9      -74.85867808      -0.00000000     0.33D-07     0.46D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   1

 !RHF STATE 1.1 Energy                -74.858678076417
  RHF One-electron energy            -103.308238776659
  RHF Two-electron energy              28.449560700242
  RHF Kinetic energy                   75.197588671372
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.995493065656

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68716     1  1  s    0.99935
    2.1     2.00000    -1.24842     1  2  s    1.00902
    1.2     2.00000    -0.56657     1  1  pz   0.95678
    2.2     1.00000    -0.70241     1  1  py   1.00225
    3.2     1.00000    -0.70241     1  1  px   1.02041


 HOMO      3.2    -0.702412 =     -19.1136eV
 LUMO      3.1     0.151683 =       4.1275eV
 LUMO-HOMO         0.854094 =      23.2411eV

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
 CPU TIMES  *         0.65      0.02      0.42
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.44 MB (local),      168.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.843D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.705D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 3   5 4 6 2 1 3 5 4 6 2   1 3 5 4 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.167D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 7   9 810 5 4 6 2 1 3 7   9 810 4 5 6 1 2 3 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    147
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0    -74.85349582     -74.85573644   -0.00224062    0.05814890 0.00001524 0.00000000  0.46E-01      0.06
   2    3    3    0    -74.85574686     -74.85574701   -0.00000015    0.00060660 0.00001062 0.00000000  0.34E-03      0.10
   3    6    6    0    -74.85574701     -74.85574701   -0.00000000    0.00000531 0.00000000 0.00000000  0.48E-05      0.16

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.19E-09)
                       Final energy:    -74.85574701
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -74.855747013338
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19469546
 One electron energy                          -103.31606956
 Two electron energy                            28.46032254
 Virial ratio                                    1.99549239
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -74.855747013316
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19469546
 One electron energy                          -103.31606956
 Two electron energy                            28.46032254
 Virial ratio                                    1.99549239
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -74.855747013294
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19469546
 One electron energy                          -103.31606956
 Two electron energy                            28.46032254
 Virial ratio                                    1.99549239
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000432
 !MCSCF expec                      <3.1|LXLX|3.1>     0.999999999749
 
 !MCSCF expec                      <1.1|LYLY|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.999999999749
 !MCSCF expec                      <3.1|LYLY|3.1>     0.000000004551
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.999999999819
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.999999995700
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 5   3 6 4 2 1 3 5 6 4 2   1 3 5 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 7   9 810 5 6 4 2 1 3 9   7 810 5 6 4 2 1 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68646     1  1  s    0.99935
    2.1     2.00000    -1.24776     1  2  s    1.00866
    1.2     1.33333    -0.36925     1  1  pz   0.99687
    2.2     1.33333    -0.36925     1  1  px   0.99687
    3.2     1.33333    -0.36925     1  1  py   0.99687
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 2aa          1.00000000     -0.00000000     -0.00000000
 2 a2a         -0.00000000      1.00000000      0.00001586
 2 aa2          0.00000000     -0.00001586      1.00000000
 
 Energy:      -74.85574701    -74.85574701    -74.85574701
 


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
 CPU TIMES  *         0.82      0.17      0.02      0.42
 REAL TIME  *         1.93 SEC
 DISK USED  *        29.75 MB (local),      169.87 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -74.85574701   2.0
    -74.85574701   2.0
    -74.85574701   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  8
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:        6 conf        6 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       16 conf       48 CSFs

 Number of electrons in valence space:                      6
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -74.85574701
     2       -74.85574701
     3       -74.85574701

 Number of blocks in overlap matrix:    26   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      24

 Number of internal configurations:                    3
 Number of singly external configurations:           648
 Number of doubly external configurations:         23964
 Total number of contracted configurations:        24615
 Total number of uncontracted configurations:      35376

 Diagonal Coupling coefficients finished.               Storage:    174681 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    188411 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -74.85574701     0.00000000    -0.18177784  0.16D-01  0.27D-01     0.02
    1     2     2     1.00000000     0.00000000   -74.85574701    -0.00000000    -0.18188440  0.17D-01  0.27D-01     0.02
    1     3     3     1.00000000     0.00000000   -74.85574701     0.00000000    -0.18195227  0.17D-01  0.27D-01     0.02
    2     1     1     1.03841817    -0.17052231   -75.02626932    -0.17052231    -0.00200176  0.30D-03  0.24D-03     0.05
    2     2     2     1.03844252    -0.17051976   -75.02626677    -0.17051976    -0.00200149  0.30D-03  0.24D-03     0.05
    2     3     3     1.03839150    -0.17051445   -75.02626146    -0.17051445    -0.00201049  0.30D-03  0.24D-03     0.05
    3     1     1     1.04125727    -0.17277486   -75.02852188    -0.00225255    -0.00011996  0.60D-04  0.12D-04     0.09
    3     2     2     1.04125691    -0.17277465   -75.02852166    -0.00225489    -0.00012017  0.60D-04  0.12D-04     0.09
    3     3     3     1.04125275    -0.17277417   -75.02852118    -0.00225973    -0.00012028  0.60D-04  0.12D-04     0.09
    4     1     1     1.04312676    -0.17294810   -75.02869512    -0.00017324    -0.00000978  0.18D-05  0.17D-05     0.11
    4     2     2     1.04312510    -0.17294804   -75.02869505    -0.00017339    -0.00000983  0.18D-05  0.17D-05     0.11
    4     3     3     1.04312394    -0.17294797   -75.02869498    -0.00017380    -0.00000987  0.18D-05  0.17D-05     0.11
    5     1     1     1.04331857    -0.17296060   -75.02870761    -0.00001249    -0.00000068  0.29D-06  0.73D-07     0.14
    5     2     2     1.04331872    -0.17296059   -75.02870761    -0.00001255    -0.00000068  0.29D-06  0.73D-07     0.14
    5     3     3     1.04331856    -0.17296059   -75.02870760    -0.00001262    -0.00000068  0.29D-06  0.74D-07     0.14
    6     1     1     1.04332569    -0.17296139   -75.02870840    -0.00000079    -0.00000004  0.70D-08  0.68D-08     0.18
    6     2     2     1.04332569    -0.17296139   -75.02870840    -0.00000079    -0.00000004  0.71D-08  0.68D-08     0.18
    6     3     3     1.04332566    -0.17296139   -75.02870840    -0.00000080    -0.00000004  0.72D-08  0.69D-08     0.18
    7     1     1     1.04334128    -0.17296144   -75.02870845    -0.00000005    -0.00000000  0.97D-09  0.33D-09     0.21
    7     2     2     1.04334127    -0.17296144   -75.02870845    -0.00000005    -0.00000000  0.98D-09  0.33D-09     0.21
    7     3     3     1.04334125    -0.17296144   -75.02870845    -0.00000005    -0.00000000  0.98D-09  0.34D-09     0.21


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.5%
 S   0.0%   0.0%
 P   4.8%   9.5%  14.3%

 Initialization:   4.8%
 Other:           57.1%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//           0.0000000   0.0000000   0.9790093
 2/2/           0.0000000   0.9790093   0.0000000
 2//2           0.9790093   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.979009
 2           0.000000    0.979009    0.000000
 3           0.979009    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979009    0.000000    0.000000
 2           0.000000    0.979009    0.000000
 3           0.000000    0.000000    0.979009


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97900927 (fixed)   0.97900927 (relaxed)   0.97900927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000    0.00000000
 Singles      0.01749287   -0.04301945   -0.04413314
 Pairs        0.02584841   -0.12994199   -0.12882829
 Total        1.04334128   -0.17296144   -0.17296144
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85574701
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34283431
 One electron energy                 -103.12278147
 Two electron energy                   28.09407302
 Virial quotient                       -0.99583071
 Correlation energy                    -0.17296144
 !MRCI STATE 1.1 Energy               -75.028708449489

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03620482 (Davidson, fixed reference)
 Cluster corrected energies           -75.03620482 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03620482 (Davidson, rotated reference)

 Cluster corrected energies           -75.03245488 (Pople, fixed reference)
 Cluster corrected energies           -75.03245488 (Pople, relaxed reference)
 Cluster corrected energies           -75.03245488 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97900928 (fixed)   0.97900928 (relaxed)   0.97900928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12454414
 Singles      0.01749282   -0.04301940   -0.04413314
 Pairs        0.02584845    0.00000000   -0.00428416
 Total        1.04334127   -0.04301940   -0.17296144
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85574701
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34283287
 One electron energy                 -103.12278077
 Two electron energy                   28.09407232
 Virial quotient                       -0.99583073
 Correlation energy                    -0.17296144
 !MRCI STATE 2.1 Energy               -75.028708449467

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03620482 (Davidson, fixed reference)
 Cluster corrected energies           -75.03620482 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03620482 (Davidson, rotated reference)

 Cluster corrected energies           -75.03245487 (Pople, fixed reference)
 Cluster corrected energies           -75.03245487 (Pople, relaxed reference)
 Cluster corrected energies           -75.03245487 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97900928 (fixed)   0.97900928 (relaxed)   0.97900928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12454414
 Singles      0.01749280   -0.04301940   -0.04413314
 Pairs        0.02584846    0.00000000   -0.00428416
 Total        1.04334125   -0.04301940   -0.17296144
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85574701
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34283231
 One electron energy                 -103.12278032
 Two electron energy                   28.09407187
 Virial quotient                       -0.99583074
 Correlation energy                    -0.17296144
 !MRCI STATE 3.1 Energy               -75.028708449450

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03620481 (Davidson, fixed reference)
 Cluster corrected energies           -75.03620481 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03620481 (Davidson, rotated reference)

 Cluster corrected energies           -75.03245487 (Pople, fixed reference)
 Cluster corrected energies           -75.03245487 (Pople, relaxed reference)
 Cluster corrected energies           -75.03245487 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.24       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.09      0.27      0.17      0.02      0.42
 REAL TIME  *         2.26 SEC
 DISK USED  *        30.40 MB (local),      173.13 MB (total)
 SF USED    *         6.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -75.03620482  AU                              
 SETTING HLSDIAG(2)     =       -75.03620482  AU                              
 SETTING HLSDIAG(3)     =       -75.03620481  AU                              


        HLSDIAG
    -75.03620482
    -75.03620482
    -75.03620481
                                                  


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

 CPU time:      0.18 sec, REAL time:      0.20 sec


 SORTLS1 read      952724. and wrote      952724. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      952724. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    30.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    30.5 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -75.028708    -75.028708    -75.028708
 Replaced energies:    -75.036205    -75.036205    -75.036205



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -75.03620482

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      74.34       0.00      -0.00       0.00      52.57       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      52.57       0.00       0.00       0.00
                          -74.34       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00     -52.57       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -52.57       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      52.57       0.00       0.00       0.00      -0.00       0.00      52.57

    5   2.1  1.0  0.0       0.00      -0.00     -52.57       0.00       0.00       0.00      -0.00      -0.00      52.57
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0      -0.00      52.57       0.00       0.00       0.00       0.00       0.00     -52.57       0.00
                          -52.57       0.00      -0.00      -0.00      -0.00       0.00     -52.57       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      52.57      -0.00     -74.34      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00     -52.57       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      74.34      -0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      52.57       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -52.57       0.00      -0.00       0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by    -75.03620482 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      74.344       0.000      74.344

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000     -74.344       0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -74.344       0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      74.344       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001      -0.000      74.344
                              -74.344       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      74.344       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      74.344       0.000       0.000
                              -74.344       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -74.344       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                                0.000

    2    1  |1 1>+              0.000
                                0.000

    3    1  |1 1>+              0.000
                               -0.000

    1    1  |1 0>               0.000
                                0.000

    2    1  |1 0>             -74.344
                               -0.000

    3    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.001
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -75.03654355    -0.00033873      -74.34      0.00000000        0.00      0.0000
    2   -75.03654355    -0.00033873      -74.34      0.00000000        0.00      0.0000
    3   -75.03654355    -0.00033873      -74.34      0.00000000        0.00      0.0000
    4   -75.03654355    -0.00033873      -74.34      0.00000000        0.00      0.0000
    5   -75.03654355    -0.00033873      -74.34      0.00000000        0.00      0.0000
    6   -75.03586608     0.00033874       74.34      0.00067747      148.69      0.0184
    7   -75.03586608     0.00033874       74.34      0.00067747      148.69      0.0184
    8   -75.03586608     0.00033874       74.34      0.00067747      148.69      0.0184
    9   -75.03552735     0.00067747      148.69      0.00101620      223.03      0.0277

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.77897084  0.00000000  0.00000000 -0.00000000  0.24468871 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.69177895 -0.00000000 -0.00000000 -0.00000000  0.62437868 -0.00000000 -0.00000000
                          -0.00000000  0.14642539 -0.00000000  0.00000000  0.00000000  0.33189268 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.70710438 -0.00000000  0.00000000  0.00000000  0.70710918  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.70710918  0.00000000 -0.00000000  0.00000000  0.70710438  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.63453835 -0.00000000  0.00000000  0.00000000 -0.15673991
                           0.00000000  0.00000000  0.00000000 -0.31203044 -0.00000000 -0.00000000 -0.00000000 -0.68951482

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.17757850  0.00000000  0.00000000 -0.00000000  0.79695104 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.14642583 -0.00000000  0.00000000  0.00000000 -0.33189170  0.00000000 -0.00000000
                          -0.00000000  0.69178101  0.00000000  0.00000000  0.00000000  0.62437682 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.60139031  0.00000000 -0.00000000  0.00000000 -0.55226487 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.63453592 -0.00000000 -0.00000000 -0.00000000  0.15674051
                           0.00000000  0.00000000  0.00000000 -0.31202925 -0.00000000  0.00000000  0.00000000  0.68951746

 State Sym Spin     / Nr.      9

   1    1  |1 1>+         -0.57734899
                           0.00000000

   2    1  |1 1>+         -0.00000000
                          -0.00000000

   3    1  |1 1>+          0.00000000
                           0.00000000

   1    1  |1 0>           0.00000000
                           0.00000000

   2    1  |1 0>           0.00000000
                           0.00000000

   3    1  |1 0>           0.00000000
                           0.57735165

   1    1  |1 1>-          0.00000000
                          -0.00000000

   2    1  |1 1>-         -0.00000000
                           0.57735017

   3    1  |1 1>-          0.00000000
                           0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -75.03654355     -0.00033873      -74.34      0.00000000        0.00      0.0000
     2   1    -75.03654355     -0.00033873      -74.34      0.00000000        0.00      0.0000
     3   1    -75.03654355     -0.00033873      -74.34      0.00000000        0.00      0.0000
     4   1    -75.03654355     -0.00033873      -74.34      0.00000000        0.00      0.0000
     5   1    -75.03654355     -0.00033873      -74.34      0.00000000        0.00      0.0000
     6   1    -75.03586608      0.00033874       74.34      0.00067747      148.69      0.0184
     7   1    -75.03586608      0.00033874       74.34      0.00067747      148.69      0.0184
     8   1    -75.03586608      0.00033874       74.34      0.00067747      148.69      0.0184
     9   1    -75.03552735      0.00067747      148.69      0.00101620      223.03      0.0277

 E0 =    -75.03620482 is the energy of the lowest zeroth-order state
 E1 =    -75.03654355 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.77897084  0.00000000  0.00000000 -0.00000000  0.24468871 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.69177895 -0.00000000 -0.00000000 -0.00000000  0.62437868 -0.00000000 -0.00000000
                               -0.00000000  0.14642539 -0.00000000  0.00000000  0.00000000  0.33189268 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.70710438 -0.00000000  0.00000000  0.00000000  0.70710918  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.70710918  0.00000000 -0.00000000  0.00000000  0.70710438  0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.63453835 -0.00000000  0.00000000  0.00000000 -0.15673991
                                0.00000000  0.00000000  0.00000000 -0.31203044 -0.00000000 -0.00000000 -0.00000000 -0.68951482

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.17757850  0.00000000  0.00000000 -0.00000000  0.79695104 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.14642583 -0.00000000  0.00000000  0.00000000 -0.33189170  0.00000000 -0.00000000
                               -0.00000000  0.69178101  0.00000000  0.00000000  0.00000000  0.62437682 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.60139031  0.00000000 -0.00000000  0.00000000 -0.55226487 -0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.63453592 -0.00000000 -0.00000000 -0.00000000  0.15674051
                                0.00000000  0.00000000  0.00000000 -0.31202925 -0.00000000  0.00000000  0.00000000  0.68951746


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+      -0.57734899
                                0.00000000

  2  1     2    1  |1 1>+      -0.00000000
                               -0.00000000

  3  1     3    1  |1 1>+       0.00000000
                                0.00000000

  4  1     1    1  |1 0>        0.00000000
                                0.00000000

  5  1     2    1  |1 0>        0.00000000
                                0.00000000

  6  1     3    1  |1 0>        0.00000000
                                0.57735165

  7  1     1    1  |1 1>-       0.00000000
                               -0.00000000

  8  1     2    1  |1 1>-      -0.00000000
                                0.57735017

  9  1     3    1  |1 1>-       0.00000000
                                0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        60.68%    0.00%    0.00%    0.00%    5.99%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          3.15%    0.00%    0.00%    0.00%   63.51%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        36.17%    0.00%    0.00%    0.00%   30.50%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+        33.33%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>         33.33%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-        33.33%
  9  1     3    1  |1 1>-         0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.24       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.83      1.72      0.27      0.17      0.02      0.42
 REAL TIME  *         4.10 SEC
 DISK USED  *        30.42 MB (local),      249.15 MB (total)
 SF USED    *         6.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -75.035527348266

              CI           MULTI         RHF-SCF
    -75.02870845    -74.85574701    -74.85867808
 **********************************************************************************************************************************
 Molpro calculation terminated
