
 Working directory              : /wrk/irikura/molpro.7W7wyylPVH/
 Global scratch directory       : /wrk/irikura/molpro.7W7wyylPVH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.7W7wyylPVH/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,B SO-CI
                                                                                 ! Active space (5,5) (all electrons!)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCV5Z-DK
 
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 15-Feb-24          TIME: 17:19:14  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry B      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     110.887 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 20.709 MB, node maximum: 24.904 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2446238. INTEGRALS IN      7 RECORDS. CPU TIME:     0.52 SEC, REAL TIME:     0.56 SEC
 SORT2 READ    12140186. AND WROTE    68575111. INTEGRALS IN    435 RECORDS. CPU TIME:     0.30 SEC, REAL TIME:     0.35 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.336E-05 0.502E-03 0.517E-02 0.996E-02 0.431E-01 0.431E-01 0.431E-01 0.431E-01
         2 0.195E-03 0.195E-03 0.195E-03 0.233E-01 0.233E-01 0.233E-01 0.457E-01 0.457E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.07      2.88
 REAL TIME  *         4.32 SEC
 DISK USED  *        30.07 MB (local),      378.02 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50821889     -24.50821889     0.00D+00     0.30D-01     0     0       0.09      0.16    start
   2      -24.53175593      -0.02353704     0.40D-02     0.53D-02     1     0       0.08      0.24    diag2
   3      -24.53486599      -0.00311006     0.11D-02     0.13D-02     2     0       0.09      0.33    diag2
   4      -24.53581969      -0.00095370     0.59D-03     0.12D-02     3     0       0.09      0.42    diag2
   5      -24.53586346      -0.00004377     0.14D-03     0.35D-03     4     0       0.09      0.51    diag2
   6      -24.53586411      -0.00000065     0.21D-04     0.51D-04     5     0       0.09      0.60    diag2
   7      -24.53586411      -0.00000000     0.17D-05     0.49D-05     6     0       0.09      0.69    diag2
   8      -24.53586411      -0.00000000     0.18D-06     0.57D-06     7     0       0.09      0.78    fixocc
   9      -24.53586411       0.00000000     0.14D-07     0.17D-07     0     0       0.09      0.87    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.535864111306
  RHF One-electron energy             -32.377729328245
  RHF Two-electron energy               7.841865216939
  RHF Kinetic energy                   24.584902589169
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998005341787

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69709     1  1  s    0.99718
    2.1     2.00000    -0.49496     1  2  s    1.00461
    1.2     1.00000    -0.30990     1  1  px   0.99824


 HOMO      1.2    -0.309896 =      -8.4327eV
 LUMO      2.2     0.020023 =       0.5449eV
 LUMO-HOMO         0.329920 =       8.9776eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.91       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.95      0.88      2.88
 REAL TIME  *         5.24 SEC
 DISK USED  *        32.74 MB (local),      391.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:     176 (   85   91)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:              39   (52 determinants, 100 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 5   4 3 2 611 714 81015  13 912 1 3 4 5 2 611   714 8151013 912 2 6
                                        3 4 5 1 71114 81510  13 912 2 6 3 4 5 1 2   6 3 4 511 7 8141015  13 912 1 2 6 4 3 5 1
                                        2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.313D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 3 2 5   6 4 8 910 7 1 2 3 6   5 4 8 910 7 1 2 312  19142117161520131811
                                        6 5 4 810 9 7 2 3 1  19121421171620151318  11 6 5 4 8 910 7 2 3   1 6 5 8 410 9 7 2 3
                                        1 2 3 1 5 6 8 410 9   7 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  443  ( 0 closed/active, 0 closed/virtual, 0 active/active, 443 active/virtual )
 Total number of variables:    599
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6    6    0    -24.46168489     -24.57302219   -0.11133730    0.10379361 0.00018912 0.00000000  0.11E+01      0.25
   2    3    3    0    -24.56571198     -24.56705362   -0.00134164    0.03469402 0.00000225 0.00000000  0.71E-01      0.43
   3    3    3    0    -24.56706105     -24.56706118   -0.00000013    0.00040141 0.00000001 0.00000000  0.60E-03      0.63
   4    6    6    0    -24.56706118     -24.56706118    0.00000000    0.00055475 0.00000000 0.00000000  0.85E-07      0.85

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.27E-07)
                       Final energy:    -24.56706118
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -24.567061184780
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61599755
 One electron energy                           -32.40407253
 Two electron energy                             7.83701135
 Virial ratio                                    1.99801201
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -24.567061184772
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61599755
 One electron energy                           -32.40407253
 Two electron energy                             7.83701135
 Virial ratio                                    1.99801201
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -24.567061184767
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61599755
 One electron energy                           -32.40407253
 Two electron energy                             7.83701135
 Virial ratio                                    1.99801201
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999658763
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000002424189
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999826135
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999870896
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999997618894
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000287821
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000470341
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999956916
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999886043
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 3 5 6 1 4   2 5 3 6 9 712 81415  131011 1 4 2 3 5 6 9   7 8121415101311 4 2
                                        3 5 6 1 9 7 8121514  101311 4 2 3 5 6 1 4   2 3 5 6 9 712 81514  131011 1 4 2 3 5 6 1
                                        4 2 5 3 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 4   6 810 7 9 5 1 3 2 4   610 8 9 7 5 1 3 211  19211314161517201812
                                        4 610 8 9 7 5 1 3 2  11192113161417152018  12 4 610 8 9 7 5 1 3   2 4 6 810 7 9 5 1 3
                                        2 1 3 2 4 610 8 9 7   5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.67846     1  1  s    0.99723
    2.1     1.89142    -0.46937     1  2  s    1.00013
    1.2     0.36953     0.03461     1  1  py   0.99909
    2.2     0.36953     0.03461     1  1  pz   0.99909
    3.2     0.36953     0.03461     1  1  px   0.99909
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 0a0         0.97247507     -0.00056754     -0.00035030
 22 a00         0.00034942     -0.00150074      0.97247408
 22 00a         0.00056808      0.97247398      0.00150054
 20 2a0        -0.16475846      0.00009615      0.00005935
 20 0a2        -0.16475846      0.00009615      0.00005935
 20 a02        -0.00005920      0.00025426     -0.16475829
 20 a20        -0.00005920      0.00025426     -0.16475829
 20 20a        -0.00009624     -0.16475827     -0.00025422
 20 02a        -0.00009624     -0.16475827     -0.00025422
 
 Energy:      -24.56706118    -24.56706118    -24.56706118
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.58       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.89      0.93      0.88      2.88
 REAL TIME  *         6.35 SEC
 DISK USED  *        34.83 MB (local),      401.81 MB (total)
 SF USED    *        12.67 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.56706118   2.0
    -24.56706118   2.0
    -24.56706118   2.0
                                                  


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
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   5

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.56706118
     2       -24.56706118
     3       -24.56706118

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.30D-06
 Number of N-2 electron functions:      65
 Number of N-1 electron functions:      95

 Number of internal configurations:                   39
 Number of singly external configurations:          8369
 Number of doubly external configurations:        503737
 Total number of contracted configurations:       512145
 Total number of uncontracted configurations:     704998

 Diagonal Coupling coefficients finished.               Storage:    182939 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    357234 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.56706118     0.00000000    -0.07566525  0.18D-01  0.15D-02     0.03
    1     2     2     1.00000000     0.00000000   -24.56706118     0.00000000    -0.07572484  0.18D-01  0.15D-02     0.03
    1     3     3     1.00000000     0.00000000   -24.56706118     0.00000000    -0.07572507  0.18D-01  0.15D-02     0.03
    2     1     1     1.02232510    -0.08041936   -24.64748055    -0.08041936    -0.00222372  0.29D-03  0.13D-03     2.07
    2     2     2     1.02239810    -0.08041424   -24.64747543    -0.08041424    -0.00222413  0.30D-03  0.13D-03     2.07
    2     3     3     1.02239809    -0.08041407   -24.64747526    -0.08041407    -0.00222408  0.30D-03  0.13D-03     2.07
    3     1     1     1.02785958    -0.08589930   -24.65296048    -0.00547994    -0.00139556  0.39D-03  0.53D-04     4.05
    3     2     2     1.02785963    -0.08589916   -24.65296034    -0.00548492    -0.00139561  0.39D-03  0.53D-04     4.05
    3     3     3     1.02794098    -0.08589799   -24.65295918    -0.00548392    -0.00139522  0.40D-03  0.52D-04     4.05
    4     1     1     1.02814788    -0.08887445   -24.65593564    -0.00297516    -0.00037483  0.65D-04  0.20D-04     6.04
    4     2     2     1.02813849    -0.08887321   -24.65593440    -0.00297405    -0.00037522  0.66D-04  0.20D-04     6.04
    4     3     3     1.02813835    -0.08887321   -24.65593439    -0.00297522    -0.00037522  0.66D-04  0.20D-04     6.04
    5     1     1     1.02705196    -0.08957885   -24.65664003    -0.00070439    -0.00017637  0.22D-04  0.86D-05     8.03
    5     2     2     1.02707822    -0.08957862   -24.65663980    -0.00070541    -0.00017643  0.22D-04  0.86D-05     8.03
    5     3     3     1.02707812    -0.08957862   -24.65663980    -0.00070541    -0.00017644  0.22D-04  0.86D-05     8.03
    6     1     1     1.02870864    -0.08990800   -24.65696918    -0.00032915    -0.00010707  0.11D-04  0.60D-05     9.98
    6     2     2     1.02869510    -0.08990781   -24.65696899    -0.00032919    -0.00010708  0.11D-04  0.60D-05     9.98
    6     3     3     1.02869493    -0.08990779   -24.65696898    -0.00032918    -0.00010709  0.11D-04  0.60D-05     9.98
    7     1     1     1.02946968    -0.09006036   -24.65712154    -0.00015236    -0.00005923  0.11D-04  0.32D-05    11.94
    7     2     2     1.02946000    -0.09006030   -24.65712149    -0.00015250    -0.00005930  0.11D-04  0.32D-05    11.94
    7     3     3     1.02945997    -0.09006030   -24.65712148    -0.00015251    -0.00005929  0.11D-04  0.32D-05    11.94
    8     1     1     1.02920125    -0.09014907   -24.65721025    -0.00008871    -0.00003129  0.18D-05  0.16D-05    13.92
    8     2     2     1.02921004    -0.09014903   -24.65721021    -0.00008873    -0.00003128  0.18D-05  0.16D-05    13.92
    8     3     3     1.02921000    -0.09014903   -24.65721021    -0.00008873    -0.00003128  0.18D-05  0.16D-05    13.92
    9     1     1     1.02938287    -0.09020037   -24.65726156    -0.00005130    -0.00002226  0.12D-05  0.14D-05    15.93
    9     2     2     1.02938222    -0.09020036   -24.65726155    -0.00005133    -0.00002226  0.12D-05  0.14D-05    15.93
    9     3     3     1.02938215    -0.09020036   -24.65726154    -0.00005133    -0.00002226  0.12D-05  0.14D-05    15.93
   10     1     1     1.02966996    -0.09022988   -24.65729107    -0.00002951    -0.00001515  0.85D-06  0.10D-05    17.92
   10     2     2     1.02966581    -0.09022988   -24.65729107    -0.00002952    -0.00001516  0.84D-06  0.10D-05    17.92
   10     3     3     1.02966579    -0.09022988   -24.65729106    -0.00002952    -0.00001516  0.85D-06  0.10D-05    17.92
   11     1     1     1.02975083    -0.09024952   -24.65731070    -0.00001963    -0.00000945  0.35D-06  0.63D-06    19.91
   11     2     2     1.02975080    -0.09024951   -24.65731070    -0.00001963    -0.00000945  0.35D-06  0.63D-06    19.91
   11     3     3     1.02974982    -0.09024951   -24.65731070    -0.00001963    -0.00000945  0.34D-06  0.63D-06    19.91
   12     1     1     1.02978537    -0.09026186   -24.65732305    -0.00001235    -0.00000701  0.28D-06  0.49D-06    21.86
   12     2     2     1.02978416    -0.09026186   -24.65732304    -0.00001235    -0.00000701  0.28D-06  0.49D-06    21.86
   12     3     3     1.02978534    -0.09026186   -24.65732304    -0.00001235    -0.00000701  0.28D-06  0.49D-06    21.86
   13     1     1     1.02986447    -0.09027077   -24.65733196    -0.00000891    -0.00000498  0.90D-07  0.36D-06    23.81
   13     2     2     1.02986446    -0.09027077   -24.65733195    -0.00000891    -0.00000498  0.90D-07  0.36D-06    23.81
   13     3     3     1.02986527    -0.09027077   -24.65733195    -0.00000891    -0.00000498  0.90D-07  0.36D-06    23.81
   14     1     1     1.02992710    -0.09027685   -24.65733804    -0.00000608    -0.00000350  0.57D-07  0.27D-06    25.75
   14     2     2     1.02992708    -0.09027685   -24.65733803    -0.00000608    -0.00000350  0.56D-07  0.27D-06    25.75
   14     3     3     1.02992744    -0.09027685   -24.65733803    -0.00000608    -0.00000350  0.57D-07  0.27D-06    25.75
   15     1     1     1.02996406    -0.09028089   -24.65734208    -0.00000404    -0.00000256  0.43D-07  0.19D-06    27.70
   15     2     2     1.02996405    -0.09028089   -24.65734208    -0.00000404    -0.00000256  0.43D-07  0.19D-06    27.70
   15     3     3     1.02996373    -0.09028089   -24.65734208    -0.00000404    -0.00000256  0.42D-07  0.19D-06    27.70
   16     1     1     1.02999954    -0.09028405   -24.65734523    -0.00000315    -0.00000194  0.24D-07  0.15D-06    29.62
   16     2     2     1.02999953    -0.09028405   -24.65734523    -0.00000315    -0.00000194  0.24D-07  0.15D-06    29.62
   16     3     3     1.02999949    -0.09028404   -24.65734523    -0.00000315    -0.00000194  0.24D-07  0.15D-06    29.62
   17     1     1     1.03002992    -0.09028629   -24.65734747    -0.00000224    -0.00000139  0.13D-07  0.11D-06    31.56
   17     2     2     1.03002991    -0.09028629   -24.65734747    -0.00000224    -0.00000139  0.13D-07  0.11D-06    31.56
   17     3     3     1.03003005    -0.09028629   -24.65734747    -0.00000224    -0.00000139  0.13D-07  0.11D-06    31.56
   18     1     1     1.03005350    -0.09028785   -24.65734904    -0.00000157    -0.00000105  0.76D-08  0.81D-07    33.55
   18     2     2     1.03005349    -0.09028785   -24.65734904    -0.00000157    -0.00000105  0.77D-08  0.81D-07    33.55
   18     3     3     1.03005349    -0.09028785   -24.65734904    -0.00000157    -0.00000105  0.76D-08  0.81D-07    33.55
   19     1     1     1.03007525    -0.09028909   -24.65735028    -0.00000124    -0.00000080  0.70D-08  0.61D-07    35.63
   19     2     2     1.03007525    -0.09028909   -24.65735028    -0.00000124    -0.00000080  0.70D-08  0.61D-07    35.63
   19     3     3     1.03007519    -0.09028909   -24.65735028    -0.00000124    -0.00000080  0.70D-08  0.61D-07    35.63
   20     1     1     1.03009364    -0.09029000   -24.65735119    -0.00000091    -0.00000059  0.42D-08  0.48D-07    37.69
   20     2     2     1.03009364    -0.09029000   -24.65735119    -0.00000091    -0.00000059  0.42D-08  0.48D-07    37.69
   20     3     3     1.03009365    -0.09029000   -24.65735119    -0.00000091    -0.00000059  0.42D-08  0.48D-07    37.69
   21     1     1     1.03010830    -0.09029065   -24.65735184    -0.00000065    -0.00000044  0.26D-08  0.34D-07    39.74
   21     2     2     1.03010830    -0.09029065   -24.65735184    -0.00000065    -0.00000044  0.26D-08  0.34D-07    39.74
   21     3     3     1.03010832    -0.09029065   -24.65735184    -0.00000065    -0.00000044  0.26D-08  0.34D-07    39.74
   22     1     1     1.03012155    -0.09029118   -24.65735236    -0.00000052    -0.00000035  0.21D-08  0.27D-07    41.79
   22     2     2     1.03012155    -0.09029118   -24.65735236    -0.00000052    -0.00000035  0.21D-08  0.27D-07    41.79
   22     3     3     1.03012153    -0.09029118   -24.65735236    -0.00000052    -0.00000035  0.21D-08  0.27D-07    41.79
   23     1     1     1.03013269    -0.09029156   -24.65735274    -0.00000038    -0.00000026  0.16D-08  0.21D-07    43.74
   23     2     2     1.03013269    -0.09029156   -24.65735274    -0.00000038    -0.00000026  0.16D-08  0.21D-07    43.74
   23     3     3     1.03013268    -0.09029156   -24.65735274    -0.00000038    -0.00000026  0.16D-08  0.21D-07    43.74
   24     1     1     1.03014232    -0.09029184   -24.65735303    -0.00000028    -0.00000019  0.11D-08  0.15D-07    45.68
   24     2     2     1.03014232    -0.09029184   -24.65735303    -0.00000028    -0.00000019  0.11D-08  0.15D-07    45.68
   24     3     3     1.03014232    -0.09029184   -24.65735303    -0.00000028    -0.00000019  0.11D-08  0.15D-07    45.68
   25     1     1     1.03015095    -0.09029207   -24.65735326    -0.00000023    -0.00000016  0.76D-09  0.12D-07    47.63
   25     2     2     1.03015095    -0.09029207   -24.65735326    -0.00000023    -0.00000016  0.76D-09  0.12D-07    47.63
   25     3     3     1.03015095    -0.09029207   -24.65735326    -0.00000023    -0.00000016  0.76D-09  0.12D-07    47.63
   26     1     1     1.03015781    -0.09029224   -24.65735342    -0.00000017    -0.00000011  0.63D-09  0.94D-08    49.57
   26     2     2     1.03015781    -0.09029224   -24.65735342    -0.00000017    -0.00000011  0.63D-09  0.94D-08    49.57
   26     3     3     1.03015780    -0.09029224   -24.65735342    -0.00000017    -0.00000011  0.63D-09  0.95D-08    49.57
   27     1     1     1.03016396    -0.09029236   -24.65735355    -0.00000013    -0.00000009  0.47D-09  0.66D-08    51.50
   27     2     2     1.03016396    -0.09029236   -24.65735355    -0.00000013    -0.00000009  0.47D-09  0.66D-08    51.50
   27     3     3     1.03016396    -0.09029236   -24.65735355    -0.00000013    -0.00000009  0.47D-09  0.66D-08    51.50


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.3%   4.3%  27.8%

 Initialization:   0.0%
 Other:           67.3%

 Total CPU:       51.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/0          -0.0000000  -0.0000000   0.9626798
 2200/          -0.0000000   0.9626798   0.0000000
 22/00           0.9626798   0.0000000   0.0000000
 2002/           0.0000000  -0.1482663  -0.0000000
 20/20          -0.1482663  -0.0000000  -0.0000000
 202/0           0.0000000   0.0000000  -0.1482663
 200/2           0.0000000   0.0000000  -0.1482663
 20/02          -0.1482663  -0.0000000  -0.0000000
 2020/           0.0000000  -0.1482663  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.985040
 2          -0.000000    0.985040    0.000000
 3           0.985040    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.985040    0.000000   -0.000000
 2           0.000000    0.985040    0.000000
 3          -0.000000    0.000000    0.985040


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98503955 (fixed)   0.98525086 (relaxed)   0.98503955 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042909    0.00000000   -0.00003759
 Singles      0.02077967   -0.02554584   -0.02660449
 Pairs        0.00939723   -0.06474653   -0.06365028
 Total        1.03060600   -0.09029236   -0.09029236
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56706118
 Nuclear energy                         0.00000000
 Kinetic energy                        24.70404277
 One electron energy                  -32.33787979
 Two electron energy                    7.68052624
 Virial quotient                       -0.99811006
 Correlation energy                    -0.09029236
 !MRCI STATE 1.2 Energy               -24.657353549288

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.66011704 (Davidson, fixed reference)
 Cluster corrected energies           -24.66007712 (Davidson, relaxed reference)
 Cluster corrected energies           -24.66011704 (Davidson, rotated reference)

 Cluster corrected energies           -24.65873497 (Pople, fixed reference)
 Cluster corrected energies           -24.65871503 (Pople, relaxed reference)
 Cluster corrected energies           -24.65873497 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98503955 (fixed)   0.98525086 (relaxed)   0.98503955 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042909    0.00000000   -0.06286134
 Singles      0.02077967   -0.02554584   -0.02660449
 Pairs        0.00939723   -0.00000000   -0.00082653
 Total        1.03060600   -0.02554584   -0.09029236
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56706118
 Nuclear energy                         0.00000000
 Kinetic energy                        24.70404276
 One electron energy                  -32.33787979
 Two electron energy                    7.68052625
 Virial quotient                       -0.99811006
 Correlation energy                    -0.09029236
 !MRCI STATE 2.2 Energy               -24.657353549263

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.66011704 (Davidson, fixed reference)
 Cluster corrected energies           -24.66007712 (Davidson, relaxed reference)
 Cluster corrected energies           -24.66011704 (Davidson, rotated reference)

 Cluster corrected energies           -24.65873497 (Pople, fixed reference)
 Cluster corrected energies           -24.65871503 (Pople, relaxed reference)
 Cluster corrected energies           -24.65873497 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98503955 (fixed)   0.98525086 (relaxed)   0.98503955 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042909    0.00000000   -0.06286133
 Singles      0.02077968   -0.02554585   -0.02660450
 Pairs        0.00939722   -0.00000000   -0.00082654
 Total        1.03060599   -0.02554585   -0.09029236
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56706118
 Nuclear energy                         0.00000000
 Kinetic energy                        24.70404285
 One electron energy                  -32.33787985
 Two electron energy                    7.68052630
 Virial quotient                       -0.99811005
 Correlation energy                    -0.09029236
 !MRCI STATE 3.2 Energy               -24.657353549119

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.66011704 (Davidson, fixed reference)
 Cluster corrected energies           -24.66007712 (Davidson, relaxed reference)
 Cluster corrected energies           -24.66011704 (Davidson, rotated reference)

 Cluster corrected energies           -24.65873497 (Pople, fixed reference)
 Cluster corrected energies           -24.65871503 (Pople, relaxed reference)
 Cluster corrected energies           -24.65873497 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       13.93       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        56.57     51.68      0.93      0.88      2.88
 REAL TIME  *        60.00 SEC
 DISK USED  *        47.19 MB (local),      463.60 MB (total)
 SF USED    *       121.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.66011704  AU                              
 SETTING HLSDIAG(2)     =       -24.66011704  AU                              
 SETTING HLSDIAG(3)     =       -24.66011704  AU                              


        HLSDIAG
    -24.66011704
    -24.66011704
    -24.66011704
                                                  


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

 Time for Seward_LS:       7.14 sec

       79190047. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19663 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.14 sec, REAL time:      7.41 sec


 SORTLS1 read    80492086. and wrote    80492086. SO integrals in   314 records. CPU time:      0.70 sec, REAL time:      1.28 sec
 SORTLS2 read    80492086. and wrote   406960599. SO integrals in    15 records. CPU time:      1.03 sec, REAL time:      1.75 sec

 FILE SIZES: FILE 1:  1323.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1323.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -24.657354    -24.657354    -24.657354
 Replaced energies:    -24.660117    -24.660117    -24.660117



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.66011704

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       4.88       0.00       0.00       0.00      -4.88

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       4.88
                           -4.88      -0.00      -0.00      -0.00       0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -4.88      -0.00
                           -0.00       0.00      -0.00       4.88       0.00       0.00

    4   1.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.88      -0.00      -4.88      -0.00

    5   2.2  0.5 -0.5       0.00      -0.00      -4.88       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       4.88       0.00       0.00

    6   3.2  0.5 -0.5      -0.00       4.88      -0.00       0.00       0.00       0.00
                            4.88       0.00      -0.00       0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.66016154    -0.00004450       -9.77      0.00000000        0.00      0.0000
     2   -24.66016154    -0.00004450       -9.77      0.00000000        0.00      0.0000
     3   -24.66009479     0.00002225        4.88      0.00006675       14.65      0.0018
     4   -24.66009479     0.00002225        4.88      0.00006675       14.65      0.0018
     5   -24.66009479     0.00002225        4.88      0.00006675       14.65      0.0018
     6   -24.66009479     0.00002225        4.88      0.00006675       14.65      0.0018


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.577352143  -0.000000000   0.029302242   0.751921929   0.262203887   0.177956219
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000000   0.000000003
                         0.577350993   0.000000000  -0.025337778  -0.650190205   0.408113203   0.276984003

    3    3.2  0.5  0.5   0.000000000   0.555925068  -0.097959540   0.003817463  -0.438065058   0.645452922
                         0.000000000   0.155812875  -0.027453522   0.001069859  -0.122769354   0.180890566

    4    1.2  0.5 -0.5  -0.000000000  -0.155814082  -0.202910978   0.007907399  -0.048022632   0.070757408
                         0.000000000   0.555929374   0.724026051  -0.028215146   0.171354144  -0.252476271

    5    2.2  0.5 -0.5  -0.000000000   0.555928267  -0.626068516   0.024397761   0.266708053  -0.392972434
                         0.000000000   0.155813772  -0.175458018   0.006837562   0.074745920  -0.110131977

    6    3.2  0.5 -0.5   0.000000000   0.000000000   0.000000001  -0.000000001   0.000000000   0.000000003
                        -0.577347672   0.000000000   0.003964545   0.101733806   0.670321469   0.454943194


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  33.334%   0.000%   0.086%  56.539%   6.875%   3.167%
    2    2.2  0.5  0.5  33.333%   0.000%   0.064%  42.275%  16.656%   7.672%
    3    3.2  0.5  0.5   0.000%  33.333%   1.035%   0.002%  20.697%  44.933%
    4    1.2  0.5 -0.5   0.000%  33.334%  56.539%   0.086%   3.167%   6.875%
    5    2.2  0.5 -0.5   0.000%  33.333%  42.275%   0.064%   7.672%  16.656%
    6    3.2  0.5 -0.5  33.333%   0.000%   0.002%   1.035%  44.933%  20.697%


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
              1      24     1262.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       13.93       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        72.51     15.90     51.68      0.93      0.88      2.88
 REAL TIME  *        78.28 SEC
 DISK USED  *        47.38 MB (local),        4.55 GB (total)
 SF USED    *         1.26 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -24.660094785435

              CI           MULTI         RHF-SCF
    -24.65735355    -24.56706118    -24.53586411
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
