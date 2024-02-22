
 Working directory              : /wrk/irikura/molpro.A9YlR8PH3W/
 Global scratch directory       : /wrk/irikura/molpro.A9YlR8PH3W/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.A9YlR8PH3W/

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
         weight,all,99
     wf,sym=2,spin=1;state,8;
         weight,all,1
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   N SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:48:12  
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

     2.884 MB (compressed) written to integral file ( 19.4%)

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
 CPU TIMES  *         0.67      0.47
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
   1      -54.37876999     -54.37876999     0.00D+00     0.10D+00     0     0       0.00      0.01    start
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
    2.2     1.00000    -0.56728     1  1  py   0.99679
    3.2     1.00000    -0.56728     1  1  pz   0.99679


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
 CPU TIMES  *         0.69      0.02      0.47
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

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 6   4 3 5 2 1 6 4 3 5 2   1 6 4 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.109D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.109D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 8  10 6 4 5 9 7 3 2 1 8  10 6 7 9 4 5 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.92523
 Weight factors for state symmetry  2:    0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    235
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0    -54.41791858     -54.41793521   -0.00001663    0.00357473 0.00000030 0.00000000  0.47E-02      0.12
   2   10   20    0    -54.41793530     -54.41793530   -0.00000000    0.00002850 0.00000000 0.00000000  0.13E-04      0.29
   3    2    4    0    -54.41793530     -54.41793530    0.00000000    0.00000000 0.00000000 0.00000000  0.13E-09      0.33

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-08)
                       Final energy:    -54.41793530
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -54.426826529376
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.61191869
 One electron energy                           -73.96768920
 Two electron energy                            19.54086267
 Virial ratio                                    1.99661077
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -54.320888333401
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.61191869
 One electron energy                           -73.96768920
 Two electron energy                            19.64680086
 Virial ratio                                    1.99467094
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -54.320888333380
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.61191869
 One electron energy                           -73.96768920
 Two electron energy                            19.64680086
 Virial ratio                                    1.99467094
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -54.320888333331
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.61191869
 One electron energy                           -73.96768920
 Two electron energy                            19.64680086
 Virial ratio                                    1.99467094
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -54.320888333287
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.61191869
 One electron energy                           -73.96768920
 Two electron energy                            19.64680086
 Virial ratio                                    1.99467094
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -54.320888333282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.61191869
 One electron energy                           -73.96768920
 Two electron energy                            19.64680086
 Virial ratio                                    1.99467094
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy               -54.286269590904
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.59646050
 One electron energy                           -73.93596072
 Two electron energy                            19.64969113
 Virial ratio                                    1.99431848
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy               -54.286269590818
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.59646050
 One electron energy                           -73.93596072
 Two electron energy                            19.64969113
 Virial ratio                                    1.99431848
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy               -54.286269590733
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.59646050
 One electron energy                           -73.93596072
 Two electron energy                            19.64969113
 Virial ratio                                    1.99431848
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.268448148198
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000078
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000003935
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.731551848984
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999999999926
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999973
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999947
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000035
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.732549332502
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999926223
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000073697
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.267450664685
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.000000000019
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000047
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999986
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999972
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.999002519300
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000073699
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999922368
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     2.000997486331
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000055
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999980
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000068
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999993
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 5 6 1 6   3 5 2 4 1 4 3 5 2 6   1 4 5 3 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 110   8 6 5 9 7 4 2 3 110   8 4 6 7 9 5 1 3 2 1   3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -15.63955     1  1  s    0.99928
    2.1     1.99815    -0.95082     1  2  s    1.00924
    1.2     1.00062    -0.18217     1  1  py   0.99539
    2.2     1.00062    -0.18217     1  1  pz   0.99539
    3.2     1.00062    -0.18217     1  1  px   0.99539
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:      -54.42682653
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa         -0.21112819     -0.00000001      0.00000002      0.78872781     -0.00000000      0.00000000      0.00000000
 2 aab          0.78862241      0.00000000     -0.00000001     -0.21152153      0.00000000     -0.00000000     -0.00000000
 2 02a          0.00000000      0.00000361     -0.00002561     -0.00000000     -0.70710678      0.00000362     -0.00000508
 2 20a         -0.00000000     -0.00000361      0.00002561      0.00000000      0.70710678      0.00000362     -0.00000508
 2 0a2         -0.00000000     -0.00011083     -0.70710678      0.00000002      0.00002561     -0.00000308      0.69534633
 2 a02          0.00000000     -0.70710677      0.00011083     -0.00000001     -0.00000362      0.69534633      0.00000308
 2 a20         -0.00000000      0.70710677     -0.00011083      0.00000001      0.00000362      0.69534634      0.00000308
 2 2a0          0.00000000      0.00011083      0.70710677     -0.00000002     -0.00002561     -0.00000308      0.69534634
 2 aba         -0.57749423      0.00000000     -0.00000001     -0.57720628      0.00000000      0.00000000      0.00000000
 0 22a         -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000095      0.00000133
 0 2a2         -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000080     -0.18162311
 0 a22         -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.18162311     -0.00000080
 
 Energy:      -54.32088833    -54.32088833    -54.32088833    -54.32088833    -54.32088833    -54.28626959    -54.28626959

 State:              8
 2 baa          0.00000000
 2 aab         -0.00000000
 2 02a          0.69534633
 2 20a          0.69534634
 2 0a2          0.00000508
 2 a02         -0.00000362
 2 a20         -0.00000362
 2 2a0          0.00000508
 2 aba         -0.00000000
 0 22a         -0.18162311
 0 2a2         -0.00000133
 0 a22          0.00000095
 
 Energy:      -54.28626959
 


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
 CPU TIMES  *         1.01      0.32      0.02      0.47
 REAL TIME  *         2.11 SEC
 DISK USED  *        29.75 MB (local),      169.86 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -54.42682653  -0.0
    -54.32088833   6.0
    -54.32088833   6.0
    -54.32088833   6.0
    -54.32088833   6.0
    -54.32088833   6.0
    -54.28626959   2.0
    -54.28626959   2.0
    -54.28626959   2.0
                                                  


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
     1       -54.42682653

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
    1     1     1     1.00000000     0.00000000   -54.42682653    -0.00000000    -0.12328023  0.23D-01  0.17D-01     0.00
    2     1     1     1.03677856    -0.11708275   -54.54390928    -0.11708275    -0.00079876  0.74D-04  0.15D-03     0.01
    3     1     1     1.03860350    -0.11794866   -54.54477519    -0.00086591    -0.00003146  0.21D-04  0.28D-05     0.02
    4     1     1     1.03890358    -0.11798615   -54.54481268    -0.00003749    -0.00000171  0.51D-06  0.29D-06     0.02
    5     1     1     1.03898479    -0.11798818   -54.54481471    -0.00000203    -0.00000005  0.16D-07  0.87D-08     0.03
    6     1     1     1.03897545    -0.11798824   -54.54481477    -0.00000006    -0.00000000  0.62D-09  0.34D-09     0.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   0.0%  33.3%

 Initialization:   0.0%
 Other:           66.7%

 Total CPU:        0.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2///           0.9810640


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98106404 (fixed)   0.98106404 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.02170256   -0.04801249   -0.04867506
 Pairs        0.01727289   -0.06997575   -0.06931318
 Total        1.03897545   -0.11798824   -0.11798824
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.42682653
 Nuclear energy                         0.00000000
 Kinetic energy                        54.72246362
 One electron energy                  -73.87515510
 Two electron energy                   19.33034034
 Virial quotient                       -0.99675364
 Correlation energy                    -0.11798824
 !CI(SD) STATE 1.2 Energy             -54.544814765570

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.54941341 (Davidson, fixed reference)
 Cluster corrected energies           -54.54941341 (Davidson, relaxed reference)

 Cluster corrected energies           -54.54481477 (Pople, fixed reference)
 Cluster corrected energies           -54.54481477 (Pople, relaxed reference)



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
 CPU TIMES  *         1.10      0.09      0.32      0.02      0.47
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.93 MB (local),      170.76 MB (total)
 SF USED    *         1.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =       -54.54941341  AU                              


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
     1       -54.32088833
     2       -54.32088833
     3       -54.32088833
     4       -54.32088833
     5       -54.32088833
     6       -54.28626959
     7       -54.28626959
     8       -54.28626959

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
    1     1     1     1.00000000     0.00000000   -54.32088833    -0.00000000    -0.13471523  0.25D-01  0.18D-01     0.01
    1     2     2     1.00000000     0.00000000   -54.32088833    -0.00000000    -0.13390870  0.25D-01  0.18D-01     0.01
    1     3     3     1.00000000     0.00000000   -54.32088833     0.00000000    -0.13381784  0.24D-01  0.18D-01     0.01
    1     4     4     1.00000000     0.00000000   -54.32088833     0.00000000    -0.13399174  0.25D-01  0.18D-01     0.01
    1     5     5     1.00000000     0.00000000   -54.32088833    -0.00000000    -0.13358506  0.24D-01  0.18D-01     0.01
    1     6     6     1.00000000     0.00000000   -54.28626959    -0.00000000    -0.12295411  0.18D-01  0.22D-01     0.01
    1     7     7     1.00000000     0.00000000   -54.28626959    -0.00000000    -0.12307508  0.18D-01  0.22D-01     0.01
    1     8     8     1.00000000     0.00000000   -54.28626959    -0.00000000    -0.12292539  0.18D-01  0.22D-01     0.01
    2     1     1     1.04063365    -0.13064491   -54.45153324    -0.13064491    -0.00304435  0.30D-03  0.53D-03     0.13
    2     2     2     1.04052704    -0.13059234   -54.45148068    -0.13059234    -0.00307081  0.32D-03  0.52D-03     0.13
    2     3     3     1.04053019    -0.13058745   -54.45147578    -0.13058745    -0.00307262  0.32D-03  0.52D-03     0.13
    2     4     4     1.04086263    -0.13058106   -54.45146939    -0.13058106    -0.00312237  0.33D-03  0.54D-03     0.13
    2     5     5     1.04067835    -0.13055784   -54.45144618    -0.13055784    -0.00311086  0.33D-03  0.53D-03     0.13
    2     6     6     1.03884875    -0.12145942   -54.40772901    -0.12145942    -0.00286337  0.34D-03  0.53D-03     0.13
    2     7     7     1.03885418    -0.12141289   -54.40768248    -0.12141289    -0.00290433  0.34D-03  0.54D-03     0.13
    2     8     8     1.03885292    -0.12140669   -54.40767628    -0.12140669    -0.00290978  0.34D-03  0.54D-03     0.13
    3     1     1     1.04511757    -0.13388414   -54.45477247    -0.00323923    -0.00017162  0.79D-04  0.22D-04     0.25
    3     2     2     1.04509542    -0.13388117   -54.45476951    -0.00328883    -0.00017262  0.79D-04  0.22D-04     0.25
    3     3     3     1.04503692    -0.13387025   -54.45475858    -0.00328280    -0.00017802  0.79D-04  0.22D-04     0.25
    3     4     4     1.04504278    -0.13387025   -54.45475858    -0.00328919    -0.00017855  0.80D-04  0.22D-04     0.25
    3     5     5     1.04504663    -0.13387025   -54.45475858    -0.00331240    -0.00017884  0.80D-04  0.22D-04     0.25
    3     6     6     1.04354417    -0.12456859   -54.41083818    -0.00310916    -0.00021351  0.15D-03  0.21D-04     0.25
    3     7     7     1.04353664    -0.12456671   -54.41083630    -0.00315381    -0.00021454  0.15D-03  0.22D-04     0.25
    3     8     8     1.04353283    -0.12456630   -54.41083589    -0.00315961    -0.00021466  0.15D-03  0.22D-04     0.25
    4     1     1     1.04729359    -0.13411160   -54.45499994    -0.00022746    -0.00001680  0.55D-05  0.26D-05     0.38
    4     2     2     1.04729353    -0.13411150   -54.45499983    -0.00023032    -0.00001684  0.55D-05  0.27D-05     0.38
    4     3     3     1.04728723    -0.13411003   -54.45499836    -0.00023978    -0.00001789  0.59D-05  0.27D-05     0.38
    4     4     4     1.04728973    -0.13410991   -54.45499824    -0.00023966    -0.00001799  0.59D-05  0.27D-05     0.38
    4     5     5     1.04728284    -0.13410983   -54.45499816    -0.00023958    -0.00001805  0.59D-05  0.27D-05     0.38
    4     6     6     1.04713678    -0.12486796   -54.41113755    -0.00029937    -0.00002698  0.95D-05  0.39D-05     0.38
    4     7     7     1.04713076    -0.12486793   -54.41113752    -0.00030122    -0.00002702  0.95D-05  0.39D-05     0.38
    4     8     8     1.04713091    -0.12486788   -54.41113748    -0.00030159    -0.00002705  0.95D-05  0.39D-05     0.38
    5     1     1     1.04771655    -0.13413454   -54.45502287    -0.00002294    -0.00000133  0.37D-06  0.20D-06     0.50
    5     2     2     1.04771337    -0.13413451   -54.45502284    -0.00002301    -0.00000135  0.38D-06  0.20D-06     0.50
    5     3     3     1.04770880    -0.13413440   -54.45502273    -0.00002438    -0.00000142  0.40D-06  0.21D-06     0.50
    5     4     4     1.04770728    -0.13413439   -54.45502272    -0.00002448    -0.00000143  0.41D-06  0.21D-06     0.50
    5     5     5     1.04770673    -0.13413436   -54.45502269    -0.00002453    -0.00000145  0.41D-06  0.21D-06     0.50
    5     6     6     1.04774976    -0.12490162   -54.41117121    -0.00003366    -0.00000275  0.67D-06  0.47D-06     0.50
    5     7     7     1.04774738    -0.12490158   -54.41117117    -0.00003365    -0.00000278  0.68D-06  0.47D-06     0.50
    5     8     8     1.04774769    -0.12490157   -54.41117116    -0.00003368    -0.00000278  0.68D-06  0.47D-06     0.50
    6     1     1     1.04773601    -0.13413616   -54.45502449    -0.00000162    -0.00000010  0.30D-07  0.13D-07     0.63
    6     2     2     1.04773585    -0.13413616   -54.45502449    -0.00000165    -0.00000010  0.31D-07  0.14D-07     0.63
    6     3     3     1.04773366    -0.13413614   -54.45502448    -0.00000174    -0.00000011  0.35D-07  0.15D-07     0.63
    6     4     4     1.04773335    -0.13413614   -54.45502447    -0.00000175    -0.00000011  0.35D-07  0.15D-07     0.63
    6     5     5     1.04773324    -0.13413614   -54.45502447    -0.00000178    -0.00000011  0.36D-07  0.15D-07     0.63
    6     6     6     1.04779768    -0.12490483   -54.41117442    -0.00000321    -0.00000021  0.97D-07  0.30D-07     0.63
    6     7     7     1.04779756    -0.12490483   -54.41117442    -0.00000325    -0.00000021  0.97D-07  0.30D-07     0.63
    6     8     8     1.04779737    -0.12490483   -54.41117442    -0.00000326    -0.00000022  0.97D-07  0.30D-07     0.63
    7     1     1     1.04775508    -0.13413627   -54.45502460    -0.00000011    -0.00000001  0.28D-08  0.12D-08     0.74
    7     2     2     1.04775497    -0.13413627   -54.45502460    -0.00000012    -0.00000001  0.28D-08  0.13D-08     0.74
    7     3     3     1.04775380    -0.13413627   -54.45502460    -0.00000013    -0.00000001  0.31D-08  0.14D-08     0.74
    7     4     4     1.04775371    -0.13413627   -54.45502460    -0.00000013    -0.00000001  0.32D-08  0.14D-08     0.74
    7     5     5     1.04775354    -0.13413627   -54.45502460    -0.00000013    -0.00000001  0.32D-08  0.15D-08     0.74
    7     6     6     1.04785595    -0.12490509   -54.41117468    -0.00000026    -0.00000003  0.77D-08  0.42D-08     0.74
    7     7     7     1.04785583    -0.12490509   -54.41117468    -0.00000026    -0.00000002  0.77D-08  0.42D-08     0.74
    7     8     8     1.04785592    -0.12490509   -54.41117468    -0.00000026    -0.00000003  0.77D-08  0.42D-08     0.74
    8     1     1     1.04775508    -0.13413627   -54.45502460    -0.00000000    -0.00000001  0.28D-08  0.12D-08     0.79
    8     2     2     1.04775497    -0.13413627   -54.45502460    -0.00000000    -0.00000001  0.28D-08  0.13D-08     0.79
    8     3     3     1.04775380    -0.13413627   -54.45502460    -0.00000000    -0.00000001  0.31D-08  0.14D-08     0.79
    8     4     4     1.04775372    -0.13413627   -54.45502460    -0.00000000    -0.00000001  0.32D-08  0.14D-08     0.79
    8     5     5     1.04775354    -0.13413627   -54.45502460    -0.00000000    -0.00000001  0.32D-08  0.15D-08     0.79
    8     6     6     1.04787901    -0.12490512   -54.41117471    -0.00000003    -0.00000000  0.78D-09  0.27D-09     0.79
    8     7     7     1.04787906    -0.12490512   -54.41117471    -0.00000003    -0.00000000  0.78D-09  0.27D-09     0.79
    8     8     8     1.04787899    -0.12490512   -54.41117471    -0.00000003    -0.00000000  0.78D-09  0.27D-09     0.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   1.3%   0.0%
 P   1.3%  10.1%  29.1%

 Initialization:   1.3%
 Other:           57.0%

 Total CPU:        0.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\/          -0.4347344   0.8748872   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2//\           0.8748872   0.4347344   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 220/           0.0000000   0.0000000   0.0000000   0.0000000  -0.6908050   0.0000000   0.0000000   0.6801243
 22/0           0.0000000   0.0000000   0.0000000  -0.6908050   0.0000000   0.0000000   0.6801242  -0.0000000
 2/20           0.0000000   0.0000000  -0.6908049  -0.0000000  -0.0000000   0.6801242  -0.0000000  -0.0000000
 202/           0.0000000   0.0000000   0.0000000   0.0000000   0.6908049   0.0000000   0.0000000   0.6801243
 2/02           0.0000000   0.0000000   0.6908048  -0.0000000  -0.0000000   0.6801243  -0.0000000  -0.0000000
 20/2           0.0000000   0.0000000   0.0000000   0.6908048   0.0000000   0.0000000   0.6801243  -0.0000000
 0/22           0.0000000   0.0000000  -0.0000002  -0.0000000   0.0000000  -0.1707940   0.0000000   0.0000000
 022/           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.1707940
 02/2           0.0000000   0.0000000   0.0000000  -0.0000003   0.0000000  -0.0000000  -0.1707940   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \//\  10.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0573809  -0.0000000  -0.0000000  -0.0048289
 \//\  11.1    -0.0000000   0.0000000  -0.0000000  -0.0573807  -0.0000000   0.0000000   0.0048289  -0.0000000
 \//\  12.1    -0.0219391  -0.0543076   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/\0   4.2    -0.0000000  -0.0000000   0.0000000   0.0335686   0.0000000  -0.0000000  -0.0539293   0.0000000
 2/\0   5.2    -0.0000000   0.0000000  -0.0335695  -0.0000000  -0.0000000   0.0539291  -0.0000000  -0.0000000
 2/0\   4.2     0.0000000  -0.0000000   0.0000000  -0.0000000   0.0335681  -0.0000000  -0.0000000  -0.0539290
 20/\   6.2     0.0000000  -0.0000000  -0.0000000   0.0335697  -0.0000000   0.0000000   0.0539289  -0.0000000
 2/0\   6.2     0.0000000   0.0000000   0.0335697  -0.0000000  -0.0000000   0.0539288  -0.0000000  -0.0000000
 20/\   5.2     0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0335691  -0.0000000  -0.0000000  -0.0539287

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957644    0.000000    0.000000   -0.193236    0.000000    0.000000    0.000000    0.000000
 2           0.193236    0.000000    0.000000    0.957644    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.976946   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.976946    0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.976946   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.976864    0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.976864    0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.976864

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.976945   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.976945    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.976946    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.976946   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.976946    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.976864    0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.976864   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.976864


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95764370 (fixed)   0.97694500 (relaxed)   0.97694500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals   -0.00000000    0.00000000   -0.07491386
 Singles      0.02672902   -0.05564489   -0.05653013
 Pairs        0.02102606    0.00000000   -0.00269228
 Total        1.04775508   -0.05564489   -0.13413627
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32088833
 Nuclear energy                         0.00000000
 Kinetic energy                        54.64100108
 One electron energy                  -73.72199695
 Two electron energy                   19.26697235
 Virial quotient                       -0.99659639
 Correlation energy                    -0.13413627
 !MRCI STATE 1.2 Energy               -54.455024604274

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46143029 (Davidson, fixed reference)
 Cluster corrected energies           -54.46143029 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46143029 (Davidson, rotated reference)

 Cluster corrected energies           -54.45822562 (Pople, fixed reference)
 Cluster corrected energies           -54.45822562 (Pople, relaxed reference)
 Cluster corrected energies           -54.45822562 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95764375 (fixed)   0.97694504 (relaxed)   0.97694504 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals   -0.00000000    0.00000000   -0.07491393
 Singles      0.02672886   -0.05564483   -0.05653013
 Pairs        0.02102611    0.00000000   -0.00269221
 Total        1.04775497   -0.05564483   -0.13413627
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32088833
 Nuclear energy                         0.00000000
 Kinetic energy                        54.64100605
 One electron energy                  -73.72200183
 Two electron energy                   19.26697723
 Virial quotient                       -0.99659630
 Correlation energy                    -0.13413627
 !MRCI STATE 2.2 Energy               -54.455024603910

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46143028 (Davidson, fixed reference)
 Cluster corrected energies           -54.46143028 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46143028 (Davidson, rotated reference)

 Cluster corrected energies           -54.45822562 (Pople, fixed reference)
 Cluster corrected energies           -54.45822562 (Pople, relaxed reference)
 Cluster corrected energies           -54.45822562 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97694559 (fixed)   0.97694559 (relaxed)   0.97694559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.07491405
 Singles      0.02672784   -0.05564479   -0.05653004
 Pairs        0.02102595    0.00000000   -0.00269217
 Total        1.04775380   -0.05564479   -0.13413627
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32088833
 Nuclear energy                         0.00000000
 Kinetic energy                        54.64101622
 One electron energy                  -73.72201260
 Two electron energy                   19.26698800
 Virial quotient                       -0.99659612
 Correlation energy                    -0.13413627
 !MRCI STATE 3.2 Energy               -54.455024602298

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46143012 (Davidson, fixed reference)
 Cluster corrected energies           -54.46143012 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46143012 (Davidson, rotated reference)

 Cluster corrected energies           -54.45822554 (Pople, fixed reference)
 Cluster corrected energies           -54.45822554 (Pople, relaxed reference)
 Cluster corrected energies           -54.45822554 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97694563 (fixed)   0.97694563 (relaxed)   0.97694563 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07491399
 Singles      0.02672781   -0.05564485   -0.05653007
 Pairs        0.02102591   -0.00000000   -0.00269221
 Total        1.04775372   -0.05564485   -0.13413627
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32088833
 Nuclear energy                         0.00000000
 Kinetic energy                        54.64101567
 One electron energy                  -73.72201331
 Two electron energy                   19.26698871
 Virial quotient                       -0.99659613
 Correlation energy                    -0.13413627
 !MRCI STATE 4.2 Energy               -54.455024602104

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46143011 (Davidson, fixed reference)
 Cluster corrected energies           -54.46143011 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46143011 (Davidson, rotated reference)

 Cluster corrected energies           -54.45822553 (Pople, fixed reference)
 Cluster corrected energies           -54.45822553 (Pople, relaxed reference)
 Cluster corrected energies           -54.45822553 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.97694571 (fixed)   0.97694571 (relaxed)   0.97694571 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.07491407
 Singles      0.02672767   -0.05564480   -0.05653005
 Pairs        0.02102587    0.00000001   -0.00269215
 Total        1.04775354   -0.05564479   -0.13413627
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32088833
 Nuclear energy                         0.00000000
 Kinetic energy                        54.64101328
 One electron energy                  -73.72201194
 Two electron energy                   19.26698734
 Virial quotient                       -0.99659617
 Correlation energy                    -0.13413627
 !MRCI STATE 5.2 Energy               -54.455024601872

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46143008 (Davidson, fixed reference)
 Cluster corrected energies           -54.46143008 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46143008 (Davidson, rotated reference)

 Cluster corrected energies           -54.45822552 (Pople, fixed reference)
 Cluster corrected energies           -54.45822552 (Pople, relaxed reference)
 Cluster corrected energies           -54.45822552 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97686398 (fixed)   0.97688722 (relaxed)   0.97686398 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004759   -0.00000000   -0.08958555
 Singles      0.02120779   -0.03103178   -0.03214175
 Pairs        0.02667350   -0.00000000   -0.00317781
 Total        1.04792888   -0.03103178   -0.12490512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28626959
 Nuclear energy                         0.00000000
 Kinetic energy                        54.59952294
 One electron energy                  -73.63633444
 Two electron energy                   19.22515973
 Virial quotient                       -0.99655037
 Correlation energy                    -0.12490512
 !MRCI STATE 6.2 Energy               -54.411174711775

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.41716127 (Davidson, fixed reference)
 Cluster corrected energies           -54.41715505 (Davidson, relaxed reference)
 Cluster corrected energies           -54.41716127 (Davidson, rotated reference)

 Cluster corrected energies           -54.41416628 (Pople, fixed reference)
 Cluster corrected energies           -54.41416317 (Pople, relaxed reference)
 Cluster corrected energies           -54.41416628 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.97686395 (fixed)   0.97688720 (relaxed)   0.97686395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004759   -0.00000000   -0.08958552
 Singles      0.02120783   -0.03103181   -0.03214176
 Pairs        0.02667351   -0.00000000   -0.00317785
 Total        1.04792894   -0.03103181   -0.12490512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28626959
 Nuclear energy                         0.00000000
 Kinetic energy                        54.59952196
 One electron energy                  -73.63633396
 Two electron energy                   19.22515925
 Virial quotient                       -0.99655039
 Correlation energy                    -0.12490512
 !MRCI STATE 7.2 Energy               -54.411174711774

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.41716128 (Davidson, fixed reference)
 Cluster corrected energies           -54.41715505 (Davidson, relaxed reference)
 Cluster corrected energies           -54.41716128 (Davidson, rotated reference)

 Cluster corrected energies           -54.41416628 (Pople, fixed reference)
 Cluster corrected energies           -54.41416317 (Pople, relaxed reference)
 Cluster corrected energies           -54.41416628 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97686399 (fixed)   0.97688723 (relaxed)   0.97686399 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004759   -0.00000000   -0.00000567
 Singles      0.02120777   -0.03103177   -0.03214175
 Pairs        0.02667350   -0.09387335   -0.09275770
 Total        1.04792886   -0.12490512   -0.12490512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28626959
 Nuclear energy                         0.00000000
 Kinetic energy                        54.59952315
 One electron energy                  -73.63633466
 Two electron energy                   19.22515995
 Virial quotient                       -0.99655036
 Correlation energy                    -0.12490512
 !MRCI STATE 8.2 Energy               -54.411174711750

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.41716127 (Davidson, fixed reference)
 Cluster corrected energies           -54.41715504 (Davidson, relaxed reference)
 Cluster corrected energies           -54.41716127 (Davidson, rotated reference)

 Cluster corrected energies           -54.41416627 (Pople, fixed reference)
 Cluster corrected energies           -54.41416317 (Pople, relaxed reference)
 Cluster corrected energies           -54.41416627 (Pople, rotated reference)



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
 CPU TIMES  *         1.99      0.89      0.09      0.32      0.02      0.47
 REAL TIME  *         3.22 SEC
 DISK USED  *        31.87 MB (local),      180.49 MB (total)
 SF USED    *        19.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -54.46143029  AU                              
 SETTING HLSDIAG(3)     =       -54.46143028  AU                              
 SETTING HLSDIAG(4)     =       -54.46143012  AU                              
 SETTING HLSDIAG(5)     =       -54.46143011  AU                              
 SETTING HLSDIAG(6)     =       -54.46143008  AU                              
 SETTING HLSDIAG(7)     =       -54.41716127  AU                              
 SETTING HLSDIAG(8)     =       -54.41716128  AU                              
 SETTING HLSDIAG(9)     =       -54.41716127  AU                              


        HLSDIAG
    -54.54941341
    -54.46143029
    -54.46143028
    -54.46143012
    -54.46143011
    -54.46143008
    -54.41716127
    -54.41716128
    -54.41716127
                                                  

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

 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    30.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    30.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.72       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.66      0.64      0.89      0.09      0.32      0.02      0.47
 REAL TIME  *         3.94 SEC
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

 Original energies:    -54.544815
 Replaced energies:    -54.549413

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:    -54.455025    -54.455025    -54.455025    -54.455025    -54.455025    -54.411175    -54.411175    -54.411175
 Replaced energies:    -54.461430    -54.461430    -54.461430    -54.461430    -54.461430    -54.417161    -54.417161    -54.417161



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -54.54941341

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      48.58
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      28.05
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   19310.06       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       2.20       0.00      -0.00

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   19310.07       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       3.32      -0.00       0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19310.10       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       1.99      -0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   19310.10       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -2.20      -3.32       0.00       0.00      -0.00      -0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   19310.11       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -1.99       0.00       0.00     -35.05

   10   6.2  0.5  0.5      48.58       0.00      28.05       0.00       0.00       0.00       0.00       0.00       0.00   29025.99
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      35.05      -0.00

   11   7.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      56.10       0.00      -0.00      33.72     -22.38       0.00      -0.00      -0.00       0.00

   12   8.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -48.58      -0.00      28.05      -0.00      -0.00       0.00      35.05       0.00      -0.00       0.89

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -3.98      -0.00      -0.00       2.53
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -1.77       0.00

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.25      -0.00      -0.00      40.39
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       3.57       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       3.98      -0.25      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       1.99       0.00      -0.00

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -1.99      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -1.99       0.00      -0.00      35.05

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.99      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       1.77      -3.57      -0.00       0.00      -0.00      -0.00

   18   6.2  0.5 -0.5       0.00      28.05       0.00      48.58      -2.53     -40.39      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     -35.05       0.00      -0.00

   19   7.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     -35.05      -0.00
                           -0.00      -0.00      56.10       0.00      -0.00      -0.00      35.05       0.00      -0.00      -0.89

   20   8.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      35.05       0.00       0.00
                           -0.00     -28.05      -0.00      48.58     -36.24     -18.01      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      48.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      28.05      -0.00      -0.00
                          -56.10       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      28.05

    3   1.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -28.05       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -56.10       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      48.58      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -48.58

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00       3.98       0.00       0.00      -2.53       0.00       0.00
                          -33.72       0.00      -0.00      -0.00      -0.00       0.00      -1.77       0.00       0.00      36.24

    6   2.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.25       0.00       0.00     -40.39       0.00       0.00
                           22.38      -0.00       0.00       0.00      -0.00       0.00       3.57       0.00       0.00      18.01

    7   3.2  0.5  0.5       0.00       0.00      -3.98       0.25      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00     -35.05       0.00       0.00      -0.00       1.99       0.00      -0.00     -35.05       0.00

    8   4.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       1.99       0.00       0.00      35.05
                            0.00      -0.00      -0.00      -0.00      -1.99      -0.00      -0.00      35.05      -0.00      -0.00

    9   5.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -1.99      -0.00      -0.00     -35.05       0.00
                            0.00       0.00       1.77      -3.57      -0.00       0.00       0.00      -0.00       0.00      -0.00

   10   6.2  0.5  0.5       0.00       0.00       2.53      40.39       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.89      -0.00      -0.00       0.00     -35.05       0.00       0.00       0.89      -0.00

   11   7.2  0.5  0.5   29025.99       0.00      -0.00      -0.00       0.00      -0.00      35.05       0.00       0.00       0.89
                           -0.00       0.00      -0.00      -0.00      35.05       0.00      -0.00      -0.89      -0.00       0.00

   12   8.2  0.5  0.5       0.00   29025.99      -0.00      -0.00      -0.00     -35.05      -0.00      -0.00      -0.89       0.00
                           -0.00       0.00     -36.24     -18.01      -0.00       0.00       0.00       0.00      -0.00      -0.00

   13   1.2  0.5 -0.5      -0.00      -0.00   19310.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      36.24       0.00       0.00      -0.00      -2.20      -0.00       0.00      33.72      -0.00

   14   2.2  0.5 -0.5      -0.00      -0.00       0.00   19310.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      18.01      -0.00       0.00       0.00      -3.32       0.00      -0.00     -22.38       0.00

   15   3.2  0.5 -0.5       0.00      -0.00       0.00       0.00   19310.10       0.00       0.00       0.00       0.00       0.00
                          -35.05       0.00       0.00      -0.00      -0.00       0.00      -1.99       0.00       0.00      35.05

   16   4.2  0.5 -0.5      -0.00     -35.05       0.00       0.00       0.00   19310.10       0.00       0.00       0.00       0.00
                           -0.00      -0.00       2.20       3.32      -0.00      -0.00       0.00       0.00      -0.00       0.00

   17   5.2  0.5 -0.5      35.05      -0.00       0.00       0.00       0.00       0.00   19310.11       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       1.99      -0.00      -0.00      35.05      -0.00      -0.00

   18   6.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   29025.99       0.00       0.00
                            0.89      -0.00      -0.00       0.00      -0.00      -0.00     -35.05       0.00       0.00       0.89

   19   7.2  0.5 -0.5       0.00      -0.89       0.00       0.00       0.00       0.00       0.00       0.00   29025.99       0.00
                            0.00       0.00     -33.72      22.38      -0.00       0.00       0.00      -0.00       0.00      -0.00

   20   8.2  0.5 -0.5       0.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   29025.99
                           -0.00       0.00       0.00      -0.00     -35.05      -0.00       0.00      -0.89       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -54.54941415    -0.00000074       -0.16      0.00000000        0.00      0.0000
     2   -54.54941415    -0.00000074       -0.16      0.00000000        0.00      0.0000
     3   -54.54941415    -0.00000074       -0.16      0.00000000        0.00      0.0000
     4   -54.54941415    -0.00000074       -0.16      0.00000000        0.00      0.0000
     5   -54.46144837     0.08796504    19306.09      0.08796578    19306.26      2.3937
     6   -54.46144837     0.08796504    19306.09      0.08796578    19306.26      2.3937
     7   -54.46144835     0.08796506    19306.10      0.08796580    19306.26      2.3937
     8   -54.46144835     0.08796506    19306.10      0.08796580    19306.26      2.3937
     9   -54.46144825     0.08796516    19306.12      0.08796590    19306.28      2.3937
    10   -54.46144825     0.08796516    19306.12      0.08796590    19306.28      2.3937
    11   -54.46140584     0.08800757    19315.43      0.08800831    19315.59      2.3948
    12   -54.46140584     0.08800757    19315.43      0.08800831    19315.59      2.3948
    13   -54.46140583     0.08800758    19315.43      0.08800833    19315.59      2.3948
    14   -54.46140583     0.08800758    19315.43      0.08800833    19315.59      2.3948
    15   -54.41716169     0.13225172    29025.90      0.13225246    29026.06      3.5988
    16   -54.41716169     0.13225172    29025.90      0.13225246    29026.06      3.5988
    17   -54.41716168     0.13225173    29025.90      0.13225247    29026.06      3.5988
    18   -54.41716168     0.13225173    29025.90      0.13225247    29026.06      3.5988
    19   -54.41715321     0.13226020    29027.76      0.13226094    29027.92      3.5990
    20   -54.41715321     0.13226020    29027.76      0.13226094    29027.92      3.5990


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.003548566   0.991490031   0.003587752   0.130063252  -0.000000031  -0.000000020   0.000000005  -0.000000045
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.130090954  -0.000465969   0.991122199  -0.027336953  -0.000000017   0.000000027   0.000000039   0.000000004
                         0.000001889   0.000000005  -0.000003859   0.000000120   0.000000017  -0.000000027  -0.000000011  -0.000000001

    3    1.2  1.5 -0.5   0.000469270  -0.130111880   0.027337301   0.991119441   0.000000038   0.000000025   0.000000004  -0.000000041
                        -0.000000002  -0.000000000   0.000000013  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.991492777   0.003548999   0.130042233  -0.003590399   0.000000014  -0.000000022   0.000000043   0.000000004
                        -0.000000570  -0.000000002   0.000001307  -0.000000036  -0.000000014   0.000000022  -0.000000012  -0.000000001

    5    1.2  0.5  0.5  -0.000003989  -0.000000014   0.000004579  -0.000000126   0.292574388  -0.455674460  -0.092622106  -0.009488571
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.294749315   0.459061833   0.025941415   0.002657540

    6    2.2  0.5  0.5  -0.000004581  -0.000000016  -0.000003988   0.000000110   0.037814782  -0.058895210   0.735539580   0.075351555
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.038095888   0.059333023  -0.206008467  -0.021104314

    7    3.2  0.5  0.5   0.000000013  -0.000003696   0.000000133   0.000004818   0.447603571   0.287392321   0.014010225  -0.136759959
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    4.2  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.119050419  -0.185416897   0.115596937   0.011842203
                         0.000006023   0.000000022   0.000000789  -0.000000022   0.118171957  -0.184048723   0.412731204   0.042281801

    9    5.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000008  -0.000002327  -0.000000155  -0.000005609  -0.118829101  -0.076296467  -0.045178984   0.441011884

   10    6.2  0.5  0.5   0.000005486  -0.001533890  -0.000032425  -0.001175540  -0.000001876  -0.000001204   0.000001381  -0.000013479
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   11    7.2  0.5  0.5   0.000000004   0.000000000  -0.000000007   0.000000000  -0.000004009   0.000006244   0.000002496   0.000000256
                         0.000251443   0.000000901  -0.001915666   0.000052838  -0.000003979   0.000006198   0.000008911   0.000000913

   12    8.2  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000006393   0.001785373  -0.000020414  -0.000740121   0.000010673   0.000006853  -0.000000433   0.000004228

   13    1.2  0.5 -0.5  -0.000000014   0.000003989  -0.000000126  -0.000004579   0.646820671   0.415303421   0.009853704  -0.096186337
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   14    2.2  0.5 -0.5  -0.000000016   0.000004581   0.000000110   0.000003988   0.083600559   0.053677317  -0.078251191   0.763844200
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   15    3.2  0.5 -0.5  -0.000003696  -0.000000013   0.000004819  -0.000000133  -0.202463135   0.315329310   0.131692252   0.013491070
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.203968197  -0.317673391  -0.036884105  -0.003778552

   16    4.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000022   0.000006023   0.000000022   0.000000789  -0.261253437  -0.167742700   0.043908865  -0.428613693

   17    5.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.054149160   0.084335438   0.118940724   0.012184753
                         0.000002327   0.000000008   0.000005609  -0.000000155  -0.053749598   0.083713135   0.424669973   0.043504855

   18    6.2  0.5 -0.5  -0.001533914  -0.000005490  -0.001175508   0.000032429   0.000000848  -0.000001321   0.000012980   0.000001330
                        -0.000000001  -0.000000000   0.000000002  -0.000000000  -0.000000855   0.000001331  -0.000003635  -0.000000372

   19    7.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000907   0.000251483  -0.000052838  -0.001915660   0.000008797   0.000005649   0.000000948  -0.000009254

   20    8.2  0.5 -0.5  -0.000000003  -0.000000000   0.000000006  -0.000000000   0.000004863  -0.000007575   0.000001140   0.000000117
                        -0.001785358  -0.000006391   0.000740159  -0.000020409   0.000004828  -0.000007519   0.000004072   0.000000417


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000003  -0.000000000  -0.000019378  -0.000006587  -0.000019776   0.000003781  -0.000000997   0.000328514
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000000  -0.000000006  -0.000001485   0.000004368   0.000000266   0.000001393   0.002222219   0.000006742
                        -0.000000000  -0.000000010   0.000006308  -0.000018556   0.000003834   0.000020054   0.000746139   0.000002264

    3    1.2  1.5 -0.5  -0.000000012  -0.000000000   0.000019063   0.000006480  -0.000020102   0.000003843  -0.000007112   0.002344138
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    4    1.2  1.5 -1.5  -0.000000000  -0.000000002   0.000001509  -0.000004440   0.000000262   0.000001371   0.000311428   0.000000945
                        -0.000000000  -0.000000003  -0.000006412   0.000018862   0.000003772   0.000019728   0.000104566   0.000000317

    5    1.2  0.5  0.5   0.000000000   0.021324354   0.045518120  -0.133907387  -0.001691255  -0.008845484   0.003621170   0.000010987
                        -0.000000000   0.037180988  -0.193382608   0.568902227  -0.024343724  -0.127320806   0.001215855   0.000003689

    6    2.2  0.5  0.5  -0.000000000  -0.025435367   0.009588875  -0.028209014   0.008033951   0.042018596  -0.003209911  -0.000009739
                         0.000000000  -0.044348921  -0.040738100   0.119845293   0.115639711   0.604810556  -0.001077770  -0.000003270

    7    3.2  0.5  0.5   0.544916070  -0.000000000  -0.577994010  -0.196473109   0.165870377  -0.031714398  -0.000012208   0.004023671
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    8    4.2  0.5  0.5  -0.000000000  -0.488157602  -0.141494427   0.416255087   0.083209062   0.435194095  -0.000225497  -0.000000684
                         0.000000000   0.279972260  -0.033304755   0.097977524  -0.005780865  -0.030234665   0.000671597   0.000002038

    9    5.2  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.618007465  -0.000000000   0.150592462   0.051189750  -0.602493030   0.115196600   0.000014358  -0.004732119

   10    6.2  0.5  0.5  -0.000002052   0.000000000  -0.001664135  -0.000565677  -0.006238200   0.001192743  -0.001523686   0.502182575
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   11    7.2  0.5  0.5   0.000000000   0.000002479  -0.001447795   0.004259193  -0.000880111  -0.004603092  -0.257439145  -0.000781103
                        -0.000000000  -0.000001422  -0.000340780   0.001002523   0.000061145   0.000319795   0.766728628   0.002326353

   12    8.2  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000806   0.000000000   0.006039726   0.002053038   0.001624014  -0.000310511  -0.000928190   0.305916669

   13    1.2  0.5 -0.5  -0.042862034   0.000000000   0.584449255   0.198667391  -0.127627703   0.024402403   0.000011590  -0.003819840
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   14    2.2  0.5 -0.5   0.051125186   0.000000000   0.123120442   0.041851396   0.606268398  -0.115918450  -0.000010274   0.003386018
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   15    3.2  0.5 -0.5   0.000000000   0.271101997   0.045015372  -0.132428379  -0.002198027  -0.011495966   0.003814400   0.000011573
                         0.000000000   0.472691475  -0.191246696   0.562618699  -0.031638137  -0.165471520   0.001280735   0.000003886

   16    4.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.562745334  -0.000000000   0.427630558   0.145361204   0.436243090  -0.083409630  -0.000002150   0.000708443

   17    5.2  0.5 -0.5   0.000000000   0.536095146   0.049828044  -0.146586530   0.114919597   0.601044265  -0.001506234  -0.000004570
                        -0.000000000  -0.307465804   0.011728453  -0.034503325  -0.007983922  -0.041756938   0.004486002   0.000013611

   18    6.2  0.5 -0.5   0.000000000  -0.000001021   0.000129606  -0.000381282   0.000082665   0.000432350   0.476064075   0.001444439
                         0.000000000  -0.000001780  -0.000550629   0.001619867   0.001189875   0.006223199   0.159844728   0.000484989

   19    7.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000002857   0.000000000   0.004375589   0.001487361  -0.004614188   0.000882232  -0.002453985   0.808793981

   20    8.2  0.5 -0.5  -0.000000000  -0.000000699   0.001998425  -0.005879063  -0.000309765  -0.001620109   0.097373282   0.000295443
                         0.000000000   0.000000401   0.000470386  -0.001383805   0.000021521   0.000112555  -0.290005950  -0.000879915


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.000000219  -0.002344149   0.000000000  -0.000000307
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000125333   0.000000012  -0.000001000  -0.000000001
                         0.000303668  -0.000000028   0.000000072   0.000000000

    3    1.2  1.5 -0.5   0.000000031   0.000328515  -0.000000001   0.000001002
                         0.000000000  -0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.000894321  -0.000000083   0.000000306   0.000000000
                        -0.002166847   0.000000202  -0.000000022  -0.000000000

    5    1.2  0.5  0.5  -0.001291812   0.000000121  -0.000002160  -0.000000001
                         0.003129924  -0.000000292   0.000000156   0.000000000

    6    2.2  0.5  0.5  -0.001457323   0.000000136   0.000000639   0.000000000
                         0.003530942  -0.000000330  -0.000000046  -0.000000000

    7    3.2  0.5  0.5   0.000000293   0.003141123  -0.000000001   0.000002203
                         0.000000000  -0.000000000   0.000000000  -0.000000000

    8    4.2  0.5  0.5   0.004672825  -0.000000436   0.000000048   0.000000000
                         0.001928612  -0.000000180   0.000000661   0.000000000

    9    5.2  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000179   0.001914059   0.000000001  -0.000001540

   10    6.2  0.5  0.5  -0.000060070  -0.643689598  -0.000347707   0.577431167
                         0.000000000   0.000000000   0.000000000  -0.000000000

   11    7.2  0.5  0.5  -0.104843854   0.000009784   0.041647230   0.000025078
                        -0.043272134   0.000004038   0.575499599   0.000346544

   12    8.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000070625   0.756788106  -0.000347817   0.577614581

   13    1.2  0.5 -0.5  -0.000000316  -0.003386031   0.000000001  -0.000002166
                        -0.000000000   0.000000000  -0.000000000   0.000000000

   14    2.2  0.5 -0.5  -0.000000356  -0.003819861  -0.000000000   0.000000641
                         0.000000000  -0.000000000   0.000000000  -0.000000000

   15    3.2  0.5 -0.5  -0.001198376   0.000000112  -0.000002197  -0.000000001
                         0.002903540  -0.000000271   0.000000159   0.000000000

   16    4.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000472  -0.005055180   0.000000000  -0.000000663

   17    5.2  0.5 -0.5   0.001769287  -0.000000165  -0.000000111  -0.000000000
                         0.000730237  -0.000000068  -0.000001536  -0.000000001

   18    6.2  0.5 -0.5   0.245575362  -0.000022918  -0.575925078  -0.000346800
                        -0.595003394   0.000055527   0.041678021   0.000025097

   19    7.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000010585   0.113422708   0.000347450  -0.577004576

   20    8.2  0.5 -0.5   0.699547568  -0.000065283   0.041691259   0.000025105
                         0.288723810  -0.000026944   0.576108013   0.000346910


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.001%  98.305%   0.001%   1.692%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   1.692%   0.000%  98.232%   0.075%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   1.693%   0.075%  98.232%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  98.306%   0.001%   1.691%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  17.248%  41.838%   0.925%   0.010%   0.000%   0.184%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.288%   0.699%  58.346%   0.612%   0.000%   0.261%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  20.035%   8.259%   0.020%   1.870%  29.693%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   2.814%   6.825%  18.371%   0.193%   0.000%  31.668%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.412%   0.582%   0.204%  19.449%  38.193%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  41.838%  17.248%   0.010%   0.925%   0.184%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.699%   0.288%   0.612%  58.346%   0.261%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   8.259%  20.035%   1.870%   0.020%   0.000%  29.693%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   6.825%   2.814%   0.193%  18.371%  31.668%   0.000%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.582%   1.412%  19.449%   0.204%   0.000%  38.193%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   3.947%  34.158%   0.060%   1.629%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
    6    2.2  0.5  0.5   0.175%   1.516%   1.344%  36.756%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5  33.408%   3.860%   2.751%   0.101%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
    8    4.2  0.5  0.5   2.113%  18.287%   0.696%  19.031%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   2.268%   0.262%  36.300%   1.327%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%  25.219%   0.000%  41.434%   0.000%  33.343%
   11    7.2  0.5  0.5   0.000%   0.002%   0.000%   0.002%  65.415%   0.001%   1.286%   0.000%  33.293%   0.000%
   12    8.2  0.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   9.359%   0.000%  57.273%   0.000%  33.364%
   13    1.2  0.5 -0.5  34.158%   3.947%   1.629%   0.060%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   14    2.2  0.5 -0.5   1.516%   0.175%  36.756%   1.344%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   15    3.2  0.5 -0.5   3.860%  33.408%   0.101%   2.751%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5  18.287%   2.113%  19.031%   0.696%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.262%   2.268%   1.327%  36.300%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%  25.219%   0.000%  41.434%   0.000%  33.343%   0.000%
   19    7.2  0.5 -0.5   0.002%   0.000%   0.002%   0.000%   0.001%  65.415%   0.000%   1.286%   0.000%  33.293%
   20    8.2  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   9.359%   0.000%  57.273%   0.000%  33.364%   0.000%


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
              1      24       29.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.72       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.03      3.36      0.64      0.89      0.09      0.32      0.02      0.47
 REAL TIME  *         8.10 SEC
 DISK USED  *        31.89 MB (local),      256.51 MB (total)
 SF USED    *        19.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -54.417153209113

              CI              CI           MULTI         RHF-SCF
    -54.41117471    -54.54481477    -54.28626959    -54.42683840
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
