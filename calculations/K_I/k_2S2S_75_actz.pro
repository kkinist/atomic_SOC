
 Working directory              : /wrk/irikura/molpro.Y7wyfqmFIt/
 Global scratch directory       : /wrk/irikura/molpro.Y7wyfqmFIt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Y7wyfqmFIt/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,K SO-CI
                                                                                 ! (7/5) active space
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={K};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=18,sym=1,spin=0}
 
 {multi
     closed,3,3
     occ,5,6
     wf,nelec=19,sym=1,spin=1;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=1;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   K SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 13:09:22  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry K      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  K      19.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   19
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

     9.961 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     271872.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     271872      RECORD LENGTH: 524288

 Memory used in sort:       0.83 MW

 SORT1 READ     7196526. AND WROTE       58575. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      690124. AND WROTE     3262620. INTEGRALS IN     48 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      270664.  Node maximum:      273888. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.397E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.533E-02 0.155E-01
         2 0.604E-02 0.604E-02 0.604E-02 0.206E-01 0.206E-01 0.206E-01 0.123E+00 0.123E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.12      0.83
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.30 MB (local),      403.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   3   6

 NELEC=   18   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -601.31016053    -601.31016053     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -601.31042212      -0.00026159     0.69D-03     0.10D-02     1     0       0.00      0.00    diag
   3     -601.31043138      -0.00000926     0.22D-03     0.32D-03     2     0       0.00      0.00    diag
   4     -601.31043189      -0.00000051     0.32D-04     0.10D-03     3     0       0.01      0.01    diag
   5     -601.31043189      -0.00000000     0.18D-05     0.52D-05     4     0       0.00      0.01    diag
   6     -601.31043189      -0.00000000     0.12D-06     0.30D-06     5     0       0.00      0.01    diag
   7     -601.31043189       0.00000000     0.59D-08     0.11D-07     0     0       0.00      0.01    diag

 Final occupancy:   3   6

 !RHF STATE 1.1 Energy               -601.310431894366
  RHF One-electron energy            -822.838185200751
  RHF Two-electron energy             221.527753306386
  RHF Kinetic energy                  615.470603283655
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.976992936277

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.35267     1  1  s    0.99992
    2.1     2.00000   -14.81993     1  2  s    1.00083
    3.1     2.00000    -1.97678     1  3  s    0.99646
    1.2     2.00000   -11.74393     1  1  pz   1.00003
    2.2     2.00000   -11.74393     1  1  px   1.00002
    3.2     2.00000   -11.74393     1  1  py   1.00001
    4.2     2.00000    -1.17005     1  2  pz   1.00588
    5.2     2.00000    -1.17005     1  2  py   1.00588
    6.2     2.00000    -1.17005     1  2  px   1.00589


 HOMO      6.2    -1.170054 =     -31.8388eV
 LUMO      4.1    -0.147480 =      -4.0131eV
 LUMO-HOMO         1.022573 =      27.8256eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.22      0.10      0.83
 REAL TIME  *         2.56 SEC
 DISK USED  *        29.68 MB (local),      408.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   6 (    3    3)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      73 (   34   39)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:              20   (26 determinants, 50 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 4 6 5 3   4 6 3 5 2 1 4 6 5 3   2 1 6 4 5 3 2 1 6 4   5 3 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.568D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.777D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.104D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.558D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.735D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 7 9   4 5 3 2 110 8 4 5 9
                                        7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  419  ( 15 closed/active, 219 closed/virtual, 0 active/active, 185 active/virtual )
 Total number of variables:    471
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6    5    0   -601.41455020    -601.41464635   -0.00009615    0.01530935 0.00000015 0.00000000  0.74E-02      0.18
   2    3    3    0   -601.41464640    -601.41464640   -0.00000000    0.00001704 0.00000000 0.00000000  0.51E-04      0.30

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-09)
                       Final energy:   -601.41464640
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -601.458133657219
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.66621058
 One electron energy                          -826.97466348
 Two electron energy                           225.51652982
 Virial ratio                                    1.97692244
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -601.371159135411
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.49532725
 One electron energy                          -824.70638964
 Two electron energy                           223.33523050
 Virial ratio                                    1.97705236
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 3 5 6 4 2   5 4 3 6 2 1 4 5 3 6   2 1 6 4 5 3 2 1 5 4   6 3 2 4 5 3 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 3 1 2 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 9 7   4 5 3 2 110 8 5 4 9
                                        7 6 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.19036     1  1  s    0.99992
    2.1     2.00000   -14.65848     1  2  s    1.00088
    3.1     2.00000    -1.81740     1  3  s    0.99760
    4.1     0.50001    -0.04219     1  4  s    1.36678    1  6  s    0.56987    1  9  s   -1.03243
    5.1     0.50000    -0.01430     1  4  s   -0.55388    1  5  s    0.40807    1  6  s   -1.19301    1  9  s    2.14608
    1.2     2.00000   -11.58164     1  1  py   0.99999
    2.2     2.00000   -11.58164     1  1  pz   0.99999
    3.2     2.00000   -11.58164     1  1  px   0.99999
    4.2     2.00000    -1.01035     1  2  pz   1.00201
    5.2     2.00000    -1.01035     1  2  py   1.00201
    6.2     2.00000    -1.01035     1  2  px   1.00201
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 a0 222         0.90016515     -0.43554873
 0a 222         0.43554639      0.90016040
 
 Energy:     -601.45813366   -601.37115914
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.68       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.55      0.32      0.10      0.83
 REAL TIME  *         3.00 SEC
 DISK USED  *        32.54 MB (local),      442.69 MB (total)
 SF USED    *         7.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -601.4581337  -0.0
    -601.3711591  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 19
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       14 conf       20 CSFs
 N elec internal:      180 conf      290 CSFs
 N-1 el internal:      420 conf     1270 CSFs
 N-2 el internal:      453 conf     2733 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   5 (   2   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      73 (  34  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -601.45813366
     2      -601.37115914

 Number of blocks in overlap matrix:   104   Smallest eigenvalue:  0.19D-05
 Number of N-2 electron functions:     179
 Number of N-1 electron functions:    1270

 Number of internal configurations:                  144
 Number of singly external configurations:         46340
 Number of doubly external configurations:        239089
 Total number of contracted configurations:       285573
 Total number of uncontracted configurations:    3676932

 Diagonal Coupling coefficients finished.               Storage:    278017 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    292057 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -601.45813366    -0.00000000    -0.24266185  0.65D-03  0.60D-01     0.07
    1     2     2     1.00000000     0.00000000  -601.37115914    -0.00000000    -0.23017520  0.68D-03  0.53D-01     0.07
    2     1     1     1.05482062    -0.23161087  -601.68974452    -0.23161087    -0.00334105  0.13D-03  0.72D-03     0.54
    2     2     2     1.05173263    -0.22532760  -601.59648673    -0.22532760    -0.00319053  0.65D-04  0.66D-03     0.54
    3     1     1     1.05781234    -0.23575979  -601.69389345    -0.00414892    -0.00033485  0.26D-04  0.79D-04     0.93
    3     2     2     1.05468755    -0.22924960  -601.60040873    -0.00392200    -0.00024048  0.13D-04  0.57D-04     0.93
    4     1     1     1.05938853    -0.23621818  -601.69435184    -0.00045839    -0.00004885  0.18D-05  0.11D-04     1.31
    4     2     2     1.05546338    -0.22953170  -601.60069083    -0.00028210    -0.00002248  0.12D-05  0.48D-05     1.31
    5     1     1     1.05956855    -0.23627639  -601.69441005    -0.00005821    -0.00000537  0.18D-06  0.12D-05     1.70
    5     2     2     1.05554771    -0.22955570  -601.60071484    -0.00002401    -0.00000195  0.39D-07  0.44D-06     1.70
    6     1     1     1.05956924    -0.23628265  -601.69441631    -0.00000626    -0.00000092  0.15D-07  0.22D-06     2.13
    6     2     2     1.05556030    -0.22955785  -601.60071699    -0.00000215    -0.00000035  0.30D-08  0.88D-07     2.13
    7     1     1     1.05959229    -0.23628373  -601.69441739    -0.00000108    -0.00000021  0.35D-08  0.47D-07     2.51
    7     2     2     1.05557082    -0.22955825  -601.60071739    -0.00000040    -0.00000008  0.14D-08  0.19D-07     2.51
    8     1     1     1.05960221    -0.23628395  -601.69441761    -0.00000022    -0.00000005  0.31D-09  0.12D-07     2.88
    8     2     2     1.05557352    -0.22955834  -601.60071747    -0.00000008    -0.00000002  0.89D-10  0.42D-08     2.88
    9     1     1     1.05960471    -0.23628400  -601.69441766    -0.00000005    -0.00000001  0.16D-09  0.19D-08     3.09
    9     2     2     1.05557372    -0.22955834  -601.60071748    -0.00000001    -0.00000001  0.21D-09  0.29D-08     3.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   1.3%   3.2%
 P   1.9%  26.2%  26.2%

 Initialization:   1.6%
 Other:           39.5%

 Total CPU:        3.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/222222           0.3878988   0.8931581
 22/0222222           0.8906617  -0.3867893

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970693   -0.038751
 2           0.040842    0.972461

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971465    0.001008
 2           0.001008    0.973317


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97069261 (fixed)   0.97146582 (relaxed)   0.97146528 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000357   -0.00000764   -0.23363124
 Singles      0.00134283   -0.00192155   -0.00211287
 Pairs        0.05826209    0.01319435   -0.00053989
 Total        1.05960850    0.01126516   -0.23628400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.45798798
 Nuclear energy                         0.00000000
 Kinetic energy                       615.47739321
 One electron energy                 -826.68430293
 Two electron energy                  224.98988527
 Virial quotient                       -0.97760604
 Correlation energy                    -0.23642968
 !MRCI STATE 1.1 Energy              -601.694417659946

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.70851088 (Davidson, fixed reference)
 Cluster corrected energies          -601.70851060 (Davidson, relaxed reference)
 Cluster corrected energies          -601.70851088 (Davidson, rotated reference)

 Cluster corrected energies          -601.70732083 (Pople, fixed reference)
 Cluster corrected energies          -601.70732057 (Pople, relaxed reference)
 Cluster corrected energies          -601.70732083 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97246071 (fixed)   0.97331807 (relaxed)   0.97331747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000550   -0.00001452   -0.00018598
 Singles      0.00096312   -0.00250403   -0.00258196
 Pairs        0.05461091   -0.22685926   -0.22679041
 Total        1.05557953   -0.22937781   -0.22955834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.37130482
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36996536
 One electron energy                 -824.39935368
 Two electron energy                  222.79863620
 Virial quotient                       -0.97762444
 Correlation energy                    -0.22941266
 !MRCI STATE 2.1 Energy              -601.600717477747

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61346813 (Davidson, fixed reference)
 Cluster corrected energies          -601.61346783 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61346813 (Davidson, rotated reference)

 Cluster corrected energies          -601.61235531 (Pople, fixed reference)
 Cluster corrected energies          -601.61235503 (Pople, relaxed reference)
 Cluster corrected energies          -601.61235531 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.22       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.75      3.20      0.32      0.10      0.83
 REAL TIME  *         6.79 SEC
 DISK USED  *        37.08 MB (local),      497.20 MB (total)
 SF USED    *        51.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -601.70851088  AU                              
 SETTING HLSDIAG(2)     =      -601.61346813  AU                              


         HLSDIAG
    -601.7085109
    -601.6134681
                                                  


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

 Time for Seward_LS:       4.69 sec

        3938743. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      967 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.69 sec, REAL time:      4.72 sec


 SORTLS1 read     3942450. and wrote     3942450. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec
 SORTLS2 read     3942450. and wrote    19122750. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    96.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    96.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:   -601.694418   -601.600717
 Replaced energies:   -601.708511   -601.613468



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -601.70851088

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00

    2   2.1  0.5  0.5       0.00   20859.47       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00

    3   1.1  0.5 -0.5      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

    4   2.1  0.5 -0.5      -0.00      -0.00       0.00   20859.47
                           -0.00       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -601.70851088     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -601.70851088     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -601.61346813     0.09504275    20859.47      0.09504275    20859.47      2.5862
     4  -601.61346813     0.09504275    20859.47      0.09504275    20859.47      2.5862


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5  -0.000000000   1.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.013105584
                        -0.000000000   0.000000000   0.999826541  -0.013233735

    3    1.1  0.5 -0.5  -0.637317055  -0.000000000   0.000000000  -0.000000000
                         0.770601695   0.000000000   0.000000000   0.000000000

    4    2.1  0.5 -0.5  -0.000000000   0.000000000   0.013103284  -0.000173755
                        -0.000000000   0.000000000   0.013236012   0.999826526


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  99.965%   0.035%
    3    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%   0.035%  99.965%


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
              1      24       92.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.22       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.79      7.02      3.20      0.32      0.10      0.83
 REAL TIME  *        14.21 SEC
 DISK USED  *        37.12 MB (local),      739.68 MB (total)
 SF USED    *        83.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -601.613468125462

              CI           MULTI         RHF-SCF
   -601.60071748   -601.37115914   -601.31043189
 **********************************************************************************************************************************
 Molpro calculation terminated
