
 Working directory              : /wrk/irikura/molpro.FOkAEKxbO2/
 Global scratch directory       : /wrk/irikura/molpro.FOkAEKxbO2/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FOkAEKxbO2/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/5)
 {multi
     closed,9,9
     occ,11,12
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
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 13:44:00  
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

     16.515 MB (compressed) written to integral file ( 18.3%)

     Node minimum: 0.262 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.15 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN     90 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         4.08      3.75
 REAL TIME  *         4.80 SEC
 DISK USED  *        29.46 MB (local),     1011.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27784108   -3177.27784108     0.00D+00     0.19D+00     0     0       0.01      0.01    start
   2    -3177.27784113      -0.00000005     0.20D-04     0.52D-04     1     0       0.00      0.01    diag
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.00      0.01    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.00      0.01    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.01      0.02    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.02    diag
   7    -3177.27784113       0.00000000     0.77D-08     0.14D-06     0     0       0.00      0.02    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133262
  RHF One-electron energy           -4396.585097306505
  RHF Two-electron energy            1219.307256173244
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
    5.1     2.00000    -5.58737     1  1  d2-  0.99518
    6.1     2.00000    -5.58737     1  1  d1+  0.97406
    7.1     2.00000    -5.58737     1  1  d1-  0.97711
    8.1     2.00000    -5.58737     1  1  d2+  0.99806
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99994
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
 CPU TIMES  *         4.11      0.03      3.75
 REAL TIME  *         4.83 SEC
 DISK USED  *        29.90 MB (local),        1.00 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      70 (   34   36)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.134D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.215D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 5 3 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.100D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.152D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.135D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.291D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.818D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.970D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.111D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.563D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.757D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.728D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.728D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  851  ( 45 closed/active, 630 closed/virtual, 0 active/active, 176 active/virtual )
 Total number of variables:    877
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9    8    0  -3177.21775234   -3177.23280225   -0.01504991    0.02631408 0.00002204 0.00000000  0.14E+01      0.48
   2    8    7    0  -3177.23237727   -3177.23291723   -0.00053995    0.00356619 0.00000226 0.00000000  0.27E+00      1.01
   3    5    5    0  -3177.23291980   -3177.23291985   -0.00000006    0.00002438 0.00000001 0.00000000  0.29E-02      1.37
   4    2    2    0  -3177.23291985   -3177.23291985   -0.00000000    0.00000000 0.00000000 0.00000000  0.82E-07      1.64

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.22E-10)
                       Final energy:  -3177.23291985
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -3177.300579929251
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.76901814
 One electron energy                         -4397.30401265
 Two electron energy                          1220.00343272
 Virial ratio                                    1.91968539
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -3177.165259780151
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.27514010
 One electron energy                         -4391.45122530
 Two electron energy                          1214.28596552
 Virial ratio                                    1.91977770
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   1 2 5 3 6 4 6 4 5 3   2 1 2 4 6 5 3 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4   810 6 9 7 3 1 210 8   6 9 7 5 4 3 1 2 4 5
                                        6 9 710 8 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.26775     1  1  s    0.99995
    2.1     2.00000   -83.16418     1  2  s    1.00055
    3.1     2.00000   -14.01214     1  3  s    0.99693
    4.1     2.00000    -5.64579     1  1  d0   1.00002
    5.1     2.00000    -5.64579     1  1  d1+  1.00002
    6.1     2.00000    -5.64579     1  1  d2-  1.00002
    7.1     2.00000    -5.64579     1  1  d1-  1.00002
    8.1     2.00000    -5.64579     1  1  d2+  1.00002
    9.1     2.00000    -2.00541     1  4  s    1.00266
   10.1     1.41221    -0.17283     1  5  s    1.11396
   11.1     0.49710    -0.00276     1  5  s   -0.54860    1  7  s   -0.83613    1 10  s    1.87567
    1.2     2.00000   -73.70971     1  1  px   1.00000
    2.2     2.00000   -73.70971     1  1  py   1.00000
    3.2     2.00000   -73.70971     1  1  pz   1.00000
    4.2     2.00000   -10.86215     1  2  pz   1.00009
    5.2     2.00000   -10.86215     1  2  px   1.00009
    6.2     2.00000   -10.86215     1  2  py   1.00009
    7.2     2.00000    -1.15276     1  3  px   1.00221
    8.2     2.00000    -1.15276     1  3  pz   1.00221
    9.2     2.00000    -1.15276     1  3  py   1.00221
   10.2     0.03023     0.03976     1  4  pz   0.95840    1  5  pz   0.42538    1  6  pz  -0.34170
   11.2     0.03023     0.03976     1  4  px   0.95840    1  5  px   0.42538    1  6  px  -0.34170
   12.2     0.03023     0.03976     1  4  py   0.95840    1  5  py   0.42538    1  6  py  -0.34170
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20 000         0.95458163     -0.06673286
 ab 000         0.06614889      0.70153971
 ba 000        -0.06614889     -0.70153971
 00 200        -0.16326395      0.05978219
 00 020        -0.16326395      0.05978219
 00 002        -0.16326395      0.05978219
 
 Energy:    -3177.30057993  -3177.16525978
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.37      1.26      0.03      3.75
 REAL TIME  *         6.79 SEC
 DISK USED  *        43.81 MB (local),        1.41 GB (total)
 SF USED    *        33.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.300580  -0.0
    -3177.165260  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 38
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:        9 conf        9 CSFs
 N elec internal:     2310 conf     4245 CSFs
 N-1 el internal:     1490 conf     3830 CSFs
 N-2 el internal:      451 conf     1288 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      70 (  34  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.06 sec, npass=  1  Memory used:   0.62 MW


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.30057993
     2     -3177.16525978

 Number of blocks in overlap matrix:   235   Smallest eigenvalue:  0.97D+00
 Number of N-2 electron functions:     253
 Number of N-1 electron functions:    3830

 Number of internal configurations:                 2151
 Number of singly external configurations:        134048
 Number of doubly external configurations:        310603
 Total number of contracted configurations:       446802
 Total number of uncontracted configurations:    1713201

 Diagonal Coupling coefficients finished.               Storage:  976350 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  398452 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.30057993     0.00000000    -0.28423457  0.15D-01  0.58D-01     0.18
    1     2     2     1.00000000     0.00000000 -3177.16525978    -0.00000000    -0.27104416  0.18D-01  0.53D-01     0.18
    2     1     1     1.06227729    -0.26314292 -3177.56372285    -0.26314292    -0.00435661  0.11D-02  0.58D-03     1.03
    2     2     2     1.06317858    -0.25818310 -3177.42344288    -0.25818310    -0.00406231  0.11D-02  0.59D-03     1.03
    3     1     1     1.06287650    -0.26762010 -3177.56820003    -0.00447718    -0.00012276  0.14D-04  0.33D-04     1.85
    3     2     2     1.06446495    -0.26249034 -3177.42775013    -0.00430725    -0.00011729  0.20D-04  0.27D-04     1.85
    4     1     1     1.06332225    -0.26775450 -3177.56833443    -0.00013441    -0.00000665  0.20D-05  0.13D-05     2.71
    4     2     2     1.06470452    -0.26262426 -3177.42788404    -0.00013392    -0.00000617  0.18D-05  0.13D-05     2.71
    5     1     1     1.06345635    -0.26776213 -3177.56834206    -0.00000762    -0.00000026  0.49D-07  0.73D-07     3.52
    5     2     2     1.06484414    -0.26263141 -3177.42789119    -0.00000715    -0.00000025  0.57D-07  0.80D-07     3.52
    6     1     1     1.06347783    -0.26776242 -3177.56834235    -0.00000029    -0.00000001  0.15D-08  0.49D-08     4.32
    6     2     2     1.06486602    -0.26263170 -3177.42789148    -0.00000029    -0.00000001  0.24D-08  0.65D-08     4.32


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.3%
 S   4.4%  12.3%
 P   0.5%  35.2%   7.4%

 Initialization:   3.0%
 Other:           31.9%

 Total CPU:        4.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\222000           0.0664421   0.9638119
 22222220222000           0.9337709  -0.0474548
 22222200222002          -0.1454481   0.0448460
 22222200222020          -0.1454479   0.0448458
 22222200222200          -0.1454478   0.0448456

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968875   -0.022300
 2           0.023168    0.968238

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969132    0.000441
 2           0.000441    0.968515

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    92       0.00005465    -1.70190228       22222220222000                  


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96887542 (fixed)   0.96946948 (relaxed)   0.96913193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116522   -0.00094835   -0.23901259
 Singles      0.00988026   -0.02262167   -0.02373268
 Pairs        0.05367153    0.00902803   -0.00501715
 Total        1.06471702   -0.01454200   -0.26776242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.30050542
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.16175622
 One electron energy                -4396.35257149
 Two electron energy                 1218.78422914
 Virial quotient                       -0.91992459
 Correlation energy                    -0.26783693
 !MRCI STATE 1.1 Energy             -3177.568342347041

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58567595 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58547741 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58567595 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58478748 (Pople, fixed reference)
 Cluster corrected energies         -3177.58458911 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58478748 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96823753 (fixed)   0.96875625 (relaxed)   0.96851457 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00113515   -0.00130706   -0.00155548
 Singles      0.01347180   -0.02221545   -0.02415830
 Pairs        0.05146786   -0.23905611   -0.23691792
 Total        1.06607480   -0.26257863   -0.26263170
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16533429
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.90973550
 One electron energy                -4391.09214897
 Two electron energy                 1213.66425749
 Virial quotient                       -0.91995105
 Correlation energy                    -0.26255719
 !MRCI STATE 2.1 Energy             -3177.427891481690

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44523990 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44510026 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44523990 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44436923 (Pople, fixed reference)
 Cluster corrected energies         -3177.44422939 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44436923 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.87       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.90      4.51      1.26      0.03      3.75
 REAL TIME  *        12.19 SEC
 DISK USED  *        50.98 MB (local),        1.62 GB (total)
 SF USED    *        86.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58567595  AU                              
 SETTING HLSDIAG(2)     =     -3177.44523990  AU                              


         HLSDIAG
    -3177.585676
    -3177.445240
                                                  


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

 Time for Seward_LS:      29.09 sec

 CPU time:     29.10 sec, REAL time:     30.38 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.04 sec, REAL time:      0.13 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    45.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    45.2 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:  -3177.568342  -3177.427891
 Replaced energies:  -3177.585676  -3177.445240



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58567595

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   30822.15
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by  -3177.58567595 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   30822.152
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58567595     0.00000000        0.00      0.00000000        0.00      0.0000
    2 -3177.44523990     0.14043606    30822.15      0.14043606    30822.15      3.8215

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
     1   1  -3177.58567595      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1  -3177.44523990      0.14043606    30822.15      0.14043606    30822.15      3.8215

 E0 =  -3177.58567595 is the energy of the lowest zeroth-order state
 E1 =  -3177.58567595 is the energy of the lowest SO-state


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
              1      24       43.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.87       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        41.29     31.37      4.51      1.26      0.03      3.75
 REAL TIME  *        45.36 SEC
 DISK USED  *        51.03 MB (local),        1.94 GB (total)
 SF USED    *        86.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.445239896078

              CI           MULTI         RHF-SCF
  -3177.42789148  -3177.16525978  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
