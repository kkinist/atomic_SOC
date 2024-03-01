
 Working directory              : /wrk/irikura/molpro.cObhm8fy98/
 Global scratch directory       : /wrk/irikura/molpro.cObhm8fy98/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.cObhm8fy98/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Mg SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Mg};
 
 basis=aug-cc-pwCVTZ-DK
 
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Mg SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 11:28:00  
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

 Library entry MG     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         117
 NUMBER OF SYMMETRY AOS:          103
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     5.767 MB (compressed) written to integral file ( 16.0%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     416030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     416030      RECORD LENGTH: 524288

 Memory used in sort:       0.97 MW

 SORT1 READ     4558334. AND WROTE       89447. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     25 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      415738.  Node maximum:      418032. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.193E-02 0.369E-01 0.408E-01 0.109E+00 0.109E+00 0.109E+00 0.109E+00 0.109E+00
         2 0.307E-02 0.307E-02 0.307E-02 0.736E-01 0.736E-01 0.736E-01 0.158E+00 0.158E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.74      0.54
 REAL TIME  *         1.78 SEC
 DISK USED  *        29.15 MB (local),      168.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   3   3

 NELEC=   12   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -199.91967567    -199.91967567     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -199.91969256      -0.00001689     0.75D-03     0.53D-03     1     0       0.00      0.01    diag
   3     -199.91969405      -0.00000148     0.19D-03     0.11D-03     2     0       0.00      0.01    diag
   4     -199.91969406      -0.00000002     0.14D-04     0.17D-04     3     0       0.01      0.02    diag
   5     -199.91969406      -0.00000000     0.14D-05     0.48D-05     4     0       0.00      0.02    diag
   6     -199.91969406      -0.00000000     0.13D-06     0.16D-05     5     0       0.00      0.02    diag
   7     -199.91969406      -0.00000000     0.90D-08     0.19D-06     0     0       0.00      0.02    diag

 Final occupancy:   3   3

 !RHF STATE 1.1 Energy               -199.919694063853
  RHF One-electron energy            -279.859209767835
  RHF Two-electron energy              79.939515703982
  RHF Kinetic energy                  201.880774669402
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.990285946699

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.11625     1  1  s    0.99975
    2.1     2.00000    -3.77948     1  2  s    0.99877
    3.1     2.00000    -0.25343     1  3  s    1.00549
    1.2     2.00000    -2.28031     1  1  pz   1.00136
    2.2     2.00000    -2.28031     1  1  py   1.00136
    3.2     2.00000    -2.28031     1  1  px   1.00136


 HOMO      3.1    -0.253433 =      -6.8963eV
 LUMO      4.2     0.016003 =       0.4355eV
 LUMO-HOMO         0.269435 =       7.3317eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.42       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.78      0.04      0.54
 REAL TIME  *         1.82 SEC
 DISK USED  *        29.48 MB (local),      169.84 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      68 (   29   39)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 1 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 3 6 4 1   2 4 6 3 5 1 2 4 6 3   5 2 4 6 5 3 1 4 6 5   3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 3   2 1 7 9 6 810 4 5 2   1 3 9 7 4 5 6 810 8  10 7 9 5 4 6 3 2 1 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333
 Weight factors for state symmetry  2:    0.33333
 
 Number of orbital rotations:  237  ( 4 closed/active, 175 closed/virtual, 0 active/active, 58 active/virtual )
 Total number of variables:    246
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -199.80215912    -199.80945954   -0.00730042    0.04762186 0.00000063 0.00000000  0.26E+00      0.14
   2    6   10    0   -199.80930371    -199.80930982   -0.00000610    0.00183909 0.00000000 0.00000000  0.66E-02      0.29
   3    4    8    0   -199.80930982    -199.80930982   -0.00000000    0.00000233 0.00000000 0.00000000  0.71E-05      0.40

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.31E-11)
                       Final energy:   -199.80930982
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -199.917503342743
 Nuclear energy                                  0.00000000
 Kinetic energy                                202.03860498
 One electron energy                          -280.12232457
 Two electron energy                            80.20482123
 Virial ratio                                    1.98950150
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -199.748434686437
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.69531902
 One electron energy                          -277.72710277
 Two electron energy                            77.97866809
 Virial ratio                                    1.99034740
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -199.761991432059
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.57970880
 One electron energy                          -277.40191177
 Two electron energy                            77.63992034
 Virial ratio                                    1.99098264
 
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
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 3 5 4 1   2 3 5 6 4 1 2 4 3 6   5 2 3 4 6 5 1 5 3 4   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 1 2 3 2   1 3 7 9 6 810 5 4 3   1 2 7 9 4 5 6 81010   8 9 7 5 4 6 2 3 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.24193     1  1  s    0.99975
    2.1     2.00000    -3.90141     1  2  s    0.99917
    3.1     1.33328    -0.25784     1  3  s    1.15470
    4.1     0.66672    -0.01205     1  3  s   -0.54484    1  5  s   -0.30057    1  8  s    1.42725
    1.2     2.00000    -2.40376     1  1  py   1.00031
    2.2     2.00000    -2.40376     1  1  px   1.00031
    3.2     2.00000    -2.40376     1  1  pz   1.00031
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20             0.98362179     -0.18003503
 ab             0.12730880      0.69555192
 ba            -0.12730880     -0.69555192
 
 Energy:     -199.91750334   -199.74843469
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa             1.00000000
 
 Energy:     -199.76199143
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.18      0.40      0.04      0.54
 REAL TIME  *         2.30 SEC
 DISK USED  *        30.55 MB (local),      175.21 MB (total)
 SF USED    *         2.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -199.9175033  -0.0
    -199.7484347  -0.0
    -199.7619914  -0.0
                                                  


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
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.01 sec, npass=  1  Memory used:   0.16 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.91750334
     2      -199.74843469

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          1690
 Number of doubly external configurations:         56975
 Total number of contracted configurations:        58677
 Total number of uncontracted configurations:     102703

 Diagonal Coupling coefficients finished.               Storage:    178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    210746 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.91750334     0.00000000    -0.28352668  0.48D-02  0.61D-01     0.03
    1     2     2     1.00000000     0.00000000  -199.74843469    -0.00000000    -0.25482831  0.38D-02  0.31D-01     0.03
    2     1     1     1.05417722    -0.25658674  -200.17409009    -0.25658674    -0.00438261  0.59D-03  0.18D-02     0.10
    2     2     2     1.02862528    -0.23674618  -199.98518087    -0.23674618    -0.00252893  0.72D-03  0.85D-03     0.10
    3     1     1     1.04617840    -0.26068406  -200.17818740    -0.00409731    -0.00011348  0.18D-04  0.31D-04     0.16
    3     2     2     1.02516409    -0.23922132  -199.98765601    -0.00247514    -0.00008350  0.15D-04  0.24D-04     0.16
    4     1     1     1.04682220    -0.26081300  -200.17831634    -0.00012894    -0.00000304  0.33D-06  0.83D-06     0.23
    4     2     2     1.02567600    -0.23931526  -199.98774994    -0.00009393    -0.00000293  0.11D-05  0.73D-06     0.23
    5     1     1     1.04696596    -0.26081633  -200.17831967    -0.00000333    -0.00000008  0.44D-08  0.25D-07     0.30
    5     2     2     1.02574988    -0.23931849  -199.98775318    -0.00000323    -0.00000011  0.30D-07  0.33D-07     0.30
    6     1     1     1.04698311    -0.26081641  -200.17831976    -0.00000009    -0.00000000  0.67D-10  0.13D-08     0.37
    6     2     2     1.02575292    -0.23931861  -199.98775330    -0.00000012    -0.00000001  0.10D-08  0.23D-08     0.37


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   8.1%  27.0%

 Initialization:   5.4%
 Other:           59.5%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.1266260   0.9797738
 220222           0.9690327  -0.1220421

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.976029   -0.049916
 2           0.056410    0.985726

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.977300    0.002980
 2           0.002980    0.987334


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97602880 (fixed)   0.97730441 (relaxed)   0.97729981 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001081   -0.00002922   -0.26845507
 Singles      0.00193066   -0.00235224   -0.00272743
 Pairs        0.04505297    0.02260397    0.01036609
 Total        1.04699443    0.02022251   -0.26081641
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.91700815
 Nuclear energy                         0.00000000
 Kinetic energy                       202.02464029
 One electron energy                 -279.73189724
 Two electron energy                   79.55357748
 Virial quotient                       -0.99086091
 Correlation energy                    -0.26131161
 !MRCI STATE 1.1 Energy              -200.178319757643

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.19059995 (Davidson, fixed reference)
 Cluster corrected energies          -200.19059737 (Davidson, relaxed reference)
 Cluster corrected energies          -200.19059995 (Davidson, rotated reference)

 Cluster corrected energies          -200.18842518 (Pople, fixed reference)
 Cluster corrected energies          -200.18842300 (Pople, relaxed reference)
 Cluster corrected energies          -200.18842518 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98572553 (fixed)   0.98736466 (relaxed)   0.98733378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006734   -0.00003346   -0.00033948
 Singles      0.00211755   -0.00327370   -0.00368462
 Pairs        0.02363710   -0.23571279   -0.23529451
 Total        1.02582199   -0.23901994   -0.23931861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.74892988
 Nuclear energy                         0.00000000
 Kinetic energy                       201.78803965
 One electron energy                 -277.37494026
 Two electron energy                   77.38718696
 Virial quotient                       -0.99107833
 Correlation energy                    -0.23882342
 !MRCI STATE 2.1 Energy              -199.987753298578

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -199.99392019 (Davidson, fixed reference)
 Cluster corrected energies          -199.99390487 (Davidson, relaxed reference)
 Cluster corrected energies          -199.99392019 (Davidson, rotated reference)

 Cluster corrected energies          -199.99276390 (Pople, fixed reference)
 Cluster corrected energies          -199.99275126 (Pople, relaxed reference)
 Cluster corrected energies          -199.99276390 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.65       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.61      0.41      0.40      0.04      0.54
 REAL TIME  *         2.77 SEC
 DISK USED  *        31.57 MB (local),      180.31 MB (total)
 SF USED    *        10.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -200.19059995  AU                              
 SETTING HLSDIAG(2)     =      -199.99392019  AU                              


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
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.76199143

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      66

 Number of internal configurations:                    6
 Number of singly external configurations:          2244
 Number of doubly external configurations:         38175
 Total number of contracted configurations:        40425
 Total number of uncontracted configurations:     106927

 Diagonal Coupling coefficients finished.               Storage:    177236 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    209673 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.76199143    -0.00000000    -0.24765213  0.36D-02  0.22D-01     0.01
    2     1     1     1.02255725    -0.23460939  -199.99660082    -0.23460939    -0.00134602  0.17D-03  0.10D-03     0.03
    3     1     1     1.02429989    -0.23609077  -199.99808220    -0.00148138    -0.00003926  0.44D-05  0.50D-05     0.05
    4     1     1     1.02490494    -0.23613507  -199.99812650    -0.00004430    -0.00000113  0.25D-06  0.20D-06     0.08
    5     1     1     1.02501210    -0.23613632  -199.99812776    -0.00000125    -0.00000004  0.15D-07  0.12D-07     0.11
    6     1     1     1.02503797    -0.23613637  -199.99812781    -0.00000005    -0.00000000  0.59D-09  0.66D-09     0.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%  23.1%  23.1%

 Initialization:   7.7%
 Other:           46.2%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222           0.9877087


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98770869 (fixed)   0.98770869 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000530   -0.00000103   -0.00000223
 Singles      0.00443781   -0.00434068   -0.00525688
 Pairs        0.02060029   -0.23179466   -0.23087726
 Total        1.02504340   -0.23613637   -0.23613637
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.76199143
 Nuclear energy                         0.00000000
 Kinetic energy                       201.75441209
 One electron energy                 -277.27938672
 Two electron energy                   77.28125891
 Virial quotient                       -0.99129494
 Correlation energy                    -0.23613637
 !CI(SD) STATE 1.1 Energy            -199.998127806793

 Properties without orbital relaxation:

 !CI(SD) STATE 1.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.00404146 (Davidson, fixed reference)
 Cluster corrected energies          -200.00404146 (Davidson, relaxed reference)

 Cluster corrected energies          -200.00261875 (Pople, fixed reference)
 Cluster corrected energies          -200.00261875 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.99       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.79      0.17      0.41      0.40      0.04      0.54
 REAL TIME  *         2.96 SEC
 DISK USED  *        31.91 MB (local),      182.01 MB (total)
 SF USED    *        10.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =      -200.00404146  AU                              


         HLSDIAG
    -200.1905999
    -199.9939202
    -200.0040415
                                                  


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

 Time for Seward_LS:       0.91 sec

        2496171. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.91 sec, REAL time:      0.93 sec


 SORTLS1 read     2506076. and wrote     2506076. SO integrals in    15 records. CPU time:      0.04 sec, REAL time:      0.05 sec
 SORTLS2 read     2506076. and wrote    12192876. SO integrals in    15 records. CPU time:      0.04 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:    71.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    71.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -200.178320   -199.987753
 Replaced energies:   -200.190600   -199.993920

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -199.998128
 Replaced energies:   -200.004041



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -200.19059995

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00   43166.22       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00

    3   1.1  1.0  1.0      -0.00       0.00   40944.85      -0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00   40944.85      -0.00
                            0.00      -0.00       0.00       0.00      -0.00

    5   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00   40944.85
                           -0.00       0.00      -0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by   -200.19059995 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000   43166.216       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000   40944.854      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000   40944.854       0.000
                                0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   40944.854
                                0.000      -0.000       0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -200.19059995     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -200.00404146     0.18655848    40944.85      0.18655848    40944.85      5.0765
    3  -200.00404146     0.18655848    40944.85      0.18655848    40944.85      5.0765
    4  -200.00404146     0.18655848    40944.85      0.18655848    40944.85      5.0765
    5  -199.99392019     0.19667975    43166.22      0.19667975    43166.22      5.3519

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.45133308 -0.22872905  0.85671068  0.00000000
                          -0.00000000 -0.08339094  0.00000000 -0.05544582 -0.00000000

   1    1  |1 0>          -0.00000000  0.00814693  0.00000000  0.00541681  0.00000000
                          -0.00000000 -0.10384342  0.94623761  0.30619472  0.00000000

   1    1  |1 1>-         -0.00000000  0.04968742  0.00000000  0.03303668  0.00000000
                          -0.00000000  0.88092323  0.22872997 -0.40999586 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -200.19059995      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -200.00404146      0.18655848    40944.85      0.18655848    40944.85      5.0765
     3   1   -200.00404146      0.18655848    40944.85      0.18655848    40944.85      5.0765
     4   1   -200.00404146      0.18655848    40944.85      0.18655848    40944.85      5.0765
     5   1   -199.99392019      0.19667975    43166.22      0.19667975    43166.22      5.3519

 E0 =   -200.19059995 is the energy of the lowest zeroth-order state
 E1 =   -200.19059995 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.45133308 -0.22872905  0.85671068  0.00000000
                               -0.00000000 -0.08339094  0.00000000 -0.05544582 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00814693  0.00000000  0.00541681  0.00000000
                               -0.00000000 -0.10384342  0.94623761  0.30619472  0.00000000

  5  1     1    1  |1 1>-      -0.00000000  0.04968742  0.00000000  0.03303668  0.00000000
                               -0.00000000  0.88092323  0.22872997 -0.40999586 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%   21.07%    5.23%   73.70%    0.00%
  4  1     1    1  |1 0>          0.00%    1.08%   89.54%    9.38%    0.00%
  5  1     1    1  |1 1>-         0.00%   77.85%    5.23%   16.92%    0.00%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.25       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.99       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.75      3.96      0.17      0.41      0.40      0.04      0.54
 REAL TIME  *         7.17 SEC
 DISK USED  *        31.94 MB (local),      315.27 MB (total)
 SF USED    *        44.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -199.993920194938

              CI              CI           MULTI         RHF-SCF
   -199.99812781   -199.98775330   -199.76199143   -199.91969406
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
