
 Working directory              : /wrk/irikura/molpro.tcA3rD0Xqs/
 Global scratch directory       : /wrk/irikura/molpro.tcA3rD0Xqs/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.tcA3rD0Xqs/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,F SO-CI
                                                                                 ! active space (5/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={F};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=9,sym=2,spin=1}
 
 {multi
     closed,1,0;
     occ,3,6
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:29:18  
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

 Library entry F      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  F       9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
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

     2.621 MB (compressed) written to integral file ( 22.1%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.531E-02 0.200E-01 0.649E-01 0.199E+00 0.237E+00 0.237E+00 0.237E+00 0.237E+00
         2 0.200E-01 0.200E-01 0.200E-01 0.204E+00 0.204E+00 0.204E+00 0.393E+00 0.393E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.53
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   2

 NELEC=    9   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -99.48186242     -99.48186242     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2      -99.48795421      -0.00609179     0.81D-02     0.77D-02     1     0       0.00      0.01    diag2
   3      -99.48884630      -0.00089209     0.38D-02     0.25D-02     2     0       0.00      0.01    diag2
   4      -99.48891125      -0.00006496     0.44D-03     0.45D-03     3     0       0.00      0.01    diag2
   5      -99.48891862      -0.00000737     0.14D-03     0.21D-03     4     0       0.00      0.01    diag2
   6      -99.48891869      -0.00000007     0.15D-04     0.23D-04     5     0       0.01      0.02    diag2
   7      -99.48891869      -0.00000000     0.16D-05     0.24D-05     6     0       0.00      0.02    diag2
   8      -99.48891869      -0.00000000     0.10D-06     0.11D-06     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   2

 !RHF STATE 1.2 Energy                -99.488918690671
  RHF One-electron energy            -139.339171192045
  RHF Two-electron energy              39.850252501374
  RHF Kinetic energy                  100.044215786173
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.994449483250

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.41235     1  1  s    0.99929
    2.1     2.00000    -1.57834     1  2  s    1.00877
    1.2     2.00000    -0.70578     1  1  px   0.99023
    2.2     2.00000    -0.70578     1  1  py  -0.49137    1  1  pz   0.85972
    3.2     1.00000    -0.83417     1  1  py   0.88940    1  1  pz   0.50834


 HOMO      3.2    -0.834166 =     -22.6988eV
 LUMO      4.2     0.186151 =       5.0654eV
 LUMO-HOMO         1.020317 =      27.7642eV

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
 CPU TIMES  *         0.74      0.02      0.53
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.43 MB (local),      168.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.932D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.702D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.106D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 2 5 4 1 6   3 2 5 4 1 6 3 2 5 4   1 6 3 2 5 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.627D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.372D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.365D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.364D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 110   5 7 6 4 9 8 2 3 110   7 5 6 4 9 8 2 1 3 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    6170
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   33    0    -99.48907040     -99.58899700   -0.09992660    0.05768953 0.00002307 0.00002521  0.18E+01      0.31
   2   10   24    0    -99.58517389     -99.58558991   -0.00041602    0.02617263 0.00008301 0.00003573  0.10E+00      0.68
   3    8   16    0    -99.58558991     -99.58558991   -0.00000000    0.00000802 0.00000000 0.00000002  0.11E-04      0.93

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.22E-08)
                       Final energy:    -99.58558991
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -99.585589906751
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.14379634
 One electron energy                          -139.14186146
 Two electron energy                            39.55627155
 Virial ratio                                    1.99442595
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -99.585589906751
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.14379634
 One electron energy                          -139.14186146
 Two electron energy                            39.55627155
 Virial ratio                                    1.99442595
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -99.585589906741
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.14379634
 One electron energy                          -139.14186146
 Two electron energy                            39.55627155
 Virial ratio                                    1.99442595
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999647650364
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000352349636
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999828462
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999940
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000171598
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000352521174
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999647650424
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999828402
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 6 5 4 2 4   6 3 5 2 1 2 6 3 5 4   1 2 5 6 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 1 3 2 6   5 4 9 710 8 1 3 2 6   810 5 7 9 4 3 1 2 1   3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.42406     1  1  s    0.99913
    2.1     1.99211    -1.59029     1  2  s    0.98743
    3.1     0.00795     1.90114     1  2  s   -0.54432    1  3  s   -1.02787    1  4  s    1.34571
    1.2     1.65580    -0.60232     1  1  pz   1.00572
    2.2     1.65580    -0.60232     1  1  px   1.00572
    3.2     1.65580    -0.60232     1  1  py   1.00572
    4.2     0.01085     1.68556     1  1  py  -2.02818    1  2  py   1.00569    1  3  py   1.44745
    5.2     0.01085     1.68556     1  1  pz  -2.02818    1  2  pz   1.00569    1  3  pz   1.44745
    6.2     0.01085     1.68556     1  1  px  -2.02818    1  2  px   1.00569    1  3  px   1.44745
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 22a000      0.00040989      0.00000769      0.98965614
 20 2a2000     -0.01857682      0.98948185      0.00000001
 20 a22000      0.98948177      0.01857681     -0.00040996
 
 Energy:      -99.58558991    -99.58558991    -99.58558991
 


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
 CPU TIMES  *         1.61      0.86      0.02      0.53
 REAL TIME  *         2.74 SEC
 DISK USED  *        30.35 MB (local),      172.90 MB (total)
 SF USED    *         3.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.58558991   2.0
    -99.58558991   2.0
    -99.58558991   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      554 conf     1204 CSFs
 N elec internal:     1016 conf     2352 CSFs
 N-1 el internal:      784 conf     2688 CSFs
 N-2 el internal:      504 conf     2520 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.58558991
     2       -99.58558991
     3       -99.58558991

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.47D-06
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    2688

 Number of internal configurations:                 1204
 Number of singly external configurations:         67232
 Number of doubly external configurations:        120648
 Total number of contracted configurations:       189084
 Total number of uncontracted configurations:    1637598

 Diagonal Coupling coefficients finished.               Storage:    679686 words, CPU-Time:      0.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    230226 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.58558991    -0.00000000    -0.11224718  0.72D-02  0.62D-02     0.31
    1     2     2     1.00000000     0.00000000   -99.58558991     0.00000000    -0.11226047  0.72D-02  0.62D-02     0.31
    1     3     3     1.00000000     0.00000000   -99.58558991     0.00000000    -0.11222726  0.72D-02  0.62D-02     0.31
    2     1     1     1.01721203    -0.12737928   -99.71296918    -0.12737928    -0.00490780  0.42D-03  0.28D-03     1.32
    2     2     2     1.01721055    -0.12737630   -99.71296621    -0.12737630    -0.00491034  0.42D-03  0.28D-03     1.32
    2     3     3     1.01720837    -0.12737482   -99.71296473    -0.12737482    -0.00491097  0.42D-03  0.28D-03     1.32
    3     1     1     1.01879046    -0.13303937   -99.71862927    -0.00566009    -0.00051183  0.44D-04  0.29D-04     2.31
    3     2     2     1.01878920    -0.13303855   -99.71862845    -0.00566224    -0.00051252  0.44D-04  0.29D-04     2.31
    3     3     3     1.01878883    -0.13303820   -99.71862810    -0.00566338    -0.00051313  0.44D-04  0.29D-04     2.31
    4     1     1     1.01961019    -0.13359775   -99.71918765    -0.00055838    -0.00007077  0.62D-05  0.43D-05     3.28
    4     2     2     1.01961031    -0.13359771   -99.71918761    -0.00055916    -0.00007079  0.62D-05  0.43D-05     3.28
    4     3     3     1.01960979    -0.13359771   -99.71918761    -0.00055951    -0.00007081  0.62D-05  0.43D-05     3.28
    5     1     1     1.01976921    -0.13367897   -99.71926888    -0.00008122    -0.00001256  0.16D-05  0.74D-06     4.25
    5     2     2     1.01976935    -0.13367895   -99.71926886    -0.00008125    -0.00001256  0.16D-05  0.74D-06     4.25
    5     3     3     1.01976924    -0.13367893   -99.71926883    -0.00008122    -0.00001260  0.16D-05  0.74D-06     4.25
    6     1     1     1.01979746    -0.13369329   -99.71928320    -0.00001432    -0.00000265  0.26D-06  0.15D-06     5.23
    6     2     2     1.01979741    -0.13369329   -99.71928319    -0.00001433    -0.00000265  0.26D-06  0.15D-06     5.23
    6     3     3     1.01979733    -0.13369328   -99.71928318    -0.00001435    -0.00000266  0.26D-06  0.15D-06     5.23
    7     1     1     1.01982599    -0.13369628   -99.71928618    -0.00000299    -0.00000058  0.62D-07  0.34D-07     6.18
    7     2     2     1.01982596    -0.13369628   -99.71928618    -0.00000299    -0.00000058  0.62D-07  0.34D-07     6.18
    7     3     3     1.01982588    -0.13369627   -99.71928618    -0.00000300    -0.00000058  0.62D-07  0.34D-07     6.18
    8     1     1     1.01983615    -0.13369693   -99.71928683    -0.00000065    -0.00000017  0.24D-07  0.92D-08     7.13
    8     2     2     1.01983614    -0.13369693   -99.71928683    -0.00000065    -0.00000017  0.24D-07  0.92D-08     7.13
    8     3     3     1.01983610    -0.13369692   -99.71928683    -0.00000065    -0.00000017  0.24D-07  0.92D-08     7.13
    9     1     1     1.01984126    -0.13369710   -99.71928701    -0.00000018    -0.00000004  0.48D-08  0.25D-08     8.09
    9     2     2     1.01984125    -0.13369710   -99.71928701    -0.00000018    -0.00000004  0.48D-08  0.25D-08     8.09
    9     3     3     1.01984124    -0.13369710   -99.71928701    -0.00000018    -0.00000005  0.48D-08  0.25D-08     8.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   1.1%   4.4%
 P   4.4%  27.6%  45.4%

 Initialization:   2.7%
 Other:           12.9%

 Total CPU:        8.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2022/000           0.0000000   0.0000000   0.9789422
 20/22000          -0.0000000   0.9789422  -0.0000000
 202/2000           0.9789422   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.990043    0.000000    0.000000
 2          -0.000000    0.990043    0.000000
 3          -0.000000   -0.000000    0.990043

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.990043   -0.000000    0.000000
 2          -0.000000    0.990043    0.000000
 3           0.000000    0.000000    0.990043


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.99004250 (fixed)   0.99022460 (relaxed)   0.99004250 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036789   -0.00000000   -0.09244340
 Singles      0.00796830   -0.03943401   -0.03969635
 Pairs        0.01188026   -0.00000000   -0.00155736
 Total        1.02021645   -0.03943402   -0.13369710
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.58558991
 Nuclear energy                         0.00000000
 Kinetic energy                       100.25127944
 One electron energy                 -139.05023148
 Two electron energy                   39.33094447
 Virial quotient                       -0.99469341
 Correlation energy                    -0.13369710
 !MRCI STATE 1.2 Energy               -99.719287010548

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72198989 (Davidson, fixed reference)
 Cluster corrected energies           -99.72193973 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72198989 (Davidson, rotated reference)

 Cluster corrected energies           -99.72110099 (Pople, fixed reference)
 Cluster corrected energies           -99.72106711 (Pople, relaxed reference)
 Cluster corrected energies           -99.72110099 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.99004250 (fixed)   0.99022460 (relaxed)   0.99004250 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036789   -0.00000000   -0.09244339
 Singles      0.00796830   -0.03943403   -0.03969634
 Pairs        0.01188026   -0.00000000   -0.00155737
 Total        1.02021644   -0.03943403   -0.13369710
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.58558991
 Nuclear energy                         0.00000000
 Kinetic energy                       100.25127911
 One electron energy                 -139.05023134
 Two electron energy                   39.33094433
 Virial quotient                       -0.99469341
 Correlation energy                    -0.13369710
 !MRCI STATE 2.2 Energy               -99.719287010533

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72198989 (Davidson, fixed reference)
 Cluster corrected energies           -99.72193973 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72198989 (Davidson, rotated reference)

 Cluster corrected energies           -99.72110099 (Pople, fixed reference)
 Cluster corrected energies           -99.72106711 (Pople, relaxed reference)
 Cluster corrected energies           -99.72110099 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.99004252 (fixed)   0.99022461 (relaxed)   0.99004252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036788   -0.00000000   -0.00004827
 Singles      0.00796828   -0.03943398   -0.03969634
 Pairs        0.01188026   -0.09426306   -0.09395249
 Total        1.02021642   -0.13369704   -0.13369710
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.58558991
 Nuclear energy                         0.00000000
 Kinetic energy                       100.25127928
 One electron energy                 -139.05023198
 Two electron energy                   39.33094497
 Virial quotient                       -0.99469341
 Correlation energy                    -0.13369710
 !MRCI STATE 3.2 Energy               -99.719287010164

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72198989 (Davidson, fixed reference)
 Cluster corrected energies           -99.72193973 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72198989 (Davidson, rotated reference)

 Cluster corrected energies           -99.72110099 (Pople, fixed reference)
 Cluster corrected energies           -99.72106710 (Pople, relaxed reference)
 Cluster corrected energies           -99.72110099 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.21       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.03      8.42      0.86      0.02      0.53
 REAL TIME  *        11.63 SEC
 DISK USED  *        34.96 MB (local),      195.97 MB (total)
 SF USED    *        49.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.72198989  AU                              
 SETTING HLSDIAG(2)     =       -99.72198989  AU                              
 SETTING HLSDIAG(3)     =       -99.72198989  AU                              


        HLSDIAG
    -99.72198989
    -99.72198989
    -99.72198989
                                                  


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

 Time for Seward_LS:       0.16 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.16 sec, REAL time:      0.18 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -99.719287    -99.719287    -99.719287
 Replaced energies:    -99.721990    -99.721990    -99.721990



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.72198989

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00    -129.01       0.00
                           -0.00       0.00     129.01      -0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00     129.01       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00    -129.01

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00
                         -129.01      -0.00      -0.00      -0.00     129.01       0.00

    4   1.2  0.5 -0.5      -0.00     129.01      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00    -129.01

    5   2.2  0.5 -0.5    -129.01       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -129.01       0.00      -0.00      -0.00

    6   3.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00     129.01      -0.00     129.01       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -99.72257769    -0.00058779     -129.01      0.00000000        0.00      0.0000
     2   -99.72257769    -0.00058779     -129.01      0.00000000        0.00      0.0000
     3   -99.72257768    -0.00058779     -129.01      0.00000000        0.00      0.0000
     4   -99.72257768    -0.00058779     -129.01      0.00000000        0.00      0.0000
     5   -99.72081430     0.00117559      258.01      0.00176338      387.02      0.0480
     6   -99.72081430     0.00117559      258.01      0.00176338      387.02      0.0480


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.030698755   0.745270091   0.009208666   0.331982782  -0.577349730   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.474605648   0.019549692   0.187586510  -0.005203340   0.000000000   0.577350023
                         0.458648404  -0.018892391   0.441535032  -0.012247472   0.000000000   0.000000248

    3    3.2  0.5  0.5   0.000000001   0.000000003   0.000000007  -0.000000006  -0.000000000  -0.000000000
                         0.003512103   0.085262833   0.022515587   0.811712217   0.577351054  -0.000000000

    4    1.2  0.5 -0.5   0.535917864  -0.022075233   0.129813338  -0.003600812   0.000000000   0.577349730
                        -0.517899170   0.021333017   0.305550430  -0.008475476  -0.000000000   0.000000248

    5    2.2  0.5 -0.5   0.027186631   0.660006727  -0.013306965  -0.479731053   0.577350023  -0.000000000
                         0.000000001   0.000000003   0.000000007  -0.000000006   0.000000000   0.000000000

    6    3.2  0.5 -0.5  -0.059250398   0.002440611   0.747083972  -0.020722906  -0.000000000  -0.000000248
                        -0.061311835   0.002525526  -0.317399215   0.008804135   0.000000000   0.577351054


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.094%  55.543%   0.008%  11.021%  33.333%   0.000%
    2    2.2  0.5  0.5  43.561%   0.074%  23.014%   0.018%   0.000%  33.333%
    3    3.2  0.5  0.5   0.001%   0.727%   0.051%  65.888%  33.333%   0.000%
    4    1.2  0.5 -0.5  55.543%   0.094%  11.021%   0.008%   0.000%  33.333%
    5    2.2  0.5 -0.5   0.074%  43.561%   0.018%  23.014%  33.333%   0.000%
    6    3.2  0.5 -0.5   0.727%   0.001%  65.888%   0.051%   0.000%  33.333%


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
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.21       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        20.61     10.57      8.42      0.86      0.02      0.53
 REAL TIME  *        22.56 SEC
 DISK USED  *        34.99 MB (local),      271.99 MB (total)
 SF USED    *        49.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -99.720814301392

              CI           MULTI         RHF-SCF
    -99.71928701    -99.58558991    -99.48891869
 **********************************************************************************************************************************
 Molpro calculation terminated
