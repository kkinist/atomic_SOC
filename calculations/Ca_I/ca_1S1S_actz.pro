
 Working directory              : /wrk/irikura/molpro.YlbKOU3byQ/
 Global scratch directory       : /wrk/irikura/molpro.YlbKOU3byQ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.YlbKOU3byQ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=20,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,3,6
     occ,5,6
     wf,sym=1,spin=0;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ca SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 11:48:58  
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

 Library entry CA     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CA     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CA     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CA     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  CA     20.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   20
 NUMBER OF PRIMITIVE AOS:         167
 NUMBER OF SYMMETRY AOS:          149
 NUMBER OF CONTRACTIONS:           84   (   39Ag  +   45Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     13.369 MB (compressed) written to integral file ( 19.0%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     107940.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     107940      RECORD LENGTH: 524288

 Memory used in sort:       0.66 MW

 SORT1 READ     7196526. AND WROTE       24722. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.11 SEC
 SORT2 READ      690439. AND WROTE     3262620. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      107100.  Node maximum:      110415. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.816E-03 0.588E-02 0.214E-01 0.214E-01 0.214E-01 0.214E-01 0.214E-01 0.354E-01
         2 0.501E-02 0.501E-02 0.501E-02 0.129E-01 0.129E-01 0.129E-01 0.110E+00 0.110E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.93       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.19      1.85
 REAL TIME  *         2.76 SEC
 DISK USED  *        29.20 MB (local),     1001.92 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -679.62917829    -679.62917829     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2     -679.62917830      -0.00000001     0.13D-04     0.49D-04     1     0       0.01      0.01    diag
   3     -679.62917830      -0.00000000     0.12D-05     0.19D-04     2     0       0.00      0.01    diag
   4     -679.62917830      -0.00000000     0.23D-06     0.67D-05     3     0       0.00      0.01    diag
   5     -679.62917830      -0.00000000     0.57D-07     0.52D-05     4     0       0.00      0.01    diag
   6     -679.62917830       0.00000000     0.12D-07     0.93D-06     5     0       0.01      0.02    diag
   7     -679.62917830      -0.00000000     0.21D-08     0.91D-07     0     0       0.00      0.02    diag

 Final occupancy:   4   6

 !RHF STATE 1.1 Energy               -679.629178299474
  RHF One-electron energy            -930.343757368513
  RHF Two-electron energy             250.714579069039
  RHF Kinetic energy                  697.268385643572
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.974702413436

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.10826     1  1  s    0.99989
    2.1     2.00000   -16.96320     1  2  s    1.00106
    3.1     2.00000    -2.26168     1  3  s    0.99769
    4.1     2.00000    -0.19630     1  4  s    1.00277
    1.2     2.00000   -13.63704     1  1  pz   0.99999
    2.2     2.00000   -13.63704     1  1  px   0.99760
    3.2     2.00000   -13.63704     1  1  py   0.99760
    4.2     2.00000    -1.33891     1  2  pz   0.99994
    5.2     2.00000    -1.33891     1  2  py   0.99994
    6.2     2.00000    -1.33891     1  2  px   0.99994


 HOMO      4.1    -0.196295 =      -5.3415eV
 LUMO      7.2     0.010858 =       0.2955eV
 LUMO-HOMO         0.207153 =       5.6369eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.93       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.41       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.21      0.02      1.85
 REAL TIME  *         2.79 SEC
 DISK USED  *        29.58 MB (local),     1013.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    3    6)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      73 (   34   39)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 4 6 3 5 2   1 2 4 6 3 5 2 4 6 3   5 1 2 4 6 5 3 1 4 6   5 3 2 1 4 6 5 3 2
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.260D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.652D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.665D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.557D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.118D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 5 4 6 7 9   810 3 2 1 4 5 6 9 7  10 8 3 2 1 5 4 810 6
                                        7 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  410  ( 6 closed/active, 336 closed/virtual, 0 active/active, 68 active/virtual )
 Total number of variables:    418
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -679.56210166    -679.56576894   -0.00366728    0.02734021 0.00000834 0.00000000  0.29E+00      0.14
   2    6    5    0   -679.56566770    -679.56567370   -0.00000600    0.00138772 0.00000011 0.00000000  0.91E-02      0.33
   3    4    4    0   -679.56567371    -679.56567371   -0.00000000    0.00000357 0.00000001 0.00000000  0.22E-04      0.47

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.22E-10)
                       Final energy:   -679.56567371
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -679.628497367544
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.38406063
 One electron energy                          -930.61038969
 Two electron energy                           250.98189232
 Virial ratio                                    1.97453976
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -679.502850055929
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.02553542
 One electron energy                          -927.44094325
 Two electron energy                           247.93809319
 Virial ratio                                    1.97486077
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 5 3 4 6 2   1 2 5 3 4 6 2 5 3 4   6 1 2 5 3 4 6 1 5 4   3 6 2 1 4 5 3 6 2
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 5 4 7 9 6   810 3 2 1 5 4 6 9 7  10 8 3 2 1 5 4 7 910
                                        8 6 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.17623     1  1  s    0.99989
    2.1     2.00000   -17.03048     1  2  s    1.00103
    3.1     2.00000    -2.32726     1  3  s    0.99783
    4.1     1.49995    -0.19680     1  4  s    1.06875
    5.1     0.50005    -0.00373     1  4  s   -0.41886    1  6  s   -0.90680    1  9  s    1.87342
    1.2     2.00000   -13.70468     1  1  pz   1.00001
    2.2     2.00000   -13.70468     1  1  px   1.00001
    3.2     2.00000   -13.70468     1  1  py   1.00001
    4.2     2.00000    -1.40495     1  2  pz   1.00134
    5.2     2.00000    -1.40495     1  2  py   1.00134
    6.2     2.00000    -1.40495     1  2  px   1.00134
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98778860     -0.15564886
 ab             0.11006296      0.69848847
 ba            -0.11006296     -0.69848847
 
 Energy:     -679.62849737   -679.50285006
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.65      0.44      0.02      1.85
 REAL TIME  *         3.41 SEC
 DISK USED  *        32.44 MB (local),        1.07 GB (total)
 SF USED    *         6.77 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -679.6284974  -0.0
    -679.5028501  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 20
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       21 conf       21 CSFs
 N-1 el internal:       34 conf       50 CSFs
 N-2 el internal:       39 conf       87 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      73 (  34  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.18 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.62849737
     2      -679.50285006

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          1820
 Number of doubly external configurations:         65615
 Total number of contracted configurations:        67447
 Total number of uncontracted configurations:     118013

 Diagonal Coupling coefficients finished.               Storage:  178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  215471 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.62849737     0.00000000    -0.27309867  0.21D-02  0.11D+00     0.04
    1     2     2     1.00000000     0.00000000  -679.50285006    -0.00000000    -0.23798428  0.24D-02  0.68D-01     0.04
    2     1     1     1.09260861    -0.24887069  -679.87736806    -0.24887069    -0.00704452  0.10D-02  0.40D-02     0.11
    2     2     2     1.06715836    -0.23350225  -679.73635231    -0.23350225    -0.00370613  0.68D-03  0.17D-02     0.11
    3     1     1     1.08325421    -0.25582495  -679.88432232    -0.00695426    -0.00025209  0.15D-04  0.10D-03     0.16
    3     2     2     1.06714154    -0.23738915  -679.74023921    -0.00388690    -0.00016302  0.81D-05  0.84D-04     0.16
    4     1     1     1.08369642    -0.25610546  -679.88460283    -0.00028051    -0.00001359  0.47D-06  0.62D-05     0.21
    4     2     2     1.06793305    -0.23756905  -679.74041911    -0.00017990    -0.00001077  0.63D-06  0.62D-05     0.21
    5     1     1     1.08380287    -0.25611953  -679.88461690    -0.00001407    -0.00000079  0.66D-07  0.36D-06     0.26
    5     2     2     1.06805076    -0.23758004  -679.74043010    -0.00001099    -0.00000068  0.69D-07  0.36D-06     0.26
    6     1     1     1.08379543    -0.25612032  -679.88461769    -0.00000079    -0.00000003  0.27D-09  0.12D-07     0.32
    6     2     2     1.06807105    -0.23758073  -679.74043079    -0.00000069    -0.00000003  0.16D-08  0.15D-07     0.32
    7     1     1     1.08379917    -0.25612035  -679.88461772    -0.00000003    -0.00000000  0.12D-09  0.76D-09     0.38
    7     2     2     1.06808098    -0.23758076  -679.74043082    -0.00000003    -0.00000000  0.39D-09  0.15D-08     0.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   5.3%  18.4%  18.4%

 Initialization:   7.9%
 Other:           50.0%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.0970664   0.9629254
 220222           0.9556183  -0.0941697

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959106   -0.052865
 2           0.056949    0.965833

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960560    0.001847
 2           0.001847    0.967509


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95910616 (fixed)   0.96056220 (relaxed)   0.96056023 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000457   -0.00001454   -0.25602339
 Singles      0.00066716   -0.00068568   -0.00079041
 Pairs        0.08313240    0.02204337    0.00069346
 Total        1.08380413    0.02134314   -0.25612035
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.62808978
 Nuclear energy                         0.00000000
 Kinetic energy                       697.39923007
 One electron energy                 -930.49227317
 Two electron energy                  250.60765545
 Virial quotient                       -0.97488582
 Correlation energy                    -0.25652794
 !MRCI STATE 1.1 Energy              -679.884617720313

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.90611582 (Davidson, fixed reference)
 Cluster corrected energies          -679.90611468 (Davidson, relaxed reference)
 Cluster corrected energies          -679.90611582 (Davidson, rotated reference)

 Cluster corrected energies          -679.90270426 (Pople, fixed reference)
 Cluster corrected energies          -679.90270325 (Pople, relaxed reference)
 Cluster corrected energies          -679.90270426 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96583286 (fixed)   0.96760360 (relaxed)   0.96750859 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019842   -0.00001910   -0.00033885
 Singles      0.00456939   -0.00313758   -0.00395337
 Pairs        0.06352510   -0.23412833   -0.23328855
 Total        1.06829291   -0.23728502   -0.23758076
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.50325765
 Nuclear energy                         0.00000000
 Kinetic energy                       697.17443290
 One electron energy                 -927.44598962
 Two electron energy                  247.70555880
 Virial quotient                       -0.97499334
 Correlation energy                    -0.23717317
 !MRCI STATE 2.1 Energy              -679.740430818892

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.75662806 (Davidson, fixed reference)
 Cluster corrected energies          -679.75657831 (Davidson, relaxed reference)
 Cluster corrected energies          -679.75662806 (Davidson, rotated reference)

 Cluster corrected energies          -679.75393131 (Pople, fixed reference)
 Cluster corrected energies          -679.75388814 (Pople, relaxed reference)
 Cluster corrected energies          -679.75393131 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.81       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.12      0.44      0.44      0.02      1.85
 REAL TIME  *         4.09 SEC
 DISK USED  *        33.61 MB (local),        1.11 GB (total)
 SF USED    *        11.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -679.90611582  AU                              
 SETTING HLSDIAG(2)     =      -679.75662806  AU                              


         HLSDIAG
    -679.9061158
    -679.7566281
                                                  


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

 Time for Seward_LS:       5.50 sec

 CPU time:      5.50 sec, REAL time:      5.78 sec


 SORTLS1 read     3953008. and wrote     3953008. SO integrals in    90 records. CPU time:      0.04 sec, REAL time:      0.10 sec
 SORTLS2 read     3953008. and wrote     3953008. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -679.884618   -679.740431
 Replaced energies:   -679.906116   -679.756628



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -679.90611582

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   32808.77
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by   -679.90611582 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   32808.770
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -679.90611582     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -679.75662806     0.14948776    32808.77      0.14948776    32808.77      4.0678

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
     1   1   -679.90611582      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -679.75662806      0.14948776    32808.77      0.14948776    32808.77      4.0678

 E0 =   -679.90611582 is the energy of the lowest zeroth-order state
 E1 =   -679.90611582 is the energy of the lowest SO-state


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
              1      24       31.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.81       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.23      8.09      0.44      0.44      0.02      1.85
 REAL TIME  *        12.80 SEC
 DISK USED  *        33.65 MB (local),        1.40 GB (total)
 SF USED    *        11.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -679.756628064296

              CI           MULTI         RHF-SCF
   -679.74043082   -679.50285006   -679.62917830
 **********************************************************************************************************************************
 Molpro calculation terminated
