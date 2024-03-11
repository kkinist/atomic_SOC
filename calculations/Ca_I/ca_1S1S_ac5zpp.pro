
 Working directory              : /wrk/irikura/molpro.dmkzQtJbWX/
 Global scratch directory       : /wrk/irikura/molpro.dmkzQtJbWX/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.dmkzQtJbWX/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,1,3
     occ,3,3
     wf,sym=1,spin=0;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ca SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 12:22:16  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ca   ECP ECP10MDF                 selected for group  1
 Library entry CA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  CA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         361
 NUMBER OF SYMMETRY AOS:          267
 NUMBER OF CONTRACTIONS:          218   (  106Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7
                                        8 9101112131415 7 8   9101112131415 7 8 9  101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.735E-04 0.735E-04 0.735E-04 0.735E-04 0.735E-04 0.153E-03 0.325E-03 0.471E-03
         2 0.186E-03 0.186E-03 0.186E-03 0.553E-03 0.553E-03 0.553E-03 0.553E-03 0.553E-03


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     249.299 MB (compressed) written to integral file ( 12.5%)

     Node minimum: 5.243 MB, node maximum: 11.272 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4776030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4776030      RECORD LENGTH: 524288

 Memory used in sort:       5.33 MW

 SORT1 READ   248856419. AND WROTE      836326. INTEGRALS IN      3 RECORDS. CPU TIME:     1.56 SEC, REAL TIME:     1.62 SEC
 SORT2 READ    25623847. AND WROTE   143766176. INTEGRALS IN    930 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.12 SEC

 Node minimum:     4775631.  Node maximum:     4798573. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.63      4.30
 REAL TIME  *         5.55 SEC
 DISK USED  *        30.15 MB (local),        1.39 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -35.90344574     -35.90344574     0.00D+00     0.20D+00     0     0       0.03      0.06    start
   2      -36.34607271      -0.44262698     0.24D-01     0.14D+00     1     0       0.03      0.09    diag
   3      -36.43296522      -0.08689251     0.62D-02     0.48D-01     2     0       0.03      0.12    diag
   4      -36.44448679      -0.01152157     0.16D-02     0.76D-02     3     0       0.03      0.15    diag
   5      -36.44721175      -0.00272496     0.62D-03     0.41D-02     4     0       0.03      0.18    diag
   6      -36.44724269      -0.00003094     0.82D-04     0.50D-03     5     0       0.03      0.21    diag
   7      -36.44724682      -0.00000412     0.25D-04     0.18D-03     6     0       0.03      0.24    diag
   8      -36.44724708      -0.00000026     0.67D-05     0.85D-04     7     0       0.04      0.28    fixocc
   9      -36.44724708      -0.00000000     0.67D-06     0.46D-05     8     0       0.03      0.31    diag
  10      -36.44724708      -0.00000000     0.17D-06     0.27D-05     9     0       0.03      0.34    diag/orth
  11      -36.44724708      -0.00000000     0.18D-07     0.29D-06     0     0       0.04      0.38    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -36.447247076705
  RHF One-electron energy             -59.880469003086
  RHF Two-electron energy              23.433221926381
  RHF Kinetic energy                   13.530910969118
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.693628474823

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.29827     1  1  s    1.00001
    2.1     2.00000    -0.19669     1  1  s   -0.26422    1  4  s    0.44949    1  5  s    0.58247
    1.2     2.00000    -1.33735     1  1  px   1.00035
    2.2     2.00000    -1.33735     1  1  py   1.00023
    3.2     2.00000    -1.33735     1  1  pz   1.00023


 HOMO      2.1    -0.196694 =      -5.3523eV
 LUMO      4.2     0.010692 =       0.2909eV
 LUMO-HOMO         0.207387 =       5.6433eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.74       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         5.02      0.38      4.30
 REAL TIME  *         5.99 SEC
 DISK USED  *        32.30 MB (local),        1.45 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:     212 (  103  109)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 2   3 5 6 4 2 3 6 4 5 9  111415131012 8 7 1 3   6 4 5 2 7 812141513
                                       1011 9 1 3 5 6 4 2 7  131011 912 81514 1 3   5 6 4 2 711 9141513  1012 8 3 5 4 6 2 1 3
                                        5 4 6 2 911 7141513  1012 8 1 3 4 5 6 2 3   6 4 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 3   1 2 9 7 610 8 5 4 1   2 3 9 7 6 810 5 414  16191820211315171211
                                        1 2 310 8 9 7 6 4 5  20181614191517132111  12 6 810 9 7 4 5 1 2   3 6 810 9 7 4 51416
                                       201819121113211517 1   2 3 6 810 9 7 4 5 6   810 9 7 4 5 1 3 2 1   3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  638  ( 2 closed/active, 430 closed/virtual, 0 active/active, 206 active/virtual )
 Total number of variables:    646
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0    -36.37945113     -36.38378340   -0.00433226    0.02715264 0.00000981 0.00000000  0.35E+00      0.30
   2    6    5    0    -36.38365921     -36.38366686   -0.00000765    0.00154911 0.00000013 0.00000000  0.10E-01      0.65
   3    4    4    0    -36.38366687     -36.38366687   -0.00000000    0.00000457 0.00000001 0.00000000  0.30E-04      0.93

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.37E-10)
                       Final energy:    -36.38366687
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -36.446549125826
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.57535085
 One electron energy                           -59.97881351
 Two electron energy                            23.53226438
 Virial ratio                                    3.68475928
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -36.320784616774
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.43918044
 One electron energy                           -58.48795605
 Two electron energy                            22.16717143
 Virial ratio                                    3.70260414
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 4 5 2 2 6   3 4 5 1 2 3 6 4 511   914151310 812 7 1 6   4 3 5 2 7 812141513
                                       10 911 1 6 4 3 5 2 7  11 91310 8121415 1 6   4 3 5 2 711 9141513  10 812 6 4 3 5 2 1 6
                                        4 3 5 2 911 7151413  10 812 1 6 4 3 5 2 6   4 3 5 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 2 3 2   1 3 9 7 6 810 4 5 2   1 3 7 9 6 810 5 414  16192113182015171112
                                        2 3 1 810 7 9 6 4 5  20181416192113151712  11 610 8 7 9 5 4 2 1   3 6 810 7 9 5 41416
                                       191112201821131517 2   3 1 6 810 7 9 5 4 6   810 7 9 5 4 1 2 3 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.36453     1  1  s    0.99981
    2.1     1.49996    -0.19760     1  1  s   -0.28297    1  4  s    0.57397    1  5  s    0.59521
    3.1     0.50004    -0.00437     1  4  s   -0.28663    1  5  s   -0.28539    1  6  s   -0.74785    1 11  s    1.73541
    1.2     2.00000    -1.40394     1  1  px   1.00125
    2.2     2.00000    -1.40394     1  1  pz   1.00125
    3.2     2.00000    -1.40394     1  1  py   1.00125
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98802183     -0.15416882
 ab             0.10901626      0.69865260
 ba            -0.10901626     -0.69865260
 
 Energy:      -36.44654913    -36.32078462
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.74       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.99      0.97      0.38      4.30
 REAL TIME  *         7.24 SEC
 DISK USED  *        38.58 MB (local),        1.63 GB (total)
 SF USED    *        16.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -36.44654913  -0.0
    -36.32078462  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       21 conf       21 CSFs
 N-1 el internal:       34 conf       50 CSFs
 N-2 el internal:       39 conf       87 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:     212 ( 103 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -36.44654913
     2       -36.32078462

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          5294
 Number of doubly external configurations:        551527
 Total number of contracted configurations:       556833
 Total number of uncontracted configurations:     983555

 Diagonal Coupling coefficients finished.               Storage:  178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  501610 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -36.44654913    -0.00000000    -0.35235852  0.21D-02  0.12D+00     0.06
    1     2     2     1.00000000     0.00000000   -36.32078462     0.00000000    -0.31337970  0.24D-02  0.76D-01     0.06
    2     1     1     1.09936588    -0.31978645   -36.76633558    -0.31978645    -0.01075392  0.13D-02  0.52D-02     0.84
    2     2     2     1.07455029    -0.30656224   -36.62734686    -0.30656224    -0.00552962  0.74D-03  0.21D-02     0.84
    3     1     1     1.08734755    -0.33017958   -36.77672871    -0.01039313    -0.00044639  0.13D-04  0.16D-03     1.60
    3     2     2     1.07381259    -0.31225616   -36.63304078    -0.00569392    -0.00024291  0.41D-05  0.99D-04     1.60
    4     1     1     1.08687901    -0.33064811   -36.77719724    -0.00046853    -0.00002136  0.46D-06  0.79D-05     2.40
    4     2     2     1.07421730    -0.31251308   -36.63329770    -0.00025692    -0.00001537  0.38D-06  0.66D-05     2.40
    5     1     1     1.08686584    -0.33067172   -36.77722085    -0.00002361    -0.00000125  0.66D-07  0.43D-06     3.20
    5     2     2     1.07431051    -0.31252961   -36.63331423    -0.00001653    -0.00000107  0.17D-07  0.45D-06     3.20
    6     1     1     1.08685083    -0.33067298   -36.77722210    -0.00000125    -0.00000007  0.55D-09  0.27D-07     3.96
    6     2     2     1.07432701    -0.31253069   -36.63331530    -0.00000107    -0.00000006  0.84D-09  0.20D-07     3.96
    7     1     1     1.08684753    -0.33067305   -36.77722217    -0.00000007    -0.00000000  0.66D-10  0.14D-08     4.71
    7     2     2     1.07433068    -0.31253075   -36.63331536    -0.00000006    -0.00000000  0.10D-09  0.13D-08     4.71


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.8%   8.5%  12.1%

 Initialization:   0.8%
 Other:           77.1%

 Total CPU:        4.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.0954391   0.9602356
 220222           0.9544292  -0.0929355

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957757   -0.052852
 2           0.056292    0.963071

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959213    0.001566
 2           0.001566    0.964714


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95775700 (fixed)   0.95921435 (relaxed)   0.95921290 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000313   -0.00001202   -0.32794707
 Singles      0.00061194   -0.00049309   -0.00063996
 Pairs        0.08623586    0.02624859   -0.00208601
 Total        1.08685093    0.02574349   -0.33067305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.44614438
 Nuclear energy                         0.00000000
 Kinetic energy                        13.97247813
 One electron energy                  -59.87369726
 Two electron energy                   23.09647509
 Virial quotient                       -2.63211879
 Correlation energy                    -0.33107779
 !MRCI STATE 1.1 Energy               -36.777222170963

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.80597658 (Davidson, fixed reference)
 Cluster corrected energies           -36.80597549 (Davidson, relaxed reference)
 Cluster corrected energies           -36.80597658 (Davidson, rotated reference)

 Cluster corrected energies           -36.80145782 (Pople, fixed reference)
 Cluster corrected energies           -36.80145685 (Pople, relaxed reference)
 Cluster corrected energies           -36.80145782 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96307139 (fixed)   0.96478522 (relaxed)   0.96471387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014963   -0.00001687   -0.00044972
 Singles      0.00411286   -0.00310326   -0.00408427
 Pairs        0.07022894   -0.30899103   -0.30799675
 Total        1.07449143   -0.31211116   -0.31253075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.32118937
 Nuclear energy                         0.00000000
 Kinetic energy                        13.88134833
 One electron energy                  -58.38990932
 Two electron energy                   21.75659395
 Virial quotient                       -2.63903149
 Correlation energy                    -0.31212600
 !MRCI STATE 2.1 Energy               -36.633315362052

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.65656607 (Davidson, fixed reference)
 Cluster corrected energies           -36.65651647 (Davidson, relaxed reference)
 Cluster corrected energies           -36.65656607 (Davidson, rotated reference)

 Cluster corrected energies           -36.65276727 (Pople, fixed reference)
 Cluster corrected energies           -36.65272392 (Pople, relaxed reference)
 Cluster corrected energies           -36.65276727 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.74       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       11.03       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.85      4.84      0.97      0.38      4.30
 REAL TIME  *        12.78 SEC
 DISK USED  *        47.85 MB (local),        1.91 GB (total)
 SF USED    *        88.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -36.80597658  AU                              
 SETTING HLSDIAG(2)     =       -36.65656607  AU                              


        HLSDIAG
    -36.80597658
    -36.65656607
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -36.777222    -36.633315
 Replaced energies:    -36.805977    -36.656566



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -36.80597658

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   32791.82
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by    -36.80597658 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   32791.817
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -36.80597658     0.00000000        0.00      0.00000000        0.00      0.0000
    2   -36.65656607     0.14941051    32791.82      0.14941051    32791.82      4.0657

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2

   1    1  |0 0>           1.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00000000  1.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -36.80597658      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1    -36.65656607      0.14941051    32791.82      0.14941051    32791.82      4.0657

 E0 =    -36.80597658 is the energy of the lowest zeroth-order state
 E1 =    -36.80597658 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2

  1  1     1    1  |0 0>        1.00000000  0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  1.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2

  1  1     1    1  |0 0>        100.00%    0.00%
  2  1     2    1  |0 0>          0.00%  100.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.74       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       11.03       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.99      0.12      4.84      0.97      0.38      4.30
 REAL TIME  *        13.08 SEC
 DISK USED  *        47.85 MB (local),        1.91 GB (total)
 SF USED    *        88.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -36.656566072952

              CI           MULTI         RHF-SCF
    -36.63331536    -36.32078462    -36.44724708
 **********************************************************************************************************************************
 Molpro calculation terminated
