
 Working directory              : /wrk/irikura/molpro.0xAdZytOZy/
 Global scratch directory       : /wrk/irikura/molpro.0xAdZytOZy/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.0xAdZytOZy/

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
     occ,3,3
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,1; save,5201.2}
 hlsdiag(1) = energd
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Be SO-CI                                                                                                                                                      
  (12 PROC) 64 bit mpp version                                                           DATE: 29-Feb-24          TIME: 16:36:09  
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

     2.884 MB (compressed) written to integral file ( 18.5%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     15 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.68      0.46
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   0

 NELEC=    4   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -14.57538827     -14.57538827     0.00D+00     0.94D-01     0     0       0.00      0.00    start
   2      -14.57538835      -0.00000008     0.35D-04     0.12D-03     1     0       0.00      0.00    diag
   3      -14.57538836      -0.00000001     0.45D-05     0.29D-04     2     0       0.01      0.01    diag
   4      -14.57538836      -0.00000000     0.11D-05     0.62D-05     3     0       0.00      0.01    diag
   5      -14.57538836      -0.00000000     0.77D-07     0.95D-06     4     0       0.00      0.01    diag
   6      -14.57538836       0.00000000     0.48D-08     0.37D-07     0     0       0.00      0.01    diag

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
 CPU TIMES  *         0.70      0.02      0.46
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.28 MB (local),      167.49 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      53 (   24   29)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 3 5 1 2   5 6 4 3 1 2 5 4 6 3   1 6 5 3 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.243D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.465D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 1 3 210   7 9 6 5 4 8 2 3 1 4   7 5 6 910 8 2 3 1 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.25000
 Weight factors for state symmetry  2:    0.25000   0.25000   0.25000
 
 Number of orbital rotations:  161  ( 2 closed/active, 24 closed/virtual, 0 active/active, 135 active/virtual )
 Total number of variables:    186
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   24    6    -14.21795210     -14.45933508   -0.24138298    0.07029797 0.00016073 0.00000000  0.17E+01      0.23
   2    7   12    0    -14.39488415     -14.40760619   -0.01272204    0.05433652 0.00002312 0.00000000  0.38E+00      0.46
   3    8   14    0    -14.40784278     -14.40786513   -0.00002235    0.00248175 0.00002197 0.00000000  0.11E-01      0.70
   4    5   10    0    -14.40786518     -14.40786518   -0.00000000    0.00001358 0.00000000 0.00000000  0.13E-03      0.81

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.26E-09)
                       Final energy:    -14.40786518
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.616836835950
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.58716757
 One electron energy                           -19.04219069
 Two electron energy                             4.42535386
 Virial ratio                                    2.00203393
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.338207962780
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.37223112
 One electron energy                           -18.65075493
 Two electron energy                             4.31254697
 Virial ratio                                    1.99763272
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -14.338207962774
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.37223112
 One electron energy                           -18.65075493
 Two electron energy                             4.31254697
 Virial ratio                                    1.99763272
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -14.338207962767
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.37223112
 One electron energy                           -18.65075493
 Two electron energy                             4.31254697
 Virial ratio                                    1.99763272
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000554
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999637
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999491
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999955
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000018096
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999990277
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999491
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999982267
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000010232
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 5 3 2   4 6 5 3 1 4 2 6 5 3   1 2 4 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 4   6 510 8 7 9 1 3 2 4   6 510 8 9 7 3 1 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.77727     1  1  s    0.99934
    2.1     0.45144    -0.12068     1  2  s    1.03410
    3.1     0.00089     0.40555     1  1  s    0.51928    1  2  s    1.08127    1  3  s   -1.92696    1  4  s    0.42508
    1.2     0.51589     0.01750     1  1  py   1.00510
    2.2     0.51589     0.01750     1  1  px   1.00510
    3.2     0.51589     0.01750     1  1  pz   1.00510
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.95020226
 00 020        -0.17826991
 00 200        -0.17826991
 00 002        -0.17826991
 
 Energy:      -14.61683684
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 00 a0a         1.00000000      0.00000673     -0.00002255
 00 0aa        -0.00000673      0.99999999     -0.00013316
 00 aa0         0.00002255      0.00013316      0.99999999
 
 Energy:      -14.33820796    -14.33820796    -14.33820796
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.57       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.47      0.77      0.02      0.46
 REAL TIME  *         2.58 SEC
 DISK USED  *        29.85 MB (local),      170.33 MB (total)
 SF USED    *         1.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.61683684   0.0
    -14.33820796   2.0
    -14.33820796   2.0
    -14.33820796   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  4
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:        9 conf        9 CSFs
 N elec internal:       90 conf      105 CSFs
 N-1 el internal:       50 conf       70 CSFs
 N-2 el internal:       15 conf       24 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      53 (  24  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.61683684

 Number of blocks in overlap matrix:    12   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      12
 Number of N-1 electron functions:      70

 Number of internal configurations:                   57
 Number of singly external configurations:          1855
 Number of doubly external configurations:          8480
 Total number of contracted configurations:        10392
 Total number of uncontracted configurations:      19000

 Diagonal Coupling coefficients finished.               Storage:    179196 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193595 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.61683684     0.00000000    -0.04304848  0.40D-02  0.19D-02     0.01
    2     1     1     1.00630850    -0.04490659   -14.66174343    -0.04490659    -0.00021190  0.55D-04  0.45D-04     0.02
    3     1     1     1.00714541    -0.04515303   -14.66198987    -0.00024644    -0.00000881  0.60D-05  0.13D-05     0.03
    4     1     1     1.00760103    -0.04516431   -14.66200114    -0.00001127    -0.00000034  0.16D-06  0.48D-07     0.04
    5     1     1     1.00760175    -0.04516472   -14.66200156    -0.00000041    -0.00000002  0.89D-08  0.27D-08     0.05
    6     1     1     1.00759828    -0.04516474   -14.66200158    -0.00000002    -0.00000000  0.22D-09  0.15D-09     0.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%  80.0%
 P   0.0%   0.0%   0.0%

 Initialization:  20.0%
 Other:            0.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220000           0.9524954
 200002          -0.1664140
 200200          -0.1664139
 200020          -0.1664139


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99578968 (fixed)   0.99618866 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00086924   -0.00048703   -0.00052187
 Singles      0.00548382   -0.00824742   -0.00842391
 Pairs        0.00212106   -0.03643029   -0.03621897
 Total        1.00847413   -0.04516474   -0.04516474
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.61683684
 Nuclear energy                         0.00000000
 Kinetic energy                        14.66731246
 One electron energy                  -19.04436086
 Two electron energy                    4.38235928
 Virial quotient                       -0.99963791
 Correlation energy                    -0.04516474
 !MRCI STATE 1.1 Energy               -14.662001578274

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.66238431 (Davidson, fixed reference)
 Cluster corrected energies           -14.66234783 (Davidson, relaxed reference)

 Cluster corrected energies           -14.66219294 (Pople, fixed reference)
 Cluster corrected energies           -14.66217470 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.73       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.57      0.07      0.77      0.02      0.46
 REAL TIME  *         2.69 SEC
 DISK USED  *        30.01 MB (local),      171.15 MB (total)
 SF USED    *         2.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.66234783  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  4
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        4 conf        4 CSFs
 N elec internal:       75 conf      105 CSFs
 N-1 el internal:       38 conf       78 CSFs
 N-2 el internal:       10 conf       28 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      53 (  24  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.33820796
     2       -14.33820796
     3       -14.33820796

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      78

 Number of internal configurations:                   51
 Number of singly external configurations:          2067
 Number of doubly external configurations:          7063
 Total number of contracted configurations:         9181
 Total number of uncontracted configurations:      21658

 Diagonal Coupling coefficients finished.               Storage:    182494 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193386 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.33820796    -0.00000000    -0.04728106  0.70D-03  0.73D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.33820796     0.00000000    -0.04725894  0.70D-03  0.73D-02     0.01
    1     3     3     1.00000000     0.00000000   -14.33820796     0.00000000    -0.04728845  0.70D-03  0.73D-02     0.01
    2     1     1     1.00886606    -0.05057343   -14.38878139    -0.05057343    -0.00050936  0.85D-04  0.30D-03     0.02
    2     2     2     1.00885527    -0.05057174   -14.38877971    -0.05057174    -0.00051034  0.85D-04  0.31D-03     0.02
    2     3     3     1.00881627    -0.05056344   -14.38877140    -0.05056344    -0.00051437  0.85D-04  0.31D-03     0.02
    3     1     1     1.01252108    -0.05124482   -14.38945278    -0.00067139    -0.00002729  0.28D-05  0.13D-04     0.04
    3     2     2     1.01252071    -0.05124477   -14.38945274    -0.00067303    -0.00002734  0.28D-05  0.13D-04     0.04
    3     3     3     1.01251600    -0.05124409   -14.38945205    -0.00068065    -0.00002783  0.28D-05  0.13D-04     0.04
    4     1     1     1.01331395    -0.05127898   -14.38948694    -0.00003416    -0.00000127  0.81D-06  0.55D-06     0.05
    4     2     2     1.01331420    -0.05127897   -14.38948694    -0.00003420    -0.00000127  0.82D-06  0.55D-06     0.05
    4     3     3     1.01331346    -0.05127894   -14.38948690    -0.00003485    -0.00000130  0.82D-06  0.56D-06     0.05
    5     1     1     1.01335152    -0.05128092   -14.38948888    -0.00000194    -0.00000015  0.10D-06  0.26D-07     0.07
    5     2     2     1.01335139    -0.05128092   -14.38948888    -0.00000195    -0.00000015  0.10D-06  0.26D-07     0.07
    5     3     3     1.01335087    -0.05128092   -14.38948888    -0.00000198    -0.00000015  0.10D-06  0.27D-07     0.07
    6     1     1     1.01336364    -0.05128112   -14.38948908    -0.00000020    -0.00000001  0.45D-08  0.79D-09     0.08
    6     2     2     1.01336361    -0.05128112   -14.38948908    -0.00000020    -0.00000001  0.45D-08  0.81D-09     0.08
    6     3     3     1.01336354    -0.05128112   -14.38948908    -0.00000020    -0.00000001  0.46D-08  0.84D-09     0.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  12.5%
 S   0.0%   0.0%
 P   0.0%  12.5%  12.5%

 Initialization:   0.0%
 Other:           62.5%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000//           0.0000000   0.0000000   0.9933263
 200//0          -0.0000000   0.9933262  -0.0000000
 200/0/           0.9933262   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.993326    0.000000   -0.000000
 2           0.000000    0.000000    0.993326
 3          -0.000000    0.993326   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.993326   -0.000000   -0.000000
 2          -0.000000    0.993326   -0.000000
 3          -0.000000   -0.000000    0.993326


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99332622 (fixed)   0.99332622 (relaxed)   0.99332622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011716   -0.00086460   -0.04419847
 Singles      0.00079099   -0.00649276   -0.00644597
 Pairs        0.01257422   -0.00000000   -0.00063668
 Total        1.01348237   -0.00735736   -0.05128112
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33820796
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40049383
 One electron energy                  -18.60153902
 Two electron energy                    4.21204995
 Virial quotient                       -0.99923581
 Correlation energy                    -0.05128112
 !MRCI STATE 1.1 Energy               -14.389489079553

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39018047 (Davidson, fixed reference)
 Cluster corrected energies           -14.39018047 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39018047 (Davidson, rotated reference)

 Cluster corrected energies           -14.38948908 (Pople, fixed reference)
 Cluster corrected energies           -14.38948908 (Pople, relaxed reference)
 Cluster corrected energies           -14.38948908 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.99332624 (fixed)   0.99332624 (relaxed)   0.99332624 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011716   -0.00086460   -0.00085903
 Singles      0.00079098   -0.00649275   -0.00644597
 Pairs        0.01257420   -0.04392376   -0.04397612
 Total        1.01348234   -0.05128112   -0.05128112
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33820796
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40049408
 One electron energy                  -18.60153944
 Two electron energy                    4.21205036
 Virial quotient                       -0.99923579
 Correlation energy                    -0.05128112
 !MRCI STATE 2.1 Energy               -14.389489079541

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39018047 (Davidson, fixed reference)
 Cluster corrected energies           -14.39018047 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39018047 (Davidson, rotated reference)

 Cluster corrected energies           -14.38948908 (Pople, fixed reference)
 Cluster corrected energies           -14.38948908 (Pople, relaxed reference)
 Cluster corrected energies           -14.38948908 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.99332627 (fixed)   0.99332627 (relaxed)   0.99332627 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011716   -0.00086460   -0.04419845
 Singles      0.00079097   -0.00649278   -0.00644597
 Pairs        0.01257414   -0.00000000   -0.00063670
 Total        1.01348227   -0.00735739   -0.05128112
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33820796
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40049299
 One electron energy                  -18.60153844
 Two electron energy                    4.21204936
 Virial quotient                       -0.99923587
 Correlation energy                    -0.05128112
 !MRCI STATE 3.1 Energy               -14.389489079247

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39018046 (Davidson, fixed reference)
 Cluster corrected energies           -14.39018046 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39018046 (Davidson, rotated reference)

 Cluster corrected energies           -14.38948908 (Pople, fixed reference)
 Cluster corrected energies           -14.38948908 (Pople, relaxed reference)
 Cluster corrected energies           -14.38948908 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        0.97       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.71      0.13      0.07      0.77      0.02      0.46
 REAL TIME  *         2.85 SEC
 DISK USED  *        30.25 MB (local),      172.32 MB (total)
 SF USED    *         3.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -14.39018047  AU                              
 SETTING HLSDIAG(3)     =       -14.39018047  AU                              
 SETTING HLSDIAG(4)     =       -14.39018046  AU                              


        HLSDIAG
    -14.66234783
    -14.39018047
    -14.39018047
    -14.39018046
                                                  


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

 CPU time:      0.19 sec, REAL time:      0.21 sec


 SORTLS1 read      953868. and wrote      953868. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953868. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    30.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    30.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:    -14.662002
 Replaced energies:    -14.662348

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -14.389489    -14.389489    -14.389489
 Replaced energies:    -14.390180    -14.390180    -14.390180



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.66234783

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.44       0.00       0.00       0.00      -0.00      -0.00       0.44
                            0.00       0.44       0.00      -0.00      -0.00       0.62      -0.00      -0.44      -0.00       0.00

    2   1.1  1.0  1.0      -0.00   59733.83       0.00       0.00      -0.00      -0.56       0.00       0.00       0.00       0.00
                           -0.44       0.00      -0.00       0.79       0.00       0.00      -0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0      -0.00       0.00   59733.83       0.00       0.56      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.56       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.44       0.00       0.00   59733.83      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.79       0.00      -0.00       0.00      -0.56      -0.00       0.00       0.00       0.00

    5   1.1  1.0  0.0       0.00      -0.00       0.56      -0.00   59733.83       0.00       0.00      -0.00      -0.56       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    6   2.1  1.0  0.0       0.00      -0.56      -0.00       0.00       0.00   59733.83       0.00       0.56      -0.00      -0.00
                           -0.62      -0.00      -0.00       0.56      -0.00       0.00       0.00      -0.00       0.00       0.56

    7   3.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00   59733.83      -0.00       0.00       0.00
                            0.00       0.00      -0.56       0.00      -0.00      -0.00       0.00       0.00      -0.56      -0.00

    8   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00      -0.00       0.56      -0.00   59733.83       0.00       0.00
                            0.44      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.79

    9   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00      -0.56      -0.00       0.00       0.00   59733.83       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.56      -0.00       0.00       0.00

   10   3.1  1.0 -1.0       0.44       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00   59733.83
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.56       0.00       0.79      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 10)

    The diagonal matrixelements are shifted by    -14.66234783 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000      -0.000      -0.000       0.625       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.625      -0.000       0.625

    1    1  |1 1>+             -0.000   59733.832       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>+             -0.000       0.000   59733.832       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.790       0.000

    3    1  |1 1>+              0.625       0.000       0.000   59733.833       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.790       0.000      -0.790

    1    1  |1 0>               0.000      -0.000       0.000       0.000   59733.832       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000   59733.832       0.000      -0.790
                               -0.625      -0.000       0.000       0.790      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   59733.833       0.000
                                0.000       0.000      -0.790       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.790       0.000   59733.832
                               -0.625       0.000      -0.000       0.790       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.790       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.790       0.000      -0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10

    1    1  |0 0>               0.000       0.000
                                0.000      -0.000

    1    1  |1 1>+              0.000       0.000
                               -0.000       0.790

    2    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    3    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    1    1  |1 0>               0.790      -0.000
                                0.000       0.000

    2    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    3    1  |1 0>              -0.000       0.000
                               -0.000       0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-          59733.832       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000   59733.833
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.66234783    -0.00000000       -0.00      0.00000000        0.00      0.0000
    2   -14.39018767     0.27216016    59732.25      0.27216016    59732.25      7.4059
    3   -14.39018407     0.27216376    59733.04      0.27216376    59733.04      7.4060
    4   -14.39018407     0.27216376    59733.04      0.27216376    59733.04      7.4060
    5   -14.39018407     0.27216377    59733.04      0.27216377    59733.04      7.4060
    6   -14.39017687     0.27217096    59734.62      0.27217096    59734.62      7.4061
    7   -14.39017687     0.27217096    59734.62      0.27217096    59734.62      7.4061
    8   -14.39017687     0.27217097    59734.62      0.27217097    59734.62      7.4061
    9   -14.39017687     0.27217097    59734.62      0.27217097    59734.62      7.4061
   10   -14.39017687     0.27217097    59734.62      0.27217097    59734.62      7.4061

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000 -0.00001811  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.70737763  0.00000001 -0.00000000 -0.00000002 -0.70683583
                          -0.00000000 -0.00000000  0.00000004  0.00002187  0.00000000 -0.00000000 -0.00000000  0.00002716

   2    1  |1 1>+          0.00000000  0.00000000  0.00000001 -0.00000001  0.70729726 -0.00000001  0.00000002 -0.00000012
                           0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000008  0.00000000  0.00000001 -0.00000003

   3    1  |1 1>+         -0.00001046 -0.57718304 -0.00000000 -0.00000000 -0.00000000  0.11918530 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00010826 -0.00000004 -0.00000002  0.00000000  0.67941504 -0.00000002
                          -0.00000000 -0.00000000  0.70718716 -0.00000000 -0.00000001  0.00000000  0.19565662 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001046  0.57739013 -0.00000000  0.00000000 -0.00000000 -0.64002574  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000008  0.00000000  0.00000001 -0.00000003
                          -0.00000000 -0.00000000  0.00000001 -0.00000001  0.70691625  0.00000001 -0.00000002  0.00000012

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001046  0.57747760 -0.00000000  0.00000000 -0.00000000  0.75905331 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00010823  0.00000004  0.00000002  0.00000000  0.67956954 -0.00000002
                           0.00000000 -0.00000000 -0.70702638  0.00000000  0.00000001  0.00000000  0.19570111 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000004 -0.00002185 -0.00000000 -0.00000000 -0.00000000  0.00002718
                          -0.00000000 -0.00000000  0.00000000  0.70683583  0.00000001  0.00000000  0.00000002  0.70737763

 State Sym Spin     / Nr.      9          10

   1    1  |0 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>+          0.00000012 -0.00000000
                          -0.00000003 -0.00000000

   2    1  |1 1>+         -0.70691625  0.00000007
                           0.00000001 -0.00000000

   3    1  |1 1>+          0.00000008  0.80787041
                          -0.00000000 -0.00000000

   1    1  |1 0>           0.00000002  0.00000000
                          -0.00000001 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000
                           0.00000005  0.50693953

   3    1  |1 0>           0.00000001 -0.00000000
                           0.70729726 -0.00000007

   1    1  |1 1>-          0.00000000  0.00000000
                           0.00000002  0.30059558

   2    1  |1 1>-          0.00000002  0.00000000
                          -0.00000001 -0.00000000

   3    1  |1 1>-         -0.00000003 -0.00000000
                          -0.00000012  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -14.66234783     -0.00000000       -0.00      0.00000000        0.00      0.0000
     2   1    -14.39018767      0.27216016    59732.25      0.27216016    59732.25      7.4059
     3   1    -14.39018407      0.27216376    59733.04      0.27216376    59733.04      7.4060
     4   1    -14.39018407      0.27216376    59733.04      0.27216376    59733.04      7.4060
     5   1    -14.39018407      0.27216377    59733.04      0.27216377    59733.04      7.4060
     6   1    -14.39017687      0.27217096    59734.62      0.27217096    59734.62      7.4061
     7   1    -14.39017687      0.27217096    59734.62      0.27217096    59734.62      7.4061
     8   1    -14.39017687      0.27217097    59734.62      0.27217097    59734.62      7.4061
     9   1    -14.39017687      0.27217097    59734.62      0.27217097    59734.62      7.4061
    10   1    -14.39017687      0.27217097    59734.62      0.27217097    59734.62      7.4061

 E0 =    -14.66234783 is the energy of the lowest zeroth-order state
 E1 =    -14.66234783 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000 -0.00001811  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.70737763  0.00000001 -0.00000000 -0.00000002 -0.70683583
                               -0.00000000 -0.00000000  0.00000004  0.00002187  0.00000000 -0.00000000 -0.00000000  0.00002716

  3  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000001 -0.00000001  0.70729726 -0.00000001  0.00000002 -0.00000012
                                0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000008  0.00000000  0.00000001 -0.00000003

  4  1     3    1  |1 1>+      -0.00001046 -0.57718304 -0.00000000 -0.00000000 -0.00000000  0.11918530 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00010826 -0.00000004 -0.00000002  0.00000000  0.67941504 -0.00000002
                               -0.00000000 -0.00000000  0.70718716 -0.00000000 -0.00000001  0.00000000  0.19565662 -0.00000000

  6  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001046  0.57739013 -0.00000000  0.00000000 -0.00000000 -0.64002574  0.00000000  0.00000000

  7  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000008  0.00000000  0.00000001 -0.00000003
                               -0.00000000 -0.00000000  0.00000001 -0.00000001  0.70691625  0.00000001 -0.00000002  0.00000012

  8  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001046  0.57747760 -0.00000000  0.00000000 -0.00000000  0.75905331 -0.00000000 -0.00000000

  9  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00010823  0.00000004  0.00000002  0.00000000  0.67956954 -0.00000002
                                0.00000000 -0.00000000 -0.70702638  0.00000000  0.00000001  0.00000000  0.19570111 -0.00000000

 10  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000004 -0.00002185 -0.00000000 -0.00000000 -0.00000000  0.00002718
                               -0.00000000 -0.00000000  0.00000000  0.70683583  0.00000001  0.00000000  0.00000002  0.70737763


   Total
 Nr Sym  State Sym Spin / Nr.        9          10

  1  1     1    1  |0 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000012 -0.00000000
                               -0.00000003 -0.00000000

  3  1     2    1  |1 1>+      -0.70691625  0.00000007
                                0.00000001 -0.00000000

  4  1     3    1  |1 1>+       0.00000008  0.80787041
                               -0.00000000 -0.00000000

  5  1     1    1  |1 0>        0.00000002  0.00000000
                               -0.00000001 -0.00000000

  6  1     2    1  |1 0>        0.00000000  0.00000000
                                0.00000005  0.50693953

  7  1     3    1  |1 0>        0.00000001 -0.00000000
                                0.70729726 -0.00000007

  8  1     1    1  |1 1>-       0.00000000  0.00000000
                                0.00000002  0.30059558

  9  1     2    1  |1 1>-       0.00000002  0.00000000
                               -0.00000001 -0.00000000

 10  1     3    1  |1 1>-      -0.00000003 -0.00000000
                               -0.00000012  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.96%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.03%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%   33.31%    0.00%    0.00%    0.00%    1.42%    0.00%    0.00%
  5  1     1    1  |1 0>          0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.99%    0.00%
  6  1     2    1  |1 0>          0.00%   33.34%    0.00%    0.00%    0.00%   40.96%    0.00%    0.00%
  7  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>-         0.00%   33.35%    0.00%    0.00%    0.00%   57.62%    0.00%    0.00%
  9  1     2    1  |1 1>-         0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.01%    0.00%
 10  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%
  3  1     2    1  |1 1>+        49.97%    0.00%
  4  1     3    1  |1 1>+         0.00%   65.27%
  5  1     1    1  |1 0>          0.00%    0.00%
  6  1     2    1  |1 0>          0.00%   25.70%
  7  1     3    1  |1 0>         50.03%    0.00%
  8  1     1    1  |1 1>-         0.00%    9.04%
  9  1     2    1  |1 1>-         0.00%    0.00%
 10  1     3    1  |1 1>-         0.00%    0.00%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        0.97       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.79      2.08      0.13      0.07      0.77      0.02      0.46
 REAL TIME  *         5.13 SEC
 DISK USED  *        30.27 MB (local),      248.34 MB (total)
 SF USED    *         3.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -14.390176866248

              CI              CI           MULTI         RHF-SCF
    -14.38948908    -14.66200158    -14.33820796    -14.57538836
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
