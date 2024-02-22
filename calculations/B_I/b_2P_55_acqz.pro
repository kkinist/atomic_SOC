
 Working directory              : /wrk/irikura/molpro.a0VeolokKj/
 Global scratch directory       : /wrk/irikura/molpro.a0VeolokKj/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.a0VeolokKj/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,B SO-CI
                                                                                 ! Active space (5,5) (all electrons!)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=5,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,0,0;
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 15-Feb-24          TIME: 17:15:09  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry B      S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry B      G aug-cc-pwCVQZ-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         152
 NUMBER OF SYMMETRY AOS:          122
 NUMBER OF CONTRACTIONS:          109   (   57Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     18.874 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 2.621 MB, node maximum: 4.981 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1826550.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1826550      RECORD LENGTH: 524288

 Memory used in sort:       2.38 MW

 SORT1 READ    17015161. AND WROTE      357320. INTEGRALS IN      2 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     1765464. AND WROTE     9150664. INTEGRALS IN     75 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC

 Node minimum:     1825945.  Node maximum:     1833330. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415 7 8   9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.495E-04 0.105E-02 0.156E-01 0.477E-01 0.108E+00 0.108E+00 0.108E+00 0.108E+00
         2 0.107E-02 0.107E-02 0.107E-02 0.745E-01 0.745E-01 0.745E-01 0.147E+00 0.147E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.00       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.02      0.82
 REAL TIME  *         2.05 SEC
 DISK USED  *        29.34 MB (local),      191.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50814501     -24.50814501     0.00D+00     0.51D-01     0     0       0.01      0.03    start
   2      -24.53164257      -0.02349756     0.51D-02     0.64D-02     1     0       0.01      0.04    diag2
   3      -24.53474282      -0.00310025     0.14D-02     0.18D-02     2     0       0.02      0.06    diag2
   4      -24.53568878      -0.00094596     0.76D-03     0.21D-02     3     0       0.01      0.07    diag2
   5      -24.53573174      -0.00004296     0.17D-03     0.57D-03     4     0       0.01      0.08    diag2
   6      -24.53573239      -0.00000065     0.26D-04     0.65D-04     5     0       0.02      0.10    diag2
   7      -24.53573239      -0.00000000     0.20D-05     0.42D-05     6     0       0.01      0.11    diag2
   8      -24.53573239      -0.00000000     0.21D-06     0.87D-06     7     0       0.02      0.13    fixocc
   9      -24.53573239      -0.00000000     0.18D-07     0.30D-07     0     0       0.01      0.14    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.535732390533
  RHF One-electron energy             -32.377179844132
  RHF Two-electron energy               7.841447453600
  RHF Kinetic energy                   24.584406771760
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998020111623

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69721     1  1  s    0.99991
    2.1     2.00000    -0.49502     1  2  s    0.99264
    1.2     1.00000    -0.30983     1  1  py   0.74752    1  1  pz   0.66179


 HOMO      1.2    -0.309828 =      -8.4309eV
 LUMO      2.2     0.021727 =       0.5912eV
 LUMO-HOMO         0.331555 =       9.0221eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.00       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.57       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.16      0.14      0.82
 REAL TIME  *         2.20 SEC
 DISK USED  *        30.40 MB (local),      197.07 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:     104 (   55   49)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:              39   (52 determinants, 100 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.157D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 2 6 1 6   3 2 5 4 11415 910 8   7111312 6 2 3 4 514  15 4 5 3 2 910 6 7 8
                                       131112 1 4 5 3 2 6 1   5 4 2 3 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.470D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.666D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 8  10 4 6 5 7 9 2 3 1 8  10 4 6 5 7 9 1 3 2 8  10 4 6 5 7 9 1 3 2 8
                                       10 6 4 7 5 9 1 3 2 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  257  ( 0 closed/active, 0 closed/virtual, 0 active/active, 257 active/virtual )
 Total number of variables:    413
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    5    0    -24.47375025     -24.57118686   -0.09743661    0.09972054 0.00036924 0.00000000  0.10E+01      0.10
   2    3    3    0    -24.56609878     -24.56691310   -0.00081432    0.02853840 0.00000111 0.00000000  0.52E-01      0.16
   3    3    3    0    -24.56691680     -24.56691685   -0.00000005    0.00025555 0.00001642 0.00000000  0.21E-02      0.23
   4    3    3    0    -24.56691619     -24.56691685   -0.00000066    0.00065297 0.00000004 0.00000000  0.18E-02      0.29
   5    2    2    0    -24.56691685     -24.56691685   -0.00000000    0.00000017 0.00000000 0.00000000  0.33E-06      0.34

 CONVERGENCE REACHED!  Final gradient:    0.00000024 ( 0.24E-06)
                       Final energy:    -24.56691685
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -24.566916851793
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61551244
 One electron energy                           -32.40354003
 Two electron energy                             7.83662318
 Virial ratio                                    1.99802581
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -24.566916851560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61551245
 One electron energy                           -32.40354004
 Two electron energy                             7.83662319
 Virial ratio                                    1.99802581
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -24.566916851558
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61551245
 One electron energy                           -32.40354004
 Two electron energy                             7.83662319
 Virial ratio                                    1.99802581
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000000405
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999999958
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999576
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999890
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000099491455
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999918865592
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999999705
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999900508588
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000081134832
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 3   5 6 4 2 11013151411  12 8 7 9 3 5 6 2 410  1314151112 8 7 9 5 3
                                        6 4 2 1 5 3 6 4 2 1   5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 7   910 8 5 6 4 2 1 3 9   710 8 5 6 4 2 1 3 9   710 8 5 6 4 2 1 3 7
                                        9 810 5 6 4 2 1 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.67857     1  1  s    0.99914
    2.1     1.89147    -0.46944     1  2  s    1.01049
    1.2     0.36952     0.03457     1  1  pz   1.00166
    2.2     0.36951     0.03457     1  1  px   1.00166
    3.2     0.36950     0.03457     1  1  py   1.00166
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 0a0         0.97248960      0.00001036      0.00001660
 22 00a        -0.00001020      0.97244122     -0.00970013
 22 a00        -0.00001670      0.00970013      0.97244122
 20 2a0        -0.16471629     -0.00000176     -0.00000281
 20 0a2        -0.16471629     -0.00000176     -0.00000281
 20 20a         0.00000173     -0.16470810      0.00164297
 20 a02         0.00000283     -0.00164297     -0.16470810
 20 02a         0.00000173     -0.16470809      0.00164297
 20 a20         0.00000283     -0.00164297     -0.16470809
 
 Energy:      -24.56691685    -24.56691685    -24.56691685
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.87       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.51      0.34      0.14      0.82
 REAL TIME  *         2.64 SEC
 DISK USED  *        31.22 MB (local),      201.17 MB (total)
 SF USED    *         4.58 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.56691685   2.0
    -24.56691685   2.0
    -24.56691685   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  5
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:       27 conf       39 CSFs
 N elec internal:       51 conf       75 CSFs
 N-1 el internal:       45 conf       95 CSFs
 N-2 el internal:       30 conf       90 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:     104 (  55  49 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   5

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.56691685
     2       -24.56691685
     3       -24.56691685

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.30D-06
 Number of N-2 electron functions:      65
 Number of N-1 electron functions:      95

 Number of internal configurations:                   39
 Number of singly external configurations:          4931
 Number of doubly external configurations:        175957
 Total number of contracted configurations:       180927
 Total number of uncontracted configurations:     248104

 Diagonal Coupling coefficients finished.               Storage:    183035 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    240882 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.56691685    -0.00000000    -0.07417379  0.19D-01  0.15D-02     0.03
    1     2     2     1.00000000     0.00000000   -24.56691685    -0.00000000    -0.07417373  0.19D-01  0.15D-02     0.03
    1     3     3     1.00000000     0.00000000   -24.56691685    -0.00000000    -0.07411100  0.18D-01  0.15D-02     0.03
    2     1     1     1.02254376    -0.07868368   -24.64560053    -0.07868368    -0.00218495  0.29D-03  0.13D-03     0.48
    2     2     2     1.02262045    -0.07867819   -24.64559504    -0.07867819    -0.00218521  0.29D-03  0.13D-03     0.48
    2     3     3     1.02262042    -0.07867811   -24.64559496    -0.07867811    -0.00218519  0.29D-03  0.13D-03     0.48
    3     1     1     1.02824000    -0.08422327   -24.65114012    -0.00553958    -0.00141924  0.45D-03  0.52D-04     0.90
    3     2     2     1.02824004    -0.08422320   -24.65114005    -0.00554501    -0.00141925  0.45D-03  0.52D-04     0.90
    3     3     3     1.02833124    -0.08422203   -24.65113888    -0.00554393    -0.00141868  0.45D-03  0.52D-04     0.90
    4     1     1     1.02854741    -0.08715888   -24.65407573    -0.00293561    -0.00036995  0.71D-04  0.19D-04     1.32
    4     2     2     1.02853741    -0.08715763   -24.65407449    -0.00293443    -0.00037029  0.72D-04  0.19D-04     1.32
    4     3     3     1.02853735    -0.08715763   -24.65407448    -0.00293560    -0.00037030  0.72D-04  0.19D-04     1.32
    5     1     1     1.02727771    -0.08784106   -24.65475792    -0.00068219    -0.00017201  0.22D-04  0.86D-05     1.74
    5     2     2     1.02730567    -0.08784092   -24.65475777    -0.00068328    -0.00017208  0.23D-04  0.86D-05     1.74
    5     3     3     1.02730561    -0.08784092   -24.65475777    -0.00068329    -0.00017209  0.23D-04  0.86D-05     1.74
    6     1     1     1.02891876    -0.08816762   -24.65508447    -0.00032655    -0.00011118  0.12D-04  0.64D-05     2.16
    6     2     2     1.02890301    -0.08816742   -24.65508427    -0.00032650    -0.00011118  0.12D-04  0.64D-05     2.16
    6     3     3     1.02890292    -0.08816741   -24.65508426    -0.00032649    -0.00011118  0.12D-04  0.64D-05     2.16
    7     1     1     1.02974297    -0.08832117   -24.65523802    -0.00015355    -0.00005910  0.12D-04  0.31D-05     2.59
    7     2     2     1.02973204    -0.08832112   -24.65523797    -0.00015371    -0.00005915  0.12D-04  0.31D-05     2.59
    7     3     3     1.02973203    -0.08832112   -24.65523797    -0.00015371    -0.00005915  0.12D-04  0.31D-05     2.59
    8     1     1     1.02943491    -0.08840955   -24.65532640    -0.00008838    -0.00003070  0.22D-05  0.16D-05     3.02
    8     2     2     1.02944472    -0.08840950   -24.65532636    -0.00008838    -0.00003071  0.22D-05  0.16D-05     3.02
    8     3     3     1.02944469    -0.08840950   -24.65532635    -0.00008839    -0.00003071  0.22D-05  0.16D-05     3.02
    9     1     1     1.02960058    -0.08846106   -24.65537791    -0.00005151    -0.00002368  0.13D-05  0.15D-05     3.45
    9     2     2     1.02959953    -0.08846104   -24.65537789    -0.00005154    -0.00002368  0.13D-05  0.15D-05     3.45
    9     3     3     1.02959950    -0.08846104   -24.65537789    -0.00005154    -0.00002368  0.13D-05  0.15D-05     3.45
   10     1     1     1.02990833    -0.08849136   -24.65540821    -0.00003029    -0.00001549  0.10D-05  0.10D-05     3.87
   10     2     2     1.02990339    -0.08849135   -24.65540820    -0.00003031    -0.00001550  0.10D-05  0.11D-05     3.87
   10     3     3     1.02990338    -0.08849135   -24.65540820    -0.00003031    -0.00001550  0.10D-05  0.11D-05     3.87
   11     1     1     1.02998924    -0.08851120   -24.65542805    -0.00001984    -0.00000938  0.40D-06  0.62D-06     4.30
   11     2     2     1.02999040    -0.08851119   -24.65542805    -0.00001984    -0.00000938  0.41D-06  0.62D-06     4.30
   11     3     3     1.02999037    -0.08851119   -24.65542804    -0.00001985    -0.00000938  0.41D-06  0.62D-06     4.30
   12     1     1     1.03001545    -0.08852383   -24.65544068    -0.00001263    -0.00000737  0.30D-06  0.52D-06     4.73
   12     2     2     1.03001687    -0.08852383   -24.65544068    -0.00001263    -0.00000736  0.30D-06  0.52D-06     4.73
   12     3     3     1.03001685    -0.08852382   -24.65544068    -0.00001263    -0.00000737  0.30D-06  0.52D-06     4.73
   13     1     1     1.03009821    -0.08853296   -24.65544982    -0.00000914    -0.00000522  0.12D-06  0.38D-06     5.17
   13     2     2     1.03009916    -0.08853296   -24.65544982    -0.00000914    -0.00000522  0.12D-06  0.38D-06     5.17
   13     3     3     1.03009821    -0.08853296   -24.65544982    -0.00000914    -0.00000522  0.12D-06  0.38D-06     5.17
   14     1     1     1.03016634    -0.08853911   -24.65545596    -0.00000615    -0.00000343  0.59D-07  0.26D-06     5.59
   14     2     2     1.03016633    -0.08853911   -24.65545596    -0.00000615    -0.00000343  0.59D-07  0.26D-06     5.59
   14     3     3     1.03016682    -0.08853911   -24.65545596    -0.00000615    -0.00000343  0.60D-07  0.26D-06     5.59
   15     1     1     1.03020422    -0.08854330   -24.65546015    -0.00000418    -0.00000271  0.58D-07  0.21D-06     6.01
   15     2     2     1.03020421    -0.08854330   -24.65546015    -0.00000418    -0.00000271  0.58D-07  0.21D-06     6.01
   15     3     3     1.03020384    -0.08854329   -24.65546015    -0.00000418    -0.00000271  0.57D-07  0.21D-06     6.01
   16     1     1     1.03023662    -0.08854646   -24.65546331    -0.00000317    -0.00000202  0.23D-07  0.15D-06     6.44
   16     2     2     1.03023661    -0.08854646   -24.65546331    -0.00000317    -0.00000202  0.23D-07  0.15D-06     6.44
   16     3     3     1.03023651    -0.08854646   -24.65546331    -0.00000317    -0.00000202  0.23D-07  0.15D-06     6.44
   17     1     1     1.03026852    -0.08854876   -24.65546561    -0.00000229    -0.00000135  0.15D-07  0.10D-06     6.87
   17     2     2     1.03026851    -0.08854876   -24.65546561    -0.00000229    -0.00000135  0.15D-07  0.10D-06     6.87
   17     3     3     1.03026870    -0.08854876   -24.65546561    -0.00000229    -0.00000135  0.15D-07  0.10D-06     6.87
   18     1     1     1.03029435    -0.08855036   -24.65546721    -0.00000160    -0.00000111  0.90D-08  0.92D-07     7.31
   18     2     2     1.03029434    -0.08855036   -24.65546721    -0.00000160    -0.00000111  0.90D-08  0.92D-07     7.31
   18     3     3     1.03029438    -0.08855036   -24.65546721    -0.00000160    -0.00000111  0.90D-08  0.92D-07     7.31
   19     1     1     1.03031529    -0.08855160   -24.65546845    -0.00000124    -0.00000083  0.82D-08  0.62D-07     7.76
   19     2     2     1.03031529    -0.08855160   -24.65546845    -0.00000124    -0.00000083  0.82D-08  0.62D-07     7.76
   19     3     3     1.03031522    -0.08855160   -24.65546845    -0.00000124    -0.00000083  0.81D-08  0.62D-07     7.76
   20     1     1     1.03033344    -0.08855253   -24.65546938    -0.00000094    -0.00000057  0.45D-08  0.45D-07     8.21
   20     2     2     1.03033344    -0.08855253   -24.65546938    -0.00000094    -0.00000057  0.45D-08  0.45D-07     8.21
   20     3     3     1.03033345    -0.08855253   -24.65546938    -0.00000094    -0.00000057  0.45D-08  0.45D-07     8.21
   21     1     1     1.03034895    -0.08855319   -24.65547004    -0.00000066    -0.00000047  0.27D-08  0.40D-07     8.63
   21     2     2     1.03034895    -0.08855319   -24.65547004    -0.00000066    -0.00000047  0.27D-08  0.40D-07     8.63
   21     3     3     1.03034898    -0.08855319   -24.65547004    -0.00000066    -0.00000047  0.27D-08  0.40D-07     8.63
   22     1     1     1.03036248    -0.08855371   -24.65547056    -0.00000052    -0.00000036  0.25D-08  0.27D-07     9.06
   22     2     2     1.03036248    -0.08855371   -24.65547056    -0.00000052    -0.00000036  0.25D-08  0.27D-07     9.06
   22     3     3     1.03036247    -0.08855371   -24.65547056    -0.00000052    -0.00000036  0.25D-08  0.27D-07     9.06
   23     1     1     1.03037362    -0.08855411   -24.65547096    -0.00000040    -0.00000025  0.16D-08  0.20D-07     9.49
   23     2     2     1.03037362    -0.08855411   -24.65547096    -0.00000040    -0.00000025  0.16D-08  0.20D-07     9.49
   23     3     3     1.03037361    -0.08855411   -24.65547096    -0.00000040    -0.00000025  0.16D-08  0.20D-07     9.49
   24     1     1     1.03038334    -0.08855439   -24.65547124    -0.00000028    -0.00000021  0.12D-08  0.17D-07     9.93
   24     2     2     1.03038334    -0.08855439   -24.65547124    -0.00000028    -0.00000021  0.12D-08  0.17D-07     9.93
   24     3     3     1.03038334    -0.08855439   -24.65547124    -0.00000028    -0.00000021  0.12D-08  0.17D-07     9.93
   25     1     1     1.03039214    -0.08855462   -24.65547147    -0.00000023    -0.00000016  0.82D-09  0.12D-07    10.37
   25     2     2     1.03039214    -0.08855462   -24.65547147    -0.00000023    -0.00000016  0.82D-09  0.12D-07    10.37
   25     3     3     1.03039214    -0.08855462   -24.65547147    -0.00000023    -0.00000016  0.83D-09  0.12D-07    10.37
   26     1     1     1.03039922    -0.08855479   -24.65547164    -0.00000017    -0.00000011  0.69D-09  0.91D-08    10.79
   26     2     2     1.03039922    -0.08855479   -24.65547164    -0.00000017    -0.00000011  0.69D-09  0.91D-08    10.79
   26     3     3     1.03039921    -0.08855479   -24.65547164    -0.00000017    -0.00000011  0.69D-09  0.91D-08    10.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   0.8%
 P   0.8%   6.2%  37.1%

 Initialization:   0.2%
 Other:           54.8%

 Total CPU:       10.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/00          -0.0000000  -0.0000000   0.9625265
 2200/          -0.0000000   0.9625265   0.0000000
 220/0           0.9625265   0.0000000   0.0000000
 2020/           0.0000000  -0.1483900  -0.0000000
 202/0          -0.1483900   0.0000000  -0.0000000
 2002/          -0.0000000  -0.1483900   0.0000000
 200/2          -0.1483900   0.0000000  -0.0000000
 20/20           0.0000000  -0.0000000  -0.1483900
 20/02           0.0000000   0.0000000  -0.1483900

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.984933   -0.000000   -0.000000
 2           0.000000    0.984933   -0.000000
 3           0.000000    0.000000    0.984933

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.984933   -0.000000   -0.000000
 2          -0.000000    0.984933   -0.000000
 3          -0.000000   -0.000000    0.984933


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98493253 (fixed)   0.98513838 (relaxed)   0.98493253 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041805    0.00000000   -0.06107150
 Singles      0.02098933   -0.02563748   -0.02666990
 Pairs        0.00942260    0.00000000   -0.00081339
 Total        1.03082998   -0.02563748   -0.08855479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56691685
 Nuclear energy                         0.00000000
 Kinetic energy                        24.69986191
 One electron energy                  -32.33725465
 Two electron energy                    7.68178300
 Virial quotient                       -0.99820281
 Correlation energy                    -0.08855479
 !MRCI STATE 1.2 Energy               -24.655471644221

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65820179 (Davidson, fixed reference)
 Cluster corrected energies           -24.65816364 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65820179 (Davidson, rotated reference)

 Cluster corrected energies           -24.65683639 (Pople, fixed reference)
 Cluster corrected energies           -24.65681733 (Pople, relaxed reference)
 Cluster corrected energies           -24.65683639 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98493253 (fixed)   0.98513838 (relaxed)   0.98493253 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041805    0.00000000   -0.06107150
 Singles      0.02098933   -0.02563748   -0.02666990
 Pairs        0.00942260   -0.00000000   -0.00081339
 Total        1.03082998   -0.02563748   -0.08855479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56691685
 Nuclear energy                         0.00000000
 Kinetic energy                        24.69986191
 One electron energy                  -32.33725466
 Two electron energy                    7.68178301
 Virial quotient                       -0.99820281
 Correlation energy                    -0.08855479
 !MRCI STATE 2.2 Energy               -24.655471644173

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65820179 (Davidson, fixed reference)
 Cluster corrected energies           -24.65816364 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65820179 (Davidson, rotated reference)

 Cluster corrected energies           -24.65683639 (Pople, fixed reference)
 Cluster corrected energies           -24.65681733 (Pople, relaxed reference)
 Cluster corrected energies           -24.65683639 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98493253 (fixed)   0.98513838 (relaxed)   0.98493253 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041805    0.00000000   -0.00003591
 Singles      0.02098934   -0.02563749   -0.02666991
 Pairs        0.00942258   -0.06291731   -0.06184897
 Total        1.03082997   -0.08855479   -0.08855479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.56691685
 Nuclear energy                         0.00000000
 Kinetic energy                        24.69986188
 One electron energy                  -32.33725470
 Two electron energy                    7.68178306
 Virial quotient                       -0.99820281
 Correlation energy                    -0.08855479
 !MRCI STATE 3.2 Energy               -24.655471644031

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65820179 (Davidson, fixed reference)
 Cluster corrected energies           -24.65816364 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65820179 (Davidson, rotated reference)

 Cluster corrected energies           -24.65683639 (Pople, fixed reference)
 Cluster corrected energies           -24.65681733 (Pople, relaxed reference)
 Cluster corrected energies           -24.65683639 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.27       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.39     10.87      0.34      0.14      0.82
 REAL TIME  *        14.27 SEC
 DISK USED  *        35.61 MB (local),      223.15 MB (total)
 SF USED    *        43.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.65820179  AU                              
 SETTING HLSDIAG(2)     =       -24.65820179  AU                              
 SETTING HLSDIAG(3)     =       -24.65820179  AU                              


        HLSDIAG
    -24.65820179
    -24.65820179
    -24.65820179
                                                  


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

 Time for Seward_LS:       1.12 sec

        6979372. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2680 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      1.12 sec, REAL time:      1.17 sec


 SORTLS1 read    10942561. and wrote    10942561. SO integrals in    45 records. CPU time:      0.11 sec, REAL time:      0.18 sec
 SORTLS2 read    10942561. and wrote    53916771. SO integrals in    15 records. CPU time:      0.13 sec, REAL time:      0.23 sec

 FILE SIZES: FILE 1:   207.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   207.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -24.655472    -24.655472    -24.655472
 Replaced energies:    -24.658202    -24.658202    -24.658202



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.65820179

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       4.82
                            0.00      -4.82       0.00      -0.00      -0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            4.82      -0.00       0.00       0.00      -0.00      -4.82

    3   3.2  0.5  0.5       0.00       0.00       0.00      -4.82       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       4.82       0.00

    4   1.2  0.5 -0.5       0.00      -0.00      -4.82       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       4.82      -0.00

    5   2.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -4.82      -4.82       0.00      -0.00

    6   3.2  0.5 -0.5       4.82      -0.00       0.00       0.00       0.00       0.00
                           -0.00       4.82      -0.00       0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.65824572    -0.00004393       -9.64      0.00000000        0.00      0.0000
     2   -24.65824572    -0.00004393       -9.64      0.00000000        0.00      0.0000
     3   -24.65817982     0.00002196        4.82      0.00006589       14.46      0.0018
     4   -24.65817982     0.00002196        4.82      0.00006589       14.46      0.0018
     5   -24.65817982     0.00002196        4.82      0.00006589       14.46      0.0018
     6   -24.65817982     0.00002196        4.82      0.00006589       14.46      0.0018


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5  -0.000000000   0.577352318   0.749023777  -0.082623191   0.269286118   0.162129819
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000004   0.000000005  -0.000000009
                        -0.000000000  -0.577351040   0.645088173  -0.071158281  -0.424450037  -0.255549781

    3    3.2  0.5  0.5   0.512867179  -0.000000000  -0.011465049  -0.103936863  -0.417635369   0.693662691
                        -0.265136445   0.000000000   0.000051417   0.000466083  -0.006278244   0.010427698

    4    1.2  0.5 -0.5   0.512871503  -0.000000000   0.082622360   0.749016246   0.162111502  -0.269255696
                        -0.265138680   0.000000000  -0.000370503  -0.003358810   0.002436992  -0.004047671

    5    2.2  0.5 -0.5   0.265138093  -0.000000000  -0.000319087  -0.002892737  -0.003841208   0.006379953
                         0.512870368  -0.000000000  -0.071157565  -0.645081687   0.255520911  -0.424402086

    6    3.2  0.5 -0.5  -0.000000000  -0.577347450   0.103937908  -0.011465164   0.693741065   0.417682556
                        -0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000005  -0.000000009


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.000%  33.334%  56.104%   0.683%   7.252%   2.629%
    2    2.2  0.5  0.5   0.000%  33.333%  41.614%   0.506%  18.016%   6.531%
    3    3.2  0.5  0.5  33.333%   0.000%   0.013%   1.080%  17.446%  48.128%
    4    1.2  0.5 -0.5  33.334%   0.000%   0.683%  56.104%   2.629%   7.252%
    5    2.2  0.5 -0.5  33.333%   0.000%   0.506%  41.614%   6.531%  18.016%
    6    3.2  0.5 -0.5   0.000%  33.333%   1.080%   0.013%  48.128%  17.446%


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
              1      24      197.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.27       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.09      3.67     10.87      0.34      0.14      0.82
 REAL TIME  *        20.22 SEC
 DISK USED  *        35.68 MB (local),      778.99 MB (total)
 SF USED    *       188.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=    -24.658179821771

              CI           MULTI         RHF-SCF
    -24.65547164    -24.56691685    -24.53573239
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
