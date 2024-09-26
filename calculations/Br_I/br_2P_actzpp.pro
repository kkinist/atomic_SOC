
 Working directory              : /wrk/irikura/molpro.5AljXWC0sM/
 Global scratch directory       : /wrk/irikura/molpro.5AljXWC0sM/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.5AljXWC0sM/

 id        : nistki

 Nodes     nprocs
 comp-12     31
 Distribution of processes:   nprocs(total)=   32   nprocs(compute)=   31   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVTZ-PP
 
 rhf
 
 {multi
     closed,6,3;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (2 PROC) 64 bit mpp version                                                            DATE: 07-Jun-24          TIME: 15:40:34  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  31000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Br   ECP ECP10MDF                 selected for group  1
 Library entry BR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  BR     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
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

         1 0.233E-04 0.335E-02 0.179E-01 0.457E-01 0.457E-01 0.457E-01 0.457E-01 0.457E-01
         2 0.878E-02 0.878E-02 0.878E-02 0.168E-01 0.168E-01 0.168E-01 0.174E+00 0.174E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     19.923 MB (compressed) written to integral file ( 22.1%)

     Node minimum: 0.262 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     176802.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     176802      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ    11031004. AND WROTE       33855. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     62 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      175752.  Node maximum:      181110. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.12      0.95
 REAL TIME  *         2.37 SEC
 DISK USED  *        29.18 MB (local),        1.01 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   5

 NELEC=   25   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.48388027    -415.48388027     0.00D+00     0.14D+00     0     0       0.01      0.02    start
   2     -415.48695388      -0.00307361     0.24D-02     0.32D-02     1     0       0.00      0.02    diag2
   3     -415.48709033      -0.00013645     0.67D-03     0.74D-03     2     0       0.00      0.02    diag2
   4     -415.48711098      -0.00002065     0.36D-03     0.19D-03     3     0       0.01      0.03    diag2
   5     -415.48711452      -0.00000354     0.39D-04     0.13D-03     4     0       0.00      0.03    diag2
   6     -415.48711476      -0.00000024     0.12D-04     0.38D-04     5     0       0.01      0.04    diag2
   7     -415.48711477      -0.00000001     0.19D-05     0.76D-05     6     0       0.00      0.04    diag2
   8     -415.48711477      -0.00000000     0.22D-06     0.76D-06     7     0       0.01      0.05    fixocc
   9     -415.48711477      -0.00000000     0.20D-07     0.46D-07     0     0       0.00      0.05    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   5

 !RHF STATE 1.2 Energy               -415.487114765340
  RHF One-electron energy            -729.669812822484
  RHF Two-electron energy             314.182698057144
  RHF Kinetic energy                  295.668709564145
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.405245470100

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.86218     1  1  s    0.99529
    2.1     2.00000    -3.16756     1  1  d0   0.99625
    3.1     2.00000    -3.16380     1  1  d1+  0.99865
    4.1     2.00000    -3.16380     1  1  d1-  0.99560
    5.1     2.00000    -3.15244     1  1  d2-  0.96907
    6.1     2.00000    -3.15244     1  1  d2+  0.96907
    7.1     2.00000    -1.02099     1  2  s    0.97357
    1.2     2.00000    -7.61548     1  1  pz   0.99681
    2.2     2.00000    -7.60545     1  1  px   1.00106
    3.2     2.00000    -7.60545     1  1  py   1.00004
    4.2     2.00000    -0.44325     1  2  px   0.98945
    5.2     2.00000    -0.44325     1  2  py   0.98844
    6.2     1.00000    -0.51224     1  2  pz   1.04900


 HOMO      6.2    -0.512238 =     -13.9387eV
 LUMO      8.1     0.080351 =       2.1865eV
 LUMO-HOMO         0.592589 =      16.1252eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.17      0.05      0.95
 REAL TIME  *         2.73 SEC
 DISK USED  *        30.04 MB (local),        1.04 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.229D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.109D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.478D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.238D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.238D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.823D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 3 5 1 2 4 6 3 5 1   2 4 6 3 5 1 4 6 1 5   3 711 9 81214151310
                                        2 4 6 5 3 1 2
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.445D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.443D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.536D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.666D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 2 1 3   2 1 6 5 4 810 7 9 6   5 4 3 810 7 9 1 2 6   5 4 810 7 9 3 1 2 6
                                        5 410 8 9 7 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    562
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0   -415.48436731    -415.48507613   -0.00070882    0.04625667 0.00001725 0.00000000  0.27E-01      0.24
   2    3    3    0   -415.48507631    -415.48507632   -0.00000000    0.00009290 0.00000000 0.00000000  0.49E-04      0.43

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-08)
                       Final energy:   -415.48507632
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -415.485076315726
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.66716481
 One electron energy                          -729.67008114
 Two electron energy                           314.18500482
 Virial ratio                                    2.40524592
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -415.485076315724
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.66716481
 One electron energy                          -729.67008114
 Two electron energy                           314.18500482
 Virial ratio                                    2.40524592
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -415.485076315724
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.66716481
 One electron energy                          -729.67008114
 Two electron energy                           314.18500482
 Virial ratio                                    2.40524592
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>    -0.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>    -0.000000000000
 
 !MCSCF expec                      <1.2|LZLZ|1.2>    -0.000000000000
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 3 5   2 6 4 1 3 5 6 4 2 1   6 4 3 5 2 1 3 5 6 4   21310 8121415 711 9
                                        3 5 2 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 3   1 2 6 7 9 810 5 4 8  10 5 4 9 7 6 3 2 1 8  10 9 7 6 5 4 2 1 3 8
                                       10 7 9 5 4 6 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.86223     1  1  s    0.99528
    2.1     2.00000    -3.16008     1  1  d2-  1.00005
    3.1     2.00000    -3.16008     1  1  d2+  1.00005
    4.1     2.00000    -3.16008     1  1  d1-  1.00005
    5.1     2.00000    -3.16008     1  1  d1+  1.00005
    6.1     2.00000    -3.16008     1  1  d0   1.00005
    7.1     2.00000    -1.02101     1  2  s    0.97365
    1.2     2.00000    -7.60885     1  1  px   0.99998
    2.2     2.00000    -7.60885     1  1  py   0.99998
    3.2     2.00000    -7.60885     1  1  pz   0.99998
    4.2     1.66667    -0.38717     1  2  px   1.00106
    5.2     1.66667    -0.38717     1  2  py   1.00106
    6.2     1.66667    -0.38717     1  2  pz   1.00106
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 22a          1.00000000      0.00000000     -0.00000000
 2 2a2         -0.00000000     -0.00000000      1.00000000
 2 a22          0.00000000      1.00000000     -0.00000000
 
 Energy:     -415.48507632   -415.48507632   -415.48507632
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.50      0.32      0.05      0.95
 REAL TIME  *         3.58 SEC
 DISK USED  *        34.77 MB (local),        1.18 GB (total)
 SF USED    *        12.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.4850763   2.0
    -415.4850763   2.0
    -415.4850763   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       13 conf       13 CSFs
 N-1 el internal:       91 conf      169 CSFs
 N-2 el internal:      232 conf      962 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  5


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.48507632
     2      -415.48507632
     3      -415.48507632

 Number of blocks in overlap matrix:   434   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     497
 Number of N-1 electron functions:     169

 Number of internal configurations:                    6
 Number of singly external configurations:          7015
 Number of doubly external configurations:        857146
 Total number of contracted configurations:       864167
 Total number of uncontracted configurations:    1660508

 Diagonal Coupling coefficients finished.               Storage:    301205 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    443374 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.48507632    -0.00000000    -0.99742854  0.17D-01  0.98D-01     0.08
    1     2     2     1.00000000     0.00000000  -415.48507632    -0.00000000    -0.99743603  0.17D-01  0.98D-01     0.08
    1     3     3     1.00000000     0.00000000  -415.48507632    -0.00000000    -0.99739850  0.17D-01  0.98D-01     0.08
    2     1     1     1.07879325    -0.82557317  -416.31064948    -0.82557317    -0.01789047  0.14D-02  0.19D-02     1.62
    2     2     2     1.07881038    -0.82556241  -416.31063872    -0.82556241    -0.01790154  0.14D-02  0.19D-02     1.62
    2     3     3     1.07881315    -0.82556222  -416.31063854    -0.82556222    -0.01789901  0.14D-02  0.19D-02     1.62
    3     1     1     1.06674759    -0.84247766  -416.32755398    -0.01690449    -0.00029203  0.14D-04  0.29D-04     3.18
    3     2     2     1.06674970    -0.84247731  -416.32755362    -0.01691490    -0.00029243  0.14D-04  0.29D-04     3.18
    3     3     3     1.06674942    -0.84247723  -416.32755354    -0.01691500    -0.00029250  0.14D-04  0.29D-04     3.18
    4     1     1     1.06604443    -0.84276385  -416.32784017    -0.00028619    -0.00000793  0.89D-06  0.51D-06     4.74
    4     2     2     1.06604432    -0.84276385  -416.32784017    -0.00028655    -0.00000794  0.89D-06  0.51D-06     4.74
    4     3     3     1.06604414    -0.84276384  -416.32784016    -0.00028662    -0.00000795  0.89D-06  0.51D-06     4.74
    5     1     1     1.06606912    -0.84277152  -416.32784784    -0.00000767    -0.00000025  0.40D-07  0.15D-07     6.32
    5     2     2     1.06606913    -0.84277152  -416.32784784    -0.00000767    -0.00000025  0.40D-07  0.15D-07     6.32
    5     3     3     1.06606923    -0.84277152  -416.32784784    -0.00000768    -0.00000025  0.40D-07  0.15D-07     6.32
    6     1     1     1.06606231    -0.84277177  -416.32784809    -0.00000025    -0.00000001  0.86D-09  0.82D-09     7.88
    6     2     2     1.06606231    -0.84277177  -416.32784809    -0.00000025    -0.00000001  0.86D-09  0.82D-09     7.88
    6     3     3     1.06606232    -0.84277177  -416.32784809    -0.00000025    -0.00000001  0.86D-09  0.82D-09     7.88


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.0%   0.3%
 P   0.6%  26.9%  10.9%

 Initialization:   0.9%
 Other:           60.2%

 Total CPU:        7.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2           0.0000000   0.9685192   0.0000000
 2222222222/22           0.9685192   0.0000000   0.0000000
 222222222222/           0.0000000   0.0000000   0.9685192

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.968519
 2           0.000000    0.968519    0.000000
 3           0.968519    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968519    0.000000    0.000000
 2           0.000000    0.968519    0.000000
 3           0.000000    0.000000    0.968519


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96851916 (fixed)   0.96851916 (relaxed)   0.96851916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000224    0.00000000   -0.00000177
 Singles      0.00762566   -0.02530147   -0.02976341
 Pairs        0.05843680   -0.81747030   -0.81300659
 Total        1.06606470   -0.84277177   -0.84277177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48507632
 Nuclear energy                         0.00000000
 Kinetic energy                       295.72171943
 One electron energy                 -728.83113765
 Two electron energy                  312.50328956
 Virial quotient                       -1.40783656
 Correlation energy                    -0.84277177
 !MRCI STATE 1.2 Energy              -416.327848086077

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38352555 (Davidson, fixed reference)
 Cluster corrected energies          -416.38352555 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38352555 (Davidson, rotated reference)

 Cluster corrected energies          -416.38183914 (Pople, fixed reference)
 Cluster corrected energies          -416.38183914 (Pople, relaxed reference)
 Cluster corrected energies          -416.38183914 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96851917 (fixed)   0.96851917 (relaxed)   0.96851917 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000224    0.00000000   -0.76681292
 Singles      0.00762566   -0.02530147   -0.02976341
 Pairs        0.05843680    0.00000000   -0.04619544
 Total        1.06606470   -0.02530147   -0.84277177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48507632
 Nuclear energy                         0.00000000
 Kinetic energy                       295.72171978
 One electron energy                 -728.83113795
 Two electron energy                  312.50328987
 Virial quotient                       -1.40783656
 Correlation energy                    -0.84277177
 !MRCI STATE 2.2 Energy              -416.327848086074

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38352555 (Davidson, fixed reference)
 Cluster corrected energies          -416.38352555 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38352555 (Davidson, rotated reference)

 Cluster corrected energies          -416.38183914 (Pople, fixed reference)
 Cluster corrected energies          -416.38183914 (Pople, relaxed reference)
 Cluster corrected energies          -416.38183914 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96851916 (fixed)   0.96851916 (relaxed)   0.96851916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000224    0.00000000   -0.76681289
 Singles      0.00762568   -0.02530150   -0.02976342
 Pairs        0.05843679   -0.00000000   -0.04619546
 Total        1.06606471   -0.02530150   -0.84277177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48507632
 Nuclear energy                         0.00000000
 Kinetic energy                       295.72171621
 One electron energy                 -728.83113704
 Two electron energy                  312.50328896
 Virial quotient                       -1.40783657
 Correlation energy                    -0.84277177
 !MRCI STATE 3.2 Energy              -416.327848086067

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38352556 (Davidson, fixed reference)
 Cluster corrected energies          -416.38352556 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38352556 (Davidson, rotated reference)

 Cluster corrected energies          -416.38183915 (Pople, fixed reference)
 Cluster corrected energies          -416.38183915 (Pople, relaxed reference)
 Cluster corrected energies          -416.38183915 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       20.98       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.72      8.22      0.32      0.05      0.95
 REAL TIME  *        14.83 SEC
 DISK USED  *        54.97 MB (local),        1.80 GB (total)
 SF USED    *       214.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.38352555  AU                              
 SETTING HLSDIAG(2)     =      -416.38352555  AU                              
 SETTING HLSDIAG(3)     =      -416.38352556  AU                              


         HLSDIAG
    -416.3835256
    -416.3835255
    -416.3835256
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.327848   -416.327848   -416.327848
 Replaced energies:   -416.383526   -416.383526   -416.383526



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.38352556

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00   -1228.27
                            0.00    1228.27       0.00      -0.00      -0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00
                        -1228.27       0.00      -0.00       0.00       0.00    1228.27

    3   3.2  0.5  0.5       0.00       0.00       0.00    1228.27      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1228.27      -0.00

    4   1.2  0.5 -0.5      -0.00       0.00    1228.27       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00   -1228.27      -0.00

    5   2.2  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00    1228.27    1228.27      -0.00       0.00

    6   3.2  0.5 -0.5   -1228.27       0.00      -0.00       0.00       0.00       0.00
                            0.00   -1228.27       0.00       0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.38912195    -0.00559640    -1228.27      0.00000000        0.00      0.0000
     2  -416.38912195    -0.00559640    -1228.27      0.00000000        0.00      0.0000
     3  -416.38912195    -0.00559639    -1228.27      0.00000001        0.00      0.0000
     4  -416.38912195    -0.00559639    -1228.27      0.00000001        0.00      0.0000
     5  -416.37233275     0.01119280     2456.54      0.01678920     3684.80      0.4569
     6  -416.37233275     0.01119280     2456.54      0.01678920     3684.80      0.4569


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.424584996   0.258357319  -0.255370369   0.595341620  -0.577350333   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.266965710  -0.162446967  -0.297363629   0.693239962   0.577350431   0.000000000

    3    3.2  0.5  0.5  -0.414884579   0.681822246  -0.097799327  -0.041950788  -0.000000000   0.574384326
                        -0.070336578   0.115591290  -0.004405641  -0.001889789   0.000000000   0.058444153

    4    1.2  0.5 -0.5   0.254722707  -0.418611866  -0.594738474  -0.255111651  -0.000000000   0.574384614
                         0.043183875  -0.070968476  -0.026791638  -0.011492209  -0.000000000   0.058444182

    5    2.2  0.5 -0.5  -0.027152664   0.044622749  -0.031197271  -0.013381995  -0.000000000  -0.058444192
                         0.160161637  -0.263209993   0.692537634   0.297062368   0.000000000   0.574384711

    6    3.2  0.5 -0.5   0.691551098   0.420804525   0.041993332  -0.097898509   0.577350044  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  18.027%   6.675%   6.521%  35.443%  33.333%   0.000%
    2    2.2  0.5  0.5   7.127%   2.639%   8.843%  48.058%  33.333%   0.000%
    3    3.2  0.5  0.5  17.708%  47.824%   0.958%   0.176%   0.000%  33.333%
    4    1.2  0.5 -0.5   6.675%  18.027%  35.443%   6.521%   0.000%  33.333%
    5    2.2  0.5 -0.5   2.639%   7.127%  48.058%   8.843%   0.000%  33.333%
    6    3.2  0.5 -0.5  47.824%  17.708%   0.176%   0.958%  33.333%   0.000%


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
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       20.98       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.37      6.65      8.22      0.32      0.05      0.95
 REAL TIME  *        23.08 SEC
 DISK USED  *        54.97 MB (local),        1.80 GB (total)
 SF USED    *       214.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -416.372332754055

              CI           MULTI         RHF-SCF
   -416.32784809   -415.48507632   -415.48711477
 **********************************************************************************************************************************
 Molpro calculation terminated
