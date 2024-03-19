
 Working directory              : /wrk/irikura/molpro.Me9jOwbQuI/
 Global scratch directory       : /wrk/irikura/molpro.Me9jOwbQuI/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Me9jOwbQuI/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,In SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={In};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   In SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 11-Mar-24          TIME: 13:24:14  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry In   ECP ECP28MDF                 selected for group  1
 Library entry IN     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry IN     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry IN     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry IN     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry IN     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry IN     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry IN     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  IN     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.111E-04 0.713E-04 0.236E-03 0.236E-03 0.236E-03 0.236E-03 0.236E-03 0.514E-03
         2 0.141E-05 0.141E-05 0.141E-05 0.977E-03 0.977E-03 0.977E-03 0.569E-02 0.569E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     540.541 MB (compressed) written to integral file ( 13.2%)

     Node minimum: 38.535 MB, node maximum: 52.953 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291293. INTEGRALS IN     13 RECORDS. CPU TIME:     2.10 SEC, REAL TIME:     2.19 SEC
 SORT2 READ    53579665. AND WROTE   312900871. INTEGRALS IN   2424 RECORDS. CPU TIME:     0.64 SEC, REAL TIME:     0.70 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.22      8.02
 REAL TIME  *         9.45 SEC
 DISK USED  *        30.88 MB (local),        1.42 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -137.15302951    -137.15302951     0.00D+00     0.10D+00     0     0       0.13      0.25    start
   2     -172.97575624     -35.82272673     0.14D+00     0.10D+00     1     0       0.13      0.38    diag
   3     -186.62636021     -13.65060397     0.18D+00     0.50D-01     2     0       0.13      0.51    diag
   4     -188.67618317      -2.04982296     0.63D-01     0.37D-01     3     0       0.13      0.64    diag
   5     -189.01367948      -0.33749631     0.20D-01     0.14D-01     4     0       0.13      0.77    diag
   6     -189.01821583      -0.00453634     0.23D-02     0.33D-02     5     0       0.13      0.90    diag
   7     -189.01888459      -0.00066876     0.10D-02     0.74D-03     6     0       0.14      1.04    diag
   8     -189.01889018      -0.00000559     0.57D-04     0.52D-04     7     0       0.13      1.17    fixocc
   9     -189.01889112      -0.00000094     0.43D-04     0.13D-04     8     0       0.12      1.29    diag
  10     -189.01889116      -0.00000004     0.76D-05     0.54D-05     9     0       0.14      1.43    diag/orth
  11     -189.01889116      -0.00000000     0.15D-06     0.67D-06     9     0       0.12      1.55    diag
  12     -189.01889116      -0.00000000     0.12D-07     0.59D-07     0     0       0.13      1.68    diag

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -189.018891157818
  RHF One-electron energy            -329.270471632131
  RHF Two-electron energy             140.251580474313
  RHF Kinetic energy                   73.251991538359
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.580392521599

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.64574     1  1  s    1.00005
    2.1     2.00000    -1.28183     1  1  d1+ -0.57028    1  1  d2+  0.66178    1  1  d1- -0.41754
    3.1     2.00000    -1.28183     1  1  d0  -0.25117    1  1  d2-  0.39040    1  1  d1+ -0.43622    1  1  d1-  0.74160
    4.1     2.00000    -1.28183     1  1  d2- -0.30118    1  1  d1+  0.61151    1  1  d2+  0.64115    1  1  d1-  0.35098
    5.1     2.00000    -1.28183     1  1  d0  -0.40940    1  1  d2-  0.70714    1  1  d1+  0.33195    1  1  d2+  0.26474
                                    1  1  d1- -0.39227
    6.1     2.00000    -1.28183     1  1  d0   0.87442    1  1  d2-  0.44489
    7.1     2.00000    -0.63505     1  1  s   -0.33227    1  5  s    0.61670    1  6  s    0.52317
    1.2     2.00000    -3.89790     1  1  px  -0.35914    1  1  py   0.70162    1  1  pz   0.61470
    2.2     2.00000    -3.89790     1  1  py  -0.59363    1  1  pz   0.78349
    3.2     2.00000    -3.89790     1  1  px   0.91502    1  1  py   0.39298


 HOMO      7.1    -0.635051 =     -17.2806eV
 LUMO      4.2    -0.182925 =      -4.9776eV
 LUMO-HOMO         0.452126 =      12.3030eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.96       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         9.91      1.69      8.02
 REAL TIME  *        11.23 SEC
 DISK USED  *        33.98 MB (local),        1.46 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     248 (  121  127)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.662D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.635D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.688D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.664D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.446D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 6 4 3 2 1 1 3 5   4 6 2 1 3 5 4 6 213  15 9 7141211 811 1 3   5 4 6 21415 9 71012
                                       13 811 3 5 4 6 2 113  15 9 7141210 8 7 5 6   4 3 2 114151013 812   911 8 5 6 4 2 32318
                                       19201726162522212824  27 111 7 91213101515  14 2 6 5 3 411 7 9 8  1213101410 1 2 3 5 6
                                        4 3 2 5 6 4 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.581D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.344D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.577D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.627D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.416D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.559D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.652D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 1 3 2 1   3 2 9 7 6 410 8 5 1   3 2 9 7 6 410 8 5 1   2 3 7 9 4 810 5 620
                                       18211115191416131219   810 7 9 4 6 5161418  2015172111131217 1 2   310 8 7 9 4 6 5 510
                                        7 6 4 9 81912161318  141120211517 1 3 2 6   5 4 9 8 710 3 2 119  21112018121316171415
                                        6 5 4 9 7 810 2 3 1   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2141  ( 30 closed/active, 1107 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2861
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -189.15853922    -189.16448409   -0.00594487    0.04546524 0.00016308 0.00000000  0.82E+00      2.02
   2    8    7    0   -189.16440717    -189.16441032   -0.00000315    0.00157294 0.00000017 0.00000000  0.24E-01      4.23
   3    5    5    0   -189.16441033    -189.16441033   -0.00000000    0.00000061 0.00000000 0.00000000  0.31E-04      6.00

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.14E-08)
                       Final energy:   -189.16441033
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -189.223464697095
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.48665368
 One electron energy                          -335.00441055
 Two electron energy                           145.78094586
 Virial ratio                                    3.57493647
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -189.223464697053
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.48665368
 One electron energy                          -335.00441056
 Two electron energy                           145.78094586
 Virial ratio                                    3.57493647
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -189.223464697013
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.48665368
 One electron energy                          -335.00441056
 Two electron energy                           145.78094586
 Virial ratio                                    3.57493647
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -189.105355953654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.27507675
 One electron energy                          -331.47081792
 Two electron energy                           142.36546196
 Virial ratio                                    3.58075958
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -189.105355953654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.27507675
 One electron energy                          -331.47081792
 Two electron energy                           142.36546196
 Virial ratio                                    3.58075958
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -189.105355953650
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.27507675
 One electron energy                          -331.47081792
 Two electron energy                           142.36546196
 Virial ratio                                    3.58075958
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999997
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000049
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999494
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999097
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999897323
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000047670
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999738
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999951
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000687
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999760592
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000000842374
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999954905
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000264
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999819
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000240311
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999260303
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999997425
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 1 3   5 6 2 4 3 5 6 2 4 1  1310141511 812 7 9 3   5 6 2 41310141511 8
                                       12 7 9 3 5 6 2 4 113  10141511 812 7 9 5 3   6 2 4 11310141511 8  12 7 9 3 5 6 4 22216
                                       18202419272326172125  28 11310151411 812 7   9 3 5 6 4 210131514  1112 8 7 9 1 5 3 6 2
                                        4 3 5 2 6 4 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 3 7 9 810 5 6 4 2   1 3 7 9 810 5 6 4 2   1 3 7 9 810 5 6 420
                                       18151716141221131911   7 9 810 5 6 4182015  1716141221131911 2 1   3 7 9 5 810 6 4 7 9
                                        5 810 6 42018151716  141221131911 2 1 3 9   7 810 5 6 4 2 1 320  18151714161221131911
                                        9 7 5 810 6 4 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.45027     1  1  s    0.99970
    2.1     2.00000    -1.08681     1  1  d2-  1.00058
    3.1     2.00000    -1.08681     1  1  d2+  1.00058
    4.1     2.00000    -1.08681     1  1  d1-  1.00058
    5.1     2.00000    -1.08681     1  1  d0   1.00058
    6.1     2.00000    -1.08681     1  1  d1+  1.00058
    7.1     1.92053    -0.44745     1  1  s   -0.31870    1  5  s    0.53691    1  6  s    0.54393
    8.1     0.00512     0.23103     1  1  s    0.34827    1  3  s    0.35883    1  4  s   -0.50689    1  5  s   -1.61287
                                    1  6  s    0.89252    1  7  s    0.80575
    1.2     2.00000    -3.70308     1  1  py   0.99979
    2.2     2.00000    -3.70308     1  1  px   0.99979
    3.2     2.00000    -3.70308     1  1  pz   0.99979
    4.2     0.19158    -0.02279     1  5  pz   0.53475    1  6  pz   0.40939
    5.2     0.19158    -0.02279     1  5  px   0.53475    1  6  px   0.40939
    6.2     0.19158    -0.02279     1  5  py  -0.53475    1  6  py  -0.40938
    7.2     0.16654     0.01452     1  7  pz   0.33087    1 12  pz   0.85107
    8.2     0.16654     0.01452     1  7  px   0.33087    1 12  px   0.85107
    9.2     0.16654     0.01452     1  7  py   0.33087    1 12  py   0.85107
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000     -0.00001540      0.00000663      0.95120785      0.00011709      0.23930560      0.00007669
 20 0a0000      0.00000151      0.95120762     -0.00000663      0.00000719      0.00007668     -0.23930653
 20 a00000      0.95120746     -0.00000151      0.00001540     -0.23930717      0.00011709     -0.00000715
 20 00000a      0.00000387     -0.00000167     -0.23926645      0.00046358      0.94744139      0.00030362
 20 0000a0      0.00000038      0.23926736     -0.00000167     -0.00002847     -0.00030360      0.94744127
 20 000a00      0.23926802     -0.00000038      0.00000387      0.94744104     -0.00046359      0.00002832
 00 02a000      0.00000203     -0.00000088     -0.12548083     -0.00001646     -0.03364007     -0.00001078
 00 20a000      0.00000203     -0.00000088     -0.12548083     -0.00001646     -0.03364007     -0.00001078
 00 0a2000     -0.00000020     -0.12548080      0.00000088     -0.00000101     -0.00001078      0.03364018
 00 2a0000     -0.00000020     -0.12548080      0.00000088     -0.00000101     -0.00001078      0.03364018
 00 a02000     -0.12548078      0.00000020     -0.00000203      0.03364026     -0.00001646      0.00000101
 00 a20000     -0.12548078      0.00000020     -0.00000203      0.03364025     -0.00001646      0.00000101
 00 20000a     -0.00000046      0.00000020      0.02861525     -0.00005546     -0.11333935     -0.00003632
 00 02000a     -0.00000046      0.00000020      0.02861525     -0.00005546     -0.11333934     -0.00003632
 00 2000a0     -0.00000005     -0.02861537      0.00000020      0.00000341      0.00003632     -0.11333933
 00 0020a0     -0.00000005     -0.02861536      0.00000020      0.00000341      0.00003632     -0.11333932
 00 020a00     -0.02861545      0.00000005     -0.00000046     -0.11333930      0.00005546     -0.00000339
 00 002a00     -0.02861545      0.00000005     -0.00000046     -0.11333929      0.00005546     -0.00000339
 00 0200a0     -0.00000004     -0.02797429      0.00000020      0.00000336      0.00003578     -0.11164262
 00 200a00     -0.02797429      0.00000004     -0.00000045     -0.11164261      0.00005463     -0.00000334
 00 00200a     -0.00000045      0.00000020      0.02797428     -0.00005463     -0.11164261     -0.00003578
 
 Energy:     -189.22346470   -189.22346470   -189.22346470   -189.10535595   -189.10535595   -189.10535595
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.42       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.27      6.35      1.69      8.02
 REAL TIME  *        18.78 SEC
 DISK USED  *        96.33 MB (local),        2.19 GB (total)
 SF USED    *       169.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -189.2234647   2.0
    -189.2234647   2.0
    -189.2234647   2.0
    -189.1053560   2.0
    -189.1053560   2.0
    -189.1053560   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -189.22346470
     2      -189.22346470
     3      -189.22346470
     4      -189.10535595
     5      -189.10535595
     6      -189.10535595

 Number of blocks in overlap matrix:   563   Smallest eigenvalue:  0.32D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       9607051
 Number of doubly external configurations:      20456146
 Total number of contracted configurations:     30116469
 Total number of uncontracted configurations:  378484749

 Diagonal Coupling coefficients finished.               Storage:  22137764 words, CPU-Time:     26.25 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3646625 words, CPU-time:      3.55 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -189.22346470    -0.00000000    -0.98630861  0.46D-01  0.11D+00    43.12
    1     2     2     1.00000000     0.00000000  -189.22346470    -0.00000000    -0.98619549  0.46D-01  0.11D+00    43.12
    1     3     3     1.00000000     0.00000000  -189.22346470     0.00000000    -0.98628025  0.46D-01  0.11D+00    43.12
    1     4     4     1.00000000     0.00000000  -189.10535595    -0.00000000    -0.95974447  0.31D-01  0.10D+00    43.12
    1     5     5     1.00000000     0.00000000  -189.10535595    -0.00000000    -0.95970969  0.31D-01  0.10D+00    43.12
    1     6     6     1.00000000     0.00000000  -189.10535595    -0.00000000    -0.95969727  0.31D-01  0.10D+00    43.12
    2     1     1     1.10182157    -0.79773420  -190.02119889    -0.79773420    -0.02418175  0.40D-02  0.16D-02  1074.25
    2     2     2     1.10181706    -0.79772072  -190.02118542    -0.79772072    -0.02420082  0.40D-02  0.16D-02  1074.25
    2     3     3     1.10184828    -0.79771048  -190.02117517    -0.79771048    -0.02420463  0.40D-02  0.16D-02  1074.25
    2     4     4     1.09057972    -0.78991487  -189.89527082    -0.78991487    -0.02019056  0.23D-02  0.14D-02  1074.25
    2     5     5     1.09058394    -0.78991187  -189.89526783    -0.78991187    -0.02019336  0.23D-02  0.14D-02  1074.25
    2     6     6     1.09058403    -0.78990315  -189.89525910    -0.78990315    -0.02020515  0.23D-02  0.14D-02  1074.25
    3     1     1     1.08721665    -0.82066540  -190.04413010    -0.02293121    -0.00037935  0.59D-04  0.36D-04  2104.02
    3     2     2     1.08721516    -0.82066452  -190.04412922    -0.02294380    -0.00038023  0.59D-04  0.37D-04  2104.02
    3     3     3     1.08721584    -0.82066405  -190.04412874    -0.02295357    -0.00038080  0.59D-04  0.37D-04  2104.02
    3     4     4     1.08118743    -0.80895734  -189.91431330    -0.01904248    -0.00023979  0.26D-04  0.19D-04  2104.02
    3     5     5     1.08118778    -0.80895729  -189.91431325    -0.01904542    -0.00023984  0.26D-04  0.19D-04  2104.02
    3     6     6     1.08118696    -0.80895710  -189.91431306    -0.01905395    -0.00024011  0.26D-04  0.19D-04  2104.02
    4     1     1     1.08680247    -0.82105050  -190.04451520    -0.00038510    -0.00001521  0.37D-05  0.13D-05  3129.60
    4     2     2     1.08680298    -0.82105050  -190.04451520    -0.00038598    -0.00001522  0.37D-05  0.13D-05  3129.60
    4     3     3     1.08680306    -0.82105049  -190.04451519    -0.00038645    -0.00001521  0.37D-05  0.13D-05  3129.60
    4     4     4     1.08131440    -0.80919351  -189.91454946    -0.00023616    -0.00000801  0.17D-05  0.55D-06  3129.60
    4     5     5     1.08131448    -0.80919350  -189.91454946    -0.00023621    -0.00000801  0.17D-05  0.55D-06  3129.60
    4     6     6     1.08131472    -0.80919349  -189.91454945    -0.00023639    -0.00000802  0.17D-05  0.55D-06  3129.60
    5     1     1     1.08674240    -0.82106674  -190.04453144    -0.00001624    -0.00000050  0.67D-07  0.51D-07  4151.47
    5     2     2     1.08674248    -0.82106674  -190.04453144    -0.00001624    -0.00000051  0.67D-07  0.51D-07  4151.47
    5     3     3     1.08674239    -0.82106674  -190.04453144    -0.00001625    -0.00000051  0.67D-07  0.51D-07  4151.47
    5     4     4     1.08133456    -0.80920184  -189.91455779    -0.00000833    -0.00000026  0.38D-07  0.24D-07  4151.47
    5     5     5     1.08133463    -0.80920184  -189.91455779    -0.00000834    -0.00000026  0.38D-07  0.24D-07  4151.47
    5     6     6     1.08133456    -0.80920184  -189.91455779    -0.00000835    -0.00000026  0.38D-07  0.24D-07  4151.47
    6     1     1     1.08673270    -0.82106727  -190.04453196    -0.00000053    -0.00000002  0.31D-08  0.18D-08  5175.34
    6     2     2     1.08673278    -0.82106727  -190.04453196    -0.00000053    -0.00000002  0.31D-08  0.18D-08  5175.34
    6     3     3     1.08673272    -0.82106727  -190.04453196    -0.00000053    -0.00000002  0.31D-08  0.18D-08  5175.34
    6     4     4     1.08133716    -0.80920211  -189.91455807    -0.00000027    -0.00000001  0.17D-08  0.94D-09  5175.34
    6     5     5     1.08133715    -0.80920211  -189.91455807    -0.00000027    -0.00000001  0.17D-08  0.94D-09  5175.34
    6     6     6     1.08133717    -0.80920211  -189.91455807    -0.00000027    -0.00000001  0.17D-08  0.94D-09  5175.34


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%  56.6%
 P   0.2%  18.1%  14.3%

 Initialization:   0.6%
 Other:            9.1%

 Total CPU:     5175.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000           0.9234885   0.0001915  -0.0000032  -0.0008086  -0.1946466  -0.0225376
 2222222022200/000           0.0000018   0.0069952   0.9234624   0.1958377  -0.0000553  -0.0065487
 222222202220/0000          -0.0001916   0.9234621  -0.0069952  -0.0064989   0.0225520  -0.1945375
 2222222022200000/          -0.0000004  -0.0014854  -0.1960901   0.9198328  -0.0002597  -0.0307587
 22222220222000/00           0.1960973   0.0000407  -0.0000007   0.0037979   0.9142307   0.1058565
 222222202220000/0          -0.0000407   0.1960910  -0.0014854   0.0305244  -0.1059243   0.9137212
 22222200222/20000          -0.1106402  -0.0000229   0.0000004   0.0001050   0.0252817   0.0029273
 22222200222/02000          -0.1106401  -0.0000229   0.0000004   0.0001050   0.0252816   0.0029273
 2222220022202/000          -0.0000002  -0.0008381  -0.1106370  -0.0254365   0.0000072   0.0008506
 2222220022220/000          -0.0000002  -0.0008381  -0.1106369  -0.0254365   0.0000072   0.0008506
 222222002222/0000           0.0000230  -0.1106368   0.0008381   0.0008441  -0.0029292   0.0252675
 222222002220/2000           0.0000230  -0.1106368   0.0008381   0.0008441  -0.0029292   0.0252675
 2222220022220000/           0.0000000   0.0001605   0.0211859  -0.0995456   0.0000281   0.0033287
 2222220022202000/           0.0000000   0.0001605   0.0211859  -0.0995455   0.0000281   0.0033287
 22222200222020/00          -0.0211867  -0.0000044   0.0000001  -0.0004110  -0.0989393  -0.0114559
 22222200222002/00          -0.0211867  -0.0000044   0.0000001  -0.0004110  -0.0989393  -0.0114559
 222222002222000/0           0.0000044  -0.0211860   0.0001605  -0.0033034   0.0114633  -0.0988842
 222222002220020/0           0.0000044  -0.0211860   0.0001605  -0.0033034   0.0114633  -0.0988841
 2222220022200200/           0.0000000   0.0001551   0.0204786  -0.0978973   0.0000276   0.0032736
 22222200222200/00          -0.0204793  -0.0000042   0.0000001  -0.0004042  -0.0973012  -0.0112663
 222222002220200/0           0.0000042  -0.0204786   0.0001551  -0.0032487   0.0112735  -0.0972469
 222222/\22200000/           0.0000000   0.0001415   0.0186750  -0.0766417   0.0000216   0.0025629
 222222/\222000/00          -0.0186755  -0.0000039   0.0000001  -0.0003164  -0.0761750  -0.0088201
 222222/\2220000/0           0.0000039  -0.0186750   0.0001415  -0.0025433   0.0088258  -0.0761325

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957550   -0.000199    0.000002   -0.035057    0.000000    0.000007
 2           0.000199    0.957522    0.007253   -0.000007    0.000266   -0.035056
 3          -0.000003   -0.007253    0.957522    0.000000    0.035056    0.000266
 4           0.000151    0.001210   -0.036453    0.003960    0.959117    0.031828
 5           0.036231   -0.004198    0.000010    0.953276   -0.000271   -0.110448
 6           0.004195    0.036210    0.001219    0.110377   -0.032072    0.952744

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958191    0.000000    0.000000    0.000003    0.000664    0.000077
 2           0.000000    0.958191    0.000000    0.000017   -0.000077    0.000664
 3           0.000000    0.000000    0.958191   -0.000668    0.000001    0.000017
 4           0.000003    0.000017   -0.000668    0.960346    0.000000   -0.000000
 5           0.000664   -0.000077    0.000001    0.000000    0.960346    0.000000
 6           0.000077    0.000664    0.000017   -0.000000    0.000000    0.960346


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95754967 (fixed)   0.95865289 (relaxed)   0.95819099 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00224316   -0.00297118   -0.70146901
 Singles      0.01528046   -0.05888314   -0.06558778
 Pairs        0.07164680   -0.00000661   -0.05401047
 Total        1.08917042   -0.06186094   -0.82106727
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.22330052
 Nuclear energy                         0.00000000
 Kinetic energy                        74.13663310
 One electron energy                 -334.53385017
 Two electron energy                  144.48931820
 Virial quotient                       -2.56343624
 Correlation energy                    -0.82123145
 !MRCI STATE 1.2 Energy              -190.044531964935

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -190.11776152 (Davidson, fixed reference)
 Cluster corrected energies          -190.11689977 (Davidson, relaxed reference)
 Cluster corrected energies          -190.11776152 (Davidson, rotated reference)

 Cluster corrected energies          -190.11544246 (Pople, fixed reference)
 Cluster corrected energies          -190.11454618 (Pople, relaxed reference)
 Cluster corrected energies          -190.11544246 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95752216 (fixed)   0.95865286 (relaxed)   0.95819095 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00224317   -0.00297118   -0.73075005
 Singles      0.01528047   -0.05888314   -0.06558777
 Pairs        0.07164687    0.03188548   -0.02472944
 Total        1.08917050   -0.02996884   -0.82106727
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.22330052
 Nuclear energy                         0.00000000
 Kinetic energy                        74.13663538
 One electron energy                 -334.53385217
 Two electron energy                  144.48932020
 Virial quotient                       -2.56343616
 Correlation energy                    -0.82123145
 !MRCI STATE 2.2 Energy              -190.044531964913

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -190.11776158 (Davidson, fixed reference)
 Cluster corrected energies          -190.11689983 (Davidson, relaxed reference)
 Cluster corrected energies          -190.11776158 (Davidson, rotated reference)

 Cluster corrected energies          -190.11544253 (Pople, fixed reference)
 Cluster corrected energies          -190.11454624 (Pople, relaxed reference)
 Cluster corrected energies          -190.11544253 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95752221 (fixed)   0.95865289 (relaxed)   0.95819098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00224316   -0.00297118   -0.70125331
 Singles      0.01528046   -0.05888315   -0.06558778
 Pairs        0.07164681   -0.00024153   -0.05422618
 Total        1.08917044   -0.06209586   -0.82106727
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.22330052
 Nuclear energy                         0.00000000
 Kinetic energy                        74.13663267
 One electron energy                 -334.53384940
 Two electron energy                  144.48931743
 Virial quotient                       -2.56343625
 Correlation energy                    -0.82123145
 !MRCI STATE 3.2 Energy              -190.044531963854

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -190.11776153 (Davidson, fixed reference)
 Cluster corrected energies          -190.11689978 (Davidson, relaxed reference)
 Cluster corrected energies          -190.11776153 (Davidson, rotated reference)

 Cluster corrected energies          -190.11544247 (Pople, fixed reference)
 Cluster corrected energies          -190.11454618 (Pople, relaxed reference)
 Cluster corrected energies          -190.11544247 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95911679 (fixed)   0.96086253 (relaxed)   0.96034554 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00272957   -0.00374594   -0.67356777
 Singles      0.01248695   -0.05623833   -0.06119011
 Pairs        0.06907223   -0.02483060   -0.07444423
 Total        1.08428875   -0.08481487   -0.80920211
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.10552013
 Nuclear energy                         0.00000000
 Kinetic energy                        73.99383902
 One electron energy                 -331.00183859
 Two electron energy                  141.08728053
 Virial quotient                       -2.56662664
 Correlation energy                    -0.80903793
 !MRCI STATE 4.2 Energy              -189.914558066871

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.98275086 (Davidson, fixed reference)
 Cluster corrected energies          -189.98180714 (Davidson, relaxed reference)
 Cluster corrected energies          -189.98275086 (Davidson, rotated reference)

 Cluster corrected energies          -189.98032099 (Pople, fixed reference)
 Cluster corrected energies          -189.97934746 (Pople, relaxed reference)
 Cluster corrected energies          -189.98032099 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95327586 (fixed)   0.96086253 (relaxed)   0.96034555 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00272957   -0.00374594   -0.77593588
 Singles      0.01248694   -0.05623833   -0.06119011
 Pairs        0.06907223    0.08616598    0.02792387
 Total        1.08428873    0.02618171   -0.80920211
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.10552013
 Nuclear energy                         0.00000000
 Kinetic energy                        73.99383976
 One electron energy                 -331.00183888
 Two electron energy                  141.08728081
 Virial quotient                       -2.56662661
 Correlation energy                    -0.80903793
 !MRCI STATE 5.2 Energy              -189.914558066655

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.98275085 (Davidson, fixed reference)
 Cluster corrected energies          -189.98180713 (Davidson, relaxed reference)
 Cluster corrected energies          -189.98275085 (Davidson, rotated reference)

 Cluster corrected energies          -189.98032097 (Pople, fixed reference)
 Cluster corrected energies          -189.97934745 (Pople, relaxed reference)
 Cluster corrected energies          -189.98032097 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95274441 (fixed)   0.96086253 (relaxed)   0.96034554 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00272957   -0.00374594   -0.01096586
 Singles      0.01248695   -0.05623833   -0.06119011
 Pairs        0.06907224   -0.74328240   -0.73704614
 Total        1.08428875   -0.80326666   -0.80920211
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.10552013
 Nuclear energy                         0.00000000
 Kinetic energy                        73.99383980
 One electron energy                 -331.00183934
 Two electron energy                  141.08728128
 Virial quotient                       -2.56662661
 Correlation energy                    -0.80903793
 !MRCI STATE 6.2 Energy              -189.914558066574

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.98275087 (Davidson, fixed reference)
 Cluster corrected energies          -189.98180714 (Davidson, relaxed reference)
 Cluster corrected energies          -189.98275087 (Davidson, rotated reference)

 Cluster corrected energies          -189.98032099 (Pople, fixed reference)
 Cluster corrected energies          -189.97934746 (Pople, relaxed reference)
 Cluster corrected energies          -189.98032099 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1391.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5414.24   5397.96      6.35      1.69      8.02
 REAL TIME  *      5519.05 SEC
 DISK USED  *         1.45 GB (local),       18.46 GB (total)
 SF USED    *        13.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -190.11776152  AU                              
 SETTING HLSDIAG(2)     =      -190.11776158  AU                              
 SETTING HLSDIAG(3)     =      -190.11776153  AU                              
 SETTING HLSDIAG(4)     =      -189.98275086  AU                              
 SETTING HLSDIAG(5)     =      -189.98275085  AU                              
 SETTING HLSDIAG(6)     =      -189.98275087  AU                              


         HLSDIAG
    -190.1177615
    -190.1177616
    -190.1177615
    -189.9827509
    -189.9827509
    -189.9827509
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -190.044532   -190.044532   -190.044532   -189.914558   -189.914558   -189.914558
 Replaced energies:   -190.117762   -190.117762   -190.117762   -189.982751   -189.982751   -189.982751



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -190.11776158

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00    -787.29       5.96       9.77
                            0.00      -0.00      -0.16      -0.06      -0.00       0.00      -0.00      -5.96    -787.29    -294.46

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     787.29       0.00      -0.00      -1.21
                            0.00      -0.00     787.32     294.52      -0.34      -7.63       5.96      -0.00      -0.16      -0.07

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00      -5.96       0.00       0.00       0.01
                            0.16    -787.32      -0.00       7.54     -33.91     292.57     787.29       0.16       0.00      -1.21

    4   4.2  0.5  0.5       0.00       0.00       0.00   29631.43       0.00       0.00      -9.77       1.21      -0.01      -0.00
                            0.06    -294.52      -7.54       0.00     -12.65     109.25     294.46       0.07       1.21      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   29631.43       0.00      33.85     292.66      -2.22      -3.68
                            0.00       0.34      33.91      12.65       0.00      -0.45      -0.08       2.22     292.66     109.19

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   29631.43    -292.51      33.83      -0.26       0.03
                           -0.00       7.63    -292.57    -109.25       0.45      -0.00      -9.85       0.25      33.89      12.66

    7   1.2  0.5 -0.5       0.00     787.29      -5.96      -9.77      33.85    -292.51       0.01       0.00       0.00       0.00
                            0.00      -5.96    -787.29    -294.46       0.08       9.85      -0.00       0.00       0.16       0.06

    8   2.2  0.5 -0.5    -787.29       0.00       0.00       1.21     292.66      33.83       0.00       0.00       0.00       0.00
                            5.96       0.00      -0.16      -0.07      -2.22      -0.25      -0.00       0.00    -787.32    -294.52

    9   3.2  0.5 -0.5       5.96      -0.00       0.00      -0.01      -2.22      -0.26       0.00       0.00       0.01       0.00
                          787.29       0.16      -0.00      -1.21    -292.66     -33.89      -0.16     787.32       0.00      -7.54

   10   4.2  0.5 -0.5       9.77      -1.21       0.01      -0.00      -3.68       0.03       0.00       0.00       0.00   29631.43
                          294.46       0.07       1.21       0.00    -109.19     -12.66      -0.06     294.52       7.54      -0.00

   11   5.2  0.5 -0.5     -33.85    -292.66       2.22       3.68      -0.00     109.92       0.00       0.00       0.00       0.00
                           -0.08       2.22     292.66     109.19      -0.00      -3.65      -0.00      -0.34     -33.91     -12.65

   12   6.2  0.5 -0.5     292.51     -33.83       0.26      -0.03    -109.92       0.00       0.00       0.00       0.00       0.00
                           -9.85       0.25      33.89      12.66       3.65      -0.00       0.00      -7.63     292.57     109.25


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5     -33.85     292.51
                            0.08       9.85

    2   2.2  0.5  0.5    -292.66     -33.83
                           -2.22      -0.25

    3   3.2  0.5  0.5       2.22       0.26
                         -292.66     -33.89

    4   4.2  0.5  0.5       3.68      -0.03
                         -109.19     -12.66

    5   5.2  0.5  0.5      -0.00    -109.92
                            0.00      -3.65

    6   6.2  0.5  0.5     109.92       0.00
                            3.65       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

    8   2.2  0.5 -0.5       0.00       0.00
                            0.34       7.63

    9   3.2  0.5 -0.5       0.00       0.00
                           33.91    -292.57

   10   4.2  0.5 -0.5       0.00       0.00
                           12.65    -109.25

   11   5.2  0.5 -0.5   29631.43       0.00
                           -0.00       0.45

   12   6.2  0.5 -0.5       0.00   29631.43
                           -0.45       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -190.12498713    -0.00722555    -1585.83      0.00000000        0.00      0.0000
     2  -190.12498713    -0.00722555    -1585.83      0.00000000        0.00      0.0000
     3  -190.11418795     0.00357364      784.32      0.01079919     2370.15      0.2939
     4  -190.11418795     0.00357364      784.32      0.01079919     2370.15      0.2939
     5  -190.11418791     0.00357368      784.33      0.01079923     2370.16      0.2939
     6  -190.11418791     0.00357368      784.33      0.01079923     2370.16      0.2939
     7  -189.98370203     0.13405955    29422.67      0.14128510    31008.50      3.8446
     8  -189.98370203     0.13405955    29422.67      0.14128510    31008.50      3.8446
     9  -189.98223610     0.13552548    29744.41      0.14275103    31330.23      3.8845
    10  -189.98223610     0.13552548    29744.41      0.14275103    31330.23      3.8845
    11  -189.98223609     0.13552549    29744.41      0.14275104    31330.23      3.8845
    12  -189.98223609     0.13552549    29744.41      0.14275104    31330.23      3.8845


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.163413242  -0.553631241  -0.337310345  -0.066034540  -0.204319768   0.711838287   0.000552327   0.010959342
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.139552680  -0.041191237  -0.145603451   0.743804996  -0.000534768  -0.000148900  -0.002858750   0.000144061
                        -0.535757014   0.158139492  -0.056587696   0.289261419   0.069800595   0.020055740   0.010579849  -0.000533241

    3    3.2  0.5  0.5   0.535754873  -0.158136742  -0.032656851   0.167035489  -0.642013317  -0.184257291  -0.010579865   0.000533203
                         0.139585867  -0.041076198   0.084153107  -0.429404260  -0.005270542  -0.001373268  -0.002858869   0.000141795

    4    4.2  0.5  0.5   0.010125972  -0.002941732   0.000280101  -0.001507973   0.006521263   0.001903879   0.552639188  -0.025471841
                         0.002913261  -0.000857525  -0.000870654   0.004442779   0.000071785   0.000019191   0.164586101  -0.008174625

    5    5.2  0.5  0.5   0.003378901   0.010368158  -0.003239379  -0.001534852  -0.002071968   0.007192631   0.045498281   0.571855073
                        -0.001173047   0.000346246   0.000067128  -0.000343130  -0.000081649  -0.000023459  -0.064109397   0.003231068

    6    6.2  0.5  0.5  -0.002541500   0.002063761  -0.001873779   0.007482139  -0.000413257   0.000781477  -0.160418798   0.074443681
                         0.010044957  -0.002965034  -0.000549576   0.002809490   0.000703871   0.000202280   0.548793581  -0.027663165

    7    1.2  0.5 -0.5  -0.135489644   0.039991966  -0.061726181   0.315302861  -0.000375101  -0.000107666   0.002778544  -0.000140033
                         0.536796151  -0.158444092  -0.023461438   0.119843124   0.711838188   0.204319740  -0.010601267   0.000534281

    8    2.2  0.5 -0.5  -0.163411401  -0.553618046   0.798047969   0.156208761   0.020055816  -0.069800867   0.000552342   0.010958958
                         0.001237348   0.004193793  -0.006122073  -0.001164180  -0.000138332   0.000497987  -0.000004160  -0.000083015

    9    3.2  0.5 -0.5   0.001126479   0.004226495   0.003574214   0.000627396  -0.001276174   0.004932235  -0.000001978  -0.000083126
                         0.163380581   0.553624091   0.460734304   0.090265285  -0.184257989   0.642016005  -0.000551731  -0.010959004

   10    4.2  0.5 -0.5   0.000111522   0.000346554   0.000168890   0.000047509   0.000018187  -0.000068349   0.001449607   0.019096823
                         0.003062140   0.010531016  -0.004688683  -0.000913366   0.001903888  -0.006521300   0.026712128   0.576310652

   11    5.2  0.5 -0.5   0.002201672  -0.001964292  -0.001556623   0.003004179  -0.000027249   0.000080557   0.141858097  -0.073550023
                        -0.010137615   0.002989075  -0.000224575   0.001213668   0.007192617   0.002072011  -0.553990022   0.027757927

   12    6.2  0.5 -0.5   0.003379934   0.010361484   0.007992159   0.001946786   0.000201868  -0.000704089   0.045633186   0.571534148
                        -0.001275375  -0.000005924   0.000032144   0.000152016   0.000781584   0.000412886  -0.064997882  -0.016040663


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.000194067  -0.001152419  -0.007978182   0.001997056
                         0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.004230558  -0.006181430   0.000642594  -0.000588716
                        -0.000611779  -0.000137530  -0.000827542  -0.003325857

    3    3.2  0.5  0.5  -0.000529126  -0.000123541   0.001157411   0.004603951
                         0.003079845   0.005988470  -0.000863108  -0.000288060

    4    4.2  0.5  0.5  -0.041423759   0.003878655   0.115328757   0.453014138
                         0.304141493   0.588728168  -0.082719145  -0.019935490

    5    5.2  0.5  0.5  -0.066657040   0.042736120   0.786076582  -0.202150941
                        -0.007256071  -0.002230067  -0.009246291  -0.037520127

    6    6.2  0.5  0.5   0.412067277   0.616637736   0.024363322   0.023204638
                         0.051871022  -0.001820443   0.082965085   0.325337052

    7    1.2  0.5 -0.5  -0.001150047  -0.000193668  -0.000234562  -0.000937070
                        -0.000073900  -0.000012445  -0.001983233  -0.007922960

    8    2.2  0.5 -0.5  -0.006177527   0.004261082   0.003371984  -0.000746338
                        -0.000259146  -0.000339229   0.000194006   0.000735344

    9    3.2  0.5 -0.5   0.000260733   0.000330537  -0.000254686  -0.000721191
                        -0.005984067   0.003107437  -0.004605918   0.001250775

   10    4.2  0.5 -0.5   0.041623710   0.021834989  -0.033410837  -0.068600763
                        -0.587267712   0.306171862  -0.452220023   0.124246185

   11    5.2  0.5 -0.5   0.042505155   0.066985150   0.061003870   0.083145581
                         0.004965989  -0.002966659   0.196344826   0.781721625

   12    6.2  0.5 -0.5   0.615251823  -0.414545456  -0.325810650   0.085252399
                         0.041359474   0.025339857   0.015168131   0.014450101


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   2.670%  30.651%  11.378%   0.436%   4.175%  50.671%   0.000%   0.012%   0.000%   0.000%
    2    2.2  0.5  0.5  30.651%   2.670%   2.440%  63.692%   0.487%   0.040%   0.012%   0.000%   0.002%   0.004%
    3    3.2  0.5  0.5  30.652%   2.669%   0.815%  21.229%  41.221%   3.395%   0.012%   0.000%   0.001%   0.004%
    4    4.2  0.5  0.5   0.011%   0.001%   0.000%   0.002%   0.004%   0.000%  33.250%   0.072%   9.422%  34.662%
    5    5.2  0.5  0.5   0.001%   0.011%   0.001%   0.000%   0.000%   0.005%   0.618%  32.703%   0.450%   0.183%
    6    6.2  0.5  0.5   0.011%   0.001%   0.000%   0.006%   0.000%   0.000%  32.691%   0.631%  17.249%  38.025%
    7    1.2  0.5 -0.5  30.651%   2.670%   0.436%  11.378%  50.671%   4.175%   0.012%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   2.670%  30.651%  63.692%   2.440%   0.040%   0.487%   0.000%   0.012%   0.004%   0.002%
    9    3.2  0.5 -0.5   2.669%  30.652%  21.229%   0.815%   3.395%  41.221%   0.000%   0.012%   0.004%   0.001%
   10    4.2  0.5 -0.5   0.001%   0.011%   0.002%   0.000%   0.000%   0.004%   0.072%  33.250%  34.662%   9.422%
   11    5.2  0.5 -0.5   0.011%   0.001%   0.000%   0.001%   0.005%   0.000%  32.703%   0.618%   0.183%   0.450%
   12    6.2  0.5 -0.5   0.001%   0.011%   0.006%   0.000%   0.000%   0.000%   0.631%  32.691%  38.025%  17.249%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.006%   0.000%
    2    2.2  0.5  0.5   0.000%   0.001%
    3    3.2  0.5  0.5   0.000%   0.002%
    4    4.2  0.5  0.5   2.014%  20.562%
    5    5.2  0.5  0.5  61.800%   4.227%
    6    6.2  0.5  0.5   0.748%  10.638%
    7    1.2  0.5 -0.5   0.000%   0.006%
    8    2.2  0.5 -0.5   0.001%   0.000%
    9    3.2  0.5 -0.5   0.002%   0.000%
   10    4.2  0.5 -0.5  20.562%   2.014%
   11    5.2  0.5 -0.5   4.227%  61.800%
   12    6.2  0.5 -0.5  10.638%   0.748%


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
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1391.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13500.44   8086.19   5397.96      6.35      1.69      8.02
 REAL TIME  *     13746.97 SEC
 DISK USED  *         1.45 GB (local),       18.46 GB (total)
 SF USED    *        13.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -189.982236091690

              CI           MULTI         RHF-SCF
   -189.91455807   -189.10535595   -189.01889116
 **********************************************************************************************************************************
 Molpro calculation terminated
