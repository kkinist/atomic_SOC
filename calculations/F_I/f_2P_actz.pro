
 Working directory              : /wrk/irikura/molpro.wIqg2TuQTf/
 Global scratch directory       : /wrk/irikura/molpro.wIqg2TuQTf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.wIqg2TuQTf/

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
 
 basis=aug-cc-pwCVTZ-DK
 
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:27:10  
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

 Library entry F      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

     2.621 MB (compressed) written to integral file ( 22.1%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


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

         1 0.531E-02 0.200E-01 0.649E-01 0.199E+00 0.237E+00 0.237E+00 0.237E+00 0.237E+00
         2 0.200E-01 0.200E-01 0.200E-01 0.204E+00 0.204E+00 0.204E+00 0.393E+00 0.393E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.67      0.48
 REAL TIME  *         1.66 SEC
 DISK USED  *        29.03 MB (local),      166.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   2

 NELEC=    9   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -99.48186242     -99.48186242     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2      -99.48795421      -0.00609179     0.81D-02     0.77D-02     1     0       0.00      0.01    diag2
   3      -99.48884630      -0.00089209     0.38D-02     0.25D-02     2     0       0.00      0.01    diag2
   4      -99.48891125      -0.00006496     0.44D-03     0.45D-03     3     0       0.01      0.02    diag2
   5      -99.48891862      -0.00000737     0.14D-03     0.21D-03     4     0       0.00      0.02    diag2
   6      -99.48891869      -0.00000007     0.15D-04     0.23D-04     5     0       0.00      0.02    diag2
   7      -99.48891869      -0.00000000     0.16D-05     0.24D-05     6     0       0.00      0.02    diag2
   8      -99.48891869      -0.00000000     0.10D-06     0.11D-06     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   2

 !RHF STATE 1.2 Energy                -99.488918690671
  RHF One-electron energy            -139.339171192045
  RHF Two-electron energy              39.850252501374
  RHF Kinetic energy                  100.044215786173
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.994449483250

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.41235     1  1  s    0.99929
    2.1     2.00000    -1.57834     1  2  s    1.00877
    1.2     2.00000    -0.70578     1  1  px   0.99023
    2.2     2.00000    -0.70578     1  1  py  -0.49137    1  1  pz   0.85972
    3.2     1.00000    -0.83417     1  1  py   0.88940    1  1  pz   0.50834


 HOMO      3.2    -0.834166 =     -22.6988eV
 LUMO      4.2     0.186151 =       5.0654eV
 LUMO-HOMO         1.020317 =      27.7642eV

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
 CPU TIMES  *         0.70      0.03      0.48
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.43 MB (local),      168.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.932D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.702D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 2 5 4 1 6   3 2 5 4 1 6 3 2 5 4   1 6 3 2 5 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.627D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.372D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 110   5 7 6 4 9 8 2 3 110   7 5 6 4 9 8 2 1 3 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    147
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0    -99.48509462     -99.48691789   -0.00182326    0.06559610 0.00000024 0.00000000  0.34E-01      0.07
   2    2    2    0    -99.48691898     -99.48691901   -0.00000003    0.00039912 0.00000005 0.00000000  0.10E-03      0.12
   3    4    4    0    -99.48691901     -99.48691901    0.00000000    0.00028130 0.00000042 0.00000000  0.25E-08      0.18

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.44E-08)
                       Final energy:    -99.48691901
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -99.486919007279
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.04230054
 One electron energy                          -139.34371749
 Two electron energy                            39.85679849
 Virial ratio                                    1.99444853
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -99.486919007272
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.04230054
 One electron energy                          -139.34371750
 Two electron energy                            39.85679849
 Virial ratio                                    1.99444853
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -99.486919007266
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.04230054
 One electron energy                          -139.34371750
 Two electron energy                            39.85679849
 Virial ratio                                    1.99444853
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999968155
 !MCSCF expec                      <2.2|LXLX|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000023343
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999824060
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999997630
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000207785
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999979026
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 5   3 6 4 2 1 3 5 6 4 2   1 5 3 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 9   710 8 5 6 4 2 1 3 7   9 810 5 6 4 2 1 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.41202     1  1  s    0.99929
    2.1     2.00000    -1.57803     1  2  s    1.00863
    1.2     1.66667    -0.59191     1  1  pz   0.99696
    2.2     1.66667    -0.59191     1  1  px   0.99696
    3.2     1.66667    -0.59191     1  1  py   0.99696
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 2a2         -0.00017845      0.00000007      0.99999998
 2 22a          0.00041945      0.99999991     -0.00000000
 2 a22          0.99999990     -0.00041945      0.00017845
 
 Energy:      -99.48691901    -99.48691901    -99.48691901
 


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
 CPU TIMES  *         0.89      0.19      0.03      0.48
 REAL TIME  *         1.93 SEC
 DISK USED  *        29.75 MB (local),      169.88 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.48691901   2.0
    -99.48691901   2.0
    -99.48691901   2.0
                                                  


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
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.48691901
     2       -99.48691901
     3       -99.48691901

 Number of blocks in overlap matrix:    29   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      38
 Number of N-1 electron functions:      16

 Number of internal configurations:                    3
 Number of singly external configurations:           440
 Number of doubly external configurations:         27764
 Total number of contracted configurations:        28207
 Total number of uncontracted configurations:      32500

 Diagonal Coupling coefficients finished.               Storage:    173986 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    188202 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.48691901    -0.00000000    -0.24237741  0.79D-02  0.35D-01     0.01
    1     2     2     1.00000000     0.00000000   -99.48691901    -0.00000000    -0.24258615  0.79D-02  0.35D-01     0.01
    1     3     3     1.00000000     0.00000000   -99.48691901    -0.00000000    -0.24249952  0.79D-02  0.35D-01     0.01
    2     1     1     1.03604475    -0.22175778   -99.70867679    -0.22175778    -0.00272849  0.37D-03  0.27D-03     0.06
    2     2     2     1.03604183    -0.22175675   -99.70867576    -0.22175675    -0.00272829  0.36D-03  0.27D-03     0.06
    2     3     3     1.03605099    -0.22175545   -99.70867446    -0.22175545    -0.00273306  0.37D-03  0.27D-03     0.06
    3     1     1     1.03747249    -0.22460761   -99.71152662    -0.00284983    -0.00010941  0.22D-04  0.16D-04     0.12
    3     2     2     1.03747364    -0.22460745   -99.71152646    -0.00285070    -0.00010950  0.21D-04  0.16D-04     0.12
    3     3     3     1.03747261    -0.22460742   -99.71152643    -0.00285197    -0.00010953  0.22D-04  0.16D-04     0.12
    4     1     1     1.03864073    -0.22474794   -99.71166694    -0.00014033    -0.00000740  0.23D-05  0.77D-06     0.17
    4     2     2     1.03864077    -0.22474793   -99.71166693    -0.00014048    -0.00000741  0.22D-05  0.77D-06     0.17
    4     3     3     1.03864017    -0.22474791   -99.71166691    -0.00014049    -0.00000743  0.23D-05  0.77D-06     0.17
    5     1     1     1.03875742    -0.22475633   -99.71167534    -0.00000840    -0.00000051  0.13D-06  0.48D-07     0.23
    5     2     2     1.03875743    -0.22475633   -99.71167534    -0.00000841    -0.00000051  0.13D-06  0.48D-07     0.23
    5     3     3     1.03875747    -0.22475633   -99.71167534    -0.00000842    -0.00000052  0.13D-06  0.48D-07     0.23
    6     1     1     1.03876977    -0.22475688   -99.71167589    -0.00000055    -0.00000003  0.87D-08  0.24D-08     0.27
    6     2     2     1.03876977    -0.22475688   -99.71167589    -0.00000055    -0.00000003  0.87D-08  0.24D-08     0.27
    6     3     3     1.03876979    -0.22475688   -99.71167589    -0.00000055    -0.00000003  0.87D-08  0.24D-08     0.27
    7     1     1     1.03877511    -0.22475692   -99.71167592    -0.00000003    -0.00000000  0.35D-09  0.18D-09     0.30
    7     2     2     1.03877511    -0.22475692   -99.71167592    -0.00000003    -0.00000000  0.35D-09  0.17D-09     0.30
    7     3     3     1.03877511    -0.22475692   -99.71167592    -0.00000003    -0.00000000  0.35D-09  0.18D-09     0.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.3%
 S   3.3%   0.0%
 P   0.0%   0.0%  16.7%

 Initialization:   3.3%
 Other:           73.3%

 Total CPU:        0.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/22           0.0000000   0.9811586   0.0000000
 222/           0.0000000   0.0000000   0.9811586
 22/2           0.9811586   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.981159
 2           0.981159    0.000000    0.000000
 3           0.000000    0.981159    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981159    0.000000    0.000000
 2           0.000000    0.981159    0.000000
 3           0.000000    0.000000    0.981159


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98115864 (fixed)   0.98115864 (relaxed)   0.98115864 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.00826749   -0.02627719   -0.02708654
 Pairs        0.03050762   -0.19847972   -0.19767037
 Total        1.03877511   -0.22475692   -0.22475692
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.48691901
 Nuclear energy                         0.00000000
 Kinetic energy                       100.24235837
 One electron energy                 -139.07310936
 Two electron energy                   39.36143344
 Virial quotient                       -0.99470601
 Correlation energy                    -0.22475692
 !MRCI STATE 1.2 Energy               -99.711675923597

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72039090 (Davidson, fixed reference)
 Cluster corrected energies           -99.72039090 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72039090 (Davidson, rotated reference)

 Cluster corrected energies           -99.71755997 (Pople, fixed reference)
 Cluster corrected energies           -99.71755997 (Pople, relaxed reference)
 Cluster corrected energies           -99.71755997 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98115864 (fixed)   0.98115864 (relaxed)   0.98115864 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.19107094
 Singles      0.00826748   -0.02627717   -0.02708654
 Pairs        0.03050763    0.00000000   -0.00659943
 Total        1.03877511   -0.02627717   -0.22475692
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.48691901
 Nuclear energy                         0.00000000
 Kinetic energy                       100.24235803
 One electron energy                 -139.07310920
 Two electron energy                   39.36143328
 Virial quotient                       -0.99470601
 Correlation energy                    -0.22475692
 !MRCI STATE 2.2 Energy               -99.711675923596

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72039090 (Davidson, fixed reference)
 Cluster corrected energies           -99.72039090 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72039090 (Davidson, rotated reference)

 Cluster corrected energies           -99.71755997 (Pople, fixed reference)
 Cluster corrected energies           -99.71755997 (Pople, relaxed reference)
 Cluster corrected energies           -99.71755997 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98115864 (fixed)   0.98115864 (relaxed)   0.98115864 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.19107094
 Singles      0.00826748   -0.02627718   -0.02708654
 Pairs        0.03050763    0.00000000   -0.00659944
 Total        1.03877511   -0.02627718   -0.22475692
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.48691901
 Nuclear energy                         0.00000000
 Kinetic energy                       100.24235887
 One electron energy                 -139.07310970
 Two electron energy                   39.36143378
 Virial quotient                       -0.99470600
 Correlation energy                    -0.22475692
 !MRCI STATE 3.2 Energy               -99.711675923592

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72039090 (Davidson, fixed reference)
 Cluster corrected energies           -99.72039090 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72039090 (Davidson, rotated reference)

 Cluster corrected energies           -99.71755997 (Pople, fixed reference)
 Cluster corrected energies           -99.71755997 (Pople, relaxed reference)
 Cluster corrected energies           -99.71755997 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.32       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.25      0.36      0.19      0.03      0.48
 REAL TIME  *         2.35 SEC
 DISK USED  *        30.48 MB (local),      173.55 MB (total)
 SF USED    *         7.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.72039090  AU                              
 SETTING HLSDIAG(2)     =       -99.72039090  AU                              
 SETTING HLSDIAG(3)     =       -99.72039090  AU                              


        HLSDIAG
    -99.72039090
    -99.72039090
    -99.72039090
                                                  


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

         944760. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -99.711676    -99.711676    -99.711676
 Replaced energies:    -99.720391    -99.720391    -99.720391



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.72039090

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00    -128.65      -0.00
                           -0.00      -0.00     128.65       0.00      -0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00     128.65      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00    -128.65

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00
                         -128.65       0.00      -0.00       0.00     128.65      -0.00

    4   1.2  0.5 -0.5       0.00     128.65       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    -128.65

    5   2.2  0.5 -0.5    -128.65      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00    -128.65      -0.00       0.00       0.00

    6   3.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     128.65       0.00     128.65      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -99.72097709    -0.00058619     -128.65      0.00000000        0.00      0.0000
     2   -99.72097709    -0.00058619     -128.65      0.00000000        0.00      0.0000
     3   -99.72097709    -0.00058619     -128.65      0.00000000        0.00      0.0000
     4   -99.72097709    -0.00058619     -128.65      0.00000000        0.00      0.0000
     5   -99.71921852     0.00117237      257.31      0.00175856      385.96      0.0479
     6   -99.71921852     0.00117237      257.31      0.00175856      385.96      0.0479


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.713019255  -0.034369990   0.392818079  -0.052754303   0.000000000  -0.577350141
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000658156  -0.013653712   0.078480650   0.584381113   0.577350482  -0.000000000
                         0.000024669   0.000511760  -0.075154828  -0.559616436  -0.000000129  -0.000000000

    3    3.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.699355896  -0.033711369  -0.416300308   0.055907897  -0.000000000   0.577350184

    4    1.2  0.5 -0.5   0.034345873   0.712518938  -0.038101514  -0.283710761   0.577350141   0.000000000
                        -0.001287332  -0.026706213   0.036486863   0.271687776  -0.000000129  -0.000000000

    5    2.2  0.5 -0.5   0.013663299  -0.000658618   0.809117940  -0.108662140  -0.000000000   0.577350482
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    6    3.2  0.5 -0.5  -0.001262663  -0.026194450  -0.038668007  -0.287928969   0.000000129   0.000000000
                        -0.033687714  -0.698865166  -0.040379180  -0.300670675   0.577350184   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  50.840%   0.118%  15.431%   0.278%   0.000%  33.333%
    2    2.2  0.5  0.5   0.000%   0.019%   1.181%  65.467%  33.333%   0.000%
    3    3.2  0.5  0.5  48.910%   0.114%  17.331%   0.313%   0.000%  33.333%
    4    1.2  0.5 -0.5   0.118%  50.840%   0.278%  15.431%  33.333%   0.000%
    5    2.2  0.5 -0.5   0.019%   0.000%  65.467%   1.181%   0.000%  33.333%
    6    3.2  0.5 -0.5   0.114%  48.910%   0.313%  17.331%  33.333%   0.000%


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

              2       6        1.32       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.95      1.69      0.36      0.19      0.03      0.48
 REAL TIME  *         4.16 SEC
 DISK USED  *        30.50 MB (local),      249.57 MB (total)
 SF USED    *        18.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -99.719218523780

              CI           MULTI         RHF-SCF
    -99.71167592    -99.48691901    -99.48891869
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
