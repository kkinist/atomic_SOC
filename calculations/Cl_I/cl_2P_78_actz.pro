
 Working directory              : /wrk/irikura/molpro.6mo6Qic82Y/
 Global scratch directory       : /wrk/irikura/molpro.6mo6Qic82Y/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.6mo6Qic82Y/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Cl SO-CI
                                                                                 ! active space (7/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Cl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=17,sym=2,spin=1}
 
 {multi
     closed,2,3
     occ,4,9
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! only K-shell uncorrelated
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 14:16:25  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  CL     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
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

     7.078 MB (compressed) written to integral file ( 19.3%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     48 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.210E-02 0.526E-02 0.592E-01 0.138E+00 0.138E+00 0.138E+00 0.138E+00 0.138E+00
         2 0.130E-01 0.130E-01 0.130E-01 0.300E-01 0.300E-01 0.300E-01 0.114E+00 0.114E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.69      0.42
 REAL TIME  *         1.29 SEC
 DISK USED  *        29.14 MB (local),      400.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   5

 NELEC=   17   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -460.88652677    -460.88652677     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2     -460.88950976      -0.00298299     0.31D-02     0.36D-02     1     0       0.00      0.00    diag2
   3     -460.88964245      -0.00013269     0.71D-03     0.70D-03     2     0       0.00      0.00    diag2
   4     -460.88965588      -0.00001343     0.18D-03     0.23D-03     3     0       0.01      0.01    diag2
   5     -460.88965795      -0.00000208     0.40D-04     0.11D-03     4     0       0.00      0.01    diag2
   6     -460.88965809      -0.00000014     0.11D-04     0.33D-04     5     0       0.00      0.01    diag2
   7     -460.88965810      -0.00000000     0.14D-05     0.36D-05     6     0       0.00      0.01    diag2
   8     -460.88965810      -0.00000000     0.13D-06     0.38D-06     7     0       0.00      0.01    fixocc
   9     -460.88965810      -0.00000000     0.73D-08     0.20D-07     0     0       0.01      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.889658095874
  RHF One-electron energy            -636.773116793439
  RHF Two-electron energy             175.883458697565
  RHF Kinetic energy                  469.524509141987
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.981609371017

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26037     1  1  s    0.99881
    2.1     2.00000   -10.67436     1  2  s    1.00085
    3.1     2.00000    -1.07991     1  3  s    1.00781
    1.2     2.00000    -8.07497     1  1  px   0.99745
    2.2     2.00000    -8.07286     1  1  pz   1.00077
    3.2     2.00000    -8.07286     1  1  py   1.00077
    4.2     2.00000    -0.49163     1  2  pz   0.99673
    5.2     2.00000    -0.49163     1  2  py   0.99673
    6.2     1.00000    -0.56900     1  2  px   1.04790


 HOMO      6.2    -0.569003 =     -15.4834eV
 LUMO      7.2     0.106433 =       2.8962eV
 LUMO-HOMO         0.675436 =      18.3796eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.74      0.05      0.42
 REAL TIME  *         2.19 SEC
 DISK USED  *        29.72 MB (local),      407.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.345D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.201D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.954D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.156D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 4 3 2 6 1   5 4 3 2 6 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.147D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.153D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.186D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.179D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.378D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.984D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 3 2 1   3 2 710 9 4 8 6 5 1   3 2 7 910 4 8 5 6 7  10 9 4 8 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    6375
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   29    0   -460.88870541    -460.92627392   -0.03756851    0.05358818 0.00013035 0.00010275  0.18E+01      0.56
   2    9   21    0   -460.92563841    -460.92585681   -0.00021841    0.01205954 0.00008253 0.00000610  0.12E+00      1.25
   3    9   16    0   -460.92585683    -460.92585683   -0.00000000    0.00002083 0.00000000 0.00000001  0.62E-04      1.78

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.27E-08)
                       Final energy:   -460.92585683
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -460.925856827927
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.56316364
 One electron energy                          -636.64655927
 Two electron energy                           175.72070245
 Virial ratio                                    1.98160566
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -460.925856827927
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.56316364
 One electron energy                          -636.64655927
 Two electron energy                           175.72070245
 Virial ratio                                    1.98160566
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -460.925856827921
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.56316364
 One electron energy                          -636.64655928
 Two electron energy                           175.72070245
 Virial ratio                                    1.98160566
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999945544
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999899543
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000154912
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000094839794
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999905216106
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999944100
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999905214662
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.000094884350
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999900988
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 3 4 5 6   2 6 4 5 3 2 5 3 4 6   1 2 5 4 3 6 1 2 5 3   4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 6 9 7 5 4 810 3   2 1 4 5 6 9 7 810 6   7 9 410 8 5 2 3 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26587     1  1  s    0.99881
    2.1     2.00000   -10.67153     1  2  s    1.00017
    3.1     1.99276    -1.09229     1  3  s    0.98684
    4.1     0.00651     0.91799     1  3  s   -0.93292    1  4  s   -1.29990    1  5  s    1.77930    1  6  s    0.38315
    1.2     2.00000    -8.07971     1  1  pz   0.99958
    2.2     2.00000    -8.07971     1  1  py   0.99958
    3.2     2.00000    -8.07971     1  1  px   0.99958
    4.2     1.65963    -0.43071     1  2  pz   0.98795
    5.2     1.65963    -0.43071     1  2  py   0.98795
    6.2     1.65963    -0.43071     1  2  px   0.98795
    7.2     0.00728     0.94073     1  1  px   0.40936    1  3  px  -0.97303    1  4  px   0.88390
    8.2     0.00728     0.94073     1  1  py   0.40936    1  3  py  -0.97303    1  4  py   0.88390
    9.2     0.00728     0.94073     1  1  pz   0.40936    1  3  pz  -0.97303    1  4  pz   0.88390
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 22a000      0.00023167     -0.00031466      0.99276693
 20 2a2000      0.99271993     -0.00966528     -0.00023472
 20 a22000      0.00966536      0.99271991      0.00031239
 
 Energy:     -460.92585683   -460.92585683   -460.92585683
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.92      1.16      0.05      0.42
 REAL TIME  *         4.21 SEC
 DISK USED  *        32.63 MB (local),      442.59 MB (total)
 SF USED    *         9.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -460.9258568   2.0
    -460.9258568   2.0
    -460.9258568   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    15604 conf    64512 CSFs
 N-1 el internal:    15918 conf   111168 CSFs
 N-2 el internal:     9180 conf    96556 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.92585683
     2      -460.92585683
     3      -460.92585683

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.53D-05
 Number of N-2 electron functions:     432
 Number of N-1 electron functions:  111168

 Number of internal configurations:                32480
 Number of singly external configurations:       3447264
 Number of doubly external configurations:        416700
 Total number of contracted configurations:      3896444
 Total number of uncontracted configurations:   95867684

 Diagonal Coupling coefficients finished.               Storage:  15011940 words, CPU-Time:      5.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3894631 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.92585683    -0.00000000    -0.40145212  0.22D-01  0.24D-01     7.27
    1     2     2     1.00000000     0.00000000  -460.92585683    -0.00000000    -0.40148369  0.22D-01  0.24D-01     7.27
    1     3     3     1.00000000     0.00000000  -460.92585683     0.00000000    -0.40140313  0.22D-01  0.24D-01     7.27
    2     1     1     1.04407735    -0.39771244  -461.32356927    -0.39771244    -0.01031331  0.99D-03  0.13D-02    36.00
    2     2     2     1.04410394    -0.39770890  -461.32356573    -0.39770890    -0.01031835  0.98D-03  0.14D-02    36.00
    2     3     3     1.04409614    -0.39770876  -461.32356559    -0.39770876    -0.01031992  0.99D-03  0.13D-02    36.00
    3     1     1     1.05101823    -0.41017296  -461.33602979    -0.01246052    -0.00131489  0.13D-03  0.16D-03    64.71
    3     2     2     1.05102295    -0.41017083  -461.33602766    -0.01246193    -0.00131708  0.13D-03  0.16D-03    64.71
    3     3     3     1.05101676    -0.41017026  -461.33602709    -0.01246150    -0.00131694  0.13D-03  0.16D-03    64.71
    4     1     1     1.05711480    -0.41170453  -461.33756136    -0.00153157    -0.00013235  0.73D-05  0.18D-04    93.44
    4     2     2     1.05711598    -0.41170395  -461.33756077    -0.00153312    -0.00013273  0.73D-05  0.18D-04    93.44
    4     3     3     1.05711567    -0.41170395  -461.33756077    -0.00153369    -0.00013275  0.73D-05  0.18D-04    93.44
    5     1     1     1.05746610    -0.41186558  -461.33772241    -0.00016105    -0.00002326  0.17D-05  0.28D-05   122.13
    5     2     2     1.05746558    -0.41186553  -461.33772236    -0.00016158    -0.00002331  0.17D-05  0.28D-05   122.13
    5     3     3     1.05746630    -0.41186551  -461.33772234    -0.00016157    -0.00002332  0.17D-05  0.29D-05   122.13
    6     1     1     1.05728406    -0.41189466  -461.33775149    -0.00002908    -0.00000330  0.27D-06  0.40D-06   150.53
    6     2     2     1.05728409    -0.41189465  -461.33775147    -0.00002912    -0.00000331  0.27D-06  0.40D-06   150.53
    6     3     3     1.05728388    -0.41189465  -461.33775147    -0.00002913    -0.00000331  0.27D-06  0.40D-06   150.53
    7     1     1     1.05743833    -0.41189835  -461.33775518    -0.00000369    -0.00000053  0.39D-07  0.72D-07   179.05
    7     2     2     1.05743808    -0.41189835  -461.33775517    -0.00000370    -0.00000053  0.39D-07  0.73D-07   179.05
    7     3     3     1.05743806    -0.41189835  -461.33775517    -0.00000370    -0.00000053  0.39D-07  0.73D-07   179.05
    8     1     1     1.05747797    -0.41189895  -461.33775578    -0.00000060    -0.00000011  0.79D-08  0.13D-07   207.77
    8     2     2     1.05747789    -0.41189895  -461.33775578    -0.00000060    -0.00000011  0.80D-08  0.13D-07   207.77
    8     3     3     1.05747787    -0.41189895  -461.33775578    -0.00000060    -0.00000011  0.79D-08  0.13D-07   207.77
    9     1     1     1.05747999    -0.41189907  -461.33775590    -0.00000012    -0.00000002  0.13D-08  0.26D-08   235.82
    9     2     2     1.05747998    -0.41189907  -461.33775590    -0.00000012    -0.00000002  0.13D-08  0.26D-08   235.82
    9     3     3     1.05747999    -0.41189907  -461.33775590    -0.00000012    -0.00000002  0.13D-08  0.26D-08   235.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.2%
 S   2.1%  12.4%
 P   1.0%  66.3%  11.2%

 Initialization:   2.3%
 Other:            2.5%

 Total CPU:      235.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2202222/2000          -0.0000000   0.9652055   0.0000000
 220222/22000           0.9652055   0.0000000  -0.0000000
 22022222/000           0.0000000  -0.0000000   0.9652055

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.972048    0.000000
 2           0.972048    0.000000   -0.000000
 3           0.000000   -0.000000    0.972048

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.972048   -0.000000   -0.000000
 2          -0.000000    0.972048    0.000000
 3          -0.000000    0.000000    0.972048


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97204758 (fixed)   0.97226065 (relaxed)   0.97204758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081267   -0.00648815   -0.31049227
 Singles      0.01713558   -0.08362761   -0.08568603
 Pairs        0.04039113   -0.00000000   -0.01572077
 Total        1.05833938   -0.09011576   -0.41189907
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.92585683
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86357408
 One electron energy                 -636.48536020
 Two electron energy                  175.14760431
 Virial quotient                       -0.98185469
 Correlation energy                    -0.41189907
 !MRCI STATE 1.2 Energy              -461.337755895755

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36178583 (Davidson, fixed reference)
 Cluster corrected energies          -461.36159478 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36178583 (Davidson, rotated reference)

 Cluster corrected energies          -461.35923886 (Pople, fixed reference)
 Cluster corrected energies          -461.35906086 (Pople, relaxed reference)
 Cluster corrected energies          -461.35923886 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97204758 (fixed)   0.97226066 (relaxed)   0.97204758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081268   -0.00648815   -0.31049224
 Singles      0.01713559   -0.08362764   -0.08568602
 Pairs        0.04039110    0.00000000   -0.01572080
 Total        1.05833937   -0.09011579   -0.41189907
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.92585683
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86357440
 One electron energy                 -636.48536054
 Two electron energy                  175.14760465
 Virial quotient                       -0.98185469
 Correlation energy                    -0.41189907
 !MRCI STATE 2.2 Energy              -461.337755895581

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36178583 (Davidson, fixed reference)
 Cluster corrected energies          -461.36159478 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36178583 (Davidson, rotated reference)

 Cluster corrected energies          -461.35923886 (Pople, fixed reference)
 Cluster corrected energies          -461.35906085 (Pople, relaxed reference)
 Cluster corrected energies          -461.35923886 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97204758 (fixed)   0.97226065 (relaxed)   0.97204758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081268   -0.00648815   -0.00644675
 Singles      0.01713561   -0.08362766   -0.08568602
 Pairs        0.04039109   -0.32178330   -0.31976630
 Total        1.05833938   -0.41189910   -0.41189907
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.92585683
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86357496
 One electron energy                 -636.48536073
 Two electron energy                  175.14760483
 Virial quotient                       -0.98185469
 Correlation energy                    -0.41189907
 !MRCI STATE 3.2 Energy              -461.337755895484

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36178583 (Davidson, fixed reference)
 Cluster corrected energies          -461.36159478 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36178583 (Davidson, rotated reference)

 Cluster corrected energies          -461.35923886 (Pople, fixed reference)
 Cluster corrected energies          -461.35906085 (Pople, relaxed reference)
 Cluster corrected energies          -461.35923886 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       91.70       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       248.31    246.37      1.16      0.05      0.42
 REAL TIME  *       257.03 SEC
 DISK USED  *       123.66 MB (local),        1.50 GB (total)
 SF USED    *      1009.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -461.36178583  AU                              
 SETTING HLSDIAG(2)     =      -461.36178583  AU                              
 SETTING HLSDIAG(3)     =      -461.36178583  AU                              


         HLSDIAG
    -461.3617858
    -461.3617858
    -461.3617858
                                                  


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

 Time for Seward_LS:       0.67 sec

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.67 sec, REAL time:      0.69 sec


 SORTLS1 read     2508015. and wrote     2508015. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2508015. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    73.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    73.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -461.337756   -461.337756   -461.337756
 Replaced energies:   -461.361786   -461.361786   -461.361786



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -461.36178583

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00     297.50
                           -0.00       0.00       0.00       0.00    -297.50      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -297.50     297.50       0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00    -297.50      -0.00       0.00
                           -0.00     297.50      -0.00       0.00       0.00      -0.00

    4   1.2  0.5 -0.5      -0.00       0.00    -297.50       0.00       0.00       0.00
                           -0.00    -297.50      -0.00       0.00      -0.00      -0.00

    5   2.2  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00
                          297.50      -0.00      -0.00       0.00       0.00     297.50

    6   3.2  0.5 -0.5     297.50       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -297.50       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.36314134    -0.00135551     -297.50      0.00000000        0.00      0.0000
     2  -461.36314134    -0.00135551     -297.50      0.00000000        0.00      0.0000
     3  -461.36314134    -0.00135550     -297.50      0.00000000        0.00      0.0000
     4  -461.36314134    -0.00135550     -297.50      0.00000000        0.00      0.0000
     5  -461.35907481     0.00271102      595.00      0.00406653      892.50      0.1107
     6  -461.35907481     0.00271102      595.00      0.00406653      892.50      0.1107


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.015242835  -0.672202599   0.136658880  -0.442608796   0.577350090   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.060514449  -0.001450619   0.554486563   0.171321066   0.000000000   0.577350673
                        -0.023615082  -0.000535495  -0.545248786  -0.168349767  -0.000000000   0.000000807

    3    3.2  0.5  0.5  -0.267980314  -0.006076710  -0.234927135  -0.072535564   0.000000000  -0.000000807
                         0.686726980   0.015650553  -0.238888246  -0.073877635  -0.000000026   0.577350045

    4    1.2  0.5 -0.5  -0.244365187  -0.005541214   0.310322220   0.095814379  -0.000000000   0.000000807
                         0.626212416   0.014199964   0.315598900   0.097443595   0.000000000  -0.577350090

    5    2.2  0.5 -0.5  -0.000028484  -0.000000644  -0.000076212  -0.000023534  -0.000000000   0.000000000
                         0.001546040  -0.064958992  -0.240192726   0.777657757   0.577350673  -0.000000000

    6    3.2  0.5 -0.5  -0.016788848   0.737161715   0.103534087  -0.335049775   0.577350045   0.000000026
                        -0.000028472  -0.000000644  -0.000076202  -0.000023531   0.000000000   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.023%  45.186%   1.868%  19.590%  33.333%   0.000%
    2    2.2  0.5  0.5   0.422%   0.000%  60.475%   5.769%   0.000%  33.333%
    3    3.2  0.5  0.5  54.341%   0.028%  11.226%   1.072%   0.000%  33.333%
    4    1.2  0.5 -0.5  45.186%   0.023%  19.590%   1.868%   0.000%  33.333%
    5    2.2  0.5 -0.5   0.000%   0.422%   5.769%  60.475%  33.333%   0.000%
    6    3.2  0.5 -0.5   0.028%  54.341%   1.072%  11.226%  33.333%   0.000%


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
              1      24       70.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       91.70       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       535.46    287.15    246.37      1.16      0.05      0.42
 REAL TIME  *       549.84 SEC
 DISK USED  *       123.69 MB (local),        1.68 GB (total)
 SF USED    *      1009.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -461.359074814098

              CI           MULTI         RHF-SCF
   -461.33775590   -460.92585683   -460.88965810
 **********************************************************************************************************************************
 Molpro calculation terminated
