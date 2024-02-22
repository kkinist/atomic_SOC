
 Working directory              : /wrk/irikura/molpro.81dMfL0dVd/
 Global scratch directory       : /wrk/irikura/molpro.81dMfL0dVd/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.81dMfL0dVd/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,O SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={O};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=8,sym=1,spin=2}
 
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
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5200.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5202.2,5200.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   O SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:11:37  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry O      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry O      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry O      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry O      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry O      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry O      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  O       8.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    8
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     113.770 MB (compressed) written to integral file ( 12.3%)

     Node minimum: 20.185 MB, node maximum: 25.428 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2454825. INTEGRALS IN      8 RECORDS. CPU TIME:     0.66 SEC, REAL TIME:     0.72 SEC
 SORT2 READ    12182057. AND WROTE    68575111. INTEGRALS IN    395 RECORDS. CPU TIME:     0.27 SEC, REAL TIME:     0.42 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.572E-05 0.402E-03 0.417E-02 0.888E-02 0.386E-01 0.386E-01 0.386E-01 0.386E-01
         2 0.272E-03 0.272E-03 0.272E-03 0.258E-01 0.258E-01 0.258E-01 0.389E-01 0.389E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.04      2.84
 REAL TIME  *         4.48 SEC
 DISK USED  *        30.07 MB (local),      388.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   1

 NELEC=    8   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -74.84132369     -74.84132369     0.00D+00     0.39D-01     0     0       0.08      0.15    start
   2      -74.86253790      -0.02121421     0.63D-02     0.45D-02     1     0       0.09      0.24    diag2
   3      -74.86429993      -0.00176203     0.27D-02     0.14D-02     2     0       0.08      0.32    diag2
   4      -74.86450900      -0.00020907     0.52D-03     0.36D-03     3     0       0.08      0.40    diag2
   5      -74.86452892      -0.00001992     0.13D-03     0.14D-03     4     0       0.08      0.48    diag2
   6      -74.86452947      -0.00000056     0.21D-04     0.27D-04     5     0       0.08      0.56    diag2
   7      -74.86452948      -0.00000001     0.28D-05     0.28D-05     6     0       0.08      0.64    diag2
   8      -74.86452948      -0.00000000     0.23D-06     0.28D-06     0     0       0.09      0.73    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   1

 !RHF STATE 1.1 Energy                -74.864529482236
  RHF One-electron energy            -103.329114402809
  RHF Two-electron energy              28.464584920573
  RHF Kinetic energy                   75.218377833342
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.995295719460

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68425     1  1  s    0.99243
    2.1     2.00000    -1.24694     1  2  s    1.01057
    1.2     2.00000    -0.56641     1  1  px   0.98147
    2.2     1.00000    -0.70237     1  1  pz   0.99589
    3.2     1.00000    -0.70237     1  1  py   0.99589


 HOMO      3.2    -0.702374 =     -19.1126eV
 LUMO      4.2     0.104345 =       2.8394eV
 LUMO-HOMO         0.806719 =      21.9519eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.91       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.77      0.73      2.84
 REAL TIME  *         5.23 SEC
 DISK USED  *        32.61 MB (local),      401.45 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     176 (   85   91)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.886D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.759D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 4 5 1 6   2 3 4 5 711 8141015  13 912 1 2 6 4 3 5 7  11 8141015 91312 2 6
                                        4 3 5 1 71114 81510   91312 2 6 4 3 5 1 2   6 4 3 5 111 714 815  1013 912 6 2 4 3 5 1
                                        6 2 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.995D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.178D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.177D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 5   6 8 410 9 7 2 3 1 5   6 4 8 910 7 2 3 112  19142116171520131811
                                        5 6 8 4 910 7 2 3 1  12191421161715201318  11 6 5 8 4 910 7 2 3   1 5 6 8 4 910 7 2 3
                                        1 5 6 8 410 9 7 2 3   1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  444  ( 1 closed/active, 85 closed/virtual, 0 active/active, 358 active/virtual )
 Total number of variables:    513
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0    -74.85743661     -74.85970351   -0.00226691    0.05870351 0.00000215 0.00000000  0.47E-01      0.31
   2    4    8    0    -74.85971490     -74.85971506   -0.00000016    0.00061411 0.00000010 0.00000000  0.34E-03      0.58
   3    2    4    0    -74.85971506     -74.85971506    0.00000000    0.00000007 0.00000000 0.00000000  0.30E-07      0.77

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.46E-08)
                       Final energy:    -74.85971506
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -74.861529721116
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365119
 One electron energy                          -103.33476061
 Two electron energy                            28.47323088
 Virial ratio                                    1.99531838
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -74.861529720791
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365120
 One electron energy                          -103.33476061
 Two electron energy                            28.47323089
 Virial ratio                                    1.99531838
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -74.861529720484
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365121
 One electron energy                          -103.33476062
 Two electron energy                            28.47323090
 Virial ratio                                    1.99531838
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -74.780909043055
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365119
 One electron energy                          -103.33476061
 Two electron energy                            28.55385156
 Virial ratio                                    1.99424649
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -74.780909043049
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365119
 One electron energy                          -103.33476060
 Two electron energy                            28.55385156
 Virial ratio                                    1.99424649
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -74.780909042875
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365120
 One electron energy                          -103.33476061
 Two electron energy                            28.55385157
 Virial ratio                                    1.99424649
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -74.780909042705
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365121
 One electron energy                          -103.33476062
 Two electron energy                            28.55385158
 Virial ratio                                    1.99424649
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -74.780909042645
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.21365121
 One electron energy                          -103.33476063
 Two electron energy                            28.55385158
 Virial ratio                                    1.99424649
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -74.714791673746
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.18532234
 One electron energy                          -103.28398934
 Two electron energy                            28.56919767
 Virial ratio                                    1.99374172
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999980
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000105
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999729
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000003380
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.966458055969
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999998832
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000003780
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.033557769816
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999732
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999915
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000540
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.999999999580
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.284963776152
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000001974
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999993712
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.715028090739
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000288
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999980
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999732
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999997040
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.748578167879
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999999999194
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000002508
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.251414139445
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 5 4 1 6   2 4 5 311 7 8121514  1013 9 1 6 2 3 5 411   7 8121514 91013 6 2
                                        4 5 3 111 7 812 914  151013 6 2 4 5 3 1 6   2 4 3 5 111 712 8 9  14151310 6 2 4 3 5 1
                                        6 2 4 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 2 1 3 5   6 810 7 9 4 2 1 3 5   6 810 4 9 7 2 3 112  19132114161715112018
                                        5 6 810 4 7 9 3 2 1  12191321161411171518  20 5 6 810 4 7 9 3 2   1 5 6 810 4 7 9 3 2
                                        1 5 6 810 4 7 9 3 2   1 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68053     1  1  s    0.99230
    2.1     1.99975    -1.25002     1  2  s    1.01047
    1.2     1.33342    -0.36904     1  1  px   0.99862
    2.2     1.33342    -0.36904     1  1  pz   0.99862
    3.2     1.33342    -0.36904     1  1  py   0.99862
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          0.00000448      1.00000000     -0.00001648
 2 a2a          1.00000000     -0.00000448     -0.00001638
 2 aa2          0.00001638      0.00000924      1.00000000
 
 Energy:      -74.86152972    -74.86152972    -74.86152972
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.00001972     -0.20470378     -0.00002708      0.00000843      0.79042034      0.56616023
 2 220         -0.00002679      0.78687527      0.00001762     -0.00000546     -0.21793421      0.56616023
 2 2ab          0.00000592     -0.00003111      0.70710678     -0.00002416      0.00001976      0.00000000
 2 2ba         -0.00000592      0.00003111     -0.70710678      0.00002416     -0.00001976     -0.00000000
 2 a2b          0.70710678      0.00013412     -0.00000570     -0.00002084     -0.00000735      0.00000000
 2 b2a         -0.70710678     -0.00013412      0.00000570      0.00002084      0.00000735     -0.00000000
 2 ab2          0.00000833      0.00000638      0.00000853      0.70710678      0.00001418     -0.00000000
 2 ba2         -0.00000833     -0.00000638     -0.00000853     -0.70710678     -0.00001418      0.00000000
 2 022          0.00000707     -0.58217149      0.00000946     -0.00000296     -0.57248613      0.56616023
 0 222          0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.19592798
 
 Energy:      -74.78090904    -74.78090904    -74.78090904    -74.78090904    -74.78090904    -74.71479167
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.58       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.67      0.90      0.73      2.84
 REAL TIME  *         6.24 SEC
 DISK USED  *        34.83 MB (local),      412.56 MB (total)
 SF USED    *        11.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -74.86152972   2.0
    -74.86152972   2.0
    -74.86152972   2.0
    -74.78090904   6.0
    -74.78090904   6.0
    -74.78090904   6.0
    -74.78090904   6.0
    -74.78090904   6.0
    -74.71479167  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  8
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:        6 conf        6 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       16 conf       48 CSFs

 Number of electrons in valence space:                      6
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -74.86152972
     2       -74.86152972
     3       -74.86152972

 Number of blocks in overlap matrix:    26   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      24

 Number of internal configurations:                    3
 Number of singly external configurations:          2112
 Number of doubly external configurations:        255261
 Total number of contracted configurations:       257376
 Total number of uncontracted configurations:     372981

 Diagonal Coupling coefficients finished.               Storage:    174681 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    319895 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -74.86152972     0.00000000    -0.19418452  0.16D-01  0.27D-01     0.08
    1     2     2     1.00000000     0.00000000   -74.86152972     0.00000000    -0.19400191  0.16D-01  0.27D-01     0.08
    1     3     3     1.00000000     0.00000000   -74.86152972     0.00000000    -0.19420171  0.16D-01  0.27D-01     0.08
    2     1     1     1.03765852    -0.18224475   -75.04377447    -0.18224475    -0.00207960  0.24D-03  0.25D-03     0.91
    2     2     2     1.03771530    -0.18223702   -75.04376674    -0.18223702    -0.00208500  0.24D-03  0.25D-03     0.91
    2     3     3     1.03769482    -0.18223492   -75.04376464    -0.18223492    -0.00209001  0.24D-03  0.25D-03     0.91
    3     1     1     1.04079513    -0.18457881   -75.04610853    -0.00233406    -0.00013174  0.63D-04  0.11D-04     1.73
    3     2     2     1.04078605    -0.18457783   -75.04610756    -0.00234082    -0.00013219  0.64D-04  0.11D-04     1.73
    3     3     3     1.04078627    -0.18457769   -75.04610741    -0.00234277    -0.00013217  0.64D-04  0.11D-04     1.73
    4     1     1     1.04250607    -0.18476067   -75.04629039    -0.00018186    -0.00001196  0.24D-05  0.18D-05     2.54
    4     2     2     1.04250507    -0.18476062   -75.04629034    -0.00018278    -0.00001198  0.24D-05  0.18D-05     2.54
    4     3     3     1.04250503    -0.18476061   -75.04629033    -0.00018292    -0.00001199  0.24D-05  0.18D-05     2.54
    5     1     1     1.04278131    -0.18477587   -75.04630559    -0.00001521    -0.00000088  0.29D-06  0.11D-06     3.36
    5     2     2     1.04278136    -0.18477587   -75.04630559    -0.00001525    -0.00000088  0.29D-06  0.11D-06     3.36
    5     3     3     1.04278085    -0.18477587   -75.04630559    -0.00001526    -0.00000089  0.29D-06  0.11D-06     3.36
    6     1     1     1.04278570    -0.18477694   -75.04630666    -0.00000107    -0.00000008  0.23D-07  0.94D-08     4.19
    6     2     2     1.04278577    -0.18477694   -75.04630666    -0.00000107    -0.00000008  0.23D-07  0.93D-08     4.19
    6     3     3     1.04278572    -0.18477694   -75.04630666    -0.00000108    -0.00000008  0.23D-07  0.94D-08     4.19
    7     1     1     1.04280483    -0.18477704   -75.04630676    -0.00000009    -0.00000001  0.13D-08  0.87D-09     5.04
    7     2     2     1.04280485    -0.18477704   -75.04630676    -0.00000009    -0.00000001  0.13D-08  0.86D-09     5.04
    7     3     3     1.04280484    -0.18477704   -75.04630676    -0.00000009    -0.00000001  0.13D-08  0.87D-09     5.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.4%
 P   0.2%   3.2%  11.7%

 Initialization:   1.4%
 Other:           83.1%

 Total CPU:        5.0 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2/           0.9792611   0.0000000   0.0000000
 22//           0.0000000   0.0000000   0.9792610
 2//2           0.0000000   0.9792610   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.979261    0.000000    0.000000
 2           0.000000    0.000000    0.979261
 3           0.000000    0.979261    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979261    0.000000    0.000000
 2           0.000000    0.979261    0.000000
 3           0.000000    0.000000    0.979261


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97926106 (fixed)   0.97926106 (relaxed)   0.97926106 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13597710
 Singles      0.01684537   -0.04297946   -0.04420046
 Pairs        0.02595945   -0.00000000   -0.00459948
 Total        1.04280483   -0.04297946   -0.18477704
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.86152972
 Nuclear energy                         0.00000000
 Kinetic energy                        75.38936587
 One electron energy                 -103.15558759
 Two electron energy                   28.10928084
 Virial quotient                       -0.99544950
 Correlation energy                    -0.18477704
 !MRCI STATE 1.1 Energy               -75.046306756447

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.05421611 (Davidson, fixed reference)
 Cluster corrected energies           -75.05421611 (Davidson, relaxed reference)
 Cluster corrected energies           -75.05421611 (Davidson, rotated reference)

 Cluster corrected energies           -75.05025962 (Pople, fixed reference)
 Cluster corrected energies           -75.05025962 (Pople, relaxed reference)
 Cluster corrected energies           -75.05025962 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97926104 (fixed)   0.97926104 (relaxed)   0.97926104 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.01684540   -0.04297947   -0.04420046
 Pairs        0.02595945   -0.14179756   -0.14057658
 Total        1.04280485   -0.18477704   -0.18477704
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.86152972
 Nuclear energy                         0.00000000
 Kinetic energy                        75.38936694
 One electron energy                 -103.15558858
 Two electron energy                   28.10928182
 Virial quotient                       -0.99544949
 Correlation energy                    -0.18477704
 !MRCI STATE 2.1 Energy               -75.046306756434

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.05421611 (Davidson, fixed reference)
 Cluster corrected energies           -75.05421611 (Davidson, relaxed reference)
 Cluster corrected energies           -75.05421611 (Davidson, rotated reference)

 Cluster corrected energies           -75.05025962 (Pople, fixed reference)
 Cluster corrected energies           -75.05025962 (Pople, relaxed reference)
 Cluster corrected energies           -75.05025962 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97926105 (fixed)   0.97926105 (relaxed)   0.97926105 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13597709
 Singles      0.01684537   -0.04297947   -0.04420047
 Pairs        0.02595947    0.00000000   -0.00459948
 Total        1.04280484   -0.04297947   -0.18477704
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.86152972
 Nuclear energy                         0.00000000
 Kinetic energy                        75.38936078
 One electron energy                 -103.15558442
 Two electron energy                   28.10927766
 Virial quotient                       -0.99544957
 Correlation energy                    -0.18477704
 !MRCI STATE 3.1 Energy               -75.046306756420

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.05421611 (Davidson, fixed reference)
 Cluster corrected energies           -75.05421611 (Davidson, relaxed reference)
 Cluster corrected energies           -75.05421611 (Davidson, rotated reference)

 Cluster corrected energies           -75.05025962 (Pople, fixed reference)
 Cluster corrected energies           -75.05025962 (Pople, relaxed reference)
 Cluster corrected energies           -75.05025962 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        8.47       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.80      5.12      0.90      0.73      2.84
 REAL TIME  *        11.66 SEC
 DISK USED  *        41.72 MB (local),      447.01 MB (total)
 SF USED    *        63.27 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -75.05421611  AU                              
 SETTING HLSDIAG(2)     =       -75.05421611  AU                              
 SETTING HLSDIAG(3)     =       -75.05421611  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  8
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       10 conf       10 CSFs
 N-1 el internal:       16 conf       20 CSFs
 N-2 el internal:       19 conf       35 CSFs

 Number of electrons in valence space:                      6
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -74.78090904
     2       -74.78090904
     3       -74.78090904
     4       -74.78090904
     5       -74.78090904
     6       -74.71479167

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.55D-01
 Number of N-2 electron functions:      34
 Number of N-1 electron functions:      20

 Number of internal configurations:                    7
 Number of singly external configurations:          1766
 Number of doubly external configurations:        263842
 Total number of contracted configurations:       265615
 Total number of uncontracted configurations:     273350

 Diagonal Coupling coefficients finished.               Storage:    175560 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    319603 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -74.78090904     0.00000000    -0.19932362  0.15D-01  0.26D-01     0.03
    1     2     2     1.00000000     0.00000000   -74.78090904     0.00000000    -0.19841859  0.15D-01  0.26D-01     0.03
    1     3     3     1.00000000     0.00000000   -74.78090904     0.00000000    -0.19978552  0.15D-01  0.26D-01     0.03
    1     4     4     1.00000000     0.00000000   -74.78090904     0.00000000    -0.19923472  0.15D-01  0.26D-01     0.03
    1     5     5     1.00000000     0.00000000   -74.78090904    -0.00000000    -0.19863519  0.15D-01  0.26D-01     0.03
    1     6     6     1.00000000     0.00000000   -74.71479167     0.00000000    -0.18101449  0.45D-02  0.31D-01     0.03
    2     1     1     1.03741333    -0.19011405   -74.97102310    -0.19011405    -0.00310591  0.18D-03  0.40D-03     1.80
    2     2     2     1.03746641    -0.19008366   -74.97099271    -0.19008366    -0.00315243  0.20D-03  0.40D-03     1.80
    2     3     3     1.03733243    -0.19007521   -74.97098426    -0.19007521    -0.00312526  0.19D-03  0.40D-03     1.80
    2     4     4     1.03750630    -0.19007070   -74.97097974    -0.19007070    -0.00316871  0.20D-03  0.40D-03     1.80
    2     5     5     1.03732653    -0.18997872   -74.97088777    -0.18997872    -0.00322416  0.22D-03  0.40D-03     1.80
    2     6     6     1.03328209    -0.17591226   -74.89070393    -0.17591226    -0.00279295  0.22D-03  0.37D-03     1.80
    3     1     1     1.04045562    -0.19332752   -74.97423656    -0.00321346    -0.00014093  0.44D-04  0.15D-04     3.60
    3     2     2     1.04045464    -0.19332547   -74.97423451    -0.00324181    -0.00014331  0.45D-04  0.15D-04     3.60
    3     3     3     1.04044958    -0.19332496   -74.97423400    -0.00324974    -0.00014388  0.45D-04  0.15D-04     3.60
    3     4     4     1.04042335    -0.19332005   -74.97422910    -0.00324935    -0.00014449  0.43D-04  0.15D-04     3.60
    3     5     5     1.04038744    -0.19331169   -74.97422073    -0.00333296    -0.00015152  0.44D-04  0.16D-04     3.60
    3     6     6     1.03623147    -0.17871895   -74.89351062    -0.00280669    -0.00017416  0.91D-04  0.14D-04     3.60
    4     1     1     1.04172804    -0.19349667   -74.97440571    -0.00016915    -0.00000931  0.17D-05  0.14D-05     5.39
    4     2     2     1.04172976    -0.19349665   -74.97440570    -0.00017118    -0.00000931  0.17D-05  0.14D-05     5.39
    4     3     3     1.04172709    -0.19349664   -74.97440568    -0.00017169    -0.00000932  0.17D-05  0.14D-05     5.39
    4     4     4     1.04172341    -0.19349540   -74.97440444    -0.00017534    -0.00001013  0.20D-05  0.14D-05     5.39
    4     5     5     1.04171656    -0.19349493   -74.97440397    -0.00018324    -0.00001047  0.21D-05  0.14D-05     5.39
    4     6     6     1.03787348    -0.17891940   -74.89371107    -0.00020045    -0.00001436  0.28D-05  0.19D-05     5.39
    5     1     1     1.04193499    -0.19350853   -74.97441758    -0.00001186    -0.00000063  0.13D-06  0.82D-07     7.18
    5     2     2     1.04193572    -0.19350852   -74.97441757    -0.00001187    -0.00000064  0.14D-06  0.84D-07     7.18
    5     3     3     1.04193590    -0.19350852   -74.97441756    -0.00001188    -0.00000064  0.14D-06  0.85D-07     7.18
    5     4     4     1.04193133    -0.19350842   -74.97441747    -0.00001303    -0.00000071  0.14D-06  0.90D-07     7.18
    5     5     5     1.04192913    -0.19350838   -74.97441742    -0.00001345    -0.00000074  0.15D-06  0.93D-07     7.18
    5     6     6     1.03817417    -0.17893659   -74.89372826    -0.00001719    -0.00000118  0.18D-06  0.17D-06     7.18
    6     1     1     1.04194345    -0.19350930   -74.97441835    -0.00000077    -0.00000005  0.11D-07  0.58D-08     8.99
    6     2     2     1.04194326    -0.19350930   -74.97441834    -0.00000078    -0.00000005  0.11D-07  0.59D-08     8.99
    6     3     3     1.04194336    -0.19350930   -74.97441834    -0.00000078    -0.00000005  0.11D-07  0.59D-08     8.99
    6     4     4     1.04194300    -0.19350929   -74.97441833    -0.00000087    -0.00000006  0.14D-07  0.64D-08     8.99
    6     5     5     1.04194259    -0.19350929   -74.97441833    -0.00000091    -0.00000006  0.15D-07  0.66D-08     8.99
    6     6     6     1.03821041    -0.17893797   -74.89372964    -0.00000138    -0.00000010  0.37D-07  0.11D-07     8.99
    7     1     1     1.04195050    -0.19350936   -74.97441840    -0.00000006    -0.00000000  0.57D-09  0.48D-09    10.81
    7     2     2     1.04195061    -0.19350936   -74.97441840    -0.00000006    -0.00000000  0.58D-09  0.49D-09    10.81
    7     3     3     1.04195061    -0.19350936   -74.97441840    -0.00000006    -0.00000000  0.58D-09  0.49D-09    10.81
    7     4     4     1.04194989    -0.19350936   -74.97441840    -0.00000007    -0.00000000  0.75D-09  0.58D-09    10.81
    7     5     5     1.04194978    -0.19350936   -74.97441840    -0.00000007    -0.00000000  0.83D-09  0.61D-09    10.81
    7     6     6     1.03822642    -0.17893808   -74.89372976    -0.00000012    -0.00000001  0.25D-08  0.12D-08    10.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.0%   0.1%
 P   0.3%   3.3%  15.3%

 Initialization:   0.0%
 Other:           80.9%

 Total CPU:       10.8 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\2           0.9796624   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 22/\           0.0000000   0.0000000   0.9796624   0.0000000   0.0000000   0.0000000
 2/2\           0.0000000   0.9796624   0.0000000   0.0000000   0.0000000   0.0000000
 2220           0.0000000   0.0000000   0.0000000  -0.2015362   0.7740861   0.5559417
 2022           0.0000000   0.0000000   0.0000000   0.7711463  -0.2125076   0.5559418
 2202           0.0000000   0.0000000   0.0000000  -0.5696101  -0.5615785   0.5559418
 0222           0.0000000   0.0000000   0.0000000  -0.0000001   0.0000001  -0.1896504

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \/2\  13.1     0.0000000  -0.0504050   0.0000000  -0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.000000    0.979662    0.000000    0.000000
 2           0.979662    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.979662    0.000000    0.000000    0.000000
 4           0.000000   -0.490923    0.000000    0.000000   -0.847782    0.000000
 5           0.000000    0.847782    0.000000    0.000000   -0.490923   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.981414

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979662    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.979662    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.979662    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.979663   -0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.979663   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.981414


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97966244 (fixed)   0.97966244 (relaxed)   0.97966244 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.14284631
 Singles      0.01457123   -0.04467057   -0.04557739
 Pairs        0.02737927   -0.00000000   -0.00508566
 Total        1.04195050   -0.04467057   -0.19350936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.78090904
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33117368
 One electron energy                 -103.06234247
 Two electron energy                   28.08792407
 Virial quotient                       -0.99526417
 Correlation energy                    -0.19350936
 !MRCI STATE 1.1 Energy               -74.974418401893

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.98253622 (Davidson, fixed reference)
 Cluster corrected energies           -74.98253622 (Davidson, relaxed reference)
 Cluster corrected energies           -74.98253622 (Davidson, rotated reference)

 Cluster corrected energies           -74.97990482 (Pople, fixed reference)
 Cluster corrected energies           -74.97990482 (Pople, relaxed reference)
 Cluster corrected energies           -74.97990482 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97966239 (fixed)   0.97966239 (relaxed)   0.97966239 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.14284622
 Singles      0.01457133   -0.04467066   -0.04557739
 Pairs        0.02737928    0.00000000   -0.00508576
 Total        1.04195061   -0.04467066   -0.19350936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.78090904
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33117909
 One electron energy                 -103.06234637
 Two electron energy                   28.08792797
 Virial quotient                       -0.99526410
 Correlation energy                    -0.19350936
 !MRCI STATE 2.1 Energy               -74.974418401885

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.98253624 (Davidson, fixed reference)
 Cluster corrected energies           -74.98253624 (Davidson, relaxed reference)
 Cluster corrected energies           -74.98253624 (Davidson, rotated reference)

 Cluster corrected energies           -74.97990484 (Pople, fixed reference)
 Cluster corrected energies           -74.97990484 (Pople, relaxed reference)
 Cluster corrected energies           -74.97990484 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97966239 (fixed)   0.97966239 (relaxed)   0.97966239 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.14284616
 Singles      0.01457138   -0.04467072   -0.04557739
 Pairs        0.02737923   -0.00000000   -0.00508581
 Total        1.04195061   -0.04467072   -0.19350936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.78090904
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33117863
 One electron energy                 -103.06234556
 Two electron energy                   28.08792716
 Virial quotient                       -0.99526411
 Correlation energy                    -0.19350936
 !MRCI STATE 3.1 Energy               -74.974418401857

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.98253624 (Davidson, fixed reference)
 Cluster corrected energies           -74.98253624 (Davidson, relaxed reference)
 Cluster corrected energies           -74.98253624 (Davidson, rotated reference)

 Cluster corrected energies           -74.97990484 (Pople, fixed reference)
 Cluster corrected energies           -74.97990484 (Pople, relaxed reference)
 Cluster corrected energies           -74.97990484 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.84778157 (fixed)   0.97966272 (relaxed)   0.97966272 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.14284634
 Singles      0.01457087   -0.04467067   -0.04557732
 Pairs        0.02737902    0.00000003   -0.00508570
 Total        1.04194989   -0.04467063   -0.19350936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.78090904
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33117327
 One electron energy                 -103.06234427
 Two electron energy                   28.08792586
 Virial quotient                       -0.99526418
 Correlation energy                    -0.19350936
 !MRCI STATE 4.1 Energy               -74.974418400792

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.98253610 (Davidson, fixed reference)
 Cluster corrected energies           -74.98253610 (Davidson, relaxed reference)
 Cluster corrected energies           -74.98253610 (Davidson, rotated reference)

 Cluster corrected energies           -74.97990474 (Pople, fixed reference)
 Cluster corrected energies           -74.97990474 (Pople, relaxed reference)
 Cluster corrected energies           -74.97990474 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.84778162 (fixed)   0.97966278 (relaxed)   0.97966278 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.14284620
 Singles      0.01457088   -0.04467078   -0.04557730
 Pairs        0.02737890   -0.00000001   -0.00508586
 Total        1.04194978   -0.04467079   -0.19350936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.78090904
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33117170
 One electron energy                 -103.06234289
 Two electron energy                   28.08792449
 Virial quotient                       -0.99526420
 Correlation energy                    -0.19350936
 !MRCI STATE 5.1 Energy               -74.974418400443

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.98253607 (Davidson, fixed reference)
 Cluster corrected energies           -74.98253607 (Davidson, relaxed reference)
 Cluster corrected energies           -74.98253607 (Davidson, rotated reference)

 Cluster corrected energies           -74.97990472 (Pople, fixed reference)
 Cluster corrected energies           -74.97990472 (Pople, relaxed reference)
 Cluster corrected energies           -74.97990472 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.98141419 (fixed)   0.98141787 (relaxed)   0.98141419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000750   -0.00000000   -0.00000129
 Singles      0.00500403   -0.00656702   -0.00718599
 Pairs        0.03322267   -0.17237106   -0.17175079
 Total        1.03823421   -0.17893808   -0.17893808
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.71479167
 Nuclear energy                         0.00000000
 Kinetic energy                        75.25751216
 One electron energy                 -102.92649763
 Two electron energy                   28.03276788
 Virial quotient                       -0.99516616
 Correlation energy                    -0.17893808
 !MRCI STATE 6.1 Energy               -74.893729755363

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.90057131 (Davidson, fixed reference)
 Cluster corrected energies           -74.90056992 (Davidson, relaxed reference)
 Cluster corrected energies           -74.90057131 (Davidson, rotated reference)

 Cluster corrected energies           -74.89834813 (Pople, fixed reference)
 Cluster corrected energies           -74.89834718 (Pople, relaxed reference)
 Cluster corrected energies           -74.89834813 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       20.81       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        20.81     11.01      5.12      0.90      0.73      2.84
 REAL TIME  *        23.26 SEC
 DISK USED  *        54.06 MB (local),      508.72 MB (total)
 SF USED    *       120.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -74.98253622  AU                              
 SETTING HLSDIAG(5)     =       -74.98253624  AU                              
 SETTING HLSDIAG(6)     =       -74.98253624  AU                              
 SETTING HLSDIAG(7)     =       -74.98253610  AU                              
 SETTING HLSDIAG(8)     =       -74.98253607  AU                              
 SETTING HLSDIAG(9)     =       -74.90057131  AU                              


        HLSDIAG
    -75.05421611
    -75.05421611
    -75.05421611
    -74.98253622
    -74.98253624
    -74.98253624
    -74.98253610
    -74.98253607
    -74.90057131
                                                  

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

 Time for Seward_LS:       7.54 sec

       80844384. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19756 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.54 sec, REAL time:      7.87 sec


 SORTLS1 read    80880527. and wrote    80880527. SO integrals in   317 records. CPU time:      0.73 sec, REAL time:      1.27 sec
 SORTLS2 read    80880527. and wrote   406960599. SO integrals in    15 records. CPU time:      1.00 sec, REAL time:      1.74 sec

 FILE SIZES: FILE 1:  1329.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1329.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1268.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       20.81       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.47      9.64     11.01      5.12      0.90      0.73      2.84
 REAL TIME  *        36.24 SEC
 DISK USED  *        54.25 MB (local),        4.59 GB (total)
 SF USED    *         1.21 GB
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
  
 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -75.046307    -75.046307    -75.046307
 Replaced energies:    -75.054216    -75.054216    -75.054216

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -74.974418    -74.974418    -74.974418    -74.974418    -74.974418    -74.893730
 Replaced energies:    -74.982536    -74.982536    -74.982536    -74.982536    -74.982536    -74.900571



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -75.05421611

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00     -54.24       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      54.24      -0.00       0.00       0.00       0.00      50.25

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     -76.71     -54.24       0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      54.24      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      76.71      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00      54.24       0.00       0.00       0.00      -0.00       0.00     -54.24       0.00
                           -0.00      54.24      -0.00       0.00       0.00       0.00       0.00      54.24      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                          -54.24      -0.00       0.00      -0.00       0.00       0.00     -54.24       0.00       0.00       0.00

    6   3.1  1.0  0.0     -54.24       0.00       0.00       0.00       0.00       0.00      54.24      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      71.02

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      54.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      54.24      -0.00       0.00      -0.00       0.00     -50.25

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00     -54.24      -0.00       0.00       0.00       0.00      76.71       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00     -54.24       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     -76.71       0.00       0.00

   10   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   15731.92
                          -50.25       0.00       0.00       0.00      -0.00     -71.02      50.25      -0.00      -0.00       0.00

   11   2.1  0.0  0.0       0.00       0.00     -50.23       0.00       0.00       0.00       0.00       0.00     -50.23       0.00
                            0.00      50.24      -0.00      -0.00      -0.00       0.00      -0.00     -50.24       0.00      -0.00

   12   3.1  0.0  0.0      50.25       0.00       0.00       0.00       0.00       0.00      50.25       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -71.04      -0.00       0.00      -0.00       0.00      -0.00

   13   4.1  0.0  0.0      -0.00     -14.61       0.00       0.00       0.00       0.00      -0.00     -14.61       0.00       0.00
                            0.00      -0.00     -55.92      58.42       0.00       0.00      -0.00       0.00      55.92      -0.00

   14   5.1  0.0  0.0       0.00      56.14       0.00       0.00       0.00       0.00       0.00      56.14       0.00       0.00
                           -0.00      -0.00      15.41      57.60      -0.00       0.00       0.00       0.00     -15.41      -0.00

   15   6.1  0.0  0.0      -0.00     -83.77      -0.00       0.00       0.00       0.00      -0.00     -83.77      -0.00       0.00
                           -0.00      -0.00      83.79     118.43      -0.00       0.00       0.00       0.00     -83.79      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00      50.25      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00     -14.61      56.14     -83.77
                          -50.24      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     -50.23       0.00       0.00       0.00      -0.00
                            0.00       0.00      55.92     -15.41     -83.79

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -58.42     -57.60    -118.43

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      71.04      -0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00      50.25      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00     -14.61      56.14     -83.77
                           50.24       0.00      -0.00      -0.00      -0.00

    9   3.1  1.0 -1.0     -50.23       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     -55.92      15.41      83.79

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   15731.91       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   15731.91       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   15731.94       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   15731.95       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   33721.14
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -75.05421611 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.001       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      76.707      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -76.707       0.000       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      76.707

    1    1  |1 0>              -0.000       0.000       0.000       0.001       0.000       0.000       0.000      -0.000
                                0.000      76.707      -0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -76.707       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000     -76.707       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -76.707       0.001       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -76.707       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      76.707      -0.000       0.000       0.000       0.000
                                0.000      76.707      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -71.022     -71.067       0.000

    2    1  |0 0>               0.000       0.000     -71.031       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      71.054

    3    1  |0 0>              71.058       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -71.035      -0.000      -0.000       0.000

    4    1  |0 0>              -0.000     -20.667       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      58.419       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000      79.389       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      57.597      -0.000       0.000      -0.000      -0.000

    6    1  |0 0>              -0.000    -118.465      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     118.429      -0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000       0.000      71.058      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000     -20.667      79.389    -118.465
                              -76.707       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000     -71.031       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              76.707       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     -58.419     -57.597    -118.429

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      71.035      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      71.022      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      71.067      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -71.054      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      79.084     -21.792    -118.501

    1    1  |0 0>               0.000   15731.918       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   15731.914       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   15731.914       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   15731.944       0.000       0.000
                              -79.084      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   15731.949       0.000
                               21.792      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   33721.136
                              118.501      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -75.05456852    -0.00035241      -77.35      0.00000000        0.00      0.0000
    2   -75.05456852    -0.00035241      -77.35      0.00000000        0.00      0.0000
    3   -75.05456852    -0.00035241      -77.35      0.00000000        0.00      0.0000
    4   -75.05456852    -0.00035241      -77.34      0.00000000        0.00      0.0000
    5   -75.05456852    -0.00035241      -77.34      0.00000000        0.00      0.0000
    6   -75.05386661     0.00034950       76.71      0.00070191      154.05      0.0191
    7   -75.05386661     0.00034950       76.71      0.00070192      154.05      0.0191
    8   -75.05386660     0.00034951       76.71      0.00070192      154.05      0.0191
    9   -75.05352282     0.00069329      152.16      0.00104570      229.51      0.0285
   10   -74.98253333     0.07168278    15732.55      0.07203519    15809.90      1.9602
   11   -74.98253333     0.07168278    15732.55      0.07203519    15809.90      1.9602
   12   -74.98253331     0.07168280    15732.56      0.07203521    15809.90      1.9602
   13   -74.98253319     0.07168292    15732.58      0.07203533    15809.93      1.9602
   14   -74.98253317     0.07168294    15732.59      0.07203536    15809.93      1.9602
   15   -74.90056560     0.15365051    33722.39      0.15400292    33799.74      4.1906

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000000  0.70709061 -0.00000000 -0.00000000 -0.00000000  0.70710866  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.79707725  0.00000007  0.00000000 -0.00000000 -0.17694349 -0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000006  0.70709105 -0.00000000  0.00000000 -0.00000000  0.70710824  0.00000000 -0.00000000
                          -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.24530160 -0.00000002 -0.00000000  0.00000001  0.77875811 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.70709439 -0.00000000 -0.00000000  0.00000000 -0.70710490 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.70661310 -0.00000001 -0.00000000  0.00000000 -0.70657513
                          -0.00000000 -0.00000000 -0.00000000 -0.02604498  0.00000001  0.00000000 -0.00000000  0.02740407

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.70661224 -0.00000001  0.00000000 -0.00000000  0.70657598
                          -0.00000000 -0.00000000 -0.00000000 -0.02604495  0.00000001 -0.00000000  0.00000000 -0.02740410

   2    1  |1 1>-          0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.70709396 -0.00000000  0.00000000 -0.00000000 -0.70710532 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.55177404 -0.00000005 -0.00000000 -0.00000001 -0.60181926 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00023408 -0.00000000  0.00000000 -0.00000000  0.00000008
                           0.00000000 -0.00000000  0.00000000  0.00635082 -0.00000000  0.00000000 -0.00000000  0.00000207

   2    1  |0 0>          -0.00000000  0.00635492 -0.00000000  0.00000000 -0.00000000 -0.00000102 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00635535  0.00000000  0.00000000  0.00000000 -0.00000105 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00289572  0.00000000  0.00000000  0.00000000  0.00565694  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00565696 -0.00000000 -0.00000000  0.00000000  0.00289620  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000032 -0.00000000 -0.00000000 -0.00000000 -0.00000149 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.00000000  0.00449464  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.57733827  0.00000000  0.00000000  0.00000000 -0.00135006  0.00501024 -0.00352894
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00449288 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57734180 -0.00000000  0.00000000  0.00000000 -0.00366394 -0.00367461 -0.00352788

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00449318 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00009395 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00449131  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00009401 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00449424  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00449434 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57733838 -0.00000000  0.00000000 -0.00000000  0.00501388 -0.00133565 -0.00353000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99976110  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.02091311  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.99997981  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.99997980  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000008  0.00000000 -0.00000000 -0.00000000  0.99994335  0.00853906 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000003  0.00000000  0.00000000 -0.00000000 -0.00853906  0.99994335 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00611230 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.99998132
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -75.05456852     -0.00035241      -77.35      0.00000000        0.00      0.0000
     2   1    -75.05456852     -0.00035241      -77.35      0.00000000        0.00      0.0000
     3   1    -75.05456852     -0.00035241      -77.35      0.00000000        0.00      0.0000
     4   1    -75.05456852     -0.00035241      -77.34      0.00000000        0.00      0.0000
     5   1    -75.05456852     -0.00035241      -77.34      0.00000000        0.00      0.0000
     6   1    -75.05386661      0.00034950       76.71      0.00070191      154.05      0.0191
     7   1    -75.05386661      0.00034950       76.71      0.00070192      154.05      0.0191
     8   1    -75.05386660      0.00034951       76.71      0.00070192      154.05      0.0191
     9   1    -75.05352282      0.00069329      152.16      0.00104570      229.51      0.0285
    10   1    -74.98253333      0.07168278    15732.55      0.07203519    15809.90      1.9602
    11   1    -74.98253333      0.07168278    15732.55      0.07203519    15809.90      1.9602
    12   1    -74.98253331      0.07168280    15732.56      0.07203521    15809.90      1.9602
    13   1    -74.98253319      0.07168292    15732.58      0.07203533    15809.93      1.9602
    14   1    -74.98253317      0.07168294    15732.59      0.07203536    15809.93      1.9602
    15   1    -74.90056560      0.15365051    33722.39      0.15400292    33799.74      4.1906

 E0 =    -75.05421611 is the energy of the lowest zeroth-order state
 E1 =    -75.05456852 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.70709061 -0.00000000 -0.00000000 -0.00000000  0.70710866  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.79707725  0.00000007  0.00000000 -0.00000000 -0.17694349 -0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000006  0.70709105 -0.00000000  0.00000000 -0.00000000  0.70710824  0.00000000 -0.00000000
                               -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.24530160 -0.00000002 -0.00000000  0.00000001  0.77875811 -0.00000000  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.70709439 -0.00000000 -0.00000000  0.00000000 -0.70710490 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.70661310 -0.00000001 -0.00000000  0.00000000 -0.70657513
                               -0.00000000 -0.00000000 -0.00000000 -0.02604498  0.00000001  0.00000000 -0.00000000  0.02740407

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.70661224 -0.00000001  0.00000000 -0.00000000  0.70657598
                               -0.00000000 -0.00000000 -0.00000000 -0.02604495  0.00000001 -0.00000000  0.00000000 -0.02740410

  8  1     2    1  |1 1>-       0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.70709396 -0.00000000  0.00000000 -0.00000000 -0.70710532 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.55177404 -0.00000005 -0.00000000 -0.00000001 -0.60181926 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00023408 -0.00000000  0.00000000 -0.00000000  0.00000008
                                0.00000000 -0.00000000  0.00000000  0.00635082 -0.00000000  0.00000000 -0.00000000  0.00000207

 11  1     2    1  |0 0>       -0.00000000  0.00635492 -0.00000000  0.00000000 -0.00000000 -0.00000102 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00635535  0.00000000  0.00000000  0.00000000 -0.00000105 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00289572  0.00000000  0.00000000  0.00000000  0.00565694  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00565696 -0.00000000 -0.00000000  0.00000000  0.00289620  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000032 -0.00000000 -0.00000000 -0.00000000 -0.00000149 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00449464  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.57733827  0.00000000  0.00000000  0.00000000 -0.00135006  0.00501024 -0.00352894
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00449288 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57734180 -0.00000000  0.00000000  0.00000000 -0.00366394 -0.00367461 -0.00352788

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00449318 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00009395 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00449131  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00009401 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00449424  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00449434 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57733838 -0.00000000  0.00000000 -0.00000000  0.00501388 -0.00133565 -0.00353000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99976110  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.02091311  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.99997981  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.99997980  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000008  0.00000000 -0.00000000 -0.00000000  0.99994335  0.00853906 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000003  0.00000000  0.00000000 -0.00000000 -0.00853906  0.99994335 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00611230 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.99998132
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  2  1     2    1  |1 1>+        63.53%    0.00%    0.00%    0.00%    3.13%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          6.02%    0.00%    0.00%    0.00%   60.65%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        30.45%    0.00%    0.00%    0.00%   36.22%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.99%    0.01%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   99.99%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1268.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       20.81       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        34.94      4.47      9.64     11.01      5.12      0.90      0.73      2.84
 REAL TIME  *        41.72 SEC
 DISK USED  *        54.25 MB (local),        4.59 GB (total)
 SF USED    *         1.26 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -74.900565596571

              CI              CI           MULTI         RHF-SCF
    -74.89372976    -75.04630676    -74.71479167    -74.86452948
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
