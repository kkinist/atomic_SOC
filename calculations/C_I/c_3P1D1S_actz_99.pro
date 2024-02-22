
 Working directory              : /wrk/irikura/molpro.CAh1bZTvLJ/
 Global scratch directory       : /wrk/irikura/molpro.CAh1bZTvLJ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CAh1bZTvLJ/

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
         weight,all,99
     wf,sym=1,spin=0;state,6;
         weight,all,1
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   C SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:25:39  
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

     2.621 MB (compressed) written to integral file ( 21.0%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.68      0.47
 REAL TIME  *         1.68 SEC
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
   1      -37.66479587     -37.66479587     0.00D+00     0.94D-01     0     0       0.00      0.01    start
   2      -37.70053776      -0.03574189     0.11D-01     0.19D-01     1     0       0.00      0.01    diag2
   3      -37.70157540      -0.00103765     0.24D-02     0.15D-02     2     0       0.00      0.01    diag2
   4      -37.70179414      -0.00021874     0.74D-03     0.11D-02     3     0       0.00      0.01    diag2
   5      -37.70180788      -0.00001374     0.17D-03     0.59D-03     4     0       0.00      0.01    diag2
   6      -37.70180810      -0.00000022     0.25D-04     0.10D-03     5     0       0.01      0.02    diag2
   7      -37.70180810      -0.00000000     0.24D-05     0.62D-05     6     0       0.00      0.02    diag2
   8      -37.70180810      -0.00000000     0.24D-06     0.11D-05     7     0       0.00      0.02    fixocc
   9      -37.70180810      -0.00000000     0.11D-07     0.19D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   2
 Final beta  occupancy:   2   0

 !RHF STATE 1.1 Energy                -37.701808101457
  RHF One-electron energy             -50.462984368559
  RHF Two-electron energy              12.761176267102
  RHF Kinetic energy                   37.802980609706
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.997323689650

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.33053     1  1  s    0.99939
    2.1     2.00000    -0.70671     1  2  s    1.00864
    1.2     1.00000    -0.43308     1  1  py   0.99645
    2.2     1.00000    -0.43308     1  1  pz   0.99645


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
 CPU TIMES  *         0.71      0.04      0.47
 REAL TIME  *         1.71 SEC
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
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.127D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.913D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 6 2 1 6   2 4 3 5 1 6 2 4 3 5   1 5 4 3 2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 3 2 1 7   910 8 4 6 5 3 2 1 7   910 8 4 6 5 1 2 3 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    264
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0    -37.65696208     -37.71924796   -0.06228589    0.13584758 0.00042783 0.00000000  0.49E+00      0.13
   2    7   12    0    -37.71721964     -37.71774708   -0.00052745    0.03664857 0.00000048 0.00000000  0.26E-01      0.35
   3    5   10    0    -37.71774942     -37.71774945   -0.00000003    0.00022906 0.00000002 0.00000000  0.17E-03      0.49
   4    2    4    0    -37.71774945     -37.71774945    0.00000000    0.00000001 0.00000000 0.00000000  0.83E-08      0.53

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.20E-08)
                       Final energy:    -37.71774945
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -37.719045242386
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.75409084
 Virial ratio                                    1.99735882
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -37.719045242376
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.75409084
 Virial ratio                                    1.99735882
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -37.719045242330
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.75409085
 Virial ratio                                    1.99735882
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -37.660287657940
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.81284843
 Virial ratio                                    1.99580516
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -37.660287657918
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.81284843
 Virial ratio                                    1.99580516
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -37.660287657896
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.81284843
 Virial ratio                                    1.99580516
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -37.660287657789
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.81284843
 Virial ratio                                    1.99580516
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -37.660287657781
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81893197
 One electron energy                           -50.47313609
 Two electron energy                            12.81284843
 Virial ratio                                    1.99580516
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -37.620207783046
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.79911949
 One electron energy                           -50.43292501
 Two electron energy                            12.81271723
 Virial ratio                                    1.99526678
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999973
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999968
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.027131370122
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999983773
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999997220
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.972872075890
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000083444
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999808096
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.270761614488
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999977383
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000010706
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.729254573276
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999916583
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000191937
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.702107015391
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000038844
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999992074
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.297873350833
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 5   3 6 4 2 1 3 5 6 4 2   1 5 3 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 3 1 7   910 8 5 6 4 2 1 3 9   710 8 5 6 4 2 1 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.32159     1  1  s    0.99925
    2.1     1.95551    -0.69558     1  2  s    1.01556
    1.2     0.68150    -0.05659     1  1  pz   0.99951
    2.2     0.68150    -0.05659     1  1  px   0.99951
    3.2     0.68150    -0.05659     1  1  py   0.99951
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.00000512     -0.00000564      0.98890237
 2 0aa          0.00028561      0.98890233      0.00000563
 2 aa0          0.98890233     -0.00028561     -0.00000512
 0 a2a         -0.00000077      0.00000085     -0.14856683
 0 aa2         -0.14856683      0.00004291      0.00000077
 0 2aa         -0.00004291     -0.14856683     -0.00000085
 
 Energy:      -37.71904524    -37.71904524    -37.71904524
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.80469239      0.00003511     -0.00003941      0.00000082     -0.06649877      0.55555913
 2 002         -0.34475657     -0.00001043      0.00001592     -0.00000035      0.73013344      0.55555913
 2 b0a          0.00000071     -0.00000156      0.00000172     -0.69925957      0.00000000     -0.00000000
 2 a0b         -0.00000071      0.00000156     -0.00000172      0.69925957     -0.00000000      0.00000000
 2 ba0          0.00003089     -0.69925957      0.00004503      0.00000156      0.00000459      0.00000000
 2 ab0         -0.00003089      0.69925957     -0.00004503     -0.00000156     -0.00000459     -0.00000000
 2 0ba         -0.00003432     -0.00004503     -0.69925957     -0.00000172     -0.00000096     -0.00000000
 2 0ab          0.00003432      0.00004503      0.69925957      0.00000172      0.00000096      0.00000000
 2 200         -0.45993582     -0.00002468      0.00002349     -0.00000047     -0.66363467      0.55555913
 0 202          0.12089222      0.00000527     -0.00000592      0.00000012     -0.00999038     -0.15712221
 0 022         -0.06909803     -0.00000371      0.00000353     -0.00000007     -0.09970054     -0.15712221
 0 220         -0.05179419     -0.00000157      0.00000239     -0.00000005      0.10969092     -0.15712221
 0 a2b          0.00000011     -0.00000023      0.00000026     -0.10505262     -0.00000000      0.00000000
 0 b2a         -0.00000011      0.00000023     -0.00000026      0.10505262      0.00000000     -0.00000000
 0 ab2          0.00000464     -0.10505262      0.00000676      0.00000023      0.00000069     -0.00000000
 0 ba2         -0.00000464      0.10505262     -0.00000676     -0.00000023     -0.00000069      0.00000000
 0 2ba          0.00000516      0.00000676      0.10505262      0.00000026      0.00000014      0.00000000
 0 2ab         -0.00000516     -0.00000676     -0.10505262     -0.00000026     -0.00000014     -0.00000000
 
 Energy:      -37.66028766    -37.66028766    -37.66028766    -37.66028766    -37.66028766    -37.62020778
 


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
 CPU TIMES  *         1.23      0.52      0.04      0.47
 REAL TIME  *         2.35 SEC
 DISK USED  *        29.75 MB (local),      169.84 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -37.71904524   2.0
    -37.71904524   2.0
    -37.71904524   2.0
    -37.66028766   6.0
    -37.66028766   6.0
    -37.66028766   6.0
    -37.66028766   6.0
    -37.66028766   6.0
    -37.62020778  -0.0
                                                  


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
     1       -37.71904524
     2       -37.71904524
     3       -37.71904524

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
    1     1     1     1.00000000     0.00000000   -37.71904524     0.00000000    -0.07681644  0.24D-01  0.11D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.71904524     0.00000000    -0.07645308  0.23D-01  0.11D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.71904524     0.00000000    -0.07661991  0.24D-01  0.11D-01     0.01
    2     1     1     1.03454591    -0.07643282   -37.79547806    -0.07643282    -0.00147138  0.14D-03  0.38D-03     0.04
    2     2     2     1.03448217    -0.07642597   -37.79547121    -0.07642597    -0.00147554  0.14D-03  0.37D-03     0.04
    2     3     3     1.03443829    -0.07642191   -37.79546715    -0.07642191    -0.00147683  0.15D-03  0.37D-03     0.04
    3     1     1     1.03803544    -0.07809443   -37.79713968    -0.00166162    -0.00006070  0.27D-04  0.13D-04     0.06
    3     2     2     1.03803196    -0.07809389   -37.79713913    -0.00166792    -0.00006100  0.27D-04  0.13D-04     0.06
    3     3     3     1.03803057    -0.07809348   -37.79713872    -0.00167158    -0.00006116  0.26D-04  0.13D-04     0.06
    4     1     1     1.03865853    -0.07817171   -37.79721696    -0.00007728    -0.00000577  0.19D-05  0.13D-05     0.07
    4     2     2     1.03866100    -0.07817169   -37.79721694    -0.00007781    -0.00000578  0.19D-05  0.13D-05     0.07
    4     3     3     1.03866329    -0.07817169   -37.79721693    -0.00007821    -0.00000578  0.19D-05  0.13D-05     0.07
    5     1     1     1.03876189    -0.07817952   -37.79722476    -0.00000781    -0.00000050  0.18D-06  0.10D-06     0.10
    5     2     2     1.03876187    -0.07817952   -37.79722476    -0.00000782    -0.00000050  0.18D-06  0.10D-06     0.10
    5     3     3     1.03876203    -0.07817951   -37.79722475    -0.00000783    -0.00000050  0.18D-06  0.10D-06     0.10
    6     1     1     1.03874670    -0.07818017   -37.79722541    -0.00000065    -0.00000004  0.11D-07  0.10D-07     0.12
    6     2     2     1.03874607    -0.07818017   -37.79722541    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    6     3     3     1.03874639    -0.07818017   -37.79722541    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    7     1     1     1.03874683    -0.07818022   -37.79722547    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.15
    7     2     2     1.03874689    -0.07818022   -37.79722547    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.15
    7     3     3     1.03874694    -0.07818022   -37.79722547    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   6.7%  13.3%

 Initialization:   6.7%
 Other:           73.3%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//           0.9719298   0.0000000   0.0000000
 2/0/           0.0000000   0.9719298   0.0000000
 2//0           0.0000000   0.0000000   0.9719298
 02//          -0.1343537   0.0000000   0.0000000
 0/2/           0.0000000  -0.1343536   0.0000000
 0//2           0.0000000   0.0000000  -0.1343535

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.981104    0.000000
 2           0.000000    0.000000    0.981104
 3           0.981104    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981104    0.000000    0.000000
 2           0.000000    0.981104    0.000000
 3           0.000000    0.000000    0.981104


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98110420 (fixed)   0.98117200 (relaxed)   0.98110420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013820   -0.00000000   -0.03721940
 Singles      0.02506677   -0.03952416   -0.03993066
 Pairs        0.01368542   -0.00000000   -0.00103016
 Total        1.03889038   -0.03952416   -0.07818022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904524
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89247902
 One electron energy                  -50.41088312
 Two electron energy                   12.61365765
 Virial quotient                       -0.99748621
 Correlation energy                    -0.07818022
 !MRCI STATE 1.1 Energy               -37.797225465865

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026592 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025470 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026592 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722547 (Pople, fixed reference)
 Cluster corrected energies           -37.79722547 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722547 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98110417 (fixed)   0.98117197 (relaxed)   0.98110417 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013821    0.00000000   -0.00001040
 Singles      0.02506682   -0.03952419   -0.03993067
 Pairs        0.01368542   -0.03865603   -0.03823916
 Total        1.03889045   -0.07818022   -0.07818022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904524
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89248223
 One electron energy                  -50.41088581
 Two electron energy                   12.61366034
 Virial quotient                       -0.99748613
 Correlation energy                    -0.07818022
 !MRCI STATE 2.1 Energy               -37.797225465845

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026593 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025471 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026593 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722547 (Pople, fixed reference)
 Cluster corrected energies           -37.79722547 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722547 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98110415 (fixed)   0.98117194 (relaxed)   0.98110415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013821    0.00000000   -0.03721933
 Singles      0.02506687   -0.03952422   -0.03993067
 Pairs        0.01368543   -0.00000000   -0.00103023
 Total        1.03889050   -0.03952422   -0.07818022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904524
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89248475
 One electron energy                  -50.41088794
 Two electron energy                   12.61366248
 Virial quotient                       -0.99748606
 Correlation energy                    -0.07818022
 !MRCI STATE 3.1 Energy               -37.797225465841

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026593 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025471 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026593 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722547 (Pople, fixed reference)
 Cluster corrected energies           -37.79722547 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722547 (Pople, rotated reference)



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
 CPU TIMES  *         1.44      0.20      0.52      0.04      0.47
 REAL TIME  *         2.58 SEC
 DISK USED  *        30.19 MB (local),      172.07 MB (total)
 SF USED    *         4.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -37.80026592  AU                              
 SETTING HLSDIAG(2)     =       -37.80026593  AU                              
 SETTING HLSDIAG(3)     =       -37.80026593  AU                              


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
     1       -37.66028766
     2       -37.66028766
     3       -37.66028766
     4       -37.66028766
     5       -37.66028766
     6       -37.62020778

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.84D+00
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
    1     1     1     1.00000000     0.00000000   -37.66028766    -0.00000000    -0.08604644  0.25D-01  0.13D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.66028766     0.00000000    -0.08678165  0.26D-01  0.13D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.66028766     0.00000000    -0.08679371  0.26D-01  0.13D-01     0.01
    1     4     4     1.00000000     0.00000000   -37.66028766     0.00000000    -0.08698713  0.26D-01  0.13D-01     0.01
    1     5     5     1.00000000     0.00000000   -37.66028766     0.00000000    -0.08610118  0.25D-01  0.13D-01     0.01
    1     6     6     1.00000000     0.00000000   -37.62020778    -0.00000000    -0.07122705  0.11D-01  0.21D-01     0.01
    2     1     1     1.03848622    -0.08623376   -37.74652142    -0.08623376    -0.00282450  0.34D-03  0.66D-03     0.04
    2     2     2     1.03817760    -0.08622864   -37.74651629    -0.08622864    -0.00278293  0.34D-03  0.64D-03     0.04
    2     3     3     1.03844063    -0.08622293   -37.74651059    -0.08622293    -0.00282854  0.34D-03  0.66D-03     0.04
    2     4     4     1.03846009    -0.08621744   -37.74650509    -0.08621744    -0.00283239  0.34D-03  0.66D-03     0.04
    2     5     5     1.03816836    -0.08620326   -37.74649092    -0.08620326    -0.00280372  0.34D-03  0.64D-03     0.04
    2     6     6     1.03403987    -0.07397968   -37.69418746    -0.07397968    -0.00259479  0.32D-03  0.69D-03     0.04
    3     1     1     1.04414775    -0.08931090   -37.74959855    -0.00307714    -0.00016066  0.82D-04  0.26D-04     0.08
    3     2     2     1.04413393    -0.08930895   -37.74959661    -0.00308032    -0.00016184  0.82D-04  0.27D-04     0.08
    3     3     3     1.04413872    -0.08930848   -37.74959613    -0.00308554    -0.00016226  0.82D-04  0.27D-04     0.08
    3     4     4     1.04406482    -0.08930161   -37.74958927    -0.00308418    -0.00016350  0.83D-04  0.25D-04     0.08
    3     5     5     1.04405686    -0.08929978   -37.74958744    -0.00309652    -0.00016472  0.83D-04  0.26D-04     0.08
    3     6     6     1.04120203    -0.07698342   -37.69719120    -0.00300374    -0.00027055  0.24D-03  0.36D-04     0.08
    4     1     1     1.04658211    -0.08952559   -37.74981325    -0.00021470    -0.00001831  0.95D-05  0.30D-05     0.12
    4     2     2     1.04658552    -0.08952549   -37.74981315    -0.00021654    -0.00001835  0.95D-05  0.30D-05     0.12
    4     3     3     1.04658460    -0.08952545   -37.74981310    -0.00021697    -0.00001844  0.96D-05  0.31D-05     0.12
    4     4     4     1.04657150    -0.08952376   -37.74981142    -0.00022215    -0.00001949  0.10D-04  0.30D-05     0.12
    4     5     5     1.04656509    -0.08952348   -37.74981114    -0.00022370    -0.00001964  0.10D-04  0.30D-05     0.12
    4     6     6     1.04700074    -0.07737534   -37.69758312    -0.00039192    -0.00003906  0.19D-04  0.64D-05     0.12
    5     1     1     1.04718342    -0.08955285   -37.74984051    -0.00002725    -0.00000168  0.62D-06  0.30D-06     0.16
    5     2     2     1.04718095    -0.08955284   -37.74984049    -0.00002734    -0.00000168  0.63D-06  0.30D-06     0.16
    5     3     3     1.04718197    -0.08955283   -37.74984049    -0.00002739    -0.00000169  0.63D-06  0.31D-06     0.16
    5     4     4     1.04717003    -0.08955276   -37.74984042    -0.00002900    -0.00000171  0.63D-06  0.30D-06     0.16
    5     5     5     1.04717016    -0.08955274   -37.74984040    -0.00002926    -0.00000172  0.63D-06  0.30D-06     0.16
    5     6     6     1.04815960    -0.07742715   -37.69763493    -0.00005181    -0.00000424  0.12D-05  0.97D-06     0.16
    6     1     1     1.04723110    -0.08955492   -37.74984258    -0.00000207    -0.00000014  0.49D-07  0.25D-07     0.19
    6     2     2     1.04723065    -0.08955492   -37.74984258    -0.00000208    -0.00000014  0.50D-07  0.25D-07     0.19
    6     3     3     1.04723067    -0.08955492   -37.74984258    -0.00000208    -0.00000014  0.49D-07  0.25D-07     0.19
    6     4     4     1.04722891    -0.08955490   -37.74984256    -0.00000214    -0.00000015  0.54D-07  0.25D-07     0.19
    6     5     5     1.04722887    -0.08955490   -37.74984256    -0.00000216    -0.00000015  0.54D-07  0.26D-07     0.19
    6     6     6     1.04830096    -0.07743230   -37.69764008    -0.00000515    -0.00000042  0.22D-06  0.78D-07     0.19
    7     1     1     1.04725205    -0.08955508   -37.74984274    -0.00000016    -0.00000001  0.62D-08  0.18D-08     0.22
    7     2     2     1.04725191    -0.08955508   -37.74984274    -0.00000016    -0.00000001  0.64D-08  0.18D-08     0.22
    7     3     3     1.04725188    -0.08955508   -37.74984274    -0.00000016    -0.00000001  0.64D-08  0.18D-08     0.22
    7     4     4     1.04725105    -0.08955508   -37.74984274    -0.00000018    -0.00000001  0.69D-08  0.20D-08     0.22
    7     5     5     1.04725097    -0.08955508   -37.74984274    -0.00000018    -0.00000001  0.69D-08  0.20D-08     0.22
    7     6     6     1.04841235    -0.07743279   -37.69764057    -0.00000049    -0.00000005  0.22D-07  0.94D-08     0.22
    8     1     1     1.04725205    -0.08955508   -37.74984274     0.00000000    -0.00000001  0.62D-08  0.18D-08     0.23
    8     2     2     1.04725191    -0.08955508   -37.74984274     0.00000000    -0.00000001  0.64D-08  0.18D-08     0.23
    8     3     3     1.04725188    -0.08955508   -37.74984274     0.00000000    -0.00000001  0.64D-08  0.18D-08     0.23
    8     4     4     1.04725105    -0.08955508   -37.74984274    -0.00000000    -0.00000001  0.69D-08  0.20D-08     0.23
    8     5     5     1.04725097    -0.08955508   -37.74984274    -0.00000000    -0.00000001  0.69D-08  0.20D-08     0.23
    8     6     6     1.04847084    -0.07743286   -37.69764064    -0.00000007    -0.00000000  0.21D-08  0.86D-09     0.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   4.3%   8.7%  30.4%

 Initialization:   4.3%
 Other:           52.2%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/0\           0.0000000   0.0000000   0.9678533   0.0000000   0.0000000   0.0000000
 2/\0           0.0000000   0.9678532   0.0000000   0.0000000   0.0000000   0.0000000
 20/\           0.9678531   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2200           0.0000000   0.0000000   0.0000000   0.7654674  -0.1963513   0.5442916
 2020           0.0000000   0.0000000   0.0000000  -0.2126883   0.7610896   0.5442916
 2002           0.0000000   0.0000000   0.0000000  -0.5527785  -0.5647384   0.5442917
 0022          -0.0000000  -0.0000000   0.0000000   0.1065219  -0.0273241  -0.1472072
 0202          -0.0000000  -0.0000000   0.0000000  -0.0295972   0.1059127  -0.1472071
 0220           0.0000000   0.0000000   0.0000000  -0.0769238  -0.0785889  -0.1472071
 02/\          -0.1346862   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 0/\2           0.0000000  -0.1346857   0.0000000   0.0000000   0.0000000  -0.0000000
 0/2\           0.0000000   0.0000000  -0.1346855  -0.0000000  -0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \0/\  10.1    -0.0784720   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 \0/\  11.1     0.0000000   0.0000000  -0.0000000   0.0167782   0.0767106   0.0041326
 \/0\  12.1     0.0000000  -0.0000000   0.0000000   0.0763334   0.0184160   0.0041326
 \/\0  14.1     0.0000000  -0.0665559   0.0000000   0.0000000   0.0000000   0.0000000
 \/0\  14.1    -0.0000000   0.0000000  -0.0665558  -0.0000000   0.0000000  -0.0000000
 \/\0  13.1    -0.0000000  -0.0000000   0.0000000   0.0580438  -0.0528853   0.0041328
 2\00   6.2     0.0000000   0.0000000  -0.0000000   0.0375007  -0.0096192   0.0579407
 200\   4.2     0.0000000  -0.0000000   0.0000000  -0.0270823  -0.0276669   0.0579402
 20\0   5.2     0.0000000   0.0000000   0.0000000  -0.0104203   0.0372869   0.0579401

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.977122   -0.000000    0.000000   -0.000000
 2          -0.000000    0.977122   -0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000   -0.000000    0.977122   -0.000000   -0.000000
 4          -0.339590   -0.000000   -0.000000    0.000000   -0.916213    0.000000
 5           0.916213   -0.000000   -0.000000    0.000000   -0.339590   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.976547

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.977122   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.977122   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.977122    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.977123   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.977123   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.976547


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97712211 (fixed)   0.97717960 (relaxed)   0.97712211 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011767    0.00000000   -0.04247373
 Singles      0.02976757   -0.04507969   -0.04558554
 Pairs        0.01749004   -0.00000000   -0.00149582
 Total        1.04737528   -0.04507969   -0.08955508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66028766
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84189216
 One electron energy                  -50.31043772
 Two electron energy                   12.56059498
 Virial quotient                       -0.99756753
 Correlation energy                    -0.08955508
 !MRCI STATE 1.1 Energy               -37.749842739904

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75408544 (Davidson, fixed reference)
 Cluster corrected energies           -37.75407440 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75408544 (Davidson, rotated reference)

 Cluster corrected energies           -37.75196290 (Pople, fixed reference)
 Cluster corrected energies           -37.75195739 (Pople, relaxed reference)
 Cluster corrected energies           -37.75196290 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97712217 (fixed)   0.97717966 (relaxed)   0.97712217 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011768   -0.00000000   -0.04247373
 Singles      0.02976737   -0.04507969   -0.04558556
 Pairs        0.01749010   -0.00000000   -0.00149579
 Total        1.04737515   -0.04507969   -0.08955508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66028766
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84189038
 One electron energy                  -50.31043804
 Two electron energy                   12.56059530
 Virial quotient                       -0.99756757
 Correlation energy                    -0.08955508
 !MRCI STATE 2.1 Energy               -37.749842739715

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75408542 (Davidson, fixed reference)
 Cluster corrected energies           -37.75407439 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75408542 (Davidson, rotated reference)

 Cluster corrected energies           -37.75196289 (Pople, fixed reference)
 Cluster corrected energies           -37.75195738 (Pople, relaxed reference)
 Cluster corrected energies           -37.75196289 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97712218 (fixed)   0.97717968 (relaxed)   0.97712218 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011768    0.00000000   -0.04247370
 Singles      0.02976740   -0.04507972   -0.04558554
 Pairs        0.01749004    0.00000000   -0.00149584
 Total        1.04737512   -0.04507972   -0.08955508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66028766
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84189143
 One electron energy                  -50.31043843
 Two electron energy                   12.56059569
 Virial quotient                       -0.99756755
 Correlation energy                    -0.08955508
 !MRCI STATE 3.1 Energy               -37.749842739684

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75408542 (Davidson, fixed reference)
 Cluster corrected energies           -37.75407439 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75408542 (Davidson, rotated reference)

 Cluster corrected energies           -37.75196289 (Pople, fixed reference)
 Cluster corrected energies           -37.75195738 (Pople, relaxed reference)
 Cluster corrected energies           -37.75196289 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.91621338 (fixed)   0.97718006 (relaxed)   0.97712257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011769    0.00000000   -0.04247348
 Singles      0.02976669   -0.04507985   -0.04558556
 Pairs        0.01748992   -0.00000013   -0.00149604
 Total        1.04737430   -0.04507999   -0.08955508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66028766
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84188091
 One electron energy                  -50.31043220
 Two electron energy                   12.56058946
 Virial quotient                       -0.99756782
 Correlation energy                    -0.08955508
 !MRCI STATE 4.1 Energy               -37.749842737174

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75408535 (Davidson, fixed reference)
 Cluster corrected energies           -37.75407431 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75408535 (Davidson, rotated reference)

 Cluster corrected energies           -37.75196285 (Pople, fixed reference)
 Cluster corrected energies           -37.75195734 (Pople, relaxed reference)
 Cluster corrected energies           -37.75196285 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.91621342 (fixed)   0.97718010 (relaxed)   0.97712261 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011767    0.00000000   -0.04247360
 Singles      0.02976668   -0.04507984   -0.04558554
 Pairs        0.01748985   -0.00000003   -0.00149594
 Total        1.04737420   -0.04507987   -0.08955508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66028766
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84188154
 One electron energy                  -50.31043245
 Two electron energy                   12.56058971
 Virial quotient                       -0.99756781
 Correlation energy                    -0.08955508
 !MRCI STATE 5.1 Energy               -37.749842736958

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75408534 (Davidson, fixed reference)
 Cluster corrected energies           -37.75407430 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75408534 (Davidson, rotated reference)

 Cluster corrected energies           -37.75196285 (Pople, fixed reference)
 Cluster corrected energies           -37.75195734 (Pople, relaxed reference)
 Cluster corrected energies           -37.75196285 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97654709 (fixed)   0.97661147 (relaxed)   0.97654709 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013187    0.00000000   -0.00000974
 Singles      0.01884868   -0.01003311   -0.01096328
 Pairs        0.02962855   -0.06739975   -0.06645984
 Total        1.04860910   -0.07743286   -0.07743286
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.62020778
 Nuclear energy                         0.00000000
 Kinetic energy                        37.78690789
 One electron energy                  -50.19177149
 Two electron energy                   12.49413086
 Virial quotient                       -0.99763761
 Correlation energy                    -0.07743286
 !MRCI STATE 6.1 Energy               -37.697640638649

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.70140458 (Davidson, fixed reference)
 Cluster corrected energies           -37.70139387 (Davidson, relaxed reference)
 Cluster corrected energies           -37.70140458 (Davidson, rotated reference)

 Cluster corrected energies           -37.69952150 (Pople, fixed reference)
 Cluster corrected energies           -37.69951616 (Pople, relaxed reference)
 Cluster corrected energies           -37.69952150 (Pople, rotated reference)



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
 CPU TIMES  *         1.74      0.30      0.20      0.52      0.04      0.47
 REAL TIME  *         2.94 SEC
 DISK USED  *        30.79 MB (local),      175.04 MB (total)
 SF USED    *         6.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -37.75408544  AU                              
 SETTING HLSDIAG(5)     =       -37.75408542  AU                              
 SETTING HLSDIAG(6)     =       -37.75408542  AU                              
 SETTING HLSDIAG(7)     =       -37.75408535  AU                              
 SETTING HLSDIAG(8)     =       -37.75408534  AU                              
 SETTING HLSDIAG(9)     =       -37.70140458  AU                              


        HLSDIAG
    -37.80026592
    -37.80026593
    -37.80026593
    -37.75408544
    -37.75408542
    -37.75408542
    -37.75408535
    -37.75408534
    -37.70140458
                                                  


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


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -37.797225    -37.797225    -37.797225
 Replaced energies:    -37.800266    -37.800266    -37.800266

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -37.749843    -37.749843    -37.749843    -37.749843    -37.749843    -37.697641
 Replaced energies:    -37.754085    -37.754085    -37.754085    -37.754085    -37.754085    -37.701405



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -37.80026593

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       8.95       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       8.95       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -8.95      -0.00       0.00       0.00       0.00       0.00      10.73
                           -0.00      -0.00      12.65      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -12.65       0.00      -8.95      -0.00       0.00       0.00       0.00       0.00     -10.73

    4   1.1  1.0  0.0       0.00      -8.95      -0.00       0.00       0.00       0.00       0.00       8.95       0.00       0.00
                            0.00       0.00       8.95       0.00       0.00       0.00      -0.00       0.00       8.95      -0.00

    5   2.1  1.0  0.0       8.95      -0.00      -0.00       0.00       0.00       0.00      -8.95      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -8.95      -0.00      -0.00      -0.00      -0.00       0.00      -8.95      -0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -8.95      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       8.95      -0.00      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       8.95      -0.00      -0.00       0.00       0.00       0.00      10.73
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     -12.65       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -8.95      -0.00      -0.00       0.00      12.65      -0.00      10.73

   10   1.1  0.0  0.0      -0.00      10.73       0.00       0.00       0.00       0.00      -0.00      10.73       0.00   10135.45
                           -0.00       0.00      10.73       0.00      -0.00      -0.00       0.00      -0.00     -10.73       0.00

   11   2.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           10.73      -0.00      -0.00      -0.00      15.17      -0.00     -10.73       0.00       0.00      -0.00

   12   3.1  0.0  0.0     -10.73      -0.00       0.00       0.00       0.00       0.00     -10.73      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     -15.17      -0.00       0.00       0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00       8.67       0.00       0.00       0.00      -0.00       0.00       8.67       0.00
                           -0.00       3.33       0.00     -16.97      -0.00       0.00       0.00      -3.33      -0.00      -0.00

   14   5.1  0.0  0.0       0.00       0.00       8.85       0.00       0.00       0.00       0.00       0.00       8.85       0.00
                            0.00     -11.93      -0.00       4.35       0.00       0.00      -0.00      11.93       0.00      -0.00

   15   6.1  0.0  0.0       0.00       0.00      17.12       0.00       0.00       0.00       0.00       0.00      17.12       0.00
                            0.00      17.12       0.00      24.21       0.00       0.00      -0.00     -17.12      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00     -10.73      -0.00       0.00       0.00
                          -10.73      -0.00       0.00      -0.00      -0.00

    2   2.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -3.33      11.93     -17.12

    3   3.1  1.0  1.0       0.00       0.00       8.67       8.85      17.12
                            0.00       0.00      -0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      16.97      -4.35     -24.21

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -15.17      -0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      15.17      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00     -10.73      -0.00       0.00       0.00
                           10.73       0.00      -0.00       0.00       0.00

    8   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       3.33     -11.93      17.12

    9   3.1  1.0 -1.0       0.00       0.00       8.67       8.85      17.12
                           -0.00      -0.00       0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   10135.45       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   10135.45       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   10135.47       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   10135.47       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21697.56
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -37.80026593 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      12.654       0.000       0.000

    2    1  |1 1>+              0.000       0.001       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -12.654      -0.000       0.000      -0.000     -12.654

    1    1  |1 0>               0.000      -0.000       0.000       0.002       0.000       0.000       0.000     -12.654
                                0.000       0.000      12.654       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.001       0.000      12.654       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -12.654      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      12.654       0.000       0.002       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     -12.654       0.000       0.000       0.000       0.001
                               -0.000      -0.000      12.654       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000     -12.654       0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      15.174       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      15.174      -0.000      15.174      -0.000

    3    1  |0 0>             -15.174      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -15.174       0.000      -0.000

    4    1  |0 0>              -0.000       0.000      12.257       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -16.972      -0.000       0.000      -0.000       4.716

    5    1  |0 0>               0.000       0.000      12.522       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       4.354       0.000       0.000       0.000     -16.875

    6    1  |0 0>               0.000       0.000      24.210       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      24.210       0.000       0.000       0.000      24.210

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000     -15.174      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      15.174      -0.000      -0.000       0.000       0.000       0.000
                               12.654       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      12.257      12.522      24.210
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      16.972      -4.354     -24.210

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -15.174      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      15.174      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -15.174      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -4.716      16.875     -24.210

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.175       0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000   10135.448       0.000       0.000       0.000       0.000       0.000
                               15.175       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   10135.450       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   10135.451       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   10135.468       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   10135.469       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21697.559
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -37.80038161    -0.00011568      -25.39      0.00000000        0.00      0.0000
    2   -37.80032359    -0.00005765      -12.65      0.00005802       12.73      0.0016
    3   -37.80032359    -0.00005765      -12.65      0.00005803       12.74      0.0016
    4   -37.80032358    -0.00005765      -12.65      0.00005803       12.74      0.0016
    5   -37.80020848     0.00005745       12.61      0.00017313       38.00      0.0047
    6   -37.80020848     0.00005745       12.61      0.00017313       38.00      0.0047
    7   -37.80020848     0.00005745       12.61      0.00017313       38.00      0.0047
    8   -37.80020848     0.00005746       12.61      0.00017313       38.00      0.0047
    9   -37.80020848     0.00005746       12.61      0.00017313       38.00      0.0047
   10   -37.75408523     0.04618070    10135.49      0.04629638    10160.88      1.2598
   11   -37.75408522     0.04618072    10135.50      0.04629639    10160.88      1.2598
   12   -37.75408522     0.04618072    10135.50      0.04629640    10160.88      1.2598
   13   -37.75408514     0.04618080    10135.51      0.04629647    10160.90      1.2598
   14   -37.75408513     0.04618080    10135.51      0.04629648    10160.90      1.2598
   15   -37.70140421     0.09886172    21697.64      0.09897740    21723.03      2.6933

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000000  0.70707797 -0.00000000 -0.00000000 -0.00000000  0.70713401 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.70709289 -0.00000000  0.00000000  0.00000000  0.70711908  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.57736475  0.00000000  0.00000000 -0.00000000  0.78640077 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.57733325 -0.00000000  0.00000000 -0.00000000  0.20303541 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.70242255 -0.00000000 -0.00000000  0.00000000  0.70234553
                           0.00000000  0.00000000  0.00000000  0.08138593 -0.00000000  0.00000000  0.00000000  0.08177652

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.70713559 -0.00000000  0.00000000  0.00000000 -0.70707638  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.70239289 -0.00000000 -0.00000000  0.00000000  0.70237518
                          -0.00000000 -0.00000000 -0.00000000 -0.08138249 -0.00000000  0.00000000  0.00000000  0.08177998

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.57734957 -0.00000000  0.00000000 -0.00000000  0.58339177  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.70712067 -0.00000000  0.00000000 -0.00000000 -0.70709131 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00211995 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00024518
                           0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00210572

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00211995 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00102080  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00185799 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00193039 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00149903 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00149903 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.21958947  0.00000000 -0.00000000  0.00000000  0.00121076  0.00123700  0.00111451
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.79085947  0.00000000  0.00000000 -0.00000000  0.00167665 -0.00043005 -0.00111451

   2    1  |1 0>           0.00000000  0.00000000  0.00001197  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00149898  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00149903 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00001197 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00149898 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.57124187 -0.00000000 -0.00000000  0.00000000 -0.00046589  0.00166704 -0.00111451

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00149903  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.99999775 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.99996586  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00798603  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.99999775 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00185798  0.00000000  0.00000000  0.00000000  0.99999775  0.00001795 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00102080  0.00000000 -0.00000000 -0.00000000 -0.00001795  0.99999775 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.99999814
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -37.80038161     -0.00011568      -25.39      0.00000000        0.00      0.0000
     2   1    -37.80032359     -0.00005765      -12.65      0.00005802       12.73      0.0016
     3   1    -37.80032359     -0.00005765      -12.65      0.00005803       12.74      0.0016
     4   1    -37.80032358     -0.00005765      -12.65      0.00005803       12.74      0.0016
     5   1    -37.80020848      0.00005745       12.61      0.00017313       38.00      0.0047
     6   1    -37.80020848      0.00005745       12.61      0.00017313       38.00      0.0047
     7   1    -37.80020848      0.00005745       12.61      0.00017313       38.00      0.0047
     8   1    -37.80020848      0.00005746       12.61      0.00017313       38.00      0.0047
     9   1    -37.80020848      0.00005746       12.61      0.00017313       38.00      0.0047
    10   1    -37.75408523      0.04618070    10135.49      0.04629638    10160.88      1.2598
    11   1    -37.75408522      0.04618072    10135.50      0.04629639    10160.88      1.2598
    12   1    -37.75408522      0.04618072    10135.50      0.04629640    10160.88      1.2598
    13   1    -37.75408514      0.04618080    10135.51      0.04629647    10160.90      1.2598
    14   1    -37.75408513      0.04618080    10135.51      0.04629648    10160.90      1.2598
    15   1    -37.70140421      0.09886172    21697.64      0.09897740    21723.03      2.6933

 E0 =    -37.80026593 is the energy of the lowest zeroth-order state
 E1 =    -37.80038161 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.70707797 -0.00000000 -0.00000000 -0.00000000  0.70713401 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.70709289 -0.00000000  0.00000000  0.00000000  0.70711908  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.57736475  0.00000000  0.00000000 -0.00000000  0.78640077 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.57733325 -0.00000000  0.00000000 -0.00000000  0.20303541 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.70242255 -0.00000000 -0.00000000  0.00000000  0.70234553
                                0.00000000  0.00000000  0.00000000  0.08138593 -0.00000000  0.00000000  0.00000000  0.08177652

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.70713559 -0.00000000  0.00000000  0.00000000 -0.70707638  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.70239289 -0.00000000 -0.00000000  0.00000000  0.70237518
                               -0.00000000 -0.00000000 -0.00000000 -0.08138249 -0.00000000  0.00000000  0.00000000  0.08177998

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.57734957 -0.00000000  0.00000000 -0.00000000  0.58339177  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.70712067 -0.00000000  0.00000000 -0.00000000 -0.70709131 -0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00211995 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00024518
                                0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00210572

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00211995 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00102080  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00185799 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00193039 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00149903 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00149903 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.21958947  0.00000000 -0.00000000  0.00000000  0.00121076  0.00123700  0.00111451
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.79085947  0.00000000  0.00000000 -0.00000000  0.00167665 -0.00043005 -0.00111451

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00001197  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00149898  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00149903 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00001197 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00149898 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.57124187 -0.00000000 -0.00000000  0.00000000 -0.00046589  0.00166704 -0.00111451

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00149903  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.99999775 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.99996586  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00798603  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.99999775 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00185798  0.00000000  0.00000000  0.00000000  0.99999775  0.00001795 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00102080  0.00000000 -0.00000000 -0.00000000 -0.00001795  0.99999775 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.99999814
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        33.34%    0.00%    0.00%    0.00%   61.84%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         33.33%    0.00%    0.00%    0.00%    4.12%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   34.03%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         4.82%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         62.55%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        32.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
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
 CPU TIMES  *         3.56      1.82      0.30      0.20      0.52      0.04      0.47
 REAL TIME  *         4.88 SEC
 DISK USED  *        30.81 MB (local),      251.06 MB (total)
 SF USED    *        18.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -37.701404211256

              CI              CI           MULTI         RHF-SCF
    -37.69764064    -37.79722547    -37.62020778    -37.70180810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
