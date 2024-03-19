
 Working directory              : /wrk/irikura/molpro.J2afbfkP4n/
 Global scratch directory       : /wrk/irikura/molpro.J2afbfkP4n/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.J2afbfkP4n/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,In SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={In};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=48,sym=1,spin=0}
 
 {multi
     occ,16,15
     closed,14,9
     wf,nelec=49,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,8,6
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   In SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 08-Mar-24          TIME: 13:42:56  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry IN     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry IN     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry IN     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry IN     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry IN     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  IN     49.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   49
 NUMBER OF PRIMITIVE AOS:         240
 NUMBER OF SYMMETRY AOS:          207
 NUMBER OF CONTRACTIONS:          109   (   54Ag  +   55Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     21.234 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 0.786 MB, node maximum: 2.621 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147767. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1830700. AND WROTE     9150625. INTEGRALS IN    120 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.03 SEC

 Node minimum:      760322.  Node maximum:      766291. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.622E-04 0.143E-02 0.200E-01 0.204E-01 0.204E-01 0.204E-01 0.204E-01 0.204E-01
         2 0.285E-02 0.285E-02 0.285E-02 0.898E-02 0.898E-02 0.898E-02 0.119E+00 0.119E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.99      1.80
 REAL TIME  *         3.12 SEC
 DISK USED  *        29.63 MB (local),      413.96 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   15  12

 Initial occupancy:  15   9

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -5878.02619058   -5878.02619058     0.00D+00     0.18D+00     0     0       0.00      0.00    start
   2    -5878.03180742      -0.00561684     0.16D-02     0.67D-02     1     0       0.01      0.01    diag
   3    -5878.03233068      -0.00052326     0.11D-02     0.23D-02     2     0       0.00      0.01    diag
   4    -5878.03243316      -0.00010248     0.22D-03     0.18D-02     3     0       0.01      0.02    diag
   5    -5878.03243921      -0.00000605     0.61D-04     0.40D-03     4     0       0.00      0.02    diag
   6    -5878.03243931      -0.00000010     0.70D-05     0.35D-04     5     0       0.01      0.03    diag
   7    -5878.03243931      -0.00000000     0.55D-06     0.61D-05     6     0       0.00      0.03    diag
   8    -5878.03243931      -0.00000000     0.34D-07     0.99D-06     7     0       0.01      0.04    fixocc
   9    -5878.03243931       0.00000000     0.27D-08     0.50D-07     0     0       0.00      0.04    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -5878.032439308749
  RHF One-electron energy           -8080.122976770238
  RHF Two-electron energy            2202.090537461489
  RHF Kinetic energy                 6743.963481866985
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.871599090819

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1032.17084     1  1  s    0.99568
    2.1     2.00000  -158.11794     1  2  s    1.03595
    3.1     2.00000   -31.66301     1  3  s    0.89744
    4.1     2.00000   -17.60999     1  1  d0   0.99996
    5.1     2.00000   -17.60999     1  1  d1+  0.86567    1  1  d1- -0.49971
    6.1     2.00000   -17.60999     1  1  d1+  0.49959    1  1  d1-  0.86617
    7.1     2.00000   -17.60999     1  1  d2+  0.99956
    8.1     2.00000   -17.60999     1  1  d2-  0.99976
    9.1     2.00000    -5.57855     1  4  s    1.07263
   10.1     2.00000    -1.28284     1  2  d1+ -0.28300    1  2  d1-  0.95988
   11.1     2.00000    -1.28284     1  2  d1+  0.96059    1  2  d1-  0.28312
   12.1     2.00000    -1.28284     1  2  d2-  0.99729
   13.1     2.00000    -1.28284     1  2  d0   1.00145
   14.1     2.00000    -1.28284     1  2  d2+  0.99801
   15.1     2.00000    -0.63544     1  5  s    1.11120
    1.2     2.00000  -141.76920     1  1  pz   0.99934
    2.2     2.00000  -141.76920     1  1  py   0.99574
    3.2     2.00000  -141.76920     1  1  px   0.99639
    4.2     2.00000   -26.16118     1  2  px   1.00009
    5.2     2.00000   -26.16118     1  2  py   0.99989
    6.2     2.00000   -26.16118     1  2  pz   0.99989
    7.2     2.00000    -3.84996     1  3  py   0.99837
    8.2     2.00000    -3.84996     1  3  px   0.99838
    9.2     2.00000    -3.84996     1  3  pz   0.99837


 HOMO     15.1    -0.635443 =     -17.2913eV
 LUMO     10.2    -0.182889 =      -4.9767eV
 LUMO-HOMO         0.452553 =      12.3146eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.12      0.12      1.80
 REAL TIME  *         4.15 SEC
 DISK USED  *        30.22 MB (local),      421.06 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.386D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.450D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.355D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.103D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.806D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 5 3 1 6   4 3 2 5 1 1 4 6 5 3   2 1 5 3 4 6 2 1 5 3   4 6 2 3 5 6 4 2 113
                                       1011 912 81415 7 3 5   4 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.381D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.108D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.790D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.198D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.198D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.484D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.615D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.483D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.723D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.723D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 1 3 2   1 3 1 2 3 1 2 3 4 5   6 9 7 810 1 2 3 9 7   6 4 5 810 810 9 7 6
                                        5 4 1 2 3 810 7 9 6   5 4 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  1290  ( 82 closed/active, 892 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    2010
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0  -5878.17203862   -5878.17769945   -0.00566084    0.04599502 0.00016652 0.00000000  0.79E+00      0.73
   2    8    7    0  -5878.17763312   -5878.17763564   -0.00000252    0.00156331 0.00000014 0.00000000  0.21E-01      1.65
   3   13   13    0  -5878.17763564   -5878.17763564   -0.00000000    0.00000049 0.00000000 0.00000000  0.22E-04      2.55

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.18E-07)
                       Final energy:  -5878.17763564
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -5878.237183950025
 Nuclear energy                                  0.00000000
 Kinetic energy                               6744.27355800
 One electron energy                         -8093.84747736
 Two electron energy                          2215.61029341
 Virial ratio                                    1.87158938
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -5878.237183950022
 Nuclear energy                                  0.00000000
 Kinetic energy                               6744.27355800
 One electron energy                         -8093.84747736
 Two electron energy                          2215.61029341
 Virial ratio                                    1.87158938
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -5878.237183949996
 Nuclear energy                                  0.00000000
 Kinetic energy                               6744.27355800
 One electron energy                         -8093.84747736
 Two electron energy                          2215.61029341
 Virial ratio                                    1.87158938
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                     -5878.118087335039
 Nuclear energy                                  0.00000000
 Kinetic energy                               6743.92382179
 One electron energy                         -8085.50346589
 Two electron energy                          2207.38537855
 Virial ratio                                    1.87161692
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                     -5878.118087335031
 Nuclear energy                                  0.00000000
 Kinetic energy                               6743.92382179
 One electron energy                         -8085.50346589
 Two electron energy                          2207.38537856
 Virial ratio                                    1.87161692
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                     -5878.118087335013
 Nuclear energy                                  0.00000000
 Kinetic energy                               6743.92382179
 One electron energy                         -8085.50346590
 Two electron energy                          2207.38537856
 Virial ratio                                    1.87161692
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999996909352
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000004789733
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999996271
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999791599
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000210732
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999995165
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000003128235
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999995212385
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999959825
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000209794
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999795320
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999996470
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999962414
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999997882
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000043904
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999998607
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999993948
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000008364
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 5 3 6 1 4   2 3 5 6 1 1 4 5 3 2   6 1 4 5 3 2 6 1 4 3   5 2 6 4 3 5 2 6 1 9
                                       12 81415 7101311 4 3   5 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 2   3 1 2 3 1 1 3 2 4 6   810 9 7 5 1 3 2 4 9   7 6 810 5 410 8 6 9
                                        7 5 1 3 2 4 810 7 9   6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1031.97175     1  1  s    0.99568
    2.1     2.00000  -157.91961     1  2  s    1.03595
    3.1     2.00000   -31.46498     1  3  s    0.89745
    4.1     2.00000   -17.41227     1  1  d1+  1.00000
    5.1     2.00000   -17.41227     1  1  d0   1.00000
    6.1     2.00000   -17.41227     1  1  d2+  1.00000
    7.1     2.00000   -17.41227     1  1  d2-  1.00000
    8.1     2.00000   -17.41227     1  1  d1-  1.00000
    9.1     2.00000    -5.38060     1  4  s    1.07222
   10.1     2.00000    -1.08561     1  2  d1+  1.00050
   11.1     2.00000    -1.08561     1  2  d0   1.00050
   12.1     2.00000    -1.08561     1  2  d2-  1.00050
   13.1     2.00000    -1.08561     1  2  d2+  1.00050
   14.1     2.00000    -1.08561     1  2  d1-  1.00050
   15.1     1.92066    -0.44571     1  5  s    1.07158
   16.1     0.00521     0.23198     1  4  s    0.57558    1  5  s    0.38183    1  7  s    0.28462    1  8  s   -1.95727
                                    1  9  s    1.06601
    1.2     2.00000  -141.57108     1  1  px   0.99999
    2.2     2.00000  -141.57108     1  1  pz   0.99999
    3.2     2.00000  -141.57108     1  1  py   0.99999
    4.2     2.00000   -25.96369     1  2  px   1.00011
    5.2     2.00000   -25.96369     1  2  pz   1.00011
    6.2     2.00000   -25.96369     1  2  py   1.00011
    7.2     2.00000    -3.65303     1  3  px   0.99950
    8.2     2.00000    -3.65303     1  3  pz   0.99950
    9.2     2.00000    -3.65303     1  3  py   0.99950
   10.2     0.19152    -0.02022     1  4  py   1.23079    1  8  py  -0.25514
   11.2     0.19152    -0.02022     1  4  pz   1.23079    1  8  pz  -0.25514
   12.2     0.19152    -0.02022     1  4  px   1.23079    1  8  px  -0.25514
   13.2     0.16652     0.01828     1  4  py  -0.33768    1  9  py   1.07946
   14.2     0.16652     0.01828     1  4  pz  -0.33768    1  9  pz   1.07946
   15.2     0.16652     0.01828     1  4  px  -0.33768    1  9  px   1.07946
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0000     -0.00018397      0.00004359      0.94891065     -0.00000927     -0.00001932     -0.24838611
 20 a00000      0.94890986     -0.00166820      0.00018404     -0.24838348     -0.00011339      0.00000928
 20 00a000      0.00166821      0.94890852     -0.00004326      0.00011339     -0.24838867      0.00001932
 20 000a00      0.24835025     -0.00043660      0.00004817      0.94509441      0.00043144     -0.00003531
 20 0000a0     -0.00004815      0.00001141      0.24835325      0.00003528      0.00007352      0.94509382
 20 00000a      0.00043662      0.24835547     -0.00001132     -0.00043144      0.94509305     -0.00007351
 00 2a0000      0.00002422     -0.00000574     -0.12492279      0.00000130      0.00000271      0.03487587
 00 0a2000      0.00002422     -0.00000574     -0.12492279      0.00000130      0.00000271      0.03487587
 00 a20000     -0.12492268      0.00021962     -0.00002423      0.03487555      0.00001592     -0.00000130
 00 a02000     -0.12492268      0.00021962     -0.00002423      0.03487555      0.00001592     -0.00000130
 00 20a000     -0.00021962     -0.12492252      0.00000570     -0.00001592      0.03487617     -0.00000271
 00 02a000     -0.00021962     -0.12492252      0.00000570     -0.00001592      0.03487617     -0.00000271
 00 002a00     -0.02965969      0.00005214     -0.00000575     -0.11294010     -0.00005156      0.00000422
 00 020a00     -0.02965969      0.00005214     -0.00000575     -0.11294009     -0.00005156      0.00000422
 00 0020a0      0.00000575     -0.00000136     -0.02966008     -0.00000422     -0.00000879     -0.11294001
 00 2000a0      0.00000575     -0.00000136     -0.02966008     -0.00000422     -0.00000879     -0.11293999
 00 02000a     -0.00005214     -0.02966038      0.00000135      0.00005156     -0.11293989      0.00000878
 00 20000a     -0.00005214     -0.02966037      0.00000135      0.00005156     -0.11293988      0.00000878
 00 0200a0      0.00000562     -0.00000133     -0.02896965     -0.00000415     -0.00000865     -0.11113111
 00 00200a     -0.00005093     -0.02896961      0.00000132      0.00005073     -0.11113111      0.00000864
 00 200a00     -0.02896960      0.00005093     -0.00000562     -0.11113110     -0.00005073      0.00000415
 
 Energy:    -5878.23718395  -5878.23718395  -5878.23718395  -5878.11808734  -5878.11808734  -5878.11808734
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       63.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.37      2.25      0.12      1.80
 REAL TIME  *         7.21 SEC
 DISK USED  *        64.24 MB (local),      829.36 MB (total)
 SF USED    *        83.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -5878.237184   2.0
    -5878.237184   2.0
    -5878.237184   2.0
    -5878.118087   2.0
    -5878.118087   2.0
    -5878.118087   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 49
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.08 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -5878.23718395
     2     -5878.23718395
     3     -5878.23718395
     4     -5878.11808734
     5     -5878.11808734
     6     -5878.11808734

 Number of blocks in overlap matrix:   563   Smallest eigenvalue:  0.36D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3021580
 Number of doubly external configurations:       2024966
 Total number of contracted configurations:      5099818
 Total number of uncontracted configurations:   39479590

 Diagonal Coupling coefficients finished.               Storage:  22137764 words, CPU-Time:     26.35 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1105157 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -5878.23718395    -0.00000000    -0.74991319  0.47D-01  0.96D-01    38.09
    1     2     2     1.00000000     0.00000000 -5878.23718395     0.00000000    -0.75000543  0.47D-01  0.96D-01    38.09
    1     3     3     1.00000000     0.00000000 -5878.23718395     0.00000000    -0.74997701  0.46D-01  0.96D-01    38.09
    1     4     4     1.00000000     0.00000000 -5878.11808734     0.00000000    -0.72789858  0.32D-01  0.91D-01    38.09
    1     5     5     1.00000000     0.00000000 -5878.11808734     0.00000000    -0.72790879  0.32D-01  0.91D-01    38.09
    1     6     6     1.00000000     0.00000000 -5878.11808734     0.00000000    -0.72789348  0.32D-01  0.91D-01    38.09
    2     1     1     1.08776220    -0.59247951 -5878.82966346    -0.59247951    -0.01476558  0.27D-02  0.11D-02   263.04
    2     2     2     1.08780745    -0.59244869 -5878.82963264    -0.59244869    -0.01479859  0.27D-02  0.11D-02   263.04
    2     3     3     1.08777168    -0.59244359 -5878.82962754    -0.59244359    -0.01480971  0.27D-02  0.11D-02   263.04
    2     4     4     1.07692570    -0.58248493 -5878.70057227    -0.58248493    -0.01310713  0.18D-02  0.91D-03   263.04
    2     5     5     1.07693554    -0.58247935 -5878.70056669    -0.58247935    -0.01311390  0.19D-02  0.91D-03   263.04
    2     6     6     1.07693858    -0.58247881 -5878.70056614    -0.58247881    -0.01311390  0.19D-02  0.91D-03   263.04
    3     1     1     1.07994779    -0.60642712 -5878.84361107    -0.01394761    -0.00031476  0.42D-04  0.34D-04   486.86
    3     2     2     1.07994551    -0.60642609 -5878.84361004    -0.01397741    -0.00031570  0.42D-04  0.34D-04   486.86
    3     3     3     1.07994113    -0.60642594 -5878.84360989    -0.01398235    -0.00031581  0.42D-04  0.34D-04   486.86
    3     4     4     1.07255665    -0.59483722 -5878.71292456    -0.01235229    -0.00025959  0.27D-04  0.24D-04   486.86
    3     5     5     1.07255690    -0.59483695 -5878.71292428    -0.01235759    -0.00025988  0.27D-04  0.24D-04   486.86
    3     6     6     1.07255692    -0.59483692 -5878.71292426    -0.01235812    -0.00025988  0.27D-04  0.24D-04   486.86
    4     1     1     1.08000899    -0.60674137 -5878.84392532    -0.00031425    -0.00001315  0.37D-05  0.11D-05   708.55
    4     2     2     1.08000794    -0.60674135 -5878.84392530    -0.00031526    -0.00001317  0.37D-05  0.11D-05   708.55
    4     3     3     1.08000819    -0.60674134 -5878.84392529    -0.00031540    -0.00001318  0.37D-05  0.11D-05   708.55
    4     4     4     1.07298687    -0.59508749 -5878.71317482    -0.00025026    -0.00000991  0.27D-05  0.61D-06   708.55
    4     5     5     1.07298702    -0.59508748 -5878.71317482    -0.00025054    -0.00000991  0.27D-05  0.61D-06   708.55
    4     6     6     1.07298684    -0.59508748 -5878.71317482    -0.00025056    -0.00000991  0.27D-05  0.61D-06   708.55
    5     1     1     1.07999537    -0.60675574 -5878.84393969    -0.00001437    -0.00000054  0.12D-06  0.44D-07   928.10
    5     2     2     1.07999561    -0.60675574 -5878.84393969    -0.00001439    -0.00000055  0.12D-06  0.44D-07   928.10
    5     3     3     1.07999539    -0.60675574 -5878.84393969    -0.00001439    -0.00000054  0.12D-06  0.44D-07   928.10
    5     4     4     1.07308393    -0.59509802 -5878.71318535    -0.00001053    -0.00000039  0.91D-07  0.27D-07   928.10
    5     5     5     1.07308393    -0.59509802 -5878.71318535    -0.00001054    -0.00000039  0.91D-07  0.27D-07   928.10
    5     6     6     1.07308396    -0.59509802 -5878.71318535    -0.00001054    -0.00000039  0.91D-07  0.27D-07   928.10
    6     1     1     1.07996939    -0.60675630 -5878.84394025    -0.00000057    -0.00000003  0.44D-08  0.27D-08  1148.36
    6     2     2     1.07996938    -0.60675630 -5878.84394025    -0.00000057    -0.00000003  0.44D-08  0.28D-08  1148.36
    6     3     3     1.07996937    -0.60675630 -5878.84394025    -0.00000057    -0.00000003  0.44D-08  0.28D-08  1148.36
    6     4     4     1.07307870    -0.59509843 -5878.71318576    -0.00000041    -0.00000002  0.34D-08  0.17D-08  1148.36
    6     5     5     1.07307870    -0.59509843 -5878.71318576    -0.00000041    -0.00000002  0.34D-08  0.17D-08  1148.36
    6     6     6     1.07307871    -0.59509843 -5878.71318576    -0.00000041    -0.00000002  0.34D-08  0.17D-08  1148.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.2%
 S   1.2%  51.6%
 P   0.5%  27.7%  10.3%

 Initialization:   2.3%
 Other:            3.2%

 Total CPU:     1148.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000          -0.0001328   0.0005965   0.9250475  -0.2048103   0.0000000  -0.0008913
 22222220222000/00           0.2001815   0.0446183  -0.0000000  -0.0000020   0.9223098   0.0004574
 222222202220000/0          -0.0446188   0.2001839  -0.0001355  -0.0040135  -0.0004574   0.9223005
 2222222022200000/          -0.0000294   0.0001323   0.2050987   0.9223000  -0.0000000   0.0040135
 22222220222/00000           0.9028930   0.2012449  -0.0000002   0.0000004  -0.2048072  -0.0001016
 222222202220/0000          -0.2012448   0.9028923  -0.0006111   0.0008912   0.0001016  -0.2048078
 2222220022220/000           0.0000155  -0.0000697  -0.1081395   0.0260203  -0.0000000   0.0001132
 2222220022202/000           0.0000155  -0.0000697  -0.1081394   0.0260203  -0.0000000   0.0001132
 22222200222/02000          -0.1055496  -0.0235258   0.0000000  -0.0000001   0.0260200   0.0000129
 222222002222/0000           0.0235258  -0.1055495   0.0000714  -0.0001132  -0.0000129   0.0260200
 22222200222/20000          -0.1055495  -0.0235258   0.0000000  -0.0000001   0.0260200   0.0000129
 222222002220/2000           0.0235258  -0.1055495   0.0000714  -0.0001132  -0.0000129   0.0260200
 22222200222002/00          -0.0211266  -0.0047089   0.0000000   0.0000002  -0.0975833  -0.0000484
 22222200222020/00          -0.0211266  -0.0047089   0.0000000   0.0000002  -0.0975832  -0.0000484
 222222002220020/0           0.0047090  -0.0211269   0.0000143   0.0004246   0.0000484  -0.0975823
 222222002222000/0           0.0047090  -0.0211269   0.0000143   0.0004246   0.0000484  -0.0975823
 2222220022220000/           0.0000031  -0.0000140  -0.0216456  -0.0975822   0.0000000  -0.0004246
 2222220022202000/           0.0000031  -0.0000140  -0.0216456  -0.0975822   0.0000000  -0.0004246
 22222200222200/00          -0.0204003  -0.0045470   0.0000000   0.0000002  -0.0957681  -0.0000475
 2222220022200200/           0.0000030  -0.0000135  -0.0209010  -0.0957672   0.0000000  -0.0004167
 222222002220200/0           0.0045470  -0.0204003   0.0000138   0.0004167   0.0000475  -0.0957672
 222222/\222000/00          -0.0196730  -0.0043849   0.0000000   0.0000002  -0.0800245  -0.0000397
 222222/\22200000/           0.0000029  -0.0000130  -0.0201557  -0.0800238   0.0000000  -0.0003482
 222222/\2220000/0           0.0043849  -0.0196730   0.0000133   0.0003482   0.0000397  -0.0800238

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.937176   -0.000138   -0.208886   -0.034760    0.000005    0.007748
 2           0.208886    0.000619    0.937176   -0.007748   -0.000023   -0.034760
 3          -0.000000    0.960173   -0.000634    0.000000   -0.035613    0.000024
 4          -0.000000    0.037506   -0.000163   -0.000002    0.962864   -0.004190
 5           0.037506   -0.000000   -0.000019    0.962873   -0.000000   -0.000478
 6           0.000019    0.000163    0.037506    0.000478    0.004190    0.962864

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960833   -0.000000   -0.000000    0.000001    0.000873   -0.000194
 2          -0.000000    0.960833   -0.000000   -0.000003    0.000194    0.000873
 3          -0.000000   -0.000000    0.960833    0.000894    0.000000    0.000003
 4           0.000001   -0.000003    0.000894    0.963603   -0.000000    0.000000
 5           0.000873    0.000194    0.000000   -0.000000    0.963603    0.000000
 6          -0.000194    0.000873    0.000003    0.000000    0.000000    0.963603


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.93717580 (fixed)   0.96144595 (relaxed)   0.96083267 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00298174   -0.00346125   -0.49927090
 Singles      0.01896725   -0.06255509   -0.06838350
 Pairs        0.06124059   -0.00520536   -0.03910190
 Total        1.08318959   -0.07122171   -0.60675630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.23701202
 Nuclear energy                         0.00000000
 Kinetic energy                      6744.37384911
 One electron energy                -8092.64949516
 Two electron energy                 2213.80555491
 Virial quotient                       -0.87166638
 Correlation energy                    -0.60692824
 !MRCI STATE 1.2 Energy             -5878.843940254128

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.89443036 (Davidson, fixed reference)
 Cluster corrected energies         -5878.89359194 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.89443036 (Davidson, rotated reference)

 Cluster corrected energies         -5878.89258640 (Pople, fixed reference)
 Cluster corrected energies         -5878.89172323 (Pople, relaxed reference)
 Cluster corrected energies         -5878.89258640 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.93717560 (fixed)   0.96144595 (relaxed)   0.96083268 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00298174   -0.00346125   -0.52563697
 Singles      0.01896726   -0.06255508   -0.06838351
 Pairs        0.06124056    0.02335406   -0.01273583
 Total        1.08318956   -0.04266226   -0.60675630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.23701202
 Nuclear energy                         0.00000000
 Kinetic energy                      6744.37384276
 One electron energy                -8092.64948520
 Two electron energy                 2213.80554495
 Virial quotient                       -0.87166638
 Correlation energy                    -0.60692824
 !MRCI STATE 2.2 Energy             -5878.843940254112

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.89443035 (Davidson, fixed reference)
 Cluster corrected energies         -5878.89359193 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.89443035 (Davidson, rotated reference)

 Cluster corrected energies         -5878.89258638 (Pople, fixed reference)
 Cluster corrected energies         -5878.89172322 (Pople, relaxed reference)
 Cluster corrected energies         -5878.89258638 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96017266 (fixed)   0.96144596 (relaxed)   0.96083268 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00298174   -0.00346125   -0.50406192
 Singles      0.01896724   -0.06255508   -0.06838350
 Pairs        0.06124057   -0.00001581   -0.03431089
 Total        1.08318956   -0.06603214   -0.60675630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.23701202
 Nuclear energy                         0.00000000
 Kinetic energy                      6744.37384834
 One electron energy                -8092.64949367
 Two electron energy                 2213.80555342
 Virial quotient                       -0.87166638
 Correlation energy                    -0.60692824
 !MRCI STATE 3.2 Energy             -5878.843940252808

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.89443034 (Davidson, fixed reference)
 Cluster corrected energies         -5878.89359192 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.89443034 (Davidson, rotated reference)

 Cluster corrected energies         -5878.89258638 (Pople, fixed reference)
 Cluster corrected energies         -5878.89172321 (Pople, relaxed reference)
 Cluster corrected energies         -5878.89258638 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96286366 (fixed)   0.96429011 (relaxed)   0.96360256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00362745   -0.00435774   -0.50203826
 Singles      0.01476718   -0.05888891   -0.06284703
 Pairs        0.05857661    0.00231256   -0.03021314
 Total        1.07697124   -0.06093409   -0.59509843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.11825927
 Nuclear energy                         0.00000000
 Kinetic energy                      6744.16617673
 One electron energy                -8084.47347147
 Two electron energy                 2205.76028571
 Virial quotient                       -0.87167383
 Correlation energy                    -0.59492649
 !MRCI STATE 4.2 Energy             -5878.713185762701

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.75897799 (Davidson, fixed reference)
 Cluster corrected energies         -5878.75806465 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.75897799 (Davidson, rotated reference)

 Cluster corrected energies         -5878.75707651 (Pople, fixed reference)
 Cluster corrected energies         -5878.75614595 (Pople, relaxed reference)
 Cluster corrected energies         -5878.75707651 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96287266 (fixed)   0.96429011 (relaxed)   0.96360256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00362745   -0.00435774   -0.50013569
 Singles      0.01476718   -0.05888891   -0.06284703
 Pairs        0.05857661    0.00026356   -0.03211571
 Total        1.07697124   -0.06298310   -0.59509843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.11825927
 Nuclear energy                         0.00000000
 Kinetic energy                      6744.16617737
 One electron energy                -8084.47347268
 Two electron energy                 2205.76028692
 Virial quotient                       -0.87167383
 Correlation energy                    -0.59492649
 !MRCI STATE 5.2 Energy             -5878.713185762268

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.75897799 (Davidson, fixed reference)
 Cluster corrected energies         -5878.75806465 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.75897799 (Davidson, rotated reference)

 Cluster corrected energies         -5878.75707651 (Pople, fixed reference)
 Cluster corrected energies         -5878.75614595 (Pople, relaxed reference)
 Cluster corrected energies         -5878.75707651 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.96286354 (fixed)   0.96429011 (relaxed)   0.96360256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00362745   -0.00435774   -0.00644617
 Singles      0.01476719   -0.05888892   -0.06284703
 Pairs        0.05857661   -0.53142586   -0.52580523
 Total        1.07697125   -0.59467252   -0.59509843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.11825927
 Nuclear energy                         0.00000000
 Kinetic energy                      6744.16617482
 One electron energy                -8084.47346948
 Two electron energy                 2205.76028372
 Virial quotient                       -0.87167383
 Correlation energy                    -0.59492649
 !MRCI STATE 6.2 Energy             -5878.713185762174

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.75897800 (Davidson, fixed reference)
 Cluster corrected energies         -5878.75806465 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.75897800 (Davidson, rotated reference)

 Cluster corrected energies         -5878.75707651 (Pople, fixed reference)
 Cluster corrected energies         -5878.75614596 (Pople, relaxed reference)
 Cluster corrected energies         -5878.75707651 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       63.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      241.94       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1306.57   1302.19      2.25      0.12      1.80
 REAL TIME  *      1332.02 SEC
 DISK USED  *       305.37 MB (local),        3.64 GB (total)
 SF USED    *         2.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -5878.89443036  AU                              
 SETTING HLSDIAG(2)     =     -5878.89443035  AU                              
 SETTING HLSDIAG(3)     =     -5878.89443034  AU                              
 SETTING HLSDIAG(4)     =     -5878.75897799  AU                              
 SETTING HLSDIAG(5)     =     -5878.75897799  AU                              
 SETTING HLSDIAG(6)     =     -5878.75897800  AU                              


         HLSDIAG
    -5878.894430
    -5878.894430
    -5878.894430
    -5878.758978
    -5878.758978
    -5878.758978
                                                  


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

 Time for Seward_LS:      13.53 sec

       10307194. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.53 sec, REAL time:     13.63 sec


 SORTLS1 read    11035551. and wrote    11035551. SO integrals in    72 records. CPU time:      0.12 sec, REAL time:      0.17 sec
 SORTLS2 read    11035551. and wrote    53911550. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:   243.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   243.5 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -5878.843940  -5878.843940  -5878.843940  -5878.713186  -5878.713186  -5878.713186
 Replaced energies:  -5878.894430  -5878.894430  -5878.894430  -5878.758978  -5878.758978  -5878.758978



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -5878.89443036

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     190.04     -74.72
                           -0.00       0.58     852.62    -335.25      -0.05      -1.46       0.00    -873.55       0.56      -1.46

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -852.62     335.26
                           -0.58      -0.00     190.04     -74.72       0.22      -0.33     873.55      -0.00       0.13      -0.32

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -190.04     852.62      -0.00       1.27
                         -852.62    -190.04       0.00      -0.00     343.48       0.17      -0.56      -0.13      -0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   29728.36       0.00       0.00      74.72    -335.26      -1.27      -0.00
                          335.25      74.72       0.00      -0.00    -134.71      -0.07       1.46       0.32       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   29728.36       0.00       0.00      -0.00      -0.17       0.07
                            0.05      -0.22    -343.48     134.71       0.00       0.59     -74.56     335.29      -0.23       0.59

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   29728.36       0.28      -1.24     343.48    -134.71
                            1.46       0.33      -0.17       0.07      -0.59       0.00    -335.29     -74.56      -0.00       0.00

    7   1.2  0.5 -0.5      -0.00      -0.00    -190.04      74.72       0.00       0.28       0.00       0.00       0.00       0.00
                           -0.00    -873.55       0.56      -1.46      74.56     335.29       0.00      -0.58    -852.62     335.25

    8   2.2  0.5 -0.5       0.00      -0.00     852.62    -335.26      -0.00      -1.24       0.00       0.00       0.00       0.00
                          873.55       0.00       0.13      -0.32    -335.29      74.56       0.58       0.00    -190.04      74.72

    9   3.2  0.5 -0.5     190.04    -852.62      -0.00      -1.27      -0.17     343.48       0.00       0.00       0.00       0.00
                           -0.56      -0.13       0.00      -0.00       0.23       0.00     852.62     190.04      -0.00       0.00

   10   4.2  0.5 -0.5     -74.72     335.26       1.27      -0.00       0.07    -134.71       0.00       0.00       0.00   29728.36
                            1.46       0.32       0.00      -0.00      -0.59      -0.00    -335.25     -74.72      -0.00       0.00

   11   5.2  0.5 -0.5      -0.00       0.00       0.17      -0.07       0.00      -0.00       0.00       0.00       0.00       0.00
                          -74.56     335.29      -0.23       0.59      -0.00    -134.71      -0.05       0.22     343.48    -134.71

   12   6.2  0.5 -0.5      -0.28       1.24    -343.48     134.71       0.00       0.00       0.00       0.00       0.00       0.00
                         -335.29     -74.56      -0.00       0.00     134.71      -0.00      -1.46      -0.33       0.17      -0.07


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.00      -0.28
                           74.56     335.29

    2   2.2  0.5  0.5       0.00       1.24
                         -335.29      74.56

    3   3.2  0.5  0.5       0.17    -343.48
                            0.23       0.00

    4   4.2  0.5  0.5      -0.07     134.71
                           -0.59      -0.00

    5   5.2  0.5  0.5       0.00       0.00
                            0.00    -134.71

    6   6.2  0.5  0.5      -0.00       0.00
                          134.71       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.05       1.46

    8   2.2  0.5 -0.5       0.00       0.00
                           -0.22       0.33

    9   3.2  0.5 -0.5       0.00       0.00
                         -343.48      -0.17

   10   4.2  0.5 -0.5       0.00       0.00
                          134.71       0.07

   11   5.2  0.5 -0.5   29728.36       0.00
                           -0.00      -0.59

   12   6.2  0.5 -0.5       0.00   29728.36
                            0.59      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -5878.90245957    -0.00802920    -1762.21      0.00000000        0.00      0.0000
     2 -5878.90245957    -0.00802920    -1762.21      0.00000000        0.00      0.0000
     3 -5878.89046873     0.00396164      869.48      0.01199084     2631.68      0.3263
     4 -5878.89046873     0.00396164      869.48      0.01199084     2631.68      0.3263
     5 -5878.89046872     0.00396165      869.48      0.01199085     2631.69      0.3263
     6 -5878.89046872     0.00396165      869.48      0.01199085     2631.69      0.3263
     7 -5878.76013668     0.13429369    29474.06      0.14232289    31236.26      3.8728
     8 -5878.76013668     0.13429369    29474.06      0.14232289    31236.26      3.8728
     9 -5878.75834568     0.13608468    29867.14      0.14411389    31629.34      3.9215
    10 -5878.75834568     0.13608468    29867.14      0.14411389    31629.34      3.9215
    11 -5878.75834568     0.13608469    29867.14      0.14411389    31629.34      3.9215
    12 -5878.75834568     0.13608469    29867.14      0.14411389    31629.34      3.9215


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.572768368   0.071477296   0.812616766  -0.040256578  -0.010251549  -0.067088310   0.000784722   0.012676296
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.036828329  -0.295116247  -0.011104418  -0.457387561  -0.475706221   0.212644159   0.009083128  -0.000562281
                         0.061637377  -0.490838814  -0.004275332  -0.080543984   0.418468615  -0.064117702  -0.008841701   0.000555750

    3    3.2  0.5  0.5  -0.013350678   0.106982861   0.001228972   0.011192923   0.188953028  -0.020703563   0.001917774  -0.000118719
                         0.567021614   0.005879041  -0.346060130  -0.046651511   0.322503022   0.635903014   0.002747669   0.012250006

    4    4.2  0.5  0.5   0.000286582  -0.002378622   0.000022745   0.000151741   0.002258703  -0.000254985   0.085698865  -0.004841900
                        -0.012471407  -0.000168270  -0.004099522  -0.000549233   0.003802779   0.007536176   0.126321944   0.556638656

    5    5.2  0.5  0.5  -0.012478204  -0.000125707   0.009368921  -0.001641747  -0.001341866  -0.000229013   0.124419850   0.556823944
                        -0.000294393   0.002344339  -0.000010995  -0.000207124   0.001076122  -0.000164882  -0.087224703   0.005482623

    6    6.2  0.5  0.5   0.001945691   0.006671373  -0.002218051  -0.005185375  -0.005466623   0.002630714   0.395542792  -0.150018091
                        -0.001369932   0.010542038  -0.000064573  -0.000933478   0.004853432  -0.000713676  -0.391790958   0.026710064

    7    1.2  0.5 -0.5  -0.061259058   0.490886654  -0.006932725  -0.139943555  -0.043870369   0.006703690   0.008842233  -0.000547376
                         0.036828409  -0.295116751   0.039655130   0.800475989  -0.050756596   0.007755950   0.009083137  -0.000562289

    8    2.2  0.5 -0.5   0.000024217  -0.000194996   0.000572329  -0.002299127   0.090543072  -0.005524573   0.000006005  -0.000000374
                        -0.572727108  -0.071801491   0.464424792  -0.011674783   0.202806730   0.633547054  -0.000790558  -0.012675918

    9    3.2  0.5 -0.5  -0.088659671  -0.303597852   0.047882094  -0.341101518   0.467562814  -0.367554267   0.008694870  -0.003306554
                         0.060161104  -0.479082556  -0.002991679  -0.058385606  -0.431493100   0.067936045  -0.008629946   0.000542440

   10    4.2  0.5 -0.5   0.001951879   0.006671458   0.000567159  -0.004042191   0.005534859  -0.004354056   0.395479278  -0.150293822
                        -0.001369791   0.010540862  -0.000054889  -0.000683588  -0.005120967   0.000777859  -0.391747595   0.026707604

   11    5.2  0.5 -0.5   0.001315648  -0.010542662  -0.000078701  -0.001624285  -0.000274500   0.000063317   0.392335948  -0.024287484
                         0.001944428   0.006681655   0.001652888   0.009227053  -0.000065443   0.001718905   0.395165114  -0.149995219

   12    6.2  0.5 -0.5  -0.000285902   0.002373392   0.000026540   0.000318370   0.001180335  -0.000097199  -0.085504770   0.004828667
                         0.012472371   0.000171580   0.005268661  -0.002196032   0.002456990   0.007309604  -0.126126086  -0.556714414


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.000878998  -0.005268747   0.000742957   0.008029242
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.008998418   0.001241750   0.000355778   0.001766995
                         0.002737706   0.000526241  -0.000127768   0.000053581

    3    3.2  0.5  0.5  -0.000611837  -0.000088018   0.000007197   0.000008558
                        -0.000989228  -0.004489032  -0.000853518  -0.008444667

    4    4.2  0.5  0.5   0.048848988   0.008163463  -0.000549514  -0.000727899
                         0.084333269   0.379078794   0.072006253   0.712826870

    5    5.2  0.5  0.5   0.092447734   0.411381522  -0.067736574  -0.693965772
                        -0.050162149  -0.009642100   0.002341052  -0.000981658

    6    6.2  0.5  0.5   0.757736543  -0.198825079  -0.015704297   0.001518032
                        -0.225269915  -0.041961959   0.010793490  -0.001783950

    7    1.2  0.5 -0.5   0.001612005   0.000268935   0.004556294  -0.000421600
                         0.005016088   0.000836846   0.006611271  -0.000611750

    8    2.2  0.5 -0.5  -0.000880926  -0.000146699   0.001046822  -0.000096687
                        -0.001021196  -0.009404522   0.001424537  -0.000365451

    9    3.2  0.5 -0.5   0.004300693  -0.001128986  -0.006948476   0.000698702
                        -0.001289650  -0.000279836   0.004799079  -0.000490266

   10    4.2  0.5 -0.5  -0.363397992   0.095234764   0.586528012  -0.058978061
                         0.108209448   0.020704199  -0.405101908   0.041313321

   11    5.2  0.5 -0.5  -0.116684915  -0.019471716  -0.394607892   0.036510350
                        -0.394604036   0.103361872  -0.570853817   0.057102702

   12    6.2  0.5 -0.5   0.100781426   0.017366794  -0.000607476   0.000024254
                         0.176452040   0.790322464   0.002262276   0.019055823


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  32.806%   0.511%  66.035%   0.162%   0.011%   0.450%   0.000%   0.016%   0.000%   0.003%
    2    2.2  0.5  0.5   0.516%  32.802%   0.014%  21.569%  40.141%   4.933%   0.016%   0.000%   0.009%   0.000%
    3    3.2  0.5  0.5  32.169%   1.148%  11.976%   0.230%  13.971%  40.480%   0.001%   0.015%   0.000%   0.002%
    4    4.2  0.5  0.5   0.016%   0.001%   0.002%   0.000%   0.002%   0.006%   2.330%  30.987%   0.950%  14.377%
    5    5.2  0.5  0.5   0.016%   0.001%   0.009%   0.000%   0.000%   0.000%   2.309%  31.008%   1.106%  16.933%
    6    6.2  0.5  0.5   0.001%   0.016%   0.000%   0.003%   0.005%   0.001%  30.995%   2.322%  62.491%   4.129%
    7    1.2  0.5 -0.5   0.511%  32.806%   0.162%  66.035%   0.450%   0.011%   0.016%   0.000%   0.003%   0.000%
    8    2.2  0.5 -0.5  32.802%   0.516%  21.569%   0.014%   4.933%  40.141%   0.000%   0.016%   0.000%   0.009%
    9    3.2  0.5 -0.5   1.148%  32.169%   0.230%  11.976%  40.480%  13.971%   0.015%   0.001%   0.002%   0.000%
   10    4.2  0.5 -0.5   0.001%   0.016%   0.000%   0.002%   0.006%   0.002%  30.987%   2.330%  14.377%   0.950%
   11    5.2  0.5 -0.5   0.001%   0.016%   0.000%   0.009%   0.000%   0.000%  31.008%   2.309%  16.933%   1.106%
   12    6.2  0.5 -0.5   0.016%   0.001%   0.003%   0.000%   0.001%   0.005%   2.322%  30.995%   4.129%  62.491%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.006%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.007%
    4    4.2  0.5  0.5   0.519%  50.812%
    5    5.2  0.5  0.5   0.459%  48.159%
    6    6.2  0.5  0.5   0.036%   0.001%
    7    1.2  0.5 -0.5   0.006%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.007%   0.000%
   10    4.2  0.5 -0.5  50.812%   0.519%
   11    5.2  0.5 -0.5  48.159%   0.459%
   12    6.2  0.5 -0.5   0.001%   0.036%


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
              1      24      232.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      241.94       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6065.79   4759.20   1302.19      2.25      0.12      1.80
 REAL TIME  *      6142.01 SEC
 DISK USED  *       305.43 MB (local),        4.27 GB (total)
 SF USED    *         2.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -5878.758345676579

              CI           MULTI         RHF-SCF
  -5878.71318576  -5878.11808734  -5878.03243931
 **********************************************************************************************************************************
 Molpro calculation terminated
