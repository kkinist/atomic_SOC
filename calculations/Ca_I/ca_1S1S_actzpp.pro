
 Working directory              : /wrk/irikura/molpro.7IJUNymqdt/
 Global scratch directory       : /wrk/irikura/molpro.7IJUNymqdt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.7IJUNymqdt/

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
 
 basis=aug-cc-pwCVTZ-PP
 
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
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ca SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 12:19:52  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ca   ECP ECP10MDF                 selected for group  1
 Library entry CA     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CA     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CA     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CA     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         134
 NUMBER OF SYMMETRY AOS:          116
 NUMBER OF CONTRACTIONS:           80   (   38Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.263E-03 0.501E-02 0.651E-02 0.217E-01 0.217E-01 0.217E-01 0.217E-01 0.217E-01
         2 0.660E-02 0.660E-02 0.660E-02 0.182E-01 0.182E-01 0.182E-01 0.125E+00 0.125E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     11.272 MB (compressed) written to integral file ( 21.7%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      89640.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      89640      RECORD LENGTH: 524288

 Memory used in sort:       0.65 MW

 SORT1 READ     6063679. AND WROTE       19650. INTEGRALS IN      1 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.16 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       88960.  Node maximum:       92031. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.01      1.67
 REAL TIME  *         2.54 SEC
 DISK USED  *        29.00 MB (local),      995.04 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -36.44720534     -36.44720534     0.00D+00     0.11D+00     0     0       0.00      0.00    start
   2      -36.44720534      -0.00000000     0.21D-05     0.14D-04     1     0       0.01      0.01    diag
   3      -36.44720534      -0.00000000     0.32D-06     0.52D-05     2     0       0.00      0.01    diag
   4      -36.44720534      -0.00000000     0.13D-06     0.37D-05     3     0       0.00      0.01    diag
   5      -36.44720534      -0.00000000     0.16D-07     0.13D-06     4     0       0.00      0.01    diag
   6      -36.44720534      -0.00000000     0.51D-08     0.56D-07     0     0       0.00      0.01    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -36.447205344150
  RHF One-electron energy             -59.880392468081
  RHF Two-electron energy              23.433187123932
  RHF Kinetic energy                   13.530936771969
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.693620253969

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.29827     1  1  s    1.00021
    2.1     2.00000    -0.19669     1  2  s    1.00054
    1.2     2.00000    -1.33735     1  1  pz   0.99987
    2.2     2.00000    -1.33735     1  1  px   0.99987
    3.2     2.00000    -1.33735     1  1  py   0.99987


 HOMO      2.1    -0.196694 =      -5.3523eV
 LUMO      4.2     0.011472 =       0.3122eV
 LUMO-HOMO         0.208166 =       5.6645eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.04      0.03      1.67
 REAL TIME  *         2.57 SEC
 DISK USED  *        29.34 MB (local),     1005.34 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      74 (   35   39)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 2   6 4 3 5 2 4 6 3 5 1   2 4 6 3 5 1 2 4 6 5   3 1 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.789D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.789D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 2 3 3   1 2 7 9 610 8 5 4 3   1 210 8 6 4 5 7 9 3   1 2 6 5 4 810 7 9 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  224  ( 2 closed/active, 152 closed/virtual, 0 active/active, 70 active/virtual )
 Total number of variables:    232
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0    -36.38004349     -36.38362895   -0.00358546    0.02665496 0.00000800 0.00000000  0.29E+00      0.11
   2    4    4    0    -36.38353407     -36.38353937   -0.00000530    0.00126999 0.00000191 0.00000000  0.85E-02      0.22
   3    4    4    0    -36.38353938     -36.38353938   -0.00000000    0.00000308 0.00000000 0.00000000  0.19E-04      0.31

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.16E-10)
                       Final energy:    -36.38353938
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -36.446531680420
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.57484226
 One electron energy                           -59.97687449
 Two electron energy                            23.53034281
 Virial ratio                                    3.68485858
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -36.320547082597
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.44151070
 One electron energy                           -58.50060091
 Two electron energy                            22.18005383
 Virial ratio                                    3.70211793
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 2   6 3 4 5 2 3 6 4 5 1   2 6 4 5 3 1 2 6 4 5   3 1 6 4 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 2 1 3 1   2 3 9 7 6 810 4 5 3   1 2 810 6 4 5 7 9 1   2 3 6 4 5 810 9 7 2
                                        3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.36391     1  1  s    0.99913
    2.1     1.49995    -0.19709     1  2  s    1.13738
    3.1     0.50005    -0.00357     1  2  s   -0.40582    1  5  s   -0.83749    1  8  s    1.81913
    1.2     2.00000    -1.40332     1  1  pz   1.00073
    2.2     2.00000    -1.40332     1  1  py   1.00073
    3.2     2.00000    -1.40332     1  1  px   1.00073
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98776014     -0.15582926
 ab             0.11019052      0.69846836
 ba            -0.11019052     -0.69846836
 
 Energy:      -36.44653168    -36.32054708
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       29.67       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.37      0.33      0.03      1.67
 REAL TIME  *         3.01 SEC
 DISK USED  *        30.34 MB (local),        1.01 GB (total)
 SF USED    *         2.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -36.44653168  -0.0
    -36.32054708  -0.0
                                                  


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
 Number of external orbitals:      74 (  35  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -36.44653168
     2       -36.32054708

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          1846
 Number of doubly external configurations:         67418
 Total number of contracted configurations:        69276
 Total number of uncontracted configurations:     121219

 Diagonal Coupling coefficients finished.               Storage:  178776 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  216500 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -36.44653168    -0.00000000    -0.29693891  0.21D-02  0.12D+00     0.02
    1     2     2     1.00000000     0.00000000   -36.32054708     0.00000000    -0.26049883  0.24D-02  0.75D-01     0.02
    2     1     1     1.09684497    -0.26704064   -36.71357232    -0.26704064    -0.00768568  0.11D-02  0.42D-02     0.08
    2     2     2     1.07206263    -0.25239539   -36.57294247    -0.25239539    -0.00403267  0.70D-03  0.18D-02     0.08
    3     1     1     1.08661122    -0.27464455   -36.72117623    -0.00760391    -0.00027261  0.13D-04  0.11D-03     0.14
    3     2     2     1.07133460    -0.25661358   -36.57716067    -0.00421820    -0.00017860  0.76D-05  0.84D-04     0.14
    4     1     1     1.08678315    -0.27494881   -36.72148049    -0.00030426    -0.00001579  0.56D-06  0.68D-05     0.20
    4     2     2     1.07194927    -0.25681313   -36.57736022    -0.00019955    -0.00001156  0.46D-06  0.62D-05     0.20
    5     1     1     1.08687650    -0.27496494   -36.72149662    -0.00001613    -0.00000083  0.60D-07  0.37D-06     0.26
    5     2     2     1.07207475    -0.25682481   -36.57737189    -0.00001167    -0.00000069  0.51D-07  0.35D-06     0.26
    6     1     1     1.08685936    -0.27496580   -36.72149748    -0.00000086    -0.00000003  0.37D-09  0.14D-07     0.32
    6     2     2     1.07208923    -0.25682551   -36.57737259    -0.00000070    -0.00000003  0.60D-09  0.13D-07     0.32
    7     1     1     1.08686016    -0.27496583   -36.72149751    -0.00000003    -0.00000000  0.12D-09  0.85D-09     0.39
    7     2     2     1.07209551    -0.25682554   -36.57737262    -0.00000003    -0.00000000  0.22D-09  0.12D-08     0.39


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   5.1%
 P  10.3%  10.3%  12.8%

 Initialization:   5.1%
 Other:           56.4%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.0977180   0.9610391
 220222           0.9541912  -0.0948985

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957788   -0.052174
 2           0.056107    0.964073

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959207    0.001787
 2           0.001787    0.965703


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95778841 (fixed)   0.95920863 (relaxed)   0.95920676 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00001391   -0.27346655
 Singles      0.00064661   -0.00062601   -0.00073969
 Pairs        0.08621392    0.02288018   -0.00075958
 Total        1.08686483    0.02224026   -0.27496583
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.44613302
 Nuclear energy                         0.00000000
 Kinetic energy                        13.86527172
 One electron energy                  -59.87652602
 Two electron energy                   23.15502851
 Virial quotient                       -2.64845134
 Correlation energy                    -0.27536449
 !MRCI STATE 1.1 Energy               -36.721497509970

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.74541700 (Davidson, fixed reference)
 Cluster corrected energies           -36.74541583 (Davidson, relaxed reference)
 Cluster corrected energies           -36.74541700 (Davidson, rotated reference)

 Cluster corrected energies           -36.74165821 (Pople, fixed reference)
 Cluster corrected energies           -36.74165718 (Pople, relaxed reference)
 Cluster corrected energies           -36.74165821 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96407336 (fixed)   0.96579031 (relaxed)   0.96570301 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018274   -0.00001839   -0.00035796
 Singles      0.00446630   -0.00313562   -0.00399406
 Pairs        0.06764238   -0.25335302   -0.25247352
 Total        1.07229143   -0.25650703   -0.25682554
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.32094575
 Nuclear energy                         0.00000000
 Kinetic energy                        13.77800249
 One electron energy                  -58.41749122
 Two electron energy                   21.84011860
 Virial quotient                       -2.65476601
 Correlation energy                    -0.25642688
 !MRCI STATE 2.1 Energy               -36.577372622737

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.59591009 (Davidson, fixed reference)
 Cluster corrected energies           -36.59586038 (Davidson, relaxed reference)
 Cluster corrected energies           -36.59591009 (Davidson, rotated reference)

 Cluster corrected energies           -36.59286087 (Pople, fixed reference)
 Cluster corrected energies           -36.59281754 (Pople, relaxed reference)
 Cluster corrected energies           -36.59286087 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       29.67       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        1.80       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.86      0.44      0.33      0.03      1.67
 REAL TIME  *         3.73 SEC
 DISK USED  *        31.52 MB (local),        1.05 GB (total)
 SF USED    *        11.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -36.74541700  AU                              
 SETTING HLSDIAG(2)     =       -36.59591009  AU                              


        HLSDIAG
    -36.74541700
    -36.59591009
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -36.721498    -36.577373
 Replaced energies:    -36.745417    -36.595910



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -36.74541700

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   32812.97
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by    -36.74541700 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   32812.974
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -36.74541700     0.00000000        0.00      0.00000000        0.00      0.0000
    2   -36.59591009     0.14950691    32812.97      0.14950691    32812.97      4.0683

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
     1   1    -36.74541700      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1    -36.59591009      0.14950691    32812.97      0.14950691    32812.97      4.0683

 E0 =    -36.74541700 is the energy of the lowest zeroth-order state
 E1 =    -36.74541700 is the energy of the lowest SO-state


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


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       29.67       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        1.80       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.98      0.10      0.44      0.33      0.03      1.67
 REAL TIME  *         3.91 SEC
 DISK USED  *        31.52 MB (local),        1.05 GB (total)
 SF USED    *        11.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -36.595910087409

              CI           MULTI         RHF-SCF
    -36.57737262    -36.32054708    -36.44720534
 **********************************************************************************************************************************
 Molpro calculation terminated
