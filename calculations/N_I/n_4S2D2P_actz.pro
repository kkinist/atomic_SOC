
 Working directory              : /wrk/irikura/molpro.PynQFx7UlT/
 Global scratch directory       : /wrk/irikura/molpro.PynQFx7UlT/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.PynQFx7UlT/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,N SO-CI
                                                                                 ! Active space (5,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={N};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=7,sym=2,spin=3}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=2,spin=3;state,1;
     wf,sym=2,spin=1;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=3;state,1; save,5203.2}
 hlsdiag = energd
 {ci;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   N SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:45:39  
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

 Library entry N      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry N      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry N      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry N      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  N       7.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    7
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

     3.146 MB (compressed) written to integral file ( 17.5%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.511E-02 0.196E-01 0.655E-01 0.190E+00 0.246E+00 0.246E+00 0.246E+00 0.246E+00
         2 0.168E-01 0.168E-01 0.168E-01 0.185E+00 0.185E+00 0.185E+00 0.406E+00 0.406E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.68      0.46
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.27 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   0

 NELEC=    7   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -54.37876999     -54.37876999     0.00D+00     0.10D+00     0     0       0.01      0.01    start
   2      -54.42477473      -0.04600474     0.12D-01     0.17D-01     1     0       0.00      0.01    diag2
   3      -54.42649174      -0.00171701     0.42D-02     0.25D-02     2     0       0.00      0.01    diag2
   4      -54.42682634      -0.00033461     0.12D-02     0.17D-02     3     0       0.00      0.01    diag2
   5      -54.42683829      -0.00001194     0.19D-03     0.58D-03     4     0       0.00      0.01    diag2
   6      -54.42683840      -0.00000012     0.21D-04     0.63D-04     5     0       0.01      0.02    diag2
   7      -54.42683840      -0.00000000     0.22D-05     0.51D-05     6     0       0.00      0.02    diag2
   8      -54.42683840      -0.00000000     0.24D-06     0.82D-06     7     0       0.00      0.02    fixocc
   9      -54.42683840      -0.00000000     0.10D-07     0.15D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -54.426838404183
  RHF One-electron energy             -73.979386138601
  RHF Two-electron energy              19.552547734418
  RHF Kinetic energy                   54.620409449184
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.996456067486

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -15.63896     1  1  s    0.99938
    2.1     2.00000    -0.94726     1  2  s    1.00843
    1.2     1.00000    -0.56728     1  1  px   0.99685
    2.2     1.00000    -0.56728     1  1  py   0.95461    1  1  pz  -0.28712
    3.2     1.00000    -0.56728     1  1  py   0.28712    1  1  pz   0.95461


 HOMO      3.2    -0.567285 =     -15.4366eV
 LUMO      3.1     0.117731 =       3.2036eV
 LUMO-HOMO         0.685015 =      18.6402eV

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
 CPU TIMES  *         0.70      0.03      0.46
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.44 MB (local),      168.32 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 6   4 3 5 2 1 6 4 3 5 2   1 6 4 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 2 1 8  10 6 5 4 9 7 3 2 1 8  10 6 9 7 4 5 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    235
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0    -54.32079159     -54.32249099   -0.00169940    0.04249990 0.00022063 0.00000000  0.46E-01      0.12
   2    5   10    0    -54.32250088     -54.32250102   -0.00000014    0.00042225 0.00000001 0.00000000  0.39E-03      0.25
   3    6   12    0    -54.32250102     -54.32250102   -0.00000000    0.00000024 0.00000001 0.00000000  0.39E-07      0.31

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.15E-07)
                       Final energy:    -54.32250102
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -54.425216813141
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.52267473
 One electron energy                           -73.83980621
 Two electron energy                            19.41458940
 Virial ratio                                    1.99821253
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -54.322198222061
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.52267473
 One electron energy                           -73.83980621
 Two electron energy                            19.51760799
 Virial ratio                                    1.99632306
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -54.322198222012
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.52267473
 One electron energy                           -73.83980621
 Two electron energy                            19.51760799
 Virial ratio                                    1.99632306
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -54.322198221854
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.52267473
 One electron energy                           -73.83980621
 Two electron energy                            19.51760799
 Virial ratio                                    1.99632306
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -54.322198221657
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.52267473
 One electron energy                           -73.83980621
 Two electron energy                            19.51760799
 Virial ratio                                    1.99632306
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -54.322198221651
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.52267473
 One electron energy                           -73.83980621
 Two electron energy                            19.51760799
 Virial ratio                                    1.99632306
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy               -54.288767081099
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.50255590
 One electron energy                           -73.80421234
 Two electron energy                            19.51544526
 Virial ratio                                    1.99607745
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy               -54.288767080838
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.50255590
 One electron energy                           -73.80421234
 Two electron energy                            19.51544526
 Virial ratio                                    1.99607745
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy               -54.288767080513
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.50255590
 One electron energy                           -73.80421234
 Two electron energy                            19.51544526
 Virial ratio                                    1.99607745
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     2.125707863351
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000189
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999999327
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.874309416937
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999981
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000000012
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999999
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.665772155661
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999999743
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000515
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000014
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.334218261777
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000026
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999990
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999983
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.208519980989
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000067
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000158
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999999986
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.791472321285
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999993
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999999998
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000000018
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 3   5 6 4 2 1 4 2 6 3 5   1 2 4 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 310   8 9 7 5 6 4 2 1 3 4   610 8 5 7 9 3 1 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -15.67321     1  1  s    0.99933
    2.1     1.97839    -0.96245     1  2  s    1.01883
    1.2     1.00720    -0.20058     1  1  py   0.98068
    2.2     1.00720    -0.20058     1  1  px   0.98068
    3.2     1.00720    -0.20058     1  1  pz   0.98068
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:      -54.42521681
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aab          0.79492977     -0.00000007      0.00000139     -0.00000000     -0.18642245     -0.00000000      0.00000000
 2 baa         -0.23601831      0.00000029     -0.00000583      0.00000000      0.78164060     -0.00000000      0.00000000
 2 0a2         -0.00000000     -0.00000562     -0.70710679      0.00000071     -0.00000527      0.00000302      0.69555011
 2 a02          0.00000000     -0.70710679      0.00000562     -0.00000334      0.00000026      0.69555011     -0.00000302
 2 02a          0.00000000      0.00000334     -0.00000071     -0.70710679      0.00000000     -0.00000180      0.00000090
 2 20a         -0.00000000     -0.00000334      0.00000071      0.70710678     -0.00000000     -0.00000180      0.00000090
 2 a20         -0.00000000      0.70710678     -0.00000562      0.00000334     -0.00000026      0.69555012     -0.00000302
 2 2a0          0.00000000      0.00000562      0.70710677     -0.00000071      0.00000527      0.00000302      0.69555013
 2 aba         -0.55891146     -0.00000022      0.00000444     -0.00000000     -0.59521815      0.00000000     -0.00000000
 0 22a         -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000047     -0.00000023
 0 2a2          0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000078     -0.18005573
 0 a22         -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.18005573      0.00000078
 
 Energy:      -54.32219822    -54.32219822    -54.32219822    -54.32219822    -54.32219822    -54.28876708    -54.28876708

 State:              8
 2 aab          0.00000000
 2 baa          0.00000000
 2 0a2         -0.00000090
 2 a02          0.00000180
 2 02a          0.69555011
 2 20a          0.69555012
 2 a20          0.00000180
 2 2a0         -0.00000090
 2 aba         -0.00000000
 0 22a         -0.18005573
 0 2a2          0.00000023
 0 a22         -0.00000047
 
 Energy:      -54.28876708
 


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
 CPU TIMES  *         1.03      0.32      0.03      0.46
 REAL TIME  *         2.09 SEC
 DISK USED  *        29.75 MB (local),      169.86 MB (total)
 SF USED    *         1.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -54.42521681  -0.0
    -54.32219822   6.0
    -54.32219822   6.0
    -54.32219822   6.0
    -54.32219822   6.0
    -54.32219822   6.0
    -54.28876708   2.0
    -54.28876708   2.0
    -54.28876708   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  7
 Maximum number of shells:             2
 Maximum number of spin couplings:     4

 Reference space:        1 conf        1 CSFs
 N elec internal:        4 conf        4 CSFs
 N-1 el internal:       13 conf       16 CSFs
 N-2 el internal:        7 conf       19 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -54.42521681

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      16

 Number of internal configurations:                    1
 Number of singly external configurations:           424
 Number of doubly external configurations:          7228
 Total number of contracted configurations:         7653
 Total number of uncontracted configurations:      14121

 Diagonal Coupling coefficients finished.               Storage:    172891 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186199 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -54.42521681    -0.00000000    -0.12452016  0.24D-01  0.18D-01     0.01
    2     1     1     1.03833161    -0.11853308   -54.54374990    -0.11853308    -0.00069392  0.79D-04  0.13D-03     0.02
    3     1     1     1.04000604    -0.11931634   -54.54453315    -0.00078325    -0.00002561  0.13D-04  0.28D-05     0.03
    4     1     1     1.04032691    -0.11934824   -54.54456505    -0.00003190    -0.00000136  0.21D-06  0.28D-06     0.04
    5     1     1     1.04039586    -0.11934984   -54.54456665    -0.00000160    -0.00000004  0.90D-08  0.52D-08     0.05
    6     1     1     1.04038697    -0.11934988   -54.54456669    -0.00000004    -0.00000000  0.45D-09  0.12D-09     0.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P  20.0%   0.0%  40.0%

 Initialization:  20.0%
 Other:           20.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2///           0.9803983


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98039829 (fixed)   0.98039829 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.00000000
 Singles      0.02297965   -0.04854289   -0.04929443
 Pairs        0.01740732   -0.07080699   -0.07005545
 Total        1.04038697   -0.11934988   -0.11934988
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.42521681
 Nuclear energy                         0.00000000
 Kinetic energy                        54.71516140
 One electron energy                  -73.86035610
 Two electron energy                   19.31578941
 Virial quotient                       -0.99688213
 Correlation energy                    -0.11934988
 !CI(SD) STATE 1.2 Energy             -54.544566690746

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.54938687 (Davidson, fixed reference)
 Cluster corrected energies           -54.54938687 (Davidson, relaxed reference)

 Cluster corrected energies           -54.54456669 (Pople, fixed reference)
 Cluster corrected energies           -54.54456669 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.77       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.14      0.10      0.32      0.03      0.46
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.93 MB (local),      170.76 MB (total)
 SF USED    *         1.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =       -54.54938687  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  7
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:       10 conf       11 CSFs
 N elec internal:       16 conf       20 CSFs
 N-1 el internal:       19 conf       35 CSFs
 N-2 el internal:       16 conf       44 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -54.32219822
     2       -54.32219822
     3       -54.32219822
     4       -54.32219822
     5       -54.32219822
     6       -54.28876708
     7       -54.28876708
     8       -54.28876708

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      41
 Number of N-1 electron functions:      35

 Number of internal configurations:                   11
 Number of singly external configurations:           947
 Number of doubly external configurations:         29882
 Total number of contracted configurations:        30840
 Total number of uncontracted configurations:      33015

 Diagonal Coupling coefficients finished.               Storage:    177504 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    188447 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -54.32219822     0.00000000    -0.13350985  0.23D-01  0.19D-01     0.01
    1     2     2     1.00000000     0.00000000   -54.32219822    -0.00000000    -0.13281080  0.23D-01  0.19D-01     0.01
    1     3     3     1.00000000     0.00000000   -54.32219822     0.00000000    -0.13269698  0.23D-01  0.19D-01     0.01
    1     4     4     1.00000000     0.00000000   -54.32219822    -0.00000000    -0.13251311  0.23D-01  0.19D-01     0.01
    1     5     5     1.00000000     0.00000000   -54.32219822     0.00000000    -0.13285742  0.23D-01  0.19D-01     0.01
    1     6     6     1.00000000     0.00000000   -54.28876708    -0.00000000    -0.12077795  0.14D-01  0.23D-01     0.01
    1     7     7     1.00000000     0.00000000   -54.28876708     0.00000000    -0.12089838  0.14D-01  0.23D-01     0.01
    1     8     8     1.00000000     0.00000000   -54.28876708    -0.00000000    -0.12078359  0.14D-01  0.23D-01     0.01
    2     1     1     1.03957272    -0.12969139   -54.45188962    -0.12969139    -0.00273519  0.26D-03  0.48D-03     0.14
    2     2     2     1.03956481    -0.12965701   -54.45185523    -0.12965701    -0.00275893  0.27D-03  0.48D-03     0.14
    2     3     3     1.03957786    -0.12964977   -54.45184799    -0.12964977    -0.00276929  0.27D-03  0.48D-03     0.14
    2     4     4     1.03979452    -0.12963611   -54.45183434    -0.12963611    -0.00280728  0.28D-03  0.49D-03     0.14
    2     5     5     1.03972020    -0.12962081   -54.45181904    -0.12962081    -0.00280641  0.28D-03  0.49D-03     0.14
    2     6     6     1.03604115    -0.11959217   -54.40835925    -0.11959217    -0.00239278  0.27D-03  0.43D-03     0.14
    2     7     7     1.03602045    -0.11956670   -54.40833379    -0.11956670    -0.00241252  0.27D-03  0.44D-03     0.14
    2     8     8     1.03603516    -0.11956116   -54.40832824    -0.11956116    -0.00241945  0.27D-03  0.44D-03     0.14
    3     1     1     1.04315046    -0.13257917   -54.45477739    -0.00288778    -0.00013988  0.54D-04  0.19D-04     0.26
    3     2     2     1.04314143    -0.13257763   -54.45477586    -0.00292063    -0.00014068  0.54D-04  0.19D-04     0.26
    3     3     3     1.04312433    -0.13257157   -54.45476979    -0.00292181    -0.00014342  0.54D-04  0.19D-04     0.26
    3     4     4     1.04311647    -0.13257112   -54.45476934    -0.00293500    -0.00014339  0.54D-04  0.19D-04     0.26
    3     5     5     1.04312119    -0.13257093   -54.45476915    -0.00295012    -0.00014403  0.55D-04  0.19D-04     0.26
    3     6     6     1.03988372    -0.12218585   -54.41095293    -0.00259368    -0.00016757  0.11D-03  0.18D-04     0.26
    3     7     7     1.03987617    -0.12218402   -54.41095110    -0.00261732    -0.00016869  0.11D-03  0.18D-04     0.26
    3     8     8     1.03987303    -0.12218342   -54.41095050    -0.00262226    -0.00016897  0.11D-03  0.18D-04     0.26
    4     1     1     1.04465741    -0.13275959   -54.45495781    -0.00018041    -0.00001350  0.47D-05  0.21D-05     0.38
    4     2     2     1.04465410    -0.13275940   -54.45495762    -0.00018177    -0.00001360  0.47D-05  0.22D-05     0.38
    4     3     3     1.04465268    -0.13275823   -54.45495645    -0.00018666    -0.00001433  0.50D-05  0.22D-05     0.38
    4     4     4     1.04465286    -0.13275819   -54.45495642    -0.00018708    -0.00001437  0.50D-05  0.22D-05     0.38
    4     5     5     1.04464967    -0.13275816   -54.45495638    -0.00018722    -0.00001440  0.50D-05  0.22D-05     0.38
    4     6     6     1.04229703    -0.12242062   -54.41118770    -0.00023477    -0.00002209  0.70D-05  0.36D-05     0.38
    4     7     7     1.04229319    -0.12242058   -54.41118767    -0.00023656    -0.00002211  0.71D-05  0.36D-05     0.38
    4     8     8     1.04229498    -0.12242053   -54.41118761    -0.00023711    -0.00002217  0.71D-05  0.36D-05     0.38
    5     1     1     1.04491826    -0.13277833   -54.45497655    -0.00001874    -0.00000129  0.39D-06  0.18D-06     0.51
    5     2     2     1.04491680    -0.13277830   -54.45497653    -0.00001890    -0.00000130  0.39D-06  0.19D-06     0.51
    5     3     3     1.04491386    -0.13277821   -54.45497643    -0.00001998    -0.00000137  0.40D-06  0.20D-06     0.51
    5     4     4     1.04491345    -0.13277820   -54.45497642    -0.00002001    -0.00000137  0.40D-06  0.20D-06     0.51
    5     5     5     1.04491334    -0.13277819   -54.45497641    -0.00002003    -0.00000138  0.41D-06  0.20D-06     0.51
    5     6     6     1.04275634    -0.12244888   -54.41121596    -0.00002826    -0.00000252  0.67D-06  0.43D-06     0.51
    5     7     7     1.04275462    -0.12244885   -54.41121593    -0.00002827    -0.00000254  0.68D-06  0.44D-06     0.51
    5     8     8     1.04275464    -0.12244884   -54.41121592    -0.00002831    -0.00000254  0.68D-06  0.44D-06     0.51
    6     1     1     1.04493379    -0.13277992   -54.45497815    -0.00000159    -0.00000010  0.29D-07  0.14D-07     0.63
    6     2     2     1.04493362    -0.13277992   -54.45497814    -0.00000162    -0.00000011  0.30D-07  0.14D-07     0.63
    6     3     3     1.04493194    -0.13277991   -54.45497813    -0.00000170    -0.00000011  0.32D-07  0.15D-07     0.63
    6     4     4     1.04493166    -0.13277991   -54.45497813    -0.00000171    -0.00000011  0.32D-07  0.15D-07     0.63
    6     5     5     1.04493152    -0.13277991   -54.45497813    -0.00000172    -0.00000012  0.33D-07  0.16D-07     0.63
    6     6     6     1.04280098    -0.12245182   -54.41121890    -0.00000295    -0.00000021  0.86D-07  0.30D-07     0.63
    6     7     7     1.04280091    -0.12245182   -54.41121890    -0.00000297    -0.00000021  0.86D-07  0.31D-07     0.63
    6     8     8     1.04280059    -0.12245182   -54.41121890    -0.00000298    -0.00000021  0.86D-07  0.31D-07     0.63
    7     1     1     1.04494616    -0.13278004   -54.45497826    -0.00000012    -0.00000001  0.28D-08  0.13D-08     0.74
    7     2     2     1.04494614    -0.13278004   -54.45497826    -0.00000012    -0.00000001  0.28D-08  0.14D-08     0.74
    7     3     3     1.04494543    -0.13278004   -54.45497826    -0.00000013    -0.00000001  0.31D-08  0.15D-08     0.74
    7     4     4     1.04494542    -0.13278004   -54.45497826    -0.00000013    -0.00000001  0.31D-08  0.15D-08     0.74
    7     5     5     1.04494534    -0.13278004   -54.45497826    -0.00000013    -0.00000001  0.32D-08  0.15D-08     0.74
    7     6     6     1.04284609    -0.12245207   -54.41121915    -0.00000025    -0.00000002  0.63D-08  0.44D-08     0.74
    7     7     7     1.04284602    -0.12245207   -54.41121915    -0.00000025    -0.00000002  0.63D-08  0.44D-08     0.74
    7     8     8     1.04284602    -0.12245207   -54.41121915    -0.00000025    -0.00000002  0.64D-08  0.44D-08     0.74
    8     1     1     1.04494616    -0.13278004   -54.45497826     0.00000000    -0.00000001  0.28D-08  0.13D-08     0.79
    8     2     2     1.04494614    -0.13278004   -54.45497826    -0.00000000    -0.00000001  0.28D-08  0.14D-08     0.79
    8     3     3     1.04494543    -0.13278004   -54.45497826    -0.00000000    -0.00000001  0.31D-08  0.15D-08     0.79
    8     4     4     1.04494542    -0.13278004   -54.45497826    -0.00000000    -0.00000001  0.31D-08  0.15D-08     0.79
    8     5     5     1.04494534    -0.13278004   -54.45497826    -0.00000000    -0.00000001  0.32D-08  0.15D-08     0.79
    8     6     6     1.04286617    -0.12245210   -54.41121918    -0.00000003    -0.00000000  0.73D-09  0.29D-09     0.79
    8     7     7     1.04286622    -0.12245210   -54.41121918    -0.00000003    -0.00000000  0.72D-09  0.29D-09     0.79
    8     8     8     1.04286616    -0.12245210   -54.41121918    -0.00000003    -0.00000000  0.73D-09  0.29D-09     0.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   1.3%  10.1%  30.4%

 Initialization:   1.3%
 Other:           57.0%

 Total CPU:        0.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\/          -0.1485765   0.9669086   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2//\           0.9669085   0.1485765   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 220/           0.0000000   0.0000000   0.0000000  -0.0000000  -0.6917326   0.0000000  -0.0000000   0.6819251
 22/0           0.0000000   0.0000000  -0.0000000  -0.6917326   0.0000000  -0.0000000   0.6819251   0.0000000
 2/20           0.0000000   0.0000000  -0.6917326   0.0000000  -0.0000000   0.6819251   0.0000000  -0.0000000
 202/           0.0000000   0.0000000   0.0000000  -0.0000000   0.6917325   0.0000000  -0.0000000   0.6819251
 2/02           0.0000000   0.0000000   0.6917325   0.0000000  -0.0000000   0.6819251   0.0000000  -0.0000000
 20/2           0.0000000   0.0000000  -0.0000000   0.6917324   0.0000000  -0.0000000   0.6819251   0.0000000
 022/           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000002  -0.0000000   0.0000000  -0.1698590
 0/22           0.0000000   0.0000000  -0.0000002  -0.0000000   0.0000000  -0.1698590  -0.0000000   0.0000000
 02/2           0.0000000   0.0000000   0.0000000  -0.0000003  -0.0000000   0.0000000  -0.1698590  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \//\  11.1    -0.0029005  -0.0581279   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 \//\  12.1     0.0000000  -0.0000000  -0.0000000  -0.0570139   0.0000000  -0.0000000   0.0048373   0.0000000
 \//\  10.1    -0.0000000   0.0000000  -0.0000000   0.0000000   0.0570138  -0.0000000   0.0000000  -0.0048373

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.975293    0.000000    0.000000    0.000000    0.076098    0.000000    0.000000    0.000000
 2          -0.076098    0.000000    0.000000    0.000000    0.975293    0.000000    0.000000    0.000000
 3           0.000000    0.978258    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.978258   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.978258    0.000000   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.979210   -0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.979210   -0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.979210

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978257   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.978257    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.978258    0.000000   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.978258    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.978258    0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.979210   -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.979210   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.979210


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97529285 (fixed)   0.97825718 (relaxed)   0.97825718 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07603425
 Singles      0.02373543   -0.05332835   -0.05404964
 Pairs        0.02121073    0.00000000   -0.00269616
 Total        1.04494616   -0.05332835   -0.13278004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32219822
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63615394
 One electron energy                  -73.70996405
 Two electron energy                   19.25498578
 Virial quotient                       -0.99668396
 Correlation energy                    -0.13278004
 !MRCI STATE 1.2 Energy               -54.454978264801

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46094622 (Davidson, fixed reference)
 Cluster corrected energies           -54.46094622 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46094622 (Davidson, rotated reference)

 Cluster corrected energies           -54.45796074 (Pople, fixed reference)
 Cluster corrected energies           -54.45796074 (Pople, relaxed reference)
 Cluster corrected energies           -54.45796074 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97529286 (fixed)   0.97825719 (relaxed)   0.97825719 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07603419
 Singles      0.02373541   -0.05332841   -0.05404967
 Pairs        0.02121073   -0.00000000   -0.00269618
 Total        1.04494614   -0.05332841   -0.13278004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32219822
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63615657
 One electron energy                  -73.70996906
 Two electron energy                   19.25499080
 Virial quotient                       -0.99668391
 Correlation energy                    -0.13278004
 !MRCI STATE 2.2 Energy               -54.454978264363

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46094621 (Davidson, fixed reference)
 Cluster corrected energies           -54.46094621 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46094621 (Davidson, rotated reference)

 Cluster corrected energies           -54.45796073 (Pople, fixed reference)
 Cluster corrected energies           -54.45796073 (Pople, relaxed reference)
 Cluster corrected energies           -54.45796073 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97825752 (fixed)   0.97825752 (relaxed)   0.97825752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07603428
 Singles      0.02373481   -0.05332837   -0.05404958
 Pairs        0.02121062   -0.00000000   -0.00269618
 Total        1.04494543   -0.05332837   -0.13278004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32219822
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63617208
 One electron energy                  -73.70998334
 Two electron energy                   19.25500508
 Virial quotient                       -0.99668363
 Correlation energy                    -0.13278004
 !MRCI STATE 3.2 Energy               -54.454978263000

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46094612 (Davidson, fixed reference)
 Cluster corrected energies           -54.46094612 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46094612 (Davidson, rotated reference)

 Cluster corrected energies           -54.45796069 (Pople, fixed reference)
 Cluster corrected energies           -54.45796069 (Pople, relaxed reference)
 Cluster corrected energies           -54.45796069 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97825752 (fixed)   0.97825752 (relaxed)   0.97825752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07603420
 Singles      0.02373485   -0.05332845   -0.05404961
 Pairs        0.02121057    0.00000000   -0.00269623
 Total        1.04494542   -0.05332845   -0.13278004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32219822
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63616988
 One electron energy                  -73.70998322
 Two electron energy                   19.25500495
 Virial quotient                       -0.99668367
 Correlation energy                    -0.13278004
 !MRCI STATE 4.2 Energy               -54.454978262897

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46094612 (Davidson, fixed reference)
 Cluster corrected energies           -54.46094612 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46094612 (Davidson, rotated reference)

 Cluster corrected energies           -54.45796068 (Pople, fixed reference)
 Cluster corrected energies           -54.45796068 (Pople, relaxed reference)
 Cluster corrected energies           -54.45796068 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97825756 (fixed)   0.97825756 (relaxed)   0.97825756 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07603422
 Singles      0.02373478   -0.05332843   -0.05404961
 Pairs        0.02121056   -0.00000001   -0.00269621
 Total        1.04494534   -0.05332844   -0.13278004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32219822
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63617058
 One electron energy                  -73.70998456
 Two electron energy                   19.25500629
 Virial quotient                       -0.99668366
 Correlation energy                    -0.13278004
 !MRCI STATE 5.2 Energy               -54.454978262698

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46094611 (Davidson, fixed reference)
 Cluster corrected energies           -54.46094611 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46094611 (Davidson, rotated reference)

 Cluster corrected energies           -54.45796068 (Pople, fixed reference)
 Cluster corrected energies           -54.45796068 (Pople, relaxed reference)
 Cluster corrected energies           -54.45796068 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97921028 (fixed)   0.97923225 (relaxed)   0.97921028 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004489   -0.00000000   -0.09076489
 Singles      0.01608883   -0.02779772   -0.02854389
 Pairs        0.02677927   -0.00000000   -0.00314332
 Total        1.04291299   -0.02779772   -0.12245210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28876708
 Nuclear energy                         0.00000000
 Kinetic energy                        54.59469395
 One electron energy                  -73.62427029
 Two electron energy                   19.21305111
 Virial quotient                       -0.99663933
 Correlation energy                    -0.12245210
 !MRCI STATE 6.2 Energy               -54.411219184862

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.41647397 (Davidson, fixed reference)
 Cluster corrected energies           -54.41646824 (Davidson, relaxed reference)
 Cluster corrected energies           -54.41647397 (Davidson, rotated reference)

 Cluster corrected energies           -54.41384537 (Pople, fixed reference)
 Cluster corrected energies           -54.41384251 (Pople, relaxed reference)
 Cluster corrected energies           -54.41384537 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.97921025 (fixed)   0.97923223 (relaxed)   0.97921025 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004489   -0.00000000   -0.09076486
 Singles      0.01608886   -0.02779775   -0.02854390
 Pairs        0.02677928    0.00000000   -0.00314335
 Total        1.04291303   -0.02779775   -0.12245210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28876708
 Nuclear energy                         0.00000000
 Kinetic energy                        54.59469348
 One electron energy                  -73.62427014
 Two electron energy                   19.21305095
 Virial quotient                       -0.99663934
 Correlation energy                    -0.12245210
 !MRCI STATE 7.2 Energy               -54.411219184841

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.41647398 (Davidson, fixed reference)
 Cluster corrected energies           -54.41646824 (Davidson, relaxed reference)
 Cluster corrected energies           -54.41647398 (Davidson, rotated reference)

 Cluster corrected energies           -54.41384537 (Pople, fixed reference)
 Cluster corrected energies           -54.41384251 (Pople, relaxed reference)
 Cluster corrected energies           -54.41384537 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97921028 (fixed)   0.97923226 (relaxed)   0.97921028 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004489    0.00000000   -0.00000527
 Singles      0.01608882   -0.02779773   -0.02854389
 Pairs        0.02677927   -0.09465437   -0.09390294
 Total        1.04291297   -0.12245210   -0.12245210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28876708
 Nuclear energy                         0.00000000
 Kinetic energy                        54.59469398
 One electron energy                  -73.62427049
 Two electron energy                   19.21305130
 Virial quotient                       -0.99663933
 Correlation energy                    -0.12245210
 !MRCI STATE 8.2 Energy               -54.411219184774

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.41647397 (Davidson, fixed reference)
 Cluster corrected energies           -54.41646824 (Davidson, relaxed reference)
 Cluster corrected energies           -54.41647397 (Davidson, rotated reference)

 Cluster corrected energies           -54.41384537 (Pople, fixed reference)
 Cluster corrected energies           -54.41384251 (Pople, relaxed reference)
 Cluster corrected energies           -54.41384537 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.72       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.04      0.90      0.10      0.32      0.03      0.46
 REAL TIME  *         3.27 SEC
 DISK USED  *        31.87 MB (local),      180.49 MB (total)
 SF USED    *        19.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -54.46094622  AU                              
 SETTING HLSDIAG(3)     =       -54.46094621  AU                              
 SETTING HLSDIAG(4)     =       -54.46094612  AU                              
 SETTING HLSDIAG(5)     =       -54.46094612  AU                              
 SETTING HLSDIAG(6)     =       -54.46094611  AU                              
 SETTING HLSDIAG(7)     =       -54.41647397  AU                              
 SETTING HLSDIAG(8)     =       -54.41647398  AU                              
 SETTING HLSDIAG(9)     =       -54.41647397  AU                              


        HLSDIAG
    -54.54938687
    -54.46094622
    -54.46094621
    -54.46094612
    -54.46094612
    -54.46094611
    -54.41647397
    -54.41647398
    -54.41647397
                                                  

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


 CPU time:      0.18 sec, REAL time:      0.20 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.72       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.94      0.88      0.90      0.10      0.32      0.03      0.46
 REAL TIME  *         4.33 SEC
 DISK USED  *        31.89 MB (local),      256.51 MB (total)
 SF USED    *        19.43 MB
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
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:    -54.544567
 Replaced energies:    -54.549387

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:    -54.454978    -54.454978    -54.454978    -54.454978    -54.454978    -54.411219    -54.411219    -54.411219
 Replaced energies:    -54.460946    -54.460946    -54.460946    -54.460946    -54.460946    -54.416474    -54.416474    -54.416474



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -54.54938687

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -48.51
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     -28.01
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   19410.48       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.58      -0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   19410.48       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -3.76      -0.00

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   19410.50       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -1.90       0.00      -0.00

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   19410.50       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       1.90      -0.00      -0.00     -34.98

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   19410.50       0.00
                            0.00       0.00      -0.00      -0.00      -0.58       3.76      -0.00       0.00       0.00      -0.00

   10   6.2  0.5  0.5     -48.51       0.00     -28.01       0.00       0.00       0.00       0.00       0.00       0.00   29171.01
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      34.98       0.00      -0.00

   11   7.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           48.51       0.00     -28.01      -0.00      -0.00      -0.00     -34.98       0.00      -0.00       0.85

   12   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -56.02      -0.00      -0.00      39.92       6.13      -0.00      -0.00      -0.00       0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       3.54       0.00      -0.00     -14.65
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -2.96       0.00      -0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.38       0.00      -0.00     -37.64
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -2.38      -0.00       0.00

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -3.54       1.38      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.90       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       1.90       0.00
                           -0.00       0.00       0.00      -0.00       2.96       2.38       0.00       0.00       0.00      -0.00

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -1.90      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       1.90      -0.00       0.00      34.98

   18   6.2  0.5 -0.5       0.00     -28.01       0.00     -48.51      14.65      37.64       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     -34.98      -0.00

   19   7.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      34.98       0.00
                           -0.00      28.01       0.00     -48.51     -25.27      31.50       0.00       0.00      -0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -34.98       0.00       0.00
                           -0.00       0.00     -56.02      -0.00      -0.00       0.00     -34.98      -0.00       0.00      -0.85


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -48.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -28.01      -0.00       0.00
                           -0.00      56.02      -0.00       0.00       0.00      -0.00      -0.00       0.00     -28.01      -0.00

    3   1.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           28.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      56.02

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -48.51      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      48.51       0.00

    5   1.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -3.54      -0.00       0.00      14.65       0.00      -0.00
                            0.00     -39.92       0.00       0.00      -0.00      -2.96       0.00      -0.00      25.27       0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00      -0.00       1.38      -0.00       0.00      37.64       0.00      -0.00
                            0.00      -6.13      -0.00      -0.00       0.00      -2.38      -0.00       0.00     -31.50      -0.00

    7   3.2  0.5  0.5       0.00       0.00       3.54      -1.38      -0.00       0.00       0.00       0.00      -0.00      -0.00
                           34.98       0.00       0.00      -0.00       0.00      -0.00      -1.90       0.00      -0.00      34.98

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.90      -0.00       0.00     -34.98
                           -0.00       0.00       2.96       2.38       0.00      -0.00       0.00      -0.00      -0.00       0.00

    9   5.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       1.90      -0.00      -0.00      34.98       0.00
                            0.00       0.00      -0.00       0.00       1.90      -0.00      -0.00      34.98       0.00      -0.00

   10   6.2  0.5  0.5       0.00       0.00     -14.65     -37.64      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.85      -0.00       0.00      -0.00      -0.00       0.00     -34.98       0.00      -0.00       0.85

   11   7.2  0.5  0.5   29171.01       0.00      -0.00      -0.00       0.00      -0.00     -34.98      -0.00      -0.00      -0.85
                            0.00      -0.00     -25.27      31.50       0.00       0.00      -0.00       0.00      -0.00       0.00

   12   8.2  0.5  0.5       0.00   29171.01       0.00       0.00       0.00      34.98      -0.00      -0.00       0.85      -0.00
                            0.00      -0.00      -0.00       0.00     -34.98      -0.00       0.00      -0.85      -0.00      -0.00

   13   1.2  0.5 -0.5      -0.00       0.00   19410.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.27       0.00      -0.00       0.00       0.00      -0.00      -0.58       0.00      -0.00      39.92

   14   2.2  0.5 -0.5      -0.00       0.00       0.00   19410.48       0.00       0.00       0.00       0.00       0.00       0.00
                          -31.50      -0.00      -0.00      -0.00       0.00      -0.00       3.76       0.00      -0.00       6.13

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00   19410.50       0.00       0.00       0.00       0.00       0.00
                           -0.00      34.98      -0.00      -0.00      -0.00       1.90      -0.00       0.00     -34.98      -0.00

   16   4.2  0.5 -0.5      -0.00      34.98       0.00       0.00       0.00   19410.50       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -1.90       0.00       0.00      34.98       0.00      -0.00

   17   5.2  0.5 -0.5     -34.98      -0.00       0.00       0.00       0.00       0.00   19410.50       0.00       0.00       0.00
                            0.00      -0.00       0.58      -3.76       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   18   6.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   29171.01       0.00       0.00
                           -0.00       0.85      -0.00      -0.00      -0.00     -34.98      -0.00       0.00       0.85       0.00

   19   7.2  0.5 -0.5      -0.00       0.85       0.00       0.00       0.00       0.00       0.00       0.00   29171.01       0.00
                            0.00       0.00       0.00       0.00      34.98      -0.00       0.00      -0.85      -0.00       0.00

   20   8.2  0.5 -0.5      -0.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   29171.01
                           -0.00       0.00     -39.92      -6.13       0.00       0.00       0.00      -0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -54.54938761    -0.00000074       -0.16      0.00000000        0.00      0.0000
     2   -54.54938761    -0.00000074       -0.16      0.00000000        0.00      0.0000
     3   -54.54938761    -0.00000074       -0.16      0.00000000        0.00      0.0000
     4   -54.54938761    -0.00000074       -0.16      0.00000000        0.00      0.0000
     5   -54.46096349     0.08842338    19406.69      0.08842412    19406.85      2.4061
     6   -54.46096349     0.08842338    19406.69      0.08842412    19406.85      2.4061
     7   -54.46096349     0.08842339    19406.69      0.08842412    19406.85      2.4061
     8   -54.46096349     0.08842339    19406.69      0.08842412    19406.85      2.4061
     9   -54.46096343     0.08842344    19406.70      0.08842418    19406.86      2.4061
    10   -54.46096343     0.08842344    19406.70      0.08842418    19406.86      2.4061
    11   -54.46092305     0.08846382    19415.57      0.08846456    19415.73      2.4072
    12   -54.46092305     0.08846382    19415.57      0.08846456    19415.73      2.4072
    13   -54.46092304     0.08846383    19415.57      0.08846456    19415.73      2.4072
    14   -54.46092304     0.08846383    19415.57      0.08846456    19415.73      2.4072
    15   -54.41647423     0.13291264    29170.95      0.13291337    29171.11      3.6168
    16   -54.41647423     0.13291264    29170.95      0.13291337    29171.11      3.6168
    17   -54.41647423     0.13291264    29170.95      0.13291338    29171.11      3.6168
    18   -54.41647423     0.13291264    29170.95      0.13291338    29171.11      3.6168
    19   -54.41646627     0.13292060    29172.70      0.13292134    29172.86      3.6170
    20   -54.41646627     0.13292060    29172.70      0.13292134    29172.86      3.6170


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.045895510   0.515459306   0.854807259   0.038656488   0.000000000   0.000000004   0.000000001  -0.000000035
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.852338460  -0.075896807   0.023380162  -0.516920362  -0.000000017   0.000000000   0.000000001   0.000000000
                        -0.000001450   0.000000130  -0.000000031   0.000000667   0.000000029  -0.000000001   0.000000003   0.000000000

    3    1.2  1.5 -0.5   0.075891987   0.852308735  -0.516969815  -0.023385982  -0.000000001  -0.000000034   0.000000000  -0.000000003
                         0.000000001   0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.515410153  -0.045887540  -0.038660008   0.854837165   0.000000002  -0.000000000   0.000000006   0.000000000
                        -0.000000004   0.000000000  -0.000000016   0.000000343  -0.000000004   0.000000000   0.000000035   0.000000001

    5    1.2  0.5  0.5  -0.000004579   0.000000408  -0.000000174   0.000003839  -0.386318972   0.008840600  -0.006086676  -0.000162753
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.670968539  -0.015354599  -0.035484332  -0.000948813

    6    2.2  0.5  0.5  -0.000003828   0.000000341   0.000000208  -0.000004592  -0.018258633   0.000417834   0.130684333   0.003494358
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.031712055  -0.000725705   0.761868407   0.020371537

    7    3.2  0.5  0.5   0.000000256   0.000002879  -0.000005243  -0.000000237  -0.010938264  -0.477982767  -0.006466171   0.241826189
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000006   0.000000000  -0.000000000   0.000000000

    8    4.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000006  -0.000000000   0.000000000  -0.000000000
                         0.000000531   0.000005967  -0.000000122  -0.000000006  -0.009379866  -0.409883542   0.008986109  -0.336068518

    9    5.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.040872735   0.000935341   0.471697941   0.012612693
                        -0.000003089   0.000000275   0.000000232  -0.000005121  -0.023533016   0.000538535  -0.080910995  -0.002163473

   10    6.2  0.5  0.5   0.000149198   0.001675626   0.000925232   0.000041834   0.000000073   0.000003175  -0.000000199   0.000007440
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   11    7.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000003458  -0.000038881  -0.001918003  -0.000086744   0.000000107   0.000004670   0.000000177  -0.000006613

   12    8.2  0.5  0.5   0.000000003  -0.000000000   0.000000000  -0.000000001   0.000006797  -0.000000156   0.000000818   0.000000022
                         0.001636802  -0.000145750   0.000044898  -0.000992676   0.000003914  -0.000000090  -0.000000140  -0.000000004

   13    1.2  0.5 -0.5   0.000000408   0.000004578  -0.000003839  -0.000000174   0.017717785   0.774235835   0.000962670  -0.036002577
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000011  -0.000000000   0.000000001  -0.000000000

   14    2.2  0.5 -0.5   0.000000341   0.000003828   0.000004592   0.000000208   0.000837397   0.036592789  -0.020669061   0.772995385
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000002  -0.000000000   0.000000000   0.000000000

   15    3.2  0.5 -0.5   0.000002880  -0.000000256   0.000000237  -0.000005243  -0.238498146   0.005457839  -0.040883677  -0.001093186
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.414229598  -0.009479326  -0.238345191  -0.006373093

   16    4.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.355213423  -0.008128786   0.331230938   0.008856757
                        -0.000005967   0.000000531  -0.000000006   0.000000121   0.204518805  -0.004680249  -0.056816497  -0.001519211

   17    5.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000275  -0.000003089  -0.000005121  -0.000000232  -0.001079297  -0.047163367  -0.012796899   0.478587021

   18    6.2  0.5 -0.5   0.001675572  -0.000149190  -0.000041846   0.000925329   0.000001584  -0.000000036  -0.000001258  -0.000000034
                        -0.000000001   0.000000000  -0.000000000   0.000000001  -0.000002752   0.000000063  -0.000007333  -0.000000196

   19    7.2  0.5 -0.5  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000004047   0.000000093   0.000006518   0.000000174
                         0.000038770  -0.000003440  -0.000086744   0.001918005  -0.000002330   0.000000053  -0.000001118  -0.000000030

   20    8.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000145740   0.001636745  -0.000992771  -0.000044910   0.000000179   0.000007843  -0.000000022   0.000000830


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000004   0.000000001   0.000000111   0.000002367   0.000000003   0.000028230  -0.000001153   0.002147001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000000  -0.000000000  -0.000009533   0.000000449   0.000001173  -0.000000000   0.000959838   0.000000516
                        -0.000000000  -0.000000001   0.000026539  -0.000001250  -0.000002059   0.000000000  -0.000007743  -0.000000004

    3    1.2  1.5 -0.5   0.000000001  -0.000000000  -0.000001328  -0.000028199   0.000000000   0.000002370   0.000000516  -0.000959869
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.000000000   0.000000000   0.000000800  -0.000000038   0.000013974  -0.000000001  -0.002146931  -0.000001153
                         0.000000001   0.000000004  -0.000002227   0.000000105  -0.000024529   0.000000002   0.000017319   0.000000009

    5    1.2  0.5  0.5  -0.000090367  -0.000272826  -0.212739502   0.010020574  -0.021461958   0.000002097  -0.002748457  -0.000001477
                        -0.003604250  -0.010881574   0.592261768  -0.027897042   0.037673303  -0.000003680   0.000022171   0.000000012

    6    2.2  0.5  0.5   0.000347125   0.001048004  -0.014644621   0.000689799   0.311834299  -0.000030462   0.004260851   0.000002289
                         0.013844986   0.041799333   0.040770281  -0.001920384  -0.547379134   0.000053471  -0.000034371  -0.000000018

    7    3.2  0.5  0.5  -0.530358413   0.175667987   0.026949942   0.572154567   0.000026328   0.269516168   0.000002206  -0.004106758
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    8    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.535413448  -0.177342341   0.024459472   0.519281222  -0.000035287  -0.361233816  -0.000000281   0.000522255

    9    5.2  0.5  0.5   0.190595129   0.575424880   0.049795458  -0.002345493   0.548204614  -0.000053552   0.000037340   0.000000020
                        -0.004778654  -0.014427211   0.017886450  -0.000842497   0.312304564  -0.000030508   0.004628866   0.000002487

   10    6.2  0.5  0.5   0.000000869  -0.000000288   0.000131145   0.002784254  -0.000000579  -0.005922941   0.000257158  -0.478673016
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   11    7.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000997   0.000000330   0.000175768   0.003731607   0.000000525   0.005375381  -0.000436413   0.812343069

   12    8.2  0.5  0.5  -0.000000042  -0.000000127   0.006132259  -0.000288845  -0.000475773   0.000000046  -0.002686267  -0.000001443
                         0.000000001   0.000000003   0.002202698  -0.000103753  -0.000271041   0.000000026  -0.333006859  -0.000178901

   13    1.2  0.5 -0.5  -0.010884994   0.003605382   0.029642147   0.629310811   0.000004235   0.043357737   0.000001477  -0.002748547
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   14    2.2  0.5 -0.5   0.041812470  -0.013849337   0.002040514   0.043320673  -0.000061539  -0.629971861  -0.000002289   0.004260989
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   15    3.2  0.5 -0.5   0.004403013   0.013293115   0.193417744  -0.009110470   0.133409745  -0.000013032   0.004106625   0.000002206
                         0.175612799   0.530191795  -0.538470449   0.025363334  -0.234181136   0.000022876  -0.000033127  -0.000000018

   16    4.2  0.5 -0.5  -0.177286627  -0.535245242  -0.488709885   0.023019484   0.313874104  -0.000030661   0.000004213   0.000000002
                         0.004444979   0.013419816  -0.175543828   0.008268563   0.178809723  -0.000017467   0.000522238   0.000000281

   17    5.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.575605714  -0.190655026   0.002492216   0.052910421   0.000061632   0.630921897   0.000002487  -0.004629017

   18    6.2  0.5 -0.5  -0.000000007  -0.000000022   0.000941221  -0.000044334  -0.002931839   0.000000286   0.478657444   0.000257148
                        -0.000000288  -0.000000869  -0.002620338   0.000123425   0.005146411  -0.000000503  -0.003861189  -0.000002074

   19    7.2  0.5 -0.5   0.000000330   0.000000996  -0.003511918   0.000165420  -0.004670640   0.000000456   0.006552719   0.000003520
                        -0.000000008  -0.000000025  -0.001261476   0.000059419  -0.002660799   0.000000260   0.812316640   0.000436399

   20    8.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000127   0.000000042   0.000306914   0.006515863  -0.000000053  -0.000547561  -0.000178905   0.333017695


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.000959854  -0.000005441   0.000000685   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000012171  -0.002146854   0.000000000  -0.000000639
                        -0.000000125   0.000022078  -0.000000000   0.000000000

    3    1.2  1.5 -0.5  -0.002146967  -0.000012171  -0.000000639  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.000005441  -0.000959803  -0.000000000   0.000000685
                        -0.000000056   0.000009870   0.000000000  -0.000000000

    5    1.2  0.5  0.5  -0.000024154   0.004260693  -0.000000001   0.000001586
                         0.000000248  -0.000043816   0.000000000  -0.000000001

    6    2.2  0.5  0.5  -0.000015581   0.002748360   0.000000001  -0.000001247
                         0.000000160  -0.000028264  -0.000000000   0.000000001

    7    3.2  0.5  0.5  -0.002974041  -0.000016860  -0.000001933  -0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    8    4.2  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.005043520  -0.000028592  -0.000000456  -0.000000000

    9    5.2  0.5  0.5  -0.000000121   0.000021281   0.000000000  -0.000000001
                        -0.000011731   0.002069373   0.000000001  -0.000001476

   10    6.2  0.5  0.5   0.661338492   0.003749180  -0.577444984  -0.000415585
                         0.000000000   0.000000000  -0.000000000  -0.000000000

   11    7.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.084167377   0.000477151  -0.577033328  -0.000415289

   12    8.2  0.5  0.5  -0.000043448   0.007663934  -0.000000230   0.000319547
                        -0.004224838   0.745242628  -0.000415676   0.577571822

   13    1.2  0.5 -0.5  -0.004260918  -0.000024155  -0.000001586  -0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   14    2.2  0.5 -0.5  -0.002748505  -0.000015581   0.000001247   0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   15    3.2  0.5 -0.5   0.000016859  -0.002973884   0.000000001  -0.000001933
                        -0.000000173   0.000030583  -0.000000000   0.000000001

   16    4.2  0.5 -0.5  -0.000000294   0.000051864  -0.000000000   0.000000000
                        -0.000028591   0.005043253  -0.000000000   0.000000456

   17    5.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.002069483   0.000011732  -0.000001476  -0.000000001

   18    6.2  0.5 -0.5  -0.003748982   0.661303523   0.000415585  -0.577444896
                         0.000038554  -0.006800721  -0.000000230   0.000319477

   19    7.2  0.5 -0.5   0.000004907  -0.000865515  -0.000000230   0.000319249
                         0.000477125  -0.084162929  -0.000415289   0.577033239

   20    8.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.745282033   0.004225062   0.577571910   0.000415677


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.211%  26.570%  73.070%   0.149%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  72.648%   0.576%   0.055%  26.721%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.576%  72.643%  26.726%   0.055%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  26.565%   0.211%   0.149%  73.075%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  59.944%   0.031%   0.130%   0.000%   0.001%   0.012%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.134%   0.000%  59.752%   0.043%   0.019%   0.175%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.012%  22.847%   0.004%   5.848%  28.128%   3.086%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.009%  16.800%   0.008%  11.294%  28.667%   3.145%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.222%   0.000%  22.905%   0.016%   3.635%  33.132%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.031%  59.944%   0.000%   0.130%   0.012%   0.001%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.134%   0.043%  59.752%   0.175%   0.019%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  22.847%   0.012%   5.848%   0.004%   3.086%  28.128%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  16.800%   0.009%  11.294%   0.008%   3.145%  28.667%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.222%   0.016%  22.905%  33.132%   3.635%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5  39.603%   0.088%   0.188%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%
    6    2.2  0.5  0.5   0.188%   0.000%  39.686%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%
    7    3.2  0.5  0.5   0.073%  32.736%   0.000%   7.264%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   0.060%  26.965%   0.000%  13.049%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   0.280%   0.001%  39.806%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.000%   0.001%   0.000%   0.004%   0.000%  22.913%  43.737%   0.001%  33.344%   0.000%
   11    7.2  0.5  0.5   0.000%   0.001%   0.000%   0.003%   0.000%  65.990%   0.708%   0.000%  33.297%   0.000%
   12    8.2  0.5  0.5   0.004%   0.000%   0.000%   0.000%  11.090%   0.000%   0.002%  55.545%   0.000%  33.359%
   13    1.2  0.5 -0.5   0.088%  39.603%   0.000%   0.188%   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.188%   0.000%  39.686%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5  32.736%   0.073%   7.264%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%
   16    4.2  0.5 -0.5  26.965%   0.060%  13.049%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.001%   0.280%   0.000%  39.806%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   18    6.2  0.5 -0.5   0.001%   0.000%   0.004%   0.000%  22.913%   0.000%   0.001%  43.737%   0.000%  33.344%
   19    7.2  0.5 -0.5   0.001%   0.000%   0.003%   0.000%  65.990%   0.000%   0.000%   0.708%   0.000%  33.297%
   20    8.2  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.000%  11.090%  55.545%   0.002%  33.359%   0.000%


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

              2       7        2.72       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.26      2.31      0.88      0.90      0.10      0.32      0.03      0.46
 REAL TIME  *         8.70 SEC
 DISK USED  *        31.89 MB (local),      256.51 MB (total)
 SF USED    *        23.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -54.416466268066

              CI              CI           MULTI         RHF-SCF
    -54.41121918    -54.54456669    -54.28876708    -54.42683840
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
