
 Working directory              : /wrk/irikura/molpro.6XcQwh7760/
 Global scratch directory       : /wrk/irikura/molpro.6XcQwh7760/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.6XcQwh7760/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Be SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Be};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=4,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,1,0
     occ,3,3
     wf,sym=1,spin=0;state,6;
     wf,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag(7) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Be SO-CI                                                                                                                                                      
  (12 PROC) 64 bit mpp version                                                           DATE: 29-Feb-24          TIME: 16:42:35  
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

 Library entry BE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry BE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry BE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry BE     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  BE      4.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    4
 NUMBER OF PRIMITIVE AOS:          82
 NUMBER OF SYMMETRY AOS:           72
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.621 MB (compressed) written to integral file ( 20.4%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.429E-02 0.190E-01 0.855E-01 0.932E-01 0.932E-01 0.932E-01 0.932E-01 0.932E-01
         2 0.112E-01 0.112E-01 0.112E-01 0.218E+00 0.218E+00 0.218E+00 0.453E+00 0.453E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.69      0.46
 REAL TIME  *         1.61 SEC
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   0

 NELEC=    4   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -14.57538827     -14.57538827     0.00D+00     0.94D-01     0     0       0.00      0.00    start
   2      -14.57538835      -0.00000008     0.35D-04     0.12D-03     1     0       0.00      0.00    diag
   3      -14.57538836      -0.00000001     0.45D-05     0.29D-04     2     0       0.01      0.01    diag
   4      -14.57538836      -0.00000000     0.11D-05     0.62D-05     3     0       0.00      0.01    diag
   5      -14.57538836      -0.00000000     0.77D-07     0.95D-06     4     0       0.00      0.01    diag
   6      -14.57538836      -0.00000000     0.48D-08     0.37D-07     0     0       0.00      0.01    diag

 Final occupancy:   2   0

 !RHF STATE 1.1 Energy                -14.575388361590
  RHF One-electron energy             -19.065758414577
  RHF Two-electron energy               4.490370052987
  RHF Kinetic energy                   14.593849120761
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998735031518

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.73319     1  1  s    0.99957
    2.1     2.00000    -0.30932     1  2  s    1.00427


 HOMO      2.1    -0.309319 =      -8.4170eV
 LUMO      1.2     0.017883 =       0.4866eV
 LUMO-HOMO         0.327202 =       8.9036eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.70      0.01      0.46
 REAL TIME  *         1.63 SEC
 DISK USED  *        29.28 MB (local),      167.49 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      53 (   24   29)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 4 2 3 1 2   4 5 6 3 1 4 2 5 6 3   1 5 6 3 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.538D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 2 1 310   6 9 4 5 8 7 2 1 3 5   910 6 7 8 4 2 3 1 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111
 
 Number of orbital rotations:  161  ( 2 closed/active, 24 closed/virtual, 0 active/active, 135 active/virtual )
 Total number of variables:    251
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    6    -14.11887861     -14.41411925   -0.29524064    0.08276316 0.00056116 0.00000000  0.17E+01      0.14
   2    7   12    0    -14.33276024     -14.34985552   -0.01709529    0.06685209 0.00002633 0.00000000  0.41E+00      0.30
   3    7   12    0    -14.35023671     -14.35028013   -0.00004342    0.00370257 0.00000264 0.00000000  0.14E-01      0.46
   4    5   10    0    -14.35028027     -14.35028027   -0.00000000    0.00001778 0.00000000 0.00000000  0.93E-04      0.59
   5    3    6    0    -14.35028027     -14.35028027   -0.00000000    0.00000002 0.00000000 0.00000000  0.22E-07      0.64

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.16E-08)
                       Final energy:    -14.35028027
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.615559166896
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.58143098
 One electron energy                           -19.03572745
 Two electron energy                             4.42016829
 Virial ratio                                    2.00234052
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -14.304532482248
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794854
 Two electron energy                             4.30341605
 Virial ratio                                    1.99737135
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -14.304532482244
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794854
 Two electron energy                             4.30341606
 Virial ratio                                    1.99737135
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -14.304532482239
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794854
 Two electron energy                             4.30341606
 Virial ratio                                    1.99737135
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -14.304532482125
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794855
 Two electron energy                             4.30341607
 Virial ratio                                    1.99737135
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -14.304532482093
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794855
 Two electron energy                             4.30341607
 Virial ratio                                    1.99737135
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.338100290652
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794855
 Two electron energy                             4.26984826
 Virial ratio                                    1.99971183
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -14.338100290543
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794854
 Two electron energy                             4.26984825
 Virial ratio                                    1.99971183
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -14.338100290538
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34223325
 One electron energy                           -18.60794854
 Two electron energy                             4.26984825
 Virial ratio                                    1.99971183
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.932528235617
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000012899
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999982674
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000099
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.067475735256
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999996
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000004956
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999995049
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.001484825986
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999020
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999994457
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999999761
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.998515006845
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000065
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999996
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999939
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.065986938398
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999988081
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000022868
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000140
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.934009257899
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999940
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999995049
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000005012
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 2 6 5   3 4 2 6 1 5 3 4 2 6   1 5 3 4 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 7   910 8 4 6 5 1 2 3 9   710 8 4 6 5 1 2 3 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.80170     1  1  s    0.99941
    2.1     0.20108    -0.09799     1  2  s    1.02683
    3.1     0.00040     0.39953     1  1  s    0.52168    1  2  s    1.09212    1  3  s   -1.93475    1  4  s    0.41613
    1.2     0.59951    -0.00245     1  1  pz   0.99308
    2.2     0.59951    -0.00245     1  1  py   0.99308
    3.2     0.59951    -0.00245     1  1  px   0.99308
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.95124201      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 00 020        -0.17637901      0.81634502      0.00002750      0.00005555      0.00000272     -0.01573118
 00 200        -0.17637901     -0.39454891     -0.00001315     -0.00003056     -0.00000518      0.71484112
 00 a0b        -0.00000000     -0.00000228     -0.00000480     -0.00000057      0.70710678      0.00000386
 00 b0a         0.00000000      0.00000228      0.00000480      0.00000057     -0.70710678     -0.00000386
 00 0ab         0.00000000     -0.00002382      0.70710678     -0.00004234      0.00000480     -0.00000014
 00 0ba        -0.00000000      0.00002382     -0.70710678      0.00004234     -0.00000480      0.00000014
 00 ab0         0.00000000     -0.00004804      0.00004234      0.70710678      0.00000057      0.00000371
 00 ba0        -0.00000000      0.00004804     -0.00004234     -0.70710678     -0.00000057     -0.00000371
 00 002        -0.17637901     -0.42179611     -0.00001435     -0.00002499      0.00000245     -0.69910994
 
 Energy:      -14.61555917    -14.30453248    -14.30453248    -14.30453248    -14.30453248    -14.30453248
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 00 a0a         1.00000000      0.00000207      0.00000777
 00 aa0        -0.00000207      1.00000000      0.00007037
 00 0aa        -0.00000777     -0.00007037      1.00000000
 
 Energy:      -14.33810029    -14.33810029    -14.33810029
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.57       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.37      0.68      0.01      0.46
 REAL TIME  *         2.39 SEC
 DISK USED  *        29.85 MB (local),      170.33 MB (total)
 SF USED    *         1.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.61555917   0.0
    -14.30453248   6.0
    -14.30453248   6.0
    -14.30453248   6.0
    -14.30453248   6.0
    -14.30453248   6.0
    -14.33810029   2.0
    -14.33810029   2.0
    -14.33810029   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  4
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:        9 conf        9 CSFs
 N elec internal:       90 conf      105 CSFs
 N-1 el internal:       50 conf       70 CSFs
 N-2 el internal:       15 conf       24 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      53 (  24  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.61555917
     2       -14.30453248
     3       -14.30453248
     4       -14.30453248
     5       -14.30453248
     6       -14.30453248

 Number of blocks in overlap matrix:    17   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      17
 Number of N-1 electron functions:      70

 Number of internal configurations:                   57
 Number of singly external configurations:          1855
 Number of doubly external configurations:         12155
 Total number of contracted configurations:        14067
 Total number of uncontracted configurations:      19000

 Diagonal Coupling coefficients finished.               Storage:    190936 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193985 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.61555917    -0.00000000    -0.04415222  0.53D-02  0.20D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.30453248     0.00000000    -0.07307584  0.42D-01  0.11D-01     0.01
    1     3     3     1.00000000     0.00000000   -14.30453248     0.00000000    -0.06958202  0.27D-01  0.11D-01     0.01
    1     4     4     1.00000000     0.00000000   -14.30453248     0.00000000    -0.06964573  0.27D-01  0.11D-01     0.01
    1     5     5     1.00000000     0.00000000   -14.30453248     0.00000000    -0.06958726  0.27D-01  0.11D-01     0.01
    1     6     6     1.00000000     0.00000000   -14.30453248     0.00000000    -0.07304720  0.42D-01  0.11D-01     0.01
    2     1     1     1.00777430    -0.04603538   -14.66159454    -0.04603538    -0.00026282  0.70D-04  0.66D-04     0.05
    2     2     2     1.05743642    -0.07676228   -14.38129476    -0.07676228    -0.00478726  0.10D-01  0.42D-03     0.05
    2     3     3     1.05738282    -0.07674563   -14.38127812    -0.07674563    -0.00479619  0.10D-01  0.42D-03     0.05
    2     4     4     1.04225294    -0.07422394   -14.37875642    -0.07422394    -0.00561702  0.13D-01  0.40D-03     0.05
    2     5     5     1.04225515    -0.07421432   -14.37874681    -0.07421432    -0.00562320  0.13D-01  0.40D-03     0.05
    2     6     6     1.04231962    -0.07421364   -14.37874612    -0.07421364    -0.00562632  0.13D-01  0.40D-03     0.05
    3     1     1     1.00882982    -0.04634401   -14.66190317    -0.00030863    -0.00001275  0.87D-05  0.20D-05     0.10
    3     2     2     1.14599439    -0.08510328   -14.38963576    -0.00834100    -0.00111655  0.11D-02  0.18D-03     0.10
    3     3     3     1.14587111    -0.08509485   -14.38962733    -0.00834922    -0.00112318  0.11D-02  0.19D-03     0.10
    3     4     4     1.14221371    -0.08465480   -14.38918728    -0.01043085    -0.00141192  0.15D-02  0.22D-03     0.10
    3     5     5     1.14222660    -0.08465227   -14.38918475    -0.01043795    -0.00141329  0.15D-02  0.22D-03     0.10
    3     6     6     1.14186141    -0.08464056   -14.38917304    -0.01042692    -0.00142309  0.15D-02  0.22D-03     0.10
    4     1     1     1.00947305    -0.04636026   -14.66191942    -0.00001625    -0.00000048  0.23D-06  0.70D-07     0.14
    4     2     2     1.20274590    -0.08664760   -14.39118008    -0.00154432    -0.00009785  0.46D-04  0.42D-04     0.14
    4     3     3     1.20269691    -0.08664709   -14.39117957    -0.00155223    -0.00009785  0.47D-04  0.42D-04     0.14
    4     4     4     1.19926503    -0.08656448   -14.39109696    -0.00190969    -0.00015906  0.10D-03  0.59D-04     0.14
    4     5     5     1.19928440    -0.08656423   -14.39109671    -0.00191196    -0.00015931  0.10D-03  0.59D-04     0.14
    4     6     6     1.19923657    -0.08656419   -14.39109667    -0.00192363    -0.00015915  0.10D-03  0.59D-04     0.14
    5     1     1     1.00946443    -0.04636084   -14.66192001    -0.00000059    -0.00000002  0.11D-07  0.31D-08     0.18
    5     2     2     1.20665755    -0.08678033   -14.39131282    -0.00013274    -0.00000642  0.38D-05  0.10D-05     0.18
    5     3     3     1.20666305    -0.08678029   -14.39131278    -0.00013321    -0.00000644  0.39D-05  0.10D-05     0.18
    5     4     4     1.20550885    -0.08677586   -14.39130834    -0.00021138    -0.00000957  0.55D-05  0.17D-05     0.18
    5     5     5     1.20550350    -0.08677584   -14.39130833    -0.00021161    -0.00000957  0.55D-05  0.17D-05     0.18
    5     6     6     1.20551210    -0.08677580   -14.39130829    -0.00021162    -0.00000962  0.55D-05  0.17D-05     0.18
    6     1     1     1.00946173    -0.04636088   -14.66192004    -0.00000003    -0.00000000  0.37D-09  0.14D-09     0.23
    6     2     2     1.20792158    -0.08678788   -14.39132036    -0.00000754    -0.00000053  0.36D-06  0.13D-06     0.23
    6     3     3     1.20792620    -0.08678787   -14.39132035    -0.00000758    -0.00000053  0.36D-06  0.13D-06     0.23
    6     4     4     1.20765254    -0.08678740   -14.39131988    -0.00001154    -0.00000083  0.47D-06  0.21D-06     0.23
    6     5     5     1.20764859    -0.08678740   -14.39131988    -0.00001156    -0.00000083  0.47D-06  0.21D-06     0.23
    6     6     6     1.20764465    -0.08678740   -14.39131988    -0.00001159    -0.00000084  0.47D-06  0.21D-06     0.23
    7     1     1     1.00946173    -0.04636088   -14.66192004    -0.00000000    -0.00000000  0.37D-09  0.14D-09     0.26
    7     2     2     1.20913690    -0.08678864   -14.39132112    -0.00000076    -0.00000007  0.60D-07  0.64D-08     0.26
    7     3     3     1.20908485    -0.08678863   -14.39132111    -0.00000076    -0.00000007  0.50D-07  0.12D-07     0.26
    7     4     4     1.20908616    -0.08678863   -14.39132111    -0.00000123    -0.00000007  0.51D-07  0.12D-07     0.26
    7     5     5     1.20898299    -0.08678858   -14.39132106    -0.00000117    -0.00000011  0.93D-07  0.21D-07     0.26
    7     6     6     1.20897844    -0.08678858   -14.39132106    -0.00000118    -0.00000011  0.92D-07  0.21D-07     0.26
    8     1     1     1.00946173    -0.04636088   -14.66192004    -0.00000000    -0.00000000  0.37D-09  0.14D-09     0.30
    8     2     2     1.20938626    -0.08678872   -14.39132121    -0.00000008    -0.00000000  0.23D-08  0.88D-09     0.30
    8     3     3     1.20942088    -0.08678872   -14.39132120    -0.00000009    -0.00000001  0.28D-08  0.25D-08     0.30
    8     4     4     1.20941867    -0.08678872   -14.39132120    -0.00000009    -0.00000001  0.28D-08  0.26D-08     0.30
    8     5     5     1.20937769    -0.08678872   -14.39132120    -0.00000014    -0.00000001  0.39D-08  0.14D-08     0.30
    8     6     6     1.20937533    -0.08678872   -14.39132120    -0.00000014    -0.00000001  0.40D-08  0.14D-08     0.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.3%
 S   3.3%   3.3%
 P   6.7%  13.3%  10.0%

 Initialization:   3.3%
 Other:           56.7%

 Total CPU:        0.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220000           0.9525605  -0.0000000  -0.0000000   0.0000000   0.0000008   0.0000007
 200/0\           0.0000000   0.9092889   0.0000000   0.0000000   0.0000000   0.0000000
 200/\0          -0.0000000  -0.0000000   0.0000000   0.9092767   0.0000000   0.0000000
 2000/\           0.0000000  -0.0000000   0.9092759   0.0000000   0.0000000  -0.0000000
 200200          -0.1643330   0.0000000  -0.0000000   0.0000000  -0.1170580   0.7331489
 200002          -0.1643329   0.0000000  -0.0000000   0.0000000   0.6934540  -0.2651978
 200020          -0.1643329   0.0000000  -0.0000000   0.0000000  -0.5763949  -0.4679494

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0000   6.1    -0.0000000   0.0000000  -0.3677304   0.0000000   0.0000000   0.0000000
 2\0000   9.1    -0.0000000  -0.0000000   0.0000000  -0.3677282   0.0000000   0.0000000
 2\0000   7.1     0.0000000  -0.3677173  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2\0000   5.1    -0.0000001  -0.0000000   0.0000000   0.0000000   0.3631024   0.0579526
 2\0000   8.1    -0.0000001  -0.0000000   0.0000000   0.0000000   0.0579537  -0.3631003
 2\0000  11.1    -0.0000000   0.0000000  -0.1595282  -0.0000000   0.0000000   0.0000000
 2\0000  14.1     0.0000000   0.0000000   0.0000000   0.1595276  -0.0000000  -0.0000000
 2\0000  12.1    -0.0000000  -0.1594925  -0.0000000   0.0000000  -0.0000000   0.0000000
 2\0000  10.1    -0.0000001   0.0000000  -0.0000000   0.0000000  -0.1575322  -0.0251536
 2\0000  13.1    -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0251533  -0.1575322

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.994814   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000   -0.000000   -0.000000   -0.000000    0.909289   -0.000000
 3          -0.000000   -0.000000    0.909276    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.909277    0.000000    0.000000
 5           0.000001   -0.716856    0.000000    0.000000    0.000000   -0.559401
 6           0.000000   -0.559402   -0.000000    0.000000    0.000000    0.716856

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.994814    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.909289   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.909276    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.909277    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.909292    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.909293


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99481376 (fixed)   0.99526945 (relaxed)   0.99481376 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098270   -0.00048234   -0.03673170
 Singles      0.00724968   -0.00929077   -0.00952789
 Pairs        0.00222134    0.00000002   -0.00010129
 Total        1.01045373   -0.00977309   -0.04636088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.61555917
 Nuclear energy                         0.00000000
 Kinetic energy                        14.66667317
 One electron energy                  -19.04388796
 Two electron energy                    4.38196792
 Virial quotient                       -0.99967592
 Correlation energy                    -0.04636088
 !MRCI STATE 1.1 Energy               -14.661920043739

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.66240469 (Davidson, fixed reference)
 Cluster corrected energies           -14.66236180 (Davidson, relaxed reference)
 Cluster corrected energies           -14.66240469 (Davidson, rotated reference)

 Cluster corrected energies           -14.66216236 (Pople, fixed reference)
 Cluster corrected energies           -14.66214092 (Pople, relaxed reference)
 Cluster corrected energies           -14.66216236 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.90928892 (fixed)   0.90928892 (relaxed)   0.90928892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007178   -0.00068091   -0.03726380
 Singles      0.19805918   -0.04172539   -0.04871547
 Pairs        0.01134211   -0.00000000   -0.00080945
 Total        1.20947307   -0.04240630   -0.08678872
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30453248
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40562341
 One electron energy                  -18.52802007
 Two electron energy                    4.13669886
 Virial quotient                       -0.99900718
 Correlation energy                    -0.08678872
 !MRCI STATE 2.1 Energy               -14.391321205635

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.40950111 (Davidson, fixed reference)
 Cluster corrected energies           -14.40950111 (Davidson, relaxed reference)
 Cluster corrected energies           -14.40950111 (Davidson, rotated reference)

 Cluster corrected energies           -14.40031357 (Pople, fixed reference)
 Cluster corrected energies           -14.40031357 (Pople, relaxed reference)
 Cluster corrected energies           -14.40031357 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.90927590 (fixed)   0.90927590 (relaxed)   0.90927590 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007178   -0.00068092   -0.03726050
 Singles      0.19808980   -0.04172809   -0.04871634
 Pairs        0.01134611    0.00000000   -0.00081188
 Total        1.20950770   -0.04240901   -0.08678872
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30453248
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40564315
 One electron energy                  -18.52806496
 Two electron energy                    4.13674376
 Virial quotient                       -0.99900581
 Correlation energy                    -0.08678872
 !MRCI STATE 3.1 Energy               -14.391321202026

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.40950411 (Davidson, fixed reference)
 Cluster corrected energies           -14.40950411 (Davidson, relaxed reference)
 Cluster corrected energies           -14.40950411 (Davidson, rotated reference)

 Cluster corrected energies           -14.40031502 (Pople, fixed reference)
 Cluster corrected energies           -14.40031502 (Pople, relaxed reference)
 Cluster corrected energies           -14.40031502 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.90927674 (fixed)   0.90927674 (relaxed)   0.90927674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007178   -0.00068092   -0.03726071
 Singles      0.19808727   -0.04172792   -0.04871621
 Pairs        0.01134643    0.00000000   -0.00081180
 Total        1.20950548   -0.04240884   -0.08678872
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30453248
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40564308
 One electron energy                  -18.52806583
 Two electron energy                    4.13674463
 Virial quotient                       -0.99900581
 Correlation energy                    -0.08678872
 !MRCI STATE 4.1 Energy               -14.391321201919

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.40950391 (Davidson, fixed reference)
 Cluster corrected energies           -14.40950391 (Davidson, relaxed reference)
 Cluster corrected energies           -14.40950391 (Davidson, rotated reference)

 Cluster corrected energies           -14.40031493 (Pople, fixed reference)
 Cluster corrected energies           -14.40031493 (Pople, relaxed reference)
 Cluster corrected energies           -14.40031493 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.71685585 (fixed)   0.90929214 (relaxed)   0.90929214 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007178   -0.00068091   -0.05983862
 Singles      0.19804983   -0.04172664   -0.04871493
 Pairs        0.01134289    0.02730438    0.02176483
 Total        1.20946450   -0.01510317   -0.08678872
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30453248
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40561217
 One electron energy                  -18.52804948
 Two electron energy                    4.13672828
 Virial quotient                       -0.99900796
 Correlation energy                    -0.08678872
 !MRCI STATE 5.1 Energy               -14.391321201687

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.40950036 (Davidson, fixed reference)
 Cluster corrected energies           -14.40950036 (Davidson, relaxed reference)
 Cluster corrected energies           -14.40950036 (Davidson, rotated reference)

 Cluster corrected energies           -14.40031321 (Pople, fixed reference)
 Cluster corrected energies           -14.40031321 (Pople, relaxed reference)
 Cluster corrected energies           -14.40031321 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.71685639 (fixed)   0.90929303 (relaxed)   0.90929303 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007178   -0.00068091   -0.00833457
 Singles      0.19804751   -0.04172661   -0.04871485
 Pairs        0.01134286   -0.03498799   -0.02973930
 Total        1.20946214   -0.07739552   -0.08678872
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30453248
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40561259
 One electron energy                  -18.52805048
 Two electron energy                    4.13672928
 Virial quotient                       -0.99900793
 Correlation energy                    -0.08678872
 !MRCI STATE 6.1 Energy               -14.391321201607

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.40950015 (Davidson, fixed reference)
 Cluster corrected energies           -14.40950015 (Davidson, relaxed reference)
 Cluster corrected energies           -14.40950015 (Davidson, rotated reference)

 Cluster corrected energies           -14.40031311 (Pople, fixed reference)
 Cluster corrected energies           -14.40031311 (Pople, relaxed reference)
 Cluster corrected energies           -14.40031311 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.35       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.74      0.37      0.68      0.01      0.46
 REAL TIME  *         2.81 SEC
 DISK USED  *        30.63 MB (local),      174.22 MB (total)
 SF USED    *         6.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.66240469  AU                              
 SETTING HLSDIAG(2)     =       -14.40950111  AU                              
 SETTING HLSDIAG(3)     =       -14.40950411  AU                              
 SETTING HLSDIAG(4)     =       -14.40950391  AU                              
 SETTING HLSDIAG(5)     =       -14.40950036  AU                              
 SETTING HLSDIAG(6)     =       -14.40950015  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  4
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        4 conf        4 CSFs
 N elec internal:       75 conf      105 CSFs
 N-1 el internal:       38 conf       78 CSFs
 N-2 el internal:       10 conf       28 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      53 (  24  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.33810029
     2       -14.33810029
     3       -14.33810029

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      78

 Number of internal configurations:                   51
 Number of singly external configurations:          2067
 Number of doubly external configurations:          7063
 Total number of contracted configurations:         9181
 Total number of uncontracted configurations:      21658

 Diagonal Coupling coefficients finished.               Storage:    182494 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    193386 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.33810029     0.00000000    -0.04721731  0.88D-03  0.76D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.33810029     0.00000000    -0.04721770  0.88D-03  0.76D-02     0.01
    1     3     3     1.00000000     0.00000000   -14.33810029    -0.00000000    -0.04718037  0.88D-03  0.75D-02     0.01
    2     1     1     1.00938890    -0.05067971   -14.38878000    -0.05067971    -0.00051660  0.17D-03  0.27D-03     0.02
    2     2     2     1.00938882    -0.05067966   -14.38877995    -0.05067966    -0.00051665  0.17D-03  0.27D-03     0.02
    2     3     3     1.00932482    -0.05066775   -14.38876804    -0.05066775    -0.00052308  0.17D-03  0.27D-03     0.02
    3     1     1     1.01369601    -0.05134795   -14.38944824    -0.00066824    -0.00002186  0.96D-06  0.89D-05     0.04
    3     2     2     1.01369583    -0.05134794   -14.38944823    -0.00066828    -0.00002187  0.96D-06  0.89D-05     0.04
    3     3     3     1.01369242    -0.05134725   -14.38944754    -0.00067949    -0.00002239  0.10D-05  0.90D-05     0.04
    4     1     1     1.01435240    -0.05137364   -14.38947393    -0.00002569    -0.00000062  0.24D-06  0.29D-06     0.05
    4     2     2     1.01435239    -0.05137364   -14.38947393    -0.00002570    -0.00000062  0.24D-06  0.29D-06     0.05
    4     3     3     1.01435328    -0.05137360   -14.38947389    -0.00002636    -0.00000064  0.26D-06  0.29D-06     0.05
    5     1     1     1.01435054    -0.05137452   -14.38947481    -0.00000088    -0.00000008  0.63D-07  0.19D-07     0.06
    5     2     2     1.01435054    -0.05137452   -14.38947481    -0.00000088    -0.00000008  0.63D-07  0.19D-07     0.06
    5     3     3     1.01435028    -0.05137452   -14.38947481    -0.00000092    -0.00000008  0.64D-07  0.20D-07     0.06
    6     1     1     1.01434235    -0.05137464   -14.38947493    -0.00000012    -0.00000000  0.34D-08  0.55D-09     0.08
    6     2     2     1.01434235    -0.05137464   -14.38947493    -0.00000012    -0.00000000  0.34D-08  0.55D-09     0.08
    6     3     3     1.01434226    -0.05137464   -14.38947493    -0.00000012    -0.00000000  0.35D-08  0.58D-09     0.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P  12.5%  12.5%  12.5%

 Initialization:  12.5%
 Other:           50.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000//          -0.0000000  -0.0000000   0.9928485
 200/0/           0.9928484  -0.0000000  -0.0000000
 200//0          -0.0000000   0.9928484   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.992848   -0.000000   -0.000000
 2          -0.000000    0.992848   -0.000000
 3          -0.000000    0.000000    0.992848

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.992848   -0.000000   -0.000000
 2          -0.000000    0.992848   -0.000000
 3          -0.000000   -0.000000    0.992848


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99284842 (fixed)   0.99284842 (relaxed)   0.99284842 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011409   -0.00085054   -0.04414419
 Singles      0.00171174   -0.00659807   -0.00659038
 Pairs        0.01263225   -0.00000000   -0.00064007
 Total        1.01445808   -0.00744860   -0.05137464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33810029
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39617050
 One electron energy                  -18.59520122
 Two electron energy                    4.20572630
 Virial quotient                       -0.99953491
 Correlation energy                    -0.05137464
 !MRCI STATE 1.1 Energy               -14.389474927748

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39021771 (Davidson, fixed reference)
 Cluster corrected energies           -14.39021771 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39021771 (Davidson, rotated reference)

 Cluster corrected energies           -14.38947493 (Pople, fixed reference)
 Cluster corrected energies           -14.38947493 (Pople, relaxed reference)
 Cluster corrected energies           -14.38947493 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.99284842 (fixed)   0.99284842 (relaxed)   0.99284842 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011409   -0.00085054   -0.04414419
 Singles      0.00171174   -0.00659807   -0.00659038
 Pairs        0.01263225   -0.00000000   -0.00064007
 Total        1.01445808   -0.00744861   -0.05137464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33810029
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39617054
 One electron energy                  -18.59520124
 Two electron energy                    4.20572631
 Virial quotient                       -0.99953490
 Correlation energy                    -0.05137464
 !MRCI STATE 2.1 Energy               -14.389474927731

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39021771 (Davidson, fixed reference)
 Cluster corrected energies           -14.39021771 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39021771 (Davidson, rotated reference)

 Cluster corrected energies           -14.38947493 (Pople, fixed reference)
 Cluster corrected energies           -14.38947493 (Pople, relaxed reference)
 Cluster corrected energies           -14.38947493 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.99284846 (fixed)   0.99284846 (relaxed)   0.99284846 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011409   -0.00085054   -0.00084419
 Singles      0.00171170   -0.00659809   -0.00659039
 Pairs        0.01263220   -0.04392601   -0.04394006
 Total        1.01445799   -0.05137464   -0.05137464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33810029
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39616924
 One electron energy                  -18.59519959
 Two electron energy                    4.20572467
 Virial quotient                       -0.99953499
 Correlation energy                    -0.05137464
 !MRCI STATE 3.1 Energy               -14.389474927449

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39021770 (Davidson, fixed reference)
 Cluster corrected energies           -14.39021770 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39021770 (Davidson, rotated reference)

 Cluster corrected energies           -14.38947493 (Pople, fixed reference)
 Cluster corrected energies           -14.38947493 (Pople, relaxed reference)
 Cluster corrected energies           -14.38947493 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.58       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.87      0.12      0.37      0.68      0.01      0.46
 REAL TIME  *         2.95 SEC
 DISK USED  *        30.86 MB (local),      175.38 MB (total)
 SF USED    *         6.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =       -14.39021771  AU                              
 SETTING HLSDIAG(8)     =       -14.39021771  AU                              
 SETTING HLSDIAG(9)     =       -14.39021770  AU                              


        HLSDIAG
    -14.66240469
    -14.40950111
    -14.40950411
    -14.40950391
    -14.40950036
    -14.40950015
    -14.39021771
    -14.39021771
    -14.39021770
                                                  


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

 Time for Seward_LS:       0.18 sec

         940665. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.18 sec


 SORTLS1 read      953868. and wrote      953868. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.03 sec
 SORTLS2 read      953868. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -14.661920    -14.391321    -14.391321    -14.391321    -14.391321    -14.391321
 Replaced energies:    -14.662405    -14.409501    -14.409504    -14.409504    -14.409500    -14.409500

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -14.389475    -14.389475    -14.389475
 Replaced energies:    -14.390218    -14.390218    -14.390218



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.66240469

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.44       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.44      -0.00       0.00

    2   2.1  0.0  0.0       0.00   55505.92       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.84      -0.00

    3   3.1  0.0  0.0       0.00       0.00   55505.26       0.00       0.00       0.00       0.00       0.84      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.84       0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   55505.30       0.00       0.00       0.00      -0.00       0.84       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -1.19

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   55506.08       0.00       0.76      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.91       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   55506.13       0.61      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.35       0.00      -0.00

    7   1.1  1.0  1.0      -0.44       0.00       0.00       0.00       0.76       0.61   59738.14       0.00       0.00       0.00
                           -0.00       0.00      -0.84       0.00      -0.00       0.00       0.00      -0.81      -0.00       0.00

    8   2.1  1.0  1.0       0.00      -0.00       0.84      -0.00      -0.00      -0.00       0.00   59738.14       0.00      -0.00
                            0.44      -0.00      -0.00      -0.00       0.91      -0.35       0.81      -0.00      -0.00       0.00

    9   3.1  1.0  1.0      -0.00      -0.00      -0.00       0.84      -0.00      -0.00       0.00       0.00   59738.14       0.00
                            0.00       0.84       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.57

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00   59738.14
                           -0.00       0.00      -0.00       1.19      -0.00       0.00      -0.00      -0.00       0.57       0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.57       0.00
                           -0.00      -1.19      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.57       0.00       0.00
                           -0.62       0.00       0.00       0.00       0.22      -1.36      -0.57       0.00      -0.00      -0.00

   13   1.1  1.0 -1.0      -0.44       0.00       0.00       0.00       0.76       0.61       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.84      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   14   2.1  1.0 -1.0       0.00      -0.00       0.84      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.44       0.00       0.00       0.00      -0.91       0.35      -0.00      -0.00      -0.00       0.00

   15   3.1  1.0 -1.0      -0.00      -0.00      -0.00       0.84      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.84      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.57


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  0.0  0.0       0.00       0.00      -0.44       0.00      -0.00
                            0.00       0.62      -0.00       0.44       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00
                            1.19      -0.00       0.00      -0.00       0.84

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.84      -0.00
                            0.00      -0.00      -0.84      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.84
                            0.00      -0.00       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.76      -0.00      -0.00
                           -0.00      -0.22      -0.00       0.91      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.61      -0.00      -0.00
                           -0.00       1.36       0.00      -0.35      -0.00

    7   1.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.57       0.00       0.00       0.00

    8   2.1  1.0  1.0       0.00       0.57       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

    9   3.1  1.0  1.0      -0.57       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.57

   11   2.1  1.0  0.0   59738.14       0.00      -0.00       0.00       0.57
                            0.00       0.00       0.00      -0.00      -0.00

   12   3.1  1.0  0.0       0.00   59738.14       0.00      -0.57       0.00
                           -0.00       0.00      -0.57       0.00       0.00

   13   1.1  1.0 -1.0      -0.00       0.00   59738.14       0.00       0.00
                           -0.00       0.57      -0.00       0.81       0.00

   14   2.1  1.0 -1.0       0.00      -0.57       0.00   59738.14       0.00
                            0.00      -0.00      -0.81       0.00       0.00

   15   3.1  1.0 -1.0       0.57       0.00       0.00       0.00   59738.14
                            0.00      -0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -14.66240469 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.622       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   55505.920       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   55505.262       0.000       0.000       0.000       0.000       1.194
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   55505.304       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   55506.085       0.000       1.071      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   55506.130       0.869      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.622       0.000       0.000       0.000       1.071       0.869   59738.137       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       1.194      -0.000      -0.000      -0.000       0.000   59738.137
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000       1.194      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       1.193      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.193      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.619       0.000       0.000       0.000       0.217      -1.361      -0.810       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -1.193       0.000      -0.000       0.000       0.000      -0.810

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.619      -0.000      -0.000      -0.000       1.287      -0.492       0.810      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.193       0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.619       0.000      -0.619      -0.000

    2    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.193      -0.000      -0.000       0.000      -1.193

    3    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       1.193       0.000      -0.000

    4    1  |0 0>               1.194       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.193       0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.217       0.000      -1.287       0.000

    6    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       1.361      -0.000       0.492       0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.810       0.000      -0.810      -0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.810      -0.000      -0.000

    3    1  |1 1>+          59738.139      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.810       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000   59738.137       0.000       0.000       0.000      -0.000       0.000
                                0.810       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000   59738.137       0.000       0.000       0.000      -0.810
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000   59738.139      -0.000       0.810       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000      -0.000   59738.137       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000      -0.000       0.000       0.810       0.000   59738.137       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000      -0.810       0.000       0.000       0.000   59738.139
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.66240469    -0.00000000       -0.00      0.00000000        0.00      0.0000
    2   -14.40950411     0.25290058    55505.26      0.25290058    55505.26      6.8818
    3   -14.40950392     0.25290077    55505.30      0.25290077    55505.30      6.8818
    4   -14.40950111     0.25290358    55505.92      0.25290358    55505.92      6.8819
    5   -14.40950036     0.25290433    55506.08      0.25290433    55506.08      6.8819
    6   -14.40950016     0.25290453    55506.13      0.25290453    55506.13      6.8819
    7   -14.39022509     0.27217960    59736.52      0.27217960    59736.52      7.4064
    8   -14.39022140     0.27218329    59737.33      0.27218329    59737.33      7.4065
    9   -14.39022140     0.27218329    59737.33      0.27218329    59737.33      7.4065
   10   -14.39022140     0.27218329    59737.33      0.27218329    59737.33      7.4065
   11   -14.39021401     0.27219068    59738.95      0.27219068    59738.95      7.4067
   12   -14.39021401     0.27219068    59738.95      0.27219068    59738.95      7.4067
   13   -14.39021401     0.27219068    59738.95      0.27219068    59738.95      7.4067
   14   -14.39021401     0.27219068    59738.95      0.27219068    59738.95      7.4067
   15   -14.39021401     0.27219068    59738.95      0.27219068    59738.95      7.4067

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001798  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.99999992  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.99999992 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000109 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000016

   4    1  |0 0>          -0.00000000  0.00000000  0.99999992  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99999992 -0.00001489 -0.00000012 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001489  0.99999992 -0.00000019 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00001041  0.00000000  0.00000000  0.00000000 -0.00025301 -0.00020540 -0.57743903 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00028213  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.06993758
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.70363991

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00028213  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                           0.00000000 -0.00000000 -0.00028191 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00028184  0.00000000  0.00000000  0.00000000 -0.00000001

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001037 -0.00000000  0.00000000 -0.00000000 -0.00005126  0.00032144 -0.57717212  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.70363936
                           0.00000000  0.00028190 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.06993753

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001037 -0.00000000  0.00000000  0.00000000 -0.00030404  0.00011622  0.57743962  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00028183 -0.00000000 -0.00000000  0.00000000 -0.00000001

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000014  0.00000000 -0.00000000  0.00000000  0.00039858 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00039883 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00039883  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00039398 -0.00000000 -0.00000000  0.00006211
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00006249  0.00000000  0.00000000 -0.00039384
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001  0.70650552  0.00000000 -0.00000000 -0.40916258
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000001 -0.00000003 -0.70710644 -0.00000001 -0.00000002 -0.00000000  0.00000000
                           0.00000001  0.00000001  0.00010802  0.00000000  0.00000001 -0.00000001  0.00000000

   3    1  |1 1>+         -0.00000385 -0.70686123 -0.00000000  0.00000000  0.00000734  0.70735219  0.00000000
                          -0.00000683  0.00002422  0.00000001  0.00000000 -0.00000477 -0.00000262 -0.00000000

   1    1  |1 0>          -0.00000684  0.00002424 -0.00000001 -0.00000000  0.00000477  0.00000262  0.00000000
                           0.00000385  0.70735225 -0.00000000  0.00000000  0.00000733  0.70686117  0.00000000

   2    1  |1 0>           0.00000192 -0.00000684 -0.00000001 -0.00000000 -0.00000891 -0.00000477  0.00000000
                           0.70735252 -0.00000385  0.00000002 -0.00000000 -0.70686090  0.00000733 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00120216 -0.00000000 -0.00000000  0.81662157

   1    1  |1 1>-         -0.00000001 -0.00000001  0.00010802  0.00000000  0.00000001 -0.00000001  0.00000000
                          -0.00000001 -0.00000003  0.70710699  0.00000001  0.00000002  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.70770640 -0.00000000 -0.00000000  0.40708111

   3    1  |1 1>-          0.00000192 -0.00000683  0.00000001  0.00000000  0.00000892  0.00000477 -0.00000000
                           0.70686095 -0.00000385 -0.00000002  0.00000000  0.70735247 -0.00000734  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -14.66240469     -0.00000000       -0.00      0.00000000        0.00      0.0000
     2   1    -14.40950411      0.25290058    55505.26      0.25290058    55505.26      6.8818
     3   1    -14.40950392      0.25290077    55505.30      0.25290077    55505.30      6.8818
     4   1    -14.40950111      0.25290358    55505.92      0.25290358    55505.92      6.8819
     5   1    -14.40950036      0.25290433    55506.08      0.25290433    55506.08      6.8819
     6   1    -14.40950016      0.25290453    55506.13      0.25290453    55506.13      6.8819
     7   1    -14.39022509      0.27217960    59736.52      0.27217960    59736.52      7.4064
     8   1    -14.39022140      0.27218329    59737.33      0.27218329    59737.33      7.4065
     9   1    -14.39022140      0.27218329    59737.33      0.27218329    59737.33      7.4065
    10   1    -14.39022140      0.27218329    59737.33      0.27218329    59737.33      7.4065
    11   1    -14.39021401      0.27219068    59738.95      0.27219068    59738.95      7.4067
    12   1    -14.39021401      0.27219068    59738.95      0.27219068    59738.95      7.4067
    13   1    -14.39021401      0.27219068    59738.95      0.27219068    59738.95      7.4067
    14   1    -14.39021401      0.27219068    59738.95      0.27219068    59738.95      7.4067
    15   1    -14.39021401      0.27219068    59738.95      0.27219068    59738.95      7.4067

 E0 =    -14.66240469 is the energy of the lowest zeroth-order state
 E1 =    -14.66240469 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001798  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.99999992  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.99999992 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000109 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000016

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.99999992  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99999992 -0.00001489 -0.00000012 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001489  0.99999992 -0.00000019 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>+       0.00001041  0.00000000  0.00000000  0.00000000 -0.00025301 -0.00020540 -0.57743903 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>+      -0.00000000 -0.00028213  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.06993758
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.70363991

  9  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00028213  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003

 10  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                                0.00000000 -0.00000000 -0.00028191 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 11  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00028184  0.00000000  0.00000000  0.00000000 -0.00000001

 12  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001037 -0.00000000  0.00000000 -0.00000000 -0.00005126  0.00032144 -0.57717212  0.00000000

 13  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.70363936
                                0.00000000  0.00028190 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.06993753

 14  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001037 -0.00000000  0.00000000  0.00000000 -0.00030404  0.00011622  0.57743962  0.00000000

 15  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00028183 -0.00000000 -0.00000000  0.00000000 -0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000014  0.00000000 -0.00000000  0.00000000  0.00039858 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00039883 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00039883  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00039398 -0.00000000 -0.00000000  0.00006211
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00006249  0.00000000  0.00000000 -0.00039384
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001  0.70650552  0.00000000 -0.00000000 -0.40916258
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>+      -0.00000001 -0.00000003 -0.70710644 -0.00000001 -0.00000002 -0.00000000  0.00000000
                                0.00000001  0.00000001  0.00010802  0.00000000  0.00000001 -0.00000001  0.00000000

  9  1     3    1  |1 1>+      -0.00000385 -0.70686123 -0.00000000  0.00000000  0.00000734  0.70735219  0.00000000
                               -0.00000683  0.00002422  0.00000001  0.00000000 -0.00000477 -0.00000262 -0.00000000

 10  1     1    1  |1 0>       -0.00000684  0.00002424 -0.00000001 -0.00000000  0.00000477  0.00000262  0.00000000
                                0.00000385  0.70735225 -0.00000000  0.00000000  0.00000733  0.70686117  0.00000000

 11  1     2    1  |1 0>        0.00000192 -0.00000684 -0.00000001 -0.00000000 -0.00000891 -0.00000477  0.00000000
                                0.70735252 -0.00000385  0.00000002 -0.00000000 -0.70686090  0.00000733 -0.00000000

 12  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00120216 -0.00000000 -0.00000000  0.81662157

 13  1     1    1  |1 1>-      -0.00000001 -0.00000001  0.00010802  0.00000000  0.00000001 -0.00000001  0.00000000
                               -0.00000001 -0.00000003  0.70710699  0.00000001  0.00000002  0.00000000 -0.00000000

 14  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.70770640 -0.00000000 -0.00000000  0.40708111

 15  1     3    1  |1 1>-       0.00000192 -0.00000683  0.00000001  0.00000000  0.00000892  0.00000477 -0.00000000
                                0.70686095 -0.00000385 -0.00000002  0.00000000  0.70735247 -0.00000734  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
  8  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.31%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 14  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
 15  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.92%    0.00%    0.00%   16.74%
  8  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>+         0.00%   49.97%    0.00%    0.00%    0.00%   50.03%    0.00%
 10  1     1    1  |1 0>          0.00%   50.03%    0.00%    0.00%    0.00%   49.97%    0.00%
 11  1     2    1  |1 0>         50.03%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.69%
 13  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.08%    0.00%    0.00%   16.57%
 15  1     3    1  |1 1>-        49.97%    0.00%    0.00%    0.00%   50.03%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.97       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.58       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.52      1.65      0.12      0.37      0.68      0.01      0.46
 REAL TIME  *         4.74 SEC
 DISK USED  *        30.88 MB (local),      251.40 MB (total)
 SF USED    *        18.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -14.390214007609

              CI              CI           MULTI         RHF-SCF
    -14.38947493    -14.39132120    -14.33810029    -14.57538836
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
