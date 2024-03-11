
 Working directory              : /wrk/irikura/molpro.G1FSMIUIw8/
 Global scratch directory       : /wrk/irikura/molpro.G1FSMIUIw8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.G1FSMIUIw8/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=20,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,3,6
     occ,5,6
     wf,sym=1,spin=0;state,2;
       weight,99,1
     wf,sym=1,spin=2;state,1;
       weight,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5203.2}
 hlsdiag(3) = energd
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ca SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 12:07:59  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CA     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     G aug-cc-pwCVQZ-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         267
 NUMBER OF SYMMETRY AOS:          223
 NUMBER OF CONTRACTIONS:          143   (   78Ag  +   65Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     55.837 MB (compressed) written to integral file ( 14.3%)

     Node minimum: 0.262 MB, node maximum: 5.767 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     890523.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     890523      RECORD LENGTH: 524288

 Memory used in sort:       1.45 MW

 SORT1 READ    50611021. AND WROTE      174729. INTEGRALS IN      1 RECORDS. CPU TIME:     0.32 SEC, REAL TIME:     0.35 SEC
 SORT2 READ     5153556. AND WROTE    26875641. INTEGRALS IN    210 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      889139.  Node maximum:      902391. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.135E-04 0.112E-02 0.123E-02 0.123E-02 0.123E-02 0.123E-02 0.123E-02 0.205E-02
         2 0.228E-03 0.228E-03 0.228E-03 0.665E-02 0.665E-02 0.665E-02 0.161E-01 0.161E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.37      3.03
 REAL TIME  *         4.24 SEC
 DISK USED  *        29.79 MB (local),        1.02 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -679.62929276    -679.62929276     0.00D+00     0.87D-01     0     0       0.01      0.01    start
   2     -679.62929280      -0.00000004     0.54D-04     0.40D-04     1     0       0.01      0.02    diag
   3     -679.62929280      -0.00000000     0.32D-05     0.32D-05     2     0       0.01      0.03    diag
   4     -679.62929280      -0.00000000     0.56D-06     0.58D-06     3     0       0.01      0.04    diag
   5     -679.62929280      -0.00000000     0.27D-07     0.16D-06     0     0       0.00      0.04    diag

 Final occupancy:   4   6

 !RHF STATE 1.1 Energy               -679.629292802231
  RHF One-electron energy            -930.344217369218
  RHF Two-electron energy             250.714924566987
  RHF Kinetic energy                  697.187747144584
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.974815314219

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.10835     1  1  s    0.99730
    2.1     2.00000   -16.96325     1  2  s    1.00435
    3.1     2.00000    -2.26167     1  3  s    0.99383
    4.1     2.00000    -0.19630     1  4  s    1.00116
    1.2     2.00000   -13.63698     1  1  pz   0.99997
    2.2     2.00000   -13.63698     1  1  py   0.99997
    3.2     2.00000   -13.63698     1  1  px   0.99997
    4.2     2.00000    -1.33889     1  2  px   1.00013
    5.2     2.00000    -1.33889     1  2  pz   1.00013
    6.2     2.00000    -1.33889     1  2  py   1.00013


 HOMO      4.1    -0.196295 =      -5.3415eV
 LUMO      7.2     0.009723 =       0.2646eV
 LUMO-HOMO         0.206018 =       5.6060eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.52       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.43      0.06      3.03
 REAL TIME  *         4.31 SEC
 DISK USED  *        30.56 MB (local),        1.04 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    3    6)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:     132 (   73   59)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 1 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 4 6 5 3 2   1 6 4 5 3 2 6 4 5 3   2 1 812 91113101514   7 6 4 5 3 2 71310 9
                                       11 8121415 1 4 6 5 3   2 911 71310141512 8   6 4 5 3 2 1 1 2 6 4   5 3 5 6 4 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.721D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.152D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.155D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.209D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.333D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 2 3 1   3 2 3 1 2 4 5 6 9 7   810 3 1 2 4 9 7 5 6  10 8 1 3 2 4 5 9 7 6
                                       10 8 1 3 2 6 9 7 4 5   810 1 3 2 6 9 7 5 4  10 8 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.98020   0.00990
 Weight factors for state symmetry  2:    0.00990
 
 Number of orbital rotations:  725  ( 6 closed/active, 573 closed/virtual, 0 active/active, 146 active/virtual )
 Total number of variables:    734
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   18    0   -679.62661847    -679.62745419   -0.00083572    0.00116666 0.00000047 0.00000000  0.81E+00      0.37
   2    8   14    0   -679.62741860    -679.62743116   -0.00001256    0.00108041 0.00000002 0.00000000  0.63E-01      0.75
   3    4    8    0   -679.62743115    -679.62743115   -0.00000000    0.00000029 0.00000000 0.00000000  0.59E-05      1.03

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.79E-10)
                       Final energy:   -679.62743115
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -679.630383837660
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.18351117
 One electron energy                          -930.30086596
 Two electron energy                           250.67048213
 Virial ratio                                    1.97482280
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -679.464716680326
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.39498866
 One electron energy                          -929.39613535
 Two electron energy                           249.93141867
 Virial ratio                                    1.97428965
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -679.497830011272
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.15473390
 One electron energy                          -928.56914013
 Two electron energy                           249.07131011
 Virial ratio                                    1.97467291
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 1 4 5 3 6   2 6 4 5 3 2 6 5 4 3   2 1 812 91113101514   7 6 4 5 3 2 71310 9
                                       11 8121415 1 4 6 5 3   2 911 713101514 812   6 5 4 3 2 1 1 2 6 5   3 4 5 6 4 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 1   3 2 1 3 2 4 5 9 7 6   810 1 3 2 9 7 4 5 6   810 1 3 2 4 5 9 7 6
                                        810 1 3 2 6 9 7 4 5   810 1 3 2 6 9 7 5 4  10 8 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.11189     1  1  s    0.99730
    2.1     2.00000   -16.96677     1  2  s    1.00435
    3.1     2.00000    -2.26506     1  3  s    0.99387
    4.1     1.97333    -0.19574     1  4  s    1.01586
    5.1     0.02667     0.08701     1  3  s   -0.53434    1  4  s   -1.72630    1  5  s   -0.77356    1  6  s    1.33701
                                    1  7  s    1.21023
    1.2     2.00000   -13.64051     1  1  pz   0.99997
    2.2     2.00000   -13.64051     1  1  py   0.99997
    3.2     2.00000   -13.64051     1  1  px   0.99997
    4.2     2.00000    -1.34236     1  2  px   1.00006
    5.2     2.00000    -1.34236     1  2  pz   1.00006
    6.2     2.00000    -1.34236     1  2  py   1.00006
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20             0.99832387     -0.01225950
 ab             0.00141801      0.69582663
 ba            -0.00141801     -0.69582663
 02            -0.05783965     -0.17748325
 
 Energy:     -679.63038384   -679.46471668
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa             1.00000000
 
 Energy:     -679.49783001
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       37.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.03       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.47      1.04      0.06      3.03
 REAL TIME  *         5.68 SEC
 DISK USED  *        38.73 MB (local),        1.28 GB (total)
 SF USED    *        19.74 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -679.6303838  -0.0
    -679.4647167  -0.0
    -679.4978300  -0.0
                                                  


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
 Number of external orbitals:     132 (  73  59 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.40 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.63038384
     2      -679.46471668

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.98D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          3314
 Number of doubly external configurations:        214087
 Total number of contracted configurations:       217413
 Total number of uncontracted configurations:     383135

 Diagonal Coupling coefficients finished.               Storage:  178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  305050 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.63038384    -0.00000000    -0.30192515  0.12D-02  0.95D-01     0.10
    1     2     2     1.00000000     0.00000000  -679.46471668    -0.00000000    -0.30792738  0.23D-01  0.93D-01     0.10
    2     1     1     1.08559574    -0.28401892  -679.91440276    -0.28401892    -0.00598106  0.27D-03  0.24D-02     0.34
    2     2     2     1.09679361    -0.28364581  -679.74836249    -0.28364581    -0.00770622  0.12D-02  0.37D-02     0.34
    3     1     1     1.08180260    -0.29022157  -679.92060540    -0.00620265    -0.00019256  0.44D-05  0.72D-04     0.59
    3     2     2     1.09051370    -0.29144279  -679.75615947    -0.00779698    -0.00034461  0.96D-04  0.11D-03     0.59
    4     1     1     1.08285249    -0.29043595  -679.92081979    -0.00021439    -0.00000967  0.37D-06  0.42D-05     0.83
    4     2     2     1.09189363    -0.29180331  -679.75651999    -0.00036052    -0.00002168  0.32D-05  0.10D-04     0.83
    5     1     1     1.08303273    -0.29044704  -679.92083088    -0.00001109    -0.00000049  0.11D-07  0.21D-06     1.06
    5     2     2     1.09228950    -0.29182577  -679.75654245    -0.00002245    -0.00000129  0.86D-07  0.59D-06     1.06
    6     1     1     1.08308171    -0.29044759  -679.92083143    -0.00000055    -0.00000003  0.16D-08  0.13D-07     1.30
    6     2     2     1.09229571    -0.29182709  -679.75654377    -0.00000133    -0.00000007  0.57D-08  0.32D-07     1.30
    7     1     1     1.08309966    -0.29044762  -679.92083146    -0.00000003    -0.00000000  0.50D-10  0.13D-08     1.55
    7     2     2     1.09231308    -0.29182716  -679.75654385    -0.00000007    -0.00000001  0.21D-09  0.45D-08     1.55


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   1.3%
 P   0.6%  11.6%  12.9%

 Initialization:   5.8%
 Other:           67.7%

 Total CPU:        1.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222           0.9572874   0.0686020
 2/\222          -0.0739685   0.9330187
 202222          -0.0374456  -0.2005770

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0222  22.1    -0.0077615  -0.1164855
 2\0222   6.1    -0.0028212  -0.0606885

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957700   -0.077878
 2           0.081959    0.952893

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960859    0.002234
 2           0.002234    0.956408


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95770034 (fixed)   0.96087075 (relaxed)   0.96085898 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002825   -0.00004648   -0.30183048
 Singles      0.00106271   -0.00243929   -0.00253704
 Pairs        0.08203930    0.03890520    0.01391990
 Total        1.08313026    0.03641942   -0.29044762
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.62923243
 Nuclear energy                         0.00000000
 Kinetic energy                       697.40348686
 One electron energy                 -930.51313708
 Two electron energy                  250.59230562
 Virial quotient                       -0.97493179
 Correlation energy                    -0.29159903
 !MRCI STATE 1.1 Energy              -679.920831460656

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.94507217 (Davidson, fixed reference)
 Cluster corrected energies          -679.94506443 (Davidson, relaxed reference)
 Cluster corrected energies          -679.94507217 (Davidson, rotated reference)

 Cluster corrected energies          -679.94121713 (Pople, fixed reference)
 Cluster corrected energies          -679.94121030 (Pople, relaxed reference)
 Cluster corrected energies          -679.94121713 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95289273 (fixed)   0.95679742 (relaxed)   0.95640834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084347   -0.00011803   -0.00118578
 Singles      0.02056726   -0.01221808   -0.01666643
 Pairs        0.07182368   -0.27855889   -0.27397496
 Total        1.09323441   -0.29089500   -0.29182716
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.46586809
 Nuclear energy                         0.00000000
 Kinetic energy                       697.38143547
 One electron energy                 -928.63578403
 Two electron energy                  248.87924019
 Virial quotient                       -0.97472704
 Correlation energy                    -0.29067576
 !MRCI STATE 2.1 Energy              -679.756543845032

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.78364483 (Davidson, fixed reference)
 Cluster corrected energies          -679.78338643 (Davidson, relaxed reference)
 Cluster corrected energies          -679.78364483 (Davidson, rotated reference)

 Cluster corrected energies          -679.77947361 (Pople, fixed reference)
 Cluster corrected energies          -679.77924287 (Pople, relaxed reference)
 Cluster corrected energies          -679.77947361 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       37.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        4.73       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.11      1.64      1.04      0.06      3.03
 REAL TIME  *         7.71 SEC
 DISK USED  *        42.44 MB (local),        1.39 GB (total)
 SF USED    *        36.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -679.94507217  AU                              
 SETTING HLSDIAG(2)     =      -679.78364483  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 20
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        1 conf        1 CSFs
 N elec internal:       15 conf       15 CSFs
 N-1 el internal:       34 conf       66 CSFs
 N-2 el internal:       19 conf       91 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:     132 (  73  59 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.49783001

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      66

 Number of internal configurations:                    6
 Number of singly external configurations:          4356
 Number of doubly external configurations:        143799
 Total number of contracted configurations:       148161
 Total number of uncontracted configurations:     399751

 Diagonal Coupling coefficients finished.               Storage:  177236 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  302953 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.49783001    -0.00000000    -0.28360177  0.18D-01  0.68D-01     0.02
    2     1     1     1.08005346    -0.27418323  -679.77201324    -0.27418323    -0.00426823  0.87D-03  0.88D-03     0.07
    3     1     1     1.07708431    -0.27886943  -679.77669944    -0.00468620    -0.00014015  0.30D-04  0.29D-04     0.13
    4     1     1     1.07678434    -0.27903336  -679.77686337    -0.00016393    -0.00000680  0.16D-05  0.15D-05     0.19
    5     1     1     1.07669534    -0.27904141  -679.77687142    -0.00000804    -0.00000021  0.18D-07  0.57D-07     0.25
    6     1     1     1.07668048    -0.27904165  -679.77687167    -0.00000025    -0.00000001  0.88D-09  0.32D-08     0.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   3.2%
 P   9.7%  19.4%  16.1%

 Initialization:   3.2%
 Other:           48.4%

 Total CPU:        0.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222           0.9637271

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/0222  22.1    -0.0712869


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96372707 (fixed)   0.96372707 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001162   -0.00002465   -0.00002591
 Singles      0.01066930   -0.00730250   -0.00954558
 Pairs        0.06601207   -0.27171450   -0.26947016
 Total        1.07669300   -0.27904165   -0.27904165
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.49783001
 Nuclear energy                         0.00000000
 Kinetic energy                       697.32359313
 One electron energy                 -928.36954224
 Two electron energy                  248.59267057
 Virial quotient                       -0.97483705
 Correlation energy                    -0.27904165
 !CI(SD) STATE 1.1 Energy            -679.776871665413

 Properties without orbital relaxation:

 !CI(SD) STATE 1.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.79827221 (Davidson, fixed reference)
 Cluster corrected energies          -679.79827221 (Davidson, relaxed reference)

 Cluster corrected energies          -679.79354223 (Pople, fixed reference)
 Cluster corrected energies          -679.79354223 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       37.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        5.95       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.48      0.36      1.64      1.04      0.06      3.03
 REAL TIME  *         8.15 SEC
 DISK USED  *        43.66 MB (local),        1.43 GB (total)
 SF USED    *        36.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =      -679.79827221  AU                              


         HLSDIAG
    -679.9450722
    -679.7836448
    -679.7982722
                                                  


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

 Time for Seward_LS:      23.70 sec

       32470766. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     7939 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     23.71 sec, REAL time:     23.82 sec


 SORTLS1 read    32490554. and wrote    32490554. SO integrals in   180 records. CPU time:      0.35 sec, REAL time:      0.48 sec
 SORTLS2 read    32490554. and wrote    32490554. SO integrals in    90 records. CPU time:      0.06 sec, REAL time:      0.15 sec

 FILE SIZES: FILE 1:   559.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   559.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -679.920831   -679.756544
 Replaced energies:   -679.945072   -679.783645

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -679.776872
 Replaced energies:   -679.798272



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -679.94507217

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   35429.21       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00

    3   1.1  1.0  1.0       0.00       0.00   32218.87       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00   32218.87       0.00
                            0.00       0.00      -0.00       0.00       0.00

    5   1.1  1.0 -1.0       0.00       0.00       0.00       0.00   32218.87
                            0.00       0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by   -679.94507217 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000   35429.205       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000   32218.867       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000   32218.867       0.000
                                0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   32218.867
                               -0.000      -0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -679.94507217     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -679.79827221     0.14679996    32218.87      0.14679996    32218.87      3.9946
    3  -679.79827221     0.14679996    32218.87      0.14679996    32218.87      3.9946
    4  -679.79827221     0.14679996    32218.87      0.14679996    32218.87      3.9946
    5  -679.78364483     0.16142734    35429.21      0.16142734    35429.21      4.3927

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.82458522  0.27106691  0.05442250  0.00000000
                           0.00000000 -0.44604989 -0.21132826 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.02162450 -0.01024519  0.00000000 -0.00000000
                          -0.00000000 -0.06344511  0.03639507  0.99703437 -0.00000000

   1    1  |1 1>-          0.00000000  0.04989312  0.02363822 -0.00000000 -0.00000000
                           0.00000000 -0.33781132  0.93801640 -0.05441192 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -679.94507217      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -679.79827221      0.14679996    32218.87      0.14679996    32218.87      3.9946
     3   1   -679.79827221      0.14679996    32218.87      0.14679996    32218.87      3.9946
     4   1   -679.79827221      0.14679996    32218.87      0.14679996    32218.87      3.9946
     5   1   -679.78364483      0.16142734    35429.21      0.16142734    35429.21      4.3927

 E0 =   -679.94507217 is the energy of the lowest zeroth-order state
 E1 =   -679.94507217 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000000  0.82458522  0.27106691  0.05442250  0.00000000
                                0.00000000 -0.44604989 -0.21132826 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.02162450 -0.01024519  0.00000000 -0.00000000
                               -0.00000000 -0.06344511  0.03639507  0.99703437 -0.00000000

  5  1     1    1  |1 1>-       0.00000000  0.04989312  0.02363822 -0.00000000 -0.00000000
                                0.00000000 -0.33781132  0.93801640 -0.05441192 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%   87.89%   11.81%    0.30%    0.00%
  4  1     1    1  |1 0>          0.00%    0.45%    0.14%   99.41%    0.00%
  5  1     1    1  |1 1>-         0.00%   11.66%   88.04%    0.30%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      533.95       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        5.95       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        33.44     26.94      0.36      1.64      1.04      0.06      3.03
 REAL TIME  *        36.10 SEC
 DISK USED  *        43.78 MB (local),        2.50 GB (total)
 SF USED    *       519.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=   -679.783644828404

              CI              CI           MULTI         RHF-SCF
   -679.77687167   -679.75654385   -679.49783001   -679.62929280
 **********************************************************************************************************************************
 Molpro calculation terminated
