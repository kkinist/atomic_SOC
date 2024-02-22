
 Working directory              : /wrk/irikura/molpro.ABGpQGap5u/
 Global scratch directory       : /wrk/irikura/molpro.ABGpQGap5u/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ABGpQGap5u/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,B SO-CI
                                                                                 ! Active space (3,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=5,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 15-Feb-24          TIME: 16:12:04  
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

 Library entry B      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  B       5.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    5
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.621 MB (compressed) written to integral file ( 20.5%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.496E-02 0.182E-01 0.705E-01 0.187E+00 0.247E+00 0.247E+00 0.247E+00 0.247E+00
         2 0.152E-01 0.152E-01 0.152E-01 0.186E+00 0.186E+00 0.186E+00 0.432E+00 0.432E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.44
 REAL TIME  *         1.65 SEC
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50737218     -24.50737218     0.00D+00     0.92D-01     0     0       0.00      0.01    start
   2      -24.53087375      -0.02350157     0.72D-02     0.16D-01     1     0       0.00      0.01    diag2
   3      -24.53397033      -0.00309658     0.20D-02     0.34D-02     2     0       0.00      0.01    diag2
   4      -24.53491093      -0.00094059     0.11D-02     0.37D-02     3     0       0.01      0.02    diag2
   5      -24.53495253      -0.00004160     0.24D-03     0.13D-02     4     0       0.00      0.02    diag2
   6      -24.53495314      -0.00000062     0.36D-04     0.16D-03     5     0       0.00      0.02    diag2
   7      -24.53495315      -0.00000000     0.29D-05     0.13D-04     6     0       0.00      0.02    diag2
   8      -24.53495315      -0.00000000     0.28D-06     0.22D-05     7     0       0.00      0.02    fixocc
   9      -24.53495315      -0.00000000     0.26D-07     0.51D-07     0     0       0.01      0.03    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.534953148024
  RHF One-electron energy             -32.375004267271
  RHF Two-electron energy               7.840051119247
  RHF Kinetic energy                   24.581653293390
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998100203237

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69742     1  1  s    0.99946
    2.1     2.00000    -0.49521     1  2  s    1.00903
    1.2     1.00000    -0.30965     1  1  px   0.99639


 HOMO      1.2    -0.309645 =      -8.4259eV
 LUMO      2.2     0.022718 =       0.6182eV
 LUMO-HOMO         0.332363 =       9.0441eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.67      0.03      0.44
 REAL TIME  *         1.68 SEC
 DISK USED  *        29.44 MB (local),      168.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.117D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 5   4 3 2 6 1 5 4 3 6 2   1 6 2 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.181D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.133D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 3 2 6   5 8 4 910 7 1 2 3 6   5 8 4 910 7 2 3 1 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    174
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0    -24.47983088     -24.56964009   -0.08980922    0.09720172 0.00068997 0.00000000  0.96E+00      0.11
   2    7    6    0    -24.56544806     -24.56606777   -0.00061971    0.02552958 0.00000015 0.00000000  0.44E-01      0.30
   3    5    5    0    -24.56607031     -24.56607034   -0.00000003    0.00020014 0.00000002 0.00000000  0.29E-03      0.41
   4    2    2    0    -24.56607034     -24.56607034   -0.00000000    0.00000002 0.00000000 0.00000000  0.48E-07      0.45

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.12E-09)
                       Final energy:    -24.56607034
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -24.566070339467
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61269746
 One electron energy                           -32.40121783
 Two electron energy                             7.83514749
 Virial ratio                                    1.99810557
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -24.566070339426
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61269746
 One electron energy                           -32.40121784
 Two electron energy                             7.83514750
 Virial ratio                                    1.99810557
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -24.566070339424
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61269746
 One electron energy                           -32.40121784
 Two electron energy                             7.83514750
 Virial ratio                                    1.99810557
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999854
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000003860
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999993519
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000000005950
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999991750
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999994196
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999996140
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000014731
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 2   6 4 3 5 1 2 6 4 5 3   1 2 6 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 6   5 410 8 9 7 3 1 2 6   5 410 8 7 9 3 2 1 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.67885     1  1  s    0.99924
    2.1     1.89168    -0.46969     1  2  s    1.02774
    1.2     0.36944     0.03437     1  1  px   1.02998
    2.2     0.36944     0.03437     1  1  py   1.02998
    3.2     0.36944     0.03437     1  1  pz   1.02998
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 a00         -0.00001175      0.97254353      0.00006042
 2 0a0          0.97254353      0.00001175     -0.00007409
 2 00a          0.00007409     -0.00006042      0.97254352
 0 a02          0.00000199     -0.16455863     -0.00001022
 0 a20          0.00000199     -0.16455863     -0.00001022
 0 0a2         -0.16455863     -0.00000199      0.00001254
 0 2a0         -0.16455863     -0.00000199      0.00001254
 0 20a         -0.00001254      0.00001022     -0.16455863
 0 02a         -0.00001254      0.00001022     -0.16455863
 
 Energy:      -24.56607034    -24.56607034    -24.56607034
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.07      0.40      0.03      0.44
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.75 MB (local),      169.83 MB (total)
 SF USED    *         1.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.56607034   2.0
    -24.56607034   2.0
    -24.56607034   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  5
 Maximum number of shells:             2
 Maximum number of spin couplings:     2

 Reference space:       10 conf       11 CSFs
 N elec internal:       16 conf       20 CSFs
 N-1 el internal:       10 conf       16 CSFs
 N-2 el internal:        4 conf        8 CSFs

 Number of electrons in valence space:                      3
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  3


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   5

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.56607034
     2       -24.56607034
     3       -24.56607034

 Number of blocks in overlap matrix:     8   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:       8
 Number of N-1 electron functions:      16

 Number of internal configurations:                   11
 Number of singly external configurations:           440
 Number of doubly external configurations:          5848
 Total number of contracted configurations:         6299
 Total number of uncontracted configurations:       6299

 Diagonal Coupling coefficients finished.               Storage:    174075 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    185965 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.56607034    -0.00000000    -0.03741866  0.19D-01  0.62D-02     0.00
    1     2     2     1.00000000     0.00000000   -24.56607034     0.00000000    -0.03741939  0.19D-01  0.62D-02     0.00
    1     3     3     1.00000000     0.00000000   -24.56607034     0.00000000    -0.03731907  0.19D-01  0.62D-02     0.00
    2     1     1     1.02673316    -0.03875107   -24.60482141    -0.03875107    -0.00130026  0.28D-03  0.39D-03     0.01
    2     2     2     1.02673830    -0.03874600   -24.60481634    -0.03874600    -0.00130497  0.29D-03  0.39D-03     0.01
    2     3     3     1.02673805    -0.03874554   -24.60481588    -0.03874554    -0.00130519  0.29D-03  0.39D-03     0.01
    3     1     1     1.03182104    -0.04030741   -24.60637775    -0.00155634    -0.00005676  0.35D-04  0.13D-04     0.03
    3     2     2     1.03182066    -0.04030738   -24.60637772    -0.00156138    -0.00005686  0.35D-04  0.13D-04     0.03
    3     3     3     1.03182129    -0.04030737   -24.60637771    -0.00156183    -0.00005679  0.35D-04  0.13D-04     0.03
    4     1     1     1.03276413    -0.04038133   -24.60645167    -0.00007393    -0.00000710  0.55D-05  0.11D-05     0.04
    4     2     2     1.03276403    -0.04038132   -24.60645166    -0.00007394    -0.00000712  0.55D-05  0.11D-05     0.04
    4     3     3     1.03276411    -0.04038132   -24.60645165    -0.00007394    -0.00000712  0.55D-05  0.11D-05     0.04
    5     1     1     1.03303480    -0.04039211   -24.60646245    -0.00001078    -0.00000087  0.54D-06  0.18D-06     0.05
    5     2     2     1.03303501    -0.04039210   -24.60646244    -0.00001079    -0.00000088  0.54D-06  0.18D-06     0.05
    5     3     3     1.03303493    -0.04039210   -24.60646244    -0.00001079    -0.00000088  0.54D-06  0.18D-06     0.05
    6     1     1     1.03308064    -0.04039329   -24.60646363    -0.00000118    -0.00000009  0.44D-07  0.21D-07     0.06
    6     2     2     1.03308064    -0.04039329   -24.60646363    -0.00000118    -0.00000009  0.44D-07  0.21D-07     0.06
    6     3     3     1.03308058    -0.04039329   -24.60646362    -0.00000118    -0.00000009  0.45D-07  0.20D-07     0.06
    7     1     1     1.03308703    -0.04039339   -24.60646373    -0.00000011    -0.00000001  0.44D-08  0.20D-08     0.08
    7     2     2     1.03308704    -0.04039339   -24.60646373    -0.00000011    -0.00000001  0.44D-08  0.20D-08     0.08
    7     3     3     1.03308708    -0.04039339   -24.60646373    -0.00000011    -0.00000001  0.44D-08  0.20D-08     0.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%  25.0%   0.0%

 Initialization:   0.0%
 Other:           75.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 200/          -0.0000000   0.0000000   0.9613987
 2/00           0.9613987  -0.0000000   0.0000000
 20/0          -0.0000000   0.9613987   0.0000000
 00/2          -0.0000000  -0.1477924  -0.0000000
 0/02          -0.1477924   0.0000000   0.0000000
 02/0          -0.0000000  -0.1477924  -0.0000000
 0/20          -0.1477924   0.0000000  -0.0000000
 002/           0.0000000   0.0000000  -0.1477923
 020/          -0.0000000   0.0000000  -0.1477923

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \00/  10.1    -0.0000000  -0.0000000  -0.0556889

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.983643   -0.000000
 2           0.983643   -0.000000   -0.000000
 3           0.000000    0.000000    0.983643

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.983643   -0.000000   -0.000000
 2          -0.000000    0.983643    0.000000
 3          -0.000000    0.000000    0.983643


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98364312 (fixed)   0.98385602 (relaxed)   0.98364312 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043292    0.00000000   -0.01548569
 Singles      0.02437858   -0.02440589   -0.02456567
 Pairs        0.00872277   -0.00000000   -0.00034203
 Total        1.03353427   -0.02440589   -0.04039339
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56607034
 Nuclear energy                         0.00000000
 Kinetic energy                        24.64852280
 One electron energy                  -32.36192241
 Two electron energy                    7.75545867
 Virial quotient                       -0.99829365
 Correlation energy                    -0.04039339
 !MRCI STATE 1.2 Energy               -24.606463730725

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.60781829 (Davidson, fixed reference)
 Cluster corrected energies           -24.60780023 (Davidson, relaxed reference)
 Cluster corrected energies           -24.60781829 (Davidson, rotated reference)

 Cluster corrected energies           -24.60646373 (Pople, fixed reference)
 Cluster corrected energies           -24.60646373 (Pople, relaxed reference)
 Cluster corrected energies           -24.60646373 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98364312 (fixed)   0.98385601 (relaxed)   0.98364312 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043292    0.00000000   -0.01548569
 Singles      0.02437859   -0.02440589   -0.02456567
 Pairs        0.00872277    0.00000000   -0.00034203
 Total        1.03353428   -0.02440589   -0.04039339
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56607034
 Nuclear energy                         0.00000000
 Kinetic energy                        24.64852280
 One electron energy                  -32.36192241
 Two electron energy                    7.75545868
 Virial quotient                       -0.99829365
 Correlation energy                    -0.04039339
 !MRCI STATE 2.2 Energy               -24.606463730724

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.60781829 (Davidson, fixed reference)
 Cluster corrected energies           -24.60780023 (Davidson, relaxed reference)
 Cluster corrected energies           -24.60781829 (Davidson, rotated reference)

 Cluster corrected energies           -24.60646373 (Pople, fixed reference)
 Cluster corrected energies           -24.60646373 (Pople, relaxed reference)
 Cluster corrected energies           -24.60646373 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98364309 (fixed)   0.98385599 (relaxed)   0.98364309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043293    0.00000000   -0.00001692
 Singles      0.02437861   -0.02440589   -0.02456568
 Pairs        0.00872279   -0.01598750   -0.01581079
 Total        1.03353433   -0.04039339   -0.04039339
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56607034
 Nuclear energy                         0.00000000
 Kinetic energy                        24.64852316
 One electron energy                  -32.36192261
 Two electron energy                    7.75545888
 Virial quotient                       -0.99829363
 Correlation energy                    -0.04039339
 !MRCI STATE 3.2 Energy               -24.606463730707

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.60781830 (Davidson, fixed reference)
 Cluster corrected energies           -24.60780023 (Davidson, relaxed reference)
 Cluster corrected energies           -24.60781830 (Davidson, rotated reference)

 Cluster corrected energies           -24.60646373 (Pople, fixed reference)
 Cluster corrected energies           -24.60646373 (Pople, relaxed reference)
 Cluster corrected energies           -24.60646373 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.81       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.21      0.12      0.40      0.03      0.44
 REAL TIME  *         2.36 SEC
 DISK USED  *        29.97 MB (local),      170.95 MB (total)
 SF USED    *         2.03 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.60781829  AU                              
 SETTING HLSDIAG(2)     =       -24.60781829  AU                              
 SETTING HLSDIAG(3)     =       -24.60781830  AU                              


        HLSDIAG
    -24.60781829
    -24.60781829
    -24.60781830
                                                  


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

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.19 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -24.606464    -24.606464    -24.606464
 Replaced energies:    -24.607818    -24.607818    -24.607818



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.60781830

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       4.53
                           -0.00      -4.53      -0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00
                            4.53       0.00      -0.00      -0.00       0.00      -4.53

    3   3.2  0.5  0.5       0.00       0.00       0.00      -4.53       0.00      -0.00
                            0.00       0.00       0.00      -0.00       4.53       0.00

    4   1.2  0.5 -0.5       0.00      -0.00      -4.53       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       4.53       0.00

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -4.53      -4.53      -0.00       0.00

    6   3.2  0.5 -0.5       4.53      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       4.53      -0.00      -0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.60785961    -0.00004131       -9.07      0.00000000        0.00      0.0000
     2   -24.60785961    -0.00004131       -9.07      0.00000000        0.00      0.0000
     3   -24.60779764     0.00002066        4.53      0.00006197       13.60      0.0017
     4   -24.60779764     0.00002066        4.53      0.00006197       13.60      0.0017
     5   -24.60779764     0.00002066        4.53      0.00006197       13.60      0.0017
     6   -24.60779764     0.00002066        4.53      0.00006197       13.60      0.0017


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5  -0.000000000  -0.577343071   0.348746978  -0.132262986   0.002573632   0.726326650
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.577345156  -0.413782332   0.156927773   0.002431331   0.686166536

    3    3.2  0.5  0.5   0.560137144  -0.000000000   0.287041131   0.756861238  -0.040143419   0.000142242
                        -0.139978318  -0.000000000  -0.035119225  -0.092601292  -0.001016197   0.000003601

    4    1.2  0.5 -0.5   0.560118216   0.000000000  -0.131284020  -0.346165673   0.726094045  -0.002572808
                        -0.139973588  -0.000000000   0.016062482   0.042353059   0.018380453  -0.000065128

    5    2.2  0.5 -0.5   0.139974093   0.000000000  -0.019057861  -0.050251181   0.017364160  -0.000061527
                         0.560120239  -0.000000000  -0.155766248  -0.410719658  -0.685946792   0.002430552

    6    3.2  0.5 -0.5   0.000000000   0.577362580   0.762505038  -0.289181553   0.000142288   0.040156279
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.000%  33.333%  12.162%   1.749%   0.001%  52.755%
    2    2.2  0.5  0.5   0.000%  33.333%  17.122%   2.463%   0.001%  47.082%
    3    3.2  0.5  0.5  33.335%   0.000%   8.363%  58.141%   0.161%   0.000%
    4    1.2  0.5 -0.5  33.333%   0.000%   1.749%  12.162%  52.755%   0.001%
    5    2.2  0.5 -0.5  33.333%   0.000%   2.463%  17.122%  47.082%   0.001%
    6    3.2  0.5 -0.5   0.000%  33.335%  58.141%   8.363%   0.000%   0.161%


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
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.81       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.96      1.74      0.12      0.40      0.03      0.44
 REAL TIME  *         4.20 SEC
 DISK USED  *        29.99 MB (local),      246.96 MB (total)
 SF USED    *        16.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -24.607797636282

              CI           MULTI         RHF-SCF
    -24.60646373    -24.56607034    -24.53495315
 **********************************************************************************************************************************
 Molpro calculation terminated
