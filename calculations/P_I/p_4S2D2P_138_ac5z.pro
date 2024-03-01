
 Working directory              : /wrk/irikura/molpro.VjqaSghVVp/
 Global scratch directory       : /wrk/irikura/molpro.VjqaSghVVp/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VjqaSghVVp/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,P SO-CI
                                                                                 ! Active space (13/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={P};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=15,sym=2,spin=3}
 
 {multi
     closed,1,0
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
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   P SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 28-Feb-24          TIME: 13:48:58  
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

     231.473 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 14.680 MB, node maximum: 23.331 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2017364. INTEGRALS IN      6 RECORDS. CPU TIME:     1.10 SEC, REAL TIME:     1.13 SEC
 SORT2 READ    24850105. AND WROTE   141159946. INTEGRALS IN    924 RECORDS. CPU TIME:     0.25 SEC, REAL TIME:     0.27 SEC

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
 CPU TIMES  *         3.65      3.34
 REAL TIME  *         4.40 SEC
 DISK USED  *        30.55 MB (local),      849.96 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   5   4
 Initial beta  occupancy:   3   3

 NELEC=   15   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -258.47797075    -258.47797075     0.00D+00     0.13D+00     0     0       0.07      0.13    start
   2     -330.55736597     -72.07939522     0.34D+00     0.15D+00     1     0       0.07      0.20    diag2
   3     -339.87793742      -9.32057145     0.24D+00     0.50D-01     2     0       0.07      0.27    diag2
   4     -341.50168931      -1.62375189     0.58D-01     0.31D-01     3     0       0.07      0.34    diag2
   5     -341.52954270      -0.02785339     0.71D-02     0.40D-02     4     0       0.07      0.41    diag2
   6     -341.53446246      -0.00491976     0.13D-02     0.15D-02     5     0       0.06      0.47    diag2
   7     -341.53464974      -0.00018729     0.27D-03     0.34D-03     6     0       0.07      0.54    diag2
   8     -341.53465551      -0.00000577     0.45D-04     0.79D-04     7     0       0.07      0.61    fixocc
   9     -341.53465556      -0.00000005     0.51D-05     0.57D-05     8     0       0.07      0.68    diag2
  10     -341.53465557      -0.00000000     0.92D-06     0.12D-05     9     0       0.08      0.76    diag2/orth
  11     -341.53465557      -0.00000000     0.20D-06     0.28D-06     0     0       0.07      0.83    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -341.534655567288
  RHF One-electron energy            -472.623866444715
  RHF Two-electron energy             131.089210877427
  RHF Kinetic energy                  346.570469985560
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.985469580203

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.18952     1  1  s    0.96402
    2.1     2.00000    -7.54741     1  2  s    1.03424
    3.1     2.00000    -0.69940     1  2  s   -0.31311    1  9  s    0.39843    1 10  s    0.61732
    1.2     2.00000    -5.39985     1  1  px   0.99968
    2.2     2.00000    -5.39985     1  1  py   0.77386    1  1  pz  -0.63285
    3.2     2.00000    -5.39985     1  1  py   0.63285    1  1  pz   0.77386
    4.2     1.00000    -0.39122     1  8  px   0.37491    1  9  px   0.51090
    5.2     1.00000    -0.39121     1  8  py   0.28815    1  9  py   0.39268    1  9  pz  -0.32684
    6.2     1.00000    -0.39121     1  8  pz   0.28815    1  9  py   0.32684    1  9  pz   0.39268


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
 CPU TIMES  *         4.52      0.88      3.34
 REAL TIME  *         6.21 SEC
 DISK USED  *        34.69 MB (local),      899.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:  13    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:              26   (26 determinants, 56 intermediate states)

 State symmetry 2

 Number of active electrons:  13    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 2 4 3 5 1   5 3 4 6 21013 915 7  14 81211 5 3 4 2 6 1  1013 915 7 8141211 2
                                        6 4 3 5 1 711 81410  1513 912 2 6 4 3 5 1  11 714 8151013 912 2   6 4 3 5 1 2 6 4 3 5
                                        711 814151013 912 2   6 4 3 5 1 2 6 4 3 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.381D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.450D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.451D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.474D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.456D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 7 910 4 8 5 6 7   910 4 8 5 6 1 2 3 7   910 4 8 5 620181311
                                       15171621141912 1 2 3   6 5 4 8 910 7191221  1417162015181311 3 2   1 5 6 4 8 910 71912
                                       211417161520181311 3   2 1 5 6 8 4 910 7 3   2 1 6 5 8 410 9 7 3   2 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  953  ( 2 closed/active, 99 closed/virtual, 0 active/active, 852 active/virtual )
 Total number of variables:    1939
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -341.46362257    -341.46445070   -0.00082814    0.02493611 0.00000059 0.00000000  0.42E-01      0.62
   2    6   12    0   -341.46445394    -341.46445397   -0.00000003    0.00014689 0.00000005 0.00000000  0.27E-03      1.25
   3   33   64    0   -341.46445397    -341.46445397    0.00000000    0.00000029 0.00000012 0.00000000  0.13E-05      2.69

 CONVERGENCE REACHED!  Final gradient:    0.00000009 ( 0.90E-07)
                       Final energy:   -341.46445397
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -341.533948210424
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.52631584
 One electron energy                          -472.43983662
 Two electron energy                           130.90588841
 Virial ratio                                    1.98559311
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -341.464933754547
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50924280
 One electron energy                          -472.43066129
 Two electron energy                           130.96572753
 Virial ratio                                    1.98544250
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -341.464933754012
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50924280
 One electron energy                          -472.43066129
 Two electron energy                           130.96572754
 Virial ratio                                    1.98544250
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -341.464933752994
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50924280
 One electron energy                          -472.43066129
 Two electron energy                           130.96572754
 Virial ratio                                    1.98544250
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -341.464933750652
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50924280
 One electron energy                          -472.43066129
 Two electron energy                           130.96572754
 Virial ratio                                    1.98544250
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -341.464933750569
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.50924280
 One electron energy                          -472.43066129
 Two electron energy                           130.96572754
 Virial ratio                                    1.98544250
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -341.440489588337
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.47615472
 One electron energy                          -472.35025295
 Two electron energy                           130.90976336
 Virial ratio                                    1.98546606
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -341.440489586589
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.47615472
 One electron energy                          -472.35025295
 Two electron energy                           130.90976336
 Virial ratio                                    1.98546606
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -341.440489582985
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.47615472
 One electron energy                          -472.35025295
 Two electron energy                           130.90976337
 Virial ratio                                    1.98546606
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     2.444373674874
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000035
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999995792
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000003420
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.555612387439
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999998523
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000002053
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999936
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.089056511115
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000112
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000003420
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999995965
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.910947707046
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999502
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999519
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000000428
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.466569814011
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999999853
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000788
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000615
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.533439905514
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000001975
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999998428
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999636
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 2 4 1   2 4 6 5 3 9 7 81215  14111310 5 3 6 2 4 1  131014151112 8 7 9 5
                                        3 6 2 4 11310151411   812 7 9 3 5 6 2 4 1  1013141511 812 7 9 2   3 5 6 4 1 2 3 5 6 4
                                       101311151412 8 7 9 2   6 5 3 4 1 2 6 5 3 4   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 3 1 2 3   1 2 4 6 5 810 9 7 9   7 5 6 410 8 2 1 318  20171514161221131911
                                        9 7 510 8 6 4 2 1 3   9 7 5 810 6 4182015  1712141621131911 2 1   3 7 9 5 810 6 42018
                                       151712161413211911 2   1 3 7 9 5 810 6 4 2   3 1 5 810 9 7 6 4 2   3 1 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -79.57916     1  1  s    0.95884
    2.1     2.00000    -8.19396     1  2  s    1.02076
    3.1     1.98183    -0.70618     1  2  s   -0.30815    1  9  s    0.40418    1 10  s    0.61716
    1.2     1.99999    -5.41724     1  1  pz   0.99955
    2.2     1.99999    -5.41724     1  1  py   0.99955
    3.2     1.99999    -5.41724     1  1  px   0.99955
    4.2     1.00607    -0.16650     1  8  pz   0.36501    1  9  pz   0.49202
    5.2     1.00607    -0.16650     1  8  px   0.36501    1  9  px   0.49202
    6.2     1.00607    -0.16650     1  8  py   0.36501    1  9  py   0.49202
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 22 222aaa      0.99999318
 
 Energy:     -341.53394821
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 22 222aab      0.80734961      0.00000000     -0.00000001      0.00000005     -0.12182985     -0.00000000     -0.00000000
 22 222baa     -0.29816706      0.00000000      0.00000006     -0.00000004      0.76010020     -0.00000000      0.00000000
 22 2220a2      0.00000000      0.00000240     -0.70710121     -0.00002387      0.00000006     -0.00002680      0.69739546
 22 222a02      0.00000000     -0.70710117     -0.00000240      0.00000432      0.00000000      0.69739550      0.00002680
 22 22202a      0.00000004     -0.00000432      0.00002387     -0.70710111     -0.00000002     -0.00001556      0.00001529
 22 22220a     -0.00000004      0.00000432     -0.00002387      0.70710104      0.00000002     -0.00001556      0.00001529
 22 222a20     -0.00000000      0.70710098      0.00000240     -0.00000432     -0.00000000      0.69739570      0.00002680
 22 2222a0     -0.00000000     -0.00000240      0.70710094      0.00002387     -0.00000006     -0.00002680      0.69739573
 22 222aba     -0.50918255     -0.00000000     -0.00000005     -0.00000001     -0.63827035      0.00000000      0.00000000
 20 22222a     -0.00000000      0.00000000     -0.00000000      0.00000001      0.00000000      0.00000368     -0.00000362
 20 2222a2     -0.00000000     -0.00000000      0.00000004      0.00000000     -0.00000000      0.00000634     -0.16510739
 20 222a22     -0.00000000      0.00000003      0.00000000      0.00000000     -0.00000000     -0.16510738     -0.00000634
 
 Energy:     -341.46493375   -341.46493375   -341.46493375   -341.46493375   -341.46493375   -341.44048959   -341.44048959

 State:              8
 22 222aab     -0.00000000
 22 222baa      0.00000000
 22 2220a2     -0.00001529
 22 222a02      0.00001556
 22 22202a      0.69739556
 22 22220a      0.69739564
 22 222a20      0.00001556
 22 2222a0     -0.00001529
 22 222aba     -0.00000000
 20 22222a     -0.16510739
 20 2222a2      0.00000362
 20 222a22     -0.00000368
 
 Energy:     -341.44048958
 


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
 CPU TIMES  *         7.23      2.71      0.88      3.34
 REAL TIME  *         9.42 SEC
 DISK USED  *        45.40 MB (local),        1.00 GB (total)
 SF USED    *        45.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -341.5339482   0.0
    -341.4649338   6.0
    -341.4649338   6.0
    -341.4649338   6.0
    -341.4649338   6.0
    -341.4649338   6.0
    -341.4404896   2.0
    -341.4404896   2.0
    -341.4404896   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 15
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:       26 conf       26 CSFs
 N elec internal:       56 conf       56 CSFs
 N-1 el internal:      238 conf      448 CSFs
 N-2 el internal:      414 conf     1982 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.53394821

 Number of blocks in overlap matrix:    28   Smallest eigenvalue:  0.71D+00
 Number of N-2 electron functions:      64
 Number of N-1 electron functions:     448

 Number of internal configurations:                   26
 Number of singly external configurations:         46512
 Number of doubly external configurations:        693456
 Total number of contracted configurations:       739994
 Total number of uncontracted configurations:   21431672

 Diagonal Coupling coefficients finished.               Storage:    207479 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    760803 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.53394821    -0.00000000    -0.44761783  0.43D-01  0.40D-01     0.12
    2     1     1     1.06884756    -0.40644216  -341.94039037    -0.40644216    -0.00624098  0.17D-02  0.62D-03     0.81
    3     1     1     1.05417193    -0.41257891  -341.94652712    -0.00613675    -0.00007138  0.96D-05  0.91D-05     1.50
    4     1     1     1.05367259    -0.41265329  -341.94660150    -0.00007438    -0.00000146  0.30D-06  0.22D-06     2.18
    5     1     1     1.05371425    -0.41265484  -341.94660305    -0.00000155    -0.00000004  0.74D-08  0.85D-08     2.87
    6     1     1     1.05371019    -0.41265488  -341.94660309    -0.00000005    -0.00000000  0.20D-09  0.22D-09     3.56


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.0%   1.1%
 P   0.8%   7.6%  16.3%

 Initialization:   3.1%
 Other:           70.8%

 Total CPU:        3.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222///           0.9741752


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97417850 (fixed)   0.97418045 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000399   -0.00000000   -0.00000156
 Singles      0.02321838   -0.04669047   -0.05340227
 Pairs        0.03049203   -0.36596441   -0.35925105
 Total        1.05371440   -0.41265488   -0.41265488
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.53394821
 Nuclear energy                         0.00000000
 Kinetic energy                       346.92970851
 One electron energy                 -472.33526238
 Two electron energy                  130.38865929
 Virial quotient                       -0.98563656
 Correlation energy                    -0.41265488
 !MRCI STATE 1.2 Energy              -341.946603091632

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.96876860 (Davidson, fixed reference)
 Cluster corrected energies          -341.96876687 (Davidson, relaxed reference)

 Cluster corrected energies          -341.96491700 (Pople, fixed reference)
 Cluster corrected energies          -341.96491552 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        9.12       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.90      3.66      2.71      0.88      3.34
 REAL TIME  *        13.47 SEC
 DISK USED  *        52.46 MB (local),        1.09 GB (total)
 SF USED    *       120.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -341.96876687  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 15
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       68 conf       94 CSFs
 N elec internal:      112 conf      168 CSFs
 N-1 el internal:      266 conf      714 CSFs
 N-2 el internal:      504 conf     2520 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.46493375
     2      -341.46493375
     3      -341.46493375
     4      -341.46493375
     5      -341.46493375
     6      -341.44048959
     7      -341.44048959
     8      -341.44048958

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4867D-06

 Number of blocks in overlap matrix:     6   Smallest eigenvalue:  0.27D-06
 Number of N-2 electron functions:     503
 Number of N-1 electron functions:     714

 Number of internal configurations:                   94
 Number of singly external configurations:         74386
 Number of doubly external configurations:       5449143
 Total number of contracted configurations:      5523623
 Total number of uncontracted configurations:   27306764

 Diagonal Coupling coefficients finished.               Storage:    379132 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    873350 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.46493375    -0.00000000    -0.40494424  0.47D-01  0.13D-01     0.39
    1     2     2     1.00000000     0.00000000  -341.46493375     0.00000000    -0.41039065  0.46D-01  0.15D-01     0.39
    1     3     3     1.00000000     0.00000000  -341.46493375    -0.00000000    -0.41014462  0.46D-01  0.15D-01     0.39
    1     4     4     1.00000000     0.00000000  -341.46493375    -0.00000000    -0.40962276  0.45D-01  0.15D-01     0.39
    1     5     5     1.00000000     0.00000000  -341.46493375    -0.00000000    -0.40447960  0.46D-01  0.13D-01     0.39
    1     6     6     1.00000000     0.00000000  -341.44048959    -0.00000000    -0.38804037  0.25D-01  0.16D-01     0.39
    1     7     7     1.00000000     0.00000000  -341.44048959    -0.00000000    -0.38824131  0.25D-01  0.16D-01     0.39
    1     8     8     1.00000000     0.00000000  -341.44048958    -0.00000000    -0.38788765  0.25D-01  0.16D-01     0.39
    2     1     1     1.05665317    -0.39774012  -341.86267388    -0.39774012    -0.01139783  0.18D-02  0.85D-03    90.30
    2     2     2     1.05655577    -0.39752679  -341.86246055    -0.39752679    -0.01140021  0.18D-02  0.85D-03    90.30
    2     3     3     1.05728707    -0.39742390  -341.86235766    -0.39742390    -0.01156596  0.20D-02  0.86D-03    90.30
    2     4     4     1.05588213    -0.39438888  -341.85932264    -0.39438888    -0.01151478  0.19D-02  0.84D-03    90.30
    2     5     5     1.05679980    -0.39405503  -341.85898878    -0.39405503    -0.01179701  0.21D-02  0.84D-03    90.30
    2     6     6     1.03982916    -0.38233245  -341.82282204    -0.38233245    -0.01115242  0.16D-02  0.74D-03    90.30
    2     7     7     1.03976765    -0.38225778  -341.82274737    -0.38225778    -0.01110399  0.16D-02  0.73D-03    90.30
    2     8     8     1.03981325    -0.38212705  -341.82261663    -0.38212705    -0.01114377  0.16D-02  0.73D-03    90.30
    3     1     1     1.04834356    -0.41494312  -341.87987687    -0.01720299    -0.00438873  0.43D-03  0.41D-03   179.20
    3     2     2     1.04832766    -0.41483922  -341.87977297    -0.01731243    -0.00442062  0.44D-03  0.41D-03   179.20
    3     3     3     1.04812341    -0.41482254  -341.87975629    -0.01739864    -0.00439547  0.44D-03  0.40D-03   179.20
    3     4     4     1.04637879    -0.41355120  -341.87848495    -0.01916232    -0.00500467  0.74D-03  0.39D-03   179.20
    3     5     5     1.04602219    -0.41340165  -341.87833540    -0.01934662    -0.00499738  0.74D-03  0.38D-03   179.20
    3     6     6     1.03682717    -0.40326726  -341.84375685    -0.02093482    -0.00594007  0.74D-03  0.42D-03   179.20
    3     7     7     1.03678811    -0.40324266  -341.84373224    -0.02098487    -0.00596123  0.73D-03  0.43D-03   179.20
    3     8     8     1.03675586    -0.40319269  -341.84368227    -0.02106564    -0.00595711  0.75D-03  0.42D-03   179.20
    4     1     1     1.05667379    -0.42360467  -341.88853842    -0.00866155    -0.00148277  0.93D-04  0.12D-03   267.14
    4     2     2     1.05657189    -0.42358794  -341.88852169    -0.00874872    -0.00148486  0.93D-04  0.12D-03   267.14
    4     3     3     1.05701502    -0.42329080  -341.88822455    -0.00846826    -0.00161936  0.75D-04  0.19D-03   267.14
    4     4     4     1.05691594    -0.42327803  -341.88821178    -0.00972682    -0.00161933  0.76D-04  0.18D-03   267.14
    4     5     5     1.05703582    -0.42327150  -341.88820525    -0.00986985    -0.00161414  0.75D-04  0.18D-03   267.14
    4     6     6     1.04888555    -0.41420481  -341.85469440    -0.01093754    -0.00210744  0.90D-04  0.26D-03   267.14
    4     7     7     1.04885017    -0.41417463  -341.85466422    -0.01093197    -0.00212916  0.90D-04  0.26D-03   267.14
    4     8     8     1.04879682    -0.41414097  -341.85463055    -0.01094828    -0.00215969  0.98D-04  0.27D-03   267.14
    5     1     1     1.05953302    -0.42567265  -341.89060640    -0.00206798    -0.00054905  0.42D-04  0.52D-04   357.11
    5     2     2     1.05959890    -0.42567034  -341.89060409    -0.00208240    -0.00054863  0.44D-04  0.52D-04   357.11
    5     3     3     1.06014393    -0.42546844  -341.89040220    -0.00217765    -0.00059702  0.83D-04  0.46D-04   357.11
    5     4     4     1.06011019    -0.42546801  -341.89040176    -0.00218998    -0.00060240  0.83D-04  0.47D-04   357.11
    5     5     5     1.06020227    -0.42546570  -341.89039945    -0.00219420    -0.00060180  0.86D-04  0.46D-04   357.11
    5     6     6     1.05156539    -0.41717441  -341.85766400    -0.00296961    -0.00080845  0.12D-03  0.52D-04   357.11
    5     7     7     1.05154995    -0.41716005  -341.85764964    -0.00298542    -0.00081485  0.12D-03  0.53D-04   357.11
    5     8     8     1.05156683    -0.41713022  -341.85761980    -0.00298926    -0.00081428  0.12D-03  0.52D-04   357.11
    6     1     1     1.05872467    -0.42650932  -341.89144307    -0.00083667    -0.00024196  0.28D-04  0.16D-04   446.54
    6     2     2     1.05874236    -0.42650752  -341.89144127    -0.00083717    -0.00024381  0.28D-04  0.16D-04   446.54
    6     3     3     1.05858313    -0.42641685  -341.89135061    -0.00094841    -0.00027418  0.34D-04  0.19D-04   446.54
    6     4     4     1.05857685    -0.42641565  -341.89134940    -0.00094765    -0.00027397  0.34D-04  0.19D-04   446.54
    6     5     5     1.05859197    -0.42641309  -341.89134684    -0.00094739    -0.00027537  0.34D-04  0.20D-04   446.54
    6     6     6     1.05105880    -0.41855771  -341.85904730    -0.00138330    -0.00041027  0.36D-04  0.27D-04   446.54
    6     7     7     1.05101296    -0.41855101  -341.85904060    -0.00139096    -0.00041174  0.37D-04  0.27D-04   446.54
    6     8     8     1.05100157    -0.41853363  -341.85902322    -0.00140341    -0.00041856  0.37D-04  0.28D-04   446.54
    7     1     1     1.06050976    -0.42690488  -341.89183863    -0.00039556    -0.00013131  0.12D-04  0.10D-04   534.94
    7     2     2     1.06050439    -0.42690238  -341.89183614    -0.00039487    -0.00013270  0.12D-04  0.10D-04   534.94
    7     3     3     1.06019853    -0.42683117  -341.89176492    -0.00041432    -0.00016078  0.45D-05  0.16D-04   534.94
    7     4     4     1.06018599    -0.42682999  -341.89176374    -0.00041433    -0.00016124  0.43D-05  0.16D-04   534.94
    7     5     5     1.06018901    -0.42682745  -341.89176120    -0.00041436    -0.00016261  0.40D-05  0.17D-04   534.94
    7     6     6     1.05365267    -0.41919515  -341.85968474    -0.00063744    -0.00025215  0.56D-05  0.27D-04   534.94
    7     7     7     1.05363002    -0.41919069  -341.85968028    -0.00063968    -0.00025467  0.55D-05  0.28D-04   534.94
    7     8     8     1.05359715    -0.41917973  -341.85966931    -0.00064609    -0.00025914  0.53D-05  0.28D-04   534.94
    8     1     1     1.06124251    -0.42708171  -341.89201546    -0.00017683    -0.00006986  0.19D-05  0.74D-05   624.70
    8     2     2     1.06122814    -0.42707940  -341.89201316    -0.00017702    -0.00007036  0.19D-05  0.74D-05   624.70
    8     3     3     1.06119655    -0.42703560  -341.89196935    -0.00020443    -0.00008233  0.76D-05  0.73D-05   624.70
    8     4     4     1.06120617    -0.42703456  -341.89196831    -0.00020457    -0.00008252  0.77D-05  0.73D-05   624.70
    8     5     5     1.06119851    -0.42703251  -341.89196626    -0.00020505    -0.00008262  0.78D-05  0.72D-05   624.70
    8     6     6     1.05502018    -0.41951334  -341.86000293    -0.00031819    -0.00012088  0.11D-04  0.95D-05   624.70
    8     7     7     1.05501507    -0.41951072  -341.86000031    -0.00032003    -0.00012180  0.11D-04  0.96D-05   624.70
    8     8     8     1.05499009    -0.41950280  -341.85999238    -0.00032307    -0.00012336  0.11D-04  0.96D-05   624.70
    9     1     1     1.06118466    -0.42717385  -341.89210761    -0.00009214    -0.00003725  0.31D-05  0.30D-05   713.53
    9     2     2     1.06118216    -0.42717236  -341.89210611    -0.00009295    -0.00003782  0.34D-05  0.29D-05   713.53
    9     3     3     1.06105387    -0.42715003  -341.89208378    -0.00011443    -0.00004482  0.47D-05  0.35D-05   713.53
    9     4     4     1.06104941    -0.42714935  -341.89208311    -0.00011479    -0.00004497  0.46D-05  0.35D-05   713.53
    9     5     5     1.06105217    -0.42714771  -341.89208146    -0.00011520    -0.00004559  0.46D-05  0.35D-05   713.53
    9     6     6     1.05513417    -0.41969094  -341.86018053    -0.00017760    -0.00007043  0.55D-05  0.56D-05   713.53
    9     7     7     1.05511823    -0.41968947  -341.86017905    -0.00017875    -0.00007071  0.55D-05  0.56D-05   713.53
    9     8     8     1.05510673    -0.41968439  -341.86017397    -0.00018159    -0.00007243  0.56D-05  0.57D-05   713.53
   10     1     1     1.06158928    -0.42723088  -341.89216464    -0.00005703    -0.00002439  0.15D-05  0.20D-05   801.89
   10     2     2     1.06157724    -0.42722962  -341.89216337    -0.00005726    -0.00002495  0.15D-05  0.21D-05   801.89
   10     3     3     1.06145735    -0.42721416  -341.89214792    -0.00006414    -0.00003025  0.42D-06  0.32D-05   801.89
   10     4     4     1.06145618    -0.42721368  -341.89214743    -0.00006433    -0.00003040  0.41D-06  0.32D-05   801.89
   10     5     5     1.06145000    -0.42721251  -341.89214626    -0.00006480    -0.00003085  0.36D-06  0.33D-05   801.89
   10     6     6     1.05575453    -0.41979282  -341.86028241    -0.00010188    -0.00004825  0.88D-06  0.51D-05   801.89
   10     7     7     1.05574356    -0.41979169  -341.86028128    -0.00010222    -0.00004876  0.85D-06  0.52D-05   801.89
   10     8     8     1.05573056    -0.41978878  -341.86027836    -0.00010439    -0.00004972  0.86D-06  0.53D-05   801.89
   11     1     1     1.06181851    -0.42726229  -341.89219604    -0.00003140    -0.00001447  0.16D-06  0.16D-05   890.92
   11     2     2     1.06181078    -0.42726123  -341.89219499    -0.00003161    -0.00001472  0.19D-06  0.16D-05   890.92
   11     3     3     1.06177735    -0.42725171  -341.89218546    -0.00003754    -0.00001715  0.12D-05  0.16D-05   890.92
   11     4     4     1.06178136    -0.42725141  -341.89218516    -0.00003773    -0.00001723  0.12D-05  0.16D-05   890.92
   11     5     5     1.06177609    -0.42725065  -341.89218440    -0.00003814    -0.00001734  0.13D-05  0.16D-05   890.92
   11     6     6     1.05625882    -0.41985248  -341.86034207    -0.00005965    -0.00002533  0.16D-05  0.22D-05   890.92
   11     7     7     1.05625498    -0.41985171  -341.86034129    -0.00006002    -0.00002558  0.17D-05  0.22D-05   890.92
   11     8     8     1.05624093    -0.41984994  -341.86033952    -0.00006117    -0.00002593  0.17D-05  0.23D-05   890.92
   12     1     1     1.06187835    -0.42728099  -341.89221474    -0.00001870    -0.00000845  0.49D-06  0.75D-06   979.40
   12     2     2     1.06187437    -0.42728028  -341.89221403    -0.00001905    -0.00000866  0.54D-06  0.75D-06   979.40
   12     3     3     1.06181048    -0.42727479  -341.89220855    -0.00002309    -0.00001035  0.64D-06  0.96D-06   979.40
   12     4     4     1.06180752    -0.42727459  -341.89220834    -0.00002318    -0.00001041  0.60D-06  0.97D-06   979.40
   12     5     5     1.06180788    -0.42727403  -341.89220779    -0.00002339    -0.00001060  0.60D-06  0.98D-06   979.40
   12     6     6     1.05643340    -0.41988759  -341.86037718    -0.00003511    -0.00001603  0.77D-06  0.15D-05   979.40
   12     7     7     1.05642665    -0.41988705  -341.86037664    -0.00003535    -0.00001615  0.76D-06  0.15D-05   979.40
   12     8     8     1.05642037    -0.41988597  -341.86037555    -0.00003602    -0.00001649  0.78D-06  0.16D-05   979.40
   13     1     1     1.06200807    -0.42729313  -341.89222688    -0.00001214    -0.00000595  0.14D-06  0.57D-06  1068.89
   13     2     2     1.06200109    -0.42729258  -341.89222633    -0.00001230    -0.00000614  0.13D-06  0.58D-06  1068.89
   13     3     3     1.06193696    -0.42728872  -341.89222247    -0.00001392    -0.00000726  0.37D-07  0.80D-06  1068.89
   13     4     4     1.06193439    -0.42728857  -341.89222232    -0.00001398    -0.00000730  0.39D-07  0.80D-06  1068.89
   13     5     5     1.06193092    -0.42728818  -341.89222193    -0.00001415    -0.00000744  0.40D-07  0.81D-06  1068.89
   13     6     6     1.05662156    -0.41990925  -341.86039884    -0.00002167    -0.00001115  0.14D-06  0.12D-05  1068.89
   13     7     7     1.05661581    -0.41990886  -341.86039844    -0.00002180    -0.00001128  0.14D-06  0.13D-05  1068.89
   13     8     8     1.05661045    -0.41990826  -341.86039784    -0.00002229    -0.00001151  0.14D-06  0.13D-05  1068.89
   14     1     1     1.06207921    -0.42730055  -341.89223431    -0.00000743    -0.00000364  0.49D-07  0.38D-06  1157.54
   14     2     2     1.06207465    -0.42730013  -341.89223388    -0.00000755    -0.00000375  0.60D-07  0.38D-06  1157.54
   14     3     3     1.06205590    -0.42729774  -341.89223150    -0.00000902    -0.00000437  0.24D-06  0.41D-06  1157.54
   14     4     4     1.06205742    -0.42729766  -341.89223141    -0.00000909    -0.00000440  0.23D-06  0.42D-06  1157.54
   14     5     5     1.06205367    -0.42729740  -341.89223115    -0.00000922    -0.00000444  0.24D-06  0.42D-06  1157.54
   14     6     6     1.05681279    -0.41992313  -341.86041271    -0.00001387    -0.00000629  0.27D-06  0.58D-06  1157.54
   14     7     7     1.05681014    -0.41992286  -341.86041244    -0.00001400    -0.00000639  0.27D-06  0.58D-06  1157.54
   14     8     8     1.05680344    -0.41992248  -341.86041207    -0.00001422    -0.00000645  0.27D-06  0.60D-06  1157.54
   15     1     1     1.06211530    -0.42730522  -341.89223898    -0.00000467    -0.00000227  0.66D-07  0.22D-06  1244.45
   15     2     2     1.06211145    -0.42730491  -341.89223866    -0.00000478    -0.00000236  0.69D-07  0.22D-06  1244.45
   15     3     3     1.06208950    -0.42730340  -341.89223715    -0.00000566    -0.00000280  0.54D-07  0.29D-06  1244.45
   15     4     4     1.06208898    -0.42730334  -341.89223709    -0.00000568    -0.00000282  0.49D-07  0.29D-06  1244.45
   15     5     5     1.06208821    -0.42730315  -341.89223690    -0.00000575    -0.00000288  0.47D-07  0.30D-06  1244.45
   15     6     6     1.05692244    -0.41993136  -341.86042095    -0.00000823    -0.00000415  0.76D-07  0.44D-06  1244.45
   15     7     7     1.05691884    -0.41993114  -341.86042073    -0.00000829    -0.00000420  0.71D-07  0.45D-06  1244.45
   15     8     8     1.05691699    -0.41993095  -341.86042054    -0.00000847    -0.00000424  0.76D-07  0.45D-06  1244.45
   16     1     1     1.06217446    -0.42730827  -341.89224203    -0.00000305    -0.00000163  0.91D-08  0.17D-06  1331.83
   16     2     2     1.06216969    -0.42730804  -341.89224179    -0.00000313    -0.00000170  0.80D-08  0.17D-06  1331.83
   16     3     3     1.06213698    -0.42730700  -341.89224075    -0.00000360    -0.00000197  0.19D-07  0.22D-06  1331.83
   16     4     4     1.06213507    -0.42730696  -341.89224071    -0.00000362    -0.00000198  0.20D-07  0.22D-06  1331.83
   16     5     5     1.06213353    -0.42730684  -341.89224059    -0.00000368    -0.00000202  0.22D-07  0.22D-06  1331.83
   16     6     6     1.05699666    -0.41993676  -341.86042635    -0.00000540    -0.00000292  0.36D-07  0.33D-06  1331.83
   16     7     7     1.05699316    -0.41993660  -341.86042619    -0.00000546    -0.00000296  0.38D-07  0.33D-06  1331.83
   16     8     8     1.05699186    -0.41993654  -341.86042612    -0.00000559    -0.00000300  0.36D-07  0.34D-06  1331.83
   17     1     1     1.06220959    -0.42731030  -341.89224405    -0.00000202    -0.00000103  0.16D-07  0.10D-06  1419.49
   17     2     2     1.06220664    -0.42731013  -341.89224388    -0.00000209    -0.00000107  0.18D-07  0.11D-06  1419.49
   17     3     3     1.06219264    -0.42730947  -341.89224322    -0.00000247    -0.00000126  0.37D-07  0.12D-06  1419.49
   17     4     4     1.06219255    -0.42730944  -341.89224319    -0.00000248    -0.00000126  0.36D-07  0.13D-06  1419.49
   17     5     5     1.06219039    -0.42730936  -341.89224311    -0.00000252    -0.00000128  0.36D-07  0.13D-06  1419.49
   17     6     6     1.05707390    -0.41994037  -341.86042996    -0.00000361    -0.00000174  0.35D-07  0.17D-06  1419.49
   17     7     7     1.05707159    -0.41994026  -341.86042984    -0.00000366    -0.00000178  0.34D-07  0.18D-06  1419.49
   17     8     8     1.05706979    -0.41994022  -341.86042980    -0.00000368    -0.00000178  0.33D-07  0.18D-06  1419.49
   18     1     1     1.06222415    -0.42731159  -341.89224534    -0.00000129    -0.00000067  0.54D-08  0.67D-07  1508.09
   18     2     2     1.06222169    -0.42731146  -341.89224521    -0.00000133    -0.00000071  0.47D-08  0.69D-07  1508.09
   18     3     3     1.06221499    -0.42731101  -341.89224477    -0.00000155    -0.00000082  0.23D-08  0.88D-07  1508.09
   18     4     4     1.06221510    -0.42731100  -341.89224475    -0.00000156    -0.00000083  0.22D-08  0.89D-07  1508.09
   18     5     5     1.06221437    -0.42731094  -341.89224469    -0.00000158    -0.00000084  0.21D-08  0.90D-07  1508.09
   18     6     6     1.05713528    -0.41994255  -341.86043214    -0.00000219    -0.00000116  0.74D-08  0.13D-06  1508.09
   18     7     7     1.05713299    -0.41994246  -341.86043205    -0.00000221    -0.00000119  0.70D-08  0.13D-06  1508.09
   18     8     8     1.05713350    -0.41994246  -341.86043205    -0.00000224    -0.00000118  0.75D-08  0.13D-06  1508.09
   19     1     1     1.06224825    -0.42731245  -341.89224620    -0.00000086    -0.00000048  0.24D-08  0.50D-07  1597.88
   19     2     2     1.06224511    -0.42731235  -341.89224610    -0.00000089    -0.00000051  0.28D-08  0.51D-07  1597.88
   19     3     3     1.06223103    -0.42731205  -341.89224580    -0.00000104    -0.00000059  0.74D-08  0.64D-07  1597.88
   19     4     4     1.06223021    -0.42731204  -341.89224579    -0.00000104    -0.00000059  0.69D-08  0.64D-07  1597.88
   19     5     5     1.06222949    -0.42731200  -341.89224575    -0.00000106    -0.00000060  0.74D-08  0.65D-07  1597.88
   19     6     6     1.05717005    -0.41994404  -341.86043363    -0.00000149    -0.00000084  0.76D-08  0.96D-07  1597.88
   19     7     7     1.05716822    -0.41994400  -341.86043359    -0.00000154    -0.00000086  0.71D-08  0.10D-06  1597.88
   19     8     8     1.05716804    -0.41994398  -341.86043356    -0.00000152    -0.00000086  0.78D-08  0.97D-07  1597.88
   20     1     1     1.06226978    -0.42731304  -341.89224679    -0.00000059    -0.00000031  0.28D-08  0.32D-07  1687.06
   20     2     2     1.06226745    -0.42731297  -341.89224672    -0.00000062    -0.00000033  0.27D-08  0.33D-07  1687.06
   20     3     3     1.06225740    -0.42731277  -341.89224653    -0.00000072    -0.00000039  0.35D-08  0.40D-07  1687.06
   20     4     4     1.06225692    -0.42731277  -341.89224652    -0.00000073    -0.00000039  0.32D-08  0.40D-07  1687.06
   20     5     5     1.06225582    -0.42731274  -341.89224649    -0.00000074    -0.00000039  0.30D-08  0.40D-07  1687.06
   20     6     6     1.05720154    -0.41994506  -341.86043465    -0.00000101    -0.00000052  0.33D-08  0.54D-07  1687.06
   20     7     7     1.05720026    -0.41994503  -341.86043462    -0.00000103    -0.00000052  0.30D-08  0.55D-07  1687.06
   20     8     8     1.05719969    -0.41994501  -341.86043460    -0.00000103    -0.00000053  0.31D-08  0.55D-07  1687.06
   21     1     1     1.06227861    -0.42731342  -341.89224718    -0.00000038    -0.00000021  0.51D-09  0.21D-07  1773.47
   21     2     2     1.06227701    -0.42731337  -341.89224712    -0.00000040    -0.00000022  0.52D-09  0.22D-07  1773.47
   21     3     3     1.06227405    -0.42731324  -341.89224699    -0.00000046    -0.00000026  0.10D-08  0.27D-07  1773.47
   21     4     4     1.06227409    -0.42731323  -341.89224698    -0.00000047    -0.00000026  0.10D-08  0.27D-07  1773.47
   21     5     5     1.06227361    -0.42731322  -341.89224697    -0.00000047    -0.00000026  0.11D-08  0.28D-07  1773.47
   21     6     6     1.05723490    -0.41994569  -341.86043528    -0.00000064    -0.00000035  0.12D-08  0.38D-07  1773.47
   21     7     7     1.05723480    -0.41994568  -341.86043527    -0.00000065    -0.00000035  0.12D-08  0.39D-07  1773.47
   21     8     8     1.05723323    -0.41994566  -341.86043524    -0.00000065    -0.00000036  0.12D-08  0.38D-07  1773.47
   22     1     1     1.06228745    -0.42731368  -341.89224744    -0.00000026    -0.00000015  0.90D-09  0.15D-07  1862.96
   22     2     2     1.06228567    -0.42731364  -341.89224740    -0.00000027    -0.00000016  0.94D-09  0.16D-07  1862.96
   22     3     3     1.06228034    -0.42731355  -341.89224731    -0.00000032    -0.00000019  0.12D-08  0.20D-07  1862.96
   22     4     4     1.06228008    -0.42731355  -341.89224730    -0.00000032    -0.00000019  0.11D-08  0.20D-07  1862.96
   22     5     5     1.06227972    -0.42731354  -341.89224729    -0.00000033    -0.00000019  0.11D-08  0.21D-07  1862.96
   22     6     6     1.05725397    -0.41994614  -341.86043572    -0.00000044    -0.00000026  0.12D-08  0.30D-07  1862.96
   22     7     7     1.05725358    -0.41994614  -341.86043572    -0.00000045    -0.00000026  0.11D-08  0.31D-07  1862.96
   22     8     8     1.05725274    -0.41994611  -341.86043569    -0.00000045    -0.00000027  0.11D-08  0.30D-07  1862.96
   23     1     1     1.06229882    -0.42731387  -341.89224762    -0.00000018    -0.00000010  0.24D-09  0.10D-07  1951.35
   23     2     2     1.06229713    -0.42731384  -341.89224759    -0.00000019    -0.00000011  0.20D-09  0.10D-07  1951.35
   23     3     3     1.06229119    -0.42731378  -341.89224753    -0.00000022    -0.00000012  0.28D-09  0.13D-07  1951.35
   23     4     4     1.06229083    -0.42731378  -341.89224753    -0.00000022    -0.00000012  0.27D-09  0.13D-07  1951.35
   23     5     5     1.06229036    -0.42731377  -341.89224752    -0.00000023    -0.00000013  0.26D-09  0.13D-07  1951.35
   23     6     6     1.05726728    -0.41994644  -341.86043603    -0.00000031    -0.00000016  0.36D-09  0.17D-07  1951.35
   23     7     7     1.05726734    -0.41994644  -341.86043603    -0.00000031    -0.00000016  0.39D-09  0.17D-07  1951.35
   23     8     8     1.05726608    -0.41994643  -341.86043601    -0.00000031    -0.00000017  0.38D-09  0.17D-07  1951.35
   24     1     1     1.06230557    -0.42731399  -341.89224774    -0.00000012    -0.00000007  0.31D-09  0.66D-08  2038.31
   24     2     2     1.06230436    -0.42731397  -341.89224772    -0.00000013    -0.00000007  0.33D-09  0.69D-08  2038.31
   24     3     3     1.06230231    -0.42731392  -341.89224768    -0.00000015    -0.00000008  0.40D-09  0.87D-08  2038.31
   24     4     4     1.06230225    -0.42731393  -341.89224768    -0.00000015    -0.00000008  0.39D-09  0.87D-08  2038.31
   24     5     5     1.06230201    -0.42731392  -341.89224767    -0.00000015    -0.00000009  0.40D-09  0.88D-08  2038.31
   24     6     6     1.05728492    -0.41994664  -341.86043623    -0.00000020    -0.00000011  0.20D-09  0.12D-07  2038.31
   24     7     7     1.05728427    -0.41994664  -341.86043623    -0.00000020    -0.00000011  0.21D-09  0.12D-07  2038.31
   24     8     8     1.05728305    -0.41994663  -341.86043621    -0.00000020    -0.00000012  0.20D-09  0.12D-07  2038.31
   25     1     1     1.06230557    -0.42731399  -341.89224774     0.00000000    -0.00000007  0.31D-09  0.66D-08  2073.92
   25     2     2     1.06230436    -0.42731397  -341.89224772    -0.00000000    -0.00000007  0.33D-09  0.69D-08  2073.92
   25     3     3     1.06230234    -0.42731393  -341.89224768    -0.00000000    -0.00000008  0.40D-09  0.87D-08  2073.92
   25     4     4     1.06230225    -0.42731393  -341.89224768    -0.00000000    -0.00000008  0.39D-09  0.87D-08  2073.92
   25     5     5     1.06230201    -0.42731392  -341.89224767    -0.00000000    -0.00000009  0.40D-09  0.88D-08  2073.92
   25     6     6     1.05734680    -0.41994706  -341.86043664    -0.00000041    -0.00000004  0.76D-09  0.39D-08  2073.92
   25     7     7     1.05734521    -0.41994705  -341.86043664    -0.00000041    -0.00000005  0.77D-09  0.52D-08  2073.92
   25     8     8     1.05734511    -0.41994705  -341.86043663    -0.00000042    -0.00000006  0.85D-09  0.54D-08  2073.92


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   3.3%  62.3%

 Initialization:   0.0%
 Other:           34.2%

 Total CPU:     2073.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/\/          -0.3747961   0.8949076   0.0000686  -0.0001853  -0.0000402   0.0000000   0.0000000  -0.0000000
 22222//\           0.8949042   0.3747956   0.0000299   0.0023880  -0.0000562  -0.0000000   0.0000000  -0.0000000
 2222220/           0.0000008   0.0000530  -0.6860509   0.0000000   0.0011109  -0.0021249   0.0002884   0.6792116
 222220/2           0.0000257   0.0000415   0.0011109   0.0000000   0.6860508   0.6792109   0.0001817   0.0021249
 222222/0          -0.0000257  -0.0000415  -0.0011109  -0.0000000  -0.6860508   0.6792110   0.0001817   0.0021249
 2222202/          -0.0000008  -0.0000530   0.6860505   0.0000000  -0.0011109  -0.0021249   0.0002884   0.6792114
 22222/02          -0.0016081  -0.0005314  -0.0000000   0.6860496   0.0000001  -0.0001808   0.6792147  -0.0002890
 22222/20           0.0016081   0.0005314   0.0000000  -0.6860495  -0.0000001  -0.0001808   0.6792148  -0.0002890
 20222/22           0.0000000   0.0000000  -0.0000000  -0.0000004  -0.0000000   0.0000404  -0.1519059   0.0000646
 202222/2          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.1519054  -0.0000406  -0.0004752
 2022222/          -0.0000000   0.0000000  -0.0000003   0.0000000   0.0000000   0.0004752  -0.0000645  -0.1519050

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222//\  11.1     0.0091241   0.0714675   0.0000055   0.0000767  -0.0000047  -0.0000000   0.0000000  -0.0000000
 2\222//\  13.1    -0.0000024  -0.0000039  -0.0001046   0.0000000  -0.0645992   0.0055754   0.0000015   0.0000174
 2\222//\  12.1    -0.0000001  -0.0000050   0.0645991   0.0000000  -0.0001046   0.0000174  -0.0000024  -0.0055742
 2/222\/\  15.1    -0.0001177  -0.0000389  -0.0000000   0.0501988   0.0000000   0.0000017  -0.0064373   0.0000027

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.940844   -0.002274    0.000036   -0.000001   -0.236965   -0.000000    0.000000    0.000000
 2           0.236964   -0.000752    0.000059   -0.000075    0.940848   -0.000000   -0.000000    0.000000
 3           0.000019   -0.000000    0.001571    0.970230    0.000072    0.000000    0.000000   -0.000000
 4           0.002389    0.970228    0.000000   -0.000000    0.000173    0.000000   -0.000000    0.000000
 5          -0.000050    0.000000    0.970230   -0.001571   -0.000048    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000259    0.972457   -0.003042
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.972462    0.000260    0.000413
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000414    0.003042    0.972458

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970230    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.970230   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.970231   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.970231    0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.970231    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.972462   -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.972463   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.972463


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.94084425 (fixed)   0.97023128 (relaxed)   0.97022967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000331   -0.00000000   -0.35060201
 Singles      0.02821779   -0.05486770   -0.06299695
 Pairs        0.03408798   -0.00000000   -0.01371503
 Total        1.06230908   -0.05486770   -0.42731399
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46493375
 Nuclear energy                         0.00000000
 Kinetic energy                       346.90238167
 One electron energy                 -472.22648841
 Two electron energy                  130.33424067
 Virial quotient                       -0.98555751
 Correlation energy                    -0.42731399
 !MRCI STATE 1.2 Energy              -341.892247741743

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.91887328 (Davidson, fixed reference)
 Cluster corrected energies          -341.91887178 (Davidson, relaxed reference)
 Cluster corrected energies          -341.91887328 (Davidson, rotated reference)

 Cluster corrected energies          -341.91538374 (Pople, fixed reference)
 Cluster corrected energies          -341.91538238 (Pople, relaxed reference)
 Cluster corrected energies          -341.91538374 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94084750 (fixed)   0.97023183 (relaxed)   0.97023022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000331   -0.00000000   -0.35060225
 Singles      0.02821791   -0.05486785   -0.06299710
 Pairs        0.03408665   -0.00000000   -0.01371461
 Total        1.06230787   -0.05486785   -0.42731397
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46493375
 Nuclear energy                         0.00000000
 Kinetic energy                       346.90239011
 One electron energy                 -472.22649756
 Two electron energy                  130.33424984
 Virial quotient                       -0.98555749
 Correlation energy                    -0.42731397
 !MRCI STATE 2.2 Energy              -341.892247719312

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.91887274 (Davidson, fixed reference)
 Cluster corrected energies          -341.91887124 (Davidson, relaxed reference)
 Cluster corrected energies          -341.91887274 (Davidson, rotated reference)

 Cluster corrected energies          -341.91538325 (Pople, fixed reference)
 Cluster corrected energies          -341.91538189 (Pople, relaxed reference)
 Cluster corrected energies          -341.91538325 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97022987 (fixed)   0.97023275 (relaxed)   0.97023114 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000331   -0.00000000   -0.35060262
 Singles      0.02821817   -0.05486823   -0.06299731
 Pairs        0.03408438    0.00000012   -0.01371399
 Total        1.06230586   -0.05486812   -0.42731393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46493375
 Nuclear energy                         0.00000000
 Kinetic energy                       346.90243002
 One electron energy                 -472.22653529
 Two electron energy                  130.33428761
 Virial quotient                       -0.98555737
 Correlation energy                    -0.42731393
 !MRCI STATE 3.2 Energy              -341.892247678261

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.91887184 (Davidson, fixed reference)
 Cluster corrected energies          -341.91887034 (Davidson, relaxed reference)
 Cluster corrected energies          -341.91887184 (Davidson, rotated reference)

 Cluster corrected energies          -341.91538243 (Pople, fixed reference)
 Cluster corrected energies          -341.91538107 (Pople, relaxed reference)
 Cluster corrected energies          -341.91538243 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97022823 (fixed)   0.97023279 (relaxed)   0.97023119 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000331   -0.00000000   -0.35060250
 Singles      0.02821820   -0.05486828   -0.06299734
 Pairs        0.03408426   -0.00000000   -0.01371409
 Total        1.06230577   -0.05486828   -0.42731393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46493375
 Nuclear energy                         0.00000000
 Kinetic energy                       346.90243263
 One electron energy                 -472.22653704
 Two electron energy                  130.33428937
 Virial quotient                       -0.98555737
 Correlation energy                    -0.42731392
 !MRCI STATE 4.2 Energy              -341.892247677267

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.91887180 (Davidson, fixed reference)
 Cluster corrected energies          -341.91887030 (Davidson, relaxed reference)
 Cluster corrected energies          -341.91887180 (Davidson, rotated reference)

 Cluster corrected energies          -341.91538239 (Pople, fixed reference)
 Cluster corrected energies          -341.91538103 (Pople, relaxed reference)
 Cluster corrected energies          -341.91538239 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97023002 (fixed)   0.97023290 (relaxed)   0.97023130 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000331   -0.00000000   -0.35060252
 Singles      0.02821825   -0.05486834   -0.06299738
 Pairs        0.03408396    0.00000000   -0.01371402
 Total        1.06230552   -0.05486834   -0.42731392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46493375
 Nuclear energy                         0.00000000
 Kinetic energy                       346.90243283
 One electron energy                 -472.22653841
 Two electron energy                  130.33429074
 Virial quotient                       -0.98555737
 Correlation energy                    -0.42731392
 !MRCI STATE 5.2 Energy              -341.892247671675

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.91887169 (Davidson, fixed reference)
 Cluster corrected energies          -341.91887019 (Davidson, relaxed reference)
 Cluster corrected energies          -341.91887169 (Davidson, rotated reference)

 Cluster corrected energies          -341.91538229 (Pople, fixed reference)
 Cluster corrected energies          -341.91538093 (Pople, relaxed reference)
 Cluster corrected energies          -341.91538229 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97245708 (fixed)   0.97250372 (relaxed)   0.97246187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008608    0.00000000   -0.36681835
 Singles      0.01469439   -0.03330522   -0.03732941
 Pairs        0.04265735    0.00120962   -0.01579929
 Total        1.05743782   -0.03209561   -0.41994706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.44048959
 Nuclear energy                         0.00000000
 Kinetic energy                       346.87538086
 One electron energy                 -472.13121258
 Two electron energy                  130.27077594
 Virial quotient                       -0.98554252
 Correlation energy                    -0.41994706
 !MRCI STATE 6.2 Energy              -341.860436644871

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.88455749 (Davidson, fixed reference)
 Cluster corrected energies          -341.88451927 (Davidson, relaxed reference)
 Cluster corrected energies          -341.88455749 (Davidson, rotated reference)

 Cluster corrected energies          -341.88132734 (Pople, fixed reference)
 Cluster corrected energies          -341.88129296 (Pople, relaxed reference)
 Cluster corrected energies          -341.88132734 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97246247 (fixed)   0.97250445 (relaxed)   0.97246260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008608    0.00000000   -0.36551980
 Singles      0.01469428   -0.03330515   -0.03732937
 Pairs        0.04265587   -0.00016417   -0.01709788
 Total        1.05743623   -0.03346932   -0.41994705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.44048959
 Nuclear energy                         0.00000000
 Kinetic energy                       346.87538065
 One electron energy                 -472.13121771
 Two electron energy                  130.27078108
 Virial quotient                       -0.98554252
 Correlation energy                    -0.41994705
 !MRCI STATE 7.2 Energy              -341.860436635153

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.88455681 (Davidson, fixed reference)
 Cluster corrected energies          -341.88451859 (Davidson, relaxed reference)
 Cluster corrected energies          -341.88455681 (Davidson, rotated reference)

 Cluster corrected energies          -341.88132673 (Pople, fixed reference)
 Cluster corrected energies          -341.88129235 (Pople, relaxed reference)
 Cluster corrected energies          -341.88132673 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97245780 (fixed)   0.97250450 (relaxed)   0.97246264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008609    0.00000000   -0.00003601
 Singles      0.01469440   -0.03330534   -0.03732944
 Pairs        0.04265564   -0.38663978   -0.38258160
 Total        1.05743613   -0.41994512   -0.41994705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.44048958
 Nuclear energy                         0.00000000
 Kinetic energy                       346.87535914
 One electron energy                 -472.13119989
 Two electron energy                  130.27076326
 Virial quotient                       -0.98554258
 Correlation energy                    -0.41994705
 !MRCI STATE 8.2 Energy              -341.860436629187

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.88455676 (Davidson, fixed reference)
 Cluster corrected energies          -341.88451854 (Davidson, relaxed reference)
 Cluster corrected energies          -341.88455676 (Davidson, rotated reference)

 Cluster corrected energies          -341.88132669 (Pople, fixed reference)
 Cluster corrected energies          -341.88129230 (Pople, relaxed reference)
 Cluster corrected energies          -341.88132669 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      348.56       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2093.77   2082.86      3.66      2.71      0.88      3.34
 REAL TIME  *      2182.87 SEC
 DISK USED  *       391.90 MB (local),        5.06 GB (total)
 SF USED    *         3.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -341.91887328  AU                              
 SETTING HLSDIAG(3)     =      -341.91887274  AU                              
 SETTING HLSDIAG(4)     =      -341.91887184  AU                              
 SETTING HLSDIAG(5)     =      -341.91887180  AU                              
 SETTING HLSDIAG(6)     =      -341.91887169  AU                              
 SETTING HLSDIAG(7)     =      -341.88455749  AU                              
 SETTING HLSDIAG(8)     =      -341.88455681  AU                              
 SETTING HLSDIAG(9)     =      -341.88455676  AU                              


         HLSDIAG
    -341.9687669
    -341.9188733
    -341.9188727
    -341.9188718
    -341.9188718
    -341.9188717
    -341.8845575
    -341.8845568
    -341.8845568
                                                  

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

 Time for Seward_LS:      13.02 sec

 CPU time:     13.02 sec, REAL time:     14.02 sec


 SORTLS1 read   167096336. and wrote   167096336. SO integrals in   660 records. CPU time:      1.50 sec, REAL time:      2.44 sec
 SORTLS2 read   167096336. and wrote   839252487. SO integrals in    36 records. CPU time:      0.97 sec, REAL time:      1.37 sec

 FILE SIZES: FILE 1:    45.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    45.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      348.56       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2109.82     15.96   2082.86      3.66      2.71      0.88      3.34
 REAL TIME  *      2201.28 SEC
 DISK USED  *       392.18 MB (local),       13.55 GB (total)
 SF USED    *         3.13 GB
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

 Original energies:   -341.946603
 Replaced energies:   -341.968767

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -341.892248   -341.892248   -341.892248   -341.892248   -341.892248   -341.860437   -341.860437   -341.860437
 Replaced energies:   -341.918873   -341.918873   -341.918872   -341.918872   -341.918872   -341.884557   -341.884557   -341.884557



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -341.96876687

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.56
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     178.39

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.05

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.32
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -102.99

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   10950.38       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.41       0.00       0.01

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   10950.49       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.05      -0.00       0.05

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   10950.69       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.21    -126.45

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   10950.70       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.41      -0.05      -0.00       0.00      -0.00       0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   10950.73       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.21       0.00      -0.00      -0.19

   10   6.2  0.5  0.5      -0.56       0.00      -0.32       0.00       0.00       0.00       0.00       0.00       0.00   18481.82
                         -178.39      -0.05     102.99      -0.00      -0.01      -0.05     126.45      -0.00       0.19      -0.00

   11   7.2  0.5  0.5       0.08       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05     205.97       0.03      -0.00      18.49     144.83       0.04       0.16      -0.06      -0.00

   12   8.2  0.5  0.5     178.38       0.00     102.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.56      -0.09       0.32      -0.00      -0.01      -0.07       0.19      -0.00    -126.45      -0.78

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.16      -0.00      -0.00       0.12
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.25    -116.19

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.39      -0.00      -0.00       0.08
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.34      88.44

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.16      -0.39      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.21      -0.00       0.04

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.21     126.45
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.21       0.00      -0.00       0.19

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.21      -0.00       0.03
                           -0.00      -0.00       0.00       0.00       0.25       0.34       0.00       0.00      -0.00      -0.00

   18   6.2  0.5 -0.5       0.00      -0.32       0.00      -0.56      -0.12      -0.08      -0.00    -126.45      -0.03      -0.00
                           -0.00    -102.99      -0.05     178.39     116.19     -88.44      -0.04      -0.19       0.00      -0.00

   19   7.2  0.5 -0.5       0.00       0.04       0.00       0.08       0.06       0.03       0.20      -0.03     126.45      -0.77
                           -0.00      -0.03     205.97       0.05       0.03      -0.03     126.46       0.05      -0.20       0.00

   20   8.2  0.5 -0.5       0.00     102.99       0.00     178.38     134.68      56.41       0.00      -0.04      -0.06       0.00
                           -0.00      -0.32      -0.09       0.56       0.07      -0.37      -0.05     126.46       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.08     178.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.32       0.04     102.99
                         -205.97       0.09       0.00       0.00       0.00      -0.00       0.00     102.99       0.03       0.32

    3   1.2  1.5 -0.5       0.04     102.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.32      -0.00       0.00      -0.00       0.00      -0.00       0.05    -205.97       0.09

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.56       0.08     178.38
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -178.39      -0.05      -0.56

    5   1.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.16       0.00       0.00      -0.12       0.06     134.68
                          -18.49       0.01       0.00      -0.00       0.00       0.00      -0.25    -116.19      -0.03      -0.07

    6   2.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.39       0.00       0.00      -0.08       0.03      56.41
                         -144.83       0.07       0.00      -0.00      -0.00      -0.00      -0.34      88.44       0.03       0.37

    7   3.2  0.5  0.5       0.00       0.00      -0.16       0.39      -0.00       0.00      -0.00      -0.00       0.20       0.00
                           -0.04      -0.19      -0.00       0.00      -0.00       0.21      -0.00       0.04    -126.46       0.05

    8   4.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.21    -126.45      -0.03      -0.04
                           -0.16       0.00      -0.00       0.00      -0.21      -0.00      -0.00       0.19      -0.05    -126.46

    9   5.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.21      -0.00      -0.03     126.45      -0.06
                            0.06     126.45       0.25       0.34       0.00       0.00       0.00      -0.00       0.20      -0.00

   10   6.2  0.5  0.5       0.00       0.00       0.12       0.08       0.00     126.45       0.03      -0.00      -0.77       0.00
                            0.00       0.78     116.19     -88.44      -0.04      -0.19       0.00       0.00      -0.00       0.00

   11   7.2  0.5  0.5   18481.97       0.00      -0.06      -0.03      -0.20       0.03    -126.45       0.77       0.00       0.00
                           -0.00       0.00       0.03      -0.03     126.46       0.05      -0.20       0.00      -0.00      -0.77

   12   8.2  0.5  0.5       0.00   18481.98    -134.68     -56.41      -0.00       0.04       0.06      -0.00      -0.00      -0.00
                           -0.00       0.00       0.07      -0.37      -0.05     126.46       0.00      -0.00       0.77       0.00

   13   1.2  0.5 -0.5      -0.06    -134.68   10950.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.07      -0.00      -0.00       0.00       0.41      -0.00      -0.01      18.49      -0.01

   14   2.2  0.5 -0.5      -0.03     -56.41       0.00   10950.49       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.37       0.00       0.00       0.00      -0.05       0.00      -0.05     144.83      -0.07

   15   3.2  0.5 -0.5      -0.20      -0.00       0.00       0.00   10950.69       0.00       0.00       0.00       0.00       0.00
                         -126.46       0.05      -0.00      -0.00      -0.00      -0.00      -0.21     126.45       0.04       0.19

   16   4.2  0.5 -0.5       0.03       0.04       0.00       0.00       0.00   10950.70       0.00       0.00       0.00       0.00
                           -0.05    -126.46      -0.41       0.05       0.00      -0.00       0.00      -0.00       0.16      -0.00

   17   5.2  0.5 -0.5    -126.45       0.06       0.00       0.00       0.00       0.00   10950.73       0.00       0.00       0.00
                            0.20      -0.00       0.00      -0.00       0.21      -0.00       0.00       0.19      -0.06    -126.45

   18   6.2  0.5 -0.5       0.77      -0.00       0.00       0.00       0.00       0.00       0.00   18481.82       0.00       0.00
                           -0.00       0.00       0.01       0.05    -126.45       0.00      -0.19       0.00      -0.00      -0.78

   19   7.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18481.97       0.00
                            0.00      -0.77     -18.49    -144.83      -0.04      -0.16       0.06       0.00       0.00      -0.00

   20   8.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18481.98
                            0.77      -0.00       0.01       0.07      -0.19       0.00     126.45       0.78       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -341.96878256    -0.00001569       -3.44      0.00000000        0.00      0.0000
     2  -341.96878256    -0.00001569       -3.44      0.00000000        0.00      0.0000
     3  -341.96878256    -0.00001569       -3.44      0.00000000        0.00      0.0000
     4  -341.96878256    -0.00001569       -3.44      0.00000000        0.00      0.0000
     5  -341.91892349     0.04984337    10939.36      0.04985907    10942.80      1.3567
     6  -341.91892349     0.04984337    10939.36      0.04985907    10942.80      1.3567
     7  -341.91892331     0.04984356    10939.40      0.04985925    10942.84      1.3567
     8  -341.91892331     0.04984356    10939.40      0.04985925    10942.84      1.3567
     9  -341.91887078     0.04989609    10950.93      0.04991178    10954.37      1.3582
    10  -341.91887078     0.04989609    10950.93      0.04991178    10954.37      1.3582
    11  -341.91887044     0.04989642    10951.00      0.04991212    10954.44      1.3582
    12  -341.91887044     0.04989642    10951.00      0.04991212    10954.44      1.3582
    13  -341.91886987     0.04989699    10951.12      0.04991269    10954.57      1.3582
    14  -341.91886987     0.04989699    10951.12      0.04991269    10954.57      1.3582
    15  -341.88454997     0.08421689    18483.47      0.08423259    18486.92      2.2921
    16  -341.88454997     0.08421689    18483.47      0.08423259    18486.92      2.2921
    17  -341.88449682     0.08427004    18495.14      0.08428573    18498.58      2.2935
    18  -341.88449682     0.08427004    18495.14      0.08428573    18498.58      2.2935
    19  -341.88449635     0.08427052    18495.24      0.08428621    18498.69      2.2935
    20  -341.88449635     0.08427052    18495.24      0.08428621    18498.69      2.2935


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.960689127   0.013455101  -0.003821435   0.276937291   0.000860001   0.000008221  -0.000074911  -0.000003845
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.003868034  -0.276936637   0.960690658   0.013293442  -0.000000119   0.000017331   0.000033585  -0.000643840
                         0.000007218  -0.000080457   0.001180543  -0.000004841   0.000000683  -0.000072849  -0.000029328   0.000568339

    3    1.2  1.5 -0.5  -0.276936592  -0.003868031  -0.013293437   0.960691215   0.000074861   0.000000693   0.000858559   0.000044569
                         0.000164942   0.000008398  -0.000013251  -0.000572770  -0.000001785   0.000000026  -0.000020421  -0.000001299

    4    1.2  1.5 -1.5  -0.013455101   0.960689080   0.276937243   0.003821434  -0.000001712   0.000179049  -0.000002821   0.000054966
                         0.000004105  -0.000293075   0.000175202   0.000002418   0.000008041  -0.000841156   0.000002612  -0.000050896

    5    1.2  0.5  0.5  -0.000002866   0.000204614   0.000088350   0.000001220   0.001289180  -0.135356486  -0.001091094   0.020264844
                        -0.000000004   0.000000435   0.000000217   0.000000010  -0.006014784   0.627871336   0.000831763  -0.016302431

    6    2.2  0.5  0.5   0.000001248  -0.000088358   0.000204592   0.000002819  -0.000088733   0.003518260  -0.024875980   0.477807629
                         0.000000002   0.000000156   0.000000304   0.000000013   0.000228313  -0.025158937   0.021745198  -0.422055353

    7    3.2  0.5  0.5  -0.000160606  -0.000002254  -0.000002123   0.000154508   0.264154996   0.002539877  -0.568279525  -0.029448251
                         0.000000119   0.000000003  -0.000000007   0.000000240   0.000540100  -0.000023095   0.012038856   0.000743532

    8    4.2  0.5  0.5  -0.000000005   0.000000346   0.000000405   0.000000006  -0.005818840   0.608686012  -0.001909653   0.037197805
                         0.000003000  -0.000214167  -0.000061670  -0.000000851  -0.001252652   0.131043015  -0.002020064   0.039361408

    9    5.2  0.5  0.5   0.000000228  -0.000000000  -0.000000010  -0.000000140  -0.001544504   0.000016826  -0.011916350  -0.000798138
                         0.000053661   0.000000754  -0.000002992   0.000216293  -0.357583328  -0.003425241  -0.512495910  -0.026594784

   10    6.2  0.5  0.5   0.000025106   0.000000386  -0.000000425   0.000021924  -0.000055047  -0.000001973   0.000320878   0.000026256
                         0.010818463   0.000150639   0.000040053  -0.002681154  -0.025042360  -0.000239971   0.017496903   0.000913047

   11    7.2  0.5  0.5  -0.000003202  -0.000000943   0.000013207  -0.000003463  -0.000012425   0.002581161   0.001044055  -0.020124187
                        -0.000040224   0.003087063  -0.010708838  -0.000148898  -0.000010922   0.000613952   0.001193753  -0.022797693

   12    8.2  0.5  0.5  -0.007730845  -0.000108335   0.000110979  -0.008028125   0.027694580   0.000263242   0.012905236   0.000679868
                         0.000032943  -0.000000886   0.000004746  -0.000005132  -0.000109943  -0.000000552  -0.000307344  -0.000010467

   13    1.2  0.5 -0.5  -0.000204614  -0.000002866   0.000001220  -0.000088350   0.642293550   0.006151385   0.025945515   0.001365705
                         0.000000497   0.000000005  -0.000000010   0.000000161  -0.001669896  -0.000008674  -0.001806497  -0.000131008

   14    2.2  0.5 -0.5   0.000088358   0.000001248   0.000002819  -0.000204592  -0.025340119  -0.000241784   0.637343967   0.033026861
                         0.000000129  -0.000000003  -0.000000011   0.000000174  -0.001796835   0.000039254  -0.014950543  -0.000945782

   15    3.2  0.5 -0.5   0.000002254  -0.000160606   0.000154509   0.000002123  -0.000551382   0.054467845  -0.022112769   0.425153465
                         0.000000002  -0.000000070  -0.000000142  -0.000000006   0.002479412  -0.258479027   0.019462214  -0.377267921

   16    4.2  0.5 -0.5  -0.000000411  -0.000000006   0.000000005  -0.000000366   0.001445262   0.000013741   0.000550825   0.000028729
                        -0.000214167  -0.000003000   0.000000851  -0.000061670   0.622630584   0.005952129  -0.054154351  -0.002779677

   17    5.2  0.5 -0.5   0.000000001   0.000000212  -0.000000003   0.000000012  -0.003353687   0.349426062   0.017483439  -0.339457213
                         0.000000754  -0.000053661  -0.000216294  -0.000002992  -0.000696665   0.075958208   0.020056144  -0.384139112

   18    6.2  0.5 -0.5  -0.000000340   0.000021805   0.000020228   0.000000399  -0.000234302   0.024482148  -0.000601078   0.011652331
                         0.000150639  -0.010818470   0.002681167   0.000040054  -0.000051891   0.005267569  -0.000687786   0.013056330

   19    7.2  0.5 -0.5   0.000001885  -0.000003189  -0.000003558  -0.000006432   0.000063110   0.000008095   0.000723162   0.000044988
                         0.003087062   0.000040225   0.000148896  -0.010708844   0.002652422   0.000014426   0.030400572   0.001585267

   20    8.2  0.5 -0.5   0.000108334  -0.007730854  -0.008028127  -0.000110982  -0.000055346   0.005873445   0.000505963  -0.009678008
                        -0.000000919  -0.000030585   0.000000053   0.000004676   0.000257359  -0.027064820  -0.000454237   0.008542584


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000989  -0.000012017  -0.000000159   0.000000000   0.000000000  -0.000000696  -0.000000007  -0.000075143
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000001203   0.000000099  -0.000000028  -0.000003810   0.000001282  -0.000000000  -0.000036742  -0.000000021
                         0.000000071   0.000000006  -0.000000016   0.000006651  -0.000000757   0.000000000   0.000001201  -0.000000005

    3    1.2  1.5 -0.5   0.000000100  -0.000001205  -0.000007571  -0.000000005  -0.000000000  -0.000001489  -0.000000021   0.000036760
                         0.000000001  -0.000000013   0.000001193  -0.000000032  -0.000000000   0.000000008   0.000000006  -0.000000234

    4    1.2  1.5 -1.5   0.000011988   0.000000986  -0.000000000  -0.000000057   0.000000597   0.000000000   0.000075086  -0.000000007
                         0.000000836   0.000000069   0.000000000   0.000000149  -0.000000357  -0.000000000  -0.000002932   0.000000000

    5    1.2  0.5  0.5   0.758750049   0.062443708  -0.000186551  -0.027246260   0.016818482  -0.000003407   0.000121511  -0.000000016
                         0.054577781   0.004476116  -0.000111915   0.049541244  -0.009996046  -0.000000838  -0.000004492  -0.000000001

    6    2.2  0.5  0.5  -0.058017941  -0.004738125  -0.002783606  -0.380374486   0.046865854   0.000002523  -0.000080079  -0.000000043
                        -0.005745333  -0.000461550  -0.001606554   0.663469578  -0.027678012  -0.000001972   0.000002823  -0.000000009

    7    3.2  0.5  0.5   0.018572853  -0.225906959   0.499872088   0.000316209  -0.000007851  -0.546092629  -0.000000032   0.000119108
                        -0.000066689   0.001028341  -0.078863654   0.002098914  -0.000050522   0.002633951   0.000000009  -0.000000360

    8    4.2  0.5  0.5  -0.038439448  -0.003162323   0.000007184  -0.013875769  -0.288343326   0.000042110  -0.000004851   0.000000000
                         0.533064479   0.043869919  -0.000011506  -0.006683447  -0.487691470   0.000009130  -0.000129808   0.000000011

    9    5.2  0.5  0.5   0.000013384  -0.000116714   0.060032482  -0.001638744   0.000013000   0.002190090  -0.000000008   0.000000155
                        -0.022475094   0.272989629   0.389841310   0.000254129   0.000028683   0.614362263  -0.000000037  -0.000010774

   10    6.2  0.5  0.5  -0.000000111   0.000001445  -0.000020557   0.000000627  -0.000000006   0.000000003  -0.000012444   0.001851108
                        -0.000028439   0.000345544  -0.000128469  -0.000000041  -0.000000014  -0.000006603   0.000034303   0.582308287

   11    7.2  0.5  0.5  -0.000002558  -0.000000393   0.000000492  -0.000237580   0.000025961  -0.000000022   0.018818548   0.000231204
                         0.000043359   0.000003676  -0.000001037  -0.000136084   0.000043950  -0.000000004   0.574853106  -0.000034238

   12    8.2  0.5  0.5   0.000032106  -0.000390037  -0.000140027   0.000000023  -0.000000013  -0.000044317   0.000178604   0.574543175
                        -0.000000096   0.000000859   0.000020876  -0.000000513  -0.000000020   0.000000117  -0.000237119  -0.001826931

   13    1.2  0.5 -0.5  -0.062603815   0.760708627   0.055994863   0.000038182   0.000002494   0.019564753   0.000000016   0.000121593
                         0.000121128  -0.001660108  -0.007827442   0.000214169  -0.000002468  -0.000051981  -0.000000002  -0.000000253

   14    2.2  0.5 -0.5   0.004758755  -0.058277069   0.755410188   0.000510502  -0.000003178   0.054427867   0.000000043  -0.000080128
                        -0.000130806   0.001695166  -0.119298273   0.003173148  -0.000000398  -0.000296465  -0.000000011   0.000000304

   15    3.2  0.5 -0.5   0.225288078   0.018523214   0.001848889   0.251628873   0.470045683   0.000019190  -0.000119031  -0.000000032
                         0.016741958   0.001358622   0.001042611  -0.439060919  -0.277994879   0.000047390   0.000004288  -0.000000007

   16    4.2  0.5 -0.5   0.000102677  -0.001261582  -0.001306603   0.000013309  -0.000031456   0.002808051   0.000000000   0.000000218
                         0.043983628  -0.534447133  -0.015345951  -0.000002618   0.000029447   0.566548284   0.000000011   0.000129898

   17    5.2  0.5 -0.5  -0.018875169  -0.001550217   0.000820799  -0.342939681   0.313411904  -0.000003563  -0.000000575  -0.000000007
                         0.272336335   0.022421572  -0.001440956  -0.194865391   0.528411549  -0.000031289  -0.000010759   0.000000037

   18    6.2  0.5 -0.5  -0.000025481  -0.000002089  -0.000000261   0.000112737  -0.000003391   0.000000001   0.020873180  -0.000013773
                         0.000344606   0.000028362   0.000000572   0.000064939  -0.000005666   0.000000015   0.581937005  -0.000033791

   19    7.2  0.5 -0.5   0.000000136   0.000000465  -0.000042604   0.000001144   0.000000017  -0.000000274  -0.000232364  -0.003627746
                         0.000003695  -0.000043432  -0.000270459  -0.000000091  -0.000000015  -0.000051044  -0.000025189  -0.575149608

   20    8.2  0.5 -0.5   0.000389032   0.000032022  -0.000000488  -0.000069352   0.000038096  -0.000000001  -0.574176864   0.000187721
                         0.000027992   0.000002330  -0.000000161   0.000123425  -0.000022644   0.000000024   0.020594327   0.000229969


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.011654718  -0.000005457   0.007064840   0.000006741
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000243  -0.007062751  -0.000016971   0.011649635
                         0.000000346   0.000169377   0.000001017  -0.000330237

    3    1.2  1.5 -0.5   0.007064648  -0.000000253   0.011654095   0.000016996
                        -0.000043432  -0.000000339  -0.000071651   0.000000431

    4    1.2  1.5 -1.5  -0.000005454   0.011649430  -0.000006737   0.007060639
                         0.000000164  -0.000351043   0.000000232  -0.000243603

    5    1.2  0.5  0.5  -0.000009477   0.018526969  -0.000015356   0.014734515
                         0.000000356  -0.000520360   0.000001484  -0.000463792

    6    2.2  0.5  0.5  -0.000000817  -0.014737118  -0.000028644   0.018526537
                         0.000000589   0.000384886   0.000003134  -0.000506100

    7    3.2  0.5  0.5   0.020757630   0.000003245   0.011401090   0.000021165
                        -0.000064544  -0.000000489  -0.000069492   0.000000660

    8    4.2  0.5  0.5   0.000000264  -0.000578003   0.000000346  -0.000374438
                         0.000009479  -0.020244377   0.000011710  -0.012271437

    9    5.2  0.5  0.5   0.000031750   0.000000702   0.000089370  -0.000002356
                         0.000506001  -0.000005124   0.023676748   0.000031481

   10    6.2  0.5  0.5   0.002517611   0.000013661  -0.000091197  -0.000020588
                         0.812130686   0.000386204  -0.017094831  -0.000025877

   11    7.2  0.5  0.5  -0.000188662  -0.010223104   0.000243206   0.019760749
                         0.000204760  -0.426302484  -0.001020974   0.697066097

   12    8.2  0.5  0.5  -0.396243932  -0.000288666   0.715417025   0.000850163
                         0.001262697   0.000172189  -0.002200118  -0.000283406

   13    1.2  0.5 -0.5   0.018534237   0.000009483  -0.014741746  -0.000015398
                        -0.000037913   0.000000071   0.000044544  -0.000000954

   14    2.2  0.5 -0.5  -0.014742024   0.000000834  -0.018532972  -0.000028735
                         0.000059175   0.000000564   0.000133014  -0.000002144

   15    3.2  0.5 -0.5   0.000003258  -0.020750156  -0.000021130   0.011396707
                         0.000000391   0.000560710   0.000001390  -0.000323671

   16    4.2  0.5 -0.5   0.000032025   0.000000021  -0.000048917  -0.000000057
                         0.020252602   0.000009483  -0.012277051  -0.000011715

   17    5.2  0.5 -0.5   0.000000856  -0.000016495   0.000003440  -0.000727081
                         0.000005101   0.000506728   0.000031381  -0.023665750

   18    6.2  0.5 -0.5   0.000002022   0.021945115   0.000019683   0.000498305
                        -0.000386440   0.811838039  -0.000026571   0.017087810

   19    7.2  0.5 -0.5   0.002621874   0.000194744   0.004286550   0.000278266
                         0.426416985   0.000198984   0.697332959   0.001011981

   20    8.2  0.5 -0.5  -0.000293722   0.396102182  -0.000859430   0.715067467
                        -0.000163416  -0.010672845  -0.000253923  -0.022469497


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  92.292%   0.018%   0.001%   7.669%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.001%   7.669%  92.293%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   7.669%   0.001%   0.018%  92.293%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.018%  92.292%   7.669%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.004%  41.254%   0.000%   0.068%  57.868%   0.392%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.065%   0.109%  40.643%   0.340%   0.002%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   6.978%   0.001%  32.309%   0.087%   0.034%   5.104%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.004%  38.767%   0.001%   0.293%  28.564%   0.193%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  12.787%   0.001%  26.279%   0.071%   0.051%   7.452%
   10    6.2  0.5  0.5   0.012%   0.000%   0.000%   0.001%   0.063%   0.000%   0.031%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.001%   0.011%   0.000%   0.000%   0.001%   0.000%   0.092%   0.000%   0.000%
   12    8.2  0.5  0.5   0.006%   0.000%   0.000%   0.006%   0.077%   0.000%   0.017%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  41.254%   0.004%   0.068%   0.000%   0.392%  57.868%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.065%   0.000%  40.643%   0.109%   0.002%   0.340%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   6.978%   0.087%  32.309%   5.104%   0.034%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  38.767%   0.004%   0.293%   0.001%   0.193%  28.564%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%  12.787%   0.071%  26.279%   7.452%   0.051%
   18    6.2  0.5 -0.5   0.000%   0.012%   0.001%   0.000%   0.000%   0.063%   0.000%   0.031%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.001%   0.000%   0.000%   0.011%   0.001%   0.000%   0.092%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.006%   0.006%   0.000%   0.000%   0.077%   0.000%   0.017%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.005%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.014%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.014%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.005%
    5    1.2  0.5  0.5   0.000%   0.320%   0.038%   0.000%   0.000%   0.000%   0.000%   0.034%   0.000%   0.022%
    6    2.2  0.5  0.5   0.001%  58.488%   0.296%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%   0.034%
    7    3.2  0.5  0.5  25.609%   0.000%   0.000%  29.822%   0.000%   0.000%   0.043%   0.000%   0.013%   0.000%
    8    4.2  0.5  0.5   0.000%   0.024%  32.098%   0.000%   0.000%   0.000%   0.000%   0.041%   0.000%   0.015%
    9    5.2  0.5  0.5  15.558%   0.000%   0.000%  37.745%   0.000%   0.000%   0.000%   0.000%   0.056%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.909%  65.956%   0.000%   0.029%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.081%   0.000%   0.000%  18.184%   0.000%  48.629%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.010%  15.701%   0.000%  51.183%   0.000%
   13    1.2  0.5 -0.5   0.320%   0.000%   0.000%   0.038%   0.000%   0.000%   0.034%   0.000%   0.022%   0.000%
   14    2.2  0.5 -0.5  58.488%   0.001%   0.000%   0.296%   0.000%   0.000%   0.022%   0.000%   0.034%   0.000%
   15    3.2  0.5 -0.5   0.000%  25.609%  29.822%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.013%
   16    4.2  0.5 -0.5   0.024%   0.000%   0.000%  32.098%   0.000%   0.000%   0.041%   0.000%   0.015%   0.000%
   17    5.2  0.5 -0.5   0.000%  15.558%  37.745%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.056%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.909%   0.000%   0.000%  65.956%   0.000%   0.029%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.081%  18.184%   0.000%  48.629%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.010%   0.000%   0.000%  15.701%   0.000%  51.183%


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
              1      24       43.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      348.56       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3335.62   1225.80     15.96   2082.86      3.66      2.71      0.88      3.34
 REAL TIME  *      3471.62 SEC
 DISK USED  *       392.18 MB (local),       13.55 GB (total)
 SF USED    *         3.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -341.884496346429

              CI              CI           MULTI         RHF-SCF
   -341.86043663   -341.94660309   -341.44048958   -341.53465557
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
