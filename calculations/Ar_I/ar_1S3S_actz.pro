
 Working directory              : /wrk/irikura/molpro.g5gUQl4XYh/
 Global scratch directory       : /wrk/irikura/molpro.g5gUQl4XYh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.g5gUQl4XYh/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ar SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ar};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=17,sym=1,spin=1}
 
 {multi
     closed,2,3
     occ,4,9
     wf,nelec=18,sym=1,spin=0;state,1;
     wf,nelec=18,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=0;state,1; save,5201.2}
 hlsdiag(1) = energd
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(2) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ar SO-                                                                        
  64 bit mpp version                                                                     DATE: 28-Feb-24          TIME: 11:19:34  
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

 Library entry AR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AR     18.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   18
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

     10.224 MB (compressed) written to integral file ( 23.9%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.08 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.199E-02 0.513E-02 0.590E-01 0.129E+00 0.129E+00 0.129E+00 0.129E+00 0.129E+00
         2 0.126E-01 0.126E-01 0.126E-01 0.298E-01 0.298E-01 0.298E-01 0.113E+00 0.113E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.73      1.35
 REAL TIME  *         2.51 SEC
 DISK USED  *        29.05 MB (local),      995.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   2   6

 NELEC=   17   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -527.33573427    -527.33573427     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2     -527.39152988      -0.05579561     0.13D-01     0.18D-01     1     0       0.01      0.01    diag2
   3     -527.39350046      -0.00197058     0.48D-02     0.32D-02     2     0       0.00      0.01    diag2
   4     -527.39356016      -0.00005970     0.50D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -527.39356303      -0.00000288     0.74D-04     0.21D-03     4     0       0.01      0.02    diag2
   6     -527.39356306      -0.00000003     0.64D-05     0.11D-04     5     0       0.00      0.02    diag2
   7     -527.39356306      -0.00000000     0.58D-06     0.19D-05     6     0       0.00      0.02    diag2
   8     -527.39356306       0.00000000     0.33D-07     0.69D-07     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   3   6
 Final beta  occupancy:   2   6

 !RHF STATE 1.1 Energy               -527.393563061037
  RHF One-electron energy            -720.546925087996
  RHF Two-electron energy             193.153362026959
  RHF Kinetic energy                  538.353517247656
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.979641715275

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.67597     1  1  s    0.99848
    2.1     2.00000   -12.97214     1  2  s    0.99904
    3.1     1.00000    -1.82902     1  3  s    1.12555
    1.2     2.00000   -10.15460     1  1  px   1.00070
    2.2     2.00000   -10.15460     1  1  py   1.00063
    3.2     2.00000   -10.15460     1  1  pz   1.00063
    4.2     2.00000    -1.03123     1  2  pz   1.08893
    5.2     2.00000    -1.03123     1  2  px   1.08894
    6.2     2.00000    -1.03123     1  2  py   1.08893


 HOMO      6.2    -1.031226 =     -28.0611eV
 LUMO      4.1    -0.113559 =      -3.0901eV
 LUMO-HOMO         0.917668 =      24.9710eV

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
 CPU TIMES  *         1.76      0.02      1.35
 REAL TIME  *         2.56 SEC
 DISK USED  *        29.60 MB (local),     1012.41 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 3 5 2 1   2 4 6 3 5 6 4 3 5 2   1 2 6 4 5 3 1 2 6 4   5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.111D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.244D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.538D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.249D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.111D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.944D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.903D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 9 7 6 810 4 5 3   1 210 8 6 9 7 5 410   8 5 4 7 9 6 3 1 2 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000
 Weight factors for state symmetry  2:    0.50000
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    4511
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   29    0   -528.38158835    -528.39733062   -0.01574227    0.20581829 0.00032801 0.00019460  0.71E+00      0.49
   2    7   28    0   -528.39744240    -528.39744650   -0.00000411    0.00365409 0.00000345 0.00000182  0.79E-02      1.99
   3    5   16    0   -528.39744650    -528.39744650   -0.00000000    0.00000168 0.00000000 0.00000000  0.47E-04      2.36

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.12E-08)
                       Final energy:   -528.39744650
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -528.629459906687
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.93495699
 One electron energy                          -730.89436692
 Two electron energy                           202.26490701
 Virial ratio                                    1.97906137
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -528.165433100322
 Nuclear energy                                  0.00000000
 Kinetic energy                                538.93720867
 One electron energy                          -725.26225189
 Two electron energy                           197.09681879
 Virial ratio                                    1.98001293
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 6 2 1   2 6 4 5 3 6 4 3 5 2   1 2 6 4 5 3 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 2 1 1   2 3 9 7 6 810 5 4 1   2 310 8 6 9 7 5 410   8 5 4 7 9 6 3 1 2 3
                                        2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.24720     1  1  s    0.99850
    2.1     2.00000   -12.55984     1  2  s    1.00161
    3.1     1.99567    -1.40061     1  3  s    1.04449
    4.1     0.00519     0.61040     1  2  s   -0.27669    1  3  s   -1.63162    1  4  s   -0.50103    1  5  s    1.90983
                                    1  8  s    0.30853
    1.2     2.00000    -9.72720     1  1  px   0.99983
    2.2     2.00000    -9.72720     1  1  py   0.99983
    3.2     2.00000    -9.72720     1  1  pz   0.99983
    4.2     1.82975    -0.66535     1  2  px   1.04122
    5.2     1.82975    -0.66535     1  2  py   1.04122
    6.2     1.82975    -0.66535     1  2  pz   1.04122
    7.2     0.16996     0.12469     1  2  pz  -0.46688    1  7  pz   1.04079
    8.2     0.16996     0.12469     1  2  py  -0.46688    1  7  py   1.04079
    9.2     0.16996     0.12469     1  2  px  -0.46688    1  7  px   1.04079
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 222000      0.99359530
 
 Energy:     -528.62945991
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 20 22aa00      0.57363701
 20 2a20a0      0.57363701
 20 a2200a      0.57363701
 aa 222000      0.05517303
 
 Energy:     -528.16543310
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.94      1.18      0.02      1.35
 REAL TIME  *         5.17 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *         9.09 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -528.6294599  -0.0
    -528.1654331  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 18
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    13011 conf    32004 CSFs
 N-1 el internal:    15604 conf    64512 CSFs
 N-2 el internal:    10878 conf    69696 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.62945991

 Number of blocks in overlap matrix:    62   Smallest eigenvalue:  0.21D-03
 Number of N-2 electron functions:     144
 Number of N-1 electron functions:   64512

 Number of internal configurations:                16212
 Number of singly external configurations:       2000768
 Number of doubly external configurations:        138900
 Total number of contracted configurations:      2155880
 Total number of uncontracted configurations:   68768804

 Diagonal Coupling coefficients finished.               Storage: 5174467 words, CPU-Time:      0.21 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  732603 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.62945991     0.00000000    -0.49203777  0.16D-01  0.46D-01     0.84
    2     1     1     1.05686636    -0.47020946  -529.09966937    -0.47020946    -0.00789103  0.10D-02  0.88D-03     4.00
    3     1     1     1.05930428    -0.47818222  -529.10764213    -0.00797276    -0.00044772  0.24D-04  0.70D-04     7.01
    4     1     1     1.06209741    -0.47869683  -529.10815674    -0.00051461    -0.00002862  0.12D-05  0.46D-05     9.97
    5     1     1     1.06241079    -0.47873089  -529.10819079    -0.00003405    -0.00000224  0.82D-07  0.38D-06    12.90
    6     1     1     1.06234468    -0.47873349  -529.10819340    -0.00000261    -0.00000015  0.72D-08  0.23D-07    15.80
    7     1     1     1.06233476    -0.47873366  -529.10819356    -0.00000016    -0.00000001  0.50D-09  0.18D-08    18.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.0%
 S   4.7%  17.0%
 P   2.1%  60.3%   6.5%

 Initialization:   2.2%
 Other:            2.2%

 Total CPU:       18.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222222000           0.9666373


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96973382 (fixed)   0.97020978 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00099872   -0.00027613   -0.00070925
 Singles      0.00954338   -0.04312987   -0.04485555
 Pairs        0.05285364   -0.43532770   -0.43316886
 Total        1.06339574   -0.47873370   -0.47873366
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.62945991
 Nuclear energy                         0.00000000
 Kinetic energy                       540.06537976
 One electron energy                 -730.44157861
 Two electron energy                  201.33338505
 Virial quotient                       -0.97971137
 Correlation energy                    -0.47873366
 !MRCI STATE 1.1 Energy              -529.108193562212

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -529.13854324 (Davidson, fixed reference)
 Cluster corrected energies          -529.13804387 (Davidson, relaxed reference)

 Cluster corrected energies          -529.13606171 (Pople, fixed reference)
 Cluster corrected energies          -529.13558114 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       17.47       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        22.26     19.29      1.18      0.02      1.35
 REAL TIME  *        25.43 SEC
 DISK USED  *        49.37 MB (local),        1.57 GB (total)
 SF USED    *       255.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -529.13804387  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 18
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    12717 conf    50904 CSFs
 N-1 el internal:    15304 conf   114396 CSFs
 N-2 el internal:    10058 conf   130322 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.16543310

 Number of blocks in overlap matrix:    62   Smallest eigenvalue:  0.20D-03
 Number of N-2 electron functions:     144
 Number of N-1 electron functions:  114396

 Number of internal configurations:                25428
 Number of singly external configurations:       3547092
 Number of doubly external configurations:        138900
 Total number of contracted configurations:      3711420
 Total number of uncontracted configurations:  128083055

 Diagonal Coupling coefficients finished.               Storage: 7814775 words, CPU-Time:      0.44 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1922796 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.16543310    -0.00000000    -0.49333907  0.27D-01  0.49D-01     1.05
    2     1     1     1.06422272    -0.45504365  -528.62047675    -0.45504365    -0.00727176  0.95D-03  0.98D-03     6.61
    3     1     1     1.05905577    -0.46242248  -528.62785558    -0.00737883    -0.00033587  0.18D-04  0.66D-04    12.15
    4     1     1     1.06110124    -0.46284613  -528.62827923    -0.00042366    -0.00002769  0.17D-05  0.48D-05    17.65
    5     1     1     1.06143454    -0.46287525  -528.62830836    -0.00002912    -0.00000164  0.61D-07  0.32D-06    23.10
    6     1     1     1.06140824    -0.46287691  -528.62831001    -0.00000165    -0.00000012  0.35D-08  0.26D-07    28.62
    7     1     1     1.06139538    -0.46287702  -528.62831012    -0.00000011    -0.00000001  0.35D-09  0.16D-08    34.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.1%
 S   3.2%  18.0%
 P   1.3%  64.8%   6.2%

 Initialization:   1.8%
 Other:            1.6%

 Total CPU:       34.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22022222//00           0.5566859
 2202222/20/0           0.5566857
 220222/2200/           0.5566857
 2//222222000           0.0504518


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97059621 (fixed)   0.97063511 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010506   -0.00038956   -0.00041280
 Singles      0.01814236   -0.06295292   -0.06721684
 Pairs        0.04325947   -0.39953454   -0.39524739
 Total        1.06150689   -0.46287703   -0.46287702
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16543310
 Nuclear energy                         0.00000000
 Kinetic energy                       539.57710222
 One electron energy                 -725.34320273
 Two electron energy                  196.71489261
 Virial quotient                       -0.97970857
 Correlation energy                    -0.46287702
 !MRCI STATE 1.1 Energy              -528.628310121068

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.65678025 (Davidson, fixed reference)
 Cluster corrected energies          -528.65674086 (Davidson, relaxed reference)

 Cluster corrected energies          -528.65382154 (Pople, fixed reference)
 Cluster corrected energies          -528.65378466 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       46.25       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        57.30     35.02     19.29      1.18      0.02      1.35
 REAL TIME  *        61.84 SEC
 DISK USED  *        78.15 MB (local),        2.41 GB (total)
 SF USED    *       433.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -528.65674086  AU                              


         HLSDIAG
    -529.1380439
    -528.6567409
                                                  

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

 Time for Seward_LS:       0.71 sec

 CPU time:      0.72 sec, REAL time:      0.75 sec


 SORTLS1 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.09 sec
 SORTLS2 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.00 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       46.25       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        58.60      1.24     35.02     19.29      1.18      0.02      1.35
 REAL TIME  *        64.29 SEC
 DISK USED  *        78.18 MB (local),        2.68 GB (total)
 SF USED    *       433.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:   -529.108194
 Replaced energies:   -529.138044

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -528.628310
 Replaced energies:   -528.656741



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -529.13804387

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00

    2   1.1  1.0  1.0      -0.00  105633.80      -0.00       0.00
                            0.00       0.00      -0.00       0.00

    3   1.1  1.0  0.0       0.00      -0.00  105633.80      -0.00
                           -0.00       0.00       0.00      -0.00

    4   1.1  1.0 -1.0      -0.00       0.00      -0.00  105633.80
                           -0.00      -0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  4)

    The diagonal matrixelements are shifted by   -529.13804387 a.u.

  State Sym Spin    / Nr.        1           2           3           4

    1    1  |0 0>               0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

    1    1  |1 1>+             -0.000  105633.801      -0.000       0.000
                                0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000  105633.801       0.000
                               -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000  105633.801
                                0.000       0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -529.13804387     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -528.65674086     0.48130301   105633.80      0.48130301   105633.80     13.0969
    3  -528.65674086     0.48130301   105633.80      0.48130301   105633.80     13.0969
    4  -528.65674086     0.48130301   105633.80      0.48130301   105633.80     13.0969

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4

   1    1  |0 0>           1.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.95267064 -0.26380530 -0.15094029
                          -0.00000000 -0.00258512 -0.00375685 -0.00465253

   1    1  |1 0>           0.00000000  0.01496587  0.02174935  0.02693463
                           0.00000000  0.12298488 -0.11829785  0.98461051

   1    1  |1 1>-          0.00000000  0.01571571  0.02283906  0.02828414
                          -0.00000000  0.27715650  0.95676727  0.07881664


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -529.13804387      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -528.65674086      0.48130301   105633.80      0.48130301   105633.80     13.0969
     3   1   -528.65674086      0.48130301   105633.80      0.48130301   105633.80     13.0969
     4   1   -528.65674086      0.48130301   105633.80      0.48130301   105633.80     13.0969

 E0 =   -529.13804387 is the energy of the lowest zeroth-order state
 E1 =   -529.13804387 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4

  1  1     1    1  |0 0>        1.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.95267064 -0.26380530 -0.15094029
                               -0.00000000 -0.00258512 -0.00375685 -0.00465253

  3  1     1    1  |1 0>        0.00000000  0.01496587  0.02174935  0.02693463
                                0.00000000  0.12298488 -0.11829785  0.98461051

  4  1     1    1  |1 1>-       0.00000000  0.01571571  0.02283906  0.02828414
                               -0.00000000  0.27715650  0.95676727  0.07881664



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   90.76%    6.96%    2.28%
  3  1     1    1  |1 0>          0.00%    1.53%    1.45%   97.02%
  4  1     1    1  |1 1>-         0.00%    7.71%   91.59%    0.70%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       46.25       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        99.98     41.37      1.24     35.02     19.29      1.18      0.02      1.35
 REAL TIME  *       107.00 SEC
 DISK USED  *        78.18 MB (local),        2.68 GB (total)
 SF USED    *       433.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -528.656740860009

              CI              CI           MULTI         RHF-SCF
   -528.62831012   -529.10819356   -528.16543310   -527.39356306
 **********************************************************************************************************************************
 Molpro calculation terminated
