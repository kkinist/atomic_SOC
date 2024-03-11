
 Working directory              : /wrk/irikura/molpro.MHKtsNJmJB/
 Global scratch directory       : /wrk/irikura/molpro.MHKtsNJmJB/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.MHKtsNJmJB/

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
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=20,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,3,6
     occ,5,6
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,1;
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
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ca SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 12:04:13  
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

     57.410 MB (compressed) written to integral file ( 13.9%)

     Node minimum: 0.262 MB, node maximum: 4.194 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     890523.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     890523      RECORD LENGTH: 524288

 Memory used in sort:       1.45 MW

 SORT1 READ    50611021. AND WROTE      174729. INTEGRALS IN      1 RECORDS. CPU TIME:     0.33 SEC, REAL TIME:     0.37 SEC
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
 CPU TIMES  *         4.00      3.65
 REAL TIME  *         4.77 SEC
 DISK USED  *        29.79 MB (local),        1.02 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -679.62929276    -679.62929276     0.00D+00     0.87D-01     0     0       0.01      0.02    start
   2     -679.62929280      -0.00000004     0.54D-04     0.40D-04     1     0       0.01      0.03    diag
   3     -679.62929280      -0.00000000     0.32D-05     0.32D-05     2     0       0.00      0.03    diag
   4     -679.62929280      -0.00000000     0.56D-06     0.58D-06     3     0       0.01      0.04    diag
   5     -679.62929280      -0.00000000     0.27D-07     0.16D-06     0     0       0.01      0.05    diag

 Final occupancy:   4   6

 !RHF STATE 1.1 Energy               -679.629292802232
  RHF One-electron energy            -930.344217369211
  RHF Two-electron energy             250.714924566980
  RHF Kinetic energy                  697.187747144583
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
 CPU TIMES  *         4.05      0.05      3.65
 REAL TIME  *         4.84 SEC
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
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.829D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.157D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.158D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.197D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.322D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 2 3 1   3 2 3 1 2 4 5 6 9 7   810 3 1 2 4 9 7 5 6  10 8 1 3 2 4 5 9 7 6
                                       10 8 1 3 2 6 9 7 4 5   810 1 3 2 6 9 7 5 4  10 8 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333
 Weight factors for state symmetry  2:    0.33333
 
 Number of orbital rotations:  725  ( 6 closed/active, 573 closed/virtual, 0 active/active, 146 active/virtual )
 Total number of variables:    734
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -679.53905416    -679.54832514   -0.00927099    0.03841745 0.00000201 0.00000000  0.48E+00      0.30
   2    6   10    0   -679.54812332    -679.54813173   -0.00000840    0.00224825 0.00000000 0.00000000  0.88E-02      0.70
   3    4    8    0   -679.54813174    -679.54813174   -0.00000000    0.00000377 0.00000000 0.00000000  0.15E-04      0.98

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.10E-10)
                       Final energy:   -679.54813174
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -679.627808405028
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.34883171
 One electron energy                          -930.69726617
 Two electron energy                           251.06945776
 Virial ratio                                    1.97458801
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -679.503118605492
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.03769456
 One electron energy                          -927.76338201
 Two electron energy                           248.26026341
 Virial ratio                                    1.97484415
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -679.513468198723
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.92890203
 One electron energy                          -927.32577922
 Two electron energy                           247.81231102
 Virial ratio                                    1.97501118
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 4 6 5 3 2   1 6 5 4 3 2 6 5 4 3   2 1 812 91113101514   7 6 4 5 3 2 71310 9
                                       11 8121415 1 4 6 5 3   2 9111310 71514 812   6 5 4 3 2 1 1 2 6 5   3 4 5 6 3 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 1   3 2 1 3 2 4 5 6 9 7   810 1 3 2 9 7 4 5 6   810 1 3 2 4 5 9 7 6
                                        810 1 3 2 6 9 7 4 5   810 1 3 2 6 9 7 5 4  10 8 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.19848     1  1  s    0.99730
    2.1     2.00000   -17.05255     1  2  s    1.00427
    3.1     2.00000    -2.34873     1  3  s    0.99004
    4.1     1.33328    -0.19582     1  4  s    1.16865
    5.1     0.66672    -0.01250     1  4  s   -0.41507    1  6  s   -0.55604    1  7  s    0.47076    1 11  s    1.05699
    1.2     2.00000   -13.72675     1  1  pz   1.00000
    2.2     2.00000   -13.72675     1  1  py   1.00000
    3.2     2.00000   -13.72675     1  1  px   1.00000
    4.2     2.00000    -1.42658     1  2  px   0.99552
    5.2     2.00000    -1.42658     1  2  pz   0.99552
    6.2     2.00000    -1.42658     1  2  py   0.99552
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20             0.98344236     -0.18098525
 ab             0.12798137      0.69542848
 ba            -0.12798137     -0.69542848
 
 Energy:     -679.62780841   -679.50311861
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa             1.00000000
 
 Energy:     -679.51346820
 


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
 CPU TIMES  *         5.02      0.96      0.05      3.65
 REAL TIME  *         6.11 SEC
 DISK USED  *        38.73 MB (local),        1.28 GB (total)
 SF USED    *        19.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -679.6278084  -0.0
    -679.5031186  -0.0
    -679.5134682  -0.0
                                                  


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

 Integral transformation finished. Total CPU:   0.06 sec, npass=  1  Memory used:   0.40 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.62780841
     2      -679.50311861

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          3314
 Number of doubly external configurations:        214087
 Total number of contracted configurations:       217413
 Total number of uncontracted configurations:     383135

 Diagonal Coupling coefficients finished.               Storage:  178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  305050 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.62780841    -0.00000000    -0.31088971  0.38D-02  0.11D+00     0.10
    1     2     2     1.00000000     0.00000000  -679.50311861    -0.00000000    -0.27552112  0.29D-02  0.73D-01     0.10
    2     1     1     1.09726241    -0.28285985  -679.91066825    -0.28285985    -0.00934294  0.12D-02  0.50D-02     0.34
    2     2     2     1.07034718    -0.26831510  -679.77143371    -0.26831510    -0.00546657  0.11D-02  0.24D-02     0.34
    3     1     1     1.08415270    -0.29207597  -679.91988438    -0.00921612    -0.00035584  0.23D-04  0.14D-03     0.58
    3     2     2     1.06776862    -0.27388466  -679.77700327    -0.00556956    -0.00023444  0.10D-04  0.11D-03     0.58
    4     1     1     1.08385231    -0.29246021  -679.92026861    -0.00038423    -0.00001795  0.54D-06  0.74D-05     0.82
    4     2     2     1.06835303    -0.27413402  -679.77725263    -0.00024936    -0.00001579  0.86D-06  0.73D-05     0.82
    5     1     1     1.08380350    -0.29247940  -679.92028781    -0.00001920    -0.00000103  0.88D-07  0.38D-06     1.05
    5     2     2     1.06844703    -0.27415026  -679.77726887    -0.00001624    -0.00000115  0.73D-07  0.54D-06     1.05
    6     1     1     1.08378199    -0.29248046  -679.92028886    -0.00000105    -0.00000005  0.49D-09  0.17D-07     1.29
    6     2     2     1.06844830    -0.27415143  -679.77727004    -0.00000117    -0.00000005  0.20D-08  0.23D-07     1.29
    7     1     1     1.08378094    -0.29248051  -679.92028891    -0.00000005    -0.00000000  0.77D-10  0.11D-08     1.53
    7     2     2     1.06845616    -0.27415149  -679.77727010    -0.00000006    -0.00000000  0.37D-09  0.17D-08     1.53


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.7%   0.7%
 P   1.3%   9.2%  13.7%

 Initialization:   5.9%
 Other:           68.0%

 Total CPU:        1.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.1100562   0.9614345
 220222           0.9542019  -0.1069473

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958404   -0.064473
 2           0.068941    0.964892

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960568    0.002004
 2           0.002004    0.967350


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95840422 (fixed)   0.96057039 (relaxed)   0.96056827 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000463   -0.00001876   -0.29544902
 Singles      0.00079982   -0.00111553   -0.00124520
 Pairs        0.08298151    0.02883717    0.00421371
 Total        1.08378597    0.02770288   -0.29248051
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.62721129
 Nuclear energy                         0.00000000
 Kinetic energy                       697.43728805
 One electron energy                 -930.61313448
 Two electron energy                  250.69284557
 Virial quotient                       -0.97488376
 Correlation energy                    -0.29307762
 !MRCI STATE 1.1 Energy              -679.920288910575

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.94484470 (Davidson, fixed reference)
 Cluster corrected energies          -679.94484330 (Davidson, relaxed reference)
 Cluster corrected energies          -679.94484470 (Davidson, rotated reference)

 Cluster corrected energies          -679.94094769 (Pople, fixed reference)
 Cluster corrected energies          -679.94094645 (Pople, relaxed reference)
 Cluster corrected energies          -679.94094769 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96489240 (fixed)   0.96743351 (relaxed)   0.96735011 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017483   -0.00002624   -0.00061657
 Singles      0.00249510   -0.00252094   -0.00299895
 Pairs        0.06597303   -0.27101959   -0.27053596
 Total        1.06864296   -0.27356677   -0.27415149
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.50371572
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22456321
 One electron energy                 -927.64115352
 Two electron energy                  247.86388342
 Virial quotient                       -0.97497608
 Correlation energy                    -0.27355437
 !MRCI STATE 2.1 Energy              -679.777270096657

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.79604768 (Davidson, fixed reference)
 Cluster corrected energies          -679.79599728 (Davidson, relaxed reference)
 Cluster corrected energies          -679.79604768 (Davidson, rotated reference)

 Cluster corrected energies          -679.79292461 (Pople, fixed reference)
 Cluster corrected energies          -679.79288086 (Pople, relaxed reference)
 Cluster corrected energies          -679.79292461 (Pople, rotated reference)



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
 CPU TIMES  *         6.65      1.62      0.96      0.05      3.65
 REAL TIME  *         8.10 SEC
 DISK USED  *        42.44 MB (local),        1.39 GB (total)
 SF USED    *        36.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -679.94484470  AU                              
 SETTING HLSDIAG(2)     =      -679.79604768  AU                              


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
     1      -679.51346820

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
    1     1     1     1.00000000     0.00000000  -679.51346820    -0.00000000    -0.26700038  0.30D-02  0.61D-01     0.02
    2     1     1     1.06422474    -0.26762342  -679.78109162    -0.26762342    -0.00327937  0.24D-03  0.55D-03     0.07
    3     1     1     1.06808888    -0.27135294  -679.78482114    -0.00372951    -0.00010289  0.40D-05  0.21D-04     0.14
    4     1     1     1.06836773    -0.27147674  -679.78494494    -0.00012380    -0.00000503  0.26D-06  0.95D-06     0.22
    5     1     1     1.06843385    -0.27148269  -679.78495089    -0.00000595    -0.00000014  0.78D-08  0.26D-07     0.29
    6     1     1     1.06842266    -0.27148285  -679.78495105    -0.00000016    -0.00000000  0.13D-09  0.77D-09     0.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.6%
 S   0.0%   2.8%
 P   2.8%  13.9%  16.7%

 Initialization:   2.8%
 Other:           55.6%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222           0.9674498


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96744981 (fixed)   0.96744981 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000005   -0.00000015   -0.00000015
 Singles      0.00478128   -0.00339410   -0.00439139
 Pairs        0.06364137   -0.26808861   -0.26709132
 Total        1.06842271   -0.27148285   -0.27148285
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.51346820
 Nuclear energy                         0.00000000
 Kinetic energy                       697.19211306
 One electron energy                 -927.49678688
 Two electron energy                  247.71183583
 Virial quotient                       -0.97503247
 Correlation energy                    -0.27148285
 !CI(SD) STATE 1.1 Energy            -679.784951051717

 Properties without orbital relaxation:

 !CI(SD) STATE 1.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80352664 (Davidson, fixed reference)
 Cluster corrected energies          -679.80352664 (Davidson, relaxed reference)

 Cluster corrected energies          -679.79936270 (Pople, fixed reference)
 Cluster corrected energies          -679.79936270 (Pople, relaxed reference)



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
 CPU TIMES  *         7.06      0.41      1.62      0.96      0.05      3.65
 REAL TIME  *         8.59 SEC
 DISK USED  *        43.66 MB (local),        1.43 GB (total)
 SF USED    *        36.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =      -679.80352664  AU                              


         HLSDIAG
    -679.9448447
    -679.7960477
    -679.8035266
                                                  


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

 Time for Seward_LS:      23.37 sec

 CPU time:     23.37 sec, REAL time:     24.41 sec


 SORTLS1 read    32490554. and wrote    32490554. SO integrals in   180 records. CPU time:      0.20 sec, REAL time:      0.47 sec
 SORTLS2 read    32490554. and wrote    32490554. SO integrals in    90 records. CPU time:      0.06 sec, REAL time:      0.15 sec

 FILE SIZES: FILE 1:    39.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    39.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -679.920289   -679.777270
 Replaced energies:   -679.944845   -679.796048

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -679.784951
 Replaced energies:   -679.803527



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -679.94484470

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   32657.17       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00

    3   1.1  1.0  1.0       0.00       0.00   31015.73      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00   31015.73      -0.00
                            0.00      -0.00       0.00       0.00      -0.00

    5   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00   31015.73
                            0.00       0.00      -0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by   -679.94484470 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000   32657.172       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000   31015.729      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000   31015.729       0.000
                                0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   31015.729
                               -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -679.94484470     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -679.80352664     0.14131806    31015.73      0.14131806    31015.73      3.8455
    3  -679.80352664     0.14131806    31015.73      0.14131806    31015.73      3.8455
    4  -679.80352664     0.14131806    31015.73      0.14131806    31015.73      3.8455
    5  -679.79604768     0.14879703    32657.17      0.14879703    32657.17      4.0490

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.46344151  0.05956621 -0.41433826 -0.00000000
                           0.00000000  0.71509442 -0.00000000 -0.31406625  0.00000000

   1    1  |1 0>          -0.00000000  0.01318223  0.00000000 -0.00578958  0.00000000
                          -0.00000000  0.03767618  0.99644446  0.07397063  0.00000000

   1    1  |1 1>-          0.00000000 -0.49442609 -0.00000000  0.21714971 -0.00000000
                           0.00000000  0.16676785 -0.05958444  0.82281652  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -679.94484470      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -679.80352664      0.14131806    31015.73      0.14131806    31015.73      3.8455
     3   1   -679.80352664      0.14131806    31015.73      0.14131806    31015.73      3.8455
     4   1   -679.80352664      0.14131806    31015.73      0.14131806    31015.73      3.8455
     5   1   -679.79604768      0.14879703    32657.17      0.14879703    32657.17      4.0490

 E0 =   -679.94484470 is the energy of the lowest zeroth-order state
 E1 =   -679.94484470 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     1    1  |1 1>+      -0.00000000 -0.46344151  0.05956621 -0.41433826 -0.00000000
                                0.00000000  0.71509442 -0.00000000 -0.31406625  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.01318223  0.00000000 -0.00578958  0.00000000
                               -0.00000000  0.03767618  0.99644446  0.07397063  0.00000000

  5  1     1    1  |1 1>-       0.00000000 -0.49442609 -0.00000000  0.21714971 -0.00000000
                                0.00000000  0.16676785 -0.05958444  0.82281652  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%   72.61%    0.35%   27.03%    0.00%
  4  1     1    1  |1 0>          0.00%    0.16%   99.29%    0.55%    0.00%
  5  1     1    1  |1 1>-         0.00%   27.23%    0.36%   72.42%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       37.76       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        5.95       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        33.46     26.36      0.41      1.62      0.96      0.05      3.65
 REAL TIME  *        37.25 SEC
 DISK USED  *        43.78 MB (local),        2.50 GB (total)
 SF USED    *        36.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=   -679.796047677316

              CI              CI           MULTI         RHF-SCF
   -679.78495105   -679.77727010   -679.51346820   -679.62929280
 **********************************************************************************************************************************
 Molpro calculation terminated
