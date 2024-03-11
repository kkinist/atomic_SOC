
 Working directory              : /wrk/irikura/molpro.pbQSZYWlj1/
 Global scratch directory       : /wrk/irikura/molpro.pbQSZYWlj1/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.pbQSZYWlj1/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,K SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={K};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=18,sym=1,spin=0}
 
 {multi
     closed,3,6
     occ,5,6
     wf,nelec=19,sym=1,spin=1;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=1;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   K SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 13:05:37  
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

 Library entry K      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  K      19.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   19
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

     9.175 MB (compressed) written to integral file ( 17.5%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     271872.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     271872      RECORD LENGTH: 524288

 Memory used in sort:       0.83 MW

 SORT1 READ     7196526. AND WROTE       58575. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      690124. AND WROTE     3262620. INTEGRALS IN     12 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      270664.  Node maximum:      273888. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.397E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.533E-02 0.155E-01
         2 0.604E-02 0.604E-02 0.604E-02 0.206E-01 0.206E-01 0.206E-01 0.123E+00 0.123E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.11      0.85
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.30 MB (local),      403.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   3   6

 NELEC=   18   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -601.31016053    -601.31016053     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -601.31042212      -0.00026159     0.69D-03     0.10D-02     1     0       0.00      0.00    diag
   3     -601.31043138      -0.00000926     0.22D-03     0.32D-03     2     0       0.01      0.01    diag
   4     -601.31043189      -0.00000051     0.32D-04     0.10D-03     3     0       0.00      0.01    diag
   5     -601.31043189      -0.00000000     0.18D-05     0.52D-05     4     0       0.00      0.01    diag
   6     -601.31043189      -0.00000000     0.12D-06     0.30D-06     5     0       0.00      0.01    diag
   7     -601.31043189      -0.00000000     0.59D-08     0.11D-07     0     0       0.00      0.01    diag

 Final occupancy:   3   6

 !RHF STATE 1.1 Energy               -601.310431894366
  RHF One-electron energy            -822.838185200751
  RHF Two-electron energy             221.527753306386
  RHF Kinetic energy                  615.470603283655
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.976992936277

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.35267     1  1  s    0.99992
    2.1     2.00000   -14.81993     1  2  s    1.00083
    3.1     2.00000    -1.97678     1  3  s    0.99646
    1.2     2.00000   -11.74393     1  1  pz   1.00003
    2.2     2.00000   -11.74393     1  1  px   1.00002
    3.2     2.00000   -11.74393     1  1  py   1.00001
    4.2     2.00000    -1.17005     1  2  pz   1.00588
    5.2     2.00000    -1.17005     1  2  py   1.00588
    6.2     2.00000    -1.17005     1  2  px   1.00589


 HOMO      6.2    -1.170054 =     -31.8388eV
 LUMO      4.1    -0.147480 =      -4.0131eV
 LUMO-HOMO         1.022573 =      27.8256eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.40      0.29      0.85
 REAL TIME  *         2.57 SEC
 DISK USED  *        29.68 MB (local),      408.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    3    6)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      73 (   34   39)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               2   (2 determinants, 2 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 6 4 5 3   4 6 3 5 2 1 4 6 5 3   2 1 6 4 3 5 2 1 6 4   3 5 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.533D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.772D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.100D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.533D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.712D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 7 9   4 5 3 2 110 8 4 5 9
                                        7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  410  ( 6 closed/active, 336 closed/virtual, 0 active/active, 68 active/virtual )
 Total number of variables:    414
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0   -601.41453971    -601.41463537   -0.00009565    0.01528945 0.00000013 0.00000000  0.72E-02      0.14
   2    3    3    0   -601.41463541    -601.41463541   -0.00000000    0.00001713 0.00000000 0.00000000  0.52E-04      0.25

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.54E-10)
                       Final energy:   -601.41463541
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -601.458128973679
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.66611464
 One electron energy                          -826.97428581
 Two electron energy                           225.51615684
 Virial ratio                                    1.97692258
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -601.371141840317
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.49539346
 One electron energy                          -824.70604435
 Two electron energy                           223.33490251
 Virial ratio                                    1.97705222
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 3 6 5 4 2   5 4 3 6 2 1 4 5 3 6   2 1 6 4 5 3 2 1 6 4   5 3 2 4 5 6 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 1 2 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 9 7   4 5 3 2 110 8 5 4 9
                                        7 6 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.19038     1  1  s    0.99992
    2.1     2.00000   -14.65850     1  2  s    1.00088
    3.1     2.00000    -1.81742     1  3  s    0.99760
    4.1     0.50000    -0.05953     1  4  s    0.98612
    5.1     0.50000     0.00302     1  4  s   -1.09456    1  5  s    0.44618    1  6  s   -1.32381    1  9  s    2.38240
    1.2     2.00000   -11.58200     1  1  px   1.00001
    2.2     2.00000   -11.58200     1  1  py   1.00001
    3.2     2.00000   -11.58200     1  1  pz   1.00001
    4.2     2.00000    -1.01004     1  2  pz   1.00204
    5.2     2.00000    -1.01004     1  2  py   1.00204
    6.2     2.00000    -1.01004     1  2  px   1.00204
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 a0             0.99999848      0.00174124
 0a            -0.00174124      0.99999848
 
 Energy:     -601.45812897   -601.37114184
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.68       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.67      0.26      0.29      0.85
 REAL TIME  *         2.97 SEC
 DISK USED  *        32.54 MB (local),      442.69 MB (total)
 SF USED    *         6.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -601.4581290  -0.0
    -601.3711418  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 19
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        2 conf        2 CSFs
 N elec internal:       98 conf      162 CSFs
 N-1 el internal:      125 conf      317 CSFs
 N-2 el internal:       80 conf      328 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   8 (   2   6 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      73 (  34  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -601.45812897
     2      -601.37114184

 Number of blocks in overlap matrix:   144   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     144
 Number of N-1 electron functions:     317

 Number of internal configurations:                   90
 Number of singly external configurations:         11438
 Number of doubly external configurations:        192578
 Total number of contracted configurations:       204106
 Total number of uncontracted configurations:     447738

 Diagonal Coupling coefficients finished.               Storage:    224582 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    285383 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -601.45812897    -0.00000000    -0.25037967  0.63D-03  0.66D-01     0.04
    1     2     2     1.00000000     0.00000000  -601.37114184    -0.00000000    -0.23917992  0.67D-03  0.59D-01     0.04
    2     1     1     1.05786411    -0.23324428  -601.69137325    -0.23324428    -0.00271318  0.36D-03  0.56D-03     0.26
    2     2     2     1.05372856    -0.22700667  -601.59814851    -0.22700667    -0.00224306  0.15D-03  0.44D-03     0.26
    3     1     1     1.05889990    -0.23618114  -601.69431011    -0.00293686    -0.00007760  0.83D-05  0.19D-04     0.49
    3     2     2     1.05513564    -0.22948276  -601.60062460    -0.00247609    -0.00005990  0.56D-05  0.14D-04     0.49
    4     1     1     1.05947929    -0.23626965  -601.69439863    -0.00008852    -0.00000337  0.91D-06  0.57D-06     0.71
    4     2     2     1.05549599    -0.22955272  -601.60069456    -0.00006995    -0.00000255  0.60D-06  0.47D-06     0.71
    5     1     1     1.05959214    -0.23627340  -601.69440237    -0.00000375    -0.00000009  0.14D-07  0.15D-07     0.92
    5     2     2     1.05555244    -0.22955555  -601.60069739    -0.00000283    -0.00000008  0.22D-07  0.12D-07     0.92
    6     1     1     1.05959781    -0.23627350  -601.69440247    -0.00000010    -0.00000000  0.61D-09  0.56D-09     1.13
    6     2     2     1.05555847    -0.22955564  -601.60069748    -0.00000009    -0.00000000  0.14D-08  0.58D-09     1.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.9%   3.5%
 P   1.8%  23.0%  19.5%

 Initialization:   3.5%
 Other:           47.8%

 Total CPU:        1.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/222222          -0.0403670   0.9723941
 22/0222222           0.9706292   0.0424594

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970698   -0.038677
 2           0.040766    0.972467

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971468    0.001008
 2           0.001008    0.973320


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97069801 (fixed)   0.97146823 (relaxed)   0.97146770 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000510   -0.00001158   -0.23360991
 Singles      0.00134143   -0.00191236   -0.00210435
 Pairs        0.05825668    0.01317146   -0.00055924
 Total        1.05960321    0.01124752   -0.23627350
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.45798382
 Nuclear energy                         0.00000000
 Kinetic energy                       615.47773937
 One electron energy                 -826.68439662
 Two electron energy                  224.98999415
 Virial quotient                       -0.97760547
 Correlation energy                    -0.23641865
 !MRCI STATE 1.1 Energy              -601.694402471826

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.70849378 (Davidson, fixed reference)
 Cluster corrected energies          -601.70849351 (Davidson, relaxed reference)
 Cluster corrected energies          -601.70849378 (Davidson, rotated reference)

 Cluster corrected energies          -601.70730385 (Pople, fixed reference)
 Cluster corrected energies          -601.70730359 (Pople, relaxed reference)
 Cluster corrected energies          -601.70730385 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97246657 (fixed)   0.97332066 (relaxed)   0.97332014 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001447   -0.00003454   -0.00020617
 Singles      0.00095668   -0.00248238   -0.00255983
 Pairs        0.05460260   -0.22685895   -0.22678964
 Total        1.05557375   -0.22937587   -0.22955564
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.37128699
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36987999
 One electron energy                 -824.39924741
 Two electron energy                  222.79854994
 Virial quotient                       -0.97762454
 Correlation energy                    -0.22941048
 !MRCI STATE 2.1 Energy              -601.600697475423

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61344668 (Davidson, fixed reference)
 Cluster corrected energies          -601.61344642 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61344668 (Davidson, rotated reference)

 Cluster corrected energies          -601.61233394 (Pople, fixed reference)
 Cluster corrected energies          -601.61233369 (Pople, relaxed reference)
 Cluster corrected energies          -601.61233394 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        3.96       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.89      1.21      0.26      0.29      0.85
 REAL TIME  *         4.36 SEC
 DISK USED  *        35.82 MB (local),      482.12 MB (total)
 SF USED    *        29.36 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -601.70849378  AU                              
 SETTING HLSDIAG(2)     =      -601.61344668  AU                              


         HLSDIAG
    -601.7084938
    -601.6134467
                                                  


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

 Time for Seward_LS:       4.51 sec

 CPU time:      4.51 sec, REAL time:      4.80 sec


 SORTLS1 read     3942450. and wrote     3942450. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.07 sec
 SORTLS2 read     3942450. and wrote    19122750. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:   -601.694402   -601.600697
 Replaced energies:   -601.708494   -601.613447



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -601.70849378

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00

    2   2.1  0.5  0.5       0.00   20860.43       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    3   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    4   2.1  0.5 -0.5      -0.00       0.00       0.00   20860.43
                           -0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -601.70849378     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -601.70849378     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -601.61344668     0.09504711    20860.43      0.09504711    20860.43      2.5864
     4  -601.61344668     0.09504711    20860.43      0.09504711    20860.43      2.5864


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5  -0.000000000   1.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.061371974
                         0.000000000   0.000000000   0.996254527  -0.060913031

    3    1.1  0.5 -0.5   0.998291191   0.000000000   0.000000000   0.000000000
                        -0.058435422  -0.000000000  -0.000000000  -0.000000000

    4    2.1  0.5 -0.5   0.000000000   0.000000000   0.061142967  -0.003738432
                         0.000000000   0.000000000   0.061142900   0.996247513


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  99.252%   0.748%
    3    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%   0.748%  99.252%


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
              1      24       31.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        3.96       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.59      5.69      1.21      0.26      0.29      0.85
 REAL TIME  *        11.22 SEC
 DISK USED  *        35.87 MB (local),      724.60 MB (total)
 SF USED    *        29.36 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -601.613446675875

              CI           MULTI         RHF-SCF
   -601.60069748   -601.37114184   -601.31043189
 **********************************************************************************************************************************
 Molpro calculation terminated
