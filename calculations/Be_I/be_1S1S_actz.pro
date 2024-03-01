
 Working directory              : /wrk/irikura/molpro.bAKVjDkbLH/
 Global scratch directory       : /wrk/irikura/molpro.bAKVjDkbLH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.bAKVjDkbLH/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Be SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Be};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=4,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,1,0
     occ,3,0
     wf,sym=1,spin=0;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Be SO-CI                                                                                                                                                      
  (12 PROC) 64 bit mpp version                                                           DATE: 29-Feb-24          TIME: 16:26:11  
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

 Library entry BE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry BE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry BE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry BE     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  BE      4.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    4
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

     2.621 MB (compressed) written to integral file ( 20.4%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.429E-02 0.190E-01 0.855E-01 0.932E-01 0.932E-01 0.932E-01 0.932E-01 0.932E-01
         2 0.112E-01 0.112E-01 0.112E-01 0.218E+00 0.218E+00 0.218E+00 0.453E+00 0.453E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.70      0.49
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   0

 NELEC=    4   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -14.57538827     -14.57538827     0.00D+00     0.94D-01     0     0       0.01      0.01    start
   2      -14.57538835      -0.00000008     0.35D-04     0.12D-03     1     0       0.00      0.01    diag
   3      -14.57538836      -0.00000001     0.45D-05     0.29D-04     2     0       0.00      0.01    diag
   4      -14.57538836      -0.00000000     0.11D-05     0.62D-05     3     0       0.00      0.01    diag
   5      -14.57538836      -0.00000000     0.77D-07     0.95D-06     4     0       0.00      0.01    diag
   6      -14.57538836      -0.00000000     0.48D-08     0.37D-07     0     0       0.00      0.01    diag

 Final occupancy:   2   0

 !RHF STATE 1.1 Energy                -14.575388361590
  RHF One-electron energy             -19.065758414577
  RHF Two-electron energy               4.490370052987
  RHF Kinetic energy                   14.593849120761
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998735031518

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.73319     1  1  s    0.99957
    2.1     2.00000    -0.30932     1  2  s    1.00427


 HOMO      2.1    -0.309319 =      -8.4170eV
 LUMO      1.2     0.017883 =       0.4866eV
 LUMO-HOMO         0.327202 =       8.9036eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.72      0.02      0.49
 REAL TIME  *         1.72 SEC
 DISK USED  *        29.28 MB (local),      167.49 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      56 (   24   32)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 2 4 3 1 2   4 3 6 3 1 4 5 2 6 5   1 6 5 3 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 2 3 1 7  10 6 9 4 5 8 2 3 1 7   4 610 5 9 8 2 3 1 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  74  ( 2 closed/active, 24 closed/virtual, 0 active/active, 48 active/virtual )
 Total number of variables:    82
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0    -14.46251411     -14.46677670   -0.00426259    0.03830808 0.00001128 0.00000000  0.20E+00      0.10
   2    4    4    0    -14.46667336     -14.46667872   -0.00000537    0.00150143 0.00000268 0.00000000  0.65E-02      0.16
   3    4    4    0    -14.46667873     -14.46667873   -0.00000000    0.00000282 0.00000000 0.00000000  0.10E-04      0.22

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.80E-11)
                       Final energy:    -14.46667873
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -14.573885548664
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.67665761
 One electron energy                           -19.12322474
 Two electron energy                             4.54933919
 Virial ratio                                    1.99299758
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -14.359471910747
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.30588104
 One electron energy                           -18.10887306
 Two electron energy                             3.74940115
 Virial ratio                                    2.00374607
 
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
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 2 6 4 3 1 2   5 3 6 4 1 5 3 4 6 2   1 5 6 2 4 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 2 1 310   6 7 8 9 4 5 1 2 3 6   9 4 510 8 7 1 3 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.85819     1  1  s    0.99992
    2.1     1.49997    -0.31989     1  2  s    1.13316
    3.1     0.50003    -0.00154     1  2  s   -0.36782    1  4  s   -0.47310    1  7  s    1.43898
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98855829     -0.15072936
 ab             0.10658352      0.69902786
 ba            -0.10658352     -0.69902786
 
 Energy:      -14.57388555    -14.35947191
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       28.90       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.57       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         0.92      0.20      0.02      0.49
 REAL TIME  *         2.02 SEC
 DISK USED  *        29.55 MB (local),      168.83 MB (total)
 SF USED    *         0.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.57388555   0.0
    -14.35947191   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  4
 Maximum number of shells:             2
 Maximum number of spin couplings:     1

 Reference space:        3 conf        3 CSFs
 N elec internal:        3 conf        3 CSFs
 N-1 el internal:        2 conf        2 CSFs
 N-2 el internal:        1 conf        1 CSFs

 Number of electrons in valence space:                      2
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  2


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      56 (  24  32 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.57388555
     2       -14.35947191

 Number of blocks in overlap matrix:     1   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:       1
 Number of N-1 electron functions:       2

 Number of internal configurations:                    3
 Number of singly external configurations:            48
 Number of doubly external configurations:           828
 Total number of contracted configurations:          879
 Total number of uncontracted configurations:        879

 Diagonal Coupling coefficients finished.               Storage:    171919 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    180021 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.57388555    -0.00000000    -0.04045112  0.33D-02  0.50D-01     0.00
    1     2     2     1.00000000     0.00000000   -14.35947191     0.00000000    -0.01046228  0.34D-02  0.13D-01     0.00
    2     1     1     1.05486703    -0.04086489   -14.61475044    -0.04086489    -0.00444553  0.13D-03  0.36D-02     0.01
    2     2     2     1.01923546    -0.01082499   -14.37029690    -0.01082499    -0.00125453  0.68D-03  0.12D-02     0.01
    3     1     1     1.09720611    -0.04706516   -14.62095071    -0.00620027    -0.00026600  0.27D-04  0.17D-03     0.01
    3     2     2     1.03091392    -0.01264181   -14.37211373    -0.00181682    -0.00020641  0.15D-03  0.17D-03     0.01
    4     1     1     1.10096368    -0.04738227   -14.62126782    -0.00031711    -0.00001245  0.61D-06  0.73D-05     0.01
    4     2     2     1.03684105    -0.01299247   -14.37246438    -0.00035066    -0.00003208  0.11D-04  0.25D-04     0.01
    5     1     1     1.10105633    -0.04739484   -14.62128039    -0.00001257    -0.00000041  0.38D-07  0.24D-06     0.01
    5     2     2     1.03780081    -0.01302803   -14.37249994    -0.00003555    -0.00000180  0.10D-05  0.14D-05     0.01
    6     1     1     1.10111350    -0.04739529   -14.62128084    -0.00000045    -0.00000001  0.47D-09  0.85D-08     0.02
    6     2     2     1.03803543    -0.01302999   -14.37250190    -0.00000196    -0.00000009  0.54D-07  0.72D-07     0.02
    7     1     1     1.10111668    -0.04739529   -14.62128084    -0.00000000    -0.00000001  0.85D-09  0.83D-08     0.02
    7     2     2     1.03810949    -0.01303011   -14.37250202    -0.00000013    -0.00000001  0.13D-08  0.10D-07     0.02
    8     1     1     1.10112057    -0.04739529   -14.62128084    -0.00000000    -0.00000001  0.11D-08  0.79D-08     0.02
    8     2     2     1.03813797    -0.01303012   -14.37250203    -0.00000001    -0.00000000  0.79D-10  0.74D-09     0.02


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%  50.0%
 P   0.0%   0.0%   0.0%

 Initialization:   0.0%
 Other:           50.0%

 Total CPU:        0.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 /\           0.1039332   0.9780867
 20           0.9472792  -0.0806113

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 0\   9.1    -0.0177525  -0.0695645
 \0   9.1     0.0326619   0.0537033

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.952136   -0.040041
 2           0.067800    0.979053

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.952887    0.013107
 2           0.013107    0.981310


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95213566 (fixed)   0.95297732 (relaxed)   0.95288710 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018936   -0.00016418   -0.05224275
 Singles      0.00189962   -0.00162535   -0.00155818
 Pairs        0.09924010    0.01175754    0.00640563
 Total        1.10132908    0.00996800   -0.04739529
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.57321902
 Nuclear energy                         0.00000000
 Kinetic energy                        14.64095727
 One electron energy                  -19.08426355
 Two electron energy                    4.46298271
 Virial quotient                       -0.99865607
 Correlation energy                    -0.04806183
 !MRCI STATE 1.1 Energy               -14.621280843038

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.62128084 (Davidson, fixed reference)
 Cluster corrected energies           -14.62128084 (Davidson, relaxed reference)
 Cluster corrected energies           -14.62128084 (Davidson, rotated reference)

 Cluster corrected energies           -14.62128084 (Pople, fixed reference)
 Cluster corrected energies           -14.62128084 (Pople, relaxed reference)
 Cluster corrected energies           -14.62128084 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97905311 (fixed)   0.98145968 (relaxed)   0.98131036 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030436   -0.00015943    0.00013985
 Singles      0.00945375   -0.00325166   -0.00325016
 Pairs        0.02869582   -0.00992766   -0.00991981
 Total        1.03845393   -0.01333875   -0.01303012
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.36013844
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39669893
 One electron energy                  -18.17251010
 Two electron energy                    3.80000806
 Virial quotient                       -0.99831927
 Correlation energy                    -0.01236359
 !MRCI STATE 2.1 Energy               -14.372502033709

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.37250203 (Davidson, fixed reference)
 Cluster corrected energies           -14.37250203 (Davidson, relaxed reference)
 Cluster corrected energies           -14.37250203 (Davidson, rotated reference)

 Cluster corrected energies           -14.37250203 (Pople, fixed reference)
 Cluster corrected energies           -14.37250203 (Pople, relaxed reference)
 Cluster corrected energies           -14.37250203 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       28.90       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.65       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.00      0.08      0.20      0.02      0.49
 REAL TIME  *         2.11 SEC
 DISK USED  *        29.63 MB (local),      169.23 MB (total)
 SF USED    *         0.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.62128084  AU                              
 SETTING HLSDIAG(2)     =       -14.37250203  AU                              


        HLSDIAG
    -14.62128084
    -14.37250203
                                                  


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

 Time for Seward_LS:       0.19 sec

 CPU time:      0.20 sec, REAL time:      0.20 sec


 SORTLS1 read      953868. and wrote      953868. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953868. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    30.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    30.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -14.621281    -14.372502
 Replaced energies:    -14.621281    -14.372502



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.62128084

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   54600.64
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by    -14.62128084 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   54600.637
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.62128084     0.00000000        0.00      0.00000000        0.00      0.0000
    2   -14.37250203     0.24877881    54600.64      0.24877881    54600.64      6.7696

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
     1   1    -14.62128084      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1    -14.37250203      0.24877881    54600.64      0.24877881    54600.64      6.7696

 E0 =    -14.62128084 is the energy of the lowest zeroth-order state
 E1 =    -14.62128084 is the energy of the lowest SO-state


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
              1      24       28.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.65       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.28      1.26      0.08      0.20      0.02      0.49
 REAL TIME  *         3.49 SEC
 DISK USED  *        29.65 MB (local),      245.25 MB (total)
 SF USED    *         0.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -14.372502033709

              CI           MULTI         RHF-SCF
    -14.37250203    -14.35947191    -14.57538836
 **********************************************************************************************************************************
 Molpro calculation terminated
