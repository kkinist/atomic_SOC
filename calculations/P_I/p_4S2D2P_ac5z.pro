
 Working directory              : /wrk/irikura/molpro.aMHK71crao/
 Global scratch directory       : /wrk/irikura/molpro.aMHK71crao/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.aMHK71crao/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,P SO-CI
                                                                                 ! Active space (5,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={P};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=15,sym=2,spin=3}
 
 {multi
     wf,sym=2,spin=3;state,1;
     wf,sym=2,spin=1;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=3;state,1; save,5203.2}
 hlsdiag(1) = energd
 {ci;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   P SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 12:33:12  
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

 Library entry P      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry P      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry P      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry P      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry P      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry P      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  P      15.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   15
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

     232.260 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 16.777 MB, node maximum: 22.020 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2017364. INTEGRALS IN      6 RECORDS. CPU TIME:     1.14 SEC, REAL TIME:     1.17 SEC
 SORT2 READ    24850105. AND WROTE   141159946. INTEGRALS IN    864 RECORDS. CPU TIME:     0.23 SEC, REAL TIME:     0.26 SEC

 Node minimum:    11745169.  Node maximum:    11770866. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.384E-05 0.464E-03 0.219E-02 0.219E-02 0.219E-02 0.219E-02 0.219E-02 0.241E-02
         2 0.356E-04 0.356E-04 0.356E-04 0.497E-02 0.497E-02 0.497E-02 0.176E-01 0.176E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.66      3.43
 REAL TIME  *         4.39 SEC
 DISK USED  *        30.55 MB (local),      850.71 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   5   4
 Initial beta  occupancy:   3   3

 NELEC=   15   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -258.47794498    -258.47794498     0.00D+00     0.13D+00     0     0       0.06      0.11    start
   2     -330.56329025     -72.08534527     0.34D+00     0.15D+00     1     0       0.07      0.18    diag2
   3     -339.87834005      -9.31504979     0.24D+00     0.50D-01     2     0       0.06      0.24    diag2
   4     -341.50170509      -1.62336504     0.58D-01     0.31D-01     3     0       0.07      0.31    diag2
   5     -341.52954842      -0.02784333     0.71D-02     0.40D-02     4     0       0.07      0.38    diag2
   6     -341.53446253      -0.00491411     0.13D-02     0.15D-02     5     0       0.07      0.45    diag2
   7     -341.53464975      -0.00018722     0.27D-03     0.34D-03     6     0       0.06      0.51    diag2
   8     -341.53465551      -0.00000576     0.45D-04     0.79D-04     7     0       0.07      0.58    fixocc
   9     -341.53465556      -0.00000005     0.51D-05     0.57D-05     8     0       0.06      0.64    diag2
  10     -341.53465557      -0.00000000     0.92D-06     0.12D-05     9     0       0.07      0.71    diag2/orth
  11     -341.53465557      -0.00000000     0.20D-06     0.27D-06     0     0       0.07      0.78    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -341.534655567288
  RHF One-electron energy            -472.623866451604
  RHF Two-electron energy             131.089210884317
  RHF Kinetic energy                  346.570469988626
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.985469580194

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.18952     1  1  s    0.96402
    2.1     2.00000    -7.54741     1  2  s    1.03424
    3.1     2.00000    -0.69940     1  2  s   -0.31311    1  9  s    0.39843    1 10  s    0.61732
    1.2     2.00000    -5.39985     1  1  px   0.99968
    2.2     2.00000    -5.39985     1  1  py   0.77438    1  1  pz  -0.63222
    3.2     2.00000    -5.39985     1  1  py   0.63222    1  1  pz   0.77437
    4.2     1.00000    -0.39122     1  8  px   0.37491    1  9  px   0.51090
    5.2     1.00000    -0.39121     1  8  py   0.28833    1  9  py   0.39291    1  9  pz  -0.32656
    6.2     1.00000    -0.39121     1  8  pz   0.28832    1  9  py   0.32656    1  9  pz   0.39291


 HOMO      6.2    -0.391212 =     -10.6454eV
 LUMO      4.1     0.058539 =       1.5929eV
 LUMO-HOMO         0.449751 =      12.2384eV

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
 CPU TIMES  *         4.52      0.86      3.43
 REAL TIME  *         6.17 SEC
 DISK USED  *        34.69 MB (local),      900.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 2 4 3 5 1   5 3 4 6 21013 915 7  14 81211 5 3 4 2 6 1  1013 915 7 8141211 2
                                        6 4 3 5 1 711 81410  1513 912 2 6 4 3 5 1  11 714 8151013 912 2   6 4 3 5 1 2 6 4 3 5
                                        711 814151013 912 2   6 4 3 5 1 2 6 4 3 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.396D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.450D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.451D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.496D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.454D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 7 910 4 8 5 6 7   910 4 8 5 6 1 2 3 7   910 4 8 5 620181311
                                       15171621141912 1 2 3   6 5 4 8 910 7191221  1417162015181311 3 2   1 5 6 4 8 910 71912
                                       211417161520181311 3   2 1 5 6 8 4 910 7 3   2 1 6 5 8 410 9 7 3   2 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  962  ( 11 closed/active, 525 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    1059
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -341.46342448    -341.46427384   -0.00084936    0.02564196 0.00003586 0.00000000  0.43E-01      0.53
   2    5   10    0   -341.46427718    -341.46427721   -0.00000004    0.00015186 0.00000001 0.00000000  0.27E-03      1.02
   3    6   12    0   -341.46427721    -341.46427721    0.00000000    0.00000003 0.00000000 0.00000000  0.15E-07      1.50

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.55E-08)
                       Final energy:   -341.46427721
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -341.533805380479
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50949010
 One electron energy                          -472.42930974
 Two electron energy                           130.89550436
 Virial ratio                                    1.98564055
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -341.464761483924
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50949010
 One electron energy                          -472.42930974
 Two electron energy                           130.96454826
 Virial ratio                                    1.98544130
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -341.464761483919
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50949010
 One electron energy                          -472.42930974
 Two electron energy                           130.96454826
 Virial ratio                                    1.98544130
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -341.464761483919
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50949010
 One electron energy                          -472.42930974
 Two electron energy                           130.96454826
 Virial ratio                                    1.98544130
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -341.464761483916
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50949010
 One electron energy                          -472.42930974
 Two electron energy                           130.96454826
 Virial ratio                                    1.98544130
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -341.464761483914
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50949010
 One electron energy                          -472.42930974
 Two electron energy                           130.96454826
 Virial ratio                                    1.98544130
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -341.440294037424
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.48081588
 One electron energy                          -472.35118547
 Two electron energy                           130.91089143
 Virial ratio                                    1.98545223
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -341.440294037419
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.48081588
 One electron energy                          -472.35118547
 Two electron energy                           130.91089143
 Virial ratio                                    1.98545223
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -341.440294037416
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.48081588
 One electron energy                          -472.35118547
 Two electron energy                           130.91089143
 Virial ratio                                    1.98545223
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.490423202838
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.509576797162
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000119859
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000008158129
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999995369155
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999961339
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999947888
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000042418
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.890958905196
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.109041094808
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999998879285
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000699284
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.000000002039
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000067101
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999974962
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999978756
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.618617891966
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     2.381382108029
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000001000855
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999991142587
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000004628807
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999971560
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000077150
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999978826
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 3 5 6 4 1   2 4 5 3 61514 812 7   9111310 2 4 5 3 6 1   7141512 8131011 9 2
                                        5 3 4 6 1 71310 812  151411 9 2 3 5 6 4 1  141511 7 91013 812 2   3 5 6 4 1 2 3 5 4 6
                                        9 7101312 8111514 2   4 5 3 6 1 2 4 5 3 6   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 1 3 2 1   3 2 4 5 9 7 6 810 9   7 4 5 610 8 2 3 121  13191715111220181416
                                        9 7 6 5 410 8 2 3 1   9 7 6 5 4 810192113  1820141615171211 2 3   1 7 9 5 4 810 62018
                                       211315171219111614 2   3 1 810 4 7 9 5 6 1   3 2 810 4 5 6 9 7 1   3 2 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.20868     1  1  s    0.96402
    2.1     2.00000    -7.56471     1  2  s    1.03605
    3.1     1.98181    -0.70626     1  2  s   -0.30821    1  9  s    0.40423    1 10  s    0.61716
    1.2     2.00000    -5.41740     1  1  py   0.99957
    2.2     2.00000    -5.41740     1  1  pz   0.99957
    3.2     2.00000    -5.41740     1  1  px   0.99957
    4.2     1.00606    -0.16658     1  8  pz   0.36492    1  9  pz   0.49206
    5.2     1.00606    -0.16658     1  8  py   0.36492    1  9  py   0.49206
    6.2     1.00606    -0.16658     1  8  px   0.36492    1  9  px   0.49206
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:     -341.53380538
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba         -0.13480918      0.80529072     -0.00000082      0.00000003      0.00000037      0.00000000      0.00000000
 2 aab          0.76480682     -0.28589719      0.00000066     -0.00000003     -0.00000043     -0.00000000     -0.00000000
 2 2a0         -0.00000036      0.00000066      0.70710667     -0.00039506      0.00005202      0.69739156     -0.00011758
 2 0a2          0.00000036     -0.00000066     -0.70710667      0.00039506     -0.00005202      0.69739156     -0.00011758
 2 02a         -0.00000030      0.00000027      0.00005137     -0.00116606     -0.70710582     -0.00013712      0.00015920
 2 20a          0.00000030     -0.00000027     -0.00005137      0.00116606      0.70710582     -0.00013712      0.00015920
 2 a20          0.00000002     -0.00000002      0.00039514      0.70710571     -0.00116603      0.00011761      0.69739155
 2 a02         -0.00000002      0.00000002     -0.00039514     -0.70710571      0.00116603      0.00011761      0.69739156
 2 baa         -0.62999763     -0.51939354      0.00000016     -0.00000000      0.00000006      0.00000000      0.00000000
 0 2a2         -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.16519673      0.00002785
 0 a22         -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00002786     -0.16519672
 0 22a          0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00003248     -0.00003771
 
 Energy:     -341.46476148   -341.46476148   -341.46476148   -341.46476148   -341.46476148   -341.44029404   -341.44029404

 State:              8
 2 aba          0.00000000
 2 aab          0.00000000
 2 2a0          0.00013715
 2 0a2          0.00013715
 2 02a          0.69739155
 2 20a          0.69739155
 2 a20         -0.00015918
 2 a02         -0.00015918
 2 baa         -0.00000000
 0 2a2         -0.00003249
 0 a22          0.00003771
 0 22a         -0.16519672
 
 Energy:     -341.44029404
 


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
 CPU TIMES  *         6.28      1.76      0.86      3.43
 REAL TIME  *         8.25 SEC
 DISK USED  *        45.40 MB (local),        1.00 GB (total)
 SF USED    *        35.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -341.5338054  -0.0
    -341.4647615   6.0
    -341.4647615   6.0
    -341.4647615   6.0
    -341.4647615   6.0
    -341.4647615   6.0
    -341.4402940   2.0
    -341.4402940   2.0
    -341.4402940   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 15
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:        1 conf        1 CSFs
 N elec internal:       46 conf       46 CSFs
 N-1 el internal:       83 conf      188 CSFs
 N-2 el internal:       33 conf      223 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.25 sec, npass=  1  Memory used:   1.23 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.53380538

 Number of blocks in overlap matrix:    58   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      58
 Number of N-1 electron functions:     188

 Number of internal configurations:                   22
 Number of singly external configurations:         19572
 Number of doubly external configurations:        627786
 Total number of contracted configurations:       647380
 Total number of uncontracted configurations:    2426017

 Diagonal Coupling coefficients finished.               Storage:    190710 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    758255 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.53380538    -0.00000000    -0.45204028  0.43D-01  0.40D-01     0.34
    2     1     1     1.06883636    -0.40996570  -341.94377109    -0.40996570    -0.00624519  0.17D-02  0.62D-03     0.73
    3     1     1     1.05413157    -0.41610672  -341.94991210    -0.00614101    -0.00007067  0.96D-05  0.91D-05     1.12
    4     1     1     1.05363798    -0.41618021  -341.94998560    -0.00007350    -0.00000143  0.29D-06  0.22D-06     1.51
    5     1     1     1.05367681    -0.41618173  -341.94998711    -0.00000151    -0.00000004  0.72D-08  0.84D-08     1.90
    6     1     1     1.05367261    -0.41618177  -341.94998715    -0.00000005    -0.00000000  0.19D-09  0.22D-09     2.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.4%   3.9%
 P   0.4%   7.8%  14.8%

 Initialization:  14.3%
 Other:           58.3%

 Total CPU:        2.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222///           0.9741930


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97419297 (fixed)   0.97419297 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000997   -0.00010866   -0.00010706
 Singles      0.02310576   -0.04664574   -0.05339467
 Pairs        0.03056738   -0.36942738   -0.36268004
 Total        1.05368311   -0.41618177   -0.41618177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.53380538
 Nuclear energy                         0.00000000
 Kinetic energy                       346.91814320
 One electron energy                 -472.33030573
 Two electron energy                  130.38031858
 Virial quotient                       -0.98567917
 Correlation energy                    -0.41618177
 !CI(SD) STATE 1.2 Energy            -341.949987153551

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.97232909 (Davidson, fixed reference)
 Cluster corrected energies          -341.97232909 (Davidson, relaxed reference)

 Cluster corrected energies          -341.96844648 (Pople, fixed reference)
 Cluster corrected energies          -341.96844648 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        8.41       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.68      2.38      1.76      0.86      3.43
 REAL TIME  *        10.93 SEC
 DISK USED  *        51.75 MB (local),        1.08 GB (total)
 SF USED    *        86.15 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -341.97232909  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 15
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       10 conf       11 CSFs
 N elec internal:       96 conf      148 CSFs
 N-1 el internal:      183 conf      503 CSFs
 N-2 el internal:      192 conf      834 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.46476148
     2      -341.46476148
     3      -341.46476148
     4      -341.46476148
     5      -341.46476148
     6      -341.44029404
     7      -341.44029404
     8      -341.44029404

 Number of blocks in overlap matrix:   248   Smallest eigenvalue:  0.14D-01
 Number of N-2 electron functions:     369
 Number of N-1 electron functions:     503

 Number of internal configurations:                   83
 Number of singly external configurations:         52417
 Number of doubly external configurations:       3996153
 Total number of contracted configurations:      4048653
 Total number of uncontracted configurations:    9067806

 Diagonal Coupling coefficients finished.               Storage:    268002 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    839064 words, CPU-time:      0.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.46476148    -0.00000000    -0.46346123  0.46D-01  0.40D-01     0.24
    1     2     2     1.00000000     0.00000000  -341.46476148    -0.00000000    -0.46346505  0.46D-01  0.40D-01     0.24
    1     3     3     1.00000000     0.00000000  -341.46476148    -0.00000000    -0.46262910  0.46D-01  0.40D-01     0.24
    1     4     4     1.00000000     0.00000000  -341.46476148    -0.00000000    -0.46338121  0.46D-01  0.40D-01     0.24
    1     5     5     1.00000000     0.00000000  -341.46476148    -0.00000000    -0.46265702  0.45D-01  0.40D-01     0.24
    1     6     6     1.00000000     0.00000000  -341.44029404    -0.00000000    -0.45084795  0.25D-01  0.51D-01     0.24
    1     7     7     1.00000000     0.00000000  -341.44029404    -0.00000000    -0.45114044  0.25D-01  0.51D-01     0.24
    1     8     8     1.00000000     0.00000000  -341.44029404    -0.00000000    -0.45096081  0.25D-01  0.51D-01     0.24
    2     1     1     1.07140506    -0.42297474  -341.88773622    -0.42297474    -0.00838370  0.19D-02  0.11D-02    33.32
    2     2     2     1.07145522    -0.42295774  -341.88771922    -0.42295774    -0.00839877  0.20D-02  0.11D-02    33.32
    2     3     3     1.07163391    -0.42294290  -341.88770438    -0.42294290    -0.00843005  0.20D-02  0.11D-02    33.32
    2     4     4     1.07203316    -0.42272771  -341.88748920    -0.42272771    -0.00867885  0.21D-02  0.11D-02    33.32
    2     5     5     1.07238994    -0.42261070  -341.88737218    -0.42261070    -0.00882449  0.22D-02  0.11D-02    33.32
    2     6     6     1.06484189    -0.41709727  -341.85739131    -0.41709727    -0.00676554  0.18D-02  0.86D-03    33.32
    2     7     7     1.06476282    -0.41703470  -341.85732874    -0.41703470    -0.00683097  0.18D-02  0.87D-03    33.32
    2     8     8     1.06482622    -0.41702519  -341.85731923    -0.41702519    -0.00684167  0.18D-02  0.87D-03    33.32
    3     1     1     1.06152128    -0.43058419  -341.89534567    -0.00760945    -0.00017568  0.21D-04  0.31D-04    66.85
    3     2     2     1.06161228    -0.43057825  -341.89533973    -0.00762051    -0.00018101  0.22D-04  0.32D-04    66.85
    3     3     3     1.06146541    -0.43057774  -341.89533922    -0.00763484    -0.00017980  0.22D-04  0.32D-04    66.85
    3     4     4     1.06146437    -0.43057774  -341.89533922    -0.00785002    -0.00017964  0.21D-04  0.32D-04    66.85
    3     5     5     1.06154444    -0.43057583  -341.89533732    -0.00796514    -0.00018198  0.22D-04  0.32D-04    66.85
    3     6     6     1.05672502    -0.42333266  -341.86362670    -0.00623539    -0.00014715  0.96D-05  0.30D-04    66.85
    3     7     7     1.05668248    -0.42332879  -341.86362283    -0.00629409    -0.00014994  0.96D-05  0.31D-04    66.85
    3     8     8     1.05667034    -0.42332837  -341.86362240    -0.00630317    -0.00015041  0.97D-05  0.31D-04    66.85
    4     1     1     1.06186675    -0.43076980  -341.89553128    -0.00018561    -0.00000870  0.99D-06  0.20D-05   100.47
    4     2     2     1.06188007    -0.43076962  -341.89553110    -0.00019137    -0.00000879  0.94D-06  0.21D-05   100.47
    4     3     3     1.06187301    -0.43076918  -341.89553066    -0.00019144    -0.00000910  0.95D-06  0.22D-05   100.47
    4     4     4     1.06186190    -0.43076906  -341.89553055    -0.00019133    -0.00000920  0.98D-06  0.22D-05   100.47
    4     5     5     1.06186000    -0.43076900  -341.89553048    -0.00019317    -0.00000925  0.10D-05  0.22D-05   100.47
    4     6     6     1.05700530    -0.42349237  -341.86378641    -0.00015971    -0.00000717  0.85D-06  0.17D-05   100.47
    4     7     7     1.05699694    -0.42349225  -341.86378629    -0.00016346    -0.00000724  0.79D-06  0.17D-05   100.47
    4     8     8     1.05699867    -0.42349224  -341.86378627    -0.00016387    -0.00000725  0.80D-06  0.17D-05   100.47
    5     1     1     1.06221162    -0.43077987  -341.89554135    -0.00001007    -0.00000052  0.44D-07  0.12D-06   133.56
    5     2     2     1.06221372    -0.43077986  -341.89554134    -0.00001024    -0.00000052  0.42D-07  0.12D-06   133.56
    5     3     3     1.06221732    -0.43077983  -341.89554132    -0.00001065    -0.00000054  0.41D-07  0.13D-06   133.56
    5     4     4     1.06221812    -0.43077981  -341.89554130    -0.00001075    -0.00000056  0.43D-07  0.13D-06   133.56
    5     5     5     1.06221765    -0.43077981  -341.89554129    -0.00001081    -0.00000056  0.44D-07  0.13D-06   133.56
    5     6     6     1.05727455    -0.42350091  -341.86379495    -0.00000854    -0.00000043  0.38D-07  0.96D-07   133.56
    5     7     7     1.05727561    -0.42350091  -341.86379494    -0.00000866    -0.00000043  0.38D-07  0.97D-07   133.56
    5     8     8     1.05727569    -0.42350090  -341.86379494    -0.00000867    -0.00000044  0.39D-07  0.98D-07   133.56
    6     1     1     1.06221835    -0.43078047  -341.89554195    -0.00000060    -0.00000003  0.34D-08  0.71D-08   167.45
    6     2     2     1.06221830    -0.43078047  -341.89554195    -0.00000061    -0.00000003  0.34D-08  0.73D-08   167.45
    6     3     3     1.06221890    -0.43078047  -341.89554195    -0.00000064    -0.00000003  0.35D-08  0.76D-08   167.45
    6     4     4     1.06221959    -0.43078047  -341.89554195    -0.00000065    -0.00000003  0.35D-08  0.79D-08   167.45
    6     5     5     1.06221962    -0.43078046  -341.89554195    -0.00000066    -0.00000003  0.36D-08  0.79D-08   167.45
    6     6     6     1.05726341    -0.42350141  -341.86379545    -0.00000050    -0.00000003  0.30D-08  0.57D-08   167.45
    6     7     7     1.05726357    -0.42350141  -341.86379545    -0.00000050    -0.00000003  0.29D-08  0.59D-08   167.45
    6     8     8     1.05726354    -0.42350141  -341.86379545    -0.00000051    -0.00000003  0.30D-08  0.60D-08   167.45
    7     1     1     1.06221641    -0.43078050  -341.89554199    -0.00000003    -0.00000000  0.24D-09  0.52D-09   188.08
    7     2     2     1.06221661    -0.43078050  -341.89554199    -0.00000004    -0.00000000  0.25D-09  0.55D-09   188.08
    7     3     3     1.06221672    -0.43078050  -341.89554199    -0.00000004    -0.00000000  0.28D-09  0.59D-09   188.08
    7     4     4     1.06221673    -0.43078050  -341.89554199    -0.00000004    -0.00000000  0.29D-09  0.62D-09   188.08
    7     5     5     1.06221673    -0.43078050  -341.89554199    -0.00000004    -0.00000000  0.29D-09  0.62D-09   188.08
    7     6     6     1.05726341    -0.42350141  -341.86379545     0.00000000    -0.00000003  0.30D-08  0.57D-08   188.08
    7     7     7     1.05726358    -0.42350141  -341.86379545    -0.00000000    -0.00000003  0.29D-08  0.59D-08   188.08
    7     8     8     1.05726354    -0.42350141  -341.86379545    -0.00000000    -0.00000003  0.30D-08  0.60D-08   188.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.2%   6.6%  27.8%

 Initialization:   0.1%
 Other:           65.1%

 Total CPU:      188.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/\/           0.8663235  -0.4369140   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 22222//\           0.4369141   0.8663234   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 222220/2          -0.0000000  -0.0000000  -0.0000000  -0.6860795  -0.0000000  -0.0000000   0.6791742   0.0000000
 2222202/           0.0000000   0.0000000   0.0000000   0.0000000   0.6860795  -0.0000000  -0.0000000   0.6791742
 22222/02           0.0000000   0.0000000  -0.6860795  -0.0000000   0.0000000   0.6791743   0.0000000  -0.0000000
 22222/20           0.0000000   0.0000000   0.6860795  -0.0000000   0.0000000   0.6791744   0.0000000  -0.0000000
 2222220/           0.0000000   0.0000000   0.0000000   0.0000000  -0.6860794   0.0000000  -0.0000000   0.6791744
 222222/0          -0.0000000  -0.0000000  -0.0000000   0.6860794  -0.0000000  -0.0000000   0.6791744   0.0000000
 20222/22          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1525092  -0.0000000   0.0000000
 2022222/          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000  -0.1525091
 202222/2           0.0000000   0.0000000   0.0000000   0.0000001   0.0000000   0.0000000  -0.1525091  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222//\  11.1     0.0717179   0.0040557  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2\222//\  15.1    -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0644089  -0.0000000   0.0000000  -0.0055609
 2\222//\  12.1    -0.0000000  -0.0000000   0.0000000   0.0644088  -0.0000000  -0.0000000   0.0055608   0.0000000
 2/222\/\  14.1    -0.0000000  -0.0000000  -0.0500459   0.0000000  -0.0000000  -0.0064218  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.713356    0.657673    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.657673   -0.713356    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.000000   -0.000000    0.970263   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.970263   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.970263   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.972495    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.972495    0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.972495

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970263    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.970263   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.970263   -0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.970263   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.970263    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.972495   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.972495   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.972495


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.71335564 (fixed)   0.97026302 (relaxed)   0.97026302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001850   -0.00016411   -0.35405532
 Singles      0.02804621   -0.05469815   -0.06286584
 Pairs        0.03417135   -0.00000000   -0.01385935
 Total        1.06223606   -0.05486226   -0.43078050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46476148
 Nuclear energy                         0.00000000
 Kinetic energy                       346.89051000
 One electron energy                 -472.22134267
 Two electron energy                  130.32580068
 Virial quotient                       -0.98560074
 Correlation energy                    -0.43078050
 !MRCI STATE 1.2 Energy              -341.895541988465

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.92235207 (Davidson, fixed reference)
 Cluster corrected energies          -341.92235207 (Davidson, relaxed reference)
 Cluster corrected energies          -341.92235207 (Davidson, rotated reference)

 Cluster corrected energies          -341.91883719 (Pople, fixed reference)
 Cluster corrected energies          -341.91883719 (Pople, relaxed reference)
 Cluster corrected energies          -341.91883719 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.71335557 (fixed)   0.97026293 (relaxed)   0.97026293 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001850   -0.00016411   -0.35405507
 Singles      0.02804649   -0.05469834   -0.06286599
 Pairs        0.03417126   -0.00000000   -0.01385944
 Total        1.06223626   -0.05486245   -0.43078050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46476148
 Nuclear energy                         0.00000000
 Kinetic energy                       346.89051123
 One electron energy                 -472.22134233
 Two electron energy                  130.32580034
 Virial quotient                       -0.98560073
 Correlation energy                    -0.43078050
 !MRCI STATE 2.2 Energy              -341.895541988298

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.92235215 (Davidson, fixed reference)
 Cluster corrected energies          -341.92235215 (Davidson, relaxed reference)
 Cluster corrected energies          -341.92235215 (Davidson, rotated reference)

 Cluster corrected energies          -341.91883727 (Pople, fixed reference)
 Cluster corrected energies          -341.91883727 (Pople, relaxed reference)
 Cluster corrected energies          -341.91883727 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97026288 (fixed)   0.97026288 (relaxed)   0.97026288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001850   -0.00016411   -0.35405484
 Singles      0.02804682   -0.05469854   -0.06286615
 Pairs        0.03417106   -0.00000000   -0.01385951
 Total        1.06223637   -0.05486265   -0.43078050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46476148
 Nuclear energy                         0.00000000
 Kinetic energy                       346.89051684
 One electron energy                 -472.22134558
 Two electron energy                  130.32580359
 Virial quotient                       -0.98560072
 Correlation energy                    -0.43078050
 !MRCI STATE 3.2 Energy              -341.895541988024

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.92235220 (Davidson, fixed reference)
 Cluster corrected energies          -341.92235220 (Davidson, relaxed reference)
 Cluster corrected energies          -341.92235220 (Davidson, rotated reference)

 Cluster corrected energies          -341.91883731 (Pople, fixed reference)
 Cluster corrected energies          -341.91883731 (Pople, relaxed reference)
 Cluster corrected energies          -341.91883731 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97026287 (fixed)   0.97026287 (relaxed)   0.97026287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001850   -0.00016411   -0.35405479
 Singles      0.02804688   -0.05469860   -0.06286622
 Pairs        0.03417100   -0.00000000   -0.01385949
 Total        1.06223638   -0.05486271   -0.43078050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46476148
 Nuclear energy                         0.00000000
 Kinetic energy                       346.89051541
 One electron energy                 -472.22134134
 Two electron energy                  130.32579935
 Virial quotient                       -0.98560072
 Correlation energy                    -0.43078050
 !MRCI STATE 4.2 Energy              -341.895541987903

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.92235221 (Davidson, fixed reference)
 Cluster corrected energies          -341.92235221 (Davidson, relaxed reference)
 Cluster corrected energies          -341.92235221 (Davidson, rotated reference)

 Cluster corrected energies          -341.91883732 (Pople, fixed reference)
 Cluster corrected energies          -341.91883732 (Pople, relaxed reference)
 Cluster corrected energies          -341.91883732 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.97026287 (fixed)   0.97026287 (relaxed)   0.97026287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001850   -0.00016411   -0.35405474
 Singles      0.02804691   -0.05469862   -0.06286623
 Pairs        0.03417098   -0.00000003   -0.01385954
 Total        1.06223638   -0.05486276   -0.43078050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46476148
 Nuclear energy                         0.00000000
 Kinetic energy                       346.89051502
 One electron energy                 -472.22134182
 Two electron energy                  130.32579983
 Virial quotient                       -0.98560072
 Correlation energy                    -0.43078050
 !MRCI STATE 5.2 Energy              -341.895541987881

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.92235221 (Davidson, fixed reference)
 Cluster corrected energies          -341.92235221 (Davidson, relaxed reference)
 Cluster corrected energies          -341.92235221 (Davidson, rotated reference)

 Cluster corrected energies          -341.91883732 (Pople, fixed reference)
 Cluster corrected energies          -341.91883732 (Pople, relaxed reference)
 Cluster corrected energies          -341.91883732 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97249497 (fixed)   0.97253003 (relaxed)   0.97249497 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009687   -0.00019290   -0.36915008
 Singles      0.01460618   -0.03321576   -0.03726497
 Pairs        0.04266278   -0.00000000   -0.01708637
 Total        1.05736583   -0.03340866   -0.42350141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.44029404
 Nuclear energy                         0.00000000
 Kinetic energy                       346.86463136
 One electron energy                 -472.12750689
 Two electron energy                  130.26371144
 Virial quotient                       -0.98558274
 Correlation energy                    -0.42350141
 !MRCI STATE 6.2 Energy              -341.863795449026

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.88808996 (Davidson, fixed reference)
 Cluster corrected energies          -341.88805768 (Davidson, relaxed reference)
 Cluster corrected energies          -341.88808996 (Davidson, rotated reference)

 Cluster corrected energies          -341.88483553 (Pople, fixed reference)
 Cluster corrected energies          -341.88480650 (Pople, relaxed reference)
 Cluster corrected energies          -341.88483553 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97249489 (fixed)   0.97252995 (relaxed)   0.97249489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009687   -0.00019290   -0.36914998
 Singles      0.01460617   -0.03321580   -0.03726501
 Pairs        0.04266296    0.00000000   -0.01708643
 Total        1.05736600   -0.03340870   -0.42350141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.44029404
 Nuclear energy                         0.00000000
 Kinetic energy                       346.86463538
 One electron energy                 -472.12750532
 Two electron energy                  130.26370987
 Virial quotient                       -0.98558273
 Correlation energy                    -0.42350141
 !MRCI STATE 7.2 Energy              -341.863795448168

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.88809003 (Davidson, fixed reference)
 Cluster corrected energies          -341.88805775 (Davidson, relaxed reference)
 Cluster corrected energies          -341.88809003 (Davidson, rotated reference)

 Cluster corrected energies          -341.88483560 (Pople, fixed reference)
 Cluster corrected energies          -341.88480656 (Pople, relaxed reference)
 Cluster corrected energies          -341.88483560 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97249491 (fixed)   0.97252997 (relaxed)   0.97249491 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009687   -0.00019290   -0.00022123
 Singles      0.01460620   -0.03321583   -0.03726503
 Pairs        0.04266289   -0.39009268   -0.38601515
 Total        1.05736596   -0.42350141   -0.42350141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.44029404
 Nuclear energy                         0.00000000
 Kinetic energy                       346.86463160
 One electron energy                 -472.12750532
 Two electron energy                  130.26370988
 Virial quotient                       -0.98558274
 Correlation energy                    -0.42350141
 !MRCI STATE 8.2 Energy              -341.863795448050

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.88809001 (Davidson, fixed reference)
 Cluster corrected energies          -341.88805773 (Davidson, relaxed reference)
 Cluster corrected energies          -341.88809001 (Davidson, rotated reference)

 Cluster corrected energies          -341.88483558 (Pople, fixed reference)
 Cluster corrected energies          -341.88480655 (Pople, relaxed reference)
 Cluster corrected energies          -341.88483558 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      256.95       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       202.80    194.13      2.38      1.76      0.86      3.43
 REAL TIME  *       221.53 SEC
 DISK USED  *       300.29 MB (local),        3.99 GB (total)
 SF USED    *         2.29 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -341.92235207  AU                              
 SETTING HLSDIAG(3)     =      -341.92235215  AU                              
 SETTING HLSDIAG(4)     =      -341.92235220  AU                              
 SETTING HLSDIAG(5)     =      -341.92235221  AU                              
 SETTING HLSDIAG(6)     =      -341.92235221  AU                              
 SETTING HLSDIAG(7)     =      -341.88808996  AU                              
 SETTING HLSDIAG(8)     =      -341.88809003  AU                              
 SETTING HLSDIAG(9)     =      -341.88809001  AU                              


         HLSDIAG
    -341.9723291
    -341.9223521
    -341.9223522
    -341.9223522
    -341.9223522
    -341.9223522
    -341.8880900
    -341.8880900
    -341.8880900
                                                  

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

 Time for Seward_LS:      13.84 sec

       35662750. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40817 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.84 sec, REAL time:     14.74 sec


 SORTLS1 read   167096336. and wrote   167096336. SO integrals in   660 records. CPU time:      1.56 sec, REAL time:      2.33 sec
 SORTLS2 read   167096336. and wrote   839252487. SO integrals in    36 records. CPU time:      0.98 sec, REAL time:      1.36 sec

 FILE SIZES: FILE 1:  2720.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2720.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2594.57       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      256.95       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       219.66     16.82    194.13      2.38      1.76      0.86      3.43
 REAL TIME  *       240.59 SEC
 DISK USED  *       300.57 MB (local),       12.47 GB (total)
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
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -341.949987
 Replaced energies:   -341.972329

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -341.895542   -341.895542   -341.895542   -341.895542   -341.895542   -341.863795   -341.863795   -341.863795
 Replaced energies:   -341.922352   -341.922352   -341.922352   -341.922352   -341.922352   -341.888090   -341.888090   -341.888090



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -341.97232909

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     205.98

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   10968.69       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.02      -0.00       0.00     145.73

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   10968.67       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.36      -0.00       0.00       8.24

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   10968.66       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.02       0.36       0.00      -0.00       0.00      -0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   10968.66       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.18       0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   10968.66       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.18      -0.00      -0.00

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18488.35
                            0.00    -205.98      -0.00      -0.00    -145.73      -8.24       0.00      -0.00       0.00       0.00

   11   7.2  0.5  0.5    -178.38       0.00    -102.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -126.40       0.00

   12   8.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          178.38       0.00    -102.99      -0.00       0.00       0.00       0.00    -126.40      -0.00      -0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.30      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.32      -0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.20       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.16      -0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.18       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.18       0.00       0.00

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.30      -0.20      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.18       0.00       0.00     126.40

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.18       0.00      -0.00    -126.40
                           -0.00      -0.00      -0.00       0.00      -0.32       0.16      -0.00      -0.00       0.00      -0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     126.40       0.00
                           -0.00       0.00    -205.98      -0.00       0.00       0.00      -0.00    -126.40       0.00      -0.00

   19   7.2  0.5 -0.5       0.00    -102.99       0.00    -178.38     -80.00     122.08       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     126.40      -0.00       0.00       0.86

   20   8.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00    -126.40      -0.00      -0.00       0.86
                           -0.00     102.99       0.00    -178.38      65.73     130.32       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -178.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -178.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -102.99      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -102.99

    3   1.2  1.5 -0.5    -102.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     102.99       0.00       0.00       0.00      -0.00       0.00     205.98       0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -178.38      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     178.38

    5   1.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.30       0.00       0.00     -80.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.32      -0.00       0.00     -65.73

    6   2.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.20      -0.00      -0.00     122.08       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.16      -0.00       0.00    -130.32

    7   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.18      -0.00       0.00    -126.40
                            0.00      -0.00       0.00       0.00      -0.00       0.18       0.00       0.00    -126.40      -0.00

    8   4.2  0.5  0.5       0.00       0.00       0.30       0.20       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00     126.40       0.00       0.00      -0.18      -0.00       0.00     126.40       0.00      -0.00

    9   5.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.18      -0.00      -0.00     126.40       0.00      -0.00
                          126.40       0.00      -0.32       0.16      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   10   6.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00    -126.40       0.00      -0.00       0.86
                           -0.00       0.00       0.00       0.00      -0.00    -126.40       0.00       0.00      -0.86       0.00

   11   7.2  0.5  0.5   18488.34       0.00      80.00    -122.08      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.86      -0.00      -0.00     126.40      -0.00       0.00       0.86      -0.00      -0.00

   12   8.2  0.5  0.5       0.00   18488.34       0.00      -0.00     126.40       0.00       0.00      -0.86      -0.00      -0.00
                            0.86       0.00      65.73     130.32       0.00       0.00      -0.00      -0.00       0.00      -0.00

   13   1.2  0.5 -0.5      80.00       0.00   10968.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -65.73      -0.00      -0.00      -0.02       0.00      -0.00    -145.73      -0.00       0.00

   14   2.2  0.5 -0.5    -122.08      -0.00       0.00   10968.67       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -130.32       0.00      -0.00       0.36       0.00      -0.00      -8.24      -0.00       0.00

   15   3.2  0.5 -0.5      -0.00     126.40       0.00       0.00   10968.66       0.00       0.00       0.00       0.00       0.00
                         -126.40      -0.00       0.02      -0.36      -0.00       0.00      -0.00       0.00      -0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   10968.66       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.18      -0.00       0.00    -126.40

   17   5.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00   10968.66       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.18       0.00       0.00    -126.40      -0.00

   18   6.2  0.5 -0.5       0.00      -0.86       0.00       0.00       0.00       0.00       0.00   18488.35       0.00       0.00
                           -0.86       0.00     145.73       8.24      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   19   7.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18488.34       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00     126.40      -0.00       0.00       0.86

   20   8.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18488.34
                            0.00       0.00      -0.00      -0.00      -0.00     126.40       0.00       0.00      -0.86      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -341.97234477    -0.00001569       -3.44      0.00000000        0.00      0.0000
     2  -341.97234477    -0.00001569       -3.44      0.00000000        0.00      0.0000
     3  -341.97234477    -0.00001569       -3.44      0.00000000        0.00      0.0000
     4  -341.97234477    -0.00001569       -3.44      0.00000000        0.00      0.0000
     5  -341.92240294     0.04992614    10957.52      0.04994183    10960.96      1.3590
     6  -341.92240294     0.04992614    10957.52      0.04994183    10960.96      1.3590
     7  -341.92240291     0.04992618    10957.53      0.04994186    10960.97      1.3590
     8  -341.92240291     0.04992618    10957.53      0.04994186    10960.97      1.3590
     9  -341.92235057     0.04997852    10969.02      0.04999420    10972.46      1.3604
    10  -341.92235057     0.04997852    10969.02      0.04999420    10972.46      1.3604
    11  -341.92235054     0.04997855    10969.02      0.04999424    10972.47      1.3604
    12  -341.92235054     0.04997855    10969.02      0.04999424    10972.47      1.3604
    13  -341.92235049     0.04997860    10969.03      0.04999429    10972.48      1.3604
    14  -341.92235049     0.04997860    10969.03      0.04999429    10972.48      1.3604
    15  -341.88808214     0.08424695    18490.07      0.08426263    18493.51      2.2929
    16  -341.88808214     0.08424695    18490.07      0.08426263    18493.51      2.2929
    17  -341.88802996     0.08429912    18501.52      0.08431481    18504.96      2.2943
    18  -341.88802996     0.08429912    18501.52      0.08431481    18504.96      2.2943
    19  -341.88802992     0.08429917    18501.53      0.08431486    18504.97      2.2943
    20  -341.88802992     0.08429917    18501.53      0.08431486    18504.97      2.2943


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.993226723  -0.007252609  -0.000000000  -0.115159508  -0.000861579   0.000005424  -0.000019950   0.000042933
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000840561   0.115156757   0.993252795  -0.000002774  -0.000000296  -0.000047157  -0.000781364  -0.000363066
                        -0.000000161  -0.000012683   0.000857739  -0.000000590   0.000000026   0.000004159   0.000005291   0.000002461

    3    1.2  1.5 -0.5   0.115156441  -0.000840488   0.000002766   0.993253202   0.000047340  -0.000000298  -0.000363074   0.000781382
                        -0.000000283  -0.000000066  -0.000000587  -0.000002438   0.000000001  -0.000000000  -0.000000006   0.000000008

    4    1.2  1.5 -1.5   0.007252600   0.993226680  -0.115159782  -0.000000071   0.000005403   0.000858248  -0.000042932  -0.000019949
                        -0.000000817  -0.000111951  -0.000099151   0.000000000  -0.000000476  -0.000075681   0.000000290   0.000000135

    5    1.2  0.5  0.5   0.000000278   0.000038037   0.000219074  -0.000000001  -0.000006706  -0.001006399   0.572229594   0.265890321
                        -0.000000000  -0.000000004   0.000000189  -0.000000000   0.000000482   0.000088364  -0.003875123  -0.001802144

    6    2.2  0.5  0.5  -0.000001600  -0.000219068   0.000038039  -0.000000000   0.003961265   0.629188727   0.000918270   0.000426272
                         0.000000000   0.000000025   0.000000033  -0.000000000  -0.000349314  -0.055482373  -0.000006531  -0.000003119

    7    3.2  0.5  0.5   0.000000000   0.000000025   0.000000022  -0.000000000  -0.000349114  -0.055451360   0.000212843   0.000098902
                         0.000001613   0.000220867  -0.000025606  -0.000000000  -0.003959074  -0.628837279   0.031476241   0.014626054

    8    4.2  0.5  0.5  -0.000088240   0.000000644   0.000000001   0.000204093  -0.345697681   0.002176151   0.223223986  -0.480406708
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000330   0.000000095   0.000003640  -0.000004946

    9    5.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000330   0.000000095   0.000003640  -0.000004946
                        -0.000132596   0.000000968  -0.000000001  -0.000178488  -0.285620412   0.001798542  -0.237853658   0.511890736

   10    6.2  0.5  0.5   0.000000002   0.000000141  -0.000009558   0.000000007   0.000000932   0.000147496   0.000187658   0.000087272
                         0.000009367   0.001283278   0.011068556  -0.000000031   0.000010512   0.001672444   0.027710911   0.012876060

   11    7.2  0.5  0.5   0.010227045  -0.000074676   0.000000015   0.004422907   0.025623143  -0.000161329   0.007050906  -0.015174405
                        -0.000000002  -0.000000000  -0.000000003  -0.000000014  -0.000000009   0.000000003   0.000000102  -0.000000138

   12    8.2  0.5  0.5   0.000000002   0.000000000   0.000000003   0.000000014   0.000000009  -0.000000003  -0.000000102   0.000000138
                        -0.008943768   0.000065310   0.000000015   0.006645663  -0.027302077   0.000171881   0.005825454  -0.012537152

   13    1.2  0.5 -0.5  -0.000038037   0.000000278  -0.000000001  -0.000219074  -0.001010270   0.000006722  -0.265896428   0.572242715
                         0.000000000   0.000000000   0.000000000   0.000000001   0.000000380  -0.000000109  -0.000004185   0.000005687

   14    2.2  0.5 -0.5   0.000219068  -0.000001600  -0.000000000  -0.000038038   0.631630230  -0.003976637  -0.000426284   0.000918293
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000021  -0.000000006  -0.000000237   0.000000322

   15    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000220867  -0.000001613  -0.000000000  -0.000025606   0.631277416  -0.003974437   0.014626389  -0.031476960

   16    4.2  0.5 -0.5  -0.000000644  -0.000088240   0.000204093  -0.000000001   0.002167731   0.344361394   0.480395691   0.223218858
                         0.000000000   0.000000010   0.000000176  -0.000000000  -0.000191247  -0.030366387  -0.003253398  -0.001513053

   17    5.2  0.5 -0.5   0.000000000   0.000000015  -0.000000154   0.000000000  -0.000157889  -0.025088546   0.003466289   0.001611977
                         0.000000968   0.000132597   0.000178487  -0.000000001  -0.001791598  -0.284516405   0.511879000   0.237848196

   18    6.2  0.5 -0.5   0.000000003   0.000000001   0.000000007   0.000000027   0.000000018  -0.000000005  -0.000000203   0.000000276
                         0.001283274  -0.000009366   0.000000031   0.011068561  -0.001678935   0.000010553   0.012876355  -0.027711546

   19    7.2  0.5 -0.5   0.000074677   0.010227047   0.004422902  -0.000000016  -0.000160705  -0.025524101   0.015174057   0.007050744
                        -0.000000009  -0.000001151   0.000003822  -0.000000003   0.000014168   0.002250726  -0.000102746  -0.000047779

   20    8.2  0.5 -0.5   0.000000007   0.000001010   0.000005736  -0.000000003  -0.000015101  -0.002398222  -0.000084913  -0.000039493
                         0.000065310   0.008943766  -0.006645663   0.000000015  -0.000171217  -0.027196543  -0.012536865  -0.005825321


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000000  -0.000000052  -0.000000390   0.000000143   0.000000063  -0.000000010   0.000000000  -0.000001524
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000004   0.000000000  -0.000000006  -0.000000017  -0.000000000  -0.000000001   0.000002712  -0.000000000
                        -0.000000006   0.000000000   0.000000005   0.000000013  -0.000000172  -0.000001101  -0.000007228  -0.000000000

    3    1.2  1.5 -0.5  -0.000000000  -0.000000007   0.000000021  -0.000000008   0.000001101  -0.000000172  -0.000000000  -0.000007720
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5  -0.000000027   0.000000000   0.000000112   0.000000308  -0.000000000  -0.000000000   0.000000535   0.000000000
                        -0.000000045   0.000000000  -0.000000088  -0.000000240  -0.000000010  -0.000000063  -0.000001426  -0.000000000

    5    1.2  0.5  0.5   0.001319470  -0.000007830  -0.000035339  -0.000096705   0.000134751   0.000862003   0.000004764  -0.000000000
                         0.002150192  -0.000012760   0.000027524   0.000075319   0.119732192   0.766114333  -0.000012694  -0.000000000

    6    2.2  0.5  0.5  -0.013603206   0.000080728   0.209711663   0.573883399   0.000000037   0.000000238  -0.000000663  -0.000000000
                        -0.022167609   0.000131550  -0.163336567  -0.446976167   0.000033055   0.000211506   0.000001767   0.000000000

    7    3.2  0.5  0.5  -0.476997006   0.002830668   0.112698202   0.308402528   0.004761919   0.030469453   0.000002483   0.000000000
                         0.292710342  -0.001737078   0.144695874   0.395965387  -0.000005359  -0.000034283   0.000000932   0.000000000

    8    4.2  0.5  0.5   0.003472172   0.585093985   0.247281222  -0.090362890   0.427986141  -0.066887822  -0.000000000  -0.000010306
                         0.000000028  -0.000000038  -0.000000005  -0.000000012   0.000000086  -0.000000031   0.000000000   0.000000000

    9    5.2  0.5  0.5  -0.000000028   0.000000038   0.000000005   0.000000009   0.000000090  -0.000000033   0.000000000   0.000000000
                         0.003479297   0.586294731   0.200041766  -0.073100384  -0.452907124   0.070782598   0.000000000   0.000012954

   10    6.2  0.5  0.5  -0.000000169   0.000000001   0.000000167   0.000000458  -0.000006153  -0.000039372   0.540112464   0.000000155
                         0.000000104  -0.000000001   0.000000215   0.000000588   0.000000007   0.000000044   0.202678409  -0.000000938

   11    7.2  0.5  0.5   0.000000007   0.000001157   0.000011409  -0.000004169  -0.000021624   0.000003379   0.000000185   0.577660111
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000934  -0.000001399

   12    8.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000934   0.000001399
                        -0.000000006  -0.000000955  -0.000012155   0.000004442  -0.000017749   0.000002774   0.000000185   0.577502194

   13    1.2  0.5 -0.5  -0.000014971  -0.002522762  -0.000122576   0.000044793   0.766114818  -0.119732268   0.000000000   0.000013559
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000152  -0.000000056  -0.000000000  -0.000000000

   14    2.2  0.5 -0.5   0.000154345   0.026008655   0.727413122  -0.265815379   0.000211506  -0.000033055   0.000000000  -0.000001888
                         0.000000001  -0.000000002  -0.000000017  -0.000000034   0.000000000   0.000000000  -0.000000000  -0.000000000

   15    3.2  0.5 -0.5  -0.000000027   0.000000036  -0.000000011  -0.000000023  -0.000000006   0.000000002   0.000000000   0.000000000
                         0.003321163   0.559647646  -0.501897109   0.183406054   0.030469472  -0.004761922   0.000000000  -0.000002652

   16    4.2  0.5 -0.5   0.306019441  -0.001816061  -0.071290653  -0.195089398  -0.000075278  -0.000481554   0.000003621  -0.000000000
                         0.498685344  -0.002959375   0.055525622   0.151947786  -0.066887779  -0.427985870  -0.000009649  -0.000000000

   17    5.2  0.5 -0.5   0.499708760  -0.002965448   0.044918265   0.122920386   0.070782553   0.452906838   0.000012129   0.000000000
                        -0.306647463   0.001819787   0.057671619   0.157820427  -0.000079661  -0.000509594   0.000004551  -0.000000000

   18    6.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000932  -0.000001398
                         0.000000001   0.000000198  -0.000000745   0.000000272  -0.000039372   0.000006153  -0.000000185  -0.576888214

   19    7.2  0.5 -0.5   0.000000605  -0.000000004  -0.000003289  -0.000009001   0.000000004   0.000000024  -0.202949600   0.000000939
                         0.000000986  -0.000000006   0.000002562   0.000007010   0.000003379   0.000021624   0.540835154   0.000000155

   20    8.2  0.5 -0.5  -0.000000814   0.000000005  -0.000002729  -0.000007469   0.000002774   0.000017749   0.540687304   0.000000155
                         0.000000500  -0.000000003  -0.000003504  -0.000009590  -0.000000003  -0.000000020   0.202894120  -0.000000939


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.013560192   0.000182792   0.001306498  -0.000002714
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000015614  -0.001157834   0.000005745   0.002795485
                        -0.000008157  -0.000605023   0.000027556   0.013270133

    3    1.2  1.5 -0.5  -0.001306382   0.000017616  -0.013561385   0.000028148
                        -0.000000006   0.000000002  -0.000000065  -0.000000058

    4    1.2  1.5 -1.5  -0.000162007  -0.012018248  -0.000000559  -0.000269310
                        -0.000084657  -0.006280170  -0.000002656  -0.001278440

    5    1.2  0.5  0.5  -0.000043048  -0.003192713   0.000009927   0.004830798
                        -0.000022492  -0.001668349   0.000047618   0.022931733

    6    2.2  0.5  0.5   0.000279958   0.020768309   0.000001537   0.000742623
                         0.000146293   0.010852541   0.000007322   0.003525274

    7    3.2  0.5  0.5   0.000147329   0.010929406   0.000004622   0.002224874
                        -0.000281941  -0.020915405  -0.000000974  -0.000468681

    8    4.2  0.5  0.5   0.009830519  -0.000132507  -0.021575863   0.000044785
                        -0.000000009   0.000000003  -0.000000097  -0.000000088

    9    5.2  0.5  0.5  -0.000000009   0.000000003  -0.000000097  -0.000000088
                         0.013768338  -0.000185607   0.019302162  -0.000040062

   10    6.2  0.5  0.5  -0.000489054  -0.036274304   0.001650751   0.794956543
                         0.000936125   0.069418278  -0.000344162  -0.167465495

   11    7.2  0.5  0.5   0.742242848  -0.010005670   0.337968986  -0.000701369
                         0.000000186  -0.000000053   0.000001934   0.000001748

   12    8.2  0.5  0.5  -0.000000185   0.000000053  -0.000001934  -0.000001748
                        -0.664205071   0.008953362   0.473477561  -0.000982886

   13    1.2  0.5 -0.5   0.003602333  -0.000048570   0.023435037  -0.000048642
                         0.000000011  -0.000000003   0.000000112   0.000000102

   14    2.2  0.5 -0.5  -0.023432889   0.000315877   0.003602644  -0.000007482
                         0.000000001  -0.000000000   0.000000006   0.000000006

   15    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.023598858   0.000318115   0.002273703  -0.000004724

   16    4.2  0.5 -0.5   0.000117438   0.008712675   0.000009146   0.004447550
                         0.000061371   0.004552844   0.000043842   0.021112488

   17    5.2  0.5 -0.5   0.000085958   0.006376561  -0.000039220  -0.018887617
                        -0.000164503  -0.012202729   0.000008172   0.003978870

   18    6.2  0.5 -0.5  -0.000000371   0.000000107  -0.000003874  -0.000003500
                         0.078324470  -0.001056174   0.812404208  -0.001686243

   19    7.2  0.5 -0.5   0.008867939   0.657841668  -0.000142863  -0.069667783
                         0.004633907   0.343756869  -0.000686667  -0.330710501

   20    8.2  0.5 -0.5  -0.004146643  -0.307615341  -0.000962139  -0.463308948
                         0.007935240   0.588677483   0.000200893   0.097600303


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  98.650%   0.005%   0.000%   1.326%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   1.326%  98.655%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   1.326%   0.000%   0.000%  98.655%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.005%  98.650%   1.326%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  32.746%   7.070%   0.001%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%  39.896%   0.000%   0.000%   0.068%   0.000%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%  39.851%   0.099%   0.021%  31.321%   0.001%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  11.951%   0.000%   4.983%  23.079%   0.001%  34.233%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   8.158%   0.000%   5.657%  26.203%   0.001%  34.374%
   10    6.2  0.5  0.5   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.077%   0.017%   0.000%   0.000%
   11    7.2  0.5  0.5   0.010%   0.000%   0.000%   0.002%   0.066%   0.000%   0.005%   0.023%   0.000%   0.000%
   12    8.2  0.5  0.5   0.008%   0.000%   0.000%   0.004%   0.075%   0.000%   0.003%   0.016%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.070%  32.746%   0.000%   0.001%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  39.896%   0.002%   0.000%   0.000%   0.000%   0.068%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  39.851%   0.002%   0.021%   0.099%   0.001%  31.321%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  11.951%  23.079%   4.983%  34.233%   0.001%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   8.158%  26.203%   5.657%  34.374%   0.001%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.017%   0.077%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.010%   0.002%   0.000%   0.000%   0.066%   0.023%   0.005%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.008%   0.004%   0.000%   0.000%   0.075%   0.016%   0.003%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   1.434%  58.693%   0.000%   0.000%   0.000%   0.001%   0.000%   0.055%
    6    2.2  0.5  0.5   7.066%  52.913%   0.000%   0.000%   0.000%   0.000%   0.000%   0.055%   0.000%   0.001%
    7    3.2  0.5  0.5   3.364%  25.190%   0.002%   0.093%   0.000%   0.000%   0.000%   0.056%   0.000%   0.001%
    8    4.2  0.5  0.5   6.115%   0.817%  18.317%   0.447%   0.000%   0.000%   0.010%   0.000%   0.047%   0.000%
    9    5.2  0.5  0.5   4.002%   0.534%  20.512%   0.501%   0.000%   0.000%   0.019%   0.000%   0.037%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.280%   0.000%   0.000%   0.613%   0.000%  66.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.369%  55.092%   0.010%  11.422%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.351%  44.117%   0.008%  22.418%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%  58.693%   1.434%   0.000%   0.000%   0.001%   0.000%   0.055%   0.000%
   14    2.2  0.5 -0.5  52.913%   7.066%   0.000%   0.000%   0.000%   0.000%   0.055%   0.000%   0.001%   0.000%
   15    3.2  0.5 -0.5  25.190%   3.364%   0.093%   0.002%   0.000%   0.000%   0.056%   0.000%   0.001%   0.000%
   16    4.2  0.5 -0.5   0.817%   6.115%   0.447%  18.317%   0.000%   0.000%   0.000%   0.010%   0.000%   0.047%
   17    5.2  0.5 -0.5   0.534%   4.002%   0.501%  20.512%   0.000%   0.000%   0.000%   0.019%   0.000%   0.037%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.280%   0.613%   0.000%  66.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.369%   0.000%   0.010%  55.092%   0.000%  11.422%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.351%   0.000%   0.008%  44.117%   0.000%  22.418%


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
              1      24     2594.57       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      256.95       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       396.22    176.54     16.82    194.13      2.38      1.76      0.86      3.43
 REAL TIME  *       440.79 SEC
 DISK USED  *       300.57 MB (local),       12.47 GB (total)
 SF USED    *         3.47 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -341.888029918353

              CI              CI           MULTI         RHF-SCF
   -341.86379545   -341.94998715   -341.44029404   -341.53465557
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
