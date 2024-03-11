
 Working directory              : /wrk/irikura/molpro.RTVCkfv5Au/
 Global scratch directory       : /wrk/irikura/molpro.RTVCkfv5Au/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.RTVCkfv5Au/

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
 
 basis=aug-cc-pwCVTZ-DK
 
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
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ca SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 11:57:58  
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

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     107940.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     107940      RECORD LENGTH: 524288

 Memory used in sort:       0.66 MW

 SORT1 READ     7196526. AND WROTE       24722. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ      690439. AND WROTE     3262620. INTEGRALS IN    120 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         1.40      1.05
 REAL TIME  *         2.13 SEC
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
   2     -679.62917830      -0.00000001     0.13D-04     0.49D-04     1     0       0.00      0.00    diag
   3     -679.62917830      -0.00000000     0.12D-05     0.19D-04     2     0       0.01      0.01    diag
   4     -679.62917830      -0.00000000     0.23D-06     0.67D-05     3     0       0.00      0.01    diag
   5     -679.62917830      -0.00000000     0.57D-07     0.52D-05     4     0       0.00      0.01    diag
   6     -679.62917830       0.00000000     0.12D-07     0.93D-06     5     0       0.00      0.01    diag
   7     -679.62917830       0.00000000     0.21D-08     0.91D-07     0     0       0.01      0.02    diag

 Final occupancy:   4   6

 !RHF STATE 1.1 Energy               -679.629178299474
  RHF One-electron energy            -930.343757368513
  RHF Two-electron energy             250.714579069039
  RHF Kinetic energy                  697.268385643573
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
    2.2     2.00000   -13.63704     1  1  px   0.99720
    3.2     2.00000   -13.63704     1  1  py   0.99720
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
 CPU TIMES  *         1.42      0.02      1.05
 REAL TIME  *         2.16 SEC
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

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 1 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 4 6 3 5 2   1 2 4 6 3 5 2 4 6 3   5 1 2 4 6 5 3 1 4 6   5 3 2 1 4 6 5 3 2
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.113D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.701D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.700D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.486D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.142D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.119D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 4 5 6 7 9   810 3 2 1 4 5 6 9 7  10 8 3 2 1 5 4 810 6
                                        7 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333
 Weight factors for state symmetry  2:    0.33333
 
 Number of orbital rotations:  410  ( 6 closed/active, 336 closed/virtual, 0 active/active, 68 active/virtual )
 Total number of variables:    419
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -679.54070976    -679.54802879   -0.00731902    0.03762356 0.00000046 0.00000000  0.37E+00      0.15
   2    6   10    0   -679.54786836    -679.54787497   -0.00000661    0.00195520 0.00000000 0.00000000  0.79E-02      0.34
   3    4    8    0   -679.54787498    -679.54787498   -0.00000000    0.00000293 0.00000000 0.00000000  0.11E-04      0.49

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.64E-11)
                       Final energy:   -679.54787498
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -679.627757283255
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.42499661
 One electron energy                          -930.68658050
 Two electron energy                           251.05882321
 Virial ratio                                    1.97448150
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -679.502590370052
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.12213872
 One electron energy                          -927.80661482
 Two electron energy                           248.30402445
 Virial ratio                                    1.97472531
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -679.513277285032
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.01039039
 One electron energy                          -927.35710468
 Two electron energy                           247.84382739
 Virial ratio                                    1.97489691
 
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
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 5 3 4 6 2   2 5 3 4 6 1 2 5 3 4   6 1 2 5 3 4 6 1 5 4   3 6 2 1 4 5 3 6 2
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 5 4 7 9 6   810 3 2 1 5 4 6 9 7  10 8 3 2 1 5 4 7 910
                                        8 6 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.19729     1  1  s    0.99989
    2.1     2.00000   -17.05133     1  2  s    1.00102
    3.1     2.00000    -2.34757     1  3  s    0.99783
    4.1     1.33327    -0.19486     1  4  s    1.03330
    5.1     0.66673    -0.01129     1  4  s   -0.64309    1  6  s   -0.47585    1  9  s    1.66100
    1.2     2.00000   -13.72564     1  1  pz   1.00001
    2.2     2.00000   -13.72564     1  1  px   1.00001
    3.2     2.00000   -13.72564     1  1  py   1.00001
    4.2     2.00000    -1.42543     1  2  pz   1.00173
    5.2     2.00000    -1.42543     1  2  py   1.00173
    6.2     2.00000    -1.42543     1  2  px   1.00173
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20             0.98306398     -0.18301093
 ab             0.12941424      0.69516326
 ba            -0.12941424     -0.69516326
 
 Energy:     -679.62775728   -679.50259037
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa             1.00000000
 
 Energy:     -679.51327729
 


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
 CPU TIMES  *         1.88      0.46      0.02      1.05
 REAL TIME  *         2.80 SEC
 DISK USED  *        32.44 MB (local),        1.07 GB (total)
 SF USED    *         6.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -679.6277573  -0.0
    -679.5025904  -0.0
    -679.5132773  -0.0
                                                  


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
     1      -679.62775728
     2      -679.50259037

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.87D+00
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
    1     1     1     1.00000000     0.00000000  -679.62775728    -0.00000000    -0.27457542  0.37D-02  0.11D+00     0.04
    1     2     2     1.00000000     0.00000000  -679.50259037     0.00000000    -0.24114047  0.29D-02  0.72D-01     0.04
    2     1     1     1.09515959    -0.24913595  -679.87689323    -0.24913595    -0.00725561  0.10D-02  0.40D-02     0.11
    2     2     2     1.06869595    -0.23365938  -679.73624975    -0.23365938    -0.00445280  0.10D-02  0.22D-02     0.11
    3     1     1     1.08396500    -0.25636859  -679.88412587    -0.00723264    -0.00025368  0.19D-04  0.10D-03     0.16
    3     2     2     1.06606624    -0.23821027  -679.74080064    -0.00455089    -0.00019249  0.13D-04  0.96D-04     0.16
    4     1     1     1.08398097    -0.25665317  -679.88441046    -0.00028458    -0.00001375  0.48D-06  0.62D-05     0.21
    4     2     2     1.06674441    -0.23842303  -679.74101340    -0.00021276    -0.00001298  0.90D-06  0.69D-05     0.21
    5     1     1     1.08398455    -0.25666746  -679.88442474    -0.00001428    -0.00000075  0.71D-07  0.32D-06     0.26
    5     2     2     1.06684228    -0.23843614  -679.74102651    -0.00001311    -0.00000088  0.11D-06  0.46D-06     0.26
    6     1     1     1.08396258    -0.25666823  -679.88442551    -0.00000077    -0.00000002  0.36D-09  0.10D-07     0.32
    6     2     2     1.06684312    -0.23843704  -679.74102742    -0.00000090    -0.00000003  0.25D-08  0.17D-07     0.32
    7     1     1     1.08396241    -0.25666826  -679.88442554    -0.00000003    -0.00000000  0.12D-09  0.71D-09     0.38
    7     2     2     1.06685250    -0.23843708  -679.74102745    -0.00000004    -0.00000000  0.62D-09  0.16D-08     0.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   2.6%   2.6%
 P   5.3%  13.2%  13.2%

 Initialization:   7.9%
 Other:           55.3%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.1123467   0.9619281
 220222           0.9538509  -0.1089859

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958346   -0.064132
 2           0.069027    0.965605

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960487    0.002191
 2           0.002191    0.968066


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95834635 (fixed)   0.96048984 (relaxed)   0.96048732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000577   -0.00002078   -0.25986040
 Singles      0.00094726   -0.00126890   -0.00139491
 Pairs        0.08301564    0.02627969    0.00458705
 Total        1.08396866    0.02499001   -0.25666826
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.62716056
 Nuclear energy                         0.00000000
 Kinetic energy                       697.41408470
 One electron energy                 -930.53743085
 Two electron energy                  250.65300531
 Virial quotient                       -0.97486478
 Correlation energy                    -0.25726498
 !MRCI STATE 1.1 Energy              -679.884425541371

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.90602774 (Davidson, fixed reference)
 Cluster corrected energies          -679.90602628 (Davidson, relaxed reference)
 Cluster corrected energies          -679.90602774 (Davidson, rotated reference)

 Cluster corrected energies          -679.90260146 (Pople, fixed reference)
 Cluster corrected energies          -679.90260017 (Pople, relaxed reference)
 Cluster corrected energies          -679.90260146 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96560455 (fixed)   0.96816022 (relaxed)   0.96806616 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019698   -0.00002792   -0.00053368
 Singles      0.00256158   -0.00254466   -0.00295697
 Pairs        0.06430409   -0.23536992   -0.23494643
 Total        1.06706265   -0.23794250   -0.23843708
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.50318709
 Nuclear energy                         0.00000000
 Kinetic energy                       697.20622293
 One electron energy                 -927.62190058
 Two electron energy                  247.88087313
 Virial quotient                       -0.97494974
 Correlation energy                    -0.23784036
 !MRCI STATE 2.1 Energy              -679.741027452010

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.75697766 (Davidson, fixed reference)
 Cluster corrected energies          -679.75692835 (Davidson, relaxed reference)
 Cluster corrected energies          -679.75697766 (Davidson, rotated reference)

 Cluster corrected energies          -679.75431221 (Pople, fixed reference)
 Cluster corrected energies          -679.75426949 (Pople, relaxed reference)
 Cluster corrected energies          -679.75431221 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.82       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.34      0.43      0.46      0.02      1.05
 REAL TIME  *         3.47 SEC
 DISK USED  *        33.62 MB (local),        1.11 GB (total)
 SF USED    *        11.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -679.90602774  AU                              
 SETTING HLSDIAG(2)     =      -679.75697766  AU                              


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
 Number of external orbitals:      73 (  34  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.51327729

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      66

 Number of internal configurations:                    6
 Number of singly external configurations:          2409
 Number of doubly external configurations:         44055
 Total number of contracted configurations:        46470
 Total number of uncontracted configurations:     123072

 Diagonal Coupling coefficients finished.               Storage:  177236 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  214318 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.51327729     0.00000000    -0.23258129  0.29D-02  0.59D-01     0.01
    2     1     1     1.06233726    -0.23266742  -679.74594470    -0.23266742    -0.00254088  0.28D-03  0.48D-03     0.03
    3     1     1     1.06635156    -0.23561629  -679.74889358    -0.00294888    -0.00008660  0.44D-05  0.19D-04     0.05
    4     1     1     1.06680196    -0.23572218  -679.74899946    -0.00010588    -0.00000382  0.37D-06  0.73D-06     0.07
    5     1     1     1.06689330    -0.23572655  -679.74900384    -0.00000437    -0.00000009  0.74D-08  0.18D-07     0.09
    6     1     1     1.06689402    -0.23572665  -679.74900393    -0.00000010    -0.00000000  0.32D-09  0.59D-09     0.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.0%
 S  10.0%  10.0%
 P   0.0%   0.0%  20.0%

 Initialization:  10.0%
 Other:           40.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222           0.9681422


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96814221 (fixed)   0.96814221 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000093   -0.00000053   -0.00000070
 Singles      0.00523871   -0.00347779   -0.00441706
 Pairs        0.06165537   -0.23224833   -0.23130889
 Total        1.06689501   -0.23572665   -0.23572665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.51327729
 Nuclear energy                         0.00000000
 Kinetic energy                       697.17553081
 One electron energy                 -927.47888830
 Two electron energy                  247.72988437
 Virial quotient                       -0.97500410
 Correlation energy                    -0.23572665
 !CI(SD) STATE 1.1 Energy            -679.749003933777

 Properties without orbital relaxation:

 !CI(SD) STATE 1.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.76477287 (Davidson, fixed reference)
 Cluster corrected energies          -679.76477287 (Davidson, relaxed reference)

 Cluster corrected energies          -679.76122893 (Pople, fixed reference)
 Cluster corrected energies          -679.76122893 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.21       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.49      0.15      0.43      0.46      0.02      1.05
 REAL TIME  *         3.65 SEC
 DISK USED  *        34.01 MB (local),        1.12 GB (total)
 SF USED    *        11.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =      -679.76477287  AU                              


         HLSDIAG
    -679.9060277
    -679.7569777
    -679.7647729
                                                  


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

 Time for Seward_LS:       5.77 sec

        3942192. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      967 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      5.77 sec, REAL time:      5.82 sec


 SORTLS1 read     3953008. and wrote     3953008. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.10 sec
 SORTLS2 read     3953008. and wrote     3953008. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    96.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    96.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -679.884426   -679.741027
 Replaced energies:   -679.906028   -679.756978

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -679.749004
 Replaced energies:   -679.764773



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -679.90602774

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00   32712.71      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00

    3   1.1  1.0  1.0      -0.00      -0.00   31001.86      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00   31001.86      -0.00
                            0.00       0.00      -0.00       0.00       0.00

    5   1.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00   31001.86
                           -0.00      -0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by   -679.90602774 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000   32712.712      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000   31001.860      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000   31001.860       0.000
                                0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   31001.860
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -679.90602774     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -679.76477287     0.14125487    31001.86      0.14125487    31001.86      3.8437
    3  -679.76477287     0.14125487    31001.86      0.14125487    31001.86      3.8437
    4  -679.76477287     0.14125487    31001.86      0.14125487    31001.86      3.8437
    5  -679.75697766     0.14905008    32712.71      0.14905008    32712.71      4.0559

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.55808631  0.75746931  0.22041909  0.00000000
                          -0.00000000  0.25728454 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.10373487 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.22501551 -0.07993755  0.96551390  0.00000000

   1    1  |1 1>-          0.00000000 -0.31356553  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.68016769 -0.64795851  0.13855807  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -679.90602774      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -679.76477287      0.14125487    31001.86      0.14125487    31001.86      3.8437
     3   1   -679.76477287      0.14125487    31001.86      0.14125487    31001.86      3.8437
     4   1   -679.76477287      0.14125487    31001.86      0.14125487    31001.86      3.8437
     5   1   -679.75697766      0.14905008    32712.71      0.14905008    32712.71      4.0559

 E0 =   -679.90602774 is the energy of the lowest zeroth-order state
 E1 =   -679.90602774 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.55808631  0.75746931  0.22041909  0.00000000
                               -0.00000000  0.25728454 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.10373487 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.22501551 -0.07993755  0.96551390  0.00000000

  5  1     1    1  |1 1>-       0.00000000 -0.31356553  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.68016769 -0.64795851  0.13855807  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%   37.77%   57.38%    4.86%    0.00%
  4  1     1    1  |1 0>          0.00%    6.14%    0.64%   93.22%    0.00%
  5  1     1    1  |1 1>-         0.00%   56.10%   41.99%    1.92%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       92.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.21       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.51      8.01      0.15      0.43      0.46      0.02      1.05
 REAL TIME  *        12.21 SEC
 DISK USED  *        34.06 MB (local),        1.41 GB (total)
 SF USED    *        67.99 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -679.756977656234

              CI              CI           MULTI         RHF-SCF
   -679.74900393   -679.74102745   -679.51327729   -679.62917830
 **********************************************************************************************************************************
 Molpro calculation terminated
