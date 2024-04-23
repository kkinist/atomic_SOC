
 Working directory              : /wrk/irikura/molpro.T4uZrbk86i/
 Global scratch directory       : /wrk/irikura/molpro.T4uZrbk86i/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.T4uZrbk86i/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,9,9
     occ,11,9
     wf,sym=1,spin=0;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,3,6
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 13:39:30  
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

 Library entry SR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  SR     38.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   38
 NUMBER OF PRIMITIVE AOS:         238
 NUMBER OF SYMMETRY AOS:          211
 NUMBER OF CONTRACTIONS:           93   (   45Ag  +   48Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     17.039 MB (compressed) written to integral file ( 17.7%)

     Node minimum: 0.262 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      161323.  Node maximum:      165900. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.624E-03 0.367E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.284E-01
         2 0.333E-02 0.333E-02 0.333E-02 0.745E-02 0.745E-02 0.745E-02 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.40      3.05
 REAL TIME  *         4.23 SEC
 DISK USED  *        29.46 MB (local),     1011.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27784108   -3177.27784108     0.00D+00     0.19D+00     0     0       0.00      0.00    start
   2    -3177.27784113      -0.00000005     0.20D-04     0.52D-04     1     0       0.00      0.00    diag
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.01      0.01    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.00      0.01    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.00      0.01    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.01    diag
   7    -3177.27784113       0.00000000     0.77D-08     0.14D-06     0     0       0.01      0.02    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133262
  RHF One-electron energy           -4396.585097306507
  RHF Two-electron energy            1219.307256173246
  RHF Kinetic energy                 3454.572331531404
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.919731166759

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.20921     1  1  s    0.99995
    2.1     2.00000   -83.10582     1  2  s    1.00054
    3.1     2.00000   -13.95403     1  3  s    0.99701
    4.1     2.00000    -5.58737     1  1  d0   0.99943
    5.1     2.00000    -5.58737     1  1  d2-  0.99664
    6.1     2.00000    -5.58737     1  1  d1+  0.97806
    7.1     2.00000    -5.58737     1  1  d1-  0.97985
    8.1     2.00000    -5.58737     1  1  d2+  0.99806
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99993
    3.2     2.00000   -73.65117     1  1  pz   0.99994
    4.2     2.00000   -10.80369     1  2  pz   1.00005
    5.2     2.00000   -10.80369     1  2  px   1.00005
    6.2     2.00000   -10.80369     1  2  py   1.00005
    7.2     2.00000    -1.09510     1  3  px   0.99983
    8.2     2.00000    -1.09510     1  3  pz   0.99983
    9.2     2.00000    -1.09510     1  3  py   0.99983


 HOMO     10.1    -0.181218 =      -4.9312eV
 LUMO     10.2     0.009844 =       0.2679eV
 LUMO-HOMO         0.191062 =       5.1991eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.43      0.03      3.05
 REAL TIME  *         4.27 SEC
 DISK USED  *        29.90 MB (local),        1.00 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      73 (   34   39)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.119D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.229D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 5 3 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.970D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.366D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.811D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.107D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.590D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.818D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  743  ( 18 closed/active, 657 closed/virtual, 0 active/active, 68 active/virtual )
 Total number of variables:    751
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0  -3177.21676566   -3177.22017715   -0.00341149    0.02660585 0.00000741 0.00000000  0.30E+00      0.30
   2    6    5    0  -3177.22008547   -3177.22009082   -0.00000534    0.00129045 0.00000009 0.00000000  0.89E-02      0.65
   3    4    4    0  -3177.22009083   -3177.22009083   -0.00000000    0.00000326 0.00000000 0.00000000  0.22E-04      0.93

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.19E-10)
                       Final energy:  -3177.22009083
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -3177.277240783495
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.72153828
 One electron energy                         -4397.09342920
 Two electron energy                          1219.81618842
 Virial ratio                                    1.91969127
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -3177.162940870217
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.29777089
 One electron energy                         -4391.56977307
 Two electron energy                          1214.40683220
 Virial ratio                                    1.91977101
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   1 2 5 3 6 4 6 4 5 3   2 1 2 4 6 5 3 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4   810 6 9 7 3 1 210 8   6 9 7 5 4 3 1 2 4 5
                                        6 9 710 8 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.26953     1  1  s    0.99995
    2.1     2.00000   -83.16589     1  2  s    1.00054
    3.1     2.00000   -14.01379     1  3  s    0.99696
    4.1     2.00000    -5.64734     1  1  d0   1.00003
    5.1     2.00000    -5.64734     1  1  d1+  1.00003
    6.1     2.00000    -5.64734     1  1  d2-  1.00003
    7.1     2.00000    -5.64734     1  1  d1-  1.00003
    8.1     2.00000    -5.64734     1  1  d2+  1.00003
    9.1     2.00000    -2.00677     1  4  s    1.00271
   10.1     1.49995    -0.18051     1  5  s    1.07752
   11.1     0.50005    -0.00375     1  5  s   -0.35825    1  7  s   -1.02955    1 10  s    1.94564
    1.2     2.00000   -73.71137     1  1  px   1.00000
    2.2     2.00000   -73.71137     1  1  py   1.00000
    3.2     2.00000   -73.71137     1  1  pz   1.00000
    4.2     2.00000   -10.86367     1  2  pz   1.00008
    5.2     2.00000   -10.86367     1  2  px   1.00008
    6.2     2.00000   -10.86367     1  2  py   1.00008
    7.2     2.00000    -1.15377     1  3  px   1.00163
    8.2     2.00000    -1.15377     1  3  pz   1.00163
    9.2     2.00000    -1.15377     1  3  py   1.00163
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98766981     -0.15639159
 ab             0.11058832      0.69840549
 ba            -0.11058832     -0.69840549
 
 Energy:    -3177.27724078  -3177.16294087
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.16      0.71      0.03      3.05
 REAL TIME  *         5.45 SEC
 DISK USED  *        40.53 MB (local),        1.31 GB (total)
 SF USED    *        25.36 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.277241  -0.0
    -3177.162941  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 38
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       66 conf       66 CSFs
 N-1 el internal:      119 conf      200 CSFs
 N-2 el internal:      154 conf      397 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      73 (  34  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.03 sec, npass=  1  Memory used:   0.41 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.27724078
     2     -3177.16294087

 Number of blocks in overlap matrix:   181   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:     199
 Number of N-1 electron functions:     200

 Number of internal configurations:                   42
 Number of singly external configurations:          7220
 Number of doubly external configurations:        266005
 Total number of contracted configurations:       273267
 Total number of uncontracted configurations:     536508

 Diagonal Coupling coefficients finished.               Storage:  237446 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  325551 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.27724078    -0.00000000    -0.30749794  0.20D-02  0.11D+00     0.09
    1     2     2     1.00000000     0.00000000 -3177.16294087     0.00000000    -0.27343461  0.24D-02  0.71D-01     0.09
    2     1     1     1.09047824    -0.27478818 -3177.55202896    -0.27478818    -0.00705500  0.11D-02  0.35D-02     0.47
    2     2     2     1.06543029    -0.25985124 -3177.42279211    -0.25985124    -0.00417987  0.70D-03  0.14D-02     0.47
    3     1     1     1.08072124    -0.28189189 -3177.55913267    -0.00710370    -0.00020008  0.13D-04  0.84D-04     0.80
    3     2     2     1.06666270    -0.26419676 -3177.42713763    -0.00434552    -0.00013181  0.88D-05  0.49D-04     0.80
    4     1     1     1.08078199    -0.28210966 -3177.55935045    -0.00021778    -0.00000942  0.15D-05  0.34D-05     1.12
    4     2     2     1.06699531    -0.26434477 -3177.42728565    -0.00014801    -0.00000661  0.11D-05  0.24D-05     1.12
    5     1     1     1.08079755    -0.28212037 -3177.55936115    -0.00001071    -0.00000036  0.34D-07  0.15D-06     1.44
    5     2     2     1.06714108    -0.26435236 -3177.42729323    -0.00000758    -0.00000026  0.29D-07  0.10D-06     1.44
    6     1     1     1.08077358    -0.28212074 -3177.55936152    -0.00000037    -0.00000001  0.70D-09  0.68D-08     1.76
    6     2     2     1.06716546    -0.26435263 -3177.42729350    -0.00000027    -0.00000001  0.78D-09  0.48D-08     1.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   1.1%
 P   2.3%  23.9%   8.5%

 Initialization:   4.0%
 Other:           60.2%

 Total CPU:        1.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\222           0.0928742   0.9637362
 22222220222           0.9573835  -0.0900546

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.960155   -0.058004
 2           0.061868    0.965947

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961904    0.001749
 2           0.001749    0.967924


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96015532 (fixed)   0.96190593 (relaxed)   0.96190415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000388   -0.00001313   -0.28338278
 Singles      0.00077146   -0.00065057   -0.00080382
 Pairs        0.08000243    0.02480254    0.00206586
 Total        1.08077777    0.02413885   -0.28212074
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.27679978
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.16377092
 One electron energy                -4396.37690288
 Two electron energy                 1218.81754136
 Virial quotient                       -0.91992145
 Correlation energy                    -0.28256174
 !MRCI STATE 1.1 Energy             -3177.559361521158

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58218623 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58218510 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58218623 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58130823 (Pople, fixed reference)
 Cluster corrected energies         -3177.58130708 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58130823 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96594673 (fixed)   0.96801750 (relaxed)   0.96792444 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019649   -0.00001935   -0.00046939
 Singles      0.00430825   -0.00286501   -0.00375141
 Pairs        0.06287041   -0.26103854   -0.26013183
 Total        1.06737516   -0.26392291   -0.26435263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16338188
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.90570293
 One electron energy                -4391.05205270
 Two electron energy                 1213.62475921
 Virial quotient                       -0.91995195
 Correlation energy                    -0.26391162
 !MRCI STATE 2.1 Energy             -3177.427293498274

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44507459 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44502042 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44507459 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44420047 (Pople, fixed reference)
 Cluster corrected energies         -3177.44414609 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44420047 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.08       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.03      1.85      0.71      0.03      3.05
 REAL TIME  *         7.95 SEC
 DISK USED  *        44.92 MB (local),        1.44 GB (total)
 SF USED    *        51.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58218623  AU                              
 SETTING HLSDIAG(2)     =     -3177.44507459  AU                              


         HLSDIAG
    -3177.582186
    -3177.445075
                                                  


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

 Time for Seward_LS:      30.24 sec

        5931683. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1453 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     30.24 sec, REAL time:     30.40 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.04 sec, REAL time:      0.12 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:   137.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   137.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:  -3177.559362  -3177.427293
 Replaced energies:  -3177.582186  -3177.445075



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58218623

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   30092.53
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by  -3177.58218623 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   30092.527
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58218623     0.00000000        0.00      0.00000000        0.00      0.0000
    2 -3177.44507459     0.13711164    30092.53      0.13711164    30092.53      3.7310

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2

   1    1  |0 0>           1.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00000000  1.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.58218623      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1  -3177.44507459      0.13711164    30092.53      0.13711164    30092.53      3.7310

 E0 =  -3177.58218623 is the energy of the lowest zeroth-order state
 E1 =  -3177.58218623 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2

  1  1     1    1  |0 0>        1.00000000  0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  1.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2

  1  1     1    1  |0 0>        100.00%    0.00%
  2  1     2    1  |0 0>          0.00%  100.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      130.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.08       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        38.40     32.32      1.85      0.71      0.03      3.05
 REAL TIME  *        40.89 SEC
 DISK USED  *        44.97 MB (local),        1.77 GB (total)
 SF USED    *       110.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.445074585126

              CI           MULTI         RHF-SCF
  -3177.42729350  -3177.16294087  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
