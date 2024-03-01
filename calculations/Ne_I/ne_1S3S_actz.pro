
 Working directory              : /wrk/irikura/molpro.gWD4ohnZAw/
 Global scratch directory       : /wrk/irikura/molpro.gWD4ohnZAw/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.gWD4ohnZAw/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Ne SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ne};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=9,sym=1,spin=1}
 
 {multi
     closed,1,0
     occ,3,6
     wf,nelec=10,sym=1,spin=0;state,1;
     wf,nelec=10,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=0;state,1; save,5201.2}
 hlsdiag(1) = energd
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(2) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ne SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 16:07:50  
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

 Library entry NE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  NE     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
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

     2.884 MB (compressed) written to integral file ( 20.7%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.534E-02 0.201E-01 0.645E-01 0.199E+00 0.230E+00 0.230E+00 0.230E+00 0.230E+00
         2 0.205E-01 0.205E-01 0.205E-01 0.205E+00 0.205E+00 0.205E+00 0.328E+00 0.328E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.62      0.42
 REAL TIME  *         1.65 SEC
 DISK USED  *        29.03 MB (local),      166.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   1   3

 NELEC=    9   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -126.73389323    -126.73389323     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -126.83718126      -0.10328803     0.39D-01     0.35D-01     1     0       0.00      0.00    diag2
   3     -126.85007146      -0.01289020     0.18D-01     0.11D-01     2     0       0.00      0.00    diag2
   4     -126.85019505      -0.00012359     0.16D-02     0.13D-02     3     0       0.01      0.01    diag2
   5     -126.85019651      -0.00000147     0.91D-04     0.66D-04     4     0       0.00      0.01    diag2
   6     -126.85019653      -0.00000001     0.85D-05     0.80D-05     5     0       0.00      0.01    diag2
   7     -126.85019653      -0.00000000     0.36D-06     0.41D-06     6     0       0.00      0.01    diag2
   8     -126.85019653       0.00000000     0.30D-07     0.24D-07     0     0       0.00      0.01    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   1   3

 !RHF STATE 1.1 Energy               -126.850196528281
  RHF One-electron energy            -174.298876456676
  RHF Two-electron energy              47.448679928396
  RHF Kinetic energy                  127.691690331717
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.993409956425

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.66208     1  1  s    0.99902
    2.1     1.00000    -2.76199     1  2  s    1.10854
    1.2     2.00000    -1.55256     1  1  pz   1.07606
    2.2     2.00000    -1.55256     1  1  py   1.07606
    3.2     2.00000    -1.55256     1  1  px   1.07606


 HOMO      3.2    -1.552563 =     -42.2474eV
 LUMO      3.1    -0.113278 =      -3.0824eV
 LUMO-HOMO         1.439285 =      39.1649eV

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
 CPU TIMES  *         0.65      0.02      0.42
 REAL TIME  *         1.68 SEC
 DISK USED  *        29.43 MB (local),      168.30 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 2   6 4 3 5 1 2 4 6 5 3   1 6 4 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.879D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.879D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.192D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.192D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 1 2 8  10 5 4 7 9 6 3 1 210   8 7 9 5 4 6 3 1 2 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000
 Weight factors for state symmetry  2:    0.50000
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    4306
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   29    0   -128.31647838    -128.34838207   -0.03190369    0.31243961 0.00086718 0.00065751  0.82E+00      0.20
   2    7   30    0   -128.34842626    -128.34843503   -0.00000877    0.00651212 0.00000509 0.00000332  0.76E-02      0.47
   3    5   18    0   -128.34843503    -128.34843503   -0.00000000    0.00000464 0.00000000 0.00000001  0.19E-04      0.64

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.59E-08)
                       Final energy:   -128.34843503
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -128.695018820879
 Nuclear energy                                  0.00000000
 Kinetic energy                                129.78306521
 One electron energy                          -182.62039958
 Two electron energy                            53.92538076
 Virial ratio                                    1.99161642
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -128.001851241051
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.77747097
 One electron energy                          -177.85995007
 Two electron energy                            49.85809883
 Virial ratio                                    1.99397705
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 6   2 4 3 5 1 6 2 4 5 3   1 6 2 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 5   610 8 4 7 9 1 2 3 5   610 8 4 7 9 3 2 1 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.10026     1  1  s    0.99927
    2.1     1.99509    -2.14082     1  2  s    1.03852
    3.1     0.00577     1.50976     1  2  s   -1.14730    1  3  s   -0.54576    1  4  s    1.60652
    1.2     1.82593    -0.99784     1  1  px   1.03313
    2.2     1.82593    -0.99784     1  1  py   1.03313
    3.2     1.82593    -0.99784     1  1  pz   1.03313
    4.2     0.17378     0.24725     1  1  pz  -0.48848    1  6  pz   0.97544
    5.2     0.17378     0.24725     1  1  py  -0.48848    1  6  py   0.97544
    6.2     0.17378     0.24725     1  1  px  -0.48848    1  6  px   0.97544
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 222000      0.98794572
 
 Energy:     -128.69501882
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 20 22aa00      0.57204747
 20 2a20a0      0.57204746
 20 a2200a      0.57204742
 
 Energy:     -128.00185124
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.30      0.65      0.02      0.42
 REAL TIME  *         2.45 SEC
 DISK USED  *        30.35 MB (local),      172.92 MB (total)
 SF USED    *         3.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -128.6950188  -0.0
    -128.0018512   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:      603 conf      924 CSFs
 N elec internal:     1107 conf     1764 CSFs
 N-1 el internal:     1016 conf     2352 CSFs
 N-2 el internal:      784 conf     2688 CSFs

 Number of electrons in valence space:                      8
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -128.69501882

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.54D-03
 Number of N-2 electron functions:      64
 Number of N-1 electron functions:    2352

 Number of internal configurations:                  924
 Number of singly external configurations:         58856
 Number of doubly external configurations:         40216
 Total number of contracted configurations:        99996
 Total number of uncontracted configurations:    1736612

 Diagonal Coupling coefficients finished.               Storage:    403725 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    218749 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.69501882    -0.00000000    -0.25919791  0.20D-01  0.15D-01     0.06
    2     1     1     1.03144566    -0.24559640  -128.94061523    -0.24559640    -0.00979225  0.64D-03  0.71D-03     0.20
    3     1     1     1.03302426    -0.25475904  -128.94977786    -0.00916263    -0.00058988  0.23D-04  0.54D-04     0.33
    4     1     1     1.03418229    -0.25537296  -128.95039178    -0.00061392    -0.00004407  0.42D-05  0.29D-05     0.47
    5     1     1     1.03447737    -0.25541881  -128.95043763    -0.00004586    -0.00000258  0.16D-06  0.17D-06     0.60
    6     1     1     1.03449636    -0.25542137  -128.95044019    -0.00000256    -0.00000020  0.11D-07  0.14D-07     0.73
    7     1     1     1.03449153    -0.25542159  -128.95044041    -0.00000021    -0.00000001  0.67D-09  0.90D-09     0.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.8%
 S   4.7%   8.1%
 P   4.7%  34.9%  23.3%

 Initialization:   4.7%
 Other:           14.0%

 Total CPU:        0.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20222000           0.9783273


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98102598 (fixed)   0.98318791 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441235   -0.00000000   -0.00108440
 Singles      0.01598122   -0.07244075   -0.07364531
 Pairs        0.01866250   -0.18298109   -0.18069187
 Total        1.03905606   -0.25542184   -0.25542159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.69501882
 Nuclear energy                         0.00000000
 Kinetic energy                       129.84135489
 One electron energy                 -182.37863709
 Two electron energy                   53.42819669
 Virial quotient                       -0.99313844
 Correlation energy                    -0.25542159
 !MRCI STATE 1.1 Energy              -128.950440406209

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.96041617 (Davidson, fixed reference)
 Cluster corrected energies          -128.95925029 (Davidson, relaxed reference)

 Cluster corrected energies          -128.95806897 (Pople, fixed reference)
 Cluster corrected energies          -128.95716221 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.46       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.24      0.94      0.65      0.02      0.42
 REAL TIME  *         3.44 SEC
 DISK USED  *        31.22 MB (local),      177.28 MB (total)
 SF USED    *        14.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -128.95925029  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:      533 conf     1176 CSFs
 N elec internal:     1037 conf     2352 CSFs
 N-1 el internal:     1016 conf     3696 CSFs
 N-2 el internal:      784 conf     4620 CSFs

 Number of electrons in valence space:                      8
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -128.00185124

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.24D-03
 Number of N-2 electron functions:      64
 Number of N-1 electron functions:    3696

 Number of internal configurations:                 1176
 Number of singly external configurations:         92424
 Number of doubly external configurations:         40216
 Total number of contracted configurations:       133816
 Total number of uncontracted configurations:    2960688

 Diagonal Coupling coefficients finished.               Storage:    446364 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    225198 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.00185124     0.00000000    -0.24525033  0.24D-01  0.15D-01     0.06
    2     1     1     1.03314227    -0.22749431  -128.22934555    -0.22749431    -0.00581104  0.59D-03  0.43D-03     0.24
    3     1     1     1.03511576    -0.23295371  -128.23480495    -0.00545940    -0.00030933  0.39D-04  0.20D-04     0.44
    4     1     1     1.03651720    -0.23327129  -128.23512253    -0.00031758    -0.00001956  0.31D-05  0.12D-05     0.62
    5     1     1     1.03683326    -0.23329011  -128.23514135    -0.00001882    -0.00000108  0.86D-07  0.86D-07     0.81
    6     1     1     1.03685892    -0.23329118  -128.23514242    -0.00000107    -0.00000006  0.69D-08  0.33D-08     1.00
    7     1     1     1.03686074    -0.23329124  -128.23514248    -0.00000006    -0.00000000  0.64D-09  0.24D-09     1.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   1.7%  14.4%
 P   7.6%  47.5%  16.9%

 Initialization:   3.4%
 Other:            6.8%

 Total CPU:        1.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2022//00           0.5621740
 202/20/0           0.5621688
 20/2200/           0.5621638
 202//\/0          -0.0507649
 20/2/\0/          -0.0507645
 20//20\/          -0.0507643

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2022/000   9.2    -0.0507715
 202/2000   8.2    -0.0507709
 20/22000   7.2    -0.0507703


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98202541 (fixed)   0.98206399 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007857    0.00000001   -0.00001768
 Singles      0.02297962   -0.08482285   -0.08697114
 Pairs        0.01388402   -0.14846839   -0.14630242
 Total        1.03694220   -0.23329123   -0.23329124
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.00185124
 Nuclear energy                         0.00000000
 Kinetic energy                       129.27530349
 One electron energy                 -177.78705517
 Two electron energy                   49.55191269
 Virial quotient                       -0.99195391
 Correlation energy                    -0.23329124
 !MRCI STATE 1.1 Energy              -128.235142478826

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.24376077 (Davidson, fixed reference)
 Cluster corrected energies          -128.24374177 (Davidson, relaxed reference)

 Cluster corrected energies          -128.24095783 (Pople, fixed reference)
 Cluster corrected energies          -128.24094486 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.55       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.50      1.26      0.94      0.65      0.02      0.42
 REAL TIME  *         4.73 SEC
 DISK USED  *        32.31 MB (local),      182.72 MB (total)
 SF USED    *        19.01 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -128.24374177  AU                              


         HLSDIAG
    -128.9592503
    -128.2437418
                                                  

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

 Time for Seward_LS:       0.18 sec

         895620. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.55       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.23      0.67      1.26      0.94      0.65      0.02      0.42
 REAL TIME  *         7.00 SEC
 DISK USED  *        32.33 MB (local),      258.74 MB (total)
 SF USED    *        19.01 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:   -128.950440
 Replaced energies:   -128.959250

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -128.235142
 Replaced energies:   -128.243742



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -128.95925029

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00

    2   1.1  1.0  1.0       0.00  157035.97       0.00       0.00
                            0.00      -0.00       0.00       0.00

    3   1.1  1.0  0.0       0.00       0.00  157035.97       0.00
                           -0.00      -0.00       0.00       0.00

    4   1.1  1.0 -1.0       0.00       0.00       0.00  157035.97
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  4)

    The diagonal matrixelements are shifted by   -128.95925029 a.u.

  State Sym Spin    / Nr.        1           2           3           4

    1    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000  157035.969       0.000       0.000
                                0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000  157035.969       0.000
                               -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000  157035.969
                                0.000      -0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -128.95925029     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -128.24374177     0.71550852   157035.97      0.71550852   157035.97     19.4700
    3  -128.24374177     0.71550852   157035.97      0.71550852   157035.97     19.4700
    4  -128.24374177     0.71550852   157035.97      0.71550852   157035.97     19.4700

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4

   1    1  |0 0>           1.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.80948034 -0.20923846  0.54834000
                           0.00000000  0.00000000 -0.01685527  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.03660517  0.00000000
                           0.00000000 -0.41510298  0.45441048  0.78731232

   1    1  |1 1>-          0.00000000  0.00000000 -0.06944984  0.00000000
                          -0.00000000  0.41524824  0.86213866 -0.28189103


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -128.95925029      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -128.24374177      0.71550852   157035.97      0.71550852   157035.97     19.4700
     3   1   -128.24374177      0.71550852   157035.97      0.71550852   157035.97     19.4700
     4   1   -128.24374177      0.71550852   157035.97      0.71550852   157035.97     19.4700

 E0 =   -128.95925029 is the energy of the lowest zeroth-order state
 E1 =   -128.95925029 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4

  1  1     1    1  |0 0>        1.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.80948034 -0.20923846  0.54834000
                                0.00000000  0.00000000 -0.01685527  0.00000000

  3  1     1    1  |1 0>        0.00000000  0.00000000 -0.03660517  0.00000000
                                0.00000000 -0.41510298  0.45441048  0.78731232

  4  1     1    1  |1 1>-       0.00000000  0.00000000 -0.06944984  0.00000000
                               -0.00000000  0.41524824  0.86213866 -0.28189103



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   65.53%    4.41%   30.07%
  3  1     1    1  |1 0>          0.00%   17.23%   20.78%   61.99%
  4  1     1    1  |1 1>-         0.00%   17.24%   74.81%    7.95%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.55       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.07      2.84      0.67      1.26      0.94      0.65      0.02      0.42
 REAL TIME  *        10.33 SEC
 DISK USED  *        32.33 MB (local),      258.74 MB (total)
 SF USED    *        20.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -128.243741766392

              CI              CI           MULTI         RHF-SCF
   -128.23514248   -128.95044041   -128.00185124   -126.85019653
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
