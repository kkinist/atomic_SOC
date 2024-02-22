
 Working directory              : /wrk/irikura/molpro.CrhfKdNVvq/
 Global scratch directory       : /wrk/irikura/molpro.CrhfKdNVvq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CrhfKdNVvq/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,C SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={C};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=6,sym=1,spin=2}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=1,spin=2;state,3;
     wf,sym=1,spin=0;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=2;state,3; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5200.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2,5200.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   C SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:19:59  
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

 Library entry C      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  C       6.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    6
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

     2.884 MB (compressed) written to integral file ( 19.0%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     15 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.492E-02 0.191E-01 0.662E-01 0.181E+00 0.248E+00 0.248E+00 0.248E+00 0.248E+00
         2 0.161E-01 0.161E-01 0.161E-01 0.176E+00 0.176E+00 0.176E+00 0.415E+00 0.415E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.67      0.47
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.03 MB (local),      166.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   2
 Initial beta  occupancy:   2   0

 NELEC=    6   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -37.66479587     -37.66479587     0.00D+00     0.94D-01     0     0       0.01      0.01    start
   2      -37.70053776      -0.03574189     0.11D-01     0.18D-01     1     0       0.00      0.01    diag2
   3      -37.70157540      -0.00103765     0.24D-02     0.15D-02     2     0       0.00      0.01    diag2
   4      -37.70179414      -0.00021874     0.74D-03     0.11D-02     3     0       0.00      0.01    diag2
   5      -37.70180788      -0.00001374     0.17D-03     0.59D-03     4     0       0.00      0.01    diag2
   6      -37.70180810      -0.00000022     0.25D-04     0.10D-03     5     0       0.01      0.02    diag2
   7      -37.70180810      -0.00000000     0.24D-05     0.62D-05     6     0       0.00      0.02    diag2
   8      -37.70180810      -0.00000000     0.24D-06     0.11D-05     7     0       0.00      0.02    fixocc
   9      -37.70180810      -0.00000000     0.11D-07     0.19D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   2
 Final beta  occupancy:   2   0

 !RHF STATE 1.1 Energy                -37.701808101458
  RHF One-electron energy             -50.462984368559
  RHF Two-electron energy              12.761176267102
  RHF Kinetic energy                   37.802980609707
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.997323689650

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.33053     1  1  s    0.99939
    2.1     2.00000    -0.70671     1  2  s    1.00864
    1.2     1.00000    -0.43308     1  1  px   0.99656
    2.2     1.00000    -0.43308     1  1  py   0.94616    1  1  pz   0.31290


 HOMO      2.2    -0.433078 =     -11.7847eV
 LUMO      3.2     0.012156 =       0.3308eV
 LUMO-HOMO         0.445234 =      12.1154eV

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
 CPU TIMES  *         0.69      0.02      0.47
 REAL TIME  *         1.73 SEC
 DISK USED  *        29.44 MB (local),      168.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.971D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 3   5 4 6 2 1 5 3 6 4 2   1 2 6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.966D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.251D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 1 3 6   4 510 8 9 7 1 2 3 6   4 5 810 7 9 3 1 2 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    264
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0    -37.61789969     -37.67800415   -0.06010446    0.13795802 0.00002889 0.00000000  0.47E+00      0.14
   2    7   12    0    -37.67574314     -37.67597981   -0.00023667    0.01954765 0.00000024 0.00000000  0.18E-01      0.33
   3    8   16    0    -37.67598045     -37.67598046   -0.00000000    0.00009131 0.00000001 0.00000000  0.80E-04      0.48
   4    4    8    0    -37.67598046     -37.67598046   -0.00000000    0.00000000 0.00000001 0.00000000  0.26E-07      0.54

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.88E-08)
                       Final energy:    -37.67598046
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -37.718457573221
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970030
 One electron energy                           -50.41365963
 Two electron energy                            12.69520205
 Virial ratio                                    1.99837895
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -37.718457573213
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970030
 One electron energy                           -50.41365963
 Two electron energy                            12.69520205
 Virial ratio                                    1.99837895
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -37.718457573081
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970034
 One electron energy                           -50.41365967
 Two electron energy                            12.69520210
 Virial ratio                                    1.99837895
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -37.661206202857
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970029
 One electron energy                           -50.41365961
 Two electron energy                            12.75245341
 Virial ratio                                    1.99686355
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -37.661206202547
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970030
 One electron energy                           -50.41365963
 Two electron energy                            12.75245342
 Virial ratio                                    1.99686355
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -37.661206202484
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970030
 One electron energy                           -50.41365963
 Two electron energy                            12.75245343
 Virial ratio                                    1.99686355
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -37.661206201469
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970034
 One electron energy                           -50.41365967
 Two electron energy                            12.75245347
 Virial ratio                                    1.99686355
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -37.661206201460
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.77970034
 One electron energy                           -50.41365967
 Two electron energy                            12.75245347
 Virial ratio                                    1.99686355
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -37.622420376405
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.75579395
 One electron energy                           -50.36953204
 Two electron energy                            12.74711166
 Virial ratio                                    1.99646747
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000001408
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999998596
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.088944000635
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999920
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999687
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.911056603538
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999996
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.002720124363
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999999983
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999994
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.997279913194
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999998596
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000001404
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.908335875002
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000097
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000319
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.091663483268
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 5   3 4 2 6 1 3 5 4 6 2   1 5 3 4 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 7   910 8 4 6 5 1 2 3 7   910 8 4 5 6 1 2 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.33960     1  1  s    0.99929
    2.1     1.94523    -0.70236     1  2  s    1.02163
    1.2     0.68492    -0.06788     1  1  pz   0.98500
    2.2     0.68492    -0.06788     1  1  py   0.98500
    3.2     0.68492    -0.06788     1  1  px   0.98500
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.00000202     -0.00000020      0.98909786
 2 0aa         -0.00003706      0.98909786      0.00000020
 2 aa0          0.98909786      0.00003706     -0.00000202
 0 aa2         -0.14725970     -0.00000552      0.00000030
 0 2aa          0.00000552     -0.14725970     -0.00000003
 0 a2a         -0.00000030      0.00000003     -0.14725969
 
 Energy:      -37.71845757    -37.71845757    -37.71845757
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.80732040     -0.00000194     -0.00000037      0.00000120     -0.02105998      0.55588834
 2 002         -0.38542169      0.00000079      0.00000018     -0.00005778      0.70968995      0.55588838
 2 0ab          0.00000032     -0.00000329      0.69939781      0.00000000      0.00000000      0.00000000
 2 0ba         -0.00000032      0.00000329     -0.69939781     -0.00000000     -0.00000000     -0.00000000
 2 ab0          0.00000168      0.69939781      0.00000329     -0.00000015      0.00000013      0.00000000
 2 ba0         -0.00000168     -0.69939781     -0.00000329      0.00000015     -0.00000013     -0.00000000
 2 a0b          0.00000045      0.00000015      0.00000000      0.69939780      0.00005718     -0.00000000
 2 b0a         -0.00000045     -0.00000015     -0.00000000     -0.69939780     -0.00005718      0.00000000
 2 200         -0.42189865      0.00000114      0.00000020      0.00005658     -0.68862997      0.55588838
 0 202          0.12019614     -0.00000029     -0.00000006      0.00000018     -0.00313547     -0.15595339
 0 022         -0.06281348      0.00000017      0.00000003      0.00000842     -0.10252518     -0.15595338
 0 220         -0.05738268      0.00000012      0.00000003     -0.00000860      0.10566065     -0.15595338
 0 ba2          0.00000025      0.10412833      0.00000049     -0.00000002      0.00000002      0.00000000
 0 ab2         -0.00000025     -0.10412833     -0.00000049      0.00000002     -0.00000002     -0.00000000
 0 2ab         -0.00000005      0.00000049     -0.10412833      0.00000000      0.00000000     -0.00000000
 0 2ba          0.00000005     -0.00000049      0.10412833     -0.00000000     -0.00000000      0.00000000
 0 a2b         -0.00000007     -0.00000002     -0.00000000     -0.10412833     -0.00000851      0.00000000
 0 b2a          0.00000007      0.00000002      0.00000000      0.10412833      0.00000851     -0.00000000
 
 Energy:      -37.66120620    -37.66120620    -37.66120620    -37.66120620    -37.66120620    -37.62242038
 


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
 CPU TIMES  *         1.21      0.51      0.02      0.47
 REAL TIME  *         2.37 SEC
 DISK USED  *        29.75 MB (local),      169.84 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -37.71845757   2.0
    -37.71845757   2.0
    -37.71845757   2.0
    -37.66120620   6.0
    -37.66120620   6.0
    -37.66120620   6.0
    -37.66120620   6.0
    -37.66120620   6.0
    -37.62242038   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  6
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        6 conf        6 CSFs
 N elec internal:       13 conf       15 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       10 conf       22 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.71845757
     2       -37.71845757
     3       -37.71845757

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      18
 Number of N-1 electron functions:      24

 Number of internal configurations:                    6
 Number of singly external configurations:           648
 Number of doubly external configurations:         12984
 Total number of contracted configurations:        13638
 Total number of uncontracted configurations:      16519

 Diagonal Coupling coefficients finished.               Storage:    174137 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186694 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.71845757    -0.00000000    -0.07714374  0.24D-01  0.11D-01     0.00
    1     2     2     1.00000000     0.00000000   -37.71845757     0.00000000    -0.07678512  0.23D-01  0.11D-01     0.00
    1     3     3     1.00000000     0.00000000   -37.71845757    -0.00000000    -0.07695105  0.24D-01  0.11D-01     0.00
    2     1     1     1.03515614    -0.07702523   -37.79548280    -0.07702523    -0.00142635  0.14D-03  0.37D-03     0.03
    2     2     2     1.03509419    -0.07701960   -37.79547717    -0.07701960    -0.00142955  0.14D-03  0.36D-03     0.03
    2     3     3     1.03505167    -0.07701720   -37.79547477    -0.07701720    -0.00142948  0.14D-03  0.36D-03     0.03
    3     1     1     1.03862568    -0.07862236   -37.79707993    -0.00159712    -0.00005224  0.20D-04  0.11D-04     0.05
    3     2     2     1.03862100    -0.07862181   -37.79707938    -0.00160221    -0.00005256  0.20D-04  0.11D-04     0.05
    3     3     3     1.03861913    -0.07862150   -37.79707907    -0.00160430    -0.00005266  0.20D-04  0.11D-04     0.05
    4     1     1     1.03910874    -0.07868620   -37.79714377    -0.00006384    -0.00000410  0.10D-05  0.10D-05     0.07
    4     2     2     1.03911371    -0.07868618   -37.79714375    -0.00006437    -0.00000410  0.10D-05  0.10D-05     0.07
    4     3     3     1.03911123    -0.07868618   -37.79714375    -0.00006468    -0.00000411  0.10D-05  0.10D-05     0.07
    5     1     1     1.03917188    -0.07869154   -37.79714912    -0.00000535    -0.00000032  0.97D-07  0.78D-07     0.09
    5     2     2     1.03917175    -0.07869154   -37.79714911    -0.00000536    -0.00000032  0.97D-07  0.78D-07     0.09
    5     3     3     1.03917184    -0.07869154   -37.79714911    -0.00000536    -0.00000032  0.96D-07  0.79D-07     0.09
    6     1     1     1.03915225    -0.07869198   -37.79714955    -0.00000044    -0.00000003  0.95D-08  0.79D-08     0.11
    6     2     2     1.03915287    -0.07869198   -37.79714955    -0.00000044    -0.00000003  0.94D-08  0.80D-08     0.11
    6     3     3     1.03915258    -0.07869198   -37.79714955    -0.00000044    -0.00000003  0.95D-08  0.80D-08     0.11
    7     1     1     1.03914923    -0.07869202   -37.79714960    -0.00000004    -0.00000000  0.12D-08  0.61D-09     0.13
    7     2     2     1.03914931    -0.07869202   -37.79714960    -0.00000004    -0.00000000  0.12D-08  0.61D-09     0.13
    7     3     3     1.03914914    -0.07869202   -37.79714960    -0.00000004    -0.00000000  0.12D-08  0.61D-09     0.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   7.7%   0.0%
 P   0.0%  23.1%  15.4%

 Initialization:   0.0%
 Other:           53.8%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//           0.0000000   0.0000000   0.9718785
 2/0/           0.9718785   0.0000000   0.0000000
 2//0           0.0000000   0.9718785   0.0000000
 02//           0.0000000   0.0000000  -0.1333339
 0/2/          -0.1333338   0.0000000   0.0000000
 0//2           0.0000000  -0.1333337   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.980918
 2           0.980918    0.000000    0.000000
 3           0.000000    0.980918    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.980918    0.000000    0.000000
 2           0.000000    0.980918    0.000000
 3           0.000000    0.000000    0.980918


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98091763 (fixed)   0.98098200 (relaxed)   0.98091763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013126   -0.00000000   -0.00000994
 Singles      0.02527824   -0.03947630   -0.03989753
 Pairs        0.01387612   -0.03921572   -0.03878455
 Total        1.03928563   -0.07869202   -0.07869202
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71845757
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89130384
 One electron energy                  -50.40603427
 Two electron energy                   12.60888467
 Virial quotient                       -0.99751515
 Correlation energy                    -0.07869202
 !MRCI STATE 1.1 Energy               -37.797149597298

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80024106 (Davidson, fixed reference)
 Cluster corrected energies           -37.80023033 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80024106 (Davidson, rotated reference)

 Cluster corrected energies           -37.79714960 (Pople, fixed reference)
 Cluster corrected energies           -37.79714960 (Pople, relaxed reference)
 Cluster corrected energies           -37.79714960 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98091759 (fixed)   0.98098197 (relaxed)   0.98091759 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013127   -0.00000000   -0.03774324
 Singles      0.02527832   -0.03947634   -0.03989753
 Pairs        0.01387612    0.00000000   -0.00105125
 Total        1.03928571   -0.03947634   -0.07869202
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71845757
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89130637
 One electron energy                  -50.40603620
 Two electron energy                   12.60888660
 Virial quotient                       -0.99751508
 Correlation energy                    -0.07869202
 !MRCI STATE 2.1 Energy               -37.797149597267

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80024107 (Davidson, fixed reference)
 Cluster corrected energies           -37.80023034 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80024107 (Davidson, rotated reference)

 Cluster corrected energies           -37.79714960 (Pople, fixed reference)
 Cluster corrected energies           -37.79714960 (Pople, relaxed reference)
 Cluster corrected energies           -37.79714960 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98091767 (fixed)   0.98098204 (relaxed)   0.98091767 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013126    0.00000000   -0.03774333
 Singles      0.02527816   -0.03947626   -0.03989753
 Pairs        0.01387613    0.00000000   -0.00105117
 Total        1.03928554   -0.03947626   -0.07869202
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71845757
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89130071
 One electron energy                  -50.40603176
 Two electron energy                   12.60888217
 Virial quotient                       -0.99751523
 Correlation energy                    -0.07869202
 !MRCI STATE 3.1 Energy               -37.797149597261

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80024106 (Davidson, fixed reference)
 Cluster corrected energies           -37.80023032 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80024106 (Davidson, rotated reference)

 Cluster corrected energies           -37.79714960 (Pople, fixed reference)
 Cluster corrected energies           -37.79714960 (Pople, relaxed reference)
 Cluster corrected energies           -37.79714960 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.04       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.41      0.19      0.51      0.02      0.47
 REAL TIME  *         2.59 SEC
 DISK USED  *        30.19 MB (local),      172.07 MB (total)
 SF USED    *         4.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -37.80024106  AU                              
 SETTING HLSDIAG(2)     =       -37.80024107  AU                              
 SETTING HLSDIAG(3)     =       -37.80024106  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  6
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:       12 conf       12 CSFs
 N elec internal:       19 conf       20 CSFs
 N-1 el internal:       16 conf       20 CSFs
 N-2 el internal:       10 conf       16 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.66120620
     2       -37.66120620
     3       -37.66120620
     4       -37.66120620
     5       -37.66120620
     6       -37.62242038

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.85D+00
 Number of N-2 electron functions:      16
 Number of N-1 electron functions:      20

 Number of internal configurations:                   12
 Number of singly external configurations:           544
 Number of doubly external configurations:         11788
 Total number of contracted configurations:        12344
 Total number of uncontracted configurations:      12344

 Diagonal Coupling coefficients finished.               Storage:    175939 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186550 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.66120620    -0.00000000    -0.08547545  0.24D-01  0.14D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.66120620    -0.00000000    -0.08614011  0.24D-01  0.14D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.66120620     0.00000000    -0.08615630  0.24D-01  0.14D-01     0.01
    1     4     4     1.00000000     0.00000000   -37.66120620    -0.00000000    -0.08634473  0.24D-01  0.14D-01     0.01
    1     5     5     1.00000000     0.00000000   -37.66120620    -0.00000000    -0.08550438  0.24D-01  0.14D-01     0.01
    1     6     6     1.00000000     0.00000000   -37.62242038     0.00000000    -0.06989669  0.73D-02  0.22D-01     0.01
    2     1     1     1.03736345    -0.08562358   -37.74682978    -0.08562358    -0.00258757  0.27D-03  0.61D-03     0.04
    2     2     2     1.03753861    -0.08561398   -37.74682018    -0.08561398    -0.00262390  0.27D-03  0.63D-03     0.04
    2     3     3     1.03748731    -0.08560599   -37.74681219    -0.08560599    -0.00262509  0.27D-03  0.63D-03     0.04
    2     4     4     1.03735654    -0.08560377   -37.74680997    -0.08560377    -0.00260477  0.27D-03  0.62D-03     0.04
    2     5     5     1.03751015    -0.08560095   -37.74680716    -0.08560095    -0.00262926  0.27D-03  0.63D-03     0.04
    2     6     6     1.03090356    -0.07234775   -37.69476813    -0.07234775    -0.00225713  0.26D-03  0.60D-03     0.04
    3     1     1     1.04221950    -0.08842398   -37.74963018    -0.00280040    -0.00012386  0.52D-04  0.22D-04     0.07
    3     2     2     1.04219709    -0.08842250   -37.74962870    -0.00280852    -0.00012277  0.51D-04  0.21D-04     0.07
    3     3     3     1.04220742    -0.08842223   -37.74962843    -0.00281625    -0.00012494  0.52D-04  0.23D-04     0.07
    3     4     4     1.04220957    -0.08842168   -37.74962788    -0.00281791    -0.00012536  0.52D-04  0.23D-04     0.07
    3     5     5     1.04218846    -0.08842077   -37.74962697    -0.00281982    -0.00012392  0.51D-04  0.21D-04     0.07
    3     6     6     1.03626582    -0.07486448   -37.69728485    -0.00251672    -0.00021146  0.18D-03  0.30D-04     0.07
    4     1     1     1.04380196    -0.08858142   -37.74978762    -0.00015744    -0.00001209  0.63D-05  0.22D-05     0.11
    4     2     2     1.04380562    -0.08858129   -37.74978749    -0.00015879    -0.00001218  0.63D-05  0.22D-05     0.11
    4     3     3     1.04380386    -0.08858125   -37.74978745    -0.00015902    -0.00001223  0.64D-05  0.23D-05     0.11
    4     4     4     1.04379688    -0.08858025   -37.74978645    -0.00015858    -0.00001269  0.68D-05  0.22D-05     0.11
    4     5     5     1.04379339    -0.08858009   -37.74978629    -0.00015932    -0.00001275  0.69D-05  0.22D-05     0.11
    4     6     6     1.04025757    -0.07516985   -37.69759023    -0.00030538    -0.00003223  0.15D-04  0.57D-05     0.11
    5     1     1     1.04415367    -0.08859987   -37.74980608    -0.00001846    -0.00000132  0.53D-06  0.24D-06     0.14
    5     2     2     1.04415152    -0.08859986   -37.74980606    -0.00001857    -0.00000132  0.54D-06  0.24D-06     0.14
    5     3     3     1.04415239    -0.08859986   -37.74980606    -0.00001861    -0.00000133  0.54D-06  0.24D-06     0.14
    5     4     4     1.04414663    -0.08859981   -37.74980601    -0.00001956    -0.00000135  0.52D-06  0.24D-06     0.14
    5     5     5     1.04414674    -0.08859980   -37.74980600    -0.00001971    -0.00000136  0.53D-06  0.25D-06     0.14
    5     6     6     1.04115402    -0.07521354   -37.69763392    -0.00004369    -0.00000371  0.92D-06  0.94D-06     0.14
    6     1     1     1.04417861    -0.08860157   -37.74980777    -0.00000169    -0.00000012  0.37D-07  0.23D-07     0.18
    6     2     2     1.04417821    -0.08860157   -37.74980777    -0.00000170    -0.00000012  0.38D-07  0.23D-07     0.18
    6     3     3     1.04417822    -0.08860157   -37.74980777    -0.00000171    -0.00000012  0.37D-07  0.23D-07     0.18
    6     4     4     1.04417835    -0.08860156   -37.74980776    -0.00000175    -0.00000013  0.40D-07  0.23D-07     0.18
    6     5     5     1.04417830    -0.08860156   -37.74980776    -0.00000176    -0.00000013  0.41D-07  0.23D-07     0.18
    6     6     6     1.04127747    -0.07521808   -37.69763845    -0.00000453    -0.00000040  0.22D-06  0.74D-07     0.18
    7     1     1     1.04419029    -0.08860171   -37.74980791    -0.00000014    -0.00000001  0.48D-08  0.15D-08     0.21
    7     2     2     1.04419018    -0.08860171   -37.74980791    -0.00000014    -0.00000001  0.49D-08  0.15D-08     0.21
    7     3     3     1.04419016    -0.08860171   -37.74980791    -0.00000014    -0.00000001  0.50D-08  0.15D-08     0.21
    7     4     4     1.04418968    -0.08860171   -37.74980791    -0.00000015    -0.00000001  0.52D-08  0.16D-08     0.21
    7     5     5     1.04418964    -0.08860171   -37.74980791    -0.00000015    -0.00000001  0.53D-08  0.16D-08     0.21
    7     6     6     1.04136281    -0.07521854   -37.69763892    -0.00000047    -0.00000005  0.21D-07  0.96D-08     0.21
    8     1     1     1.04419029    -0.08860171   -37.74980791     0.00000000    -0.00000001  0.48D-08  0.15D-08     0.23
    8     2     2     1.04419018    -0.08860171   -37.74980791     0.00000000    -0.00000001  0.49D-08  0.15D-08     0.23
    8     3     3     1.04419016    -0.08860171   -37.74980791     0.00000000    -0.00000001  0.50D-08  0.15D-08     0.23
    8     4     4     1.04418969    -0.08860171   -37.74980791    -0.00000000    -0.00000001  0.52D-08  0.16D-08     0.23
    8     5     5     1.04418964    -0.08860171   -37.74980791    -0.00000000    -0.00000001  0.53D-08  0.16D-08     0.23
    8     6     6     1.04140851    -0.07521861   -37.69763899    -0.00000007    -0.00000000  0.22D-08  0.92D-09     0.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   4.3%   4.3%
 P   0.0%   0.0%  21.7%

 Initialization:   0.0%
 Other:           69.6%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/0\           0.0000000   0.0000000   0.9694163   0.0000000   0.0000000   0.0000000
 2/\0           0.0000000   0.9694163   0.0000000   0.0000000   0.0000000   0.0000000
 20/\           0.9694161   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2020           0.0000000   0.0000000   0.0000000  -0.0343541   0.7907793   0.5464409
 2002           0.0000000   0.0000000   0.0000000   0.7020119  -0.3656383   0.5464410
 2200           0.0000000   0.0000000   0.0000000  -0.6676581  -0.4251412   0.5464409
 0022           0.0000000   0.0000000   0.0000000  -0.0921759  -0.0586943  -0.1465662
 0220           0.0000000   0.0000000   0.0000000   0.0969185  -0.0504798  -0.1465661
 0202           0.0000000   0.0000000   0.0000000  -0.0047431   0.1091738  -0.1465660
 02/\          -0.1338365  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 0/\2          -0.0000000  -0.1338360  -0.0000000   0.0000000   0.0000000   0.0000000
 0/2\           0.0000000  -0.0000000  -0.1338359  -0.0000000   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \0/\  10.1     0.0780829   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 \/0\  12.1    -0.0000000  -0.0000000  -0.0000000  -0.0778883  -0.0062029   0.0041515
 \/\0  14.1    -0.0000000   0.0000000  -0.0000000  -0.0385682  -0.0679526   0.0041516
 \0/\  11.1    -0.0000000  -0.0000000  -0.0000000  -0.0395647   0.0673780   0.0041516
 \/\0  13.1     0.0000000  -0.0662146  -0.0000000  -0.0000000  -0.0000000   0.0000000
 \/0\  13.1     0.0000000  -0.0000000  -0.0662146  -0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.978556    0.000000    0.000000   -0.000000
 2          -0.000000    0.978556    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.000000    0.978556    0.000000   -0.000000
 4          -0.016963   -0.000000    0.000000    0.000000    0.978409   -0.000000
 5           0.978409   -0.000000    0.000000   -0.000000    0.016963   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.979853

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978556    0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.978556    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.978556    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.978556   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.978556   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.979853


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97855615 (fixed)   0.97861118 (relaxed)   0.97855615 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011249    0.00000000   -0.04317314
 Singles      0.02652613   -0.04352563   -0.04392887
 Pairs        0.01766913   -0.00000000   -0.00149970
 Total        1.04430775   -0.04352563   -0.08860171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66120620
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84274640
 One electron energy                  -50.30822661
 Two electron energy                   12.55841870
 Virial quotient                       -0.99754409
 Correlation energy                    -0.08860171
 !MRCI STATE 1.1 Energy               -37.749807909020

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75373365 (Davidson, fixed reference)
 Cluster corrected energies           -37.75372324 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75373365 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176982 (Pople, fixed reference)
 Cluster corrected energies           -37.75176462 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176982 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97855620 (fixed)   0.97861124 (relaxed)   0.97855620 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011250   -0.00000000   -0.04317315
 Singles      0.02652596   -0.04352563   -0.04392889
 Pairs        0.01766918    0.00000000   -0.00149967
 Total        1.04430764   -0.04352563   -0.08860171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66120620
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84274431
 One electron energy                  -50.30822643
 Two electron energy                   12.55841852
 Virial quotient                       -0.99754414
 Correlation energy                    -0.08860171
 !MRCI STATE 2.1 Energy               -37.749807908803

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75373364 (Davidson, fixed reference)
 Cluster corrected energies           -37.75372323 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75373364 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176981 (Pople, fixed reference)
 Cluster corrected energies           -37.75176462 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176981 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97855620 (fixed)   0.97861124 (relaxed)   0.97855620 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011250    0.00000000   -0.04317310
 Singles      0.02652601   -0.04352567   -0.04392887
 Pairs        0.01766912   -0.00000000   -0.00149973
 Total        1.04430763   -0.04352567   -0.08860171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66120620
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84274637
 One electron energy                  -50.30822790
 Two electron energy                   12.55841999
 Virial quotient                       -0.99754409
 Correlation energy                    -0.08860171
 !MRCI STATE 3.1 Energy               -37.749807908745

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75373364 (Davidson, fixed reference)
 Cluster corrected energies           -37.75372323 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75373364 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176981 (Pople, fixed reference)
 Cluster corrected energies           -37.75176462 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176981 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97840938 (fixed)   0.97861147 (relaxed)   0.97855643 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011250   -0.00000000   -0.04317321
 Singles      0.02652561   -0.04352570   -0.04392888
 Pairs        0.01766905    0.00000012   -0.00149962
 Total        1.04430715   -0.04352558   -0.08860171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66120620
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84273662
 One electron energy                  -50.30822174
 Two electron energy                   12.55841383
 Virial quotient                       -0.99754434
 Correlation energy                    -0.08860171
 !MRCI STATE 4.1 Energy               -37.749807907171

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75373360 (Davidson, fixed reference)
 Cluster corrected energies           -37.75372319 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75373360 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176979 (Pople, fixed reference)
 Cluster corrected energies           -37.75176459 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176979 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97840941 (fixed)   0.97861149 (relaxed)   0.97855645 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011249   -0.00000000   -0.04317309
 Singles      0.02652560   -0.04352571   -0.04392888
 Pairs        0.01766901    0.00000000   -0.00149973
 Total        1.04430710   -0.04352571   -0.08860171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66120620
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84273654
 One electron energy                  -50.30822162
 Two electron energy                   12.55841371
 Virial quotient                       -0.99754435
 Correlation energy                    -0.08860170
 !MRCI STATE 5.1 Energy               -37.749807907078

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75373359 (Davidson, fixed reference)
 Cluster corrected energies           -37.75372318 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75373359 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176979 (Pople, fixed reference)
 Cluster corrected energies           -37.75176459 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176979 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97985292 (fixed)   0.97991733 (relaxed)   0.97985292 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013146    0.00000000   -0.00000949
 Singles      0.01177438   -0.00747575   -0.00803057
 Pairs        0.02963958   -0.06774286   -0.06717854
 Total        1.04154542   -0.07521861   -0.07521861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.62242038
 Nuclear energy                         0.00000000
 Kinetic energy                        37.78808804
 One electron energy                  -50.19002323
 Two electron energy                   12.49238425
 Virial quotient                       -0.99760641
 Correlation energy                    -0.07521861
 !MRCI STATE 6.1 Energy               -37.697638986733

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.70076398 (Davidson, fixed reference)
 Cluster corrected energies           -37.70075368 (Davidson, relaxed reference)
 Cluster corrected energies           -37.70076398 (Davidson, rotated reference)

 Cluster corrected energies           -37.69920081 (Pople, fixed reference)
 Cluster corrected energies           -37.69919567 (Pople, relaxed reference)
 Cluster corrected energies           -37.69920081 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.63       700     1000      520     2100     2140     5203     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.70      0.29      0.19      0.51      0.02      0.47
 REAL TIME  *         2.94 SEC
 DISK USED  *        30.79 MB (local),      175.04 MB (total)
 SF USED    *         6.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -37.75373365  AU                              
 SETTING HLSDIAG(5)     =       -37.75373364  AU                              
 SETTING HLSDIAG(6)     =       -37.75373364  AU                              
 SETTING HLSDIAG(7)     =       -37.75373360  AU                              
 SETTING HLSDIAG(8)     =       -37.75373359  AU                              
 SETTING HLSDIAG(9)     =       -37.70076398  AU                              


        HLSDIAG
    -37.80024106
    -37.80024107
    -37.80024106
    -37.75373365
    -37.75373364
    -37.75373364
    -37.75373360
    -37.75373359
    -37.70076398
                                                  


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

         944760. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.19 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -37.797150    -37.797150    -37.797150
 Replaced energies:    -37.800241    -37.800241    -37.800241

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -37.749808    -37.749808    -37.749808    -37.749808    -37.749808    -37.697639
 Replaced energies:    -37.753734    -37.753734    -37.753734    -37.753734    -37.753734    -37.700764



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -37.80024107

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -12.71      -0.00       0.00      -0.00       8.99       0.00       0.00       0.00     -10.69

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       8.99       0.00       0.00       0.00      10.69
                           12.71       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -8.99      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -8.99      -0.00       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       8.99       0.00       0.00       0.00       0.00      -0.00       8.99      -0.00

    5   2.1  1.0  0.0       0.00       0.00      -8.99       0.00       0.00       0.00      -0.00       0.00       8.99       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       8.99      -0.00       0.00       0.00       0.00      -0.00      -8.99      -0.00       0.00
                           -8.99      -0.00      -0.00      -0.00      -0.00       0.00      -8.99      -0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       8.99      -0.00      12.71       0.00      10.69

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -8.99       0.00       0.00       0.00      10.69
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00     -12.71      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       8.99      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -8.99      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00      10.69      -0.00       0.00       0.00       0.00       0.00      10.69      -0.00   10207.20
                           10.69       0.00      -0.00       0.00      -0.00      -0.00     -10.69      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00      10.70       0.00       0.00       0.00      -0.00      -0.00      10.70       0.00
                           -0.00      -0.00       0.00     -15.12      -0.00       0.00       0.00       0.00      -0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00     -10.69       0.00      15.12      -0.00      -0.00      -0.00      10.69      -0.00

   13   4.1  0.0  0.0       0.54      -0.00      -0.00       0.00       0.00       0.00       0.54      -0.00      -0.00       0.00
                           -0.00     -10.94      -0.00       0.00       0.00     -14.74       0.00      10.94       0.00      -0.00

   14   5.1  0.0  0.0     -12.33      -0.00      -0.00       0.00       0.00       0.00     -12.33      -0.00      -0.00       0.00
                           -0.00       5.70       0.00       0.00       0.00      -9.38       0.00      -5.70      -0.00      -0.00

   15   6.1  0.0  0.0      17.09       0.00      -0.00       0.00       0.00       0.00      17.09       0.00      -0.00       0.00
                           -0.00      17.09       0.00       0.00       0.00     -24.16       0.00     -17.09      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00       0.54     -12.33      17.09
                            0.00      -0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      10.94      -5.70     -17.09

    3   3.1  1.0  1.0      10.70      -0.00      -0.00      -0.00      -0.00
                           -0.00      10.69       0.00      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           15.12      -0.00      -0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.12      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      14.74       9.38      24.16

    7   1.1  1.0 -1.0      -0.00       0.00       0.54     -12.33      17.09
                           -0.00       0.00      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00     -10.94       5.70      17.09

    9   3.1  1.0 -1.0      10.70      -0.00      -0.00      -0.00      -0.00
                            0.00     -10.69      -0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   10207.20       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   10207.20       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   10207.21       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   10207.21       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21832.70
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -37.80024107 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.001       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      12.713       0.000     -12.713

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      12.713       0.000

    3    1  |1 1>+              0.000       0.000       0.003       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -12.713      -0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.001       0.000       0.000       0.000      -0.000
                                0.000      -0.000      12.713       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.003       0.000      12.713
                              -12.713      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.001       0.000
                                0.000     -12.713      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      12.713       0.000       0.000
                               12.713       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     -12.713       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      15.113      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      15.117       0.000

    2    1  |0 0>              -0.000      -0.000      15.127       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -15.124      -0.000       0.000      -0.000      -0.000

    3    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      15.117      -0.000       0.000       0.000

    4    1  |0 0>               0.757      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -14.736      -0.000     -15.475

    5    1  |0 0>             -17.443      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -9.384      -0.000       8.060

    6    1  |0 0>              24.164       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -24.160      -0.000      24.168

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.757     -17.443      24.164
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      15.113      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      15.127      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      15.124      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>             -12.713       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -15.117      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      14.736       9.384      24.160

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.117       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      15.475      -8.060     -24.168

    3    1  |1 1>-              0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      15.124       0.000      -0.000      -0.000

    1    1  |0 0>               0.000   10207.198       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   10207.201       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   10207.201       0.000       0.000       0.000
                              -15.124      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   10207.210       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   10207.212       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21832.699
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -37.80035728    -0.00011621      -25.50      0.00000000        0.00      0.0000
    2   -37.80029899    -0.00005792      -12.71      0.00005829       12.79      0.0016
    3   -37.80029899    -0.00005792      -12.71      0.00005829       12.79      0.0016
    4   -37.80029898    -0.00005791      -12.71      0.00005829       12.79      0.0016
    5   -37.80018335     0.00005772       12.67      0.00017393       38.17      0.0047
    6   -37.80018335     0.00005772       12.67      0.00017393       38.17      0.0047
    7   -37.80018334     0.00005773       12.67      0.00017394       38.17      0.0047
    8   -37.80018334     0.00005773       12.67      0.00017394       38.18      0.0047
    9   -37.80018334     0.00005773       12.67      0.00017394       38.18      0.0047
   10   -37.75373345     0.04650762    10207.24      0.04662383    10232.75      1.2687
   11   -37.75373344     0.04650763    10207.25      0.04662384    10232.75      1.2687
   12   -37.75373344     0.04650763    10207.25      0.04662384    10232.75      1.2687
   13   -37.75373339     0.04650768    10207.26      0.04662389    10232.76      1.2687
   14   -37.75373339     0.04650768    10207.26      0.04662389    10232.76      1.2687
   15   -37.70076361     0.09947746    21832.78      0.09959367    21858.28      2.7101

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.57735003 -0.00000000  0.00000000 -0.00000000  0.58694421  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.69988981  0.00000000 -0.00000000  0.00000000 -0.69992905  0.00000000  0.00000000
                           0.00000000 -0.10090293  0.00000000 -0.00000000  0.00000000 -0.10034928  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.39922616 -0.00000000 -0.00000000  0.00000000 -0.43712305
                          -0.00000000 -0.00000000  0.00000000  0.58359928  0.00000000 -0.00000000 -0.00000000  0.55583414

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.58363471 -0.00000000  0.00000000  0.00000000 -0.55580040
                           0.00000000 -0.00000000 -0.00000000 -0.39925040 -0.00000000 -0.00000000  0.00000000 -0.43709652

   2    1  |1 0>          -0.00000000 -0.00000000 -0.08291994 -0.00000000 -0.00000000 -0.00000000  0.07689713  0.00000000
                           0.00000000 -0.00000000  0.70226903 -0.00000000  0.00000000 -0.00000000 -0.70287064 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57732669  0.00000000  0.00000000 -0.00000000  0.19810570  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.10089745 -0.00000000  0.00000000  0.00000000 -0.10035473  0.00000000 -0.00000000
                          -0.00000000  0.69985181  0.00000000 -0.00000000 -0.00000000  0.69996706 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57737091  0.00000000  0.00000000  0.00000000  0.78501352  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.08291041 -0.00000000  0.00000000  0.00000000 -0.07690597 -0.00000000
                          -0.00000000 -0.00000000  0.70218827 -0.00000000 -0.00000000  0.00000000  0.70295147  0.00000000

   1    1  |0 0>           0.00000000  0.00000018  0.00000000 -0.00000000 -0.00000000  0.00207557 -0.00000000 -0.00000000
                           0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00029758 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00129706
                          -0.00000000 -0.00000000 -0.00000000 -0.00000015 -0.00000000  0.00000000  0.00000000 -0.00164930

   3    1  |0 0>           0.00000000  0.00000000 -0.00000036  0.00000000  0.00000000 -0.00000000 -0.00208507 -0.00000000
                           0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00022812 -0.00000000

   4    1  |0 0>           0.00000099  0.00000000 -0.00000000 -0.00000000 -0.00152157 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000004  0.00000000 -0.00000000  0.00000000  0.00144252  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00191477  0.00000000 -0.00000000  0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.56759076  0.00000000  0.00000000  0.00000000  0.00012980 -0.00170768  0.00110549
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00148248 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000546 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00082017  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00123657 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00123629  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00081998  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00003372  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00148244 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.79211354  0.00000000  0.00000000 -0.00000000  0.00141486  0.00096695  0.00110530

   1    1  |1 1>-         -0.00000000 -0.00000546 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00148282  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.22448264  0.00000000  0.00000000 -0.00000000  0.00154283 -0.00074086 -0.00110569

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00003374  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00148312 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000  0.99999103 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00368068 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.55273025  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.83335759 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.99973914  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.02274327 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00144362  0.00000000  0.00000000 -0.00000000  0.99947020  0.03247948  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00152281  0.00000000  0.00000000 -0.00000000 -0.03247948  0.99947020  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000015 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99999817
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -37.80035728     -0.00011621      -25.50      0.00000000        0.00      0.0000
     2   1    -37.80029899     -0.00005792      -12.71      0.00005829       12.79      0.0016
     3   1    -37.80029899     -0.00005792      -12.71      0.00005829       12.79      0.0016
     4   1    -37.80029898     -0.00005791      -12.71      0.00005829       12.79      0.0016
     5   1    -37.80018335      0.00005772       12.67      0.00017393       38.17      0.0047
     6   1    -37.80018335      0.00005772       12.67      0.00017393       38.17      0.0047
     7   1    -37.80018334      0.00005773       12.67      0.00017394       38.17      0.0047
     8   1    -37.80018334      0.00005773       12.67      0.00017394       38.18      0.0047
     9   1    -37.80018334      0.00005773       12.67      0.00017394       38.18      0.0047
    10   1    -37.75373345      0.04650762    10207.24      0.04662383    10232.75      1.2687
    11   1    -37.75373344      0.04650763    10207.25      0.04662384    10232.75      1.2687
    12   1    -37.75373344      0.04650763    10207.25      0.04662384    10232.75      1.2687
    13   1    -37.75373339      0.04650768    10207.26      0.04662389    10232.76      1.2687
    14   1    -37.75373339      0.04650768    10207.26      0.04662389    10232.76      1.2687
    15   1    -37.70076361      0.09947746    21832.78      0.09959367    21858.28      2.7101

 E0 =    -37.80024107 is the energy of the lowest zeroth-order state
 E1 =    -37.80035728 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.57735003 -0.00000000  0.00000000 -0.00000000  0.58694421  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.69988981  0.00000000 -0.00000000  0.00000000 -0.69992905  0.00000000  0.00000000
                                0.00000000 -0.10090293  0.00000000 -0.00000000  0.00000000 -0.10034928  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.39922616 -0.00000000 -0.00000000  0.00000000 -0.43712305
                               -0.00000000 -0.00000000  0.00000000  0.58359928  0.00000000 -0.00000000 -0.00000000  0.55583414

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.58363471 -0.00000000  0.00000000  0.00000000 -0.55580040
                                0.00000000 -0.00000000 -0.00000000 -0.39925040 -0.00000000 -0.00000000  0.00000000 -0.43709652

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.08291994 -0.00000000 -0.00000000 -0.00000000  0.07689713  0.00000000
                                0.00000000 -0.00000000  0.70226903 -0.00000000  0.00000000 -0.00000000 -0.70287064 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57732669  0.00000000  0.00000000 -0.00000000  0.19810570  0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.10089745 -0.00000000  0.00000000  0.00000000 -0.10035473  0.00000000 -0.00000000
                               -0.00000000  0.69985181  0.00000000 -0.00000000 -0.00000000  0.69996706 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57737091  0.00000000  0.00000000  0.00000000  0.78501352  0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.08291041 -0.00000000  0.00000000  0.00000000 -0.07690597 -0.00000000
                               -0.00000000 -0.00000000  0.70218827 -0.00000000 -0.00000000  0.00000000  0.70295147  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.00000018  0.00000000 -0.00000000 -0.00000000  0.00207557 -0.00000000 -0.00000000
                                0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00029758 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00129706
                               -0.00000000 -0.00000000 -0.00000000 -0.00000015 -0.00000000  0.00000000  0.00000000 -0.00164930

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000036  0.00000000  0.00000000 -0.00000000 -0.00208507 -0.00000000
                                0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00022812 -0.00000000

 13  1     4    1  |0 0>        0.00000099  0.00000000 -0.00000000 -0.00000000 -0.00152157 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000004  0.00000000 -0.00000000  0.00000000  0.00144252  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00191477  0.00000000 -0.00000000  0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.56759076  0.00000000  0.00000000  0.00000000  0.00012980 -0.00170768  0.00110549
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00148248 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000546 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00082017  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00123657 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00123629  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00081998  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00003372  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00148244 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.79211354  0.00000000  0.00000000 -0.00000000  0.00141486  0.00096695  0.00110530

  7  1     1    1  |1 1>-      -0.00000000 -0.00000546 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00148282  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.22448264  0.00000000  0.00000000 -0.00000000  0.00154283 -0.00074086 -0.00110569

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00003374  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00148312 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000  0.99999103 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00368068 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.55273025  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.83335759 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.99973914  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.02274327 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00144362  0.00000000  0.00000000 -0.00000000  0.99947020  0.03247948  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00152281  0.00000000  0.00000000 -0.00000000 -0.03247948  0.99947020  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000015 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99999817
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   34.45%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.99%    0.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    3.92%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.34%    0.00%    0.00%    0.00%   61.62%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.01%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        32.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         62.74%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         5.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.89%    0.11%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.11%   99.89%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%


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

              2       7        1.63       700     1000      520     2100     2140     5203     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.66      1.95      0.29      0.19      0.51      0.02      0.47
 REAL TIME  *         6.65 SEC
 DISK USED  *        30.81 MB (local),      251.06 MB (total)
 SF USED    *        18.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -37.700763610518

              CI              CI           MULTI         RHF-SCF
    -37.69763899    -37.79714960    -37.62242038    -37.70180810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
