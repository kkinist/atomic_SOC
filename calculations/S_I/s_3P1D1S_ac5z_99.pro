
 Working directory              : /wrk/irikura/molpro.UirXc25xdK/
 Global scratch directory       : /wrk/irikura/molpro.UirXc25xdK/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.UirXc25xdK/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,S SO-CI
                                                                                 ! Active space (6,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={S};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=16,sym=1,spin=2}
 
 {multi
     wf,sym=1,spin=2;state,3;
       weight,all,99
     wf,sym=1,spin=0;state,6;
       weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5202.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:45:52  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry S      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  S      16.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   16
 NUMBER OF PRIMITIVE AOS:         322
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          217   (  102Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     232.784 MB (compressed) written to integral file ( 12.1%)

     Node minimum: 16.777 MB, node maximum: 22.544 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2019144. INTEGRALS IN      6 RECORDS. CPU TIME:     1.13 SEC, REAL TIME:     1.17 SEC
 SORT2 READ    24868386. AND WROTE   141159946. INTEGRALS IN    840 RECORDS. CPU TIME:     0.25 SEC, REAL TIME:     0.27 SEC

 Node minimum:    11745169.  Node maximum:    11770866. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.368E-05 0.432E-03 0.220E-02 0.295E-02 0.295E-02 0.295E-02 0.295E-02 0.295E-02
         2 0.437E-04 0.437E-04 0.437E-04 0.486E-02 0.486E-02 0.486E-02 0.165E-01 0.165E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.83      3.52
 REAL TIME  *         4.56 SEC
 DISK USED  *        30.55 MB (local),      851.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   4

 NELEC=   16   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -295.71330096    -295.71330096     0.00D+00     0.19D+00     0     0       0.06      0.12    start
   2     -388.27998625     -92.56668529     0.41D+00     0.19D+00     1     0       0.07      0.19    diag2
   3     -397.32065698      -9.04067074     0.27D+00     0.48D-01     2     0       0.07      0.26    diag2
   4     -398.56570985      -1.24505286     0.52D-01     0.36D-01     3     0       0.07      0.33    diag2
   5     -398.58721458      -0.02150473     0.61D-02     0.48D-02     4     0       0.07      0.40    diag2
   6     -398.58930194      -0.00208736     0.11D-02     0.11D-02     5     0       0.07      0.47    diag2
   7     -398.58936689      -0.00006495     0.23D-03     0.16D-03     6     0       0.07      0.54    diag2
   8     -398.58936930      -0.00000241     0.28D-04     0.40D-04     7     0       0.06      0.60    fixocc
   9     -398.58936940      -0.00000010     0.57D-05     0.54D-05     8     0       0.07      0.67    diag2
  10     -398.58936941      -0.00000001     0.14D-05     0.17D-05     9     0       0.07      0.74    diag2/orth
  11     -398.58936941      -0.00000000     0.22D-06     0.22D-06     0     0       0.07      0.81    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.589369410307
  RHF One-electron energy            -550.864203681874
  RHF Two-electron energy             152.274834271566
  RHF Kinetic energy                  405.207100515404
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.983668274577

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29412     1  1  s    0.95655
    2.1     2.00000    -9.05412     1  2  s    1.04111
    3.1     2.00000    -0.88427     1  2  s    0.33413    1  9  s    0.42843    1 10  s    0.61370
    1.2     2.00000    -6.68295     1  1  px   0.99879
    2.2     2.00000    -6.68295     1  1  py   0.98777
    3.2     2.00000    -6.68149     1  1  pz   0.99069
    4.2     2.00000    -0.39714     1  8  pz   0.38877    1  9  pz   0.45712
    5.2     1.00000    -0.48022     1  1  px  -0.25888    1  8  px   0.42163    1  9  px   0.47699
    6.2     1.00000    -0.48022     1  1  py  -0.25602    1  8  py   0.41697    1  9  py   0.47172


 HOMO      6.2    -0.480222 =     -13.0675eV
 LUMO      7.2     0.070651 =       1.9225eV
 LUMO-HOMO         0.550873 =      14.9900eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.14       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.66      0.83      3.52
 REAL TIME  *         6.27 SEC
 DISK USED  *        34.69 MB (local),      900.87 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.509D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.201D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.576D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   5 3 4 6 21310141512   811 9 7 3 5 4 6 2 1  1013151412 811 9 7 3
                                        5 4 6 2 11013151412   811 9 7 3 5 4 6 2 1  1013141512 811 9 7 3   5 4 6 2 1 3 5 6 4 2
                                       1013151412 8 911 7 3   5 6 4 2 1 3 5 6 4 2   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.113D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.131D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.131D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.139D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.174D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.147D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 2 1 3 2   1 3 9 7 810 5 4 6 7   9 2 110 8 6 5 4 3 9   7 810 4 5 620181517
                                       16141321111219 2 1 3   9 7 810 4 5 6201815  1716141321121119 2 1   3 7 9 810 5 4 61820
                                       171516142113111219 1   2 3 9 710 8 5 4 6 1   2 3 9 710 8 5 4 6 1   2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  962  ( 11 closed/active, 525 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    1031
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -398.58473351    -398.58578745   -0.00105393    0.05339791 0.00001367 0.00000000  0.39E-01      0.53
   2    3    6    0   -398.58579017    -398.58579019   -0.00000002    0.00017515 0.00000002 0.00000000  0.17E-03      1.02
   3    4    8    0   -398.58579019    -398.58579019    0.00000000    0.00000001 0.00000001 0.00000000  0.89E-08      1.49

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.58E-08)
                       Final energy:   -398.58579019
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -398.586983298709
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365926
 One electron energy                          -550.86634554
 Two electron energy                           152.27936224
 Virial ratio                                    1.98367074
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -398.586983298666
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365926
 One electron energy                          -550.86634554
 Two electron energy                           152.27936224
 Virial ratio                                    1.98367074
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -398.586983298591
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365927
 One electron energy                          -550.86634555
 Two electron energy                           152.27936225
 Virial ratio                                    1.98367074
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -398.534163312983
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365926
 One electron energy                          -550.86634554
 Two electron energy                           152.33218223
 Virial ratio                                    1.98354039
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -398.534163312977
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365926
 One electron energy                          -550.86634554
 Two electron energy                           152.33218223
 Virial ratio                                    1.98354039
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -398.534163312956
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365926
 One electron energy                          -550.86634554
 Two electron energy                           152.33218223
 Virial ratio                                    1.98354039
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -398.534163312910
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365927
 One electron energy                          -550.86634555
 Two electron energy                           152.33218223
 Virial ratio                                    1.98354039
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -398.534163312893
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.20365927
 One electron energy                          -550.86634555
 Two electron energy                           152.33218223
 Virial ratio                                    1.98354039
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -398.489572720316
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16004709
 One electron energy                          -550.75952813
 Two electron energy                           152.26995541
 Virial ratio                                    1.98353620
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999998
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999785
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999999756921
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.557003991846
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000018204
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.443045027945
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000102
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999754
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000377131
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.308606009479
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999966617
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.691316811798
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999900
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000461
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.999999865948
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.134389998675
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000015179
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.865638160257
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 3 5 2 4 1   6 3 5 2 41113101514   812 7 9 6 3 5 2 4 1  101311151412 8 7 9 6
                                        3 5 2 4 11013111514  12 8 7 9 6 3 5 2 4 1  101311151412 8 7 9 6   3 5 2 4 1 6 3 5 2 4
                                       1110131514 812 7 9 6   3 5 2 4 1 6 3 5 2 4   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 2 3 1 2   3 1 5 9 7 810 6 4 5   7 9 810 6 4 2 3 1 5   9 710 8 6 420181217
                                       15161413211911 2 3 1   5 9 7 810 6 4182012  1715161413211911 2 3   1 5 9 7 810 6 41820
                                       121715161413211911 2   3 1 5 9 710 8 6 4 2   3 1 5 9 710 8 6 4 2   3 1 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29421     1  1  s    0.95654
    2.1     2.00000    -9.05382     1  2  s    1.04329
    3.1     1.99977    -0.88452     1  2  s    0.32725    1  9  s    0.42835    1 10  s    0.61356
    1.2     2.00000    -6.68250     1  1  py   0.99961
    2.2     2.00000    -6.68250     1  1  px   0.99961
    3.2     2.00000    -6.68250     1  1  pz   0.99961
    4.2     1.33341    -0.28268     1  1  px  -0.25586    1  8  px   0.40636    1  9  px   0.47064
    5.2     1.33341    -0.28268     1  1  pz  -0.25586    1  8  pz   0.40636    1  9  pz   0.47064
    6.2     1.33341    -0.28268     1  1  py  -0.25586    1  8  py   0.40636    1  9  py   0.47064
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          1.00000000      0.00000000     -0.00000000
 2 a2a          0.00000000      0.00001001      1.00000000
 2 aa2         -0.00000000      1.00000000     -0.00001001
 
 Energy:     -398.58698330   -398.58698330   -398.58698330
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202         -0.00030562      0.80266323      0.00004823      0.00000072     -0.14966066      0.56701983
 2 022          0.00017965     -0.27172166     -0.00004454     -0.00000024      0.76995712      0.56701983
 2 a2b          0.00001696     -0.00000063      0.00005097      0.70710678      0.00000000     -0.00000000
 2 b2a         -0.00001696      0.00000063     -0.00005097     -0.70710678     -0.00000000      0.00000000
 2 ba2          0.00008916      0.00003735     -0.70710677      0.00005097     -0.00002774     -0.00000000
 2 ab2         -0.00008916     -0.00003735      0.70710677     -0.00005097      0.00002774      0.00000000
 2 2ba         -0.70710673     -0.00025526     -0.00008918      0.00001697      0.00007490     -0.00000000
 2 2ab          0.70710673      0.00025526      0.00008918     -0.00001697     -0.00007490      0.00000000
 2 220          0.00012596     -0.53094157     -0.00000369     -0.00000048     -0.62029646      0.56701983
 0 222          0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.18832295
 
 Energy:     -398.53416331   -398.53416331   -398.53416331   -398.53416331   -398.53416331   -398.48957272
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.06       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.34      1.68      0.83      3.52
 REAL TIME  *         8.24 SEC
 DISK USED  *        45.40 MB (local),        1.01 GB (total)
 SF USED    *        34.99 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5869833   2.0
    -398.5869833   2.0
    -398.5869833   2.0
    -398.5341633   6.0
    -398.5341633   6.0
    -398.5341633   6.0
    -398.5341633   6.0
    -398.5341633   6.0
    -398.4895727  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 16
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       28 conf       28 CSFs
 N-1 el internal:       82 conf      174 CSFs
 N-2 el internal:       86 conf      462 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.27 sec, npass=  1  Memory used:   1.23 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58698330
     2      -398.58698330
     3      -398.58698330

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     177
 Number of N-1 electron functions:     174

 Number of internal configurations:                   16
 Number of singly external configurations:         18186
 Number of doubly external configurations:       1916193
 Total number of contracted configurations:      1934395
 Total number of uncontracted configurations:    5007208

 Diagonal Coupling coefficients finished.               Storage:    201340 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    787595 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58698330     0.00000000    -0.51363926  0.33D-01  0.58D-01     0.45
    1     2     2     1.00000000     0.00000000  -398.58698330    -0.00000000    -0.51399560  0.34D-01  0.58D-01     0.45
    1     3     3     1.00000000     0.00000000  -398.58698330     0.00000000    -0.51393466  0.34D-01  0.58D-01     0.45
    2     1     1     1.07421798    -0.46246750  -399.04945080    -0.46246750    -0.00858065  0.18D-02  0.10D-02     5.33
    2     2     2     1.07450976    -0.46234228  -399.04932558    -0.46234228    -0.00871413  0.19D-02  0.10D-02     5.33
    2     3     3     1.07444272    -0.46234182  -399.04932512    -0.46234182    -0.00872526  0.19D-02  0.10D-02     5.33
    3     1     1     1.06173356    -0.47045442  -399.05743772    -0.00798691    -0.00010563  0.65D-05  0.17D-04    10.22
    3     2     2     1.06174866    -0.47045437  -399.05743767    -0.00811209    -0.00010583  0.69D-05  0.17D-04    10.22
    3     3     3     1.06175073    -0.47045350  -399.05743680    -0.00811168    -0.00010675  0.69D-05  0.17D-04    10.22
    4     1     1     1.06143780    -0.47056231  -399.05754561    -0.00010789    -0.00000237  0.42D-06  0.38D-06    15.14
    4     2     2     1.06143683    -0.47056228  -399.05754557    -0.00010790    -0.00000240  0.43D-06  0.39D-06    15.14
    4     3     3     1.06143257    -0.47056222  -399.05754552    -0.00010872    -0.00000244  0.44D-06  0.40D-06    15.14
    5     1     1     1.06155487    -0.47056496  -399.05754825    -0.00000265    -0.00000009  0.13D-07  0.18D-07    20.06
    5     2     2     1.06155468    -0.47056495  -399.05754825    -0.00000268    -0.00000009  0.13D-07  0.18D-07    20.06
    5     3     3     1.06155424    -0.47056495  -399.05754825    -0.00000273    -0.00000010  0.13D-07  0.19D-07    20.06
    6     1     1     1.06155706    -0.47056506  -399.05754836    -0.00000011    -0.00000000  0.71D-09  0.75D-09    25.00
    6     2     2     1.06155712    -0.47056506  -399.05754836    -0.00000011    -0.00000000  0.73D-09  0.76D-09    25.00
    6     3     3     1.06155714    -0.47056506  -399.05754836    -0.00000012    -0.00000000  0.73D-09  0.79D-09    25.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.5%   7.2%  17.0%

 Initialization:   1.6%
 Other:           73.6%

 Total CPU:       25.0 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2           0.9705707  -0.0000000  -0.0000000
 22222/2/          -0.0000000   0.9705707   0.0000000
 222222//          -0.0000000  -0.0000000   0.9705707

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.970571   -0.000000
 2          -0.000000   -0.000000    0.970571
 3           0.970571   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970571   -0.000000   -0.000000
 2          -0.000000    0.970571    0.000000
 3          -0.000000    0.000000    0.970571


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97057071 (fixed)   0.97057071 (relaxed)   0.97057071 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000529   -0.00004700   -0.40284822
 Singles      0.01836540   -0.04291892   -0.04857267
 Pairs        0.04319199   -0.00000000   -0.01914418
 Total        1.06156268   -0.04296592   -0.47056506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58698330
 Nuclear energy                         0.00000000
 Kinetic energy                       405.63256966
 One electron energy                 -550.66564251
 Two electron energy                  151.60809415
 Virial quotient                       -0.98379070
 Correlation energy                    -0.47056506
 !MRCI STATE 1.1 Energy              -399.057548363005

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.08651761 (Davidson, fixed reference)
 Cluster corrected energies          -399.08651761 (Davidson, relaxed reference)
 Cluster corrected energies          -399.08651761 (Davidson, rotated reference)

 Cluster corrected energies          -399.08270820 (Pople, fixed reference)
 Cluster corrected energies          -399.08270820 (Pople, relaxed reference)
 Cluster corrected energies          -399.08270820 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97057068 (fixed)   0.97057068 (relaxed)   0.97057068 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000529   -0.00004700   -0.00004662
 Singles      0.01836537   -0.04291887   -0.04857264
 Pairs        0.04319208   -0.42759919   -0.42194581
 Total        1.06156274   -0.47056506   -0.47056506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58698330
 Nuclear energy                         0.00000000
 Kinetic energy                       405.63257250
 One electron energy                 -550.66564713
 Two electron energy                  151.60809877
 Virial quotient                       -0.98379069
 Correlation energy                    -0.47056506
 !MRCI STATE 2.1 Energy              -399.057548362889

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.08651764 (Davidson, fixed reference)
 Cluster corrected energies          -399.08651764 (Davidson, relaxed reference)
 Cluster corrected energies          -399.08651764 (Davidson, rotated reference)

 Cluster corrected energies          -399.08270823 (Pople, fixed reference)
 Cluster corrected energies          -399.08270823 (Pople, relaxed reference)
 Cluster corrected energies          -399.08270823 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97057067 (fixed)   0.97057067 (relaxed)   0.97057067 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000529   -0.00004700   -0.40284828
 Singles      0.01836532   -0.04291882   -0.04857260
 Pairs        0.04319214    0.00000000   -0.01914418
 Total        1.06156275   -0.04296582   -0.47056506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58698330
 Nuclear energy                         0.00000000
 Kinetic energy                       405.63257430
 One electron energy                 -550.66565321
 Two electron energy                  151.60810485
 Virial quotient                       -0.98379069
 Correlation energy                    -0.47056506
 !MRCI STATE 3.1 Energy              -399.057548362759

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.08651764 (Davidson, fixed reference)
 Cluster corrected energies          -399.08651764 (Davidson, relaxed reference)
 Cluster corrected energies          -399.08651764 (Davidson, rotated reference)

 Cluster corrected energies          -399.08270824 (Pople, fixed reference)
 Cluster corrected energies          -399.08270824 (Pople, relaxed reference)
 Cluster corrected energies          -399.08270824 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       47.96       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        31.87     25.50      1.68      0.83      3.52
 REAL TIME  *        36.06 SEC
 DISK USED  *        91.30 MB (local),        1.54 GB (total)
 SF USED    *       443.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -399.08651761  AU                              
 SETTING HLSDIAG(2)     =      -399.08651764  AU                              
 SETTING HLSDIAG(3)     =      -399.08651764  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 16
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       36 conf       36 CSFs
 N-1 el internal:       96 conf      148 CSFs
 N-2 el internal:      153 conf      389 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.53416331
     2      -398.53416331
     3      -398.53416331
     4      -398.53416331
     5      -398.53416331
     6      -398.48957272

 Number of blocks in overlap matrix:   194   Smallest eigenvalue:  0.25D-01
 Number of N-2 electron functions:     266
 Number of N-1 electron functions:     148

 Number of internal configurations:                   24
 Number of singly external configurations:         15482
 Number of doubly external configurations:       2881326
 Total number of contracted configurations:      2896832
 Total number of uncontracted configurations:    4224783

 Diagonal Coupling coefficients finished.               Storage:    220205 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    810166 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.53416331    -0.00000000    -0.51877381  0.35D-01  0.56D-01     0.16
    1     2     2     1.00000000     0.00000000  -398.53416331     0.00000000    -0.51717669  0.34D-01  0.55D-01     0.16
    1     3     3     1.00000000     0.00000000  -398.53416331    -0.00000000    -0.51820255  0.34D-01  0.56D-01     0.16
    1     4     4     1.00000000     0.00000000  -398.53416331     0.00000000    -0.51810051  0.34D-01  0.56D-01     0.16
    1     5     5     1.00000000     0.00000000  -398.53416331    -0.00000000    -0.51695361  0.34D-01  0.55D-01     0.16
    1     6     6     1.00000000     0.00000000  -398.48957272    -0.00000000    -0.49685658  0.56D-02  0.69D-01     0.16
    2     1     1     1.07383958    -0.47236850  -399.00653182    -0.47236850    -0.00882919  0.17D-02  0.11D-02    16.49
    2     2     2     1.07437886    -0.47226293  -399.00642625    -0.47226293    -0.00895518  0.17D-02  0.11D-02    16.49
    2     3     3     1.07444675    -0.47211819  -399.00628150    -0.47211819    -0.00914278  0.18D-02  0.11D-02    16.49
    2     4     4     1.07418847    -0.47206261  -399.00622592    -0.47206261    -0.00919336  0.19D-02  0.11D-02    16.49
    2     5     5     1.07480540    -0.47189581  -399.00605912    -0.47189581    -0.00940977  0.19D-02  0.11D-02    16.49
    2     6     6     1.06462529    -0.46358076  -398.95315348    -0.46358076    -0.00588836  0.11D-02  0.85D-03    16.49
    3     1     1     1.06588533    -0.48027221  -399.01443553    -0.00790371    -0.00018911  0.14D-04  0.35D-04    32.41
    3     2     2     1.06587930    -0.48026359  -399.01442690    -0.00800066    -0.00019710  0.15D-04  0.36D-04    32.41
    3     3     3     1.06576370    -0.48026203  -399.01442535    -0.00814384    -0.00019696  0.16D-04  0.36D-04    32.41
    3     4     4     1.06589896    -0.48026075  -399.01442406    -0.00819814    -0.00020045  0.15D-04  0.37D-04    32.41
    3     5     5     1.06574831    -0.48024964  -399.01441296    -0.00835383    -0.00020772  0.17D-04  0.38D-04    32.41
    3     6     6     1.05969327    -0.46902958  -398.95860230    -0.00544882    -0.00013547  0.93D-05  0.23D-04    32.41
    4     1     1     1.06607599    -0.48046454  -399.01462785    -0.00019232    -0.00000775  0.73D-06  0.16D-05    48.77
    4     2     2     1.06606253    -0.48046399  -399.01462730    -0.00020040    -0.00000821  0.81D-06  0.17D-05    48.77
    4     3     3     1.06606518    -0.48046398  -399.01462729    -0.00020195    -0.00000820  0.80D-06  0.17D-05    48.77
    4     4     4     1.06605872    -0.48046374  -399.01462705    -0.00020299    -0.00000841  0.77D-06  0.17D-05    48.77
    4     5     5     1.06603419    -0.48046272  -399.01462603    -0.00021307    -0.00000920  0.95D-06  0.18D-05    48.77
    4     6     6     1.06001132    -0.46917018  -398.95874290    -0.00014060    -0.00000564  0.97D-06  0.96D-06    48.77
    5     1     1     1.06638584    -0.48047327  -399.01463658    -0.00000873    -0.00000038  0.31D-07  0.78D-07    65.27
    5     2     2     1.06638276    -0.48047324  -399.01463655    -0.00000925    -0.00000041  0.35D-07  0.82D-07    65.27
    5     3     3     1.06638497    -0.48047324  -399.01463655    -0.00000926    -0.00000041  0.35D-07  0.83D-07    65.27
    5     4     4     1.06638906    -0.48047323  -399.01463655    -0.00000950    -0.00000041  0.32D-07  0.84D-07    65.27
    5     5     5     1.06638642    -0.48047318  -399.01463649    -0.00001046    -0.00000046  0.38D-07  0.91D-07    65.27
    5     6     6     1.06026387    -0.46917650  -398.95874922    -0.00000632    -0.00000030  0.45D-07  0.51D-07    65.27
    6     1     1     1.06640914    -0.48047370  -399.01463702    -0.00000043    -0.00000002  0.20D-08  0.37D-08    81.28
    6     2     2     1.06640914    -0.48047370  -399.01463701    -0.00000046    -0.00000002  0.22D-08  0.38D-08    81.28
    6     3     3     1.06640976    -0.48047370  -399.01463701    -0.00000046    -0.00000002  0.21D-08  0.39D-08    81.28
    6     4     4     1.06640873    -0.48047370  -399.01463701    -0.00000047    -0.00000002  0.22D-08  0.39D-08    81.28
    6     5     5     1.06640905    -0.48047370  -399.01463701    -0.00000052    -0.00000002  0.23D-08  0.44D-08    81.28
    6     6     6     1.06027467    -0.46917684  -398.95874956    -0.00000034    -0.00000002  0.13D-08  0.35D-08    81.28


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.3%   6.7%  23.9%

 Initialization:   0.1%
 Other:           69.0%

 Total CPU:       81.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\          -0.0000000   0.0000000   0.0000000   0.9683570   0.0000000  -0.0000000
 22222/2\           0.0000000   0.9683568  -0.0000000   0.0000000  -0.0000000  -0.0000000
 22222/\2           0.9683568  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 22222022          -0.0000000   0.0000000   0.7814183   0.0000000  -0.1205321   0.5510948
 22222220          -0.0000000   0.0000000  -0.2863255   0.0000000   0.7369948   0.5510949
 22222202          -0.0000000   0.0000000  -0.4950934   0.0000000  -0.6164622   0.5510947
 20222222           0.0000000  -0.0000000  -0.0000003  -0.0000000   0.0000006  -0.1789216

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/2\  13.1     0.0000000  -0.0702050  -0.0000000  -0.0000000   0.0000000   0.0000000
 2\2222/\  11.1    -0.0000000   0.0000000   0.0094251   0.0000000   0.0695800   0.0068241
 2\222/\2  15.1    -0.0000000   0.0000000  -0.0649718   0.0000000  -0.0266278   0.0068251
 2\2222/\  14.1     0.0000000   0.0000000  -0.0000000  -0.0614450   0.0000000   0.0000000
 2\222/\2  14.1     0.0601538  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2\222/2\  12.1    -0.0000000   0.0000000  -0.0539287   0.0000000   0.0449670   0.0068256

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.968357    0.000000   -0.000000   -0.000000
 2           0.000000    0.000000   -0.000000    0.968357   -0.000000    0.000000
 3           0.000000   -0.457731    0.000000   -0.000000    0.853344   -0.000000
 4           0.968357    0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.853345   -0.000000   -0.000000   -0.457731    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.971140

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968357    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.968357   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.968357   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.968357    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.968357    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.971140


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96835681 (fixed)   0.96835681 (relaxed)   0.96835681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001224   -0.00010199   -0.40509754
 Singles      0.02143556   -0.04847458   -0.05511551
 Pairs        0.04497439    0.00000000   -0.02026065
 Total        1.06642220   -0.04857657   -0.48047370
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53416331
 Nuclear energy                         0.00000000
 Kinetic energy                       405.60972909
 One electron energy                 -550.59197808
 Two electron energy                  151.57734106
 Virial quotient                       -0.98374030
 Correlation energy                    -0.48047370
 !MRCI STATE 1.1 Energy              -399.014637015199

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04655114 (Davidson, fixed reference)
 Cluster corrected energies          -399.04655114 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04655114 (Davidson, rotated reference)

 Cluster corrected energies          -399.04333738 (Pople, fixed reference)
 Cluster corrected energies          -399.04333738 (Pople, relaxed reference)
 Cluster corrected energies          -399.04333738 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96835681 (fixed)   0.96835681 (relaxed)   0.96835681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001225   -0.00010199   -0.40509774
 Singles      0.02143539   -0.04847437   -0.05511543
 Pairs        0.04497455   -0.00000000   -0.02026053
 Total        1.06642219   -0.04857636   -0.48047370
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53416331
 Nuclear energy                         0.00000000
 Kinetic energy                       405.60973722
 One electron energy                 -550.59199502
 Two electron energy                  151.57735800
 Virial quotient                       -0.98374028
 Correlation energy                    -0.48047370
 !MRCI STATE 2.1 Energy              -399.014637014230

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04655113 (Davidson, fixed reference)
 Cluster corrected energies          -399.04655113 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04655113 (Davidson, rotated reference)

 Cluster corrected energies          -399.04333738 (Pople, fixed reference)
 Cluster corrected energies          -399.04333738 (Pople, relaxed reference)
 Cluster corrected energies          -399.04333738 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85334439 (fixed)   0.96835653 (relaxed)   0.96835653 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001224   -0.00010199   -0.40509738
 Singles      0.02143582   -0.04847455   -0.05511577
 Pairs        0.04497475    0.00000005   -0.02026055
 Total        1.06642281   -0.04857649   -0.48047370
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53416331
 Nuclear energy                         0.00000000
 Kinetic energy                       405.60974429
 One electron energy                 -550.59198043
 Two electron energy                  151.57734342
 Virial quotient                       -0.98374026
 Correlation energy                    -0.48047370
 !MRCI STATE 3.1 Energy              -399.014637013680

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04655143 (Davidson, fixed reference)
 Cluster corrected energies          -399.04655143 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04655143 (Davidson, rotated reference)

 Cluster corrected energies          -399.04333766 (Pople, fixed reference)
 Cluster corrected energies          -399.04333766 (Pople, relaxed reference)
 Cluster corrected energies          -399.04333766 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96835700 (fixed)   0.96835700 (relaxed)   0.96835700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001225   -0.00010199   -0.40509825
 Singles      0.02143487   -0.04847398   -0.05511512
 Pairs        0.04497468   -0.00000000   -0.02026033
 Total        1.06642179   -0.04857597   -0.48047370
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53416331
 Nuclear energy                         0.00000000
 Kinetic energy                       405.60972711
 One electron energy                 -550.59198880
 Two electron energy                  151.57735178
 Virial quotient                       -0.98374031
 Correlation energy                    -0.48047370
 !MRCI STATE 4.1 Energy              -399.014637013640

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04655094 (Davidson, fixed reference)
 Cluster corrected energies          -399.04655094 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04655094 (Davidson, rotated reference)

 Cluster corrected energies          -399.04333719 (Pople, fixed reference)
 Cluster corrected energies          -399.04333719 (Pople, relaxed reference)
 Cluster corrected energies          -399.04333719 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.85334465 (fixed)   0.96835685 (relaxed)   0.96835685 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001225   -0.00010199   -0.40509810
 Singles      0.02143498   -0.04847385   -0.05511522
 Pairs        0.04497489   -0.00000017   -0.02026039
 Total        1.06642211   -0.04857601   -0.48047370
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53416331
 Nuclear energy                         0.00000000
 Kinetic energy                       405.60974080
 One electron energy                 -550.59199314
 Two electron energy                  151.57735613
 Virial quotient                       -0.98374027
 Correlation energy                    -0.48047370
 !MRCI STATE 5.1 Energy              -399.014637011036

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04655109 (Davidson, fixed reference)
 Cluster corrected energies          -399.04655109 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04655109 (Davidson, rotated reference)

 Cluster corrected energies          -399.04333733 (Pople, fixed reference)
 Cluster corrected energies          -399.04333733 (Pople, relaxed reference)
 Cluster corrected energies          -399.04333733 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97114010 (fixed)   0.97114850 (relaxed)   0.97114010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004107   -0.00017159   -0.00018000
 Singles      0.00366799   -0.01394646   -0.01477623
 Pairs        0.05660915   -0.45505878   -0.45422060
 Total        1.06031822   -0.46917684   -0.46917684
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.48957272
 Nuclear energy                         0.00000000
 Kinetic energy                       405.56325342
 One electron energy                 -550.45005576
 Two electron energy                  151.49130620
 Virial quotient                       -0.98371523
 Correlation energy                    -0.46917684
 !MRCI STATE 6.1 Energy              -398.958749559686

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.98704947 (Davidson, fixed reference)
 Cluster corrected energies          -398.98704087 (Davidson, relaxed reference)
 Cluster corrected energies          -398.98704947 (Davidson, rotated reference)

 Cluster corrected energies          -398.98408646 (Pople, fixed reference)
 Cluster corrected energies          -398.98407842 (Pople, relaxed reference)
 Cluster corrected energies          -398.98408646 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      181.37       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       115.57     83.69     25.50      1.68      0.83      3.52
 REAL TIME  *       126.83 SEC
 DISK USED  *       224.71 MB (local),        3.11 GB (total)
 SF USED    *         1.24 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -399.04655114  AU                              
 SETTING HLSDIAG(5)     =      -399.04655113  AU                              
 SETTING HLSDIAG(6)     =      -399.04655143  AU                              
 SETTING HLSDIAG(7)     =      -399.04655094  AU                              
 SETTING HLSDIAG(8)     =      -399.04655109  AU                              
 SETTING HLSDIAG(9)     =      -398.98704947  AU                              


         HLSDIAG
    -399.0865176
    -399.0865176
    -399.0865176
    -399.0465511
    -399.0465511
    -399.0465514
    -399.0465509
    -399.0465511
    -398.9870495
                                                  

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

 Time for Seward_LS:      13.48 sec

       36883326. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40849 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.48 sec, REAL time:     14.37 sec


 SORTLS1 read   167212435. and wrote   167212435. SO integrals in   660 records. CPU time:      1.51 sec, REAL time:      2.29 sec
 SORTLS2 read   167212435. and wrote   839252487. SO integrals in    36 records. CPU time:      0.95 sec, REAL time:      1.33 sec

 FILE SIZES: FILE 1:  2722.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2722.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2596.57       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      181.37       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       131.87     16.28     83.69     25.50      1.68      0.83      3.52
 REAL TIME  *       145.57 SEC
 DISK USED  *       224.99 MB (local),       11.59 GB (total)
 SF USED    *         2.50 GB
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

 Original energies:   -399.057548   -399.057548   -399.057548
 Replaced energies:   -399.086518   -399.086518   -399.086518

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -399.014637   -399.014637   -399.014637   -399.014637   -399.014637   -398.958750
 Replaced energies:   -399.046551   -399.046551   -399.046551   -399.046551   -399.046551   -398.987049



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -399.08651764

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -200.45       0.00    -141.74      -0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    -141.74       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     141.74      -0.00       0.00       0.00       0.00       0.00     142.33

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00     141.74      -0.00       0.00       0.00       0.00      -0.00
                          200.45      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -141.74      -0.00       0.00       0.00       0.00       0.00    -141.74      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00     141.74       0.00       0.00       0.00      -0.00       0.00    -141.74       0.00
                          141.74       0.00       0.00      -0.00       0.00       0.00     141.74      -0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00    -141.74      -0.00       0.00       0.00       0.00      -0.00     141.74      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     201.27

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -141.74      -0.00      -0.00      -0.00     200.45       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     141.74       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     141.74       0.00       0.00       0.00      -0.00      -0.00    -142.33

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -141.74      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -200.45       0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    8771.63
                            0.00    -142.33      -0.00      -0.00      -0.00    -201.27      -0.00     142.33       0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00    -142.33       0.00       0.00       0.00      -0.00       0.00    -142.33       0.00
                          142.32      -0.00       0.00       0.00       0.00      -0.00    -142.32       0.00      -0.00      -0.00

   12   3.1  0.0  0.0     -59.51       0.00      -0.00       0.00       0.00       0.00     -59.51       0.00      -0.00       0.00
                           -0.00      -0.00    -162.42      -0.00     145.53      -0.00       0.00       0.00     162.42      -0.00

   13   4.1  0.0  0.0      -0.00     142.33       0.00       0.00       0.00       0.00      -0.00     142.33       0.00       0.00
                           -0.00      -0.00       0.00    -201.27       0.00      -0.00       0.00       0.00      -0.00      -0.00

   14   5.1  0.0  0.0     153.19      -0.00       0.00       0.00       0.00       0.00     153.19      -0.00       0.00       0.00
                            0.00       0.00      25.05      -0.00     181.21       0.00      -0.00      -0.00     -25.05      -0.00

   15   6.1  0.0  0.0    -231.82      -0.00       0.00       0.00       0.00       0.00    -231.82      -0.00       0.00       0.00
                           -0.00      -0.00     231.81       0.00     327.82      -0.00       0.00       0.00    -231.81      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00     -59.51      -0.00     153.19    -231.82
                         -142.32       0.00       0.00      -0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00     142.33      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00

    3   3.1  1.0  1.0    -142.33      -0.00       0.00       0.00       0.00
                           -0.00     162.42      -0.00     -25.05    -231.81

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     201.27       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00    -145.53      -0.00    -181.21    -327.82

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00     -59.51      -0.00     153.19    -231.82
                          142.32      -0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00     142.33      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0    -142.33      -0.00       0.00       0.00       0.00
                            0.00    -162.42       0.00      25.05     231.81

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8771.64       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8771.57       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8771.68       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8771.65       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21830.74
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -399.08651764 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.008       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -200.451      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     200.451       0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     200.451      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.008       0.000       0.000       0.000      -0.000
                                0.000    -200.451      -0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.002       0.000       0.000       0.000
                              200.451       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000    -200.451
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.008       0.000
                                0.000       0.000    -200.451       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    -200.451       0.000       0.002
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     200.451       0.000       0.000       0.000
                              200.451      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    -201.269       0.000    -201.280

    2    1  |0 0>              -0.000       0.000    -201.285       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     201.274      -0.000

    3    1  |0 0>             -84.167       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     145.529      -0.000      -0.000      -0.000

    4    1  |0 0>              -0.000     201.289       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -201.265       0.000      -0.000      -0.000      -0.000

    5    1  |0 0>             216.644      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     181.206       0.000       0.000       0.000

    6    1  |0 0>            -327.849      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     327.821      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000     -84.167      -0.000     216.644    -327.849
                             -200.451       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     201.289      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000    -201.285      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     201.265       0.000      -0.000

    2    1  |1 0>             200.451       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -145.529      -0.000    -181.206    -327.821

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     201.269       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -201.274       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     201.280       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     229.698      -0.000     -35.432    -327.835

    1    1  |0 0>               0.000    8771.635       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8771.636       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8771.570       0.000       0.000       0.000
                             -229.698      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8771.678       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8771.646       0.000
                               35.432      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21830.741
                              327.835      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -399.08747207    -0.00095442     -209.47      0.00000000        0.00      0.0000
    2  -399.08747207    -0.00095442     -209.47      0.00000000        0.00      0.0000
    3  -399.08747206    -0.00095441     -209.47      0.00000001        0.00      0.0000
    4  -399.08747205    -0.00095441     -209.47      0.00000002        0.00      0.0000
    5  -399.08747205    -0.00095440     -209.47      0.00000002        0.00      0.0000
    6  -399.08560432     0.00091333      200.45      0.00186775      409.92      0.0508
    7  -399.08560430     0.00091334      200.46      0.00186777      409.93      0.0508
    8  -399.08560430     0.00091334      200.46      0.00186777      409.93      0.0508
    9  -399.08475949     0.00175815      385.87      0.00271258      595.34      0.0738
   10  -399.04651032     0.04000732     8780.59      0.04096175     8990.06      1.1146
   11  -399.04651003     0.04000761     8780.66      0.04096204     8990.13      1.1146
   12  -399.04651002     0.04000762     8780.66      0.04096204     8990.13      1.1146
   13  -399.04650998     0.04000766     8780.67      0.04096209     8990.14      1.1146
   14  -399.04650983     0.04000781     8780.70      0.04096224     8990.17      1.1146
   15  -398.98698096     0.09953668    21845.78      0.10049110    22055.25      2.7345

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.10693720  0.00000000  0.00000000 -0.00000000  0.80904727 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.70249976  0.00000000 -0.00000000  0.00000001 -0.69303862
                           0.00000000 -0.00000000  0.00000000 -0.07747021 -0.00000000 -0.00000000  0.00000000 -0.14031436

   3    1  |1 1>+          0.00000000 -0.00000000  0.70675174 -0.00000000 -0.00000000 -0.00000000 -0.70707120 -0.00000001
                          -0.00000000  0.00000000 -0.00328111  0.00000000  0.00000000  0.00000000 -0.00630354 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.07746877  0.00000000 -0.00000000  0.00000000 -0.14031698
                           0.00000000  0.00000000  0.00000000  0.70248669  0.00000000  0.00000000 -0.00000001  0.69305158

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.64718728  0.00000001  0.00000000  0.00000000 -0.49713910  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.19802659  0.00000000 -0.00000000 -0.00000000 -0.00000021 -0.00000000 -0.00000000
                           0.00000001  0.67844306  0.00000000 -0.00000000  0.00000000 -0.70710591  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00328104 -0.00000000 -0.00000000  0.00000000 -0.00630367 -0.00000000
                           0.00000000 -0.00000000  0.70673680 -0.00000000 -0.00000000  0.00000000  0.70708617  0.00000001

   2    1  |1 1>-          0.00000000  0.19802609  0.00000000 -0.00000000 -0.00000000  0.00000021  0.00000000  0.00000000
                           0.00000001  0.67844135  0.00000000 -0.00000000  0.00000000  0.70710765 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.75412835 -0.00000001 -0.00000000  0.00000000 -0.31191618  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.03040896 -0.00000000  0.00000000 -0.00000000 -0.00000099  0.00000000  0.00000000
                           0.00000000  0.00887589  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.03167833 -0.00000000 -0.00000000 -0.00000000 -0.00000062 -0.00000000
                          -0.00000000  0.00000000 -0.00014707  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   3    1  |0 0>          -0.03077666  0.00000000  0.00000000  0.00000000  0.00750398 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.03148724 -0.00000000  0.00000000 -0.00000000  0.00000157
                          -0.00000000  0.00000000 -0.00000000  0.00347235  0.00000000  0.00000000 -0.00000000  0.00000032

   5    1  |0 0>          -0.00750319  0.00000000 -0.00000000  0.00000000 -0.03077694 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000042 -0.00000000 -0.00000000  0.00000000  0.00000071 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.57715194 -0.00929074  0.00000000 -0.00000000  0.02413951 -0.00000000 -0.01528262
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02239757 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040148  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.02240041 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00014556 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00040144  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02239488 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57714716 -0.01625942 -0.00000000 -0.00000000 -0.02011495 -0.00000000 -0.01528134

   3    1  |1 0>          -0.00000000  0.00000000  0.00002020  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.02239894  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00014555  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.02239906 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00002021  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.02240029  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57714485  0.02555046  0.00000000 -0.00000000 -0.00402380 -0.00000000 -0.01528200

   1    1  |0 0>          -0.00000000 -0.00000000  0.99949772  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00090157 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.99947700  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00649455  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000007  0.99949314  0.00000000 -0.00000000 -0.00315554  0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.99933758  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01791350 -0.00000000

   5    1  |0 0>          -0.00000056  0.00315557  0.00000000 -0.00000000  0.99949313  0.00000000 -0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.02646917  0.00000002  0.00000000 -0.00000000  0.00000007 -0.00000000  0.99964963
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -399.08747207     -0.00095442     -209.47      0.00000000        0.00      0.0000
     2   1   -399.08747207     -0.00095442     -209.47      0.00000000        0.00      0.0000
     3   1   -399.08747206     -0.00095441     -209.47      0.00000001        0.00      0.0000
     4   1   -399.08747205     -0.00095441     -209.47      0.00000002        0.00      0.0000
     5   1   -399.08747205     -0.00095440     -209.47      0.00000002        0.00      0.0000
     6   1   -399.08560432      0.00091333      200.45      0.00186775      409.92      0.0508
     7   1   -399.08560430      0.00091334      200.46      0.00186777      409.93      0.0508
     8   1   -399.08560430      0.00091334      200.46      0.00186777      409.93      0.0508
     9   1   -399.08475949      0.00175815      385.87      0.00271258      595.34      0.0738
    10   1   -399.04651032      0.04000732     8780.59      0.04096175     8990.06      1.1146
    11   1   -399.04651003      0.04000761     8780.66      0.04096204     8990.13      1.1146
    12   1   -399.04651002      0.04000762     8780.66      0.04096204     8990.13      1.1146
    13   1   -399.04650998      0.04000766     8780.67      0.04096209     8990.14      1.1146
    14   1   -399.04650983      0.04000781     8780.70      0.04096224     8990.17      1.1146
    15   1   -398.98698096      0.09953668    21845.78      0.10049110    22055.25      2.7345

 E0 =   -399.08651764 is the energy of the lowest zeroth-order state
 E1 =   -399.08747207 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.10693720  0.00000000  0.00000000 -0.00000000  0.80904727 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.70249976  0.00000000 -0.00000000  0.00000001 -0.69303862
                                0.00000000 -0.00000000  0.00000000 -0.07747021 -0.00000000 -0.00000000  0.00000000 -0.14031436

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.70675174 -0.00000000 -0.00000000 -0.00000000 -0.70707120 -0.00000001
                               -0.00000000  0.00000000 -0.00328111  0.00000000  0.00000000  0.00000000 -0.00630354 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.07746877  0.00000000 -0.00000000  0.00000000 -0.14031698
                                0.00000000  0.00000000  0.00000000  0.70248669  0.00000000  0.00000000 -0.00000001  0.69305158

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.64718728  0.00000001  0.00000000  0.00000000 -0.49713910  0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.19802659  0.00000000 -0.00000000 -0.00000000 -0.00000021 -0.00000000 -0.00000000
                                0.00000001  0.67844306  0.00000000 -0.00000000  0.00000000 -0.70710591  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00328104 -0.00000000 -0.00000000  0.00000000 -0.00630367 -0.00000000
                                0.00000000 -0.00000000  0.70673680 -0.00000000 -0.00000000  0.00000000  0.70708617  0.00000001

  8  1     2    1  |1 1>-       0.00000000  0.19802609  0.00000000 -0.00000000 -0.00000000  0.00000021  0.00000000  0.00000000
                                0.00000001  0.67844135  0.00000000 -0.00000000  0.00000000  0.70710765 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.75412835 -0.00000001 -0.00000000  0.00000000 -0.31191618  0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.03040896 -0.00000000  0.00000000 -0.00000000 -0.00000099  0.00000000  0.00000000
                                0.00000000  0.00887589  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.03167833 -0.00000000 -0.00000000 -0.00000000 -0.00000062 -0.00000000
                               -0.00000000  0.00000000 -0.00014707  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

 12  1     3    1  |0 0>       -0.03077666  0.00000000  0.00000000  0.00000000  0.00750398 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.03148724 -0.00000000  0.00000000 -0.00000000  0.00000157
                               -0.00000000  0.00000000 -0.00000000  0.00347235  0.00000000  0.00000000 -0.00000000  0.00000032

 14  1     5    1  |0 0>       -0.00750319  0.00000000 -0.00000000  0.00000000 -0.03077694 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000042 -0.00000000 -0.00000000  0.00000000  0.00000071 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.57715194 -0.00929074  0.00000000 -0.00000000  0.02413951 -0.00000000 -0.01528262
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02239757 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040148  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.02240041 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00014556 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00040144  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02239488 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57714716 -0.01625942 -0.00000000 -0.00000000 -0.02011495 -0.00000000 -0.01528134

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00002020  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.02239894  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00014555  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.02239906 -0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00002021  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.02240029  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57714485  0.02555046  0.00000000 -0.00000000 -0.00402380 -0.00000000 -0.01528200

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.99949772  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00090157 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.99947700  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00649455  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000007  0.99949314  0.00000000 -0.00000000 -0.00315554  0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.99933758  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01791350 -0.00000000

 14  1     5    1  |0 0>       -0.00000056  0.00315557  0.00000000 -0.00000000  0.99949313  0.00000000 -0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.02646917  0.00000002  0.00000000 -0.00000000  0.00000007 -0.00000000  0.99964963
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         1.14%    0.00%    0.00%    0.00%   65.46%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>         41.89%    0.00%    0.00%    0.00%   24.71%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        56.87%    0.00%    0.00%    0.00%    9.73%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        33.31%    0.01%    0.00%    0.00%    0.06%    0.00%    0.02%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
  5  1     2    1  |1 0>         33.31%    0.03%    0.00%    0.00%    0.04%    0.00%    0.02%
  6  1     3    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.31%    0.07%    0.00%    0.00%    0.00%    0.00%    0.02%
 10  1     1    1  |0 0>          0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.90%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.90%    0.00%    0.00%
 15  1     6    1  |0 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2596.57       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      181.37       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       161.56     29.68     16.28     83.69     25.50      1.68      0.83      3.52
 REAL TIME  *       183.03 SEC
 DISK USED  *       224.99 MB (local),       11.59 GB (total)
 SF USED    *         3.03 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -398.986980964270

              CI              CI           MULTI         RHF-SCF
   -398.95874956   -399.05754836   -398.48957272   -398.58936941
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
