
 Working directory              : /wrk/irikura/molpro.j8fJcQqLHY/
 Global scratch directory       : /wrk/irikura/molpro.j8fJcQqLHY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.j8fJcQqLHY/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,K SO-CI
                                                                                 ! (1/10) active space adds 3d
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={K};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=18,sym=1,spin=0}
 
 {multi
     closed,3,6
     occ,10,9
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   K SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 13:25:59  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


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

 SORT1 READ     7196526. AND WROTE       58575. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      690124. AND WROTE     3262620. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         1.19      0.93
 REAL TIME  *         2.24 SEC
 DISK USED  *        29.30 MB (local),      403.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   3   6

 NELEC=   18   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -601.31016053    -601.31016053     0.00D+00     0.14D+00     0     0       0.00      0.01    start
   2     -601.31042212      -0.00026159     0.69D-03     0.10D-02     1     0       0.00      0.01    diag
   3     -601.31043138      -0.00000926     0.22D-03     0.32D-03     2     0       0.00      0.01    diag
   4     -601.31043189      -0.00000051     0.32D-04     0.10D-03     3     0       0.00      0.01    diag
   5     -601.31043189      -0.00000000     0.18D-05     0.52D-05     4     0       0.01      0.02    diag
   6     -601.31043189      -0.00000000     0.12D-06     0.30D-06     5     0       0.00      0.02    diag
   7     -601.31043189      -0.00000000     0.59D-08     0.11D-07     0     0       0.00      0.02    diag

 Final occupancy:   3   6

 !RHF STATE 1.1 Energy               -601.310431894365
  RHF One-electron energy            -822.838185200750
  RHF Two-electron energy             221.527753306385
  RHF Kinetic energy                  615.470603283654
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
    2.2     2.00000   -11.74393     1  1  px   1.00001
    3.2     2.00000   -11.74393     1  1  py   1.00000
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
 CPU TIMES  *         1.33      0.14      0.93
 REAL TIME  *         3.09 SEC
 DISK USED  *        29.68 MB (local),      408.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    3    6)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      65 (   29   36)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               7   (7 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.294D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.439D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.346D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 4 6 5 3   4 6 3 5 2 1 4 6 5 3   2 1 6 4 5 3 2 1 6 4   5 3 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.498D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.896D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.109D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.547D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.726D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.295D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.561D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.850D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.129D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 7 9   4 5 3 2 110 8 4 5 9
                                        7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  653  ( 39 closed/active, 303 closed/virtual, 0 active/active, 311 active/virtual )
 Total number of variables:    667
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0   -601.41453971    -601.41463539   -0.00009567    0.01528945 0.00001954 0.00000000  0.58E-02      0.23
   2    3    3    0   -601.41463541    -601.41463541   -0.00000000    0.00000964 0.00000000 0.00000000  0.22E-04      0.42

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.12E-10)
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
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 5 6 3 4   5 3 4 6 2 1 5 3 4 6   2 1 5 3 6 4 2 1 5 3   4 6 2 4 6 5 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 2   1 3 2 1 3 9 7 810 4   5 6 2 1 3 9 710 8 6   4 5 2 1 310 8 5 4 6
                                        9 7 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.19038     1  1  s    0.99992
    2.1     2.00000   -14.65850     1  2  s    1.00088
    3.1     2.00000    -1.81742     1  3  s    0.99760
    4.1     0.50000    -0.05953     1  4  s    0.98612
    5.1     0.50000     0.00302     1  4  s   -1.09456    1  5  s    0.44618    1  6  s   -1.32381    1  9  s    2.38240
    6.1     0.00000     0.03681     1  1  d0   0.78292
    7.1     0.00000     0.03681     1  1  d2+  0.78292
    8.1     0.00000     0.03681     1  1  d1-  0.78292
    9.1     0.00000     0.03681     1  1  d2-  0.78292
   10.1     0.00000     0.03681     1  1  d1+  0.78292
    1.2     2.00000   -11.58200     1  1  px   1.00001
    2.2     2.00000   -11.58200     1  1  py   1.00001
    3.2     2.00000   -11.58200     1  1  pz   1.00001
    4.2     2.00000    -1.01004     1  2  pz   1.00204
    5.2     2.00000    -1.01004     1  2  py   1.00204
    6.2     2.00000    -1.01004     1  2  px   1.00204
    7.2     0.00000     0.01188     1  3  pz   1.00386
    8.2     0.00000     0.01188     1  3  py   1.00386
    9.2     0.00000     0.01188     1  3  px   1.00386
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 a000000 000      0.99999848      0.00174124
 0a00000 000     -0.00174124      0.99999848
 
 Energy:       -601.45812897   -601.37114184
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.68       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.72      0.38      0.14      0.93
 REAL TIME  *         3.67 SEC
 DISK USED  *        37.57 MB (local),      503.05 MB (total)
 SF USED    *        21.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -601.4581290  -0.0
    -601.3711418   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 19
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:     7758 conf    24750 CSFs
 N-1 el internal:     1845 conf     7161 CSFs
 N-2 el internal:      260 conf     1108 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   8 (   2   6 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.78 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -601.45812897
     2      -601.37114184

 Number of blocks in overlap matrix:   144   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     144
 Number of N-1 electron functions:    7161

 Number of internal configurations:                12555
 Number of singly external configurations:        232449
 Number of doubly external configurations:        152914
 Total number of contracted configurations:       397918
 Total number of uncontracted configurations:    1414678

 Diagonal Coupling coefficients finished.               Storage:   3986790 words, CPU-Time:      0.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    528942 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -601.45812897    -0.00000000    -0.25077145  0.62D-02  0.61D-01     0.64
    1     2     2     1.00000000     0.00000000  -601.37114184    -0.00000000    -0.23926879  0.32D-02  0.57D-01     0.64
    2     1     1     1.05793811    -0.23315910  -601.69128807    -0.23315910    -0.00284726  0.52D-03  0.50D-03     4.03
    2     2     2     1.05367851    -0.22701425  -601.59815609    -0.22701425    -0.00224362  0.17D-03  0.42D-03     4.03
    3     1     1     1.05856141    -0.23620291  -601.69433189    -0.00304382    -0.00007613  0.91D-05  0.17D-04     7.38
    3     2     2     1.05504948    -0.22948593  -601.60062777    -0.00247168    -0.00005814  0.55D-05  0.13D-04     7.38
    4     1     1     1.05914861    -0.23628911  -601.69441808    -0.00008619    -0.00000303  0.87D-06  0.48D-06    10.53
    4     2     2     1.05541162    -0.22955340  -601.60069524    -0.00006747    -0.00000241  0.61D-06  0.43D-06    10.53
    5     1     1     1.05924856    -0.23629246  -601.69442143    -0.00000335    -0.00000007  0.17D-07  0.12D-07    13.67
    5     2     2     1.05546754    -0.22955607  -601.60069791    -0.00000267    -0.00000007  0.24D-07  0.11D-07    13.67
    6     1     1     1.05925260    -0.23629254  -601.69442151    -0.00000008    -0.00000000  0.59D-09  0.36D-09    16.82
    6     2     2     1.05547352    -0.22955615  -601.60069799    -0.00000008    -0.00000000  0.15D-08  0.47D-09    16.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  16.7%
 S   7.6%  44.1%
 P   1.3%  20.2%   5.2%

 Initialization:   1.7%
 Other:            3.2%

 Total CPU:       16.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/00000222222000          -0.0403854   0.9723927
 22/000000222222000           0.9706117   0.0424823

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970681   -0.038695
 2           0.040789    0.972465

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971451    0.001010
 2           0.001010    0.973320


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97068060 (fixed)   0.97145156 (relaxed)   0.97145104 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036532   -0.00045273   -0.22321519
 Singles      0.00536767   -0.01200024   -0.01252269
 Pairs        0.05390657    0.01214902   -0.00055467
 Total        1.05963956   -0.00030395   -0.23629254
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.45798367
 Nuclear energy                         0.00000000
 Kinetic energy                       615.47810660
 One electron energy                 -826.68449197
 Two electron energy                  224.99007045
 Virial quotient                       -0.97760491
 Correlation energy                    -0.23643785
 !MRCI STATE 1.1 Energy              -601.694421514838

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.70852257 (Davidson, fixed reference)
 Cluster corrected energies          -601.70852229 (Davidson, relaxed reference)
 Cluster corrected energies          -601.70852257 (Davidson, rotated reference)

 Cluster corrected energies          -601.70733217 (Pople, fixed reference)
 Cluster corrected energies          -601.70733191 (Pople, relaxed reference)
 Cluster corrected energies          -601.70733217 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97246516 (fixed)   0.97332021 (relaxed)   0.97331968 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009590   -0.00022030   -0.00041797
 Singles      0.00323656   -0.00951168   -0.00971498
 Pairs        0.05224228   -0.21962529   -0.21942319
 Total        1.05557474   -0.22935726   -0.22955615
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.37128715
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36986570
 One electron energy                 -824.39917796
 Two electron energy                  222.79847997
 Virial quotient                       -0.97762457
 Correlation energy                    -0.22941084
 !MRCI STATE 2.1 Energy              -601.600697990074

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61344744 (Davidson, fixed reference)
 Cluster corrected energies          -601.61344718 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61344744 (Davidson, rotated reference)

 Cluster corrected energies          -601.61233469 (Pople, fixed reference)
 Cluster corrected energies          -601.61233444 (Pople, relaxed reference)
 Cluster corrected energies          -601.61233469 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.32       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        19.05     17.32      0.38      0.14      0.93
 REAL TIME  *        21.40 SEC
 DISK USED  *        44.22 MB (local),      582.82 MB (total)
 SF USED    *        78.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -601.70852257  AU                              
 SETTING HLSDIAG(2)     =      -601.61344744  AU                              


         HLSDIAG
    -601.7085226
    -601.6134474
                                                  


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

 Time for Seward_LS:       4.88 sec

        3938743. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      967 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.88 sec, REAL time:      4.92 sec


 SORTLS1 read     3942450. and wrote     3942450. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec
 SORTLS2 read     3942450. and wrote    19122750. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:   102.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   102.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:   -601.694422   -601.600698
 Replaced energies:   -601.708523   -601.613447



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -601.70852257

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00   20866.58      -0.00       0.00
                           -0.00       0.00       0.00       0.00

    3   1.1  0.5 -0.5       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

    4   2.1  0.5 -0.5       0.00       0.00       0.00   20866.58
                            0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -601.70852257     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -601.70852257     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -601.61344744     0.09507513    20866.58      0.09507513    20866.58      2.5871
     4  -601.61344744     0.09507513    20866.58      0.09507513    20866.58      2.5871


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5  -0.000000000   1.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.092846683
                         0.000000000   0.000000000   0.992895090   0.074423344

    3    1.1  0.5 -0.5   0.734019135   0.000000000   0.000000000   0.000000000
                        -0.679128787  -0.000000000   0.000000000  -0.000000000

    4    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.079440372   0.991377921
                         0.000000000  -0.000000000  -0.088592144  -0.054867816


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  98.584%   1.416%
    3    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%   1.416%  98.584%


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
              1      24       97.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.32       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        46.68     27.62     17.32      0.38      0.14      0.93
 REAL TIME  *        50.87 SEC
 DISK USED  *        44.26 MB (local),      825.30 MB (total)
 SF USED    *        97.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -601.613447437614

              CI           MULTI         RHF-SCF
   -601.60069799   -601.37114184   -601.31043189
 **********************************************************************************************************************************
 Molpro calculation terminated
