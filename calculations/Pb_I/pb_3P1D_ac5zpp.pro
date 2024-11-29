
 Working directory              : /wrk/irikura/molpro.6Br4y8Vrxt/
 Global scratch directory       : /wrk/irikura/molpro.6Br4y8Vrxt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.6Br4y8Vrxt/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=3
 NSING=5
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5203.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5203.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Nov-24          TIME: 14:47:44  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Pb   ECP ECP60MDF                 selected for group  1
 Library entry PB     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  PB     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         459
 NUMBER OF SYMMETRY AOS:          327
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

         1 0.182E-04 0.215E-04 0.215E-04 0.215E-04 0.215E-04 0.215E-04 0.416E-04 0.287E-03
         2 0.228E-05 0.228E-05 0.228E-05 0.344E-03 0.344E-03 0.344E-03 0.263E-02 0.263E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     561.250 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 54.526 MB, node maximum: 79.692 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   39102068.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     6708865. INTEGRALS IN     21 RECORDS. CPU TIME:     1.88 SEC, REAL TIME:     1.97 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2056 RECORDS. CPU TIME:     0.73 SEC, REAL TIME:     0.80 SEC

 Node minimum:    39095432.  Node maximum:    39129437. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.33      9.15
 REAL TIME  *        10.51 SEC
 DISK USED  *        30.87 MB (local),        1.33 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   6   7
 Initial beta  occupancy:   4   6

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -140.99982922    -140.99982922     0.00D+00     0.17D+00     0     0       0.20      0.36    start
   2     -179.13724883     -38.13741961     0.12D+00     0.20D+00     1     0       0.21      0.57    diag2
   3     -187.65821793      -8.52096910     0.12D+00     0.69D-01     2     0       0.20      0.77    diag2
   4     -191.43589977      -3.77768184     0.56D-01     0.52D-01     3     0       0.21      0.98    diag2
   5     -191.76236040      -0.32646063     0.11D-01     0.20D-01     4     0       0.20      1.18    diag2
   6     -191.85259294      -0.09023254     0.35D-02     0.59D-02     5     0       0.21      1.39    diag2
   7     -191.86165799      -0.00906506     0.11D-02     0.19D-02     6     0       0.20      1.59    diag2
   8     -191.86377777      -0.00211978     0.51D-03     0.75D-03     7     0       0.21      1.80    fixocc
   9     -191.86430757      -0.00052980     0.17D-03     0.68D-03     8     0       0.20      2.00    diag2
  10     -191.86437455      -0.00006697     0.11D-03     0.20D-03     9     0       0.21      2.21    diag2/orth
  11     -191.86439091      -0.00001636     0.22D-04     0.95D-04     9     0       0.19      2.40    diag2
  12     -191.86439559      -0.00000469     0.11D-04     0.40D-04     9     0       0.21      2.61    diag2
  13     -191.86439698      -0.00000139     0.46D-05     0.33D-04     9     0       0.20      2.81    diag2
  14     -191.86439720      -0.00000022     0.18D-05     0.15D-04     9     0       0.21      3.02    diag2
  15     -191.86439723      -0.00000003     0.71D-06     0.54D-05     9     0       0.20      3.22    diag2
  16     -191.86439724      -0.00000001     0.30D-06     0.32D-05     9     0       0.21      3.43    diag2
  17     -191.86439724      -0.00000000     0.10D-06     0.35D-06     0     0       0.20      3.63    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240740
  RHF One-electron energy            -340.681776747406
  RHF Two-electron energy             148.817379506667
  RHF Kinetic energy                   62.712671790026
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419918882

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    1.00000
    2.1     2.00000    -0.84962     1  1  d0  -0.51226    1  1  d2+  0.85799
    3.1     2.00000    -0.84962     1  1  d1+  0.99935
    4.1     2.00000    -0.84962     1  1  d2-  0.99921
    5.1     2.00000    -0.84962     1  1  d1-  0.99935
    6.1     2.00000    -0.84962     1  1  d0   0.85814    1  1  d2+  0.51212
    7.1     2.00000    -0.35280     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42682    1 11  s   -0.25488
    1.2     2.00000    -3.63192     1  1  px   1.00018
    2.2     2.00000    -3.63191     1  1  pz   1.00025
    3.2     2.00000    -3.63191     1  1  py   1.00018
    4.2     1.00000    -0.05163     1  5  py   0.35609    1  6  py   0.37649    1  7  py   0.25408
    5.2     1.00000    -0.05163     1  5  pz   0.35611    1  6  pz   0.37651    1  7  pz   0.25410
    6.2     1.00000    -0.05163     1  5  px   0.35609    1  6  px   0.37647    1  7  px   0.25412


 HOMO      6.2    -0.051631 =      -1.4050eV
 LUMO      7.2     0.120361 =       3.2752eV
 LUMO-HOMO         0.171992 =       4.6801eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.51       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        12.97      3.64      9.15
 REAL TIME  *        14.34 SEC
 DISK USED  *        36.95 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.383D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.165D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.381D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 6 2 1 1 5 4   3 2 6 1 5 3 4 2 6 7  11 8141015 91312 1 2   6 4 3 510 91315 714
                                        81211 6 2 4 3 5 110   91315 7 8141211 5 4   3 6 2 110 91315 7 8  14121116282220211824
                                       261917232527 5 4 3 6   210 91315 714 81211   1 5 4 3 6 210 91315   714 81211 1 5 4 3 6
                                        2 1 5 4 3 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.167D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.116D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.217D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.182D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 710 9 4 8 5 6 3   2 1 6 5 4 810 9 7 7  10 9 8 4 6 5 3 2 120
                                       13181511171614211912   710 9 8 4 6 5 1 3 2  20131815111617142119  12 710 9 8 4 6 52013
                                       181511171621141912 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 511131815  20171621141912 1 3 2
                                        710 9 8 4 5 6 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    3731
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   18   30    0   -191.80205234    -191.82807098   -0.02601865    0.10557805 0.00031453 0.00000000  0.17E+01      2.39
   2    7   12    0   -191.82369996    -191.82446351   -0.00076355    0.06360017 0.00003821 0.00000000  0.15E+00      4.35
   3    8   14    0   -191.82446546    -191.82446548   -0.00000002    0.00023523 0.00000052 0.00000000  0.14E-02      6.40
   4   21   42    0   -191.82446548    -191.82446548    0.00000000    0.00000005 0.00000002 0.00000000  0.20E-06      8.95

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.28E-07)
                       Final energy:   -191.82446548
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.844604661436
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68032079
 One electron energy                          -335.74394387
 Two electron energy                           143.89933921
 Virial ratio                                    4.06068320
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.844604661251
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68032079
 One electron energy                          -335.74394386
 Two electron energy                           143.89933920
 Virial ratio                                    4.06068320
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.844604661220
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68032079
 One electron energy                          -335.74394385
 Two electron energy                           143.89933919
 Virial ratio                                    4.06068320
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.812381976771
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64731687
 One electron energy                          -335.60752461
 Two electron energy                           143.79514263
 Virial ratio                                    4.06178128
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.812381976769
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64731687
 One electron energy                          -335.60752461
 Two electron energy                           143.79514263
 Virial ratio                                    4.06178128
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.812381976695
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64731687
 One electron energy                          -335.60752459
 Two electron energy                           143.79514261
 Virial ratio                                    4.06178128
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.812381976694
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64731687
 One electron energy                          -335.60752459
 Two electron energy                           143.79514262
 Virial ratio                                    4.06178128
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.812381976671
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64731687
 One electron energy                          -335.60752459
 Two electron energy                           143.79514261
 Virial ratio                                    4.06178128
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999798512173
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000249
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000016
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.000201230839
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999168
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000001052
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.024685911233
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999993454035
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000002598338
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.975329848307
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000832
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999998948
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.975515576594
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000006545715
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999997401647
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.024468920854
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 3 5   6 2 4 1 5 3 6 2 413  10151411 812 7 9 1 5   3 6 2 41310151411 8
                                       12 7 9 5 3 6 2 4 113  10151411 812 7 9 3 5   6 2 4 11310151411 8  12 7 922162018241923
                                       262717212528 3 5 6 2   41013151411 812 7 9   1 3 5 6 4 210131415  1112 8 7 9 1 3 5 6 4
                                        2 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 3 9 7 810 5 6 4 2   1 3 9 7 810 5 6 4 7   9 810 5 6 4 1 2 318
                                       20151714161221131911   9 7 810 5 6 4 2 1 3  18201517161412211319  11 9 7 810 5 6 41820
                                       151716141221131911 9   7 810 5 6 4 2 1 3 9   710 8 5 6 420181517  16141221131911 2 1 3
                                        9 710 8 5 6 4 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.18002     1  1  s    0.99650
    2.1     2.00000    -1.08099     1  1  d2-  1.00012
    3.1     2.00000    -1.08099     1  1  d2+  1.00012
    4.1     2.00000    -1.08099     1  1  d1-  1.00012
    5.1     2.00000    -1.08099     1  1  d1+  1.00012
    6.1     2.00000    -1.08099     1  1  d0   1.00012
    7.1     1.97333    -0.56552     1  1  s   -0.40321    1  5  s    0.59146    1  6  s    0.43636    1 11  s   -0.26117
    1.2     2.00000    -3.86300     1  1  py   0.99983
    2.2     2.00000    -3.86300     1  1  px   0.99983
    3.2     2.00000    -3.86300     1  1  pz   0.99983
    4.2     0.67166    -0.06647     1  5  pz   0.41518    1  6  pz   0.41538
    5.2     0.67166    -0.06647     1  5  px   0.41518    1  6  px   0.41538
    6.2     0.67166    -0.06647     1  5  py   0.41518    1  6  py   0.41538
    7.2     0.00390     0.40537     1  1  pz   0.38474    1  4  pz  -1.04152    1  5  pz  -0.42861    1  6  pz   0.78006
                                    1  7  pz   0.32985
    8.2     0.00390     0.40537     1  1  px   0.38474    1  4  px  -1.04152    1  5  px  -0.42861    1  6  px   0.78006
                                    1  7  px   0.32985
    9.2     0.00390     0.40537     1  1  py   0.38474    1  4  py  -1.04152    1  5  py  -0.42861    1  6  py   0.78006
                                    1  7  py   0.32985
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a000       0.99285670     -0.00000000     -0.00000000
 2 0aa000       0.00000000      0.99285670      0.00002864
 2 aa0000      -0.00000000     -0.00002864      0.99285670
 0 aa2000       0.00000000      0.00000241     -0.08351936
 0 a2a000      -0.08351936      0.00000000     -0.00000000
 0 2aa000      -0.00000000     -0.08351936     -0.00000241
 
 Energy:     -191.84460466   -191.84460466   -191.84460466
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000      -0.00574857     -0.00000002      0.00001356      0.00000125      0.80994492
 2 200000       0.70430717      0.00000269      0.00000513     -0.00000216     -0.39999405
 2 b0a000       0.00000268     -0.70145055     -0.00000000      0.00000000     -0.00000000
 2 a0b000      -0.00000268      0.70145055      0.00000000     -0.00000000      0.00000000
 2 0ab000       0.00000156      0.00000000     -0.00103603      0.70144978     -0.00000105
 2 0ba000      -0.00000156     -0.00000000      0.00103603     -0.70144978      0.00000105
 2 ba0000       0.00001182      0.00000000     -0.70144978     -0.00103603      0.00001183
 2 ab0000      -0.00001182     -0.00000000      0.70144978      0.00103603     -0.00001183
 2 002000      -0.69855859     -0.00000267     -0.00001869      0.00000092     -0.40995087
 0 202000      -0.00048295     -0.00000000      0.00000114      0.00000010      0.06804458
 0 022000       0.05916981      0.00000023      0.00000043     -0.00000018     -0.03360405
 0 b2a000      -0.00000022      0.05892982      0.00000000     -0.00000000      0.00000000
 0 a2b000       0.00000022     -0.05892982     -0.00000000      0.00000000     -0.00000000
 0 ab2000       0.00000099      0.00000000     -0.05892976     -0.00008704      0.00000099
 0 ba2000      -0.00000099     -0.00000000      0.05892976      0.00008704     -0.00000099
 0 2ab000      -0.00000013     -0.00000000      0.00008704     -0.05892976      0.00000009
 0 2ba000       0.00000013      0.00000000     -0.00008704      0.05892976     -0.00000009
 0 220000      -0.05868686     -0.00000022     -0.00000157      0.00000008     -0.03444053
 
 Energy:     -191.81238198   -191.81238198   -191.81238198   -191.81238198   -191.81238198
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        22.23      9.26      3.64      9.15
 REAL TIME  *        25.15 SEC
 DISK USED  *        89.89 MB (local),        1.79 GB (total)
 SF USED    *       148.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8446047   2.0
    -191.8446047   2.0
    -191.8446047   2.0
    -191.8123820   6.0
    -191.8123820   6.0
    -191.8123820   6.0
    -191.8123820   6.0
    -191.8123820   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.84460466
     2      -191.84460466
     3      -191.84460466

 Number of blocks in overlap matrix:   378   Smallest eigenvalue:  0.50D-05
 Number of N-2 electron functions:     683
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      10587386
 Total number of contracted configurations:     21650477
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  13037406 words, CPU-Time:      7.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3137074 words, CPU-time:      1.40 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.84460466    -0.00000000    -0.94271060  0.57D-01  0.10D+00    13.68
    1     2     2     1.00000000     0.00000000  -191.84460466    -0.00000000    -0.94261991  0.57D-01  0.10D+00    13.68
    1     3     3     1.00000000     0.00000000  -191.84460466     0.00000000    -0.94279763  0.57D-01  0.10D+00    13.68
    2     1     1     1.09917392    -0.75847818  -192.60308285    -0.75847818    -0.02532597  0.37D-02  0.15D-02   388.87
    2     2     2     1.09923326    -0.75841914  -192.60302380    -0.75841914    -0.02539219  0.37D-02  0.15D-02   388.87
    2     3     3     1.09929983    -0.75835398  -192.60295864    -0.75835398    -0.02546380  0.37D-02  0.15D-02   388.87
    3     1     1     1.08726403    -0.78180078  -192.62640544    -0.02332260    -0.00034274  0.42D-04  0.32D-04   763.58
    3     2     2     1.08726290    -0.78179916  -192.62640382    -0.02338002    -0.00034433  0.42D-04  0.32D-04   763.58
    3     3     3     1.08726197    -0.78179749  -192.62640215    -0.02344351    -0.00034590  0.42D-04  0.32D-04   763.58
    4     1     1     1.08696481    -0.78214673  -192.62675139    -0.00034594    -0.00001382  0.25D-05  0.19D-05  1138.60
    4     2     2     1.08696443    -0.78214667  -192.62675133    -0.00034751    -0.00001386  0.25D-05  0.19D-05  1138.60
    4     3     3     1.08696401    -0.78214662  -192.62675128    -0.00034913    -0.00001390  0.25D-05  0.19D-05  1138.60
    5     1     1     1.08705347    -0.78216359  -192.62676825    -0.00001686    -0.00000107  0.57D-07  0.21D-06  1512.40
    5     2     2     1.08705328    -0.78216358  -192.62676824    -0.00001691    -0.00000108  0.57D-07  0.21D-06  1512.40
    5     3     3     1.08705308    -0.78216358  -192.62676824    -0.00001696    -0.00000108  0.57D-07  0.21D-06  1512.40
    6     1     1     1.08706275    -0.78216500  -192.62676966    -0.00000141    -0.00000010  0.12D-07  0.16D-07  1886.12
    6     2     2     1.08706276    -0.78216500  -192.62676966    -0.00000141    -0.00000010  0.12D-07  0.16D-07  1886.12
    6     3     3     1.08706278    -0.78216499  -192.62676966    -0.00000142    -0.00000010  0.12D-07  0.16D-07  1886.12
    7     1     1     1.08707297    -0.78216512  -192.62676978    -0.00000012    -0.00000001  0.86D-09  0.14D-08  2259.67
    7     2     2     1.08707295    -0.78216512  -192.62676978    -0.00000012    -0.00000001  0.86D-09  0.14D-08  2259.67
    7     3     3     1.08707298    -0.78216512  -192.62676978    -0.00000013    -0.00000001  0.87D-09  0.14D-08  2259.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  58.2%
 P   0.2%  24.0%   8.8%

 Initialization:   0.4%
 Other:            7.4%

 Total CPU:     2259.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.0000160   0.9516720  -0.0391135
 2222222222/0/000           0.9514367   0.0018102   0.0444338
 2222222222//0000          -0.0444706   0.0390716   0.9506341
 22222202222//000          -0.0000012  -0.0703725   0.0028923
 2222220222/2/000          -0.0703551  -0.0001339  -0.0032857
 2222220222//2000           0.0032884  -0.0028892  -0.0702957

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956608    0.000016   -0.044712
 2           0.001820    0.956844    0.039284
 3           0.044675   -0.039326    0.955801

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957652   -0.000000    0.000000
 2          -0.000000    0.957652   -0.000000
 3           0.000000   -0.000000    0.957652


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95660786 (fixed)   0.95794039 (relaxed)   0.95765223 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00305710   -0.00754768   -0.65858233
 Singles      0.02189566   -0.09803011   -0.10560420
 Pairs        0.06544350    0.03158954   -0.01797859
 Total        1.09039626   -0.07398825   -0.78216512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84460466
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17226531
 One electron energy                 -335.31541040
 Two electron energy                  142.68864062
 Virial quotient                       -3.04923005
 Correlation energy                    -0.78216512
 !MRCI STATE 1.1 Energy              -192.626769781040

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69747458 (Davidson, fixed reference)
 Cluster corrected energies          -192.69696154 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69747458 (Davidson, rotated reference)

 Cluster corrected energies          -192.69530616 (Pople, fixed reference)
 Cluster corrected energies          -192.69477129 (Pople, relaxed reference)
 Cluster corrected energies          -192.69530616 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95684443 (fixed)   0.95794040 (relaxed)   0.95765223 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00305710   -0.00754768   -0.60415820
 Singles      0.02189564   -0.09803010   -0.10560419
 Pairs        0.06544351   -0.02775435   -0.07240274
 Total        1.09039624   -0.13333213   -0.78216512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84460466
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17226602
 One electron energy                 -335.31541126
 Two electron energy                  142.68864148
 Virial quotient                       -3.04923002
 Correlation energy                    -0.78216512
 !MRCI STATE 2.1 Energy              -192.626769781020

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69747457 (Davidson, fixed reference)
 Cluster corrected energies          -192.69696153 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69747457 (Davidson, rotated reference)

 Cluster corrected energies          -192.69530615 (Pople, fixed reference)
 Cluster corrected energies          -192.69477128 (Pople, relaxed reference)
 Cluster corrected energies          -192.69530615 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95580090 (fixed)   0.95794039 (relaxed)   0.95765222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00305710   -0.00754768   -0.01031441
 Singles      0.02189569   -0.09803013   -0.10560422
 Pairs        0.06544348   -0.67527935   -0.66624649
 Total        1.09039627   -0.78085716   -0.78216512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84460466
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17226427
 One electron energy                 -335.31540921
 Two electron energy                  142.68863943
 Virial quotient                       -3.04923010
 Correlation energy                    -0.78216512
 !MRCI STATE 3.1 Energy              -192.626769780849

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69747459 (Davidson, fixed reference)
 Cluster corrected energies          -192.69696155 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69747459 (Davidson, rotated reference)

 Cluster corrected energies          -192.69530617 (Pople, fixed reference)
 Cluster corrected energies          -192.69477131 (Pople, relaxed reference)
 Cluster corrected energies          -192.69530617 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      503.02       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2311.62   2289.38      9.26      3.64      9.15
 REAL TIME  *      2348.45 SEC
 DISK USED  *       590.09 MB (local),        5.70 GB (total)
 SF USED    *         5.20 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69747458  AU                              
 SETTING HLSDIAG(2)     =      -192.69747457  AU                              
 SETTING HLSDIAG(3)     =      -192.69747459  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.81238198
     2      -191.81238198
     3      -191.81238198
     4      -191.81238198
     5      -191.81238198

 Number of blocks in overlap matrix:   575   Smallest eigenvalue:  0.20D-05
 Number of N-2 electron functions:    1083
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       6415270
 Number of doubly external configurations:      16792614
 Total number of contracted configurations:     23232034
 Total number of uncontracted configurations:  427217996

 Diagonal Coupling coefficients finished.               Storage:  11984649 words, CPU-Time:     12.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3211233 words, CPU-time:      2.24 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.81238198    -0.00000000    -0.94347971  0.61D-01  0.99D-01    19.91
    1     2     2     1.00000000     0.00000000  -191.81238198     0.00000000    -0.94454880  0.62D-01  0.99D-01    19.91
    1     3     3     1.00000000     0.00000000  -191.81238198    -0.00000000    -0.94445351  0.62D-01  0.99D-01    19.91
    1     4     4     1.00000000     0.00000000  -191.81238198     0.00000000    -0.94431946  0.62D-01  0.99D-01    19.91
    1     5     5     1.00000000     0.00000000  -191.81238198     0.00000000    -0.94355458  0.61D-01  0.99D-01    19.91
    2     1     1     1.10220220    -0.76299077  -192.57537275    -0.76299077    -0.02568862  0.40D-02  0.16D-02   528.92
    2     2     2     1.10220092    -0.76296143  -192.57534341    -0.76296143    -0.02572834  0.40D-02  0.16D-02   528.92
    2     3     3     1.10244738    -0.76269123  -192.57507321    -0.76269123    -0.02604193  0.41D-02  0.16D-02   528.92
    2     4     4     1.10260545    -0.76261525  -192.57499723    -0.76261525    -0.02611804  0.42D-02  0.16D-02   528.92
    2     5     5     1.10254662    -0.76259960  -192.57498158    -0.76259960    -0.02614450  0.42D-02  0.16D-02   528.92
    3     1     1     1.09002176    -0.78672767  -192.59910965    -0.02373690    -0.00040959  0.55D-04  0.41D-04  1037.63
    3     2     2     1.09002399    -0.78672497  -192.59910695    -0.02376354    -0.00041148  0.55D-04  0.42D-04  1037.63
    3     3     3     1.09003722    -0.78671817  -192.59910015    -0.02402694    -0.00041879  0.57D-04  0.42D-04  1037.63
    3     4     4     1.09003994    -0.78671339  -192.59909536    -0.02409813    -0.00042333  0.58D-04  0.43D-04  1037.63
    3     5     5     1.09005750    -0.78671129  -192.59909327    -0.02411169    -0.00042469  0.58D-04  0.43D-04  1037.63
    4     1     1     1.08972476    -0.78715326  -192.59953524    -0.00042559    -0.00001995  0.34D-05  0.27D-05  1546.59
    4     2     2     1.08972427    -0.78715294  -192.59953492    -0.00042797    -0.00002020  0.34D-05  0.27D-05  1546.59
    4     3     3     1.08972561    -0.78715268  -192.59953466    -0.00043451    -0.00002039  0.35D-05  0.27D-05  1546.59
    4     4     4     1.08972403    -0.78715238  -192.59953435    -0.00043899    -0.00002065  0.36D-05  0.27D-05  1546.59
    4     5     5     1.08972453    -0.78715206  -192.59953403    -0.00044077    -0.00002092  0.36D-05  0.28D-05  1546.59
    5     1     1     1.08983194    -0.78717714  -192.59955912    -0.00002389    -0.00000116  0.74D-07  0.21D-06  2054.25
    5     2     2     1.08983170    -0.78717714  -192.59955912    -0.00002420    -0.00000116  0.75D-07  0.21D-06  2054.25
    5     3     3     1.08983000    -0.78717712  -192.59955909    -0.00002443    -0.00000118  0.77D-07  0.21D-06  2054.25
    5     4     4     1.08982924    -0.78717710  -192.59955908    -0.00002472    -0.00000119  0.78D-07  0.22D-06  2054.25
    5     5     5     1.08982898    -0.78717710  -192.59955908    -0.00002504    -0.00000120  0.79D-07  0.22D-06  2054.25
    6     1     1     1.08983810    -0.78717849  -192.59956047    -0.00000135    -0.00000008  0.88D-08  0.15D-07  2562.86
    6     2     2     1.08983820    -0.78717849  -192.59956047    -0.00000135    -0.00000008  0.88D-08  0.16D-07  2562.86
    6     3     3     1.08983822    -0.78717849  -192.59956047    -0.00000138    -0.00000008  0.89D-08  0.16D-07  2562.86
    6     4     4     1.08983772    -0.78717849  -192.59956047    -0.00000139    -0.00000009  0.90D-08  0.16D-07  2562.86
    6     5     5     1.08983800    -0.78717849  -192.59956047    -0.00000139    -0.00000009  0.90D-08  0.16D-07  2562.86
    7     1     1     1.08985021    -0.78717859  -192.59956057    -0.00000010    -0.00000001  0.64D-09  0.15D-08  3070.33
    7     2     2     1.08985024    -0.78717859  -192.59956057    -0.00000010    -0.00000001  0.62D-09  0.14D-08  3070.33
    7     3     3     1.08985017    -0.78717859  -192.59956057    -0.00000010    -0.00000001  0.65D-09  0.15D-08  3070.33
    7     4     4     1.08985020    -0.78717859  -192.59956057    -0.00000010    -0.00000001  0.65D-09  0.15D-08  3070.33
    7     5     5     1.08985025    -0.78717859  -192.59956057    -0.00000010    -0.00000001  0.62D-09  0.14D-08  3070.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%  39.3%
 P   0.3%  23.4%  21.6%

 Initialization:   0.5%
 Other:           14.2%

 Total CPU:     3070.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\000           0.9507130  -0.0000285   0.0000000   0.0042969   0.0000000
 2222222222/\0000          -0.0042970  -0.0063426   0.0000014   0.9506918   0.0000284
 2222222222/0\000          -0.0000000   0.0274788   0.9502831   0.0001822  -0.0089748
 2222222222002000          -0.0000001   0.7632573  -0.0233887   0.0050963  -0.1394549
 2222222222200000           0.0000001  -0.2607243   0.0144436  -0.0017613   0.7310223
 2222222222020000           0.0000000  -0.5025330   0.0089451  -0.0033350  -0.5915672
 22222202222/\000          -0.0702043   0.0000021  -0.0000000  -0.0003173  -0.0000000
 2222220222/\2000           0.0003173   0.0004684  -0.0000001  -0.0702026  -0.0000021
 2222220222/2\000           0.0000000  -0.0020291  -0.0701725  -0.0000135   0.0006627
 2222220222220000          -0.0000000   0.0563619  -0.0017271   0.0003763  -0.0102978
 2222220222022000           0.0000000  -0.0192529   0.0010666  -0.0001301   0.0539815

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000   -0.004322    0.956293    0.000000
 2          -0.724033    0.027640   -0.006380   -0.000029   -0.624088
 3           0.026832    0.955860    0.000001    0.000000    0.011205
 4          -0.004849    0.000183    0.956271    0.004322   -0.004142
 5           0.624137   -0.009028    0.000029    0.000000   -0.724490

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956303   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.956303    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.956303    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.956303   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.956302


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95629274 (fixed)   0.95657084 (relaxed)   0.95630251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332723   -0.00820737   -0.62987448
 Singles      0.02364793   -0.10104482   -0.10942713
 Pairs        0.06650123   -0.00000003   -0.04787699
 Total        1.09347638   -0.10925222   -0.78717859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81238198
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15592369
 One electron energy                 -335.20065068
 Two electron energy                  142.60109011
 Virial quotient                       -3.04958821
 Correlation energy                    -0.78717859
 !MRCI STATE 1.1 Energy              -192.599560569094

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67314318 (Davidson, fixed reference)
 Cluster corrected energies          -192.67266035 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67314318 (Davidson, rotated reference)

 Cluster corrected energies          -192.67193235 (Pople, fixed reference)
 Cluster corrected energies          -192.67141927 (Pople, relaxed reference)
 Cluster corrected energies          -192.67193235 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.72403287 (fixed)   0.95657082 (relaxed)   0.95630250 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332721   -0.00820737   -1.03447290
 Singles      0.02364786   -0.10104464   -0.10942704
 Pairs        0.06650133    0.44241865    0.35672134
 Total        1.09347640    0.33316663   -0.78717859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81238198
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15593072
 One electron energy                 -335.20065926
 Two electron energy                  142.60109869
 Virial quotient                       -3.04958788
 Correlation energy                    -0.78717859
 !MRCI STATE 2.1 Energy              -192.599560568812

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67314319 (Davidson, fixed reference)
 Cluster corrected energies          -192.67266037 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67314319 (Davidson, rotated reference)

 Cluster corrected energies          -192.67193237 (Pople, fixed reference)
 Cluster corrected energies          -192.67141930 (Pople, relaxed reference)
 Cluster corrected energies          -192.67193237 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95586036 (fixed)   0.95657085 (relaxed)   0.95630253 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332722   -0.00820737   -0.62261033
 Singles      0.02364798   -0.10104487   -0.10942717
 Pairs        0.06650115   -0.00794317   -0.05514109
 Total        1.09347635   -0.11719541   -0.78717859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81238198
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15592632
 One electron energy                 -335.20065436
 Two electron energy                  142.60109379
 Virial quotient                       -3.04958809
 Correlation energy                    -0.78717859
 !MRCI STATE 3.1 Energy              -192.599560568679

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67314315 (Davidson, fixed reference)
 Cluster corrected energies          -192.67266032 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67314315 (Davidson, rotated reference)

 Cluster corrected energies          -192.67193232 (Pople, fixed reference)
 Cluster corrected energies          -192.67141924 (Pople, relaxed reference)
 Cluster corrected energies          -192.67193232 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95627147 (fixed)   0.95657084 (relaxed)   0.95630251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332722   -0.00820737   -0.63255975
 Singles      0.02364795   -0.10104484   -0.10942714
 Pairs        0.06650120    0.00293627   -0.04519170
 Total        1.09347638   -0.10631594   -0.78717859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81238198
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15592458
 One electron energy                 -335.20065163
 Two electron energy                  142.60109106
 Virial quotient                       -3.04958817
 Correlation energy                    -0.78717859
 !MRCI STATE 4.1 Energy              -192.599560568397

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67314317 (Davidson, fixed reference)
 Cluster corrected energies          -192.67266034 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67314317 (Davidson, rotated reference)

 Cluster corrected energies          -192.67193234 (Pople, fixed reference)
 Cluster corrected energies          -192.67141926 (Pople, relaxed reference)
 Cluster corrected energies          -192.67193234 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.72448985 (fixed)   0.95657082 (relaxed)   0.95630250 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332722   -0.00820737   -1.09956346
 Singles      0.02364787   -0.10104467   -0.10942705
 Pairs        0.06650133    0.51359368    0.42181191
 Total        1.09347642    0.40434164   -0.78717859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81238198
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15593029
 One electron energy                 -335.20065889
 Two electron energy                  142.60109832
 Virial quotient                       -3.04958790
 Correlation energy                    -0.78717859
 !MRCI STATE 5.1 Energy              -192.599560568328

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67314320 (Davidson, fixed reference)
 Cluster corrected energies          -192.67266038 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67314320 (Davidson, rotated reference)

 Cluster corrected energies          -192.67193238 (Pople, fixed reference)
 Cluster corrected energies          -192.67141931 (Pople, relaxed reference)
 Cluster corrected energies          -192.67193238 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1393.63       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5466.91   3155.29   2289.38      9.26      3.64      9.15
 REAL TIME  *      5564.37 SEC
 DISK USED  *         1.45 GB (local),       12.66 GB (total)
 SF USED    *         8.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.67314318  AU                              
 SETTING HLSDIAG(5)     =      -192.67314319  AU                              
 SETTING HLSDIAG(6)     =      -192.67314315  AU                              
 SETTING HLSDIAG(7)     =      -192.67314317  AU                              
 SETTING HLSDIAG(8)     =      -192.67314320  AU                              


         HLSDIAG
    -192.6974746
    -192.6974746
    -192.6974746
    -192.6731432
    -192.6731432
    -192.6731431
    -192.6731432
    -192.6731432
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.626770   -192.626770   -192.626770
 Replaced energies:   -192.697475   -192.697475   -192.697475

 Wavefunction restored from record  5203.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -192.599561   -192.599561   -192.599561   -192.599561   -192.599561
 Replaced energies:   -192.673143   -192.673143   -192.673143   -192.673143   -192.673143



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69747459

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00   -2273.10      93.43       0.00       0.00       0.00    2239.36
                           -0.00     132.27    3218.16       0.00     106.25      -4.33       0.00       0.00       0.00     104.67

    2   2.1  1.0  1.0       0.00       0.01       0.00    2273.10       0.00     106.34       0.00       0.00       0.00       4.26
                         -132.27       0.00      -0.05    -106.25      -0.00    2275.02       0.00       0.00       0.00     -81.84

    3   3.1  1.0  1.0       0.00       0.00       0.00     -93.43    -106.34      -0.00       0.00       0.00       0.00     104.58
                        -3218.16       0.05       0.00       4.33   -2275.02      -0.00       0.00       0.00       0.00   -2237.88

    4   1.1  1.0  0.0      -0.00    2273.10     -93.43       0.00       0.00       0.00      -0.00   -2273.10      93.43       0.00
                           -0.00     106.25      -4.33       0.00       0.00       0.00       0.00     106.25      -4.33      14.31

    5   2.1  1.0  0.0   -2273.10       0.00    -106.34       0.00       0.01       0.00    2273.10       0.00     106.34       0.00
                         -106.25       0.00    2275.02      -0.00       0.00       0.00    -106.25      -0.00    2275.02       0.03

    6   3.1  1.0  0.0      93.43     106.34      -0.00       0.00       0.00       0.00     -93.43    -106.34      -0.00       0.00
                            4.33   -2275.02       0.00      -0.00      -0.00       0.00       4.33   -2275.02      -0.00       0.67

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00    2273.10     -93.43       0.00       0.00       0.00    2239.36
                           -0.00      -0.00      -0.00      -0.00     106.25      -4.33       0.00    -132.27   -3218.16    -104.67

    8   2.1  1.0 -1.0       0.00       0.00       0.00   -2273.10       0.00    -106.34       0.00       0.01       0.00       4.26
                           -0.00      -0.00      -0.00    -106.25       0.00    2275.02     132.27      -0.00       0.05      81.84

    9   3.1  1.0 -1.0       0.00       0.00       0.00      93.43     106.34      -0.00       0.00       0.00       0.00     104.58
                           -0.00      -0.00      -0.00       4.33   -2275.02       0.00    3218.16      -0.05      -0.00    2237.88

   10   1.1  0.0  0.0    2239.36       4.26     104.58       0.00       0.00       0.00    2239.36       4.26     104.58    5340.13
                         -104.67      81.84    2237.88     -14.31      -0.03      -0.67     104.67     -81.84   -2237.88       0.00

   11   2.1  0.0  0.0     118.77    -169.15   -2537.78       0.00       0.00       0.00     118.77    -169.15   -2537.78       0.00
                         1674.05     -11.76      78.73     -16.83    1224.79    -142.94   -1674.05      11.76     -78.73      -0.00

   12   3.1  0.0  0.0      -3.68   -2235.70     169.87       0.00       0.00       0.00      -3.68   -2235.70     169.87       0.00
                          -29.80      -0.05      -1.39     147.96    -198.06   -3160.03      29.80       0.05       1.39      -0.00

   13   4.1  0.0  0.0      10.91      -1.11     -16.47       0.00       0.00       0.00      10.91      -1.11     -16.47       0.00
                           10.67    2240.30     -81.43    3166.88      14.30     146.95     -10.67   -2240.30      81.43      -0.00

   14   5.1  0.0  0.0     -21.71      40.22     463.29       0.00       0.00       0.00     -21.71      40.22     463.29       0.00
                         1970.64       3.82      92.03      -1.36   -3443.51     171.45   -1970.64      -3.82     -92.03      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0     118.77      -3.68      10.91     -21.71
                        -1674.05      29.80     -10.67   -1970.64

    2   2.1  1.0  1.0    -169.15   -2235.70      -1.11      40.22
                           11.76       0.05   -2240.30      -3.82

    3   3.1  1.0  1.0   -2537.78     169.87     -16.47     463.29
                          -78.73       1.39      81.43     -92.03

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           16.83    -147.96   -3166.88       1.36

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -1224.79     198.06     -14.30    3443.51

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                          142.94    3160.03    -146.95    -171.45

    7   1.1  1.0 -1.0     118.77      -3.68      10.91     -21.71
                         1674.05     -29.80      10.67    1970.64

    8   2.1  1.0 -1.0    -169.15   -2235.70      -1.11      40.22
                          -11.76      -0.05    2240.30       3.82

    9   3.1  1.0 -1.0   -2537.78     169.87     -16.47     463.29
                           78.73      -1.39     -81.43      92.03

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5340.13       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5340.14       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5340.13       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5340.12
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -192.69747459 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     150.257      -6.121      -0.000     132.266

    2    1  |1 1>+              0.000       0.005       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -150.257       0.000    3217.368    -132.266       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       6.121   -3217.368       0.000   -3218.164       0.054

    1    1  |1 0>              -0.000      -0.000       0.000       0.003       0.000       0.000       0.000    3214.654
                                0.000     150.257      -6.121       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.005       0.000   -3214.654       0.000
                             -150.257       0.000    3217.368      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000     132.124     150.381
                                6.121   -3217.368       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   -3214.654     132.124       0.003       0.000
                               -0.000     132.266    3218.164       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    3214.654       0.000     150.381       0.000       0.005
                             -132.266       0.000      -0.054      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    -132.124    -150.381       0.000       0.000       0.000
                            -3218.164       0.054       0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>            3166.927       6.025     147.902       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -14.314      -0.028      -0.668    -148.024     115.735

    2    1  |0 0>             167.971    -239.220   -3588.957       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -16.829    1224.792    -142.939    2367.466     -16.633

    3    1  |0 0>              -5.203   -3161.753     240.226       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     147.960    -198.055   -3160.026     -42.141      -0.075

    4    1  |0 0>              15.436      -1.566     -23.295       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3166.884      14.300     146.950      15.096    3168.256

    5    1  |0 0>             -30.707      56.883     655.197       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.361   -3443.510     171.453    2786.907       5.397

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000    3166.927     167.971      -5.203      15.436     -30.707
                             3218.164       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       6.025    -239.220   -3161.753      -1.566      56.883
                               -0.054       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000     147.902   -3588.957     240.226     -23.295     655.197
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -132.124       0.000       0.000       0.000       0.000       0.000
                                0.000      14.314      16.829    -147.960   -3166.884       1.361

    2    1  |1 0>            -150.381       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.028   -1224.792     198.055     -14.300    3443.510

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.668     142.939    3160.026    -146.950    -171.453

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     148.024   -2367.466      42.141     -15.096   -2786.907

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -115.735      16.633       0.075   -3168.256      -5.397

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -3164.843    -111.338       1.968     115.154    -130.150

    1    1  |0 0>               0.000    5340.129       0.000       0.000       0.000       0.000
                             3164.843       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5340.125       0.000       0.000       0.000
                              111.338      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5340.135       0.000       0.000
                               -1.968      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5340.130       0.000
                             -115.154      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5340.123
                              130.150      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.72682541    -0.02935081    -6441.76      0.00000000        0.00      0.0000
    2  -192.71215000    -0.01467540    -3220.88      0.01467541     3220.88      0.3993
    3  -192.71214999    -0.01467540    -3220.88      0.01467541     3220.88      0.3993
    4  -192.71214999    -0.01467540    -3220.88      0.01467542     3220.88      0.3993
    5  -192.69896361    -0.00148901     -326.80      0.02786180     6114.96      0.7582
    6  -192.69896359    -0.00148900     -326.80      0.02786181     6114.96      0.7582
    7  -192.69896292    -0.00148833     -326.65      0.02786249     6115.11      0.7582
    8  -192.69896291    -0.00148831     -326.65      0.02786250     6115.11      0.7582
    9  -192.69896290    -0.00148831     -326.65      0.02786250     6115.11      0.7582
   10  -192.65697943     0.04049516     8887.66      0.06984597    15329.42      1.9006
   11  -192.65697942     0.04049517     8887.66      0.06984598    15329.42      1.9006
   12  -192.65697941     0.04049518     8887.66      0.06984599    15329.42      1.9006
   13  -192.65697877     0.04049582     8887.81      0.06984664    15329.56      1.9006
   14  -192.65697876     0.04049583     8887.81      0.06984664    15329.57      1.9006

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.02695620  0.70534532  0.00181758 -0.03734141 -0.02837487 -0.00911864 -0.55383402 -0.01010408
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.02368352 -0.00257043  0.70538098 -0.03986424  0.02512533  0.00854393 -0.00040719 -0.03803157
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.57623431  0.03310169 -0.02890655 -0.00010839  0.60741371  0.19862465 -0.02578648  0.00117573
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000972  0.03736199  0.00697283  0.70608477 -0.00004464  0.00002212 -0.01004921  0.55074662

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57686310 -0.00008989  0.02903575 -0.00029389  0.13182568  0.62602303  0.00015899  0.00266764

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.02370894 -0.00217181  0.70647405 -0.00686126 -0.00558061 -0.02610956 -0.00112063  0.06377581

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57672063 -0.03296881 -0.00008507  0.00173345  0.47613360 -0.42707558 -0.02598610 -0.00043335

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00109726 -0.00822274 -0.03987009 -0.70593251  0.00084988 -0.00082586  0.01266158  0.55307488

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02693387  0.70627930  0.00344587 -0.00835860  0.02219827 -0.02011850  0.55377114 -0.01262184

   1    1  |0 0>           0.00000001  0.00000015  0.00000000  0.00000000 -0.00004481 -0.00019422  0.62042716  0.00851567
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000004  0.00000002 -0.00000003 -0.00000000  0.61456659  0.08357223  0.00014682 -0.00528140
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000001 -0.00000000 -0.00000023  0.00000000 -0.01680151 -0.00779758  0.00071510 -0.04255554
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000001  0.00000002  0.00000012  0.00403655  0.00056815 -0.00848554  0.61894342
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000008  0.00000001  0.00000002  0.00000000  0.08375938 -0.61478540 -0.00019296  0.00039112
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+         -0.00002761  0.43803125  0.01443151  0.00021562 -0.00719322  0.02257710
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.55273953  0.00088470  0.00443873 -0.43838144  0.00584459 -0.01939670
                          -0.00000024 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.02302692  0.02049978  0.00057615  0.01741979  0.15193613 -0.48230111
                           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.06384128  0.01443887 -0.43780518 -0.02488677  0.00000105 -0.00004703

   2    1  |1 0>          -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02308590  0.00012568 -0.00097628  0.01743236  0.49418809 -0.10970927

   3    1  |1 0>          -0.00000024 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.55035429  0.00062068 -0.02486048  0.43769587 -0.01991084  0.00408030

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00015590  0.02041884  0.00071253 -0.00004096 -0.34200146 -0.37302637

   2    1  |1 1>-          0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.03802361 -0.00354819 -0.43871227 -0.00441199 -0.00063575 -0.00077544

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00150407 -0.43825978  0.00358556 -0.00001585 -0.01588619 -0.01743418

   1    1  |0 0>          -0.00013502  0.78390097  0.02228714  0.00031273 -0.00015411  0.00002771
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.01737763  0.00010285 -0.00558530  0.02345468 -0.09713028  0.77780336
                          -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.61874679 -0.00008582 -0.00787653  0.78378491  0.01087228 -0.02233377
                          -0.00000027  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000

   4    1  |0 0>           0.04269564 -0.02228898  0.78384153  0.00803537 -0.00069236  0.00530281
                          -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00544605  0.00014947  0.00011473 -0.00801664  0.77810052  0.09740994
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.72682541     -0.02935081    -6441.76      0.00000000        0.00      0.0000
     2   1   -192.71215000     -0.01467540    -3220.88      0.01467541     3220.88      0.3993
     3   1   -192.71214999     -0.01467540    -3220.88      0.01467541     3220.88      0.3993
     4   1   -192.71214999     -0.01467540    -3220.88      0.01467542     3220.88      0.3993
     5   1   -192.69896361     -0.00148901     -326.80      0.02786180     6114.96      0.7582
     6   1   -192.69896359     -0.00148900     -326.80      0.02786181     6114.96      0.7582
     7   1   -192.69896292     -0.00148833     -326.65      0.02786249     6115.11      0.7582
     8   1   -192.69896291     -0.00148831     -326.65      0.02786250     6115.11      0.7582
     9   1   -192.69896290     -0.00148831     -326.65      0.02786250     6115.11      0.7582
    10   1   -192.65697943      0.04049516     8887.66      0.06984597    15329.42      1.9006
    11   1   -192.65697942      0.04049517     8887.66      0.06984598    15329.42      1.9006
    12   1   -192.65697941      0.04049518     8887.66      0.06984599    15329.42      1.9006
    13   1   -192.65697877      0.04049582     8887.81      0.06984664    15329.56      1.9006
    14   1   -192.65697876      0.04049583     8887.81      0.06984664    15329.57      1.9006

 E0 =   -192.69747459 is the energy of the lowest zeroth-order state
 E1 =   -192.72682541 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.02695620  0.70534532  0.00181758 -0.03734141 -0.02837487 -0.00911864 -0.55383402 -0.01010408
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.02368352 -0.00257043  0.70538098 -0.03986424  0.02512533  0.00854393 -0.00040719 -0.03803157
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.57623431  0.03310169 -0.02890655 -0.00010839  0.60741371  0.19862465 -0.02578648  0.00117573
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000972  0.03736199  0.00697283  0.70608477 -0.00004464  0.00002212 -0.01004921  0.55074662

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57686310 -0.00008989  0.02903575 -0.00029389  0.13182568  0.62602303  0.00015899  0.00266764

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.02370894 -0.00217181  0.70647405 -0.00686126 -0.00558061 -0.02610956 -0.00112063  0.06377581

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57672063 -0.03296881 -0.00008507  0.00173345  0.47613360 -0.42707558 -0.02598610 -0.00043335

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00109726 -0.00822274 -0.03987009 -0.70593251  0.00084988 -0.00082586  0.01266158  0.55307488

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02693387  0.70627930  0.00344587 -0.00835860  0.02219827 -0.02011850  0.55377114 -0.01262184

 10  1     1    1  |0 0>        0.00000001  0.00000015  0.00000000  0.00000000 -0.00004481 -0.00019422  0.62042716  0.00851567
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000004  0.00000002 -0.00000003 -0.00000000  0.61456659  0.08357223  0.00014682 -0.00528140
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000001 -0.00000000 -0.00000023  0.00000000 -0.01680151 -0.00779758  0.00071510 -0.04255554
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000001  0.00000002  0.00000012  0.00403655  0.00056815 -0.00848554  0.61894342
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000008  0.00000001  0.00000002  0.00000000  0.08375938 -0.61478540 -0.00019296  0.00039112
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+      -0.00002761  0.43803125  0.01443151  0.00021562 -0.00719322  0.02257710
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.55273953  0.00088470  0.00443873 -0.43838144  0.00584459 -0.01939670
                               -0.00000024 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.02302692  0.02049978  0.00057615  0.01741979  0.15193613 -0.48230111
                                0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.06384128  0.01443887 -0.43780518 -0.02488677  0.00000105 -0.00004703

  5  1     2    1  |1 0>       -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02308590  0.00012568 -0.00097628  0.01743236  0.49418809 -0.10970927

  6  1     3    1  |1 0>       -0.00000024 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.55035429  0.00062068 -0.02486048  0.43769587 -0.01991084  0.00408030

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00015590  0.02041884  0.00071253 -0.00004096 -0.34200146 -0.37302637

  8  1     2    1  |1 1>-       0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.03802361 -0.00354819 -0.43871227 -0.00441199 -0.00063575 -0.00077544

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00150407 -0.43825978  0.00358556 -0.00001585 -0.01588619 -0.01743418

 10  1     1    1  |0 0>       -0.00013502  0.78390097  0.02228714  0.00031273 -0.00015411  0.00002771
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.01737763  0.00010285 -0.00558530  0.02345468 -0.09713028  0.77780336
                               -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.61874679 -0.00008582 -0.00787653  0.78378491  0.01087228 -0.02233377
                               -0.00000027  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.04269564 -0.02228898  0.78384153  0.00803537 -0.00069236  0.00530281
                               -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00544605  0.00014947  0.00011473 -0.00801664  0.77810052  0.09740994
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.07%   49.75%    0.00%    0.14%    0.08%    0.01%   30.67%    0.01%
  2  1     2    1  |1 1>+         0.06%    0.00%   49.76%    0.16%    0.06%    0.01%    0.00%    0.14%
  3  1     3    1  |1 1>+        33.20%    0.11%    0.08%    0.00%   36.90%    3.95%    0.07%    0.00%
  4  1     1    1  |1 0>          0.00%    0.14%    0.00%   49.86%    0.00%    0.00%    0.01%   30.33%
  5  1     2    1  |1 0>         33.28%    0.00%    0.08%    0.00%    1.74%   39.19%    0.00%    0.00%
  6  1     3    1  |1 0>          0.06%    0.00%   49.91%    0.00%    0.00%    0.07%    0.00%    0.41%
  7  1     1    1  |1 1>-        33.26%    0.11%    0.00%    0.00%   22.67%   18.24%    0.07%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.01%    0.16%   49.83%    0.00%    0.00%    0.02%   30.59%
  9  1     3    1  |1 1>-         0.07%   49.88%    0.00%    0.01%    0.05%    0.04%   30.67%    0.02%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.49%    0.01%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   37.77%    0.70%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.01%    0.00%    0.18%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   38.31%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.70%   37.80%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%   19.19%    0.02%    0.00%    0.01%    0.05%
  2  1     2    1  |1 1>+        30.55%    0.00%    0.00%   19.22%    0.00%    0.04%
  3  1     3    1  |1 1>+         0.05%    0.04%    0.00%    0.03%    2.31%   23.26%
  4  1     1    1  |1 0>          0.41%    0.02%   19.17%    0.06%    0.00%    0.00%
  5  1     2    1  |1 0>          0.05%    0.00%    0.00%    0.03%   24.42%    1.20%
  6  1     3    1  |1 0>         30.29%    0.00%    0.06%   19.16%    0.04%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.04%    0.00%    0.00%   11.70%   13.91%
  8  1     2    1  |1 1>-         0.14%    0.00%   19.25%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   19.21%    0.00%    0.00%    0.03%    0.03%
 10  1     1    1  |0 0>          0.00%   61.45%    0.05%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.03%    0.00%    0.00%    0.06%    0.94%   60.50%
 12  1     3    1  |0 0>         38.28%    0.00%    0.01%   61.43%    0.01%    0.05%
 13  1     4    1  |0 0>          0.18%    0.05%   61.44%    0.01%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.01%   60.54%    0.95%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1393.63       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7694.31   2227.38   3155.29   2289.38      9.26      3.64      9.15
 REAL TIME  *      7857.56 SEC
 DISK USED  *         1.45 GB (local),       12.66 GB (total)
 SF USED    *         8.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.656978764064

              CI              CI           MULTI         RHF-SCF
   -192.59956057   -192.62676978   -191.81238198   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
