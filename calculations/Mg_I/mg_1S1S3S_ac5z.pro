
 Working directory              : /wrk/irikura/molpro.vav0oGJMpR/
 Global scratch directory       : /wrk/irikura/molpro.vav0oGJMpR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.vav0oGJMpR/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Mg SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Mg};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=12,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,2,3
     occ,4,3
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5203.2}
 hlsdiag(3) = energd
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Mg SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 11:32:10  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry MG     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry MG     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  MG     12.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   12
 NUMBER OF PRIMITIVE AOS:         340
 NUMBER OF SYMMETRY AOS:          250
 NUMBER OF CONTRACTIONS:          216   (  101Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     223.085 MB (compressed) written to integral file ( 11.7%)

     Node minimum: 38.273 MB, node maximum: 55.837 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   27721352.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15992525      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   238001710. AND WROTE     4922360. INTEGRALS IN     15 RECORDS. CPU TIME:     1.05 SEC, REAL TIME:     1.18 SEC
 SORT2 READ    24337992. AND WROTE   138588271. INTEGRALS IN    860 RECORDS. CPU TIME:     0.56 SEC, REAL TIME:     0.61 SEC

 Node minimum:    27714260.  Node maximum:    27721352. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.451E-04 0.151E-02 0.621E-02 0.818E-02 0.818E-02 0.818E-02 0.818E-02 0.818E-02
         2 0.426E-04 0.426E-04 0.426E-04 0.610E-02 0.610E-02 0.610E-02 0.193E-01 0.193E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.24       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         5.84      5.63
 REAL TIME  *         7.52 SEC
 DISK USED  *        30.62 MB (local),      628.57 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   3   3

 NELEC=   12   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -199.92109813    -199.92109813     0.00D+00     0.43D-01     0     0       0.14      0.27    start
   2     -199.92111929      -0.00002116     0.51D-03     0.16D-03     1     0       0.14      0.41    diag
   3     -199.92112156      -0.00000228     0.14D-03     0.86D-04     2     0       0.13      0.54    diag
   4     -199.92112159      -0.00000003     0.12D-04     0.88D-05     3     0       0.14      0.68    diag
   5     -199.92112159      -0.00000000     0.94D-06     0.23D-05     4     0       0.14      0.82    diag
   6     -199.92112159      -0.00000000     0.94D-07     0.40D-06     0     0       0.13      0.95    diag

 Final occupancy:   3   3

 !RHF STATE 1.1 Energy               -199.921121590634
  RHF One-electron energy            -279.860150403673
  RHF Two-electron energy              79.939028813039
  RHF Kinetic energy                  201.881673287386
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.990288609834

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.11642     1  1  s    0.99464
    2.1     2.00000    -3.77961     1  2  s    1.00506
    3.1     2.00000    -0.25343     1  8  s    0.32494    1  9  s    0.59083
    1.2     2.00000    -2.28053     1  1  py   1.00500
    2.2     2.00000    -2.28053     1  1  pz   1.00500
    3.2     2.00000    -2.28053     1  1  px   1.00501


 HOMO      3.1    -0.253429 =      -6.8962eV
 LUMO      4.2     0.012807 =       0.3485eV
 LUMO-HOMO         0.266236 =       7.2447eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.24       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.77       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         6.79      0.95      5.63
 REAL TIME  *         8.50 SEC
 DISK USED  *        32.29 MB (local),      636.90 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:     209 (   97  112)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 1 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 3 5 2 1   6 4 3 5 21514 81211   9 71013 1 2 6 4 5 3  151411 9 7 8121013 2
                                        4 6 3 5 1151412 8 7  111013 9 2 6 4 3 5 1  151412 811 7 91310 6   4 5 3 2 6 4 5 3 2 1
                                        91512 814111013 7 2   4 3 5 6 1 2 4 3 5 6   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.394D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.390D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.628D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 2 3 1 3   2 1 5 4 6 9 710 8 3   2 1 3 2 110 8 5 4 6   9 71715121116141820
                                       19132110 8 5 4 6 9 7   3 2 118201211151716  1413211910 8 5 4 9 7   6 2 3 110 8 7 9 5 4
                                        6161412171518201911  2113 2 3 110 8 7 9 6   4 510 8 6 4 9 7 5 1   3 2 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333
 Weight factors for state symmetry  2:    0.33333
 
 Number of orbital rotations:  728  ( 4 closed/active, 530 closed/virtual, 0 active/active, 194 active/virtual )
 Total number of variables:    737
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -199.80203800    -199.81106711   -0.00902911    0.04834835 0.00000079 0.00000000  0.35E+00      0.49
   2    6   10    0   -199.81086780    -199.81087588   -0.00000808    0.00225078 0.00000001 0.00000000  0.78E-02      1.00
   3    4    8    0   -199.81087589    -199.81087589   -0.00000000    0.00000334 0.00000000 0.00000000  0.11E-04      1.44

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.68E-11)
                       Final energy:   -199.81087589
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -199.918873833191
 Nuclear energy                                  0.00000000
 Kinetic energy                                202.04315684
 One electron energy                          -280.12856261
 Two electron energy                            80.20968877
 Virial ratio                                    1.98948599
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -199.750253203821
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.69278450
 One electron energy                          -277.70747245
 Two electron energy                            77.95721925
 Virial ratio                                    1.99036886
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -199.763500639590
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.57972370
 One electron energy                          -277.38843757
 Two electron energy                            77.62493693
 Virial ratio                                    1.99099005
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 5 3 4 2 1   6 3 4 5 2 11514 812  11 9 71013 6 5 3 4 2  151411 9 812 71013 2
                                        6 4 3 5 1141512 8 7  111013 9 6 3 5 4 2 1  1514 812 711 91310 6   5 3 4 2 6 3 4 5 2 1
                                        9151412 8131011 7 2   4 3 5 6 1 2 4 3 5 6   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 2   3 1 5 4 6 9 710 8 2   3 1 2 3 110 8 5 4 6   9 71715161412111820
                                       191321 810 5 4 6 9 7   2 3 118201512171116  1421131910 8 5 4 9 7   6 2 3 110 8 7 9 5 4
                                        6141618201517121121  1319 2 3 110 8 7 9 4   5 610 8 6 4 7 9 5 1   3 2 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.24294     1  1  s    0.99467
    2.1     2.00000    -3.90246     1  2  s    1.00473
    3.1     1.33329    -0.25865     1  8  s    0.43321    1  9  s    0.65221
    4.1     0.66671    -0.01304     1  9  s   -0.46877    1 11  s    1.29290
    1.2     2.00000    -2.40493     1  1  py   1.00234
    2.2     2.00000    -2.40493     1  1  pz   1.00234
    3.2     2.00000    -2.40493     1  1  px   1.00234
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20             0.98390828     -0.17847367
 ab             0.12620446      0.69575314
 ba            -0.12620446     -0.69575314
 
 Energy:     -199.91887383   -199.75025320
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa             1.00000000
 
 Energy:     -199.76350064
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.77       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.47      1.68      0.95      5.63
 REAL TIME  *        10.35 SEC
 DISK USED  *        40.51 MB (local),      678.01 MB (total)
 SF USED    *        21.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -199.9188738   0.0
    -199.7502532   0.0
    -199.7635006   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 12
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       21 conf       21 CSFs
 N-1 el internal:       34 conf       50 CSFs
 N-2 el internal:       39 conf       87 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:     209 (  97 112 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.25 sec, npass=  1  Memory used:   0.89 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.91887383
     2      -199.75025320

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          5210
 Number of doubly external configurations:        536089
 Total number of contracted configurations:       541311
 Total number of uncontracted configurations:     956417

 Diagonal Coupling coefficients finished.               Storage:    178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    493903 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.91887383    -0.00000000    -0.35575234  0.49D-02  0.61D-01     0.41
    1     2     2     1.00000000     0.00000000  -199.75025320    -0.00000000    -0.32524755  0.38D-02  0.32D-01     0.41
    2     1     1     1.05548251    -0.32549637  -200.24437021    -0.32549637    -0.00641045  0.83D-03  0.24D-02     2.09
    2     2     2     1.03043166    -0.30722005  -200.05747325    -0.30722005    -0.00333452  0.85D-03  0.10D-02     2.09
    3     1     1     1.04461008    -0.33130730  -200.25018114    -0.00581093    -0.00018050  0.32D-04  0.40D-04     3.78
    3     2     2     1.02638614    -0.31040195  -200.06065515    -0.00318190    -0.00011246  0.19D-04  0.32D-04     3.78
    4     1     1     1.04412160    -0.33150384  -200.25037767    -0.00019654    -0.00000555  0.47D-06  0.11D-05     5.50
    4     2     2     1.02665374    -0.31052254  -200.06077575    -0.00012060    -0.00000484  0.11D-05  0.11D-05     5.50
    5     1     1     1.04409491    -0.33150999  -200.25038383    -0.00000615    -0.00000014  0.14D-07  0.26D-07     7.20
    5     2     2     1.02672664    -0.31052775  -200.06078095    -0.00000520    -0.00000016  0.26D-07  0.43D-07     7.20
    6     1     1     1.04408398    -0.33151014  -200.25038397    -0.00000014    -0.00000000  0.13D-09  0.11D-08     8.91
    6     2     2     1.02673051    -0.31052792  -200.06078112    -0.00000017    -0.00000001  0.83D-09  0.25D-08     8.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.3%
 P   0.1%   2.9%  14.8%

 Initialization:   4.6%
 Other:           77.1%

 Total CPU:        8.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.1249570   0.9794187
 220222           0.9706171  -0.1211088

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.977368   -0.050291
 2           0.055695    0.985299

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978657    0.002484
 2           0.002484    0.986868


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97736754 (fixed)   0.97866058 (relaxed)   0.97865742 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000734   -0.00002420   -0.34087669
 Singles      0.00145906   -0.00210983   -0.00248406
 Pairs        0.04262524    0.02650376    0.01185061
 Total        1.04409164    0.02436973   -0.33151014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.91838354
 Nuclear energy                         0.00000000
 Kinetic energy                       202.22656188
 One electron energy                 -279.75981005
 Two electron energy                   79.50942608
 Virial quotient                       -0.99022790
 Correlation energy                    -0.33200043
 !MRCI STATE 1.1 Energy              -200.250383970460

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.26502241 (Davidson, fixed reference)
 Cluster corrected energies          -200.26502017 (Davidson, relaxed reference)
 Cluster corrected energies          -200.26502241 (Davidson, rotated reference)

 Cluster corrected energies          -200.26240901 (Pople, fixed reference)
 Cluster corrected energies          -200.26240711 (Pople, relaxed reference)
 Cluster corrected energies          -200.26240901 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98529863 (fixed)   0.98689535 (relaxed)   0.98686837 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005773   -0.00002883   -0.00043537
 Singles      0.00188832   -0.00330672   -0.00379118
 Pairs        0.02484374   -0.30679209   -0.30630137
 Total        1.02678978   -0.31012765   -0.31052792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.75074350
 Nuclear energy                         0.00000000
 Kinetic energy                       201.98632354
 One electron energy                 -277.36504117
 Two electron energy                   77.30426005
 Virial quotient                       -0.99046697
 Correlation energy                    -0.31003763
 !MRCI STATE 2.1 Energy              -200.060781123865

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.06908696 (Davidson, fixed reference)
 Cluster corrected energies          -200.06906956 (Davidson, relaxed reference)
 Cluster corrected energies          -200.06908696 (Davidson, rotated reference)

 Cluster corrected energies          -200.06753355 (Pople, fixed reference)
 Cluster corrected energies          -200.06751917 (Pople, relaxed reference)
 Cluster corrected energies          -200.06753355 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       10.92       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        17.47      9.00      1.68      0.95      5.63
 REAL TIME  *        19.79 SEC
 DISK USED  *        49.66 MB (local),      723.74 MB (total)
 SF USED    *        91.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -200.26502241  AU                              
 SETTING HLSDIAG(2)     =      -200.06908696  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 12
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        1 conf        1 CSFs
 N elec internal:       15 conf       15 CSFs
 N-1 el internal:       34 conf       66 CSFs
 N-2 el internal:       19 conf       91 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:     209 (  97 112 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.76350064

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      66

 Number of internal configurations:                    6
 Number of singly external configurations:          6897
 Number of doubly external configurations:        360513
 Total number of contracted configurations:       367416
 Total number of uncontracted configurations:     999030

 Diagonal Coupling coefficients finished.               Storage:    177236 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    490574 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.76350064     0.00000000    -0.31807780  0.35D-02  0.24D-01     0.02
    2     1     1     1.02495868    -0.30558097  -200.06908161    -0.30558097    -0.00166570  0.11D-03  0.11D-03     0.54
    3     1     1     1.02565989    -0.30736124  -200.07086188    -0.00178027    -0.00003945  0.30D-05  0.33D-05     1.06
    4     1     1     1.02596121    -0.30740723  -200.07090787    -0.00004599    -0.00000090  0.98D-07  0.57D-07     1.57
    5     1     1     1.02600602    -0.30740824  -200.07090888    -0.00000101    -0.00000002  0.21D-08  0.15D-08     2.10
    6     1     1     1.02600752    -0.30740826  -200.07090890    -0.00000002    -0.00000000  0.79D-10  0.74D-10     2.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   1.5%
 P   0.0%   3.4%  14.5%

 Initialization:   0.8%
 Other:           79.8%

 Total CPU:        2.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222           0.9872430


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98724299 (fixed)   0.98724299 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000309   -0.00000078   -0.00000169
 Singles      0.00369256   -0.00431405   -0.00531115
 Pairs        0.02231504   -0.30309342   -0.30209542
 Total        1.02601069   -0.30740826   -0.30740826
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.76350064
 Nuclear energy                         0.00000000
 Kinetic energy                       201.95054415
 One electron energy                 -277.25750966
 Two electron energy                   77.18660076
 Virial quotient                       -0.99069260
 Correlation energy                    -0.30740826
 !CI(SD) STATE 1.1 Energy            -200.070908896525

 Properties without orbital relaxation:

 !CI(SD) STATE 1.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.07890480 (Davidson, fixed reference)
 Cluster corrected energies          -200.07890480 (Davidson, relaxed reference)

 Cluster corrected energies          -200.07698405 (Pople, fixed reference)
 Cluster corrected energies          -200.07698405 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       13.93       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        20.15      2.67      9.00      1.68      0.95      5.63
 REAL TIME  *        22.61 SEC
 DISK USED  *        52.67 MB (local),      738.80 MB (total)
 SF USED    *        91.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =      -200.07890480  AU                              


         HLSDIAG
    -200.2650224
    -200.0690870
    -200.0789048
                                                  


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

 Time for Seward_LS:      22.33 sec

      163519149. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    39945 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     22.33 sec, REAL time:     22.94 sec


 SORTLS1 read   163549745. and wrote   163549745. SO integrals in   633 records. CPU time:      1.60 sec, REAL time:      2.47 sec
 SORTLS2 read   163549745. and wrote   823932798. SO integrals in    15 records. CPU time:      2.71 sec, REAL time:      9.06 sec

 FILE SIZES: FILE 1:  2658.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2658.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -200.250384   -200.060781
 Replaced energies:   -200.265022   -200.069087

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -200.070909
 Replaced energies:   -200.078905



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -200.26502241

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   43002.86       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00

    3   1.1  1.0  1.0      -0.00       0.00   40848.10      -0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00   40848.10      -0.00
                           -0.00       0.00       0.00       0.00      -0.00

    5   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00   40848.10
                           -0.00       0.00      -0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by   -200.26502241 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000   43002.860       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+             -0.000       0.000   40848.095      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000   40848.095       0.000
                               -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   40848.095
                                0.000      -0.000       0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -200.26502241     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -200.07890480     0.18611762    40848.10      0.18611762    40848.10      5.0645
    3  -200.07890480     0.18611762    40848.10      0.18611762    40848.10      5.0645
    4  -200.07890480     0.18611762    40848.10      0.18611762    40848.10      5.0645
    5  -200.06908696     0.19593545    43002.86      0.19593545    43002.86      5.3317

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.16738766  0.74143207 -0.64852823  0.00000000
                          -0.00000000  0.02569045  0.01847403 -0.02587847 -0.00000000

   1    1  |1 0>           0.00000000 -0.00335038 -0.00240926  0.00337490  0.00000000
                           0.00000000  0.33302460  0.66210245  0.67133192 -0.00000000

   1    1  |1 1>-          0.00000000 -0.03051780 -0.02194538  0.03074115  0.00000000
                          -0.00000000  0.92707790 -0.10521470 -0.35650874 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -200.26502241      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -200.07890480      0.18611762    40848.10      0.18611762    40848.10      5.0645
     3   1   -200.07890480      0.18611762    40848.10      0.18611762    40848.10      5.0645
     4   1   -200.07890480      0.18611762    40848.10      0.18611762    40848.10      5.0645
     5   1   -200.06908696      0.19593545    43002.86      0.19593545    43002.86      5.3317

 E0 =   -200.26502241 is the energy of the lowest zeroth-order state
 E1 =   -200.26502241 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     1    1  |1 1>+       0.00000000 -0.16738766  0.74143207 -0.64852823  0.00000000
                               -0.00000000  0.02569045  0.01847403 -0.02587847 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00335038 -0.00240926  0.00337490  0.00000000
                                0.00000000  0.33302460  0.66210245  0.67133192 -0.00000000

  5  1     1    1  |1 1>-       0.00000000 -0.03051780 -0.02194538  0.03074115  0.00000000
                               -0.00000000  0.92707790 -0.10521470 -0.35650874 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%    2.87%   55.01%   42.13%    0.00%
  4  1     1    1  |1 0>          0.00%   11.09%   43.84%   45.07%    0.00%
  5  1     1    1  |1 1>-         0.00%   86.04%    1.16%   12.80%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2535.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       13.93       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        51.15     31.00      2.67      9.00      1.68      0.95      5.63
 REAL TIME  *        64.30 SEC
 DISK USED  *        52.94 MB (local),        8.98 GB (total)
 SF USED    *         2.49 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -200.069086964150

              CI              CI           MULTI         RHF-SCF
   -200.07090890   -200.06078112   -199.76350064   -199.92112159
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
