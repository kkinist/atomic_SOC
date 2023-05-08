
 Working directory              : /scratch/irikura/molpro.qDT5Iutuda/
 Global scratch directory       : /scratch/irikura/molpro.qDT5Iutuda/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /scratch/irikura/molpro.qDT5Iutuda/

 id        : nistki

 Nodes     nprocs
 n1247.becn    3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1013), CPU time= 0.01 sec
 ***,Fe atom SOC
                                                                                 ! 5D, 5F, 5P and 3F
                                                                                 ! Use +Dav energies in SO-CI
 memory,3000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Fe}
 
 basis=cc-pwCV5Z-DK
 core,2,3
 
 set,dkho=101
 
                                                                                 ! initial orbitals
 {rhf;wf,sym=1, spin=4}
 
                                                                                 ! state-averaged casscf
 {multi
                                                                                 ! 15 quintets
     wf,sym=1,spin=4;state,15;
                                                                                 ! 7 triplets
     wf,sym=1,spin=2;state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=4;state,15;save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,7;save,5102.2}
 hlsdiag(16) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ls,5101.2,5102.2;print,vls=0,hls=0}
 
 Commands initialized (815), CPU time= 0.01 sec, 669 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.3 linked Nov 22 2021 23:03:20


 **********************************************************************************************************************************
 LABEL *   Fe atom SOC                                                                   
  64 bit mpp version                                                                     DATE: 25-Aug-22          TIME: 17:15:21  
 **********************************************************************************************************************************

 SHA1:             8b8f1fffdd8ed686b3bdbdb000c23abeeca3c440
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry FE     S cc-pwCV5Z-DK         selected for orbital group  1
 Library entry FE     P cc-pwCV5Z-DK         selected for orbital group  1
 Library entry FE     D cc-pwCV5Z-DK         selected for orbital group  1
 Library entry FE     F cc-pwCV5Z-DK         selected for orbital group  1
 Library entry FE     G cc-pwCV5Z-DK         selected for orbital group  1
 Library entry FE     H cc-pwCV5Z-DK         selected for orbital group  1
 Library entry FE     I cc-pwCV5Z-DK         selected for orbital group  1


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

   1  FE     26.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   26
 NUMBER OF PRIMITIVE AOS:         409
 NUMBER OF SYMMETRY AOS:          296
 NUMBER OF CONTRACTIONS:          211   (  113Ag  +   98Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     185.860 MB (compressed) written to integral file ( 12.1%)

     Node minimum: 48.759 MB, node maximum: 77.070 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   42087384.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15999444      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   191636194. AND WROTE     6578168. INTEGRALS IN     21 RECORDS. CPU TIME:     0.83 SEC, REAL TIME:     0.90 SEC
 SORT2 READ    20393719. AND WROTE   126250860. INTEGRALS IN    558 RECORDS. CPU TIME:     0.73 SEC, REAL TIME:     0.79 SEC

 Node minimum:    42079856.  Node maximum:    42087384. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415161718  19202122232425262728  16171819202122232425  262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 9101112131415  16171819202111121314
                                       15161718192021111213  1415161718192021

 Eigenvalues of metric

         1 0.385E-04 0.488E-03 0.643E-02 0.951E-02 0.951E-02 0.951E-02 0.951E-02 0.951E-02
         2 0.662E-04 0.662E-04 0.662E-04 0.196E-03 0.196E-03 0.196E-03 0.542E-01 0.542E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.87      8.71
 REAL TIME  *        10.46 SEC
 DISK USED  *        30.74 MB (local),      491.82 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   6

 Initial alpha occupancy:   9   6
 Initial beta  occupancy:   5   6

 NELEC=   26   SYM=1   MS2= 4   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -1271.20692064   -1271.20692064     0.00D+00     0.65D-01     0     0       0.18      0.34    start
   2    -1271.20487343       0.00204720     0.11D-01     0.35D-02     1     0       0.20      0.54    diag2
   3    -1271.27045259      -0.06557916     0.11D-01     0.18D-02     2     0       0.19      0.73    diag2
   4    -1271.27092618      -0.00047359     0.53D-03     0.22D-03     3     0       0.20      0.93    diag2
   5    -1271.27104489      -0.00011871     0.18D-03     0.15D-03     4     0       0.19      1.12    diag2
   6    -1271.27108847      -0.00004358     0.61D-04     0.13D-03     5     0       0.19      1.31    diag2
   7    -1271.27111904      -0.00003057     0.37D-04     0.77D-04     6     0       0.20      1.51    diag2
   8    -1271.27120368      -0.00008465     0.32D-04     0.25D-03     7     0       0.19      1.70    diag2
   9    -1271.27122487      -0.00002118     0.16D-04     0.18D-03     8     0       0.19      1.89    diag2
  10    -1271.27122535      -0.00000048     0.38D-05     0.28D-04     9     0       0.20      2.09    diag2/orth
  11    -1271.27122536      -0.00000001     0.12D-05     0.46D-05     9     0       0.20      2.29    diag2
  12    -1271.27122538      -0.00000001     0.85D-06     0.38D-05     9     0       0.20      2.49    diag2
  13    -1271.27122541      -0.00000003     0.71D-06     0.39D-05     9     0       0.20      2.69    diag2
  14    -1271.27122543      -0.00000003     0.55D-06     0.60D-05     9     0       0.19      2.88    diag2
  15    -1271.27122543      -0.00000000     0.15D-06     0.11D-05     9     0       0.20      3.08    diag2
  16    -1271.27122543      -0.00000000     0.30D-07     0.26D-06     0     0       0.20      3.28    diag

 Final alpha occupancy:   9   6
 Final beta  occupancy:   5   6

 !RHF STATE 1.1 Energy              -1271.271225431626
  RHF One-electron energy           -1760.848818657673
  RHF Two-electron energy             489.577593226047
  RHF Kinetic energy                 1323.929598301419
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.960225700115

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -263.48788     1  1  s    0.96068
    2.1     2.00000   -32.22139     1  2  s    1.01383
    3.1     2.00000    -4.04245     1  3  s    0.98551
    4.1     2.00000    -0.36167     1  1  d2-  0.99546
    5.1     2.00000    -0.36167     1  1  d0   0.99510
    6.1     1.00000    -0.45217     1  1  d1+  0.98891
    7.1     1.00000    -0.45217     1  1  d2+ -0.49887    1  1  d1-  0.85437
    8.1     1.00000    -0.45217     1  1  d2+  0.86600    1  1  d1-  0.49856
    9.1     1.00000    -0.23482     1  4  s    0.98489
    1.2     2.00000   -27.29274     1  1  px   0.99967
    2.2     2.00000   -27.29274     1  1  pz   0.99861
    3.2     2.00000   -27.29274     1  1  py   0.99850
    4.2     2.00000    -2.56596     1  2  px   0.99768
    5.2     2.00000    -2.56596     1  2  pz   0.99684
    6.2     2.00000    -2.56596     1  2  py   0.99843


 HOMO      9.1    -0.234816 =      -6.3897eV
 LUMO      7.2     0.035380 =       0.9627eV
 LUMO-HOMO         0.270195 =       7.3524eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.08       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        12.16      3.29      8.71
 REAL TIME  *        14.47 SEC
 DISK USED  *        34.67 MB (local),      503.60 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of frozen core orbitals:    5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        6 (   6   0 )
 Number of external orbitals:     196 ( 104  92 )

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Quintet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             7
 Number of CSFs:             105   (120 determinants, 120 intermediate states)

 Valence orbitals read from record       2100.2  Type=RHF/CANONICAL  
 Frozen core orbitals read from record   2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.207D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.258D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.106D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.109D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.178D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.447D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.399D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.357D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   0 0 1 3 2 4 6 5 1 1   4 6 5 3 2 1 4 6 5 3   2 1 4 6 5 3 2 11412  15 810 91113 7 4 6 5
                                        3 2141215 810 91113   7 1 4 5 6 3 2141215   810 91113 719232426  202118172827162522 4
                                        5 6 3 2 114121510 8  13 911 7192324262021  18172816272225 4 5 6   2 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.316D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.597D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.658D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.849D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.104D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.709D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   0 0 0 1 3 2 3 1 2 1   3 2 1 3 210 4 8 5 6   9 7 1 3 210 4 8 5 9   6 7 1 3 21417161315
                                       18212019111210 4 8 5   9 6 7 1 3 210 4 8 5   9 6 714171613151821  20111912 1 3 210 4 8
                                        5 9 6 7141716131518  2120111912 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545
                                          0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545
 Weight factors for state symmetry  2:    0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545
 
 Number of orbital rotations:  1010  ( 6 closed/active, 380 closed/virtual, 0 active/active, 624 active/virtual )
 Total number of variables:    2075
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -1271.24000347   -1271.24437043   -0.00436696    0.14150674 0.00000741 0.00000000  0.60E-01      0.86
   2    8   14    0  -1271.24431879   -1271.24432036   -0.00000157    0.00206364 0.00000003 0.00000000  0.15E-02      1.67
   3   21   42    0  -1271.24432036   -1271.24432036   -0.00000000    0.00000087 0.00000003 0.00000000  0.77E-06      2.72

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.31E-07)
                       Final energy:  -1271.24432036
 
 Results for state 1.1 Quintet
 =============================
 !MCSCF STATE 1.1 Quintet Energy             -1271.270940003249
 Nuclear energy                                  0.00000000
 Kinetic energy                               1319.40124822
 One electron energy                         -1748.44191387
 Two electron energy                           477.17097387
 Virial ratio                                    1.96352110
 
 !MCSCF STATE 1.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quintet
 =============================
 !MCSCF STATE 2.1 Quintet Energy             -1271.270940002814
 Nuclear energy                                  0.00000000
 Kinetic energy                               1319.40124819
 One electron energy                         -1748.44191381
 Two electron energy                           477.17097381
 Virial ratio                                    1.96352110
 
 !MCSCF STATE 2.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quintet
 =============================
 !MCSCF STATE 3.1 Quintet Energy             -1271.270940001682
 Nuclear energy                                  0.00000000
 Kinetic energy                               1319.40124814
 One electron energy                         -1748.44191372
 Two electron energy                           477.17097372
 Virial ratio                                    1.96352110
 
 !MCSCF STATE 3.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quintet
 =============================
 !MCSCF STATE 4.1 Quintet Energy             -1271.270940001103
 Nuclear energy                                  0.00000000
 Kinetic energy                               1319.40124811
 One electron energy                         -1748.44191369
 Two electron energy                           477.17097368
 Virial ratio                                    1.96352110
 
 !MCSCF STATE 4.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quintet
 =============================
 !MCSCF STATE 5.1 Quintet Energy             -1271.270940000633
 Nuclear energy                                  0.00000000
 Kinetic energy                               1319.40124808
 One electron energy                         -1748.44191362
 Two electron energy                           477.17097362
 Virial ratio                                    1.96352110
 
 !MCSCF STATE 5.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quintet
 =============================
 !MCSCF STATE 6.1 Quintet Energy             -1271.262004090145
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670045
 One electron energy                         -1763.15115935
 Two electron energy                           491.88915526
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 6.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quintet
 =============================
 !MCSCF STATE 7.1 Quintet Energy             -1271.262004089780
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670048
 One electron energy                         -1763.15115940
 Two electron energy                           491.88915531
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 7.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quintet
 =============================
 !MCSCF STATE 8.1 Quintet Energy             -1271.262004089259
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670050
 One electron energy                         -1763.15115944
 Two electron energy                           491.88915535
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 8.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quintet
 =============================
 !MCSCF STATE 9.1 Quintet Energy             -1271.262004088708
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670054
 One electron energy                         -1763.15115951
 Two electron energy                           491.88915542
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 9.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quintet
 ==============================
 !MCSCF STATE 10.1 Quintet Energy            -1271.262004088685
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670055
 One electron energy                         -1763.15115951
 Two electron energy                           491.88915543
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 10.1 Quintet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quintet
 ==============================
 !MCSCF STATE 11.1 Quintet Energy            -1271.262004088127
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670058
 One electron energy                         -1763.15115957
 Two electron energy                           491.88915548
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 11.1 Quintet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quintet
 ==============================
 !MCSCF STATE 12.1 Quintet Energy            -1271.262004087061
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670065
 One electron energy                         -1763.15115969
 Two electron energy                           491.88915560
 Virial ratio                                    1.95924270
 
 !MCSCF STATE 12.1 Quintet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quintet
 ==============================
 !MCSCF STATE 13.1 Quintet Energy            -1271.189183461015
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670051
 One electron energy                         -1763.15115945
 Two electron energy                           491.96197599
 Virial ratio                                    1.95918776
 
 !MCSCF STATE 13.1 Quintet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quintet
 ==============================
 !MCSCF STATE 14.1 Quintet Energy            -1271.189183460138
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670055
 One electron energy                         -1763.15115951
 Two electron energy                           491.96197605
 Virial ratio                                    1.95918776
 
 !MCSCF STATE 14.1 Quintet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quintet
 ==============================
 !MCSCF STATE 15.1 Quintet Energy            -1271.189183459661
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.27670054
 One electron energy                         -1763.15115952
 Two electron energy                           491.96197606
 Virial ratio                                    1.95918776
 
 !MCSCF STATE 15.1 Quintet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -1271.231252701979
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271824
 One electron energy                         -1763.06608460
 Two electron energy                           491.83483190
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -1271.231252701525
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271827
 One electron energy                         -1763.06608465
 Two electron energy                           491.83483195
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -1271.231252700922
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271829
 One electron energy                         -1763.06608469
 Two electron energy                           491.83483199
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -1271.231252700247
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271833
 One electron energy                         -1763.06608475
 Two electron energy                           491.83483205
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -1271.231252700222
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271834
 One electron energy                         -1763.06608476
 Two electron energy                           491.83483206
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -1271.231252699569
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271836
 One electron energy                         -1763.06608481
 Two electron energy                           491.83483211
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -1271.231252698276
 Nuclear energy                                  0.00000000
 Kinetic energy                               1325.24271843
 One electron energy                         -1763.06608492
 Two electron energy                           491.83483222
 Virial ratio                                    1.95924410
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quintet|LXLX|1.1 Quintet>     1.000000009628
 !MCSCF expec      <2.1 Quintet|LXLX|2.1 Quintet>     2.883685921309
 !MCSCF expec      <3.1 Quintet|LXLX|3.1 Quintet>     3.999999984755
 !MCSCF expec      <4.1 Quintet|LXLX|4.1 Quintet>     1.116318689481
 !MCSCF expec      <5.1 Quintet|LXLX|5.1 Quintet>     1.000000006594
 !MCSCF expec      <6.1 Quintet|LXLX|6.1 Quintet>     3.299110067840
 !MCSCF expec      <7.1 Quintet|LXLX|7.1 Quintet>     5.928033552587
 !MCSCF expec      <8.1 Quintet|LXLX|8.1 Quintet>     3.651186492596
 !MCSCF expec      <9.1 Quintet|LXLX|9.1 Quintet>     3.999999592106
 !MCSCF expec    <10.1 Quintet|LXLX|10.1 Quintet>     0.348798998340
 !MCSCF expec    <11.1 Quintet|LXLX|11.1 Quintet>     6.700915034949
 !MCSCF expec    <12.1 Quintet|LXLX|12.1 Quintet>     4.071966445194
 !MCSCF expec    <13.1 Quintet|LXLX|13.1 Quintet>     0.999999999755
 !MCSCF expec    <14.1 Quintet|LXLX|14.1 Quintet>     0.000000013010
 !MCSCF expec    <15.1 Quintet|LXLX|15.1 Quintet>     0.999999987379
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.276456386528
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     5.942417760362
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.613588210650
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999999956376
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.386411493977
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     6.723585970473
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.057575116153
 
 !MCSCF expec      <1.1 Quintet|LYLY|1.1 Quintet>     1.000000077258
 !MCSCF expec      <2.1 Quintet|LYLY|2.1 Quintet>     3.111966592241
 !MCSCF expec      <3.1 Quintet|LYLY|3.1 Quintet>     1.000000014374
 !MCSCF expec      <4.1 Quintet|LYLY|4.1 Quintet>     0.888029062854
 !MCSCF expec      <5.1 Quintet|LYLY|5.1 Quintet>     3.999999980600
 !MCSCF expec      <6.1 Quintet|LYLY|6.1 Quintet>     3.965308298018
 !MCSCF expec      <7.1 Quintet|LYLY|7.1 Quintet>     6.071622756515
 !MCSCF expec      <8.1 Quintet|LYLY|8.1 Quintet>     1.989014921313
 !MCSCF expec      <9.1 Quintet|LYLY|9.1 Quintet>     4.000000171089
 !MCSCF expec    <10.1 Quintet|LYLY|10.1 Quintet>     8.010948836987
 !MCSCF expec    <11.1 Quintet|LYLY|11.1 Quintet>     0.034694873586
 !MCSCF expec    <12.1 Quintet|LYLY|12.1 Quintet>     3.928377210697
 !MCSCF expec    <13.1 Quintet|LYLY|13.1 Quintet>     0.000000000447
 !MCSCF expec    <14.1 Quintet|LYLY|14.1 Quintet>     0.999999999611
 !MCSCF expec    <15.1 Quintet|LYLY|15.1 Quintet>     0.999999999798
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     3.962945475728
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     6.057361966751
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.904920661443
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999985167
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     8.095077733138
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.037059410777
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.942645042359
 
 !MCSCF expec      <1.1 Quintet|LZLZ|1.1 Quintet>     3.999999913115
 !MCSCF expec      <2.1 Quintet|LZLZ|2.1 Quintet>     0.004347486450
 !MCSCF expec      <3.1 Quintet|LZLZ|3.1 Quintet>     1.000000000871
 !MCSCF expec      <4.1 Quintet|LZLZ|4.1 Quintet>     3.995652247665
 !MCSCF expec      <5.1 Quintet|LZLZ|5.1 Quintet>     1.000000012806
 !MCSCF expec      <6.1 Quintet|LZLZ|6.1 Quintet>     4.735581634142
 !MCSCF expec      <7.1 Quintet|LZLZ|7.1 Quintet>     0.000343690898
 !MCSCF expec      <8.1 Quintet|LZLZ|8.1 Quintet>     6.359798586091
 !MCSCF expec      <9.1 Quintet|LZLZ|9.1 Quintet>     4.000000236805
 !MCSCF expec    <10.1 Quintet|LZLZ|10.1 Quintet>     3.640252164672
 !MCSCF expec    <11.1 Quintet|LZLZ|11.1 Quintet>     5.264390091465
 !MCSCF expec    <12.1 Quintet|LZLZ|12.1 Quintet>     3.999656344109
 !MCSCF expec    <13.1 Quintet|LZLZ|13.1 Quintet>     0.999999999798
 !MCSCF expec    <14.1 Quintet|LZLZ|14.1 Quintet>     0.999999987379
 !MCSCF expec    <15.1 Quintet|LZLZ|15.1 Quintet>     0.000000012823
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     4.760598137744
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000220272888
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     6.481491127907
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000058457
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.518510772885
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     5.239354618751
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999779841489
 
 !MCSCF expec      <1.1 Quintet|L**2|1.1 Quintet>     6.000000000000
 !MCSCF expec      <2.1 Quintet|L**2|2.1 Quintet>     6.000000000000
 !MCSCF expec      <3.1 Quintet|L**2|3.1 Quintet>     6.000000000000
 !MCSCF expec      <4.1 Quintet|L**2|4.1 Quintet>     6.000000000000
 !MCSCF expec      <5.1 Quintet|L**2|5.1 Quintet>     6.000000000000
 !MCSCF expec      <6.1 Quintet|L**2|6.1 Quintet>    12.000000000000
 !MCSCF expec      <7.1 Quintet|L**2|7.1 Quintet>    12.000000000000
 !MCSCF expec      <8.1 Quintet|L**2|8.1 Quintet>    12.000000000000
 !MCSCF expec      <9.1 Quintet|L**2|9.1 Quintet>    12.000000000000
 !MCSCF expec    <10.1 Quintet|L**2|10.1 Quintet>    12.000000000000
 !MCSCF expec    <11.1 Quintet|L**2|11.1 Quintet>    12.000000000000
 !MCSCF expec    <12.1 Quintet|L**2|12.1 Quintet>    12.000000000000
 !MCSCF expec    <13.1 Quintet|L**2|13.1 Quintet>     2.000000000000
 !MCSCF expec    <14.1 Quintet|L**2|14.1 Quintet>     2.000000000000
 !MCSCF expec    <15.1 Quintet|L**2|15.1 Quintet>     2.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    12.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>    12.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>    12.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>    12.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>    12.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   0 0 1 4 3 2 5 6 1 1   3 4 2 5 6 1 4 3 2 5   6 1 4 3 2 5 6 11310   9141512 8 711 4 3 2
                                        5 61013 9151412 8 7  11 1 4 3 5 2 6131015  14 912 8 71116222018  192421282326251727 5
                                        3 4 2 6 11013151412   9 8 711162218201924  21282623251727 5 3 4   2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   0 0 0 1 3 2 1 3 2 1   2 3 1 2 3 4 9 7 810   6 5 1 2 3 4 7 9 8 6  10 5 1 2 32018171511
                                       131416211912 4 9 7 8  10 6 5 1 2 3 7 9 410   8 6 518201715131614  11192112 3 1 2 7 910
                                        4 8 6 5182015171614  1311192112 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    3.1     2.00000    -4.08819     1  3  s    0.98553
    4.1     1.35418    -0.16355     1  1  d1+  1.00040
    5.1     1.35418    -0.16355     1  1  d2-  1.00040
    6.1     1.35418    -0.16355     1  1  d0   1.00040
    7.1     1.35418    -0.16355     1  1  d2+  1.00040
    8.1     1.35418    -0.16355     1  1  d1-  1.00040
    9.1     1.22911    -0.12864     1  4  s    0.99377
    4.2     2.00000    -2.60812     1  2  px   0.99986
    5.2     2.00000    -2.60812     1  2  pz   0.99986
    6.2     2.00000    -2.60812     1  2  py   0.99986
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quintet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaaa22        -0.00003036      0.00005722      1.00000000      0.00000522     -0.00004709      0.00000000      0.00000000
 2aaaa2         0.00000467      0.00000042      0.00004709     -0.00006570      1.00000000     -0.00000001      0.00000000
 a2aaa2         0.99999999      0.00014719      0.00003035      0.00006521     -0.00000467      0.00000000     -0.00000000
 aa22aa         0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000579     -0.00002315
 a22aaa        -0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000043      0.00926904
 aaa2a2        -0.00007003      0.03296740     -0.00000710      0.99945642      0.00006565      0.00000000     -0.00000000
 aa2aa2        -0.00014496      0.99945642     -0.00005702     -0.03296741     -0.00000258     -0.00000000      0.00000000
 a2a2aa         0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00002021      0.44719437
 2aaa2a         0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00004042      0.89438877
 aaa22a         0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00001444      0.00001370
 a2aa2a        -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001      0.08329672      0.00002458
 2aa2aa        -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.88308592      0.00004323
 22aaaa        -0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000     -0.00004389     -0.00002728
 aa2a2a        -0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000     -0.00003368     -0.00000784
 2a2aaa        -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000001     -0.46175850     -0.00001077
 
 Energy:    -1271.27094000  -1271.27094000  -1271.27094000  -1271.27094000  -1271.27094000  -1271.26200409  -1271.26200409

 State:              8               9              10              11              12              13              14
 aaaa22        -0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2aaaa2        -0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000     -0.00000000
 a2aaa2        -0.00000000      0.00000000      0.00000000      0.00000000      0.00000001     -0.00000000     -0.00000000
 aa22aa        -0.00010940      0.99999995      0.00029547     -0.00002286     -0.00008842     -0.00000000     -0.00000000
 a22aaa         0.00000947      0.00008862      0.00001646      0.00005972      0.99995704      0.00000000     -0.00000000
 aaa2a2         0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 aa2aa2         0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a2a2aa        -0.00000746      0.00000998      0.00001192     -0.00001070     -0.00414524     -0.00001270     -0.00010048
 2aaa2a        -0.00001492      0.00001996      0.00002384     -0.00002140     -0.00829048      0.00000635      0.00005024
 aaa22a         0.89343562      0.00008530      0.04210441      0.00010941     -0.00000929     -0.00000700     -0.44721359
 a2aa2a        -0.00009777      0.00002088     -0.00021099      0.89054005     -0.00005337     -0.44721361      0.00000700
 2aa2aa        -0.00000381      0.00000836      0.00001468      0.14198333     -0.00000851      0.44721359     -0.00000700
 22aaaa        -0.26412631     -0.00028138      0.85453916      0.00017757     -0.00001130     -0.00000700     -0.44721359
 aa2a2a         0.36333189     -0.00011321      0.51767740      0.00016569     -0.00001189      0.00001213      0.77459667
 2a2aaa        -0.00005425      0.00000723     -0.00013029      0.43217944     -0.00002590      0.77459667     -0.00001213
 
 Energy:    -1271.26200409  -1271.26200409  -1271.26200409  -1271.26200409  -1271.26200409  -1271.18918346  -1271.18918346

 State:             15
 aaaa22        -0.00000000
 2aaaa2        -0.00000000
 a2aaa2         0.00000000
 aa22aa         0.00000000
 a22aaa        -0.00000000
 aaa2a2        -0.00000000
 aa2aa2        -0.00000000
 a2a2aa         0.89442719
 2aaa2a        -0.44721358
 aaa22a        -0.00005024
 a2aa2a        -0.00000635
 2aa2aa         0.00000635
 22aaaa        -0.00005024
 aa2a2a         0.00008702
 2a2aaa         0.00001100
 
 Energy:    -1271.18918346
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa22ab        -0.00000621     -0.00001722     -0.00007927      0.86351397      0.00006243     -0.00002951     -0.00006402
 a22aab         0.00000382      0.00640712      0.00002767      0.00006414      0.00001284      0.00003297      0.86349021
 2aaa2b        -0.00007022      0.77232913     -0.00001911      0.00001498      0.00001455     -0.00001136     -0.00573070
 aaa22b         0.00001191      0.00001796      0.77080036      0.00006723      0.04890726      0.00007366     -0.00002557
 a2aa2b         0.07433701      0.00001784     -0.00006612      0.00002680     -0.00013385      0.76876465     -0.00002981
 2aa2ab         0.76293745      0.00007107     -0.00002407      0.00000959      0.00001248      0.12021467     -0.00000849
 22aaab        -0.00003703     -0.00001980     -0.24005434     -0.00007511      0.73409741      0.00011075     -0.00000307
 aa2a2b        -0.00001450     -0.00000106      0.30642635     -0.00000455      0.45206795      0.00010647     -0.00001654
 2a2aab        -0.39756364     -0.00003073     -0.00002428      0.00000994     -0.00008448      0.37444052     -0.00001231
 a2a2ab        -0.00003511      0.38616455     -0.00000955      0.00000749      0.00000728     -0.00000568     -0.00286535
 ab22aa         0.00000207      0.00000574      0.00002642     -0.28783799     -0.00002081      0.00000984      0.00002134
 aa22ba         0.00000207      0.00000574      0.00002642     -0.28783799     -0.00002081      0.00000984      0.00002134
 ba22aa         0.00000207      0.00000574      0.00002642     -0.28783799     -0.00002081      0.00000984      0.00002134
 b22aaa        -0.00000132     -0.00158325     -0.00000924     -0.00002137     -0.00000427     -0.00001100     -0.28783417
 a22baa        -0.00000127     -0.00213571     -0.00000922     -0.00002138     -0.00000428     -0.00001099     -0.28783007
 a22aba        -0.00000122     -0.00268816     -0.00000921     -0.00002139     -0.00000429     -0.00001098     -0.28782597
 2baa2a         0.00002346     -0.25808097      0.00000639     -0.00000500     -0.00000486      0.00000379      0.00191497
 2aab2a         0.00002346     -0.25808096      0.00000639     -0.00000500     -0.00000486      0.00000379      0.00191497
 baa22a        -0.00000398     -0.00000600     -0.25757011     -0.00002246     -0.01634281     -0.00002461      0.00000855
 aab22a        -0.00000400     -0.00000600     -0.25713173     -0.00002247     -0.01569608     -0.00002446      0.00000852
 b2aa2a        -0.02484040     -0.00000596      0.00002210     -0.00000896      0.00004473     -0.25688986      0.00000996
 a2ba2a        -0.02540917     -0.00000601      0.00002206     -0.00000894      0.00004461     -0.25635418      0.00000994
 2aba2a         0.00002329     -0.25616720      0.00000634     -0.00000497     -0.00000483      0.00000377      0.00190077
 aba22a        -0.00000393     -0.00000596     -0.25609852     -0.00002229     -0.01686837     -0.00002458      0.00000851
 a2ab2a        -0.02408744     -0.00000587      0.00002197     -0.00000890      0.00004452     -0.25552061      0.00000991
 2aa2ba        -0.25494265     -0.00002375      0.00000804     -0.00000321     -0.00000417     -0.04017085      0.00000284
 2ab2aa        -0.25437388     -0.00002370      0.00000808     -0.00000322     -0.00000405     -0.04070654      0.00000285
 2ba2aa        -0.25362092     -0.00002362      0.00000795     -0.00000317     -0.00000426     -0.03933729      0.00000280
 22aaba         0.00001237      0.00000662      0.08021639      0.00002510     -0.24530548     -0.00003701      0.00000103
 22baaa         0.00001235      0.00000661      0.08065477      0.00002509     -0.24465874     -0.00003686      0.00000100
 22abaa         0.00001230      0.00000657      0.07918318      0.00002492     -0.24413319     -0.00003689      0.00000104
 aa2b2a         0.00000489      0.00000038     -0.10179869      0.00000162     -0.15173954     -0.00003565      0.00000552
 ab2a2a         0.00000482      0.00000033     -0.10324484      0.00000142     -0.15075929     -0.00003560      0.00000555
 ba2a2a         0.00000480      0.00000035     -0.10138282      0.00000150     -0.14956913     -0.00003523      0.00000547
 2b2aaa         0.13361269      0.00001034      0.00000806     -0.00000330      0.00002818     -0.12464153      0.00000409
 2a2baa         0.13241486      0.00001022      0.00000819     -0.00000335      0.00002835     -0.12591332      0.00000415
 2a2aba         0.13153608      0.00001017      0.00000803     -0.00000329      0.00002795     -0.12388567      0.00000407
 a2b2aa         0.00001182     -0.12999736      0.00000322     -0.00000252     -0.00000245      0.00000191      0.00096458
 a2a2ba         0.00001164     -0.12809276      0.00000313     -0.00000258     -0.00000243      0.00000184     -0.00028495
 b2a2aa         0.00001165     -0.12807443      0.00000321     -0.00000239     -0.00000240      0.00000193      0.00218571
 
 Energy:    -1271.23125270  -1271.23125270  -1271.23125270  -1271.23125270  -1271.23125270  -1271.23125270  -1271.23125270
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       45.31       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.95       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        15.32      3.16      3.29      8.71
 REAL TIME  *        18.11 SEC
 DISK USED  *        47.35 MB (local),      541.66 MB (total)
 SF USED    *        42.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -1271.270940    6.0
    -1271.270940    6.0
    -1271.270940    6.0
    -1271.270940    6.0
    -1271.270940    6.0
    -1271.262004   12.0
    -1271.262004   12.0
    -1271.262004   12.0
    -1271.262004   12.0
    -1271.262004   12.0
    -1271.262004   12.0
    -1271.262004   12.0
    -1271.189183    2.0
    -1271.189183    2.0
    -1271.189183    2.0
    -1271.231253   12.0
    -1271.231253   12.0
    -1271.231253   12.0
    -1271.231253   12.0
    -1271.231253   12.0
    -1271.231253   12.0
    -1271.231253   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Quintet 
 Number of electrons:                 26
 Maximum number of shells:             3
 Maximum number of spin couplings:    20

 Reference space:       15 conf       15 CSFs
 N elec internal:      185 conf      185 CSFs
 N-1 el internal:      566 conf     1310 CSFs
 N-2 el internal:      535 conf     4040 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        6 (   6   0 )
 Number of external orbitals:     196 ( 104  92 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1271.27094000
     2     -1271.27094000
     3     -1271.27094000
     4     -1271.27094000
     5     -1271.27094000
     6     -1271.26200409
     7     -1271.26200409
     8     -1271.26200409
     9     -1271.26200409
    10     -1271.26200409
    11     -1271.26200409
    12     -1271.26200409
    13     -1271.18918346
    14     -1271.18918346
    15     -1271.18918346

 Number of blocks in overlap matrix:   365   Smallest eigenvalue:  0.16D+00
 Number of N-2 electron functions:    1220
 Number of N-1 electron functions:    1310

 Number of internal configurations:                   80
 Number of singly external configurations:        127780
 Number of doubly external configurations:      11702700
 Total number of contracted configurations:     11830560
 Total number of uncontracted configurations:   38814060

 Diagonal Coupling coefficients finished.               Storage:  372706 words, CPU-Time:      0.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1033072 words, CPU-time:      0.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1271.27094000     0.00000000    -0.83488514  0.10D+00  0.92D-01     2.08
    1     2     2     1.00000000     0.00000000 -1271.27094000     0.00000000    -0.83450203  0.10D+00  0.91D-01     2.08
    1     3     3     1.00000000     0.00000000 -1271.27094000    -0.00000000    -0.83472854  0.10D+00  0.92D-01     2.08
    1     4     4     1.00000000     0.00000000 -1271.27094000     0.00000000    -0.83449734  0.10D+00  0.91D-01     2.08
    1     5     5     1.00000000     0.00000000 -1271.27094000    -0.00000000    -0.83499326  0.10D+00  0.92D-01     2.08
    1     6     6     1.00000000     0.00000000 -1271.26200409     0.00000000    -0.81867875  0.35D-01  0.97D-01     2.08
    1     7     7     1.00000000     0.00000000 -1271.26200409     0.00000000    -0.81832980  0.35D-01  0.97D-01     2.08
    1     8     8     1.00000000     0.00000000 -1271.26200409    -0.00000000    -0.81852811  0.35D-01  0.97D-01     2.08
    1     9     9     1.00000000     0.00000000 -1271.26200409     0.00000000    -0.81924083  0.35D-01  0.98D-01     2.08
    1    10    10     1.00000000     0.00000000 -1271.26200409     0.00000000    -0.81822253  0.35D-01  0.97D-01     2.08
    1    11    11     1.00000000     0.00000000 -1271.26200409     0.00000000    -0.81854950  0.35D-01  0.97D-01     2.08
    1    12    12     1.00000000     0.00000000 -1271.26200409     0.00000000    -0.81849655  0.35D-01  0.97D-01     2.08
    1    13    13     1.00000000     0.00000000 -1271.18918346     0.00000000    -0.84207044  0.56D-01  0.10D+00     2.08
    1    14    14     1.00000000     0.00000000 -1271.18918346    -0.00000000    -0.84198531  0.55D-01  0.10D+00     2.08
    1    15    15     1.00000000     0.00000000 -1271.18918346    -0.00000000    -0.84195276  0.55D-01  0.10D+00     2.08
    2     1     1     1.08179955    -0.63860095 -1271.90954095    -0.63860095    -0.02290440  0.20D-02  0.22D-02   780.73
    2     2     2     1.08186274    -0.63858139 -1271.90952139    -0.63858139    -0.02292951  0.20D-02  0.21D-02   780.73
    2     3     3     1.08183752    -0.63857359 -1271.90951359    -0.63857359    -0.02294053  0.20D-02  0.22D-02   780.73
    2     4     4     1.08189640    -0.63851703 -1271.90945703    -0.63851703    -0.02301737  0.21D-02  0.22D-02   780.73
    2     5     5     1.08189702    -0.63850277 -1271.90944277    -0.63850277    -0.02303598  0.21D-02  0.22D-02   780.73
    2     6     6     1.08192130    -0.64734535 -1271.90934944    -0.64734535    -0.02315930  0.22D-02  0.22D-02   780.73
    2     7     7     1.08192249    -0.64730789 -1271.90931198    -0.64730789    -0.02321183  0.22D-02  0.22D-02   780.73
    2     8     8     1.10881731    -0.64238724 -1271.90439133    -0.64238724    -0.04864373  0.86D-02  0.39D-02   780.73
    2     9     9     1.10882837    -0.64235754 -1271.90436163    -0.64235754    -0.04868433  0.86D-02  0.39D-02   780.73
    2    10    10     1.10913471    -0.64235323 -1271.90435732    -0.64235323    -0.04861014  0.85D-02  0.39D-02   780.73
    2    11    11     1.10915975    -0.64225571 -1271.90425980    -0.64225571    -0.04874988  0.86D-02  0.39D-02   780.73
    2    12    12     1.10918126    -0.64225279 -1271.90425688    -0.64225279    -0.04875416  0.86D-02  0.39D-02   780.73
    2    13    13     1.09364077    -0.66038831 -1271.84957178    -0.66038831    -0.02768274  0.41D-02  0.23D-02   780.73
    2    14    14     1.09370732    -0.66024912 -1271.84943258    -0.66024912    -0.02788641  0.43D-02  0.23D-02   780.73
    2    15    15     1.09374434    -0.66021999 -1271.84940345    -0.66021999    -0.02792752  0.43D-02  0.22D-02   780.73
    3     1     1     1.08982624    -0.67208375 -1271.94302376    -0.03348280    -0.00109254  0.83D-04  0.18D-03  1540.04
    3     2     2     1.08982743    -0.67208265 -1271.94302265    -0.03350126    -0.00109341  0.83D-04  0.18D-03  1540.04
    3     3     3     1.08992685    -0.67206776 -1271.94300776    -0.03349417    -0.00110270  0.83D-04  0.18D-03  1540.04
    3     4     4     1.08993020    -0.67206707 -1271.94300707    -0.03355004    -0.00110575  0.83D-04  0.18D-03  1540.04
    3     5     5     1.08993989    -0.67206605 -1271.94300605    -0.03356328    -0.00110526  0.83D-04  0.18D-03  1540.04
    3     6     6     1.07546550    -0.66772748 -1271.92973157    -0.02038213    -0.00047202  0.58D-04  0.46D-04  1540.04
    3     7     7     1.07546864    -0.66772644 -1271.92973053    -0.02041854    -0.00047336  0.58D-04  0.46D-04  1540.04
    3     8     8     1.07547563    -0.66772442 -1271.92972851    -0.02533718    -0.00047559  0.59D-04  0.46D-04  1540.04
    3     9     9     1.07548729    -0.66772288 -1271.92972697    -0.02536534    -0.00047948  0.60D-04  0.46D-04  1540.04
    3    10    10     1.07548185    -0.66772142 -1271.92972551    -0.02536818    -0.00048052  0.60D-04  0.46D-04  1540.04
    3    11    11     1.07548842    -0.66771669 -1271.92972078    -0.02546098    -0.00048850  0.62D-04  0.46D-04  1540.04
    3    12    12     1.07549036    -0.66771245 -1271.92971654    -0.02545966    -0.00049266  0.62D-04  0.47D-04  1540.04
    3    13    13     1.08354131    -0.68417491 -1271.87335837    -0.02378660    -0.00073507  0.10D-03  0.76D-04  1540.04
    3    14    14     1.08355766    -0.68416197 -1271.87334543    -0.02391285    -0.00075431  0.11D-03  0.78D-04  1540.04
    3    15    15     1.08356763    -0.68415881 -1271.87334227    -0.02393882    -0.00075849  0.11D-03  0.78D-04  1540.04
    4     1     1     1.08925548    -0.67320259 -1271.94414259    -0.00111883    -0.00006519  0.16D-04  0.64D-05  2308.75
    4     2     2     1.08925509    -0.67320252 -1271.94414252    -0.00111987    -0.00006513  0.16D-04  0.64D-05  2308.75
    4     3     3     1.08926585    -0.67319893 -1271.94413893    -0.00113118    -0.00006603  0.16D-04  0.68D-05  2308.75
    4     4     4     1.08926866    -0.67319683 -1271.94413684    -0.00112977    -0.00006575  0.16D-04  0.67D-05  2308.75
    4     5     5     1.08926462    -0.67319653 -1271.94413653    -0.00113048    -0.00006590  0.16D-04  0.67D-05  2308.75
    4     6     6     1.07544320    -0.66817211 -1271.93017620    -0.00044463    -0.00002935  0.67D-05  0.29D-05  2308.75
    4     7     7     1.07544353    -0.66817199 -1271.93017608    -0.00044555    -0.00002955  0.68D-05  0.29D-05  2308.75
    4     8     8     1.07544390    -0.66817158 -1271.93017567    -0.00044716    -0.00003041  0.71D-05  0.30D-05  2308.75
    4     9     9     1.07544231    -0.66817157 -1271.93017565    -0.00044868    -0.00002952  0.67D-05  0.29D-05  2308.75
    4    10    10     1.07544135    -0.66817134 -1271.93017543    -0.00044992    -0.00002980  0.68D-05  0.30D-05  2308.75
    4    11    11     1.07544275    -0.66817117 -1271.93017526    -0.00045448    -0.00002957  0.67D-05  0.30D-05  2308.75
    4    12    12     1.07544440    -0.66817094 -1271.93017503    -0.00045849    -0.00003085  0.71D-05  0.31D-05  2308.75
    4    13    13     1.08298874    -0.68482390 -1271.87400736    -0.00064899    -0.00004629  0.12D-04  0.51D-05  2308.75
    4    14    14     1.08299622    -0.68482382 -1271.87400728    -0.00066185    -0.00004713  0.13D-04  0.53D-05  2308.75
    4    15    15     1.08299727    -0.68482358 -1271.87400704    -0.00066477    -0.00004735  0.13D-04  0.53D-05  2308.75
    5     1     1     1.08964756    -0.67328467 -1271.94422467    -0.00008208    -0.00000965  0.13D-05  0.12D-05  3101.74
    5     2     2     1.08964738    -0.67328447 -1271.94422448    -0.00008196    -0.00000964  0.13D-05  0.12D-05  3101.74
    5     3     3     1.08964523    -0.67328188 -1271.94422188    -0.00008295    -0.00000964  0.13D-05  0.12D-05  3101.74
    5     4     4     1.08964332    -0.67327938 -1271.94421938    -0.00008254    -0.00000960  0.13D-05  0.12D-05  3101.74
    5     5     5     1.08964292    -0.67327933 -1271.94421933    -0.00008280    -0.00000964  0.13D-05  0.12D-05  3101.74
    5     6     6     1.07571514    -0.66820244 -1271.93020654    -0.00003033    -0.00000236  0.47D-06  0.27D-06  3101.74
    5     7     7     1.07571524    -0.66820226 -1271.93020635    -0.00003027    -0.00000238  0.46D-06  0.28D-06  3101.74
    5     8     8     1.07571800    -0.66820223 -1271.93020632    -0.00003065    -0.00000229  0.46D-06  0.26D-06  3101.74
    5     9     9     1.07571764    -0.66820223 -1271.93020632    -0.00003066    -0.00000229  0.46D-06  0.26D-06  3101.74
    5    10    10     1.07571780    -0.66820174 -1271.93020583    -0.00003040    -0.00000228  0.46D-06  0.26D-06  3101.74
    5    11    11     1.07571774    -0.66820174 -1271.93020583    -0.00003056    -0.00000228  0.46D-06  0.26D-06  3101.74
    5    12    12     1.07571797    -0.66820146 -1271.93020555    -0.00003052    -0.00000228  0.46D-06  0.26D-06  3101.74
    5    13    13     1.08302408    -0.68487273 -1271.87405619    -0.00004883    -0.00000375  0.78D-06  0.45D-06  3101.74
    5    14    14     1.08302381    -0.68487271 -1271.87405617    -0.00004889    -0.00000376  0.78D-06  0.45D-06  3101.74
    5    15    15     1.08301971    -0.68487207 -1271.87405553    -0.00004848    -0.00000369  0.76D-06  0.44D-06  3101.74
    6     1     1     1.08974776    -0.67329605 -1271.94423605    -0.00001138    -0.00000145  0.34D-06  0.11D-06  3901.52
    6     2     2     1.08974776    -0.67329585 -1271.94423586    -0.00001138    -0.00000145  0.34D-06  0.11D-06  3901.52
    6     3     3     1.08974262    -0.67329327 -1271.94423327    -0.00001138    -0.00000145  0.34D-06  0.11D-06  3901.52
    6     4     4     1.08974022    -0.67329072 -1271.94423072    -0.00001134    -0.00000145  0.34D-06  0.11D-06  3901.52
    6     5     5     1.08974024    -0.67329072 -1271.94423072    -0.00001139    -0.00000145  0.34D-06  0.11D-06  3901.52
    6     6     6     1.07579556    -0.66820479 -1271.93020888    -0.00000234    -0.00000017  0.27D-07  0.21D-07  3901.52
    6     7     7     1.07579537    -0.66820462 -1271.93020871    -0.00000236    -0.00000017  0.26D-07  0.21D-07  3901.52
    6     8     8     1.07579589    -0.66820450 -1271.93020859    -0.00000227    -0.00000016  0.25D-07  0.20D-07  3901.52
    6     9     9     1.07579577    -0.66820450 -1271.93020859    -0.00000227    -0.00000016  0.25D-07  0.20D-07  3901.52
    6    10    10     1.07579582    -0.66820399 -1271.93020808    -0.00000226    -0.00000016  0.25D-07  0.20D-07  3901.52
    6    11    11     1.07579582    -0.66820399 -1271.93020808    -0.00000226    -0.00000016  0.25D-07  0.20D-07  3901.52
    6    12    12     1.07579567    -0.66820372 -1271.93020781    -0.00000227    -0.00000016  0.25D-07  0.20D-07  3901.52
    6    13    13     1.08302097    -0.68487666 -1271.87406012    -0.00000393    -0.00000030  0.44D-07  0.41D-07  3901.52
    6    14    14     1.08302081    -0.68487666 -1271.87406012    -0.00000395    -0.00000030  0.45D-07  0.42D-07  3901.52
    6    15    15     1.08301881    -0.68487593 -1271.87405939    -0.00000386    -0.00000029  0.43D-07  0.40D-07  3901.52
    7     1     1     1.08981001    -0.67329769 -1271.94423769    -0.00000164    -0.00000021  0.55D-07  0.19D-07  4719.90
    7     2     2     1.08980995    -0.67329749 -1271.94423749    -0.00000164    -0.00000021  0.55D-07  0.19D-07  4719.90
    7     3     3     1.08980653    -0.67329491 -1271.94423491    -0.00000165    -0.00000021  0.55D-07  0.20D-07  4719.90
    7     4     4     1.08980397    -0.67329236 -1271.94423236    -0.00000164    -0.00000021  0.55D-07  0.20D-07  4719.90
    7     5     5     1.08980401    -0.67329236 -1271.94423236    -0.00000165    -0.00000021  0.55D-07  0.20D-07  4719.90
    7     6     6     1.07581118    -0.66820497 -1271.93020906    -0.00000019    -0.00000002  0.37D-08  0.14D-08  4719.90
    7     7     7     1.07581081    -0.66820480 -1271.93020889    -0.00000018    -0.00000002  0.36D-08  0.14D-08  4719.90
    7     8     8     1.07581089    -0.66820468 -1271.93020877    -0.00000018    -0.00000002  0.34D-08  0.14D-08  4719.90
    7     9     9     1.07581092    -0.66820468 -1271.93020877    -0.00000018    -0.00000002  0.33D-08  0.14D-08  4719.90
    7    10    10     1.07581095    -0.66820417 -1271.93020826    -0.00000018    -0.00000002  0.33D-08  0.13D-08  4719.90
    7    11    11     1.07581095    -0.66820417 -1271.93020826    -0.00000018    -0.00000002  0.33D-08  0.13D-08  4719.90
    7    12    12     1.07581072    -0.66820390 -1271.93020799    -0.00000018    -0.00000002  0.33D-08  0.14D-08  4719.90
    7    13    13     1.08300567    -0.68487699 -1271.87406045    -0.00000034    -0.00000004  0.17D-07  0.26D-08  4719.90
    7    14    14     1.08300564    -0.68487699 -1271.87406045    -0.00000034    -0.00000004  0.17D-07  0.27D-08  4719.90
    7    15    15     1.08300423    -0.68487626 -1271.87405971    -0.00000033    -0.00000004  0.16D-07  0.25D-08  4719.90
    8     1     1     1.08980162    -0.67329791 -1271.94423791    -0.00000022    -0.00000004  0.48D-08  0.53D-08  5116.16
    8     2     2     1.08980156    -0.67329771 -1271.94423771    -0.00000022    -0.00000004  0.48D-08  0.53D-08  5116.16
    8     3     3     1.08979910    -0.67329513 -1271.94423514    -0.00000022    -0.00000004  0.49D-08  0.54D-08  5116.16
    8     4     4     1.08979651    -0.67329259 -1271.94423259    -0.00000022    -0.00000004  0.48D-08  0.54D-08  5116.16
    8     5     5     1.08979651    -0.67329259 -1271.94423259    -0.00000022    -0.00000004  0.48D-08  0.53D-08  5116.16
    8     6     6     1.07581118    -0.66820497 -1271.93020906    -0.00000000    -0.00000002  0.37D-08  0.14D-08  5116.16
    8     7     7     1.07581081    -0.66820480 -1271.93020889    -0.00000000    -0.00000002  0.36D-08  0.14D-08  5116.16
    8     8     8     1.07581089    -0.66820468 -1271.93020877    -0.00000000    -0.00000002  0.34D-08  0.14D-08  5116.16
    8     9     9     1.07581092    -0.66820468 -1271.93020877    -0.00000000    -0.00000002  0.33D-08  0.14D-08  5116.16
    8    10    10     1.07581094    -0.66820417 -1271.93020826    -0.00000000    -0.00000002  0.33D-08  0.13D-08  5116.16
    8    11    11     1.07581094    -0.66820417 -1271.93020826    -0.00000000    -0.00000002  0.33D-08  0.13D-08  5116.16
    8    12    12     1.07581071    -0.66820390 -1271.93020799    -0.00000000    -0.00000002  0.33D-08  0.14D-08  5116.16
    8    13    13     1.08299399    -0.68487704 -1271.87406050    -0.00000004    -0.00000000  0.89D-09  0.47D-09  5116.16
    8    14    14     1.08299399    -0.68487704 -1271.87406050    -0.00000004    -0.00000000  0.88D-09  0.47D-09  5116.16
    8    15    15     1.08299314    -0.68487630 -1271.87405976    -0.00000004    -0.00000000  0.83D-09  0.44D-09  5116.16
    9     1     1     1.08981355    -0.67329795 -1271.94423796    -0.00000005    -0.00000000  0.67D-09  0.37D-09  5387.00
    9     2     2     1.08981347    -0.67329776 -1271.94423776    -0.00000005    -0.00000000  0.67D-09  0.37D-09  5387.00
    9     3     3     1.08981111    -0.67329518 -1271.94423518    -0.00000005    -0.00000000  0.68D-09  0.39D-09  5387.00
    9     4     4     1.08980849    -0.67329263 -1271.94423263    -0.00000005    -0.00000000  0.68D-09  0.39D-09  5387.00
    9     5     5     1.08980851    -0.67329263 -1271.94423263    -0.00000005    -0.00000000  0.68D-09  0.39D-09  5387.00
    9     6     6     1.07581118    -0.66820497 -1271.93020906    -0.00000000    -0.00000002  0.37D-08  0.14D-08  5387.00
    9     7     7     1.07581081    -0.66820480 -1271.93020889     0.00000000    -0.00000002  0.36D-08  0.14D-08  5387.00
    9     8     8     1.07581089    -0.66820468 -1271.93020877     0.00000000    -0.00000002  0.34D-08  0.14D-08  5387.00
    9     9     9     1.07581092    -0.66820468 -1271.93020877    -0.00000000    -0.00000002  0.33D-08  0.14D-08  5387.00
    9    10    10     1.07581094    -0.66820417 -1271.93020826    -0.00000000    -0.00000002  0.33D-08  0.13D-08  5387.00
    9    11    11     1.07581094    -0.66820417 -1271.93020826    -0.00000000    -0.00000002  0.33D-08  0.13D-08  5387.00
    9    12    12     1.07581071    -0.66820390 -1271.93020799     0.00000000    -0.00000002  0.33D-08  0.14D-08  5387.00
    9    13    13     1.08299399    -0.68487704 -1271.87406050    -0.00000000    -0.00000000  0.89D-09  0.47D-09  5387.00
    9    14    14     1.08299399    -0.68487704 -1271.87406050    -0.00000000    -0.00000000  0.88D-09  0.47D-09  5387.00
    9    15    15     1.08299314    -0.68487630 -1271.87405976    -0.00000000    -0.00000000  0.83D-09  0.44D-09  5387.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   3.5%  55.7%

 Initialization:   0.0%
 Other:           40.5%

 Total CPU:     5387.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/22///222           0.0000000  -0.0000000  -0.0000017   0.0000000  -0.0000000  -0.0000000   0.9639007   0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.0000037  -0.0000000  -0.0000000   0.0000000
 2//22//222          -0.0000000  -0.0000634   0.0000000  -0.0000000  -0.0000000   0.9639005   0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2////22222          -0.0000000   0.0000000  -0.0000000   0.9572373   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000413
                      0.0000011   0.0000000  -0.0000000   0.0000000   0.0000111  -0.0000000
 22////2222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.9572373   0.0000000   0.0000000  -0.0000413   0.0000000
                      0.0000000  -0.0000011  -0.0000000  -0.0000111  -0.0000000   0.0000000
 2/2///2222          -0.0000000  -0.0000000   0.9572361   0.0000000  -0.0000000   0.0000000   0.0000016   0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2///2/2222          -0.0000618   0.9572350   0.0000000   0.0000000  -0.0000000   0.0000639  -0.0000000   0.0000000  -0.0000000
                      0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2//2//2222           0.9572350   0.0000618  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 22///2/222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000033  -0.0000000  -0.0000000
                      0.0000000  -0.0000000   0.8621359   0.0000000  -0.0000000  -0.4294805
 2/2/2//222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000017   0.0000000   0.0000000
                     -0.0000000   0.0000000   0.4310760  -0.0000000   0.0000000   0.8589446
 22//2//222           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000383   0.0000000   0.0000000   0.8013794  -0.0000000
                      0.0000000  -0.3179237  -0.0000000   0.4294727  -0.0000000   0.0000000
 2///22/222           0.0000000   0.0000000  -0.0000000   0.0000383  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8012587
                      0.3182278   0.0000000  -0.0000000   0.0000000  -0.4294727   0.0000000
 22/2///222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000016   0.0000000   0.0000000  -0.1692812  -0.0000000
                      0.0000000   0.5856500  -0.0000000   0.7438703   0.0000000   0.0000000
 2//2/2/222          -0.0000000  -0.0000000   0.0000000  -0.0000016   0.0000000   0.0000000   0.0000000   0.0000000   0.1690589
                      0.5857142   0.0000000  -0.0000000  -0.0000000   0.7438703  -0.0000000
 2/2//2/222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000178  -0.0000000  -0.0000000   0.5081726   0.0000000
                     -0.0000000   0.6964504   0.0000000  -0.4294748  -0.0000000  -0.0000000
 222////222           0.0000000   0.0000000  -0.0000000  -0.0000178   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5084369
                      0.6962575  -0.0000000   0.0000000  -0.0000000  -0.4294748   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.956713   -0.000000   -0.031617   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.031617    0.000000    0.956713    0.000000    0.000000    0.000000    0.000000   -0.000063    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.957236   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000002    0.000000    0.000000   -0.000000
 4           0.000000    0.000000    0.957237    0.000000    0.000000   -0.000000   -0.000000    0.000038   -0.000000   -0.000014
            -0.000000    0.000000    0.000000   -0.000010    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.957237    0.000035    0.000000   -0.000000   -0.000000    0.000000
             0.000022   -0.000000    0.000010    0.000000   -0.000000
 6           0.000000    0.000002   -0.000000    0.000064    0.000000   -0.000000   -0.000000    0.000000    0.963901   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000
 7           0.000002   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.008939   -0.000000    0.000000    0.000000
            -0.000000    0.963859    0.000000    0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000041    0.828190   -0.000000    0.000000   -0.000000    0.000000
             0.493159    0.000000    0.000001    0.000000    0.000000
 9           0.000000   -0.000000   -0.000041   -0.000000    0.000000    0.000000   -0.000000    0.911589    0.000000   -0.313224
            -0.000000    0.000000   -0.000000   -0.000001    0.000000
 10         -0.000000   -0.000000    0.000001    0.000000    0.000000    0.000000   -0.000000    0.313224   -0.000000    0.911589
             0.000000   -0.000000    0.000000    0.000001   -0.000000
 11          0.000000   -0.000000    0.000000    0.000000   -0.000001   -0.493159   -0.000000    0.000000   -0.000000    0.000000
             0.828190    0.000000    0.000001    0.000000    0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.963859   -0.000000    0.000000   -0.000000
             0.000000   -0.008939   -0.000000   -0.000000    0.000007
 13          0.000000    0.000000    0.000000   -0.000000   -0.000011   -0.000001    0.000000    0.000000    0.000000   -0.000000
            -0.000001   -0.000000    0.960332    0.000000   -0.000000
 14          0.000000    0.000000    0.000011    0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000000   -0.000001
            -0.000000   -0.000000    0.000000    0.960332    0.000000
 15          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000007   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.960333

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957235   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.957235   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.957236   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.957237    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.957237    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.963901   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.963901    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.963901    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.963901    0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.963901
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 11          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.963901   -0.000000    0.000000    0.000000   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.963901   -0.000000   -0.000000   -0.000000
 13         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.960332    0.000000   -0.000000
 14         -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.960332   -0.000000
 15          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.960333


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95671271 (fixed)   0.95723499 (relaxed)   0.95723499 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140710   -0.00872438   -0.45593010
 Singles      0.03924561   -0.17666739   -0.18609068
 Pairs        0.05069431    0.00000000   -0.03127717
 Total        1.09134702   -0.18539177   -0.67329795
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.27094000
 Nuclear energy                         0.00000000
 Kinetic energy                      1323.72321000
 One electron energy                -1753.55731788
 Two electron energy                  481.61307992
 Virial quotient                       -0.96088384
 Correlation energy                    -0.67329795
 !MRCI STATE 1.1 Energy             -1271.944237957726

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1272.00574172 (Davidson, fixed reference)
 Cluster corrected energies         -1272.00574172 (Davidson, relaxed reference)
 Cluster corrected energies         -1272.00574172 (Davidson, rotated reference)

 Cluster corrected energies         -1271.99874318 (Pople, fixed reference)
 Cluster corrected energies         -1271.99874318 (Pople, relaxed reference)
 Cluster corrected energies         -1271.99874318 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95671276 (fixed)   0.95723505 (relaxed)   0.95723505 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140705   -0.00872425   -0.45593004
 Singles      0.03924552   -0.17666728   -0.18609055
 Pairs        0.05069432    0.00000000   -0.03127716
 Total        1.09134690   -0.18539153   -0.67329776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.27094000
 Nuclear energy                         0.00000000
 Kinetic energy                      1323.72321054
 One electron energy                -1753.55731943
 Two electron energy                  481.61308167
 Virial quotient                       -0.96088384
 Correlation energy                    -0.67329776
 !MRCI STATE 2.1 Energy             -1271.944237759488

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1272.00574142 (Davidson, fixed reference)
 Cluster corrected energies         -1272.00574142 (Davidson, relaxed reference)
 Cluster corrected energies         -1272.00574142 (Davidson, rotated reference)

 Cluster corrected energies         -1271.99874289 (Pople, fixed reference)
 Cluster corrected energies         -1271.99874289 (Pople, relaxed reference)
 Cluster corrected energies         -1271.99874289 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95723613 (fixed)   0.95723613 (relaxed)   0.95723613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140696   -0.00872394   -0.45593146
 Singles      0.03924279   -0.17666422   -0.18608644
 Pairs        0.05069467    0.00000000   -0.03127728
 Total        1.09134442   -0.18538817   -0.67329518
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.27094000
 Nuclear energy                         0.00000000
 Kinetic energy                      1323.72317222
 One electron energy                -1753.55723602
 Two electron energy                  481.61300084
 Virial quotient                       -0.96088386
 Correlation energy                    -0.67329518
 !MRCI STATE 3.1 Energy             -1271.944235183692

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1272.00573694 (Davidson, fixed reference)
 Cluster corrected energies         -1272.00573694 (Davidson, relaxed reference)
 Cluster corrected energies         -1272.00573694 (Davidson, rotated reference)

 Cluster corrected energies         -1271.99873853 (Pople, fixed reference)
 Cluster corrected energies         -1271.99873853 (Pople, relaxed reference)
 Cluster corrected energies         -1271.99873853 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95723732 (fixed)   0.95723732 (relaxed)   0.95723732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140686   -0.00872365   -0.45593294
 Singles      0.03924000   -0.17666124   -0.18608236
 Pairs        0.05069484   -0.00000000   -0.03127734
 Total        1.09134170   -0.18538489   -0.67329263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.27094000
 Nuclear energy                         0.00000000
 Kinetic energy                      1323.72312859
 One electron energy                -1753.55713808
 Two electron energy                  481.61290544
 Virial quotient                       -0.96088389
 Correlation energy                    -0.67329263
 !MRCI STATE 4.1 Energy             -1271.944232634944

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1272.00573233 (Davidson, fixed reference)
 Cluster corrected energies         -1272.00573233 (Davidson, relaxed reference)
 Cluster corrected energies         -1272.00573233 (Davidson, rotated reference)

 Cluster corrected energies         -1271.99873405 (Pople, fixed reference)
 Cluster corrected energies         -1271.99873405 (Pople, relaxed reference)
 Cluster corrected energies         -1271.99873405 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95723732 (fixed)   0.95723732 (relaxed)   0.95723732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140686   -0.00872365   -0.45593291
 Singles      0.03924002   -0.17666125   -0.18608237
 Pairs        0.05069484   -0.00000000   -0.03127735
 Total        1.09134172   -0.18538490   -0.67329263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.27094000
 Nuclear energy                         0.00000000
 Kinetic energy                      1323.72312911
 One electron energy                -1753.55713954
 Two electron energy                  481.61290691
 Virial quotient                       -0.96088389
 Correlation energy                    -0.67329263
 !MRCI STATE 5.1 Energy             -1271.944232634747

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1272.00573234 (Davidson, fixed reference)
 Cluster corrected energies         -1272.00573234 (Davidson, relaxed reference)
 Cluster corrected energies         -1272.00573234 (Davidson, rotated reference)

 Cluster corrected energies         -1271.99873406 (Pople, fixed reference)
 Cluster corrected energies         -1271.99873406 (Pople, relaxed reference)
 Cluster corrected energies         -1271.99873406 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96390052 (fixed)   0.96390052 (relaxed)   0.96390052 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045950   -0.00287819   -0.52697736
 Singles      0.01821480   -0.10132338   -0.10545054
 Pairs        0.05763121    0.00000000   -0.03577707
 Total        1.07630552   -0.10420156   -0.66820497
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87762171
 One electron energy                -1760.73094696
 Two electron energy                  488.80073789
 Virial quotient                       -0.96003600
 Correlation energy                    -0.66820497
 !MRCI STATE 6.1 Energy             -1271.930209062603

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119679 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119679 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119679 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493604 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493604 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493604 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96385921 (fixed)   0.96390066 (relaxed)   0.96390066 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045957   -0.00287838   -0.52697758
 Singles      0.01821455   -0.10132316   -0.10545006
 Pairs        0.05763110   -0.00000001   -0.03577717
 Total        1.07630522   -0.10420155   -0.66820480
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87764394
 One electron energy                -1760.73100488
 Two electron energy                  488.80079599
 Virial quotient                       -0.96003598
 Correlation energy                    -0.66820481
 !MRCI STATE 7.1 Energy             -1271.930208894081

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119641 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119641 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119641 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493567 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493567 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493567 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.82818999 (fixed)   0.96390067 (relaxed)   0.96390067 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045948   -0.00287811   -0.52697768
 Singles      0.01821437   -0.10132289   -0.10545006
 Pairs        0.05763136    0.00000000   -0.03577694
 Total        1.07630520   -0.10420100   -0.66820468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87769822
 One electron energy                -1760.73104402
 Two electron energy                  488.80083525
 Virial quotient                       -0.96003594
 Correlation energy                    -0.66820468
 !MRCI STATE 8.1 Energy             -1271.930208771062

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119627 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119627 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119627 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493553 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493553 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493553 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.91158926 (fixed)   0.96390065 (relaxed)   0.96390065 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045948   -0.00287811   -0.52697768
 Singles      0.01821439   -0.10132288   -0.10545007
 Pairs        0.05763136    0.00000000   -0.03577694
 Total        1.07630523   -0.10420099   -0.66820468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87770204
 One electron energy                -1760.73104709
 Two electron energy                  488.80083832
 Virial quotient                       -0.96003594
 Correlation energy                    -0.66820468
 !MRCI STATE 9.1 Energy             -1271.930208770957

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119629 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119629 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119629 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493555 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493555 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493555 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.91158930 (fixed)   0.96390071 (relaxed)   0.96390071 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045935   -0.00287769   -0.52697742
 Singles      0.01821433   -0.10132262   -0.10544999
 Pairs        0.05763144    0.00000000   -0.03577676
 Total        1.07630511   -0.10420031   -0.66820417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87772185
 One electron energy                -1760.73105875
 Two electron energy                  488.80085049
 Virial quotient                       -0.96003592
 Correlation energy                    -0.66820417
 !MRCI STATE 10.1 Energy            -1271.930208259680

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119566 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119566 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119566 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493493 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493493 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493493 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.82818999 (fixed)   0.96390071 (relaxed)   0.96390071 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045935   -0.00287769   -0.52697740
 Singles      0.01821432   -0.10132264   -0.10544999
 Pairs        0.05763145   -0.00000000   -0.03577678
 Total        1.07630511   -0.10420033   -0.66820417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87771794
 One electron energy                -1760.73105602
 Two electron energy                  488.80084776
 Virial quotient                       -0.96003593
 Correlation energy                    -0.66820417
 !MRCI STATE 11.1 Energy            -1271.930208259550

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119566 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119566 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119566 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493493 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493493 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493493 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96385936 (fixed)   0.96390081 (relaxed)   0.96390081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045935   -0.00287771   -0.52697342
 Singles      0.01821413   -0.10132241   -0.10544962
 Pairs        0.05763140   -0.00000437   -0.03578086
 Total        1.07630489   -0.10420448   -0.66820390
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.26200409
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.87772976
 One electron energy                -1760.73109192
 Two electron energy                  488.80088393
 Virial quotient                       -0.96003592
 Correlation energy                    -0.66820390
 !MRCI STATE 12.1 Energy            -1271.930207988610

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.98119521 (Davidson, fixed reference)
 Cluster corrected energies         -1271.98119521 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.98119521 (Davidson, rotated reference)

 Cluster corrected energies         -1271.97493450 (Pople, fixed reference)
 Cluster corrected energies         -1271.97493450 (Pople, relaxed reference)
 Cluster corrected energies         -1271.97493450 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.96033249 (fixed)   0.96033249 (relaxed)   0.96033249 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122274   -0.00766762   -0.53200438
 Singles      0.02438110   -0.10885242   -0.11579001
 Pairs        0.05871438   -0.00000000   -0.03708264
 Total        1.08431822   -0.11652004   -0.68487704
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.18918346
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85134323
 One electron energy                -1760.53019477
 Two electron energy                  488.65613428
 Virial quotient                       -0.96001266
 Correlation energy                    -0.68487704
 !MRCI STATE 13.1 Energy            -1271.874060498245

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.93180811 (Davidson, fixed reference)
 Cluster corrected energies         -1271.93180811 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.93180811 (Davidson, rotated reference)

 Cluster corrected energies         -1271.92499332 (Pople, fixed reference)
 Cluster corrected energies         -1271.92499332 (Pople, relaxed reference)
 Cluster corrected energies         -1271.92499332 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.96033249 (fixed)   0.96033249 (relaxed)   0.96033249 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122274   -0.00766762   -0.53200437
 Singles      0.02438110   -0.10885244   -0.11579002
 Pairs        0.05871437   -0.00000000   -0.03708265
 Total        1.08431822   -0.11652006   -0.68487704
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.18918346
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85134242
 One electron energy                -1760.53019285
 Two electron energy                  488.65613235
 Virial quotient                       -0.96001266
 Correlation energy                    -0.68487704
 !MRCI STATE 14.1 Energy            -1271.874060498020

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.93180811 (Davidson, fixed reference)
 Cluster corrected energies         -1271.93180811 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.93180811 (Davidson, rotated reference)

 Cluster corrected energies         -1271.92499332 (Pople, fixed reference)
 Cluster corrected energies         -1271.92499332 (Pople, relaxed reference)
 Cluster corrected energies         -1271.92499332 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.96033288 (fixed)   0.96033288 (relaxed)   0.96033288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122271   -0.00766752   -0.00784358
 Singles      0.02438032   -0.10885169   -0.11578884
 Pairs        0.05871429   -0.56835708   -0.56124388
 Total        1.08431733   -0.68487630   -0.68487630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.18918346
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85133798
 One electron energy                -1760.53018455
 Two electron energy                  488.65612479
 Virial quotient                       -0.96001266
 Correlation energy                    -0.68487630
 !MRCI STATE 15.1 Energy            -1271.874059757540

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.93180670 (Davidson, fixed reference)
 Cluster corrected energies         -1271.93180670 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.93180670 (Davidson, rotated reference)

 Cluster corrected energies         -1271.92499196 (Pople, fixed reference)
 Cluster corrected energies         -1271.92499196 (Pople, relaxed reference)
 Cluster corrected energies         -1271.92499196 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       45.31       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1374.16       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5601.85   5586.53      3.16      3.29      8.71
 REAL TIME  *      5796.93 SEC
 DISK USED  *         1.39 GB (local),        4.55 GB (total)
 SF USED    *        12.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1272.00574172  AU                              
 SETTING HLSDIAG(2)     =     -1272.00574142  AU                              
 SETTING HLSDIAG(3)     =     -1272.00573694  AU                              
 SETTING HLSDIAG(4)     =     -1272.00573233  AU                              
 SETTING HLSDIAG(5)     =     -1272.00573234  AU                              
 SETTING HLSDIAG(6)     =     -1271.98119679  AU                              
 SETTING HLSDIAG(7)     =     -1271.98119641  AU                              
 SETTING HLSDIAG(8)     =     -1271.98119627  AU                              
 SETTING HLSDIAG(9)     =     -1271.98119629  AU                              
 SETTING HLSDIAG(10)    =     -1271.98119566  AU                              
 SETTING HLSDIAG(11)    =     -1271.98119566  AU                              
 SETTING HLSDIAG(12)    =     -1271.98119521  AU                              
 SETTING HLSDIAG(13)    =     -1271.93180811  AU                              
 SETTING HLSDIAG(14)    =     -1271.93180811  AU                              
 SETTING HLSDIAG(15)    =     -1271.93180670  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 26
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       75 conf      105 CSFs
 N elec internal:      461 conf      831 CSFs
 N-1 el internal:      986 conf     3594 CSFs
 N-2 el internal:     1395 conf    11160 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        6 (   6   0 )
 Number of external orbitals:     196 ( 104  92 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations: 105

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1271.23125270
     2     -1271.23125270
     3     -1271.23125270
     4     -1271.23125270
     5     -1271.23125270
     6     -1271.23125270
     7     -1271.23125270

 Number of blocks in overlap matrix:   152   Smallest eigenvalue:  0.10D-05
 Number of N-2 electron functions:     685
 Number of N-1 electron functions:    3594

 Number of internal configurations:                  408
 Number of singly external configurations:        352176
 Number of doubly external configurations:       6587622
 Total number of contracted configurations:      6940206
 Total number of uncontracted configurations:  107347656

 Diagonal Coupling coefficients finished.               Storage:  493009 words, CPU-Time:      0.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  899529 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1271.23125270     0.00000000    -0.82233885  0.43D-01  0.98D-01     1.00
    1     2     2     1.00000000     0.00000000 -1271.23125270     0.00000000    -0.82175173  0.43D-01  0.98D-01     1.00
    1     3     3     1.00000000     0.00000000 -1271.23125270    -0.00000000    -0.82206974  0.43D-01  0.98D-01     1.00
    1     4     4     1.00000000     0.00000000 -1271.23125270     0.00000000    -0.82324521  0.44D-01  0.99D-01     1.00
    1     5     5     1.00000000     0.00000000 -1271.23125270     0.00000000    -0.82177210  0.43D-01  0.98D-01     1.00
    1     6     6     1.00000000     0.00000000 -1271.23125270     0.00000000    -0.82165024  0.43D-01  0.98D-01     1.00
    1     7     7     1.00000000     0.00000000 -1271.23125270     0.00000000    -0.82267984  0.43D-01  0.98D-01     1.00
    2     1     1     1.08719063    -0.65103021 -1271.88228292    -0.65103021    -0.02364716  0.32D-02  0.22D-02   218.75
    2     2     2     1.08722527    -0.65101780 -1271.88227051    -0.65101780    -0.02366766  0.31D-02  0.22D-02   218.75
    2     3     3     1.08724554    -0.65098943 -1271.88224213    -0.65098943    -0.02368751  0.32D-02  0.21D-02   218.75
    2     4     4     1.08740450    -0.65083973 -1271.88209243    -0.65083973    -0.02385244  0.33D-02  0.22D-02   218.75
    2     5     5     1.08740624    -0.65083859 -1271.88209129    -0.65083859    -0.02385640  0.33D-02  0.22D-02   218.75
    2     6     6     1.08773402    -0.65059139 -1271.88184409    -0.65059139    -0.02415131  0.35D-02  0.22D-02   218.75
    2     7     7     1.08784584    -0.65058653 -1271.88183923    -0.65058653    -0.02418417  0.35D-02  0.22D-02   218.75
    3     1     1     1.07787306    -0.67220731 -1271.90346001    -0.02117710    -0.00057078  0.93D-04  0.59D-04   424.31
    3     2     2     1.07782937    -0.67220191 -1271.90345461    -0.02118411    -0.00057363  0.93D-04  0.60D-04   424.31
    3     3     3     1.07795181    -0.67219913 -1271.90345183    -0.02120969    -0.00058590  0.99D-04  0.59D-04   424.31
    3     4     4     1.07782206    -0.67219684 -1271.90344954    -0.02135711    -0.00057903  0.94D-04  0.61D-04   424.31
    3     5     5     1.07783371    -0.67219078 -1271.90344349    -0.02135219    -0.00058609  0.96D-04  0.61D-04   424.31
    3     6     6     1.07780774    -0.67218705 -1271.90343975    -0.02159566    -0.00058820  0.96D-04  0.62D-04   424.31
    3     7     7     1.07788520    -0.67218704 -1271.90343974    -0.02160051    -0.00059496  0.10D-03  0.61D-04   424.31
    4     1     1     1.07761112    -0.67277391 -1271.90402661    -0.00056660    -0.00004178  0.95D-05  0.45D-05   650.17
    4     2     2     1.07758192    -0.67277307 -1271.90402577    -0.00057116    -0.00004177  0.91D-05  0.46D-05   650.17
    4     3     3     1.07756178    -0.67277186 -1271.90402456    -0.00057274    -0.00004264  0.90D-05  0.48D-05   650.17
    4     4     4     1.07758016    -0.67277185 -1271.90402455    -0.00057501    -0.00004342  0.95D-05  0.48D-05   650.17
    4     5     5     1.07755507    -0.67277116 -1271.90402387    -0.00058038    -0.00004332  0.92D-05  0.49D-05   650.17
    4     6     6     1.07755772    -0.67277106 -1271.90402376    -0.00058401    -0.00004360  0.93D-05  0.49D-05   650.17
    4     7     7     1.07754464    -0.67277024 -1271.90402294    -0.00058320    -0.00004420  0.92D-05  0.50D-05   650.17
    5     1     1     1.07787406    -0.67281633 -1271.90406904    -0.00004243    -0.00000294  0.55D-06  0.37D-06   869.73
    5     2     2     1.07786677    -0.67281618 -1271.90406888    -0.00004311    -0.00000303  0.55D-06  0.38D-06   869.73
    5     3     3     1.07786489    -0.67281612 -1271.90406882    -0.00004426    -0.00000310  0.57D-06  0.40D-06   869.73
    5     4     4     1.07786113    -0.67281604 -1271.90406874    -0.00004419    -0.00000314  0.56D-06  0.40D-06   869.73
    5     5     5     1.07785908    -0.67281600 -1271.90406870    -0.00004484    -0.00000318  0.57D-06  0.41D-06   869.73
    5     6     6     1.07785815    -0.67281599 -1271.90406869    -0.00004493    -0.00000319  0.57D-06  0.41D-06   869.73
    5     7     7     1.07785531    -0.67281592 -1271.90406861    -0.00004568    -0.00000325  0.58D-06  0.42D-06   869.73
    6     1     1     1.07792982    -0.67281915 -1271.90407185    -0.00000281    -0.00000018  0.17D-07  0.33D-07  1090.45
    6     2     2     1.07792703    -0.67281912 -1271.90407182    -0.00000294    -0.00000020  0.19D-07  0.37D-07  1090.45
    6     3     3     1.07792640    -0.67281912 -1271.90407182    -0.00000300    -0.00000020  0.18D-07  0.37D-07  1090.45
    6     4     4     1.07792410    -0.67281910 -1271.90407180    -0.00000306    -0.00000022  0.20D-07  0.39D-07  1090.45
    6     5     5     1.07792495    -0.67281910 -1271.90407180    -0.00000310    -0.00000022  0.20D-07  0.39D-07  1090.45
    6     6     6     1.07792375    -0.67281910 -1271.90407180    -0.00000311    -0.00000022  0.21D-07  0.40D-07  1090.45
    6     7     7     1.07792267    -0.67281909 -1271.90407179    -0.00000318    -0.00000023  0.21D-07  0.41D-07  1090.45
    7     1     1     1.07794705    -0.67281935 -1271.90407205    -0.00000020    -0.00000002  0.23D-08  0.24D-08  1322.87
    7     2     2     1.07794601    -0.67281935 -1271.90407205    -0.00000023    -0.00000002  0.24D-08  0.29D-08  1322.87
    7     3     3     1.07794607    -0.67281935 -1271.90407205    -0.00000023    -0.00000002  0.25D-08  0.29D-08  1322.87
    7     4     4     1.07794519    -0.67281935 -1271.90407205    -0.00000024    -0.00000002  0.26D-08  0.32D-08  1322.87
    7     5     5     1.07794511    -0.67281935 -1271.90407205    -0.00000025    -0.00000002  0.26D-08  0.33D-08  1322.87
    7     6     6     1.07794551    -0.67281935 -1271.90407205    -0.00000025    -0.00000002  0.26D-08  0.33D-08  1322.87
    7     7     7     1.07794481    -0.67281935 -1271.90407204    -0.00000025    -0.00000002  0.27D-08  0.34D-08  1322.87


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.2%   6.9%  52.2%

 Initialization:   0.0%
 Other:           40.1%

 Total CPU:     1322.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//22/\222           0.9602089   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/22//\222           0.0000000  -0.0000000   0.9257554   0.0000000   0.2549096  -0.0000000  -0.0000000
 2/2//2\222          -0.0000000  -0.0048648   0.0000000   0.0000000  -0.0000000  -0.0000000   0.8588223
 222///\222           0.0000000  -0.0000000  -0.0000000   0.8486241  -0.0000000   0.1320502   0.0000000
 22//2/\222           0.0000000   0.8303370  -0.0000000  -0.0000000   0.0000000   0.0000000   0.2194179
 22///2\222           0.0000000   0.0000000  -0.2279970  -0.0000000   0.8280182  -0.0000000   0.0000000
 2///22\222           0.0000000  -0.0000000  -0.0000000  -0.3400141   0.0000000   0.7886663   0.0000000
 2//2/2\222          -0.0000000   0.0000000   0.0000000   0.2936500   0.0000000   0.5315740  -0.0000000
 22/2//\222           0.0000000  -0.4822022  -0.0000000  -0.0000000   0.0000000   0.0000000   0.3691658
 2/2/2/\222          -0.0000000  -0.0000000  -0.1140016   0.0000000   0.4140169  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.000000    0.962927   -0.000000    0.000000    0.000000
 2           0.957914    0.000000   -0.000000    0.000000   -0.000000   -0.098134   -0.000000
 3          -0.000000   -0.248745   -0.000000   -0.000000    0.000000    0.000000    0.930244
 4           0.000000   -0.000000   -0.436561    0.000000    0.858279    0.000000   -0.000000
 5          -0.000000    0.930245    0.000000   -0.000000    0.000000   -0.000000    0.248745
 6          -0.000000   -0.000000    0.858279   -0.000000    0.436561    0.000000    0.000000
 7           0.098134    0.000000   -0.000000   -0.000000    0.000000    0.957914   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962927    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.962927   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.962927    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.962927   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.962928    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.962927    0.000000
 7           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.962928


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96292665 (fixed)   0.96292732 (relaxed)   0.96292665 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049785   -0.00306894   -0.52888811
 Singles      0.01919086   -0.10275711   -0.10725216
 Pairs        0.05879499   -0.00000000   -0.03667908
 Total        1.07848371   -0.10582605   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85701236
 One electron energy                -1760.67918921
 Two electron energy                  488.77511716
 Virial quotient                       -0.96003120
 Correlation energy                    -0.67281935
 !MRCI STATE 1.1 Energy             -1271.904072051842

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687741 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687640 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687741 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95198132 (Pople, fixed reference)
 Cluster corrected energies         -1271.95198035 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95198132 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95791353 (fixed)   0.96292778 (relaxed)   0.96292711 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049786   -0.00306895   -0.52888930
 Singles      0.01919011   -0.10275636   -0.10725172
 Pairs        0.05879471   -0.00000000   -0.03667832
 Total        1.07848268   -0.10582531   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85699461
 One electron energy                -1760.67919897
 Two electron energy                  488.77512692
 Virial quotient                       -0.96003122
 Correlation energy                    -0.67281935
 !MRCI STATE 2.1 Energy             -1271.904072048859

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687671 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687570 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687671 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95198065 (Pople, fixed reference)
 Cluster corrected energies         -1271.95197968 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95198065 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.93024432 (fixed)   0.96292776 (relaxed)   0.96292708 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049785   -0.00306894   -0.02100016
 Singles      0.01919038   -0.10275686   -0.10725183
 Pairs        0.05879449   -0.54774914   -0.54456736
 Total        1.07848273   -0.65357495   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85695519
 One electron energy                -1760.67914453
 Two electron energy                  488.77507248
 Virial quotient                       -0.96003124
 Correlation energy                    -0.67281935
 !MRCI STATE 3.1 Energy             -1271.904072047948

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687675 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687573 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687675 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95198069 (Pople, fixed reference)
 Cluster corrected energies         -1271.95197971 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95198069 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85827935 (fixed)   0.96292815 (relaxed)   0.96292748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049786   -0.00306895   -0.52888973
 Singles      0.01918974   -0.10275634   -0.10725146
 Pairs        0.05879425   -0.00000000   -0.03667815
 Total        1.07848185   -0.10582528   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85694780
 One electron energy                -1760.67915941
 Two electron energy                  488.77508737
 Virial quotient                       -0.96003125
 Correlation energy                    -0.67281935
 !MRCI STATE 4.1 Energy             -1271.904072046575

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687615 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687514 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687615 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95198011 (Pople, fixed reference)
 Cluster corrected energies         -1271.95197914 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95198011 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93024479 (fixed)   0.96292818 (relaxed)   0.96292751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049786   -0.00306895   -0.39308170
 Singles      0.01918970   -0.10275627   -0.10725143
 Pairs        0.05879422   -0.14646660   -0.17248621
 Total        1.07848178   -0.25229181   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85694416
 One electron energy                -1760.67915724
 Two electron energy                  488.77508519
 Virial quotient                       -0.96003125
 Correlation energy                    -0.67281935
 !MRCI STATE 5.1 Energy             -1271.904072046496

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687610 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687509 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687610 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95198007 (Pople, fixed reference)
 Cluster corrected energies         -1271.95197909 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95198007 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.85827920 (fixed)   0.96292801 (relaxed)   0.96292733 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049786   -0.00306895   -0.52888972
 Singles      0.01918992   -0.10275618   -0.10725157
 Pairs        0.05879440   -0.00000000   -0.03667805
 Total        1.07848217   -0.10582513   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85696712
 One electron energy                -1760.67917848
 Two electron energy                  488.77510644
 Virial quotient                       -0.96003124
 Correlation energy                    -0.67281935
 !MRCI STATE 6.1 Energy             -1271.904072045882

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687637 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687535 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687637 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95198032 (Pople, fixed reference)
 Cluster corrected energies         -1271.95197935 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95198032 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95791406 (fixed)   0.96292832 (relaxed)   0.96292765 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049786   -0.00306895   -0.52889004
 Singles      0.01918956   -0.10275621   -0.10725134
 Pairs        0.05879406    0.00000000   -0.03667798
 Total        1.07848147   -0.10582516   -0.67281935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1271.23125270
 Nuclear energy                         0.00000000
 Kinetic energy                      1324.85693267
 One electron energy                -1760.67914922
 Two electron energy                  488.77507718
 Virial quotient                       -0.96003126
 Correlation energy                    -0.67281935
 !MRCI STATE 7.1 Energy             -1271.904072044987

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1271.95687590 (Davidson, fixed reference)
 Cluster corrected energies         -1271.95687488 (Davidson, relaxed reference)
 Cluster corrected energies         -1271.95687590 (Davidson, rotated reference)

 Cluster corrected energies         -1271.95197987 (Pople, fixed reference)
 Cluster corrected energies         -1271.95197889 (Pople, relaxed reference)
 Cluster corrected energies         -1271.95197987 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       45.31       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1763.16       700     1000      520     2100     2140     5101     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6952.74   1350.88   5586.53      3.16      3.29      8.71
 REAL TIME  *      7181.97 SEC
 DISK USED  *         1.77 GB (local),        5.69 GB (total)
 SF USED    *        12.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(16)    =     -1271.95687741  AU                              
 SETTING HLSDIAG(17)    =     -1271.95687671  AU                              
 SETTING HLSDIAG(18)    =     -1271.95687675  AU                              
 SETTING HLSDIAG(19)    =     -1271.95687615  AU                              
 SETTING HLSDIAG(20)    =     -1271.95687610  AU                              
 SETTING HLSDIAG(21)    =     -1271.95687637  AU                              
 SETTING HLSDIAG(22)    =     -1271.95687590  AU                              


         HLSDIAG
    -1272.005742
    -1272.005741
    -1272.005737
    -1272.005732
    -1272.005732
    -1271.981197
    -1271.981196
    -1271.981196
    -1271.981196
    -1271.981196
    -1271.981196
    -1271.981195
    -1271.931808
    -1271.931808
    -1271.931807
    -1271.956877
    -1271.956877
    -1271.956877
    -1271.956876
    -1271.956876
    -1271.956876
    -1271.956876
                                                  


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

 Time for Seward_LS:      51.41 sec

      139219235. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    34357 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     51.41 sec, REAL time:     51.92 sec


 SORTLS1 read   140674162. and wrote   140674162. SO integrals in   540 records. CPU time:      1.53 sec, REAL time:      2.28 sec
 SORTLS2 read   140674162. and wrote   140674162. SO integrals in     9 records. CPU time:      4.76 sec, REAL time:      6.17 sec

 FILE SIZES: FILE 1:  2299.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2299.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 2.0  NSTATE=  15

 Original energies:  -1271.944238  -1271.944238  -1271.944235  -1271.944233  -1271.944233  -1271.930209  -1271.930209  -1271.930209
                     -1271.930209  -1271.930208  -1271.930208  -1271.930208  -1271.874060  -1271.874060  -1271.874060
 Replaced energies:  -1272.005742  -1272.005741  -1272.005737  -1272.005732  -1272.005732  -1271.981197  -1271.981196  -1271.981196
                     -1271.981196  -1271.981196  -1271.981196  -1271.981195  -1271.931808  -1271.931808  -1271.931807

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   7

 Original energies:  -1271.904072  -1271.904072  -1271.904072  -1271.904072  -1271.904072  -1271.904072  -1271.904072
 Replaced energies:  -1271.956877  -1271.956877  -1271.956877  -1271.956876  -1271.956876  -1271.956876  -1271.956876



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1272.00574172

 Wigner-Eckart theorem used for 38 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.03       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  2.0  2.0       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     427.32      -0.00       0.00       0.00      -1.39      -0.00      -0.00       0.00

    3   3.1  2.0  2.0       0.00       0.00       1.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -427.32       0.00      -0.00      -0.00      -1.44       0.00      -0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       2.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    -213.66      -0.00       0.00      -0.47       0.00       0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       2.06       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     213.66      -0.00      -0.00       0.00       0.00       0.47       1.73

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00    5386.99       0.00       0.00       0.00       0.00
                           -0.00      -0.00       1.44       0.00       0.00      -0.00    -391.25      -0.00       0.00      -0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00    5387.07       0.00       0.00       0.00
                           -0.00       1.39      -0.00      -0.00      -0.00     391.25       0.00      -0.00      -0.00      -0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.10       0.00       0.00
                            0.00       0.00       0.00       0.47      -0.00       0.00       0.00      -0.00    -526.63     208.55

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.10       0.00
                           -0.00       0.00      -0.00      -0.00      -0.47      -0.00       0.00     526.63      -0.00      -0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.24
                            0.00      -0.00      -0.00      -0.00      -1.73       0.00       0.00    -208.55       0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -1.73      -0.00      -0.00      -0.00       0.00    -208.70    -135.37

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.90       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       1.03      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       1.03      -0.00       0.00      -0.00       0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.20       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   16   1.1  2.0  1.0      -0.00       0.00       0.00      -0.00    -185.03      -0.00       0.00       0.22       0.00       0.00
                            0.00       0.00      -0.00    -185.04       0.00       0.00      -0.00      -0.00       0.22       0.74

   17   2.1  2.0  1.0      -0.00      -0.00       0.00      -0.00    -106.84       0.00      -0.00       0.78       0.00      -0.00
                           -0.00       0.00      -0.00     106.82       0.00      -0.00       0.00       0.00      -0.79       0.45

   18   3.1  2.0  1.0      -0.00      -0.00       0.00    -106.83      -0.00       0.00      -0.00      -0.00      -0.89       0.02
                            0.00       0.00      -0.00      -0.00    -106.83       0.00      -0.00      -0.89       0.00      -0.00

   19   4.1  2.0  1.0       0.00       0.00     106.83      -0.00      -0.00       0.00       0.71      -0.00       0.00       0.00
                          185.04    -106.82       0.00      -0.00      -0.00       0.69      -0.00      -0.00      -0.00       0.00

   20   5.1  2.0  1.0     185.03     106.84       0.00       0.00       0.00      -0.69      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     106.83       0.00      -0.00       0.00       0.71      -0.00       0.00      -0.00

   21   6.1  2.0  1.0       0.00      -0.00      -0.00      -0.00       0.69      -0.00      -0.00    -158.03       0.00      -0.00
                           -0.00       0.00      -0.00      -0.69      -0.00       0.00      -0.00       0.00     157.99     115.37

   22   7.1  2.0  1.0      -0.00       0.00       0.00      -0.71       0.00       0.00       0.00      -0.00     -72.21     181.81
                            0.00      -0.00       0.00       0.00      -0.71       0.00      -0.00     -72.14       0.00       0.00

   23   8.1  2.0  1.0      -0.22      -0.78       0.00       0.00       0.00     158.03       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.89       0.00       0.00      -0.00      72.14      -0.00      -0.00      -0.00

   24   9.1  2.0  1.0      -0.00      -0.00       0.89      -0.00       0.00      -0.00      72.21      -0.00       0.00      -0.00
                           -0.22       0.79      -0.00       0.00      -0.00    -157.99      -0.00       0.00      -0.00       0.00

   25  10.1  2.0  1.0      -0.00       0.00      -0.02      -0.00       0.00       0.00    -181.81       0.00       0.00       0.00
                           -0.74      -0.45       0.00      -0.00       0.00    -115.37      -0.00       0.00      -0.00       0.00

   26  11.1  2.0  1.0       0.74      -0.45       0.00       0.00      -0.00    -115.31      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.03      -0.00       0.00      -0.00     181.84       0.00       0.00       0.00

   27  12.1  2.0  1.0       0.00       0.00      -0.00       0.55       0.00      -0.00       0.00       0.00      66.44     230.20
                           -0.00      -0.00      -0.00      -0.00      -0.55       0.00       0.00     -66.53      -0.00      -0.00

   28  13.1  2.0  1.0       0.30      -0.52       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.52      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   29  14.1  2.0  1.0      -0.00       0.00       0.52      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.30      -0.52       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  15.1  2.0  1.0       0.00      -0.00      -0.00      -0.52       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.52      -0.00      -0.00       0.00       0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  11.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  12.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  13.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  14.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  15.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   4.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   5.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   6.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   7.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   8.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   9.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  10.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  11.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  12.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  13.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  15.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00      26.21       0.00       0.00      87.82       0.00       0.00
                            0.00      -0.00       0.00     -26.21      -0.00      -0.00       0.00      -0.00     -87.79     -64.11

   77   2.1  1.0  1.0     -22.80     -12.92      -0.00      -0.00       0.00    -108.71      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      26.09      -0.00       0.00      -0.00      27.77       0.00      -0.00       0.00

   78   3.1  1.0  1.0       0.00       0.00      -0.00     -30.65      -0.00       0.00      -0.00      -0.00      48.49     -63.45
                            0.00      -0.00       0.00       0.00     -19.87       0.00       0.00      28.84      -0.00      -0.00

   79   4.1  1.0  1.0       0.00       0.00     -24.09       0.00      -0.00       0.00      99.83       0.00       0.00      -0.00
                          -13.88     -32.10      -0.00       0.00       0.00     -16.72      -0.00       0.00       0.00       0.00

   80   5.1  1.0  1.0      -0.00      -0.00      -0.00      12.61      -0.00      -0.00      -0.00      -0.00     -24.95    -150.16
                           -0.00      -0.00      -0.00       0.00     -26.53       0.00      -0.00      46.29      -0.00      -0.00

   81   6.1  1.0  1.0       0.00      -0.00      22.77      -0.00       0.00      -0.00      43.04       0.00       0.00       0.00
                          -25.13       8.26      -0.00      -0.00       0.00     107.42       0.00       0.00      -0.00      -0.00

   82   7.1  1.0  1.0      17.45     -30.52       0.00       0.00      -0.00      -0.62      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      20.45       0.00      -0.00       0.00    -105.10       0.00      -0.00      -0.00

   83   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   95   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   96   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     185.03
                           -0.00      -1.90      -0.00       0.00      -1.20      -0.00       0.00      -0.00    -185.04       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     106.84
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     106.82       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     106.83       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -106.83

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -106.83      -0.00       0.00
                            1.73       0.00      -1.03       0.00       0.00     185.04    -106.82       0.00       0.00      -0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00    -185.03    -106.84      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -1.03      -0.00      -0.00      -0.00     106.83       0.00       0.00

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.69
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.69      -0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.71      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.71

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.22       0.78      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.89       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.89       0.00      -0.00
                          208.70      -0.00       0.00      -0.00      -0.00      -0.22       0.79      -0.00       0.00      -0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.02       0.00      -0.00
                          135.37       0.00       0.00      -0.00       0.00      -0.74      -0.45       0.00      -0.00       0.00

   11  11.1  2.0  2.0    5387.24       0.00       0.00       0.00       0.00      -0.74       0.45      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.03      -0.00       0.00

   12  12.1  2.0  2.0       0.00    5387.34       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.55      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.55

   13  13.1  2.0  2.0       0.00       0.00   16226.55       0.00       0.00      -0.30       0.52      -0.00       0.00       0.00
                            0.00       0.00       0.00    -180.59       0.00       0.00       0.00      -0.52      -0.00      -0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00   16226.55       0.00       0.00      -0.00      -0.52       0.00      -0.00
                            0.00       0.00     180.59       0.00       0.00      -0.30      -0.52       0.00       0.00      -0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00   16226.86      -0.00       0.00       0.00       0.52      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.52

   16   1.1  2.0  1.0      -0.74      -0.00      -0.30       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.30       0.00       0.00       0.00      -0.01       0.00       0.00

   17   2.1  2.0  1.0       0.45      -0.00       0.52      -0.00       0.00       0.00       0.07       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.52      -0.00      -0.00       0.00     213.66      -0.00       0.00

   18   3.1  2.0  1.0      -0.00       0.00      -0.00      -0.52       0.00       0.00       0.00       1.05       0.00       0.00
                           -0.03       0.00       0.52      -0.00       0.00       0.01    -213.66       0.00      -0.00      -0.00

   19   4.1  2.0  1.0      -0.00      -0.55       0.00       0.00       0.52       0.00       0.00       0.00       2.06       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -106.83

   20   5.1  2.0  1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       2.06
                           -0.00       0.55       0.00       0.00      -0.52      -0.00      -0.00       0.00     106.83      -0.00

   21   6.1  2.0  1.0     115.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.72       0.00       0.00

   22   7.1  2.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -181.84      -0.00      -0.00       0.00       0.00      -0.00       0.69      -0.00      -0.00      -0.00

   23   8.1  2.0  1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      66.53      -0.00       0.00      -0.00       0.00       0.00       0.00       0.23      -0.00

   24   9.1  2.0  1.0       0.00     -66.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.23

   25  10.1  2.0  1.0       0.00    -230.20       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.86

   26  11.1  2.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -230.17      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.86      -0.00

   27  12.1  2.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          230.17      -0.00       0.00       0.00       0.00       0.95       0.00      -0.00      -0.00       0.00

   28  13.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      90.30       0.00      -0.00      -0.00       0.52      -0.00

   29  14.1  2.0  1.0      -0.00      -0.00      -0.00      -0.00      90.30       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.52

   30  15.1  2.0  1.0      -0.00      -0.00      -0.00     -90.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -90.30      -0.00      -0.00       0.60       0.00      -0.00      -0.00       0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -226.61
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -226.63       0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -130.85
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     130.82       0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -130.84      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -130.84

   34   4.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     130.84      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     226.63    -130.82       0.00      -0.00      -0.00

   35   5.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00     226.61     130.85       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     130.84       0.00      -0.00

   36   6.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.85
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.85      -0.00

   37   7.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.87       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.87

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.27      -0.96       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       1.09       0.00       0.00

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.09      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.27       0.96      -0.00       0.00      -0.00

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.03      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.91      -0.55       0.00      -0.00       0.00

   41  11.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.91      -0.55       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.03      -0.00       0.00

   42  12.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.67       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.67

   43  13.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.36      -0.64       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.64      -0.00      -0.00

   44  14.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.64      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.36      -0.64       0.00       0.00      -0.00

   45  15.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.63       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.63

   46   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   4.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   5.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   6.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   7.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   8.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   9.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  10.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  11.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  12.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  13.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  15.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   1.1  1.0  1.0     -64.08       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     -26.21       0.00       0.00

   77   2.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -105.72      -0.00       0.00       0.00       0.00      -0.00      -0.00     -26.33       0.00

   78   3.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          131.38      -0.00       0.00       0.00       0.00       9.34     -25.28      -0.00      -0.00      -0.00

   79   4.1  1.0  1.0       0.00      64.38      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      16.02

   80   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -96.49       0.00      -0.00       0.00      -0.00     -33.90      -6.96      -0.00       0.00       0.00

   81   6.1  1.0  1.0      -0.00     116.55      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      29.02

   82   7.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      80.94      -0.00      -0.00      -0.00       0.00       0.00       0.00      20.15      -0.00

   83   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      18.53
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     -18.53      -0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     -16.12      -9.14      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      18.45      -0.00       0.00

   85   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -21.67      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     -14.05

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.03       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -9.81     -22.70      -0.00       0.00       0.00

   87   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       8.92      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -18.76

   88   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      16.10      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -17.77       5.84      -0.00      -0.00       0.00

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      12.34     -21.58       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      14.46       0.00      -0.00

   90   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   95   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   96   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  2.0  2.0       0.00      -0.00      -0.22      -0.00      -0.00       0.74       0.00       0.30      -0.00       0.00
                            0.00      -0.00      -0.00       0.22       0.74      -0.00       0.00      -0.00       0.30       0.00

    2   2.1  2.0  2.0      -0.00       0.00      -0.78      -0.00       0.00      -0.45       0.00      -0.52       0.00      -0.00
                           -0.00       0.00       0.00      -0.79       0.45       0.00       0.00      -0.00       0.52      -0.00

    3   3.1  2.0  2.0      -0.00       0.00       0.00       0.89      -0.02       0.00      -0.00       0.00       0.52      -0.00
                            0.00      -0.00      -0.89       0.00      -0.00      -0.03       0.00       0.52      -0.00       0.00

    4   4.1  2.0  2.0      -0.00      -0.71       0.00      -0.00      -0.00       0.00       0.55      -0.00      -0.00      -0.52
                            0.69      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    5   5.1  2.0  2.0       0.69       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.71      -0.00       0.00      -0.00      -0.00       0.55       0.00       0.00      -0.52

    6   6.1  2.0  2.0      -0.00       0.00     158.03      -0.00       0.00    -115.31      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00     157.99     115.37       0.00      -0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0      -0.00       0.00       0.00      72.21    -181.81      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00     -72.14       0.00       0.00    -181.84      -0.00      -0.00       0.00       0.00

    8   8.1  2.0  2.0    -158.03      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      72.14       0.00      -0.00      -0.00      -0.00      66.53      -0.00       0.00      -0.00

    9   9.1  2.0  2.0       0.00     -72.21       0.00       0.00       0.00      -0.00      66.44       0.00      -0.00      -0.00
                         -157.99      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   10  10.1  2.0  2.0      -0.00     181.81      -0.00      -0.00       0.00      -0.00     230.20      -0.00       0.00      -0.00
                         -115.37      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   11  11.1  2.0  2.0     115.31       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00     181.84       0.00       0.00       0.00      -0.00    -230.17      -0.00      -0.00       0.00

   12  12.1  2.0  2.0       0.00      -0.00      -0.00     -66.44    -230.20       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00     -66.53      -0.00      -0.00     230.17       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      90.30

   14  14.1  2.0  2.0       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     -90.30
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      90.30       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00     -90.30      -0.00       0.00

   16   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.95      -0.00       0.00      -0.60

   17   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.69      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   18   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.72       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   19   4.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.23       0.00       0.00       0.86       0.00      -0.52       0.00       0.00

   20   5.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.23       0.86       0.00      -0.00       0.00      -0.52      -0.00

   21   6.1  2.0  1.0    5386.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -195.63      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   22   7.1  2.0  1.0       0.00    5387.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          195.63       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   23   8.1  2.0  1.0       0.00       0.00    5387.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -263.31     104.27      -0.00      -0.00      -0.00       0.00       0.00

   24   9.1  2.0  1.0       0.00       0.00       0.00    5387.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     263.31      -0.00      -0.00     104.35      -0.00       0.00      -0.00      -0.00

   25  10.1  2.0  1.0       0.00       0.00       0.00       0.00    5387.24       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -104.27       0.00       0.00      67.68       0.00       0.00      -0.00       0.00

   26  11.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00    5387.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -104.35     -67.68      -0.00      -0.00      -0.00      -0.00      -0.00

   27  12.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    5387.34       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   28  13.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16226.55       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     -90.30       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16226.55       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      90.30       0.00       0.00

   30  15.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16226.86
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0      -0.00       0.00       0.27       0.00       0.00      -0.91      -0.00      -0.36       0.00      -0.00
                            0.00      -0.00      -0.00       0.27       0.91      -0.00       0.00      -0.00       0.36       0.00

   32   2.1  2.0  0.0       0.00      -0.00       0.96       0.00      -0.00       0.55      -0.00       0.64      -0.00       0.00
                           -0.00       0.00       0.00      -0.96       0.55       0.00       0.00      -0.00       0.64      -0.00

   33   3.1  2.0  0.0       0.00      -0.00      -0.00      -1.09       0.03      -0.00       0.00      -0.00      -0.64       0.00
                            0.00      -0.00      -1.09       0.00      -0.00      -0.03       0.00       0.64      -0.00       0.00

   34   4.1  2.0  0.0       0.00       0.87      -0.00       0.00       0.00      -0.00      -0.67       0.00       0.00       0.63
                            0.85      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   35   5.1  2.0  0.0      -0.85      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.87      -0.00       0.00      -0.00      -0.00       0.67       0.00       0.00      -0.63

   36   6.1  2.0  0.0      -0.00      -0.00    -193.55       0.00      -0.00     141.22       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     193.49     141.30       0.00      -0.00       0.00       0.00       0.00

   37   7.1  2.0  0.0       0.00       0.00      -0.00     -88.44     222.68       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00     -88.35       0.00       0.00    -222.71      -0.00      -0.00       0.00       0.00

   38   8.1  2.0  0.0     193.55       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      88.35      -0.00      -0.00      -0.00      -0.00      81.48      -0.00       0.00      -0.00

   39   9.1  2.0  0.0      -0.00      88.44      -0.00       0.00      -0.00       0.00     -81.38      -0.00       0.00       0.00
                         -193.49      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   40  10.1  2.0  0.0       0.00    -222.68       0.00       0.00       0.00       0.00    -281.93       0.00      -0.00       0.00
                         -141.30      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   41  11.1  2.0  0.0    -141.22      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00     222.71       0.00       0.00       0.00       0.00    -281.90      -0.00      -0.00       0.00

   42  12.1  2.0  0.0      -0.00       0.00       0.00      81.38     281.93      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -81.48      -0.00      -0.00     281.90      -0.00       0.00       0.00       0.00

   43  13.1  2.0  0.0      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     110.59

   44  14.1  2.0  0.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     110.59
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   45  15.1  2.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -110.59       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -110.59      -0.00      -0.00

   46   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   4.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   5.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   6.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   7.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   8.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   9.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  10.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  11.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  12.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  13.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  15.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -108.71       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   77   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -83.27      68.96      -0.00      -0.00      -0.00       0.00      -0.00

   78   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.81       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   79   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -144.43       0.00      -0.00     -14.39       0.00       0.00       0.00       0.00

   80   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           28.86       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   81   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      62.54      -0.00      -0.00      67.60      -0.00       0.00       0.00       0.00

   82   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -133.57       4.16       0.00       0.00      -0.00      -0.00       0.00

   83   1.1  1.0  0.0       0.00       0.00      62.10       0.00       0.00     -45.31       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00     -62.08     -45.33      -0.00      -0.00       0.00      -0.00      -0.00

   84   2.1  1.0  0.0     -76.87      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      19.64       0.00      -0.00       0.00      -0.00     -74.76      -0.00       0.00       0.00

   85   3.1  1.0  0.0       0.00      -0.00      -0.00      34.29     -44.87      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00      20.39      -0.00      -0.00      92.90      -0.00       0.00       0.00       0.00

   86   4.1  1.0  0.0       0.00      70.59       0.00       0.00      -0.00       0.00      45.52      -0.00      -0.00      -0.00
                          -11.82      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   87   5.1  1.0  0.0      -0.00      -0.00      -0.00     -17.64    -106.18      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      32.73      -0.00      -0.00     -68.23       0.00      -0.00       0.00      -0.00

   88   6.1  1.0  0.0      -0.00      30.43       0.00       0.00       0.00      -0.00      82.41      -0.00       0.00      -0.00
                           75.96       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   89   7.1  1.0  0.0      -0.44      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00     -74.32       0.00      -0.00      -0.00       0.00      57.23      -0.00      -0.00      -0.00

   90   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   95   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   96   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   1.1  2.0  1.0      -0.00      -0.00      -0.00       0.00     226.61       0.00      -0.00      -0.27      -0.00      -0.00
                           -0.00       0.00      -0.00    -226.63       0.00       0.00      -0.00      -0.00       0.27       0.91

   17   2.1  2.0  1.0       0.00      -0.00      -0.00       0.00     130.85      -0.00       0.00      -0.96      -0.00       0.00
                           -0.00      -0.00      -0.00     130.82       0.00      -0.00       0.00       0.00      -0.96       0.55

   18   3.1  2.0  1.0       0.00       0.00       0.00     130.84       0.00      -0.00       0.00       0.00       1.09      -0.03
                            0.00       0.00       0.00      -0.00    -130.84       0.00      -0.00      -1.09       0.00      -0.00

   19   4.1  2.0  1.0      -0.00      -0.00    -130.84      -0.00       0.00      -0.00      -0.87       0.00      -0.00      -0.00
                          226.63    -130.82       0.00       0.00      -0.00       0.85      -0.00      -0.00      -0.00       0.00

   20   5.1  2.0  1.0    -226.61    -130.85      -0.00      -0.00       0.00       0.85       0.00       0.00       0.00       0.00
                           -0.00      -0.00     130.84       0.00       0.00       0.00       0.87      -0.00       0.00      -0.00

   21   6.1  2.0  1.0      -0.00       0.00       0.00       0.00      -0.85      -0.00       0.00     193.55      -0.00       0.00
                           -0.00       0.00      -0.00      -0.85      -0.00      -0.00      -0.00       0.00     193.49     141.30

   22   7.1  2.0  1.0       0.00      -0.00      -0.00       0.87      -0.00      -0.00       0.00       0.00      88.44    -222.68
                            0.00      -0.00       0.00       0.00      -0.87       0.00       0.00     -88.35       0.00       0.00

   23   8.1  2.0  1.0       0.27       0.96      -0.00      -0.00      -0.00    -193.55      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       1.09       0.00       0.00      -0.00      88.35       0.00      -0.00      -0.00

   24   9.1  2.0  1.0       0.00       0.00      -1.09       0.00      -0.00       0.00     -88.44       0.00       0.00       0.00
                           -0.27       0.96      -0.00       0.00      -0.00    -193.49      -0.00       0.00       0.00       0.00

   25  10.1  2.0  1.0       0.00      -0.00       0.03       0.00      -0.00      -0.00     222.68      -0.00      -0.00       0.00
                           -0.91      -0.55       0.00      -0.00       0.00    -141.30      -0.00       0.00      -0.00      -0.00

   26  11.1  2.0  1.0      -0.91       0.55      -0.00      -0.00       0.00     141.22       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.03      -0.00       0.00      -0.00     222.71       0.00       0.00       0.00

   27  12.1  2.0  1.0      -0.00      -0.00       0.00      -0.67      -0.00       0.00      -0.00      -0.00     -81.38    -281.93
                           -0.00      -0.00      -0.00      -0.00      -0.67       0.00       0.00     -81.48      -0.00      -0.00

   28  13.1  2.0  1.0      -0.36       0.64      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.64      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   29  14.1  2.0  1.0       0.00      -0.00      -0.64       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.36      -0.64       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  15.1  2.0  1.0      -0.00       0.00       0.00       0.63      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.63      -0.00      -0.00       0.00       0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00       1.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   4.1  2.0  0.0       0.00       0.00       0.00       2.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   5.1  2.0  0.0       0.00       0.00       0.00       0.00       2.06       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   6.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00    5386.99       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   7.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    5387.07       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.10       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.10       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  11.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  12.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  13.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  14.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  15.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   1.1  2.0 -1.0      -0.00       0.00       0.00      -0.00    -226.61      -0.00       0.00       0.27       0.00       0.00
                            0.00       0.00      -0.00    -226.63       0.00       0.00      -0.00      -0.00       0.27       0.91

   47   2.1  2.0 -1.0      -0.00      -0.00       0.00      -0.00    -130.85       0.00      -0.00       0.96       0.00      -0.00
                           -0.00       0.00      -0.00     130.82       0.00      -0.00       0.00       0.00      -0.96       0.55

   48   3.1  2.0 -1.0      -0.00      -0.00       0.00    -130.84      -0.00       0.00      -0.00      -0.00      -1.09       0.03
                            0.00       0.00      -0.00      -0.00    -130.84       0.00      -0.00      -1.09       0.00      -0.00

   49   4.1  2.0 -1.0       0.00       0.00     130.84      -0.00      -0.00       0.00       0.87      -0.00       0.00       0.00
                          226.63    -130.82       0.00      -0.00      -0.00       0.85      -0.00      -0.00      -0.00       0.00

   50   5.1  2.0 -1.0     226.61     130.85       0.00       0.00       0.00      -0.85      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     130.84       0.00      -0.00       0.00       0.87      -0.00       0.00      -0.00

   51   6.1  2.0 -1.0       0.00      -0.00      -0.00      -0.00       0.85      -0.00      -0.00    -193.55       0.00      -0.00
                           -0.00       0.00      -0.00      -0.85      -0.00       0.00      -0.00       0.00     193.49     141.30

   52   7.1  2.0 -1.0      -0.00       0.00       0.00      -0.87       0.00       0.00       0.00      -0.00     -88.44     222.68
                            0.00      -0.00       0.00       0.00      -0.87       0.00      -0.00     -88.35       0.00       0.00

   53   8.1  2.0 -1.0      -0.27      -0.96       0.00       0.00       0.00     193.55       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       1.09       0.00       0.00      -0.00      88.35      -0.00      -0.00      -0.00

   54   9.1  2.0 -1.0      -0.00      -0.00       1.09      -0.00       0.00      -0.00      88.44      -0.00       0.00      -0.00
                           -0.27       0.96      -0.00       0.00      -0.00    -193.49      -0.00       0.00      -0.00       0.00

   55  10.1  2.0 -1.0      -0.00       0.00      -0.03      -0.00       0.00       0.00    -222.68       0.00       0.00       0.00
                           -0.91      -0.55       0.00      -0.00       0.00    -141.30      -0.00       0.00      -0.00       0.00

   56  11.1  2.0 -1.0       0.91      -0.55       0.00       0.00      -0.00    -141.22      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.03      -0.00       0.00      -0.00     222.71       0.00       0.00       0.00

   57  12.1  2.0 -1.0       0.00       0.00      -0.00       0.67       0.00      -0.00       0.00       0.00      81.38     281.93
                           -0.00      -0.00      -0.00      -0.00      -0.67       0.00       0.00     -81.48      -0.00      -0.00

   58  13.1  2.0 -1.0       0.36      -0.64       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.64      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   59  14.1  2.0 -1.0      -0.00       0.00       0.64      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.36      -0.64       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  15.1  2.0 -1.0       0.00      -0.00      -0.00      -0.63       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.63      -0.00      -0.00       0.00       0.00      -0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00      10.70       0.00       0.00      35.85       0.00       0.00
                           -0.00       0.00      -0.00      10.70       0.00       0.00      -0.00       0.00      35.84      26.17

   77   2.1  1.0  1.0      -9.31      -5.28      -0.00      -0.00       0.00     -44.38      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -10.65       0.00      -0.00       0.00     -11.34      -0.00       0.00      -0.00

   78   3.1  1.0  1.0       0.00       0.00      -0.00     -12.51      -0.00       0.00      -0.00      -0.00      19.80     -25.90
                           -0.00       0.00      -0.00      -0.00       8.11      -0.00      -0.00     -11.77       0.00       0.00

   79   4.1  1.0  1.0       0.00       0.00      -9.83       0.00      -0.00       0.00      40.76       0.00       0.00      -0.00
                            5.67      13.11       0.00      -0.00      -0.00       6.82       0.00      -0.00      -0.00      -0.00

   80   5.1  1.0  1.0      -0.00      -0.00      -0.00       5.15      -0.00      -0.00      -0.00      -0.00     -10.18     -61.30
                            0.00       0.00       0.00      -0.00      10.83      -0.00       0.00     -18.90       0.00       0.00

   81   6.1  1.0  1.0       0.00      -0.00       9.30      -0.00       0.00      -0.00      17.57       0.00       0.00       0.00
                           10.26      -3.37       0.00       0.00      -0.00     -43.85      -0.00      -0.00       0.00       0.00

   82   7.1  1.0  1.0       7.13     -12.46       0.00       0.00      -0.00      -0.25      -0.00       0.00       0.00       0.00
                            0.00       0.00      -8.35      -0.00       0.00      -0.00      42.91      -0.00       0.00       0.00

   83   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -30.26       0.00       0.00       0.00    -125.53       0.00       0.00       0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -30.40       0.00       0.00       0.00       0.00     -96.15      79.63

   85   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.78     -29.19      -0.00      -0.00      -0.00     121.02       0.00       0.00      -0.00      -0.00

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      18.50       0.00      -0.00    -166.77       0.00      -0.00

   87   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -39.14      -8.04      -0.00       0.00       0.00      33.32       0.00      -0.00       0.00       0.00

   88   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      33.51       0.00       0.00      72.21      -0.00      -0.00

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      23.26      -0.00       0.00      -0.00      -0.00    -154.23       4.81

   90   1.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      10.70       0.00       0.00      35.85       0.00       0.00
                            0.00      -0.00       0.00     -10.70      -0.00      -0.00       0.00      -0.00     -35.84     -26.17

   91   2.1  1.0 -1.0      -9.31      -5.28      -0.00      -0.00       0.00     -44.38      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      10.65      -0.00       0.00      -0.00      11.34       0.00      -0.00       0.00

   92   3.1  1.0 -1.0       0.00       0.00      -0.00     -12.51      -0.00       0.00      -0.00      -0.00      19.80     -25.90
                            0.00      -0.00       0.00       0.00      -8.11       0.00       0.00      11.77      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00       0.00      -9.83       0.00      -0.00       0.00      40.76       0.00       0.00      -0.00
                           -5.67     -13.11      -0.00       0.00       0.00      -6.82      -0.00       0.00       0.00       0.00

   94   5.1  1.0 -1.0      -0.00      -0.00      -0.00       5.15      -0.00      -0.00      -0.00      -0.00     -10.18     -61.30
                           -0.00      -0.00      -0.00       0.00     -10.83       0.00      -0.00      18.90      -0.00      -0.00

   95   6.1  1.0 -1.0       0.00      -0.00       9.30      -0.00       0.00      -0.00      17.57       0.00       0.00       0.00
                          -10.26       3.37      -0.00      -0.00       0.00      43.85       0.00       0.00      -0.00      -0.00

   96   7.1  1.0 -1.0       7.13     -12.46       0.00       0.00      -0.00      -0.25      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       8.35       0.00      -0.00       0.00     -42.91       0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   1.1  2.0  1.0       0.91       0.00       0.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.36       0.00       0.00       0.00       0.00       0.00       0.00

   17   2.1  2.0  1.0      -0.55       0.00      -0.64       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.64      -0.00       0.00       0.00       0.00       0.00       0.00

   18   3.1  2.0  1.0       0.00      -0.00       0.00       0.64      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.64      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   4.1  2.0  1.0       0.00       0.67      -0.00      -0.00      -0.63       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   5.1  2.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.67       0.00       0.00      -0.63       0.00       0.00       0.00       0.00       0.00

   21   6.1  2.0  1.0    -141.22      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   7.1  2.0  1.0      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -222.71      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   8.1  2.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      81.48      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   24   9.1  2.0  1.0      -0.00      81.38       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   25  10.1  2.0  1.0      -0.00     281.93      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  11.1  2.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -281.90      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  12.1  2.0  1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          281.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  13.1  2.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     110.59       0.00       0.00       0.00       0.00       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00      -0.00    -110.59       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  15.1  2.0  1.0       0.00       0.00       0.00     110.59       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -110.59      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     226.61
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -226.63       0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     130.85
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     130.82       0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     130.84       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -130.84

   34   4.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -130.84      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     226.63    -130.82       0.00       0.00      -0.00

   35   5.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00    -226.61    -130.85      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     130.84       0.00       0.00

   36   6.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.85
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.85      -0.00

   37   7.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.87      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.87

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.27       0.96      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.09       0.00       0.00

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.09       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.27       0.96      -0.00       0.00      -0.00

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.03       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.91      -0.55       0.00      -0.00       0.00

   41  11.1  2.0  0.0    5387.24       0.00       0.00       0.00       0.00      -0.91       0.55      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.03      -0.00       0.00

   42  12.1  2.0  0.0       0.00    5387.34       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.67      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.67

   43  13.1  2.0  0.0       0.00       0.00   16226.55       0.00       0.00      -0.36       0.64      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.64      -0.00      -0.00

   44  14.1  2.0  0.0       0.00       0.00       0.00   16226.55       0.00       0.00      -0.00      -0.64       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.36      -0.64       0.00       0.00      -0.00

   45  15.1  2.0  0.0       0.00       0.00       0.00       0.00   16226.86      -0.00       0.00       0.00       0.63      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.63

   46   1.1  2.0 -1.0      -0.91      -0.00      -0.36       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.36       0.00      -0.00      -0.00       0.01      -0.00      -0.00

   47   2.1  2.0 -1.0       0.55      -0.00       0.64      -0.00       0.00       0.00       0.07       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.64      -0.00       0.00      -0.00    -213.66       0.00      -0.00

   48   3.1  2.0 -1.0      -0.00       0.00      -0.00      -0.64       0.00       0.00       0.00       1.05       0.00       0.00
                           -0.03       0.00       0.64      -0.00       0.00      -0.01     213.66      -0.00       0.00       0.00

   49   4.1  2.0 -1.0      -0.00      -0.67       0.00       0.00       0.63       0.00       0.00       0.00       2.06       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00     106.83

   50   5.1  2.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       2.06
                           -0.00       0.67       0.00       0.00      -0.63       0.00       0.00      -0.00    -106.83       0.00

   51   6.1  2.0 -1.0     141.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.72      -0.00      -0.00

   52   7.1  2.0 -1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -222.71      -0.00      -0.00       0.00       0.00       0.00      -0.69       0.00       0.00       0.00

   53   8.1  2.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      81.48      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.23       0.00

   54   9.1  2.0 -1.0       0.00     -81.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.23

   55  10.1  2.0 -1.0       0.00    -281.93       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.86

   56  11.1  2.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -281.90      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.86       0.00

   57  12.1  2.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          281.90      -0.00       0.00       0.00       0.00      -0.95      -0.00       0.00       0.00      -0.00

   58  13.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     110.59      -0.00       0.00       0.00      -0.52       0.00

   59  14.1  2.0 -1.0      -0.00      -0.00      -0.00      -0.00     110.59       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.52

   60  15.1  2.0 -1.0      -0.00      -0.00      -0.00    -110.59       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -110.59      -0.00      -0.00      -0.60      -0.00       0.00       0.00      -0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -185.03
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -185.04       0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -106.84
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     106.82       0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -106.83      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -106.83

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     106.83      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     185.04    -106.82       0.00      -0.00      -0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00     185.03     106.84       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     106.83       0.00      -0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.69      -0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.71       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.71

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.22      -0.78       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.89       0.00       0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.89      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.22       0.79      -0.00       0.00      -0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.02      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.74      -0.45       0.00      -0.00       0.00

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.74      -0.45       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.03      -0.00       0.00

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.55       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.55

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.30      -0.52       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.52      -0.00      -0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.52      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.30      -0.52       0.00       0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.52       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.52

   76   1.1  1.0  1.0     -26.16       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   2.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      43.16       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78   3.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          -53.64       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79   4.1  1.0  1.0       0.00      26.28      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           39.39      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   6.1  1.0  1.0      -0.00      47.58      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   7.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -33.04       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      18.53
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      18.53       0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     -16.12      -9.14      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     -18.45       0.00      -0.00

   85   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -21.67      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      14.05

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.03       0.00      -0.00
                          -16.61       0.00       0.00       0.00       0.00       9.81      22.70       0.00      -0.00      -0.00

   87   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       8.92      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      18.76

   88   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      16.10      -0.00       0.00
                           78.06      -0.00       0.00       0.00       0.00      17.77      -5.84       0.00       0.00      -0.00

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      12.34     -21.58       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     -14.46      -0.00       0.00

   90   1.1  1.0 -1.0     -26.16       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     -26.21       0.00       0.00

   91   2.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -43.16      -0.00       0.00       0.00       0.00      -0.00      -0.00     -26.33       0.00

   92   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           53.64      -0.00       0.00       0.00       0.00       9.34     -25.28      -0.00      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00      26.28      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      16.02

   94   5.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -39.39       0.00      -0.00       0.00      -0.00     -33.90      -6.96      -0.00       0.00       0.00

   95   6.1  1.0 -1.0      -0.00      47.58      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      29.02

   96   7.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      33.04      -0.00      -0.00      -0.00       0.00       0.00       0.00      20.15      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   4.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   5.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   6.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   7.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   8.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   9.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  10.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  11.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  12.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  13.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  15.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0       0.00      -0.00      -0.27      -0.00      -0.00       0.91       0.00       0.36      -0.00       0.00
                            0.00      -0.00      -0.00       0.27       0.91      -0.00       0.00      -0.00       0.36       0.00

   32   2.1  2.0  0.0      -0.00       0.00      -0.96      -0.00       0.00      -0.55       0.00      -0.64       0.00      -0.00
                           -0.00       0.00       0.00      -0.96       0.55       0.00       0.00      -0.00       0.64      -0.00

   33   3.1  2.0  0.0      -0.00       0.00       0.00       1.09      -0.03       0.00      -0.00       0.00       0.64      -0.00
                            0.00      -0.00      -1.09       0.00      -0.00      -0.03       0.00       0.64      -0.00       0.00

   34   4.1  2.0  0.0      -0.00      -0.87       0.00      -0.00      -0.00       0.00       0.67      -0.00      -0.00      -0.63
                            0.85      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   35   5.1  2.0  0.0       0.85       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.87      -0.00       0.00      -0.00      -0.00       0.67       0.00       0.00      -0.63

   36   6.1  2.0  0.0      -0.00       0.00     193.55      -0.00       0.00    -141.22      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00     193.49     141.30       0.00      -0.00       0.00       0.00       0.00

   37   7.1  2.0  0.0      -0.00       0.00       0.00      88.44    -222.68      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00     -88.35       0.00       0.00    -222.71      -0.00      -0.00       0.00       0.00

   38   8.1  2.0  0.0    -193.55      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      88.35       0.00      -0.00      -0.00      -0.00      81.48      -0.00       0.00      -0.00

   39   9.1  2.0  0.0       0.00     -88.44       0.00       0.00       0.00      -0.00      81.38       0.00      -0.00      -0.00
                         -193.49      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   40  10.1  2.0  0.0      -0.00     222.68      -0.00      -0.00       0.00      -0.00     281.93      -0.00       0.00      -0.00
                         -141.30      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   41  11.1  2.0  0.0     141.22       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00     222.71       0.00       0.00       0.00      -0.00    -281.90      -0.00      -0.00       0.00

   42  12.1  2.0  0.0       0.00      -0.00      -0.00     -81.38    -281.93       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00     -81.48      -0.00      -0.00     281.90       0.00       0.00       0.00       0.00

   43  13.1  2.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     110.59

   44  14.1  2.0  0.0       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -110.59
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   45  15.1  2.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     110.59       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -110.59      -0.00       0.00

   46   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.95       0.00      -0.00       0.60

   47   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.69       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   48   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.72      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   49   4.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.23      -0.00      -0.00      -0.86      -0.00       0.52      -0.00      -0.00

   50   5.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.23      -0.86      -0.00       0.00      -0.00       0.52       0.00

   51   6.1  2.0 -1.0    5386.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     195.63       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   52   7.1  2.0 -1.0       0.00    5387.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -195.63      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   53   8.1  2.0 -1.0       0.00       0.00    5387.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     263.31    -104.27       0.00       0.00       0.00      -0.00      -0.00

   54   9.1  2.0 -1.0       0.00       0.00       0.00    5387.10       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -263.31       0.00       0.00    -104.35       0.00      -0.00       0.00       0.00

   55  10.1  2.0 -1.0       0.00       0.00       0.00       0.00    5387.24       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     104.27      -0.00      -0.00     -67.68      -0.00      -0.00       0.00      -0.00

   56  11.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00    5387.24       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     104.35      67.68       0.00       0.00       0.00       0.00       0.00

   57  12.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    5387.34       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   58  13.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16226.55       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      90.30      -0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16226.55       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -90.30      -0.00      -0.00

   60  15.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16226.86
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   61   1.1  2.0 -2.0      -0.00       0.00       0.22       0.00       0.00      -0.74      -0.00      -0.30       0.00      -0.00
                            0.00      -0.00      -0.00       0.22       0.74      -0.00       0.00      -0.00       0.30       0.00

   62   2.1  2.0 -2.0       0.00      -0.00       0.78       0.00      -0.00       0.45      -0.00       0.52      -0.00       0.00
                           -0.00       0.00       0.00      -0.79       0.45       0.00       0.00      -0.00       0.52      -0.00

   63   3.1  2.0 -2.0       0.00      -0.00      -0.00      -0.89       0.02      -0.00       0.00      -0.00      -0.52       0.00
                            0.00      -0.00      -0.89       0.00      -0.00      -0.03       0.00       0.52      -0.00       0.00

   64   4.1  2.0 -2.0       0.00       0.71      -0.00       0.00       0.00      -0.00      -0.55       0.00       0.00       0.52
                            0.69      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   65   5.1  2.0 -2.0      -0.69      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.71      -0.00       0.00      -0.00      -0.00       0.55       0.00       0.00      -0.52

   66   6.1  2.0 -2.0      -0.00      -0.00    -158.03       0.00      -0.00     115.31       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     157.99     115.37       0.00      -0.00       0.00       0.00       0.00

   67   7.1  2.0 -2.0       0.00       0.00      -0.00     -72.21     181.81       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00     -72.14       0.00       0.00    -181.84      -0.00      -0.00       0.00       0.00

   68   8.1  2.0 -2.0     158.03       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      72.14      -0.00      -0.00      -0.00      -0.00      66.53      -0.00       0.00      -0.00

   69   9.1  2.0 -2.0      -0.00      72.21      -0.00       0.00      -0.00       0.00     -66.44      -0.00       0.00       0.00
                         -157.99      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   70  10.1  2.0 -2.0       0.00    -181.81       0.00       0.00       0.00       0.00    -230.20       0.00      -0.00       0.00
                         -115.37      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   71  11.1  2.0 -2.0    -115.31      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00     181.84       0.00       0.00       0.00       0.00    -230.17      -0.00      -0.00       0.00

   72  12.1  2.0 -2.0      -0.00       0.00       0.00      66.44     230.20      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -66.53      -0.00      -0.00     230.17      -0.00       0.00       0.00       0.00

   73  13.1  2.0 -2.0      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      90.30

   74  14.1  2.0 -2.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      90.30
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   75  15.1  2.0 -2.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -90.30       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00     -90.30      -0.00      -0.00

   76   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   1.1  1.0  0.0       0.00       0.00      62.10       0.00       0.00     -45.31       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      62.08      45.33       0.00       0.00      -0.00       0.00       0.00

   84   2.1  1.0  0.0     -76.87      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00     -19.64      -0.00       0.00      -0.00       0.00      74.76       0.00      -0.00      -0.00

   85   3.1  1.0  0.0       0.00      -0.00      -0.00      34.29     -44.87      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00     -20.39       0.00       0.00     -92.90       0.00      -0.00      -0.00      -0.00

   86   4.1  1.0  0.0       0.00      70.59       0.00       0.00      -0.00       0.00      45.52      -0.00      -0.00      -0.00
                           11.82       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   87   5.1  1.0  0.0      -0.00      -0.00      -0.00     -17.64    -106.18      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00     -32.73       0.00       0.00      68.23      -0.00       0.00      -0.00       0.00

   88   6.1  1.0  0.0      -0.00      30.43       0.00       0.00       0.00      -0.00      82.41      -0.00       0.00      -0.00
                          -75.96      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   89   7.1  1.0  0.0      -0.44      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      74.32      -0.00       0.00       0.00      -0.00     -57.23       0.00       0.00       0.00

   90   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -108.71       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   91   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -83.27      68.96      -0.00      -0.00      -0.00       0.00      -0.00

   92   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.81       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   93   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -144.43       0.00      -0.00     -14.39       0.00       0.00       0.00       0.00

   94   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           28.86       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   95   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      62.54      -0.00      -0.00      67.60      -0.00       0.00       0.00       0.00

   96   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -133.57       4.16       0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   4.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   5.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   6.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   7.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   8.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   9.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  10.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  11.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  12.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  13.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  15.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   4.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   5.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   6.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   7.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41  11.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42  12.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43  13.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44  14.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45  15.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46   1.1  2.0 -1.0      -0.00      -0.00      -0.00       0.00     185.03       0.00      -0.00      -0.22      -0.00      -0.00
                           -0.00       0.00      -0.00    -185.04       0.00       0.00      -0.00      -0.00       0.22       0.74

   47   2.1  2.0 -1.0       0.00      -0.00      -0.00       0.00     106.84      -0.00       0.00      -0.78      -0.00       0.00
                           -0.00      -0.00      -0.00     106.82       0.00      -0.00       0.00       0.00      -0.79       0.45

   48   3.1  2.0 -1.0       0.00       0.00       0.00     106.83       0.00      -0.00       0.00       0.00       0.89      -0.02
                            0.00       0.00       0.00      -0.00    -106.83       0.00      -0.00      -0.89       0.00      -0.00

   49   4.1  2.0 -1.0      -0.00      -0.00    -106.83      -0.00       0.00      -0.00      -0.71       0.00      -0.00      -0.00
                          185.04    -106.82       0.00       0.00      -0.00       0.69      -0.00      -0.00      -0.00       0.00

   50   5.1  2.0 -1.0    -185.03    -106.84      -0.00      -0.00       0.00       0.69       0.00       0.00       0.00       0.00
                           -0.00      -0.00     106.83       0.00       0.00       0.00       0.71      -0.00       0.00      -0.00

   51   6.1  2.0 -1.0      -0.00       0.00       0.00       0.00      -0.69      -0.00       0.00     158.03      -0.00       0.00
                           -0.00       0.00      -0.00      -0.69      -0.00      -0.00      -0.00       0.00     157.99     115.37

   52   7.1  2.0 -1.0       0.00      -0.00      -0.00       0.71      -0.00      -0.00       0.00       0.00      72.21    -181.81
                            0.00      -0.00       0.00       0.00      -0.71       0.00       0.00     -72.14       0.00       0.00

   53   8.1  2.0 -1.0       0.22       0.78      -0.00      -0.00      -0.00    -158.03      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.89       0.00       0.00      -0.00      72.14       0.00      -0.00      -0.00

   54   9.1  2.0 -1.0       0.00       0.00      -0.89       0.00      -0.00       0.00     -72.21       0.00       0.00       0.00
                           -0.22       0.79      -0.00       0.00      -0.00    -157.99      -0.00       0.00       0.00       0.00

   55  10.1  2.0 -1.0       0.00      -0.00       0.02       0.00      -0.00      -0.00     181.81      -0.00      -0.00       0.00
                           -0.74      -0.45       0.00      -0.00       0.00    -115.37      -0.00       0.00      -0.00      -0.00

   56  11.1  2.0 -1.0      -0.74       0.45      -0.00      -0.00       0.00     115.31       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.03      -0.00       0.00      -0.00     181.84       0.00       0.00       0.00

   57  12.1  2.0 -1.0      -0.00      -0.00       0.00      -0.55      -0.00       0.00      -0.00      -0.00     -66.44    -230.20
                           -0.00      -0.00      -0.00      -0.00      -0.55       0.00       0.00     -66.53      -0.00      -0.00

   58  13.1  2.0 -1.0      -0.30       0.52      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.52      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   59  14.1  2.0 -1.0       0.00      -0.00      -0.52       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.30      -0.52       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  15.1  2.0 -1.0      -0.00       0.00       0.00       0.52      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.52      -0.00      -0.00       0.00       0.00      -0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.03      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   62   2.1  2.0 -2.0       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -427.32       0.00      -0.00      -0.00       1.39       0.00       0.00      -0.00

   63   3.1  2.0 -2.0       0.00       0.00       1.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03     427.32      -0.00       0.00       0.00       1.44      -0.00       0.00      -0.00      -0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       2.06       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     213.66       0.00      -0.00       0.47      -0.00      -0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       2.06       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -213.66       0.00       0.00      -0.00      -0.00      -0.47      -1.73

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00    5386.99       0.00       0.00       0.00       0.00
                            0.00       0.00      -1.44      -0.00      -0.00       0.00     391.25       0.00      -0.00       0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00    5387.07       0.00       0.00       0.00
                            0.00      -1.39       0.00       0.00       0.00    -391.25      -0.00       0.00       0.00       0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.10       0.00       0.00
                           -0.00      -0.00      -0.00      -0.47       0.00      -0.00      -0.00       0.00     526.63    -208.55

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.10       0.00
                            0.00      -0.00       0.00       0.00       0.47       0.00      -0.00    -526.63       0.00       0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5387.24
                           -0.00       0.00       0.00       0.00       1.73      -0.00      -0.00     208.55      -0.00      -0.00

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.73       0.00       0.00       0.00      -0.00     208.70     135.37

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.90      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -1.03       0.00       0.00       0.00      -0.00       0.00       0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -1.03       0.00      -0.00       0.00      -0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.20      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   76   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90   1.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      26.21       0.00       0.00      87.82       0.00       0.00
                           -0.00       0.00      -0.00      26.21       0.00       0.00      -0.00       0.00      87.79      64.11

   91   2.1  1.0 -1.0     -22.80     -12.92      -0.00      -0.00       0.00    -108.71      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -26.09       0.00      -0.00       0.00     -27.77      -0.00       0.00      -0.00

   92   3.1  1.0 -1.0       0.00       0.00      -0.00     -30.65      -0.00       0.00      -0.00      -0.00      48.49     -63.45
                           -0.00       0.00      -0.00      -0.00      19.87      -0.00      -0.00     -28.84       0.00       0.00

   93   4.1  1.0 -1.0       0.00       0.00     -24.09       0.00      -0.00       0.00      99.83       0.00       0.00      -0.00
                           13.88      32.10       0.00      -0.00      -0.00      16.72       0.00      -0.00      -0.00      -0.00

   94   5.1  1.0 -1.0      -0.00      -0.00      -0.00      12.61      -0.00      -0.00      -0.00      -0.00     -24.95    -150.16
                            0.00       0.00       0.00      -0.00      26.53      -0.00       0.00     -46.29       0.00       0.00

   95   6.1  1.0 -1.0       0.00      -0.00      22.77      -0.00       0.00      -0.00      43.04       0.00       0.00       0.00
                           25.13      -8.26       0.00       0.00      -0.00    -107.42      -0.00      -0.00       0.00       0.00

   96   7.1  1.0 -1.0      17.45     -30.52       0.00       0.00      -0.00      -0.62      -0.00       0.00       0.00       0.00
                            0.00       0.00     -20.45      -0.00       0.00      -0.00     105.10      -0.00       0.00       0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00     -22.80       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      13.88       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00     -12.92       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      32.10       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -24.09      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -26.09      -0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -30.65       0.00      12.61
                            0.00       0.00       0.00       0.00       0.00      26.21       0.00      -0.00      -0.00      -0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      26.21       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      19.87      -0.00      26.53

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00    -108.71       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      16.72      -0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      99.83      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -27.77      -0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      87.82      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -28.84      -0.00     -46.29

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      48.49       0.00     -24.95
                            0.00       0.00       0.00       0.00       0.00      87.79       0.00       0.00      -0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -63.45      -0.00    -150.16
                            0.00       0.00       0.00       0.00       0.00      64.11      -0.00       0.00      -0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00     -64.08      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00    -131.38      -0.00      96.49

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      64.38      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     105.72       0.00       0.00      -0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   16   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -9.34       0.00      33.90

   17   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      25.28      -0.00       6.96

   18   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      26.21       0.00       0.00      -0.00       0.00

   19   4.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      26.33       0.00      -0.00      -0.00

   20   5.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -16.02      -0.00

   21   6.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -104.81      -0.00     -28.86

   22   7.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     108.71      -0.00      -0.00       0.00      -0.00

   23   8.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     144.43       0.00

   24   9.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      83.27       0.00      -0.00      -0.00

   25  10.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -68.96       0.00       0.00      -0.00

   26  11.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      14.39      -0.00

   27  12.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   28  13.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   30  15.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -9.31       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -5.67      -0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -5.28       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -13.11      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -9.83      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      10.65       0.00      -0.00      -0.00

   34   4.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -12.51       0.00       5.15
                            0.00       0.00       0.00       0.00       0.00     -10.70      -0.00       0.00       0.00       0.00

   35   5.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      10.70       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -8.11       0.00     -10.83

   36   6.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -44.38       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -6.82       0.00

   37   7.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      40.76      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      11.34       0.00      -0.00      -0.00

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      35.85      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      11.77       0.00      18.90

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      19.80       0.00     -10.18
                            0.00       0.00       0.00       0.00       0.00     -35.84      -0.00      -0.00       0.00      -0.00

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.90      -0.00     -61.30
                            0.00       0.00       0.00       0.00       0.00     -26.17       0.00      -0.00       0.00      -0.00

   41  11.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00     -26.16      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      53.64       0.00     -39.39

   42  12.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      26.28      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -43.16      -0.00      -0.00       0.00

   43  13.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   44  14.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   45  15.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   46   1.1  2.0 -1.0       0.74       0.00       0.30      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.30       0.00       0.00       0.00       0.00       0.00       0.00

   47   2.1  2.0 -1.0      -0.45       0.00      -0.52       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.52      -0.00       0.00       0.00       0.00       0.00       0.00

   48   3.1  2.0 -1.0       0.00      -0.00       0.00       0.52      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.52      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   49   4.1  2.0 -1.0       0.00       0.55      -0.00      -0.00      -0.52       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   50   5.1  2.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.55       0.00       0.00      -0.52       0.00       0.00       0.00       0.00       0.00

   51   6.1  2.0 -1.0    -115.31      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   52   7.1  2.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -181.84      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   53   8.1  2.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      66.53      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   54   9.1  2.0 -1.0      -0.00      66.44       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   55  10.1  2.0 -1.0      -0.00     230.20      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   56  11.1  2.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -230.17      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   57  12.1  2.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          230.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   58  13.1  2.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      90.30       0.00       0.00       0.00       0.00       0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00      -0.00     -90.30       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   60  15.1  2.0 -1.0       0.00       0.00       0.00      90.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -90.30      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.90       0.00      -0.00       1.20       0.00       0.00       0.00       0.00       0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.73      -0.00       1.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       1.03       0.00       0.00       0.00       0.00       0.00       0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -208.70       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.37      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   71  11.1  2.0 -2.0    5387.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   72  12.1  2.0 -2.0       0.00    5387.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   73  13.1  2.0 -2.0       0.00       0.00   16226.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     180.59      -0.00       0.00       0.00       0.00       0.00       0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00   16226.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -180.59      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00   16226.86       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   76   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   10724.48       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -308.35      -0.00     -84.90

   77   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   10724.63       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     316.67      -0.00

   78   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   10724.62       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     308.35       0.00       0.00      -0.00       0.00

   79   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   10724.75       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -316.67       0.00      -0.00       0.00

   80   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   10724.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      84.90       0.00      -0.00      -0.00       0.00

   81   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      29.87      -0.00       0.00       0.00

   82   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     286.44      -0.00

   83   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    -226.14      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -34.77      -0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     226.14       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -114.09      -0.00     196.70

   85   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     164.66       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     114.09      -0.00      -0.00       0.00

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -164.66       0.00    -184.25
                           -0.00      -0.00      -0.00      -0.00      -0.00      34.77       0.00       0.00       0.00       0.00

   87   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     184.25       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -196.70      -0.00      -0.00      -0.00

   88   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -21.96      -0.00    -257.51
                           -0.00      -0.00      -0.00      -0.00      -0.00    -223.46       0.00       0.00      -0.00       0.00

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       1.28      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     255.49       0.00    -104.28

   90   1.1  1.0 -1.0     -64.08       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   2.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     105.72       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -131.38       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00      64.38      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94   5.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.49      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   95   6.1  1.0 -1.0      -0.00     116.55      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   96   7.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -80.94       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

    1   1.1  2.0  2.0       0.00      17.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  2.0  2.0      -0.00     -30.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  2.0  2.0      22.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -20.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  2.0  2.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  2.0  2.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  2.0  2.0      -0.00      -0.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -107.42      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0      43.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     105.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  2.0  2.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  2.0  2.0     116.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -80.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  2.0  2.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   1.1  2.0  1.0       0.00       0.00       0.00     -16.12       0.00       0.00      -0.00       0.00      12.34       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       9.81       0.00      17.77       0.00       0.00

   17   2.1  2.0  1.0       0.00       0.00      -0.00      -9.14       0.00       0.00      -0.00      -0.00     -21.58       0.00
                            0.00      -0.00       0.00       0.00       0.00      22.70       0.00      -5.84       0.00       0.00

   18   3.1  2.0  1.0       0.00       0.00      -0.00      -0.00      -0.00     -17.03      -0.00      16.10       0.00       0.00
                            0.00      -0.00      -0.00     -18.45      -0.00       0.00       0.00       0.00     -14.46       0.00

   19   4.1  2.0  1.0       0.00       0.00       0.00      -0.00     -21.67       0.00       8.92      -0.00       0.00       0.00
                            0.00     -20.15      18.53       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   20   5.1  2.0  1.0       0.00       0.00      18.53       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                          -29.02       0.00       0.00      -0.00      14.05      -0.00      18.76      -0.00       0.00       0.00

   21   6.1  2.0  1.0       0.00       0.00       0.00     -76.87       0.00       0.00      -0.00      -0.00      -0.44       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      11.82      -0.00     -75.96      -0.00       0.00

   22   7.1  2.0  1.0       0.00       0.00       0.00      -0.00      -0.00      70.59      -0.00      30.43      -0.00       0.00
                           -0.00       0.00      -0.00     -19.64      -0.00       0.00       0.00      -0.00      74.32       0.00

   23   8.1  2.0  1.0       0.00       0.00      62.10      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                          -62.54       0.00       0.00      -0.00     -20.39      -0.00     -32.73      -0.00      -0.00       0.00

   24   9.1  2.0  1.0       0.00       0.00       0.00       0.00      34.29       0.00     -17.64       0.00       0.00       0.00
                            0.00     133.57      62.08       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   25  10.1  2.0  1.0       0.00       0.00       0.00       0.00     -44.87      -0.00    -106.18       0.00       0.00       0.00
                            0.00      -4.16      45.33      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   26  11.1  2.0  1.0       0.00       0.00     -45.31      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                          -67.60      -0.00       0.00       0.00     -92.90      -0.00      68.23       0.00      -0.00       0.00

   27  12.1  2.0  1.0       0.00       0.00       0.00       0.00      -0.00      45.52      -0.00      82.41      -0.00       0.00
                            0.00      -0.00       0.00      74.76       0.00       0.00      -0.00       0.00     -57.23       0.00

   28  13.1  2.0  1.0       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   30  15.1  2.0  1.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   31   1.1  2.0  0.0       0.00       7.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.26      -0.00      -0.00      -0.00     -10.78       0.00      39.14      -0.00      -0.00      -0.00

   32   2.1  2.0  0.0      -0.00     -12.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            3.37      -0.00      -0.00       0.00      29.19      -0.00       8.04       0.00      -0.00       0.00

   33   3.1  2.0  0.0       9.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       8.35      30.26       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   34   4.1  2.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      30.40       0.00      -0.00      -0.00       0.00     -23.26      10.70

   35   5.1  2.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.70
                            0.00      -0.00      -0.00      -0.00       0.00     -18.50      -0.00     -33.51       0.00       0.00

   36   6.1  2.0  0.0      -0.00      -0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           43.85       0.00      -0.00      -0.00    -121.02      -0.00     -33.32      -0.00      -0.00       0.00

   37   7.1  2.0  0.0      17.57      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -42.91     125.53      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   38   8.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      35.85
                            0.00       0.00      -0.00      -0.00      -0.00     166.77       0.00     -72.21       0.00       0.00

   39   9.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      96.15       0.00      -0.00      -0.00       0.00     154.23      35.84

   40  10.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -79.63       0.00       0.00      -0.00       0.00      -4.81      26.17

   41  11.1  2.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -26.16
                           -0.00       0.00       0.00       0.00      -0.00      16.61      -0.00     -78.06      -0.00       0.00

   42  12.1  2.0  0.0      47.58      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      33.04      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   43  13.1  2.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   44  14.1  2.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   45  15.1  2.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46   1.1  2.0 -1.0       0.00       0.00       0.00     -16.12       0.00       0.00      -0.00       0.00      12.34       0.00
                            0.00       0.00       0.00      -0.00       0.00      -9.81      -0.00     -17.77      -0.00      -0.00

   47   2.1  2.0 -1.0       0.00       0.00      -0.00      -9.14       0.00       0.00      -0.00      -0.00     -21.58       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -22.70      -0.00       5.84      -0.00      -0.00

   48   3.1  2.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00     -17.03      -0.00      16.10       0.00       0.00
                            0.00       0.00       0.00      18.45       0.00      -0.00      -0.00      -0.00      14.46      26.21

   49   4.1  2.0 -1.0       0.00       0.00       0.00      -0.00     -21.67       0.00       8.92      -0.00       0.00       0.00
                            0.00       0.00     -18.53      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   50   5.1  2.0 -1.0       0.00       0.00      18.53       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00     -14.05       0.00     -18.76       0.00      -0.00      -0.00

   51   6.1  2.0 -1.0       0.00       0.00       0.00     -76.87       0.00       0.00      -0.00      -0.00      -0.44       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -11.82       0.00      75.96       0.00      -0.00

   52   7.1  2.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      70.59      -0.00      30.43      -0.00       0.00
                            0.00       0.00       0.00      19.64       0.00      -0.00      -0.00       0.00     -74.32     108.71

   53   8.1  2.0 -1.0       0.00       0.00      62.10      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      20.39       0.00      32.73       0.00       0.00      -0.00

   54   9.1  2.0 -1.0       0.00       0.00       0.00       0.00      34.29       0.00     -17.64       0.00       0.00       0.00
                            0.00       0.00     -62.08      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   55  10.1  2.0 -1.0       0.00       0.00       0.00       0.00     -44.87      -0.00    -106.18       0.00       0.00       0.00
                            0.00       0.00     -45.33       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   56  11.1  2.0 -1.0       0.00       0.00     -45.31      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      92.90       0.00     -68.23      -0.00       0.00       0.00

   57  12.1  2.0 -1.0       0.00       0.00       0.00       0.00      -0.00      45.52      -0.00      82.41      -0.00       0.00
                            0.00       0.00      -0.00     -74.76      -0.00      -0.00       0.00      -0.00      57.23      -0.00

   58  13.1  2.0 -1.0       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   60  15.1  2.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   61   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   62   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   63   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   64   4.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -26.21

   65   5.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      26.21
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   66   6.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   67   7.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   68   8.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      87.82
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   69   9.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -87.79

   70  10.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -64.11

   71  11.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -64.08
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   72  12.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   73  13.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   74  14.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   75  15.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   76   1.1  1.0  1.0       0.00       0.00       0.00     226.14       0.00      -0.00      -0.00      -0.00       1.28       0.00
                            0.00       0.00       0.00       0.00      -0.00     -34.77      -0.00     223.46      -0.00       0.00

   77   2.1  1.0  1.0       0.00       0.00    -226.14       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          -29.87      -0.00      -0.00      -0.00    -114.09      -0.00     196.70      -0.00      -0.00       0.00

   78   3.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00    -164.66      -0.00     -21.96       0.00       0.00
                            0.00       0.00       0.00     114.09       0.00      -0.00       0.00      -0.00    -255.49       0.00

   79   4.1  1.0  1.0       0.00       0.00       0.00      -0.00     164.66       0.00     184.25      -0.00      -0.00       0.00
                           -0.00    -286.44      34.77       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   80   5.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    -184.25       0.00    -257.51      -0.00       0.00
                           -0.00       0.00       0.00    -196.70      -0.00      -0.00       0.00      -0.00     104.28       0.00

   81   6.1  1.0  1.0   10724.70       0.00       0.00       0.00      21.96       0.00     257.51       0.00       0.00       0.00
                            0.00     269.28    -223.46       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   82   7.1  1.0  1.0       0.00   10724.81      -1.28       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                         -269.28       0.00       0.00       0.00     255.49       0.00    -104.28       0.00      -0.00       0.00

   83   1.1  1.0  0.0       0.00      -1.28   10724.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          223.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00   10724.63       0.00       0.00       0.00       0.00       0.00    -226.14
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   85   3.1  1.0  0.0      21.96      -0.00       0.00       0.00   10724.62       0.00       0.00       0.00       0.00      -0.00
                           -0.00    -255.49      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   86   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   10724.75       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      34.77

   87   5.1  1.0  0.0     257.51       0.00       0.00       0.00       0.00       0.00   10724.76       0.00       0.00       0.00
                           -0.00     104.28      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   88   6.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   10724.70       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -223.46

   89   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   10724.81      -1.28
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   90   1.1  1.0 -1.0       0.00       0.00       0.00    -226.14      -0.00       0.00       0.00       0.00      -1.28   10724.48
                           -0.00      -0.00      -0.00       0.00      -0.00     -34.77      -0.00     223.46      -0.00      -0.00

   91   2.1  1.0 -1.0       0.00       0.00     226.14       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -114.09      -0.00     196.70      -0.00      -0.00       0.00

   92   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     164.66       0.00      21.96      -0.00       0.00
                           -0.00      -0.00       0.00     114.09      -0.00      -0.00       0.00      -0.00    -255.49    -308.35

   93   4.1  1.0 -1.0       0.00       0.00      -0.00       0.00    -164.66       0.00    -184.25       0.00       0.00       0.00
                           -0.00      -0.00      34.77       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   94   5.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00     184.25       0.00     257.51       0.00       0.00
                           -0.00      -0.00       0.00    -196.70      -0.00      -0.00      -0.00      -0.00     104.28     -84.90

   95   6.1  1.0 -1.0       0.00       0.00      -0.00      -0.00     -21.96      -0.00    -257.51       0.00      -0.00       0.00
                           -0.00      -0.00    -223.46       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   96   7.1  1.0 -1.0       0.00       0.00       1.28      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     255.49       0.00    -104.28       0.00       0.00       0.00


   Nr   State  S   Sz       91         92         93         94         95         96

    1   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   16   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   17   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   18   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   19   4.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   20   5.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   21   6.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   22   7.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   23   8.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   24   9.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   25  10.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   26  11.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   27  12.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   28  13.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   29  14.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   30  15.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0      -9.31       0.00       0.00      -0.00       0.00       7.13
                            0.00      -0.00       5.67       0.00      10.26       0.00

   32   2.1  2.0  0.0      -5.28       0.00       0.00      -0.00      -0.00     -12.46
                            0.00       0.00      13.11       0.00      -3.37       0.00

   33   3.1  2.0  0.0      -0.00      -0.00      -9.83      -0.00       9.30       0.00
                          -10.65      -0.00       0.00       0.00       0.00      -8.35

   34   4.1  2.0  0.0      -0.00     -12.51       0.00       5.15      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00

   35   5.1  2.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       8.11      -0.00      10.83      -0.00       0.00

   36   6.1  2.0  0.0     -44.38       0.00       0.00      -0.00      -0.00      -0.25
                            0.00      -0.00       6.82      -0.00     -43.85      -0.00

   37   7.1  2.0  0.0      -0.00      -0.00      40.76      -0.00      17.57      -0.00
                          -11.34      -0.00       0.00       0.00      -0.00      42.91

   38   8.1  2.0  0.0      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00     -11.77      -0.00     -18.90      -0.00      -0.00

   39   9.1  2.0  0.0       0.00      19.80       0.00     -10.18       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00

   40  10.1  2.0  0.0       0.00     -25.90      -0.00     -61.30       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00

   41  11.1  2.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00     -53.64      -0.00      39.39       0.00      -0.00

   42  12.1  2.0  0.0       0.00      -0.00      26.28      -0.00      47.58      -0.00
                           43.16       0.00       0.00      -0.00       0.00     -33.04

   43  13.1  2.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00

   44  14.1  2.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00

   45  15.1  2.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00

   46   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -9.34       0.00      33.90      -0.00      -0.00

   47   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      25.28      -0.00       6.96       0.00      -0.00

   48   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00

   49   4.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           26.33       0.00      -0.00      -0.00       0.00     -20.15

   50   5.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -16.02      -0.00     -29.02       0.00

   51   6.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -104.81      -0.00     -28.86      -0.00      -0.00

   52   7.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00

   53   8.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     144.43       0.00     -62.54       0.00

   54   9.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           83.27       0.00      -0.00      -0.00       0.00     133.57

   55  10.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.96       0.00       0.00      -0.00       0.00      -4.16

   56  11.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      14.39      -0.00     -67.60      -0.00

   57  12.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00

   58  13.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00

   59  14.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   60  15.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  2.0 -2.0     -22.80       0.00       0.00      -0.00       0.00      17.45
                           -0.00       0.00     -13.88      -0.00     -25.13      -0.00

   62   2.1  2.0 -2.0     -12.92       0.00       0.00      -0.00      -0.00     -30.52
                           -0.00      -0.00     -32.10      -0.00       8.26      -0.00

   63   3.1  2.0 -2.0      -0.00      -0.00     -24.09      -0.00      22.77       0.00
                           26.09       0.00      -0.00      -0.00      -0.00      20.45

   64   4.1  2.0 -2.0      -0.00     -30.65       0.00      12.61      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00

   65   5.1  2.0 -2.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00     -19.87       0.00     -26.53       0.00      -0.00

   66   6.1  2.0 -2.0    -108.71       0.00       0.00      -0.00      -0.00      -0.62
                           -0.00       0.00     -16.72       0.00     107.42       0.00

   67   7.1  2.0 -2.0      -0.00      -0.00      99.83      -0.00      43.04      -0.00
                           27.77       0.00      -0.00      -0.00       0.00    -105.10

   68   8.1  2.0 -2.0      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      28.84       0.00      46.29       0.00       0.00

   69   9.1  2.0 -2.0       0.00      48.49       0.00     -24.95       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   70  10.1  2.0 -2.0       0.00     -63.45      -0.00    -150.16       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00

   71  11.1  2.0 -2.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00     131.38       0.00     -96.49      -0.00       0.00

   72  12.1  2.0 -2.0       0.00      -0.00      64.38      -0.00     116.55      -0.00
                         -105.72      -0.00      -0.00       0.00      -0.00      80.94

   73  13.1  2.0 -2.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00

   74  14.1  2.0 -2.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00

   75  15.1  2.0 -2.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00

   76   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   77   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   78   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   79   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   80   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   81   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   82   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   83   1.1  1.0  0.0     226.14       0.00      -0.00      -0.00      -0.00       1.28
                            0.00      -0.00     -34.77      -0.00     223.46      -0.00

   84   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00    -114.09      -0.00     196.70      -0.00      -0.00

   85   3.1  1.0  0.0      -0.00       0.00    -164.66      -0.00     -21.96       0.00
                          114.09       0.00      -0.00       0.00      -0.00    -255.49

   86   4.1  1.0  0.0      -0.00     164.66       0.00     184.25      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00

   87   5.1  1.0  0.0      -0.00       0.00    -184.25       0.00    -257.51      -0.00
                         -196.70      -0.00      -0.00       0.00      -0.00     104.28

   88   6.1  1.0  0.0       0.00      21.96       0.00     257.51       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00

   89   7.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00     255.49       0.00    -104.28       0.00      -0.00

   90   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     308.35       0.00      84.90      -0.00      -0.00

   91   2.1  1.0 -1.0   10724.63       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -316.67       0.00      29.87       0.00

   92   3.1  1.0 -1.0       0.00   10724.62       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   93   4.1  1.0 -1.0       0.00       0.00   10724.75       0.00       0.00       0.00
                          316.67      -0.00       0.00      -0.00       0.00     286.44

   94   5.1  1.0 -1.0       0.00       0.00       0.00   10724.76       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00

   95   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   10724.70       0.00
                          -29.87       0.00      -0.00      -0.00      -0.00    -269.28

   96   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   10724.81
                           -0.00       0.00    -286.44       0.00     269.28      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

   Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
            (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1 -1272.00768805    -0.00194633     -427.17      0.00000000        0.00      0.0000
   2 -1272.00768797    -0.00194625     -427.15      0.00000008        0.02      0.0000
   3 -1272.00768608    -0.00194436     -426.74      0.00000197        0.43      0.0001
   4 -1272.00768579    -0.00194407     -426.67      0.00000226        0.50      0.0001
   5 -1272.00768578    -0.00194406     -426.67      0.00000227        0.50      0.0001
   6 -1272.00768508    -0.00194336     -426.52      0.00000297        0.65      0.0001
   7 -1272.00768440    -0.00194268     -426.37      0.00000365        0.80      0.0001
   8 -1272.00768440    -0.00194268     -426.37      0.00000365        0.80      0.0001
   9 -1272.00768412    -0.00194240     -426.31      0.00000393        0.86      0.0001
  10 -1272.00574215    -0.00000043       -0.10      0.00194590      427.07      0.0530
  11 -1272.00573992     0.00000180        0.40      0.00194813      427.57      0.0530
  12 -1272.00573751     0.00000421        0.92      0.00195054      428.09      0.0531
  13 -1272.00573750     0.00000422        0.93      0.00195055      428.10      0.0531
  14 -1272.00573570     0.00000602        1.32      0.00195235      428.49      0.0531
  15 -1272.00573569     0.00000603        1.32      0.00195236      428.49      0.0531
  16 -1272.00573428     0.00000744        1.63      0.00195377      428.80      0.0532
  17 -1272.00427877     0.00146295      321.08      0.00340928      748.25      0.0928
  18 -1272.00427746     0.00146426      321.37      0.00341059      748.54      0.0928
  19 -1272.00427619     0.00146553      321.65      0.00341186      748.82      0.0928
  20 -1272.00427579     0.00146593      321.73      0.00341226      748.90      0.0929
  21 -1272.00427579     0.00146593      321.73      0.00341226      748.90      0.0929
  22 -1272.00330405     0.00243768      535.01      0.00438400      962.18      0.1193
  23 -1272.00330275     0.00243897      535.29      0.00438530      962.46      0.1193
  24 -1272.00330275     0.00243897      535.29      0.00438530      962.46      0.1193
  25 -1272.00281643     0.00292530      642.03      0.00487162     1069.20      0.1326
  26 -1271.98387050     0.02187122     4800.18      0.02381755     5227.35      0.6481
  27 -1271.98387049     0.02187123     4800.18      0.02381756     5227.35      0.6481
  28 -1271.98387030     0.02187142     4800.22      0.02381775     5227.39      0.6481
  29 -1271.98387030     0.02187142     4800.22      0.02381775     5227.39      0.6481
  30 -1271.98387029     0.02187143     4800.22      0.02381776     5227.39      0.6481
  31 -1271.98387028     0.02187144     4800.23      0.02381777     5227.40      0.6481
  32 -1271.98387004     0.02187168     4800.28      0.02381801     5227.45      0.6481
  33 -1271.98386984     0.02187188     4800.32      0.02381821     5227.49      0.6481
  34 -1271.98386964     0.02187208     4800.37      0.02381841     5227.54      0.6481
  35 -1271.98386964     0.02187208     4800.37      0.02381841     5227.54      0.6481
  36 -1271.98386954     0.02187218     4800.39      0.02381851     5227.56      0.6481
  37 -1271.98168271     0.02405901     5280.34      0.02600534     5707.51      0.7076
  38 -1271.98168271     0.02405901     5280.34      0.02600534     5707.51      0.7076
  39 -1271.98168234     0.02405938     5280.42      0.02600571     5707.59      0.7077
  40 -1271.98168233     0.02405939     5280.43      0.02600572     5707.60      0.7077
  41 -1271.98168228     0.02405944     5280.44      0.02600577     5707.61      0.7077
  42 -1271.98168227     0.02405945     5280.44      0.02600578     5707.61      0.7077
  43 -1271.98168224     0.02405948     5280.44      0.02600581     5707.61      0.7077
  44 -1271.98168224     0.02405948     5280.45      0.02600581     5707.62      0.7077
  45 -1271.98168219     0.02405953     5280.46      0.02600586     5707.63      0.7077
  46 -1271.97989803     0.02584369     5672.03      0.02779002     6099.20      0.7562
  47 -1271.97989802     0.02584370     5672.04      0.02779003     6099.21      0.7562
  48 -1271.97989788     0.02584384     5672.07      0.02779017     6099.24      0.7562
  49 -1271.97989769     0.02584403     5672.11      0.02779036     6099.28      0.7562
  50 -1271.97989769     0.02584403     5672.11      0.02779036     6099.28      0.7562
  51 -1271.97989757     0.02584415     5672.13      0.02779048     6099.30      0.7562
  52 -1271.97989735     0.02584437     5672.18      0.02779070     6099.35      0.7562
  53 -1271.97854228     0.02719944     5969.59      0.02914577     6396.76      0.7931
  54 -1271.97854226     0.02719946     5969.59      0.02914579     6396.76      0.7931
  55 -1271.97854193     0.02719979     5969.66      0.02914612     6396.83      0.7931
  56 -1271.97854166     0.02720006     5969.72      0.02914639     6396.89      0.7931
  57 -1271.97854166     0.02720006     5969.72      0.02914639     6396.89      0.7931
  58 -1271.97763075     0.02811097     6169.64      0.03005730     6596.81      0.8179
  59 -1271.97763075     0.02811097     6169.64      0.03005730     6596.81      0.8179
  60 -1271.97763045     0.02811127     6169.71      0.03005760     6596.88      0.8179
  61 -1271.95902029     0.04672143    10254.17      0.04866776    10681.34      1.3243
  62 -1271.95902028     0.04672144    10254.17      0.04866777    10681.34      1.3243
  63 -1271.95902027     0.04672146    10254.17      0.04866778    10681.34      1.3243
  64 -1271.95901996     0.04672176    10254.24      0.04866809    10681.41      1.3243
  65 -1271.95901976     0.04672196    10254.28      0.04866829    10681.45      1.3243
  66 -1271.95901969     0.04672203    10254.30      0.04866836    10681.47      1.3243
  67 -1271.95901966     0.04672206    10254.31      0.04866839    10681.48      1.3243
  68 -1271.95901963     0.04672209    10254.31      0.04866842    10681.48      1.3243
  69 -1271.95901951     0.04672221    10254.34      0.04866854    10681.51      1.3243
  70 -1271.95610873     0.04963299    10893.18      0.05157932    11320.35      1.4035
  71 -1271.95610864     0.04963308    10893.20      0.05157941    11320.37      1.4035
  72 -1271.95610858     0.04963314    10893.22      0.05157947    11320.39      1.4035
  73 -1271.95610858     0.04963314    10893.22      0.05157947    11320.39      1.4035
  74 -1271.95610851     0.04963321    10893.23      0.05157954    11320.40      1.4036
  75 -1271.95610846     0.04963326    10893.24      0.05157959    11320.41      1.4036
  76 -1271.95610843     0.04963329    10893.25      0.05157962    11320.42      1.4036
  77 -1271.95394224     0.05179948    11368.67      0.05374581    11795.84      1.4625
  78 -1271.95394208     0.05179964    11368.71      0.05374597    11795.88      1.4625
  79 -1271.95394205     0.05179967    11368.71      0.05374600    11795.88      1.4625
  80 -1271.95394177     0.05179995    11368.77      0.05374628    11795.94      1.4625
  81 -1271.95394168     0.05180005    11368.80      0.05374637    11795.97      1.4625
  82 -1271.93263094     0.07311078    16045.96      0.07505711    16473.13      2.0424
  83 -1271.93263094     0.07311078    16045.96      0.07505711    16473.13      2.0424
  84 -1271.93263049     0.07311123    16046.06      0.07505756    16473.23      2.0424
  85 -1271.93263049     0.07311123    16046.06      0.07505756    16473.23      2.0424
  86 -1271.93263022     0.07311150    16046.12      0.07505783    16473.29      2.0424
  87 -1271.93263022     0.07311150    16046.12      0.07505783    16473.29      2.0424
  88 -1271.93263013     0.07311159    16046.14      0.07505792    16473.31      2.0424
  89 -1271.93139669     0.07434503    16316.85      0.07629136    16744.02      2.0760
  90 -1271.93139645     0.07434527    16316.90      0.07629160    16744.07      2.0760
  91 -1271.93139645     0.07434527    16316.90      0.07629160    16744.07      2.0760
  92 -1271.93139573     0.07434599    16317.06      0.07629232    16744.23      2.0760
  93 -1271.93139573     0.07434599    16317.06      0.07629232    16744.23      2.0760
  94 -1271.93057341     0.07516832    16497.54      0.07711464    16924.71      2.0984
  95 -1271.93057341     0.07516832    16497.54      0.07711464    16924.71      2.0984
  96 -1271.93057326     0.07516847    16497.57      0.07711479    16924.74      2.0984


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  2.0  2.0   0.000024830  -0.000028368  -0.000766688   0.000000000  -0.000000000  -0.327853486  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  2.0  2.0   0.507105861   0.500310055   0.015701443  -0.000000000  -0.000000000   0.000031286  -0.000000000  -0.000000000
                         0.000000001  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  2.0  2.0  -0.000000001   0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.473300123   0.499671359   0.181191890  -0.000000000  -0.000000000  -0.000340093  -0.000000000  -0.000000000

    4    4.1  2.0  2.0   0.000000000   0.000000000   0.000000000  -0.008921580   0.232664430  -0.000000000   0.240489744   0.346746159
                        -0.000000000  -0.000000000   0.000000000  -0.008199225   0.061342986   0.000000000   0.163144209   0.148631841

    5    5.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.162851376  -0.003105783   0.000000000   0.211790779   0.114476180
                        -0.000000000  -0.000000000   0.000000000  -0.177198679   0.011779749   0.000000000  -0.312199302  -0.267063756

    6    6.1  2.0  2.0   0.000160246   0.000196061   0.000198130  -0.000000000  -0.000000000  -0.000000439  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    7    7.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000220300  -0.000191839   0.000122943  -0.000000000  -0.000000000  -0.000000326   0.000000000   0.000000000

    8    8.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000  -0.000055655   0.000000954   0.000000000   0.000033315   0.000034996
                        -0.000000000  -0.000000000  -0.000000000   0.000060558  -0.000003617   0.000000000  -0.000049109  -0.000081642

    9    9.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000002696  -0.000079526  -0.000000000   0.000073415   0.000054487
                        -0.000000000  -0.000000000   0.000000000   0.000002478  -0.000020967   0.000000000   0.000049804   0.000023356

   10   10.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000171687  -0.000063146  -0.000000000   0.000200715   0.000128892
                         0.000000000   0.000000000   0.000000000   0.000157786  -0.000016649   0.000000000   0.000136162   0.000055249

   11   11.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.000044139  -0.000059441  -0.000000000  -0.000078735  -0.000095546
                        -0.000000000  -0.000000000   0.000000000  -0.000048028   0.000225449  -0.000000000   0.000116063   0.000222901

   12   12.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000055  -0.000000009   0.000000662  -0.000000000   0.000000000   0.000284230   0.000000000  -0.000000000

   13   13.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000000070  -0.000000014  -0.000000000  -0.000000108  -0.000000068
                         0.000000000   0.000000000   0.000000000   0.000000076   0.000000051   0.000000000   0.000000160   0.000000159

   14   14.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.000000039   0.000000101   0.000000000   0.000000143   0.000000178
                         0.000000000   0.000000000   0.000000000   0.000000036   0.000000027  -0.000000000   0.000000097   0.000000076

   15   15.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000172  -0.000000000  -0.000000000

   16    1.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.296729265  -0.111810321   0.000000000   0.084340726  -0.059233564
                        -0.000000000  -0.000000000   0.000000000  -0.322871289   0.424079198  -0.000000000  -0.124326057   0.138187127

   17    2.1  2.0  1.0   0.000000000  -0.000000000   0.000000000   0.163268325   0.061485732   0.000000000   0.163963394   0.115042912
                        -0.000000000  -0.000000000  -0.000000000  -0.177652363  -0.233205847   0.000000000  -0.241697295  -0.268385887

   18    3.1  2.0  1.0   0.000000000   0.000000000  -0.000000000  -0.008547512  -0.011288075  -0.000000000   0.312864455   0.347486323
                        -0.000000000   0.000000000   0.000000000  -0.007855442  -0.002976150   0.000000000   0.212242004   0.148949107

   19    4.1  2.0  1.0  -0.000000000   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.066420307   0.000123489  -0.330167904   0.000000000   0.000000000   0.378301962   0.000000000  -0.000000000

   20    5.1  2.0  1.0  -0.066553117  -0.000132576   0.331932183  -0.000000000  -0.000000000   0.376732290   0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000129592  -0.000048828  -0.000000000  -0.000002408  -0.000001679
                        -0.000000000   0.000000000   0.000000000   0.000141010   0.000185197  -0.000000000   0.000003550   0.000003916

   22    7.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000109888  -0.000144336  -0.000000000   0.000102987   0.000114406
                        -0.000000000   0.000000000  -0.000000000  -0.000100991  -0.000038055   0.000000000   0.000069865   0.000049040

   23    8.1  2.0  1.0   0.000238832   0.000229027  -0.000026301  -0.000000000   0.000000000  -0.000115955  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   24    9.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000238797  -0.000229054   0.000025668   0.000000000  -0.000000000  -0.000116203   0.000000000  -0.000000000

   25   10.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000015022   0.000065343   0.000257490  -0.000000000  -0.000000000   0.000092068   0.000000000  -0.000000000

   26   11.1  2.0  1.0   0.000015150   0.000065435   0.000257046  -0.000000000  -0.000000000  -0.000093311  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   27   12.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.000139944   0.000183798   0.000000000  -0.000053901   0.000059893
                        -0.000000000   0.000000000  -0.000000000  -0.000128613   0.000048459  -0.000000000  -0.000036566   0.000025673

   28   13.1  2.0  1.0   0.000000053   0.000000043  -0.000000061   0.000000000  -0.000000000  -0.000000164   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   29   14.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000054   0.000000044  -0.000000061   0.000000000  -0.000000000   0.000000165   0.000000000  -0.000000000

   30   15.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000090   0.000000119  -0.000000000  -0.000000044   0.000000049
                        -0.000000000   0.000000000   0.000000000  -0.000000083   0.000000031  -0.000000000  -0.000000030   0.000000021

   31    1.1  2.0  0.0  -0.141218363   0.000000000   0.703865851  -0.000000000  -0.000000000  -0.001699545   0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000005   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   32    2.1  2.0  0.0  -0.000090541   0.000000000   0.001128137  -0.000000000   0.000000000   0.463578653   0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   33    3.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000005553  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   34    4.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000006   0.598093673   0.000000000  -0.175174081   0.000000011
                         0.000000000  -0.000000000  -0.000000000   0.000000003   0.157689991   0.000000000  -0.118835170   0.000000013

   35    5.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.418518588   0.000000003  -0.000000000   0.000000002   0.083439145
                        -0.000000000   0.000000000   0.000000000   0.455390326  -0.000000006   0.000000000  -0.000000016  -0.194656814

   36    6.1  2.0  0.0   0.000000061   0.000000000  -0.000000819   0.000000000  -0.000000000  -0.000354973  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   37    7.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000005  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   38    8.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000124444  -0.000000000   0.000000000   0.000000000   0.000140580
                        -0.000000000  -0.000000000  -0.000000000  -0.000135408   0.000000000  -0.000000000  -0.000000000  -0.000327961

   39    9.1  2.0  0.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000177728   0.000000000  -0.000295361   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000046859   0.000000000  -0.000200368   0.000000000

   40   10.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000141279  -0.000000000   0.000140608  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000037249  -0.000000000   0.000095386  -0.000000000

   41   11.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000098796   0.000000000   0.000000000   0.000000000   0.000067006
                        -0.000000000   0.000000000  -0.000000000   0.000107500  -0.000000000   0.000000000  -0.000000000  -0.000156319

   42   12.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000049  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   43   13.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000122  -0.000000000  -0.000000000  -0.000000000   0.000000009
                         0.000000000   0.000000000  -0.000000000  -0.000000133   0.000000000  -0.000000000  -0.000000000  -0.000000021

   44   14.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000176   0.000000000   0.000000019  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000046   0.000000000   0.000000013  -0.000000000

   45   15.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000021  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   46    1.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.296729269  -0.111810317  -0.000000000   0.084340729   0.059233546
                        -0.000000000   0.000000000   0.000000000   0.322871297   0.424079190   0.000000000  -0.124326080  -0.138187112

   47    2.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.163268322   0.061485735  -0.000000000   0.163963389  -0.115042947
                        -0.000000000   0.000000000  -0.000000000   0.177652358  -0.233205852   0.000000000  -0.241697249   0.268385917

   48    3.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000  -0.008547511   0.011288076   0.000000000  -0.312864396   0.347486361
                        -0.000000000  -0.000000000   0.000000000  -0.007855442   0.002976150   0.000000000  -0.212241996   0.148949153

   49    4.1  2.0 -1.0  -0.000000000   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.066420307  -0.000123489  -0.330167904   0.000000000   0.000000000   0.378301962   0.000000000   0.000000000

   50    5.1  2.0 -1.0   0.066553117  -0.000132576  -0.331932183   0.000000000   0.000000000  -0.376732290  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   51    6.1  2.0 -1.0   0.000000000   0.000000000   0.000000000   0.000129592  -0.000048828   0.000000000  -0.000002408   0.000001679
                         0.000000000  -0.000000000   0.000000000  -0.000141010   0.000185197  -0.000000000   0.000003550  -0.000003916

   52    7.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000109888   0.000144336   0.000000000  -0.000102987   0.000114406
                        -0.000000000   0.000000000  -0.000000000  -0.000100991   0.000038055   0.000000000  -0.000069865   0.000049040

   53    8.1  2.0 -1.0  -0.000238832   0.000229027   0.000026301  -0.000000000  -0.000000000   0.000115955   0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   54    9.1  2.0 -1.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000238797   0.000229054   0.000025668  -0.000000000  -0.000000000  -0.000116203  -0.000000000   0.000000000

   55   10.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000015022  -0.000065343   0.000257490  -0.000000000  -0.000000000   0.000092068   0.000000000  -0.000000000

   56   11.1  2.0 -1.0  -0.000015150   0.000065435  -0.000257046   0.000000000   0.000000000   0.000093311   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   57   12.1  2.0 -1.0   0.000000000  -0.000000000  -0.000000000  -0.000139944  -0.000183798  -0.000000000   0.000053901   0.000059893
                        -0.000000000  -0.000000000  -0.000000000  -0.000128613  -0.000048459  -0.000000000   0.000036566   0.000025673

   58   13.1  2.0 -1.0  -0.000000053   0.000000043   0.000000061  -0.000000000  -0.000000000   0.000000164  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   59   14.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000054  -0.000000044  -0.000000061  -0.000000000  -0.000000000   0.000000165  -0.000000000   0.000000000

   60   15.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000000090  -0.000000119   0.000000000   0.000000044   0.000000049
                        -0.000000000  -0.000000000   0.000000000  -0.000000083  -0.000000031  -0.000000000   0.000000030   0.000000021

   61    1.1  2.0 -2.0   0.000024830   0.000028368  -0.000766688  -0.000000000  -0.000000000  -0.327853486  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   62    2.1  2.0 -2.0   0.507105861  -0.500310056   0.015701443  -0.000000000  -0.000000000   0.000031286  -0.000000000   0.000000000
                         0.000000001   0.000000001   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   63    3.1  2.0 -2.0   0.000000001   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.473300122   0.499671360  -0.181191890   0.000000000   0.000000000   0.000340093   0.000000000   0.000000000

   64    4.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.008921585   0.232664430  -0.000000000   0.240489685  -0.346746188
                         0.000000000   0.000000000  -0.000000000   0.008199227   0.061342986  -0.000000000   0.163144201  -0.148631876

   65    5.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.162851376   0.003105780   0.000000000  -0.211790773   0.114476225
                         0.000000000  -0.000000000  -0.000000000  -0.177198680  -0.011779745  -0.000000000   0.312199257  -0.267063794

   66    6.1  2.0 -2.0   0.000160246  -0.000196061   0.000198130  -0.000000000  -0.000000000  -0.000000439  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   67    7.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000220300  -0.000191839  -0.000122943   0.000000000   0.000000000   0.000000326  -0.000000000   0.000000000

   68    8.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000  -0.000055655  -0.000000954   0.000000000  -0.000033315   0.000034996
                         0.000000000  -0.000000000   0.000000000   0.000060558   0.000003617  -0.000000000   0.000049109  -0.000081642

   69    9.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000  -0.000002696  -0.000079526  -0.000000000   0.000073415  -0.000054487
                         0.000000000  -0.000000000  -0.000000000  -0.000002478  -0.000020967  -0.000000000   0.000049804  -0.000023356

   70   10.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000  -0.000171687  -0.000063146  -0.000000000   0.000200715  -0.000128892
                        -0.000000000   0.000000000  -0.000000000  -0.000157786  -0.000016649  -0.000000000   0.000136162  -0.000055249

   71   11.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.000044139   0.000059441  -0.000000000   0.000078735  -0.000095546
                         0.000000000  -0.000000000  -0.000000000  -0.000048028  -0.000225449   0.000000000  -0.000116063   0.000222901

   72   12.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000055  -0.000000009  -0.000000662  -0.000000000  -0.000000000  -0.000284230  -0.000000000  -0.000000000

   73   13.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000  -0.000000070   0.000000014  -0.000000000   0.000000108  -0.000000068
                        -0.000000000   0.000000000  -0.000000000   0.000000076  -0.000000051  -0.000000000  -0.000000160   0.000000159

   74   14.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000  -0.000000039   0.000000101   0.000000000   0.000000143  -0.000000178
                        -0.000000000   0.000000000  -0.000000000  -0.000000036   0.000000027   0.000000000   0.000000097  -0.000000076

   75   15.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000172  -0.000000000   0.000000000

   76    1.1  1.0  1.0   0.000000000   0.000000000  -0.000000000   0.000059237   0.000022440  -0.000000000  -0.001564591  -0.001098013
                         0.000000000   0.000000000  -0.000000000  -0.000064455  -0.000085112  -0.000000000   0.002306353   0.002561575

   77    2.1  1.0  1.0   0.001487280   0.001830858   0.001893041  -0.000000000  -0.000000000  -0.001409459  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   78    3.1  1.0  1.0   0.000000000   0.000000000   0.000000000   0.000790537   0.002275614  -0.000000000   0.001533587   0.002106152
                         0.000000000   0.000000000   0.000000000   0.000726529   0.000599975   0.000000000   0.001040360   0.000902796

   79    4.1  1.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.002774174   0.002638074  -0.000419188   0.000000000  -0.000000000  -0.001564281  -0.000000000   0.000000000

   80    5.1  1.0  1.0   0.000000000   0.000000000  -0.000000000   0.002058697  -0.001791296  -0.000000000   0.001131162  -0.000207727
                         0.000000000   0.000000000   0.000000000   0.001892010  -0.000472283   0.000000000   0.000767362  -0.000089042

   81    6.1  1.0  1.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.001087764  -0.001456006  -0.001983560   0.000000000   0.000000000  -0.001651067  -0.000000000   0.000000000

   82    7.1  1.0  1.0   0.002581720   0.002393164  -0.000700114  -0.000000000   0.000000000   0.001795865   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   83    1.1  1.0  0.0  -0.000000000   0.000000048   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   84    2.1  1.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000693333  -0.000000000   0.001611172  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.002629706   0.000000000  -0.002375017   0.000000000

   85    3.1  1.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000237413  -0.000000000  -0.001177221   0.000000000   0.000000000   0.003806151   0.000000000  -0.000000000

   86    4.1  1.0  0.0  -0.000000000   0.000000000   0.000000000   0.002116107  -0.000000000   0.000000000   0.000000000   0.001662406
                         0.000000000  -0.000000000   0.000000000   0.001944772  -0.000000000   0.000000000   0.000000000   0.000712586

   87    5.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000864777   0.000000000   0.004309743  -0.000000000  -0.000000000   0.001037096   0.000000000  -0.000000000

   88    6.1  1.0  0.0  -0.000000000   0.000000000   0.000000000   0.002341320  -0.000000000   0.000000000  -0.000000000  -0.002418606
                         0.000000000  -0.000000000   0.000000000   0.002151750  -0.000000000  -0.000000000  -0.000000000  -0.001036729

   89    7.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000844691   0.000000000   0.000785589  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.003203782   0.000000000  -0.001158031   0.000000000

   90    1.1  1.0 -1.0   0.000000000  -0.000000000  -0.000000000   0.000059237  -0.000022440  -0.000000000   0.001564591  -0.001098013
                        -0.000000000   0.000000000   0.000000000  -0.000064455   0.000085112   0.000000000  -0.002306352   0.002561575

   91    2.1  1.0 -1.0   0.001487280  -0.001830858   0.001893041  -0.000000000  -0.000000000  -0.001409459  -0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   92    3.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000790537   0.002275614  -0.000000000   0.001533587  -0.002106152
                        -0.000000000   0.000000000  -0.000000000  -0.000726529   0.000599976  -0.000000000   0.001040360  -0.000902797

   93    4.1  1.0 -1.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.002774174   0.002638074   0.000419188  -0.000000000   0.000000000   0.001564281   0.000000000   0.000000000

   94    5.1  1.0 -1.0   0.000000000  -0.000000000  -0.000000000  -0.002058697  -0.001791296  -0.000000000   0.001131162   0.000207727
                        -0.000000000   0.000000000  -0.000000000  -0.001892010  -0.000472283  -0.000000000   0.000767362   0.000089042

   95    6.1  1.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.001087764  -0.001456006   0.001983560  -0.000000000  -0.000000000   0.001651067   0.000000000   0.000000000

   96    7.1  1.0 -1.0   0.002581720  -0.002393164  -0.000700114   0.000000000   0.000000000   0.001795865   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  2.0  2.0  -0.328110053   0.500006898   0.500193560   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000015975
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  2.0  2.0  -0.000015373   0.000032283   0.000032390   0.000000000   0.000000000   0.000000000   0.000000000  -0.223850003
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000013

    3    3.1  2.0  2.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000013
                         0.000006205   0.000000007  -0.000000095  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.224365170

    4    4.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.005118963   0.006907200  -0.034849956  -0.053657549  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.001346834  -0.430868799   0.113935294   0.443854041   0.000000000

    5    5.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.109649893   0.005324722   0.427532875   0.118253851   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.416750028   0.000085358   0.130771607   0.014295719   0.000000000

    6    6.1  2.0  2.0  -0.000000002   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000217982
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    7    7.1  2.0  2.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000002  -0.000000002  -0.000000002  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000218368

    8    8.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000   0.000016817  -0.000139197  -0.000064147  -0.000012080  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000063917  -0.000002231  -0.000019621  -0.000001460   0.000000000

    9    9.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000   0.000134563   0.000001060   0.000003580   0.000008052   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000035405  -0.000066119  -0.000011705  -0.000066609   0.000000000

   10   10.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000   0.000164733  -0.000001446  -0.000058800  -0.000000640   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000043342   0.000090175   0.000192237   0.000005297   0.000000000

   11   11.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000   0.000022951   0.000170263  -0.000005141  -0.000199589   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000087229   0.000002729  -0.000001573  -0.000024128  -0.000000000

   12   12.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000284440  -0.000218988  -0.000218713  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   13   13.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.000004593  -0.000036760   0.000028149   0.000043204   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000017456  -0.000000589   0.000008610   0.000005223  -0.000000000

   14   14.1  2.0  2.0   0.000000000   0.000000000   0.000000000  -0.000035557  -0.000000289   0.000012729   0.000003533   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000009355   0.000018045  -0.000041617  -0.000029221  -0.000000000

   15   15.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000185  -0.000037302  -0.000037359  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   16    1.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000   0.064392195   0.252993076   0.181576549  -0.188513875   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.244737580   0.004055697   0.055539721  -0.022789456  -0.000000000

   17    2.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.109827247   0.431599290  -0.112407291  -0.116690072   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.417424097   0.006918913  -0.034382578  -0.014106672  -0.000000000

   18    3.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.007743119   0.000128900   0.130765329   0.053655016   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.002037270  -0.008040731  -0.427512345  -0.443833076  -0.000000000

   19    4.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000026
                         0.377623811   0.000044207   0.000708075   0.000000000   0.000000000   0.000000000   0.000000000  -0.446959383

   20    5.1  2.0  1.0   0.377625443   0.000044216   0.000707685  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.446959477
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000026

   21    6.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000878  -0.000003466  -0.000208416  -0.000216373  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000003337  -0.000000056  -0.000063749  -0.000026157  -0.000000000

   22    7.1  2.0  1.0   0.000000000   0.000000000  -0.000000000   0.000203748   0.000003377  -0.000016836  -0.000006907   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000053608  -0.000210654   0.000055042   0.000057131   0.000000000

   23    8.1  2.0  1.0   0.000143626  -0.000130537   0.000203337   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000018523
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   24    9.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000143605  -0.000130603   0.000203306   0.000000000   0.000000000  -0.000000000   0.000000000   0.000018497

   25   10.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000018504   0.000175368   0.000080863  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000067059

   26   11.1  2.0  1.0  -0.000018446  -0.000175417  -0.000080777  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000067052
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   27   12.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000   0.000053447  -0.000000886  -0.000012219   0.000005014   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000014062   0.000055258   0.000039949  -0.000041474  -0.000000000

   28   13.1  2.0  1.0  -0.000000107  -0.000037273  -0.000037211  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000028880
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   29   14.1  2.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000107   0.000037273   0.000037210   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000028880

   30   15.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.000036305   0.000000602   0.000008255  -0.000003387   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000009552  -0.000037537  -0.000026987   0.000028020  -0.000000000

   31    1.1  2.0  0.0   0.000000000  -0.000045709  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   32    2.1  2.0  0.0   0.000000000   0.707088559  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   33    3.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.462870863   0.000000000   0.706823058   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000001541

   34    4.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.005728257  -0.078674889  -0.000000002  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000002   0.357326705   0.257212572   0.000000006   0.000000000

   35    5.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000   0.090927448   0.000000000   0.000000006  -0.267057778  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.345591004  -0.000000002   0.000000001  -0.032284635  -0.000000000

   36    6.1  2.0  0.0  -0.000000000  -0.000000424   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   37    7.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000360023   0.000000000   0.000000591  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000003

   38    8.1  2.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000039399  -0.000000000   0.000000000  -0.000298282  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000149744   0.000000000   0.000000000  -0.000036059   0.000000000

   39    9.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000002483  -0.000087880  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000154879   0.000287308   0.000000000   0.000000000

   40   10.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000003456  -0.000012753  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000215586   0.000041692   0.000000000  -0.000000000

   41   11.1  2.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000054877  -0.000000000  -0.000000000   0.000043177   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000208572   0.000000000  -0.000000000   0.000005220   0.000000000

   42   12.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000277258

   43   13.1  2.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000011785  -0.000000000  -0.000000000   0.000034432   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000044790   0.000000000  -0.000000000   0.000004163  -0.000000000

   44   14.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000742  -0.000010143  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000046312   0.000033162   0.000000000   0.000000000

   45   15.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000070414

   46    1.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.064392197   0.252993076   0.181576541   0.188513883   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.244737580   0.004055699   0.055539720   0.022789458   0.000000000

   47    2.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.109827243   0.431599290  -0.112407296   0.116690067   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.417424098   0.006918909  -0.034382578   0.014106671  -0.000000000

   48    3.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000   0.007743119  -0.000128900  -0.130765332   0.053655011   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.002037270   0.008040731   0.427512365  -0.443833057   0.000000000

   49    4.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000026
                        -0.377623811   0.000044207  -0.000708075  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.446959383

   50    5.1  2.0 -1.0   0.377625443  -0.000044216   0.000707685  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.446959477
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000026

   51    6.1  2.0 -1.0   0.000000000   0.000000000  -0.000000000  -0.000000878  -0.000003466  -0.000208416   0.000216373  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000003337  -0.000000056  -0.000063749   0.000026157   0.000000000

   52    7.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000203748  -0.000003377   0.000016836  -0.000006907   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000053608   0.000210654  -0.000055042   0.000057131   0.000000000

   53    8.1  2.0 -1.0   0.000143626   0.000130537   0.000203337   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000018523
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   54    9.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000143605  -0.000130603  -0.000203306  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000018497

   55   10.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000018504   0.000175368  -0.000080863  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000067059

   56   11.1  2.0 -1.0  -0.000018446   0.000175417  -0.000080777  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000067052
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   57   12.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000   0.000053447   0.000000886   0.000012219   0.000005014   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000014062  -0.000055258  -0.000039949  -0.000041474  -0.000000000

   58   13.1  2.0 -1.0  -0.000000107   0.000037273  -0.000037211  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000028880
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   59   14.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000107   0.000037273  -0.000037210  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000028880

   60   15.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000036305  -0.000000602  -0.000008255  -0.000003387  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000009552   0.000037537   0.000026987   0.000028020   0.000000000

   61    1.1  2.0 -2.0   0.328110053   0.500006898  -0.500193560  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000015975
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   62    2.1  2.0 -2.0   0.000015373   0.000032283  -0.000032390  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.223850003
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000013

   63    3.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000013
                         0.000006205  -0.000000007  -0.000000095  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.224365170

   64    4.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000   0.005118963   0.006907200  -0.034849959   0.053657548   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.001346837  -0.430868799   0.113935313  -0.443854035  -0.000000000

   65    5.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000   0.109649893  -0.005324722  -0.427532880   0.118253832  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.416750028  -0.000085362  -0.130771608   0.014295713  -0.000000000

   66    6.1  2.0 -2.0   0.000000002   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000217982
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   67    7.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000002   0.000000002  -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000218368

   68    8.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000000   0.000016817   0.000139197   0.000064147  -0.000012080   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000063917   0.000002231   0.000019621  -0.000001460   0.000000000

   69    9.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.000134563   0.000001060   0.000003580  -0.000008052  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000035405  -0.000066119  -0.000011705   0.000066609   0.000000000

   70   10.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.000164733  -0.000001446  -0.000058800   0.000000640  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000043342   0.000090175   0.000192237  -0.000005297   0.000000000

   71   11.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000   0.000022951  -0.000170263   0.000005141  -0.000199589  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000087229  -0.000002729   0.000001573  -0.000024128  -0.000000000

   72   12.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000284440   0.000218988  -0.000218713   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   73   13.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000   0.000004593   0.000036760  -0.000028149   0.000043204  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000017456   0.000000589  -0.000008610   0.000005223  -0.000000000

   74   14.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000035557  -0.000000289   0.000012729  -0.000003533  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000009355   0.000018045  -0.000041617   0.000029221   0.000000000

   75   15.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000185   0.000037302  -0.000037359  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   76    1.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000356273   0.001399997  -0.000021833  -0.000022557  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.001354100   0.000022443  -0.000006678  -0.000002727   0.000000000

   77    2.1  1.0  1.0  -0.002098637   0.001394030   0.000355160  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.001357469
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   78    3.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000692233   0.000000126  -0.000300890  -0.000188674  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000182131  -0.000007848   0.000983704   0.001560709   0.000000000

   79    4.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000568462  -0.000214372   0.001279390   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000824145

   80    5.1  1.0  1.0   0.000000000   0.000000000   0.000000000   0.001176586  -0.000022626  -0.000393298   0.000075434  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000309568   0.001411433   0.001285813  -0.000623992   0.000000000

   81    6.1  1.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.002207221   0.001377449   0.000550780   0.000000000   0.000000000   0.000000000  -0.000000000  -0.001496032

   82    7.1  1.0  1.0   0.000889314   0.000007912  -0.001346852   0.000000000  -0.000000000   0.000000000   0.000000000  -0.001036756
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   83    1.1  1.0  0.0  -0.003944308  -0.000000000  -0.001976354  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000009
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   84    2.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000449889  -0.001824321  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000007212  -0.000558014  -0.000000000  -0.000000000

   85    3.1  1.0  0.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.001902070  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   86    4.1  1.0  0.0   0.000000000  -0.000000000   0.000000000  -0.001868623  -0.000000000  -0.000000000   0.000213614   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000491648  -0.000000000   0.000000000  -0.001767011  -0.000000000

   87    5.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000523744  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   88    6.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000160211   0.000000000   0.000000000  -0.000199506  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000042153   0.000000000  -0.000000000   0.001650308   0.000000000

   89    7.1  1.0  0.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.001886007  -0.001447789  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000030234  -0.000442842  -0.000000000  -0.000000000

   90    1.1  1.0 -1.0  -0.000000000  -0.000000000   0.000000000  -0.000356273  -0.001399997   0.000021833  -0.000022557   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.001354100  -0.000022443   0.000006678  -0.000002727  -0.000000000

   91    2.1  1.0 -1.0   0.002098637   0.001394030  -0.000355160   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.001357469
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   92    3.1  1.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000692233   0.000000126  -0.000300890   0.000188674  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000182131  -0.000007848   0.000983704  -0.001560709   0.000000000

   93    4.1  1.0 -1.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000568462   0.000214372   0.001279390  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000824145

   94    5.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.001176586  -0.000022627  -0.000393298  -0.000075434   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000309568   0.001411433   0.001285813   0.000623992   0.000000000

   95    6.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.002207221  -0.001377449   0.000550780   0.000000000   0.000000000   0.000000000   0.000000000  -0.001496032

   96    7.1  1.0 -1.0  -0.000889314   0.000007912   0.001346852   0.000000000   0.000000000  -0.000000000  -0.000000000   0.001036756
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  2.0  2.0  -0.000387870  -0.377487995  -0.377018468   0.000000000  -0.000000000   0.000029301   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  2.0  2.0   0.378006790  -0.000388730  -0.000025497  -0.000000000   0.000000000  -0.446733974  -0.000000000  -0.000000000
                        -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    3    3.1  2.0  2.0  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.378503958   0.000364821   0.000001138   0.000000000  -0.000000000   0.447190137   0.000000000   0.000000000

    4    4.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.025580822  -0.069633265   0.000000000  -0.213438272   0.205449320
                        -0.000000000  -0.000000000  -0.000000000  -0.326723305   0.320532190  -0.000000000  -0.068183509   0.089188367

    5    5.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.327005801  -0.320252167   0.000000000   0.068155719  -0.089224163
                         0.000000000   0.000000000   0.000000000   0.025602940  -0.069572432   0.000000000  -0.213351279   0.205531776

    6    6.1  2.0  2.0  -0.000160805   0.000000158   0.000000004  -0.000000000  -0.000000000   0.000060367  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    7    7.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000157415   0.000000154   0.000000003   0.000000000  -0.000000000   0.000052459   0.000000000   0.000000000

    8    8.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000129955  -0.000084837  -0.000000000   0.000019398   0.000027536
                        -0.000000000   0.000000000   0.000000000  -0.000010175  -0.000018430   0.000000000  -0.000060722  -0.000063430

    9    9.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000   0.000006780   0.000027667  -0.000000000   0.000065864   0.000058491
                        -0.000000000  -0.000000000   0.000000000  -0.000086600  -0.000127355  -0.000000000   0.000021041   0.000025392

   10   10.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.000009014   0.000011543  -0.000000000  -0.000000576  -0.000033459
                         0.000000000   0.000000000   0.000000000   0.000115125  -0.000053133  -0.000000000  -0.000000184  -0.000014525

   11   11.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.000054155  -0.000112883   0.000000000   0.000011108   0.000000252
                        -0.000000000   0.000000000   0.000000000   0.000004240  -0.000024523   0.000000000  -0.000034773  -0.000000580

   12   12.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000065   0.000070460   0.000070439  -0.000000000   0.000000000   0.000000004   0.000000000   0.000000000

   13   13.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000  -0.000024555   0.000024106  -0.000000000  -0.000006599   0.000008632
                         0.000000000   0.000000000   0.000000000  -0.000001923   0.000005237  -0.000000000   0.000020656  -0.000019883

   14   14.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000001925  -0.000005229   0.000000000  -0.000020648   0.000019890
                        -0.000000000  -0.000000000  -0.000000000  -0.000024592   0.000024068  -0.000000000  -0.000006596   0.000008635

   15   15.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000048   0.000049396   0.000049353  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   16    1.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.187341604   0.183591045  -0.000000000  -0.117730580   0.154073199
                        -0.000000000  -0.000000000  -0.000000000  -0.014667923   0.039883807  -0.000000000   0.368537964  -0.354914379

   17    2.1  2.0  1.0   0.000000000   0.000000000  -0.000000000   0.325455757   0.319033263   0.000000000  -0.067920345  -0.088860563
                        -0.000000000  -0.000000000   0.000000000   0.025481571   0.069307625  -0.000000000   0.212614491   0.204694219

   18    3.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000   0.025538172   0.069456690  -0.000000000   0.212894181   0.205009031
                        -0.000000000  -0.000000000   0.000000000  -0.326178674  -0.319719429  -0.000000000   0.068009693   0.088997227

   19    4.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.188712710  -0.328014638  -0.327710243   0.000000000  -0.000000000   0.224109676   0.000000000   0.000000000

   20    5.1  2.0  1.0  -0.189343491  -0.327651234  -0.327709118   0.000000000  -0.000000000  -0.224108381  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   21    6.1  2.0  1.0   0.000000000  -0.000000000   0.000000000  -0.000001808  -0.000001775   0.000000000  -0.000016265  -0.000021288
                         0.000000000  -0.000000000  -0.000000000  -0.000000142  -0.000000386   0.000000000   0.000050915   0.000049039

   22    7.1  2.0  1.0  -0.000000000   0.000000000   0.000000000  -0.000000132  -0.000000360   0.000000000  -0.000054966  -0.000052933
                        -0.000000000   0.000000000   0.000000000   0.000001688   0.000001658  -0.000000000  -0.000017559  -0.000022979

   23    8.1  2.0  1.0  -0.000028240  -0.000133796   0.000083803   0.000000000   0.000000000   0.000017024   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   24    9.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000027949  -0.000133833   0.000083842   0.000000000   0.000000000  -0.000016993   0.000000000  -0.000000000

   25   10.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000095653  -0.000054125  -0.000115074   0.000000000  -0.000000000  -0.000067912   0.000000000   0.000000000

   26   11.1  2.0  1.0   0.000095743   0.000053887   0.000115111  -0.000000000   0.000000000  -0.000067903   0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   27   12.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000011161   0.000030356  -0.000000000   0.000041203  -0.000039675
                         0.000000000   0.000000000   0.000000000   0.000142551  -0.000139731   0.000000000   0.000013163  -0.000017223

   28   13.1  2.0  1.0   0.000042745  -0.000024857  -0.000024833   0.000000000  -0.000000000  -0.000021821  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   29   14.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000042792   0.000024776   0.000024833  -0.000000000   0.000000000  -0.000021821  -0.000000000  -0.000000000

   30   15.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.000001930  -0.000005250  -0.000000000   0.000020690  -0.000019923
                         0.000000000  -0.000000000  -0.000000000  -0.000024656   0.000024168   0.000000000   0.000006609  -0.000008649

   31    1.1  2.0  0.0   0.533630334  -0.000547024   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   32    2.1  2.0  0.0   0.000548624   0.533951753  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   33    3.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.534917930   0.000000000   0.000000000  -0.000000657  -0.000000000   0.000000000

   34    4.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000003   0.057027236   0.000000000  -0.000000002   0.502730532
                         0.000000000  -0.000000000   0.000000000  -0.000000002  -0.262504795  -0.000000000  -0.000000006   0.218242212

   35    5.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.267808322  -0.000000001  -0.000000000  -0.166775328   0.000000003
                         0.000000000   0.000000000   0.000000000   0.020968066  -0.000000004  -0.000000000   0.522065227   0.000000006

   36    6.1  2.0  0.0   0.000000209   0.000221024  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   37    7.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000226796  -0.000000000  -0.000000000   0.000000002  -0.000000000  -0.000000000

   38    8.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.000037064   0.000000000  -0.000000000  -0.000008498   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000002902   0.000000000  -0.000000000   0.000026602   0.000000000

   39    9.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000007881   0.000000000  -0.000000000   0.000025599
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000036277  -0.000000000  -0.000000000   0.000011113

   40   10.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000028638   0.000000000  -0.000000000   0.000077122
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000131826  -0.000000000  -0.000000000   0.000033480

   41   11.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000134469  -0.000000000   0.000000000   0.000025581  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000010528  -0.000000000   0.000000000  -0.000080078  -0.000000000

   42   12.1  2.0  0.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000107516  -0.000000000  -0.000000000

   43   13.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000060306  -0.000000000  -0.000000000  -0.000005468   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000004722  -0.000000000  -0.000000000   0.000017118   0.000000000

   44   14.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000012842  -0.000000000   0.000000000  -0.000016485
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000059112   0.000000000   0.000000000  -0.000007156

   45   15.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000035483   0.000000000   0.000000000

   46    1.1  2.0 -1.0   0.000000000   0.000000000  -0.000000000   0.187341607   0.183591044  -0.000000000   0.117730571   0.154073194
                        -0.000000000  -0.000000000   0.000000000   0.014667918   0.039883801   0.000000000  -0.368537960  -0.354914387

   47    2.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.325455753   0.319033265   0.000000000   0.067920350  -0.088860565
                        -0.000000000  -0.000000000  -0.000000000  -0.025481579   0.069307635   0.000000000  -0.212614493   0.204694214

   48    3.1  2.0 -1.0   0.000000000   0.000000000   0.000000000   0.025538180  -0.069456699  -0.000000000   0.212894183  -0.205009026
                        -0.000000000  -0.000000000  -0.000000000  -0.326178670   0.319719430   0.000000000   0.068009698  -0.088997230

   49    4.1  2.0 -1.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.188712710  -0.328014638   0.327710243   0.000000000   0.000000000  -0.224109676  -0.000000000  -0.000000000

   50    5.1  2.0 -1.0   0.189343491   0.327651234  -0.327709118  -0.000000000  -0.000000000  -0.224108381  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   51    6.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000   0.000001808  -0.000001775   0.000000000   0.000016265  -0.000021289
                         0.000000000  -0.000000000   0.000000000   0.000000142  -0.000000386  -0.000000000  -0.000050915   0.000049039

   52    7.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000000132   0.000000360   0.000000000  -0.000054966   0.000052933
                        -0.000000000   0.000000000  -0.000000000   0.000001688  -0.000001658   0.000000000  -0.000017559   0.000022979

   53    8.1  2.0 -1.0   0.000028240   0.000133796   0.000083803  -0.000000000   0.000000000   0.000017024   0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   54    9.1  2.0 -1.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000027949  -0.000133833  -0.000083842   0.000000000  -0.000000000   0.000016993  -0.000000000  -0.000000000

   55   10.1  2.0 -1.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000095653  -0.000054125   0.000115074   0.000000000   0.000000000   0.000067912  -0.000000000   0.000000000

   56   11.1  2.0 -1.0  -0.000095743  -0.000053887   0.000115111   0.000000000   0.000000000  -0.000067903  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   57   12.1  2.0 -1.0   0.000000000  -0.000000000  -0.000000000  -0.000011161  -0.000030356  -0.000000000   0.000041203   0.000039675
                         0.000000000   0.000000000  -0.000000000   0.000142551   0.000139731  -0.000000000   0.000013163   0.000017223

   58   13.1  2.0 -1.0  -0.000042745   0.000024857  -0.000024833  -0.000000000  -0.000000000  -0.000021821  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   59   14.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000042792   0.000024776  -0.000024833  -0.000000000  -0.000000000   0.000021821   0.000000000  -0.000000000

   60   15.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000001930   0.000005250  -0.000000000   0.000020690   0.000019923
                         0.000000000  -0.000000000   0.000000000  -0.000024656  -0.000024168  -0.000000000   0.000006609   0.000008649

   61    1.1  2.0 -2.0  -0.000387870  -0.377487995   0.377018468   0.000000000   0.000000000  -0.000029301  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   62    2.1  2.0 -2.0   0.378006790  -0.000388730   0.000025497  -0.000000000   0.000000000   0.446733974   0.000000000   0.000000000
                        -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   63    3.1  2.0 -2.0   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.378503958  -0.000364821   0.000001138  -0.000000000   0.000000000   0.447190137   0.000000000   0.000000000

   64    4.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000  -0.025580814  -0.069633256  -0.000000000   0.213438270   0.205449324
                         0.000000000   0.000000000  -0.000000000   0.326723310   0.320532189  -0.000000000   0.068183504   0.089188364

   65    5.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000   0.327005805   0.320252165  -0.000000000   0.068155713   0.089224160
                        -0.000000000  -0.000000000   0.000000000   0.025602932   0.069572423   0.000000000  -0.213351277  -0.205531781

   66    6.1  2.0 -2.0  -0.000160805   0.000000158  -0.000000004  -0.000000000  -0.000000000  -0.000060367  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   67    7.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000157415  -0.000000154   0.000000003  -0.000000000  -0.000000000   0.000052459  -0.000000000  -0.000000000

   68    8.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000  -0.000129955   0.000084837   0.000000000   0.000019398  -0.000027536
                         0.000000000  -0.000000000   0.000000000  -0.000010175   0.000018430   0.000000000  -0.000060722   0.000063430

   69    9.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000  -0.000006780   0.000027667   0.000000000  -0.000065864   0.000058491
                         0.000000000   0.000000000   0.000000000   0.000086600  -0.000127355  -0.000000000  -0.000021041   0.000025392

   70   10.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.000009014   0.000011543   0.000000000   0.000000576  -0.000033459
                        -0.000000000  -0.000000000   0.000000000  -0.000115125  -0.000053133  -0.000000000   0.000000184  -0.000014525

   71   11.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000054155   0.000112883  -0.000000000   0.000011108  -0.000000252
                         0.000000000  -0.000000000   0.000000000   0.000004240   0.000024523   0.000000000  -0.000034773   0.000000580

   72   12.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000065  -0.000070460   0.000070439   0.000000000   0.000000000   0.000000004   0.000000000   0.000000000

   73   13.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000  -0.000024555  -0.000024106   0.000000000  -0.000006599  -0.000008632
                        -0.000000000  -0.000000000   0.000000000  -0.000001923  -0.000005237  -0.000000000   0.000020656   0.000019883

   74   14.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.000001925  -0.000005229  -0.000000000   0.000020648   0.000019890
                         0.000000000   0.000000000  -0.000000000   0.000024592   0.000024068  -0.000000000   0.000006596   0.000008635

   75   15.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000048  -0.000049396   0.000049353   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   76    1.1  1.0  1.0   0.000000000   0.000000000  -0.000000000   0.000515729   0.000505526  -0.000000000   0.000000289   0.000000380
                        -0.000000000   0.000000000   0.000000000   0.000040379   0.000109822   0.000000000  -0.000000904  -0.000000876

   77    2.1  1.0  1.0  -0.000454419   0.000258876  -0.000514551  -0.000000000  -0.000000000  -0.000000454  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   78    3.1  1.0  1.0  -0.000000000   0.000000000   0.000000000  -0.000030488  -0.000128797   0.000000000   0.000000080   0.000001582
                         0.000000000  -0.000000000  -0.000000000   0.000389393   0.000592874  -0.000000000   0.000000025   0.000000687

   79    4.1  1.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000273885  -0.000634832   0.000479657   0.000000000   0.000000000   0.000002174  -0.000000000   0.000000000

   80    5.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000041353   0.000054174  -0.000000000   0.000003198  -0.000002604
                         0.000000000   0.000000000   0.000000000   0.000528169  -0.000249372  -0.000000000   0.000001022  -0.000001130

   81    6.1  1.0  1.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000501011   0.000165753  -0.000448455  -0.000000000  -0.000000000   0.000000765  -0.000000000   0.000000000

   82    7.1  1.0  1.0   0.000346292   0.000602573  -0.000407928  -0.000000000  -0.000000000   0.000002254   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   83    1.1  1.0  0.0  -0.000000000   0.000000000   0.000737063   0.000000000   0.000000000   0.000000004   0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   84    2.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000720779   0.000000000   0.000000000  -0.000000821
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000156584   0.000000000  -0.000000000   0.000001891

   85    3.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000261474  -0.000712673   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   86    4.1  1.0  0.0   0.000000000   0.000000000  -0.000000000   0.000035359  -0.000000000  -0.000000000   0.000002455   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000451608   0.000000000   0.000000000   0.000000784  -0.000000000

   87    5.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000946719  -0.000197258   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   88    6.1  1.0  0.0   0.000000000   0.000000000   0.000000000   0.000063510  -0.000000000  -0.000000000   0.000002310   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000811167   0.000000000  -0.000000000   0.000000738   0.000000000

   89    7.1  1.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000555586   0.000000000  -0.000000000   0.000001169
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000120697  -0.000000000  -0.000000000  -0.000002692

   90    1.1  1.0 -1.0   0.000000000   0.000000000   0.000000000   0.000515728  -0.000505526   0.000000000   0.000000289  -0.000000380
                         0.000000000   0.000000000   0.000000000   0.000040379  -0.000109822   0.000000000  -0.000000904   0.000000876

   91    2.1  1.0 -1.0  -0.000454419   0.000258876   0.000514551  -0.000000000   0.000000000   0.000000454   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   92    3.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000030488  -0.000128797  -0.000000000  -0.000000080   0.000001582
                        -0.000000000   0.000000000  -0.000000000  -0.000389393   0.000592874  -0.000000000  -0.000000025   0.000000687

   93    4.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000273885   0.000634832   0.000479657  -0.000000000   0.000000000   0.000002174   0.000000000   0.000000000

   94    5.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000041353   0.000054174   0.000000000  -0.000003198  -0.000002604
                        -0.000000000  -0.000000000   0.000000000  -0.000528169  -0.000249372  -0.000000000  -0.000001022  -0.000001130

   95    6.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000501011  -0.000165753  -0.000448455   0.000000000  -0.000000000   0.000000765   0.000000000   0.000000000

   96    7.1  1.0 -1.0   0.000346292   0.000602573   0.000407928  -0.000000000   0.000000000  -0.000002254  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  2.0  2.0   0.000020778  -0.000000003  -0.000000007   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000616
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  2.0  2.0  -0.315749972   0.000004325   0.000004245   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000017
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    3    3.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.316039893  -0.000003559  -0.000003490   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000020

    4    4.1  2.0  2.0  -0.000000000   0.000000000   0.000000000  -0.000002645  -0.000000215  -0.000003562  -0.000002393  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000329   0.000000617   0.000000144   0.000000712  -0.000000000

    5    5.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.000000173  -0.000001963  -0.000000122  -0.000000956   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000001387  -0.000000683  -0.000003008  -0.000003211   0.000000000

    6    6.1  2.0  2.0   0.000003989   0.396669821   0.387343344  -0.000000000   0.000000000   0.000000000   0.000000000  -0.002005705
                        -0.000000000   0.000000104   0.000000065   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    7    7.1  2.0  2.0  -0.000000000   0.000000098   0.000000065   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000003149  -0.373676177  -0.387292472   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.002006723

    8    8.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.026082336   0.254061770   0.016620385   0.125104909   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.209474961   0.088402846   0.410672232   0.420385415   0.000000000

    9    9.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.347539849   0.037144926   0.473127800   0.330209702   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.043273212  -0.106751187  -0.019148035  -0.098269000  -0.000000000

   10   10.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.160737218  -0.093440485  -0.019067281  -0.264863828   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.020013880   0.268539436   0.000771674   0.078822348   0.000000000

   11   11.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.034848998  -0.204986413   0.009538100  -0.011996608   0.000000000
                         0.000000000   0.000000000   0.000000000   0.279882414  -0.071326701   0.235676403  -0.040311756   0.000000000

   12   12.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001
                         0.000000003   0.000027743   0.001495077  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.288558896

   13   13.1  2.0  2.0  -0.000000000   0.000000000   0.000000000  -0.000000006  -0.000000071   0.000000001  -0.000000010   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000047  -0.000000025   0.000000033  -0.000000034   0.000000000

   14   14.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000   0.000000063  -0.000000017   0.000000023  -0.000000045   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000008   0.000000049  -0.000000001   0.000000013   0.000000000

   15   15.1  2.0  2.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000002  -0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000085

   16    1.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000000042  -0.000000116   0.000000086   0.000000599   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000337  -0.000000041   0.000002127   0.000002013   0.000000000

   17    2.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.000000402   0.000003450  -0.000000059   0.000000628  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000003231   0.000001201  -0.000001464   0.000002112  -0.000000000

   18    3.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000001405   0.000000523  -0.000000639   0.000000926  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000175  -0.000001503   0.000000026  -0.000000275   0.000000000

   19    4.1  2.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.316621618  -0.000002710  -0.000002813  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000001718

   20    5.1  2.0  1.0  -0.316620304   0.000002715   0.000002800  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000001753
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   21    6.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.039516142   0.338457322  -0.005756127   0.061354323   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.317365555   0.117768989  -0.142227824   0.206166665  -0.000000000

   22    7.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.266599801   0.100553282  -0.142791552   0.196659554  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.033195145  -0.288980953   0.005778942  -0.058525047  -0.000000000

   23    8.1  2.0  1.0  -0.000003473  -0.312156723  -0.302802909   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.187479421
                        -0.000000000  -0.000000082  -0.000000051  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001

   24    9.1  2.0  1.0  -0.000000000  -0.000000082  -0.000000051  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001
                         0.000003483   0.312180326   0.304761942  -0.000000000   0.000000000   0.000000000   0.000000000   0.184215640

   25   10.1  2.0  1.0  -0.000000000   0.000000014   0.000000015   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001
                        -0.000000187  -0.052288320  -0.086031773  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.314777072

   26   11.1  2.0  1.0  -0.000000188  -0.052472938  -0.089400815   0.000000000   0.000000000   0.000000000  -0.000000000  -0.313798099
                        -0.000000000  -0.000000014  -0.000000015  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001

   27   12.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.065456725  -0.022195125  -0.000773699   0.012212342   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.008150208   0.063786779   0.000031312  -0.003634341  -0.000000000

   28   13.1  2.0  1.0  -0.000000132  -0.000000014  -0.000000034   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000093
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   29   14.1  2.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000133  -0.000000014  -0.000000032   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000089

   30   15.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.000000063   0.000000020   0.000000038   0.000000026  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000008  -0.000000056  -0.000000002  -0.000000008   0.000000000

   31    1.1  2.0  0.0   0.447041552  -0.000000000  -0.000003087  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000008
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   32    2.1  2.0  0.0   0.000028346   0.000000000   0.000000031   0.000000000   0.000000000  -0.000000000   0.000000000   0.000005375
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   33    3.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000003  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   34    4.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000001107  -0.000001541   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000003180   0.000000062  -0.000000000  -0.000000000

   35    5.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000367  -0.000000000  -0.000000000   0.000000635  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000002944   0.000000000   0.000000000   0.000002134   0.000000000

   36    6.1  2.0  0.0  -0.000000008   0.000000000   0.002836699  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.547883065
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000002

   37    7.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000049326  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   38    8.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.038322143   0.000000004   0.000000000  -0.059099338  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.307776333  -0.000000013  -0.000000001  -0.198589325  -0.000000000

   39    9.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000003  -0.114117585   0.136606759  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000015   0.327963562  -0.005528636   0.000000001  -0.000000000

   40   10.1  2.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.001728210  -0.040604757   0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.004966717   0.001643322  -0.000000000   0.000000000

   41   11.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000   0.001653824  -0.000000000   0.000000000  -0.011395546   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.013282344   0.000000001  -0.000000000  -0.038292034  -0.000000000

   42   12.1  2.0  0.0   0.000000000   0.000000019  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.072571532   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   43   13.1  2.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000000002  -0.000000000   0.000000000  -0.000000010   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000017   0.000000000  -0.000000000  -0.000000034   0.000000000

   44   14.1  2.0  0.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000008  -0.000000030   0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000022   0.000000001   0.000000000  -0.000000000

   45   15.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000097  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   46    1.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000000042  -0.000000116   0.000000086  -0.000000599  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000337  -0.000000041   0.000002127  -0.000002013   0.000000000

   47    2.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000000402   0.000003450  -0.000000059  -0.000000628   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000003231   0.000001201  -0.000001464  -0.000002112  -0.000000000

   48    3.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000  -0.000001405  -0.000000523   0.000000639   0.000000926   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000175   0.000001503  -0.000000026  -0.000000275   0.000000000

   49    4.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.316621618   0.000002710  -0.000002813   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000001718

   50    5.1  2.0 -1.0   0.316620304   0.000002715  -0.000002800  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000001753
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   51    6.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.039516111   0.338457329  -0.005756127  -0.061354321  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.317365560   0.117768962  -0.142227826  -0.206166665  -0.000000000

   52    7.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.266599805  -0.100553260   0.142791553   0.196659554   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.033195118   0.288980960  -0.005778941  -0.058525045  -0.000000000

   53    8.1  2.0 -1.0   0.000003473  -0.312156722   0.302802910  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.187479421
                        -0.000000000  -0.000000082   0.000000051   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001

   54    9.1  2.0 -1.0   0.000000000   0.000000082  -0.000000051  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001
                         0.000003483  -0.312180325   0.304761943  -0.000000000   0.000000000   0.000000000  -0.000000000   0.184215640

   55   10.1  2.0 -1.0   0.000000000  -0.000000014   0.000000015   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001
                        -0.000000187   0.052288320  -0.086031773   0.000000000   0.000000000  -0.000000000  -0.000000000   0.314777072

   56   11.1  2.0 -1.0   0.000000188  -0.052472938   0.089400815   0.000000000   0.000000000  -0.000000000  -0.000000000   0.313798099
                        -0.000000000  -0.000000014   0.000000015   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001

   57   12.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.065456723   0.022195131   0.000773699   0.012212342  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.008150214  -0.063786778  -0.000031313  -0.003634341  -0.000000000

   58   13.1  2.0 -1.0   0.000000132  -0.000000014   0.000000034   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000093
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   59   14.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000133   0.000000014  -0.000000032  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000089

   60   15.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000063  -0.000000020  -0.000000038   0.000000026   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000008   0.000000056   0.000000002  -0.000000008   0.000000000

   61    1.1  2.0 -2.0   0.000020778   0.000000003  -0.000000007  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000616
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   62    2.1  2.0 -2.0  -0.315749972  -0.000004325   0.000004245  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000017
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   63    3.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.316039893  -0.000003559   0.000003490   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000020

   64    4.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000   0.000002645  -0.000000215  -0.000003562   0.000002393  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000329   0.000000617   0.000000144  -0.000000712   0.000000000

   65    5.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000   0.000000173   0.000001963   0.000000122  -0.000000956   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000001387   0.000000683   0.000003008  -0.000003211  -0.000000000

   66    6.1  2.0 -2.0   0.000003989  -0.396669820   0.387343345  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.002005705
                         0.000000000  -0.000000104   0.000000065   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   67    7.1  2.0 -2.0  -0.000000000   0.000000098  -0.000000065  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000003149  -0.373676176   0.387292473  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.002006723

   68    8.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000  -0.026082359  -0.254061765  -0.016620388   0.125104911   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.209474955  -0.088402865  -0.410672231   0.420385417  -0.000000000

   69    9.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000  -0.347539846   0.037144956   0.473127799  -0.330209704   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.043273220  -0.106751178  -0.019148038   0.098269003   0.000000000

   70   10.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.160737223  -0.093440472  -0.019067280   0.264863828   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.020013856   0.268539440   0.000771676  -0.078822347  -0.000000000

   71   11.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000  -0.034848979   0.204986420  -0.009538100  -0.011996606   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.279882417   0.071326677  -0.235676404  -0.040311755  -0.000000000

   72   12.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001
                        -0.000000003   0.000027743  -0.001495077  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.288558896

   73   13.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.000000006   0.000000071  -0.000000001  -0.000000010  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000047   0.000000025  -0.000000033  -0.000000034  -0.000000000

   74   14.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000  -0.000000063  -0.000000017   0.000000023   0.000000045   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000008   0.000000049  -0.000000001  -0.000000013  -0.000000000

   75   15.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000002   0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000085

   76    1.1  1.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000194   0.000001744  -0.000000029   0.000000330  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000001556   0.000000607  -0.000000715   0.000001110  -0.000000000

   77    2.1  1.0  1.0  -0.000000957   0.000001438   0.000001718  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000002383
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   78    3.1  1.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.000002752   0.000001049  -0.000001669   0.000001482  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000343  -0.000003016   0.000000068  -0.000000441   0.000000000

   79    4.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000001637   0.000000824   0.000000754  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000002186

   80    5.1  1.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000711   0.000000199   0.000000959   0.000001773   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000089  -0.000000573  -0.000000039  -0.000000528   0.000000000

   81    6.1  1.0  1.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000001187  -0.000001352  -0.000001591   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000002778

   82    7.1  1.0  1.0   0.000001797   0.000000581   0.000000433   0.000000000   0.000000000   0.000000000   0.000000000  -0.000002625
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   83    1.1  1.0  0.0   0.000000000  -0.000000060   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   84    2.1  1.0  0.0  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000001306  -0.000000037   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000455  -0.000000913   0.000000000  -0.000000000

   85    3.1  1.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000722  -0.000000000  -0.000000613   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000006433

   86    4.1  1.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000001133   0.000000000   0.000000000   0.000000900  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000141   0.000000000   0.000000000  -0.000000268  -0.000000000

   87    5.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000002782   0.000000000   0.000001965  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000001766

   88    6.1  1.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000001370   0.000000000   0.000000000   0.000001254   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000171   0.000000000   0.000000000  -0.000000373  -0.000000000

   89    7.1  1.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000001527   0.000000035   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000531   0.000000860  -0.000000000  -0.000000000

   90    1.1  1.0 -1.0  -0.000000000  -0.000000000   0.000000000   0.000000194  -0.000001744   0.000000029   0.000000330  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000001556  -0.000000607   0.000000715   0.000001110   0.000000000

   91    2.1  1.0 -1.0  -0.000000957  -0.000001438   0.000001718   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000002383
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   92    3.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000002752   0.000001049  -0.000001669  -0.000001482  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000343  -0.000003016   0.000000068   0.000000441  -0.000000000

   93    4.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000001637   0.000000824  -0.000000754  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000002186

   94    5.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000711   0.000000199   0.000000959  -0.000001773   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000089  -0.000000573  -0.000000039   0.000000528  -0.000000000

   95    6.1  1.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000001187  -0.000001352   0.000001591   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000002778

   96    7.1  1.0 -1.0   0.000001797  -0.000000581   0.000000433  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000002625
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  2.0  2.0  -0.000000144   0.000000000   0.000000000   0.000000002  -0.000001834   0.000002100  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  2.0  2.0  -0.000000003   0.000000000   0.000000000  -0.000000620   0.000439035   0.000433952  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    3    3.1  2.0  2.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000003   0.000000000  -0.000000000   0.000000550   0.000425911   0.000435070  -0.000000000   0.000000000

    4    4.1  2.0  2.0   0.000000000   0.000000087  -0.000000286   0.000000000  -0.000000000   0.000000000  -0.000171168   0.000047352
                         0.000000000  -0.000000168  -0.000000185   0.000000000   0.000000000   0.000000000   0.000278701  -0.000221177

    5    5.1  2.0  2.0  -0.000000000  -0.000000307  -0.000000106   0.000000000   0.000000000   0.000000000   0.000196827  -0.000319310
                        -0.000000000  -0.000000159   0.000000163  -0.000000000   0.000000000  -0.000000000   0.000120884  -0.000068361

    6    6.1  2.0  2.0   0.000073867   0.000000000  -0.000000000  -0.067778073  -0.288986360  -0.315932443   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000090  -0.000000006   0.000000001   0.000000000  -0.000000000

    7    7.1  2.0  2.0   0.000000000   0.000000000   0.000000000  -0.000000199  -0.000000007   0.000000001   0.000000000   0.000000000
                         0.000048835   0.000000000   0.000000000  -0.149287577   0.339946320   0.315876757   0.000000000  -0.000000000

    8    8.1  2.0  2.0  -0.000000000   0.013621447   0.015349530   0.000000000  -0.000000000  -0.000000000  -0.067158210   0.012965870
                        -0.000000000   0.007043304  -0.023702134   0.000000000  -0.000000000   0.000000000  -0.041246071   0.002775850

    9    9.1  2.0  2.0  -0.000000000  -0.012706743   0.012264895   0.000000000   0.000000000  -0.000000000   0.009017363  -0.016189677
                         0.000000000   0.024574332   0.007942772  -0.000000000  -0.000000000  -0.000000000  -0.014682368   0.075621247

   10   10.1  2.0  2.0  -0.000000000  -0.040080446  -0.154633527  -0.000000000   0.000000000  -0.000000000   0.112154411  -0.089910954
                        -0.000000000   0.077514219  -0.100140745  -0.000000000  -0.000000000  -0.000000000  -0.182613507   0.419969998

   11   11.1  2.0  2.0  -0.000000000   0.163463424  -0.047085098  -0.000000000   0.000000000   0.000000000   0.363961760  -0.202566618
                        -0.000000000   0.084522552   0.072707142   0.000000000   0.000000000  -0.000000000   0.223531752  -0.043367282

   12   12.1  2.0  2.0   0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.288596778  -0.000000000   0.000000000  -0.000161338  -0.002931984   0.003472343  -0.000000000   0.000000000

   13   13.1  2.0  2.0  -0.000000000   0.000000092  -0.000000030  -0.000000000  -0.000000000  -0.000000000   0.000000034   0.000000003
                        -0.000000000   0.000000047   0.000000046   0.000000000  -0.000000000  -0.000000000   0.000000021   0.000000001

   14   14.1  2.0  2.0  -0.000000000  -0.000000025  -0.000000084  -0.000000000   0.000000000   0.000000000  -0.000000002  -0.000000008
                        -0.000000000   0.000000047  -0.000000054  -0.000000000  -0.000000000  -0.000000000   0.000000004   0.000000038

   15   15.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000067  -0.000000000   0.000000000  -0.000000001   0.000000003   0.000000002  -0.000000000   0.000000000

   16    1.1  2.0  1.0   0.000000000   0.000000156  -0.000000096  -0.000000000  -0.000000000  -0.000000000  -0.000143118  -0.000171432
                        -0.000000000   0.000000081   0.000000148   0.000000000   0.000000000   0.000000000  -0.000087898  -0.000036702

   17    2.1  2.0  1.0  -0.000000000   0.000000966   0.000000591  -0.000000000   0.000000000   0.000000000   0.000279786  -0.000320589
                         0.000000000   0.000000500  -0.000000913   0.000000000   0.000000000  -0.000000000   0.000171834  -0.000068635

   18    3.1  2.0  1.0   0.000000000   0.000000221  -0.000000394   0.000000000  -0.000000000   0.000000000  -0.000120231   0.000047091
                         0.000000000  -0.000000426  -0.000000255  -0.000000000   0.000000000   0.000000000   0.000195765  -0.000219960

   19    4.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000178   0.000000000   0.000000000   0.000000244   0.000029776  -0.000002621   0.000000000  -0.000000000

   20    5.1  2.0  1.0  -0.000000174  -0.000000000   0.000000000  -0.000000248  -0.000025630  -0.000002312   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.000000000   0.102890603   0.062649057   0.000000000   0.000000000   0.000000000   0.191017892  -0.223596017
                         0.000000000   0.053202063  -0.096740139  -0.000000000  -0.000000000  -0.000000000   0.117316072  -0.047869446

   22    7.1  2.0  1.0   0.000000000  -0.100270358   0.183690820  -0.000000000   0.000000000  -0.000000000  -0.010998664   0.005744414
                         0.000000000   0.193918751   0.118958445   0.000000000  -0.000000000  -0.000000000   0.017908387  -0.026831896

   23    8.1  2.0  1.0  -0.010523614  -0.000000000  -0.000000000   0.063329583  -0.380076236  -0.369963525  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000084  -0.000000008   0.000000001  -0.000000000  -0.000000000

   24    9.1  2.0  1.0   0.000000000  -0.000000000   0.000000000  -0.000000084  -0.000000008   0.000000002   0.000000000   0.000000000
                        -0.010257658  -0.000000000  -0.000000000  -0.063212897   0.382442632   0.373569174  -0.000000000  -0.000000000

   25   10.1  2.0  1.0   0.000000002   0.000000000   0.000000000  -0.000000452   0.000000002  -0.000000000  -0.000000000   0.000000000
                        -0.364804361  -0.000000000   0.000000000  -0.339100370  -0.069039452  -0.107087790   0.000000000  -0.000000000

   26   11.1  2.0  1.0   0.365171166   0.000000000   0.000000000  -0.338666823  -0.067259344  -0.107678974   0.000000000  -0.000000000
                         0.000000002  -0.000000000  -0.000000000   0.000000451  -0.000000002   0.000000000  -0.000000000  -0.000000000

   27   12.1  2.0  1.0  -0.000000000   0.198038645   0.361859902   0.000000000  -0.000000000   0.000000000   0.071014197   0.029671151
                         0.000000000  -0.382999498   0.234340513   0.000000000  -0.000000000  -0.000000000  -0.115627653  -0.138592601

   28   13.1  2.0  1.0   0.000000148   0.000000000  -0.000000000  -0.000000179   0.000000029   0.000000027  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   29   14.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000143  -0.000000000  -0.000000000  -0.000000174   0.000000028   0.000000027  -0.000000000   0.000000000

   30   15.1  2.0  1.0  -0.000000000  -0.000000050  -0.000000090   0.000000000  -0.000000000  -0.000000000   0.000000016   0.000000007
                        -0.000000000   0.000000097  -0.000000058  -0.000000000  -0.000000000  -0.000000000  -0.000000026  -0.000000031

   31    1.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000062326   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   32    2.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000002557  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   33    3.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000039   0.000000000   0.000000000   0.000000007  -0.000000000  -0.000003006   0.000000000  -0.000000000

   34    4.1  2.0  0.0  -0.000000000   0.000000000  -0.000000612   0.000000000   0.000000000  -0.000000000  -0.000122596  -0.000000000
                         0.000000000   0.000000000  -0.000000396  -0.000000000   0.000000000   0.000000000   0.000199615  -0.000000000

   35    5.1  2.0  0.0  -0.000000000   0.000000659   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000239311
                         0.000000000   0.000000341   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000051234

   36    6.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.003705128  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   37    7.1  2.0  0.0  -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.547838746   0.000000000  -0.000000000   0.000309972   0.000000000   0.004394637  -0.000000000   0.000000000

   38    8.1  2.0  0.0  -0.000000000  -0.115856296  -0.000000053  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.605857076
                        -0.000000000  -0.059906216  -0.000000033   0.000000000  -0.000000000  -0.000000000   0.000000002   0.129707332

   39    9.1  2.0  0.0   0.000000000  -0.000000055   0.108806856   0.000000000  -0.000000000   0.000000000  -0.326301067  -0.000000002
                        -0.000000000  -0.000000029   0.070463406   0.000000000  -0.000000000   0.000000000   0.531294140  -0.000000001

   40   10.1  2.0  0.0   0.000000000  -0.000000268   0.533651128   0.000000000   0.000000000  -0.000000000   0.020337401   0.000000000
                         0.000000000  -0.000000144   0.345592894   0.000000000   0.000000000  -0.000000000  -0.033114026   0.000000000

   41   11.1  2.0  0.0   0.000000000   0.564642027   0.000000258   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.030986480
                        -0.000000000   0.291961409   0.000000161   0.000000000  -0.000000000  -0.000000000   0.000000000   0.006633864

   42   12.1  2.0  0.0  -0.000000000  -0.000000000  -0.000000000   0.000000914  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000393672  -0.000000000  -0.000000000   0.686190198   0.000000000   0.000018385   0.000000000   0.000000000

   43   13.1  2.0  0.0   0.000000000   0.000000255   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000044
                        -0.000000000   0.000000132   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000009

   44   14.1  2.0  0.0   0.000000000  -0.000000000   0.000000233   0.000000000   0.000000000   0.000000000   0.000000022   0.000000000
                        -0.000000000  -0.000000000   0.000000151   0.000000000  -0.000000000   0.000000000  -0.000000036   0.000000000

   45   15.1  2.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000003  -0.000000000   0.000000000  -0.000000174   0.000000000   0.000000103  -0.000000000  -0.000000000

   46    1.1  2.0 -1.0   0.000000000  -0.000000156  -0.000000096  -0.000000000   0.000000000  -0.000000000  -0.000143118   0.000171432
                         0.000000000  -0.000000081   0.000000148  -0.000000000   0.000000000  -0.000000000  -0.000087898   0.000036702

   47    2.1  2.0 -1.0  -0.000000000  -0.000000966   0.000000591  -0.000000000  -0.000000000   0.000000000   0.000279786   0.000320589
                        -0.000000000  -0.000000500  -0.000000913  -0.000000000   0.000000000  -0.000000000   0.000171834   0.000068635

   48    3.1  2.0 -1.0   0.000000000   0.000000221   0.000000394   0.000000000   0.000000000  -0.000000000   0.000120231   0.000047091
                        -0.000000000  -0.000000426   0.000000255   0.000000000   0.000000000  -0.000000000  -0.000195765  -0.000219960

   49    4.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000178   0.000000000   0.000000000  -0.000000244   0.000029776   0.000002621  -0.000000000  -0.000000000

   50    5.1  2.0 -1.0  -0.000000174   0.000000000  -0.000000000  -0.000000248   0.000025630  -0.000002312   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   51    6.1  2.0 -1.0  -0.000000000  -0.102890655   0.062648962   0.000000000  -0.000000000   0.000000000   0.191017891   0.223596016
                        -0.000000000  -0.053201966  -0.096740197   0.000000000  -0.000000000  -0.000000000   0.117316073   0.047869447

   52    7.1  2.0 -1.0   0.000000000  -0.100270174  -0.183690931  -0.000000000  -0.000000000   0.000000000   0.010998664   0.005744414
                        -0.000000000   0.193918850  -0.118958268  -0.000000000  -0.000000000   0.000000000  -0.017908387  -0.026831896

   53    8.1  2.0 -1.0  -0.010523614   0.000000000  -0.000000000   0.063329583   0.380076232  -0.369963529  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000084   0.000000008   0.000000002   0.000000000  -0.000000000

   54    9.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000084  -0.000000008  -0.000000002  -0.000000000  -0.000000000
                         0.010257658  -0.000000000  -0.000000000   0.063212897   0.382442628  -0.373569178   0.000000000  -0.000000000

   55   10.1  2.0 -1.0  -0.000000002   0.000000000  -0.000000000   0.000000452   0.000000001   0.000000001  -0.000000000   0.000000000
                         0.364804361  -0.000000000  -0.000000000   0.339100370  -0.069039451   0.107087790   0.000000000  -0.000000000

   56   11.1  2.0 -1.0   0.365171166   0.000000000   0.000000000  -0.338666823   0.067259343  -0.107678975  -0.000000000   0.000000000
                         0.000000002  -0.000000000  -0.000000000   0.000000451   0.000000001   0.000000001   0.000000000   0.000000000

   57   12.1  2.0 -1.0  -0.000000000   0.198039008  -0.361859683   0.000000000   0.000000000   0.000000000  -0.071014196   0.029671150
                        -0.000000000  -0.382999303  -0.234340864  -0.000000000  -0.000000000   0.000000000   0.115627653  -0.138592602

   58   13.1  2.0 -1.0   0.000000148   0.000000000   0.000000000  -0.000000179  -0.000000029   0.000000027  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   59   14.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000143  -0.000000000  -0.000000000   0.000000174   0.000000028  -0.000000027   0.000000000   0.000000000

   60   15.1  2.0 -1.0  -0.000000000  -0.000000050   0.000000090   0.000000000   0.000000000  -0.000000000  -0.000000016   0.000000007
                         0.000000000   0.000000097   0.000000058   0.000000000  -0.000000000   0.000000000   0.000000026  -0.000000031

   61    1.1  2.0 -2.0   0.000000144   0.000000000   0.000000000  -0.000000002  -0.000001834  -0.000002100   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   62    2.1  2.0 -2.0   0.000000003  -0.000000000   0.000000000   0.000000620   0.000439035  -0.000433952   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   63    3.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000003  -0.000000000   0.000000000   0.000000550  -0.000425911   0.000435070  -0.000000000  -0.000000000

   64    4.1  2.0 -2.0  -0.000000000  -0.000000087  -0.000000286  -0.000000000  -0.000000000   0.000000000  -0.000171168  -0.000047352
                         0.000000000   0.000000168  -0.000000185   0.000000000  -0.000000000   0.000000000   0.000278701   0.000221177

   65    5.1  2.0 -2.0   0.000000000  -0.000000307   0.000000106  -0.000000000   0.000000000  -0.000000000  -0.000196827  -0.000319310
                        -0.000000000  -0.000000159  -0.000000163  -0.000000000  -0.000000000   0.000000000  -0.000120884  -0.000068361

   66    6.1  2.0 -2.0  -0.000073867   0.000000000  -0.000000000   0.067778073  -0.288986357   0.315932447   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000090  -0.000000006  -0.000000002  -0.000000000  -0.000000000

   67    7.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000  -0.000000199   0.000000007   0.000000002   0.000000000  -0.000000000
                         0.000048835   0.000000000   0.000000000  -0.149287577  -0.339946317   0.315876760  -0.000000000   0.000000000

   68    8.1  2.0 -2.0   0.000000000   0.013621460  -0.015349517  -0.000000000  -0.000000000   0.000000000   0.067158210   0.012965870
                        -0.000000000   0.007043280   0.023702142   0.000000000   0.000000000  -0.000000000   0.041246071   0.002775850

   69    9.1  2.0 -2.0   0.000000000   0.012706731   0.012264909  -0.000000000   0.000000000  -0.000000000   0.009017364   0.016189677
                         0.000000000  -0.024574339   0.007942749  -0.000000000   0.000000000  -0.000000000  -0.014682368  -0.075621247

   70   10.1  2.0 -2.0   0.000000000   0.040080602  -0.154633483  -0.000000000   0.000000000  -0.000000000   0.112154414   0.089910955
                        -0.000000000  -0.077514135  -0.100140816  -0.000000000   0.000000000  -0.000000000  -0.182613506  -0.419969998

   71   11.1  2.0 -2.0   0.000000000   0.163463384   0.047085247   0.000000000   0.000000000  -0.000000000  -0.363961760  -0.202566617
                        -0.000000000   0.084522625  -0.072707049   0.000000000   0.000000000   0.000000000  -0.223531754  -0.043367285

   72   12.1  2.0 -2.0   0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.288596778   0.000000000   0.000000000  -0.000161338   0.002931984   0.003472343  -0.000000000  -0.000000000

   73   13.1  2.0 -2.0   0.000000000   0.000000092   0.000000030   0.000000000  -0.000000000  -0.000000000  -0.000000034   0.000000003
                        -0.000000000   0.000000047  -0.000000046   0.000000000   0.000000000  -0.000000000  -0.000000021   0.000000001

   74   14.1  2.0 -2.0   0.000000000   0.000000025  -0.000000084   0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000008
                        -0.000000000  -0.000000047  -0.000000054   0.000000000   0.000000000  -0.000000000   0.000000004  -0.000000038

   75   15.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000067  -0.000000000  -0.000000000  -0.000000001  -0.000000003   0.000000002  -0.000000000  -0.000000000

   76    1.1  1.0  1.0  -0.000000000  -0.000000996  -0.000000604  -0.000000000   0.000000000   0.000000000   0.011770040  -0.013226256
                         0.000000000  -0.000000515   0.000000932  -0.000000000   0.000000000  -0.000000000   0.007228720  -0.002831596

   77    2.1  1.0  1.0  -0.000001960   0.000000000  -0.000000000  -0.000000692  -0.011701135  -0.012984545   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   78    3.1  1.0  1.0   0.000000000   0.000000429  -0.000001353   0.000000000   0.000000000  -0.000000000   0.010902569  -0.003511506
                        -0.000000000  -0.000000830  -0.000000876   0.000000000  -0.000000000  -0.000000000  -0.017751922   0.016402086

   79    4.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000001134  -0.000000000   0.000000000   0.000001147  -0.019022354  -0.018566302   0.000000000  -0.000000000

   80    5.1  1.0  1.0  -0.000000000   0.000000723   0.000000735  -0.000000000   0.000000000  -0.000000000  -0.001027781  -0.002650614
                        -0.000000000  -0.000001399   0.000000476   0.000000000   0.000000000  -0.000000000   0.001673468   0.012380898

   81    6.1  1.0  1.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000002163  -0.000000000  -0.000000000   0.000000882   0.009108264   0.010123896   0.000000000  -0.000000000

   82    7.1  1.0  1.0   0.000001440   0.000000000   0.000000000   0.000001271  -0.017622557  -0.016767664  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   83    1.1  1.0  0.0  -0.000003924  -0.000000000   0.000000000   0.000000012  -0.000000000  -0.000208468   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   84    2.1  1.0  0.0   0.000000000  -0.000000000   0.000001812  -0.000000000   0.000000000  -0.000000000  -0.001281405   0.000000000
                        -0.000000000   0.000000000  -0.000002797  -0.000000000  -0.000000000   0.000000000  -0.000786991  -0.000000000

   85    3.1  1.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000981296   0.000000000  -0.000000000   0.000000000

   86    4.1  1.0  0.0  -0.000000000   0.000001333   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.004857490
                        -0.000000000  -0.000002578  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.022689116

   87    5.1  1.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.002901634  -0.000000000   0.000000000  -0.000000000

   88    6.1  1.0  0.0   0.000000000   0.000001761   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000529191
                        -0.000000000  -0.000003406  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.002471829

   89    7.1  1.0  0.0   0.000000000   0.000000000  -0.000001880  -0.000000000   0.000000000  -0.000000000  -0.019700235   0.000000000
                         0.000000000  -0.000000000   0.000002902   0.000000000   0.000000000   0.000000000  -0.012099150  -0.000000000

   90    1.1  1.0 -1.0   0.000000000  -0.000000996   0.000000604   0.000000000   0.000000000  -0.000000000  -0.011770040  -0.013226256
                         0.000000000  -0.000000515  -0.000000932  -0.000000000  -0.000000000   0.000000000  -0.007228720  -0.002831596

   91    2.1  1.0 -1.0   0.000001960  -0.000000000  -0.000000000   0.000000692  -0.011701135   0.012984545  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   92    3.1  1.0 -1.0  -0.000000000  -0.000000429  -0.000001353  -0.000000000   0.000000000  -0.000000000   0.010902569   0.003511506
                        -0.000000000   0.000000830  -0.000000876   0.000000000   0.000000000  -0.000000000  -0.017751922  -0.016402086

   93    4.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000001134  -0.000000000  -0.000000000   0.000001147   0.019022353  -0.018566302   0.000000000   0.000000000

   94    5.1  1.0 -1.0   0.000000000  -0.000000723   0.000000735   0.000000000   0.000000000  -0.000000000  -0.001027781   0.002650614
                        -0.000000000   0.000001399   0.000000476   0.000000000   0.000000000  -0.000000000   0.001673468  -0.012380898

   95    6.1  1.0 -1.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000002163   0.000000000  -0.000000000   0.000000882  -0.009108264   0.010123896   0.000000000   0.000000000

   96    7.1  1.0 -1.0  -0.000001440   0.000000000   0.000000000  -0.000001271  -0.017622556   0.016767665  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  2.0  2.0  -0.000029718  -0.000283257   0.000000000  -0.000000000   0.000283420   0.000000000  -0.000000000  -0.000000894
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  2.0  2.0   0.000031664  -0.000006143  -0.000000000   0.000000000  -0.000003235  -0.000000000  -0.000000000   0.000149284
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    3    3.1  2.0  2.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000115926   0.000009442  -0.000000000  -0.000000000  -0.000003268   0.000000000   0.000000000  -0.000152606

    4    4.1  2.0  2.0  -0.000000000   0.000000000  -0.000020695  -0.000019728  -0.000000000   0.000017347   0.000084471   0.000000000
                         0.000000000   0.000000000   0.000007710  -0.000236892   0.000000000  -0.000189397   0.000260123  -0.000000000

    5    5.1  2.0  2.0  -0.000000000  -0.000000000   0.000081359  -0.000028650   0.000000000  -0.000271922   0.000180128  -0.000000000
                        -0.000000000   0.000000000   0.000218388   0.000002386   0.000000000  -0.000024905  -0.000058494  -0.000000000

    6    6.1  2.0  2.0   0.294571534  -0.029059400   0.000000000   0.000000000   0.002373360  -0.000000000  -0.000000000   0.407941616
                         0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000004

    7    7.1  2.0  2.0  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000004
                         0.234208661  -0.026735954   0.000000000   0.000000000  -0.002371221  -0.000000000  -0.000000000   0.407993332

    8    8.1  2.0  2.0  -0.000000000  -0.000000000  -0.022226027   0.198185688  -0.000000000  -0.008516480  -0.028997837   0.000000000
                        -0.000000000   0.000000000  -0.059660404  -0.016504753  -0.000000000  -0.000780019   0.009416595  -0.000000000

    9    9.1  2.0  2.0  -0.000000000   0.000000000   0.185942875   0.005419386   0.000000000  -0.002808190   0.002962020   0.000000000
                         0.000000000  -0.000000000  -0.069271601   0.065074899   0.000000000   0.030660666   0.009121362   0.000000000

   10   10.1  2.0  2.0  -0.000000000   0.000000000   0.326195504  -0.009131394   0.000000000  -0.024803227  -0.041532351  -0.000000000
                         0.000000000   0.000000000  -0.121521652  -0.109647846  -0.000000000   0.270809093  -0.127896374  -0.000000000

   11   11.1  2.0  2.0   0.000000000   0.000000000  -0.041469021  -0.351102917   0.000000000  -0.134883367   0.259629286  -0.000000000
                         0.000000000  -0.000000000  -0.111313554   0.029239587   0.000000000  -0.012353880  -0.084310560  -0.000000000

   12   12.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.048249652  -0.459953173   0.000000000  -0.000000000   0.462424839   0.000000000  -0.000000000  -0.001068720

   13   13.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000023  -0.000000028   0.000000000  -0.000000025   0.000000007  -0.000000000
                        -0.000000000   0.000000000  -0.000000062   0.000000002   0.000000000  -0.000000002  -0.000000002   0.000000000

   14   14.1  2.0  2.0   0.000000000  -0.000000000   0.000000026  -0.000000005   0.000000000  -0.000000001  -0.000000007   0.000000000
                        -0.000000000  -0.000000000  -0.000000010  -0.000000065   0.000000000   0.000000008  -0.000000023  -0.000000000

   15   15.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000004   0.000000000   0.000000000  -0.000000050  -0.000000000  -0.000000000  -0.000000002

   16    1.1  2.0  1.0  -0.000000000  -0.000000000   0.000127528   0.000360553  -0.000000000  -0.000048710  -0.000047171   0.000000000
                        -0.000000000   0.000000000   0.000342318  -0.000030027  -0.000000000  -0.000004461   0.000015318   0.000000000

   17    2.1  2.0  1.0  -0.000000000  -0.000000000   0.000007510  -0.000028055   0.000000000   0.000191323  -0.000181978   0.000000000
                        -0.000000000  -0.000000000   0.000020158   0.000002336   0.000000000   0.000017523   0.000059095   0.000000000

   18    3.1  2.0  1.0  -0.000000000  -0.000000000  -0.000218418  -0.000019729  -0.000000000  -0.000024957  -0.000084648  -0.000000000
                         0.000000000   0.000000000   0.000081370  -0.000236897   0.000000000   0.000272491  -0.000260670   0.000000000

   19    4.1  2.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000324181   0.000294714  -0.000000000   0.000000000  -0.000328244  -0.000000000  -0.000000000   0.000300627

   20    5.1  2.0  1.0  -0.000255926   0.000355910  -0.000000000   0.000000000  -0.000328239   0.000000000   0.000000000  -0.000300612
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   21    6.1  2.0  1.0  -0.000000000  -0.000000000  -0.077718924   0.217254123   0.000000000  -0.368831882   0.352818510  -0.000000000
                        -0.000000000  -0.000000000  -0.208617677  -0.018092756   0.000000000  -0.033781071  -0.114572306  -0.000000000

   22    7.1  2.0  1.0   0.000000000   0.000000000   0.295434111   0.026124065   0.000000000  -0.023535496  -0.079365001  -0.000000000
                        -0.000000000  -0.000000000  -0.110061725   0.313692434   0.000000000   0.256967617  -0.244399738   0.000000000

   23    8.1  2.0  1.0  -0.061226927   0.194352692  -0.000000000   0.000000000   0.239824245  -0.000000000  -0.000000000  -0.034800239
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   24    9.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.099570940   0.172683519  -0.000000000   0.000000000   0.234225176  -0.000000000  -0.000000000   0.036736365

   25   10.1  2.0  1.0  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001
                         0.395965419  -0.193618918   0.000000000  -0.000000000   0.030783604  -0.000000000   0.000000000   0.124224137

   26   11.1  2.0  1.0   0.427591982   0.108167683  -0.000000000   0.000000000  -0.029079672   0.000000000  -0.000000000   0.123423787
                         0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001

   27   12.1  2.0  1.0   0.000000000  -0.000000000  -0.278882123   0.024463981   0.000000000  -0.002641226   0.009077116   0.000000000
                        -0.000000000  -0.000000000   0.103895415   0.293758404  -0.000000000   0.028837700   0.027952429  -0.000000000

   28   13.1  2.0  1.0   0.000000033   0.000000074  -0.000000000   0.000000000  -0.000000018  -0.000000000  -0.000000000  -0.000000047
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   29   14.1  2.0  1.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000018  -0.000000077  -0.000000000  -0.000000000   0.000000017  -0.000000000  -0.000000000  -0.000000044

   30   15.1  2.0  1.0  -0.000000000  -0.000000000   0.000000034  -0.000000003  -0.000000000   0.000000003  -0.000000009  -0.000000000
                        -0.000000000  -0.000000000  -0.000000013  -0.000000038   0.000000000  -0.000000028  -0.000000029  -0.000000000

   31    1.1  2.0  0.0  -0.000616443   0.000065027  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   32    2.1  2.0  0.0   0.000042060   0.000401319  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   33    3.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000400895   0.000000000  -0.000000000  -0.000001240

   34    4.1  2.0  0.0  -0.000000000   0.000000000   0.000484162  -0.000000000  -0.000000000   0.000005956  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000180371   0.000000000   0.000000000  -0.000065033   0.000000000   0.000000000

   35    5.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000510006  -0.000000000  -0.000000000  -0.000063054  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000042473   0.000000000   0.000000000   0.000020476   0.000000000

   36    6.1  2.0  0.0   0.061022717   0.581730763  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   37    7.1  2.0  0.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.584951685   0.000000000   0.000000000   0.000001340

   38    8.1  2.0  0.0   0.000000000   0.000000000   0.000000002   0.196512044   0.000000000   0.000000002   0.597095980  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.016365374  -0.000000000  -0.000000003  -0.193897606  -0.000000000

   39    9.1  2.0  0.0   0.000000000   0.000000000  -0.173038021   0.000000002  -0.000000000  -0.057273104   0.000000003  -0.000000000
                        -0.000000000  -0.000000000   0.064463997  -0.000000001   0.000000000   0.625324992  -0.000000002   0.000000000

   40   10.1  2.0  0.0  -0.000000000   0.000000000   0.339994187  -0.000000004  -0.000000000   0.008266206  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.126662246   0.000000002   0.000000000  -0.090252926   0.000000000  -0.000000000

   41   11.1  2.0  0.0  -0.000000000  -0.000000000   0.000000004   0.362358799   0.000000000   0.000000000   0.085119955  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.030176966  -0.000000000  -0.000000000  -0.027641378   0.000000000

   42   12.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000005
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000002012  -0.000000000  -0.000000000   0.515914694

   43   13.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000043   0.000000000   0.000000000  -0.000000051   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000004  -0.000000000  -0.000000000   0.000000016  -0.000000000

   44   14.1  2.0  0.0   0.000000000  -0.000000000  -0.000000039   0.000000000   0.000000000  -0.000000005   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000015  -0.000000000   0.000000000   0.000000051  -0.000000000  -0.000000000

   45   15.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002   0.000000000  -0.000000000   0.000000136

   46    1.1  2.0 -1.0   0.000000000   0.000000000   0.000127528  -0.000360553  -0.000000000  -0.000048710   0.000047171   0.000000000
                         0.000000000   0.000000000   0.000342318   0.000030027   0.000000000  -0.000004461  -0.000015318  -0.000000000

   47    2.1  2.0 -1.0   0.000000000   0.000000000   0.000007510   0.000028055   0.000000000   0.000191323   0.000181978   0.000000000
                        -0.000000000  -0.000000000   0.000020158  -0.000002336  -0.000000000   0.000017523  -0.000059095  -0.000000000

   48    3.1  2.0 -1.0  -0.000000000   0.000000000   0.000218418  -0.000019729  -0.000000000   0.000024957  -0.000084648  -0.000000000
                         0.000000000   0.000000000  -0.000081370  -0.000236897  -0.000000000  -0.000272491  -0.000260670   0.000000000

   49    4.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000324181   0.000294714  -0.000000000   0.000000000   0.000328244   0.000000000   0.000000000  -0.000300627

   50    5.1  2.0 -1.0   0.000255926  -0.000355910   0.000000000  -0.000000000  -0.000328239   0.000000000   0.000000000  -0.000300612
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   51    6.1  2.0 -1.0   0.000000000   0.000000000  -0.077718930  -0.217254121   0.000000000  -0.368831884  -0.352818507   0.000000000
                         0.000000000  -0.000000000  -0.208617677   0.018092761  -0.000000000  -0.033781067   0.114572309   0.000000000

   52    7.1  2.0 -1.0   0.000000000  -0.000000000  -0.295434111   0.026124072   0.000000000   0.023535494  -0.079365004  -0.000000000
                        -0.000000000  -0.000000000   0.110061732   0.313692431  -0.000000000  -0.256967619  -0.244399736  -0.000000000

   53    8.1  2.0 -1.0   0.061226927  -0.194352692   0.000000000  -0.000000000   0.239824245  -0.000000000   0.000000000  -0.034800239
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   54    9.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.099570940   0.172683519  -0.000000000   0.000000000  -0.234225176   0.000000000  -0.000000000  -0.036736365

   55   10.1  2.0 -1.0  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001
                         0.395965419  -0.193618918   0.000000000  -0.000000000  -0.030783604   0.000000000   0.000000000  -0.124224137

   56   11.1  2.0 -1.0  -0.427591982  -0.108167683   0.000000000  -0.000000000  -0.029079672   0.000000000   0.000000000   0.123423787
                        -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001

   57   12.1  2.0 -1.0   0.000000000   0.000000000   0.278882123   0.024463974   0.000000000   0.002641226   0.009077115   0.000000000
                        -0.000000000  -0.000000000  -0.103895408   0.293758406   0.000000000  -0.028837699   0.027952429   0.000000000

   58   13.1  2.0 -1.0  -0.000000033  -0.000000074   0.000000000  -0.000000000  -0.000000018   0.000000000  -0.000000000  -0.000000047
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   59   14.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000018  -0.000000077  -0.000000000   0.000000000  -0.000000017   0.000000000  -0.000000000   0.000000044

   60   15.1  2.0 -1.0   0.000000000   0.000000000  -0.000000034  -0.000000003  -0.000000000  -0.000000003  -0.000000009  -0.000000000
                         0.000000000  -0.000000000   0.000000013  -0.000000038  -0.000000000   0.000000028  -0.000000029   0.000000000

   61    1.1  2.0 -2.0  -0.000029718  -0.000283257   0.000000000  -0.000000000  -0.000283420  -0.000000000  -0.000000000   0.000000894
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   62    2.1  2.0 -2.0   0.000031664  -0.000006143  -0.000000000   0.000000000   0.000003235   0.000000000   0.000000000  -0.000149284
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   63    3.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000115926  -0.000009442   0.000000000   0.000000000  -0.000003268   0.000000000   0.000000000  -0.000152606

   64    4.1  2.0 -2.0   0.000000000   0.000000000  -0.000020695   0.000019728   0.000000000   0.000017347  -0.000084471  -0.000000000
                        -0.000000000  -0.000000000   0.000007710   0.000236892   0.000000000  -0.000189397  -0.000260123  -0.000000000

   65    5.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000081359  -0.000028650  -0.000000000   0.000271922   0.000180128  -0.000000000
                         0.000000000  -0.000000000  -0.000218388   0.000002386   0.000000000   0.000024905  -0.000058494  -0.000000000

   66    6.1  2.0 -2.0   0.294571534  -0.029059400   0.000000000   0.000000000  -0.002373360   0.000000000   0.000000000  -0.407941616
                         0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000004

   67    7.1  2.0 -2.0   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000004
                        -0.234208661   0.026735954  -0.000000000  -0.000000000  -0.002371221  -0.000000000  -0.000000000   0.407993332

   68    8.1  2.0 -2.0  -0.000000000  -0.000000000   0.022226032   0.198185687   0.000000000   0.008516480  -0.028997837  -0.000000000
                        -0.000000000   0.000000000   0.059660404  -0.016504755  -0.000000000   0.000780019   0.009416595  -0.000000000

   69    9.1  2.0 -2.0  -0.000000000   0.000000000   0.185942875  -0.005419390  -0.000000000  -0.002808190  -0.002962020  -0.000000000
                         0.000000000   0.000000000  -0.069271603  -0.065074897   0.000000000   0.030660666  -0.009121362   0.000000000

   70   10.1  2.0 -2.0  -0.000000000   0.000000000   0.326195504   0.009131386  -0.000000000  -0.024803226   0.041532354  -0.000000000
                        -0.000000000  -0.000000000  -0.121521650   0.109647850  -0.000000000   0.270809094   0.127896372  -0.000000000

   71   11.1  2.0 -2.0   0.000000000   0.000000000   0.041469013  -0.351102919  -0.000000000   0.134883369   0.259629285   0.000000000
                         0.000000000   0.000000000   0.111313554   0.029239584   0.000000000   0.012353878  -0.084310561  -0.000000000

   72   12.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.048249652   0.459953173  -0.000000000   0.000000000   0.462424839   0.000000000   0.000000000  -0.001068720

   73   13.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000023  -0.000000028  -0.000000000   0.000000025   0.000000007   0.000000000
                         0.000000000  -0.000000000   0.000000062   0.000000002   0.000000000   0.000000002  -0.000000002   0.000000000

   74   14.1  2.0 -2.0   0.000000000  -0.000000000   0.000000026   0.000000005  -0.000000000  -0.000000001   0.000000007  -0.000000000
                         0.000000000   0.000000000  -0.000000010   0.000000065   0.000000000   0.000000008   0.000000023   0.000000000

   75   15.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000004  -0.000000000  -0.000000000  -0.000000050  -0.000000000  -0.000000000  -0.000000002

   76    1.1  1.0  1.0   0.000000000   0.000000000   0.004858805  -0.014147732   0.000000000  -0.006874319   0.006516946  -0.000000000
                         0.000000000   0.000000000   0.013042287   0.001178212   0.000000000  -0.000629614  -0.002116276  -0.000000000

   77    2.1  1.0  1.0   0.013159999   0.008621656  -0.000000000   0.000000000  -0.014642451  -0.000000000   0.000000000   0.016030031
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   78    3.1  1.0  1.0   0.000000000  -0.000000000  -0.002878747   0.000491078   0.000000000  -0.001012031  -0.004187005  -0.000000000
                         0.000000000   0.000000000   0.001072455   0.005896761  -0.000000000   0.011049657  -0.012893631   0.000000000

   79    4.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.003716729   0.011569286  -0.000000000   0.000000000  -0.003849861  -0.000000000   0.000000000  -0.009716126

   80    5.1  1.0  1.0  -0.000000000   0.000000000   0.015034322  -0.001253161   0.000000000  -0.000707803   0.000321835   0.000000000
                         0.000000000   0.000000000  -0.005600922  -0.015047701   0.000000000   0.007728002   0.000991071  -0.000000000

   81    6.1  1.0  1.0   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.011780505   0.012872531  -0.000000000   0.000000000  -0.015578025   0.000000000   0.000000000  -0.017641984

   82    7.1  1.0  1.0  -0.008049838  -0.011711934   0.000000000  -0.000000000   0.006367924   0.000000000   0.000000000  -0.012305824
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   83    1.1  1.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.027734173   0.000000000  -0.000000000  -0.000060902
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   84    2.1  1.0  0.0   0.000000000   0.000000000  -0.009684070   0.000000000   0.000000000  -0.022680046   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.025994545   0.000000000   0.000000000  -0.002077250   0.000000000  -0.000000000

   85    3.1  1.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.011203330  -0.025703754   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   86    4.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000454581   0.000000000   0.000000000   0.008801024   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.005458516   0.000000000   0.000000000   0.027102223  -0.000000000

   87    5.1  1.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.029787946  -0.010545964   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   88    6.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.002398030  -0.000000000  -0.000000000  -0.005798624  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.028795046  -0.000000000  -0.000000000  -0.017856512   0.000000000

   89    7.1  1.0  0.0   0.000000000  -0.000000000   0.003550810  -0.000000000  -0.000000000  -0.025337992   0.000000000  -0.000000000
                         0.000000000   0.000000000   0.009531291  -0.000000000  -0.000000000  -0.002320690   0.000000000  -0.000000000

   90    1.1  1.0 -1.0   0.000000000   0.000000000  -0.004858805  -0.014147732  -0.000000000   0.006874319   0.006516946   0.000000000
                         0.000000000  -0.000000000  -0.013042287   0.001178213   0.000000000   0.000629614  -0.002116276   0.000000000

   91    2.1  1.0 -1.0   0.013159999   0.008621656  -0.000000000   0.000000000   0.014642451   0.000000000   0.000000000  -0.016030031
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   92    3.1  1.0 -1.0  -0.000000000  -0.000000000  -0.002878747  -0.000491078  -0.000000000  -0.001012031   0.004187005   0.000000000
                        -0.000000000  -0.000000000   0.001072455  -0.005896761  -0.000000000   0.011049657   0.012893631   0.000000000

   93    4.1  1.0 -1.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.003716729  -0.011569286   0.000000000  -0.000000000  -0.003849861  -0.000000000   0.000000000  -0.009716126

   94    5.1  1.0 -1.0  -0.000000000   0.000000000   0.015034322   0.001253161  -0.000000000  -0.000707803  -0.000321835  -0.000000000
                        -0.000000000  -0.000000000  -0.005600922   0.015047702   0.000000000   0.007728002  -0.000991071  -0.000000000

   95    6.1  1.0 -1.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.011780505  -0.012872531   0.000000000  -0.000000000  -0.015578025   0.000000000  -0.000000000  -0.017641984

   96    7.1  1.0 -1.0  -0.008049838  -0.011711934   0.000000000  -0.000000000  -0.006367924  -0.000000000  -0.000000000   0.012305824
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  2.0  2.0  -0.000000000   0.000000000   0.000337653   0.000335973   0.000009426   0.000159133  -0.000158061   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  2.0  2.0  -0.000000000   0.000000000   0.000000417   0.000000026   0.000155514  -0.000009207  -0.000000012  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  2.0  2.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000394  -0.000000003  -0.000160028   0.000009490   0.000000004   0.000000000

    4    4.1  2.0  2.0   0.000122590   0.000055106   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000035685
                        -0.000028125   0.000226188  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000134346

    5    5.1  2.0  2.0   0.000052202  -0.000123109   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000131382
                         0.000227540   0.000029993   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000034898

    6    6.1  2.0  2.0  -0.000000000   0.000000000   0.001066660  -0.000000019   0.421608700  -0.024993620   0.000000109  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    7    7.1  2.0  2.0  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.001069398   0.000000718   0.421652914  -0.024995095  -0.000000306  -0.000000000

    8    8.1  2.0  2.0  -0.026449089  -0.280921352   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.215297598
                        -0.115286512   0.068440234  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.057187240

    9    9.1  2.0  2.0   0.281680601  -0.028000187   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.090154923
                        -0.064623298  -0.114930198   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.339413788

   10   10.1  2.0  2.0   0.277976063   0.072639358   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.035791825
                        -0.063773397   0.298157191  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.134748466

   11   11.1  2.0  2.0  -0.068423637   0.276539088  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.295003993
                        -0.298245572  -0.067372588  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.078358818

   12   12.1  2.0  2.0   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.407986391   0.407948859   0.011184618   0.188694348  -0.189007908   0.000000000

   13   13.1  2.0  2.0   0.000000004  -0.000000051   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000084
                         0.000000017   0.000000012  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000022

   14   14.1  2.0  2.0  -0.000000047  -0.000000004  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000019
                         0.000000011  -0.000000015  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000072

   15   15.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000048  -0.000000024  -0.000000000   0.000000054   0.000000016  -0.000000000

   16    1.1  2.0  1.0   0.000046357  -0.000201550   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000076616
                         0.000202062   0.000049103   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000020351

   17    2.1  2.0  1.0  -0.000052228  -0.000226312   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000132999
                        -0.000227650   0.000055136  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000035327

   18    3.1  2.0  1.0  -0.000122213   0.000029902  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000035125
                         0.000028038   0.000122735  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000132238

   19    4.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000228   0.000000641   0.000086433   0.000130103  -0.000138483   0.000000000

   20    5.1  2.0  1.0   0.000000000  -0.000000000  -0.000001799   0.000000645  -0.000070449   0.000139393  -0.000138483   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.037923792  -0.166006439   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000119367
                        -0.165302554   0.040443774  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000031706

   22    7.1  2.0  1.0   0.308719019  -0.074765399   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000032354
                        -0.070826467  -0.306883761   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000121806

   23    8.1  2.0  1.0   0.000000000  -0.000000000  -0.379253194   0.240481964   0.053271905  -0.354935766  -0.222635513   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   24    9.1  2.0  1.0   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.379005972   0.240604879  -0.094732558  -0.346106960  -0.222750353   0.000000000

   25   10.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.150166314  -0.329378639  -0.264538386  -0.124078784   0.305158982  -0.000000000

   26   11.1  2.0  1.0  -0.000000000   0.000000000   0.150668996   0.329470489  -0.248005297   0.154329382  -0.305244350   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   27   12.1  2.0  1.0   0.122333686   0.029733318   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.096986921
                        -0.028065851   0.122044065  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.365134761

   28   13.1  2.0  1.0   0.000000000  -0.000000000  -0.000000116  -0.000000122   0.000000102  -0.000000046   0.000000114  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   29   14.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000113   0.000000119   0.000000104   0.000000032  -0.000000111  -0.000000000

   30   15.1  2.0  1.0   0.000000070   0.000000018  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000030
                        -0.000000016   0.000000073  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000113

   31    1.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000036   0.000224071  -0.000013264  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   32    2.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000476967  -0.000013539  -0.000228575  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   33    3.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000474621   0.000000000   0.000000000  -0.000000000   0.000223313  -0.000000000

   34    4.1  2.0  0.0  -0.000000000  -0.000069350   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000028881
                        -0.000000000  -0.000284654   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000108730

   35    5.1  2.0  0.0   0.000065461  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000285331  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   36    6.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000211062   0.035346672   0.596249409   0.000000000   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   37    7.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000231999   0.000000000   0.000000000  -0.000000000   0.597310258  -0.000000000

   38    8.1  2.0  0.0   0.008208546  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.035779483  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001

   39    9.1  2.0  0.0  -0.000000000  -0.008218176   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.026879553
                        -0.000000000  -0.033732514  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.101195701

   40   10.1  2.0  0.0   0.000000001   0.095308010  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.093145716
                         0.000000004   0.391203447  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.350673470

   41   11.1  2.0  0.0   0.090107877  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001
                         0.392763017  -0.000000004   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000003

   42   12.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.001348754  -0.000000000   0.000000000  -0.000000000  -0.000002912  -0.000000000

   43   13.1  2.0  0.0  -0.000000022  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000097   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   44   14.1  2.0  0.0  -0.000000000  -0.000000023   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000061
                        -0.000000000  -0.000000096  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000230

   45   15.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000003   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000

   46    1.1  2.0 -1.0  -0.000046357  -0.000201550   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000076616
                        -0.000202062   0.000049103  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000020351

   47    2.1  2.0 -1.0   0.000052228  -0.000226312   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000132999
                         0.000227650   0.000055136   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000035327

   48    3.1  2.0 -1.0  -0.000122213  -0.000029902  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000035125
                         0.000028038  -0.000122735   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000132238

   49    4.1  2.0 -1.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000228   0.000000641   0.000086433   0.000130103   0.000138483  -0.000000000

   50    5.1  2.0 -1.0   0.000000000  -0.000000000  -0.000001799  -0.000000645   0.000070449  -0.000139393  -0.000138483   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   51    6.1  2.0 -1.0   0.037923789  -0.166006440   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000119367
                         0.165302555   0.040443771   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000031706

   52    7.1  2.0 -1.0   0.308719021   0.074765393   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000032354
                        -0.070826461   0.306883762  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000121806

   53    8.1  2.0 -1.0   0.000000000  -0.000000000  -0.379253194  -0.240481964  -0.053271905   0.354935766  -0.222635513   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   54    9.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.379005972   0.240604879  -0.094732558  -0.346106960   0.222750353  -0.000000000

   55   10.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000   0.150166314  -0.329378639  -0.264538386  -0.124078784  -0.305158982   0.000000000

   56   11.1  2.0 -1.0  -0.000000000   0.000000000   0.150668996  -0.329470489   0.248005297  -0.154329382  -0.305244350   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   57   12.1  2.0 -1.0   0.122333685  -0.029733320   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.096986914
                        -0.028065853  -0.122044065   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.365134763

   58   13.1  2.0 -1.0   0.000000000   0.000000000  -0.000000116   0.000000122  -0.000000102   0.000000046   0.000000114   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   59   14.1  2.0 -1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000113   0.000000119   0.000000104   0.000000032   0.000000111   0.000000000

   60   15.1  2.0 -1.0   0.000000070  -0.000000018  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000030
                        -0.000000016  -0.000000073   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000113

   61    1.1  2.0 -2.0   0.000000000  -0.000000000  -0.000337653   0.000335973   0.000009426   0.000159133   0.000158061  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   62    2.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000417   0.000000026   0.000155514  -0.000009207   0.000000012  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   63    3.1  2.0 -2.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.000000394   0.000000003   0.000160028  -0.000009490   0.000000004  -0.000000000

   64    4.1  2.0 -2.0  -0.000122590   0.000055106  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000035685
                         0.000028125   0.000226188  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000134346

   65    5.1  2.0 -2.0   0.000052202   0.000123109  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000131382
                         0.000227540  -0.000029993   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000034898

   66    6.1  2.0 -2.0   0.000000000  -0.000000000  -0.001066660  -0.000000019   0.421608700  -0.024993620  -0.000000109  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   67    7.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.001069398  -0.000000718  -0.421652914   0.024995095  -0.000000306   0.000000000

   68    8.1  2.0 -2.0  -0.026449084   0.280921352  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.215297596
                        -0.115286513  -0.068440231  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.057187246

   69    9.1  2.0 -2.0  -0.281680602  -0.028000181  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.090154927
                         0.064623296  -0.114930199   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.339413786

   70   10.1  2.0 -2.0  -0.277976061   0.072639364  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.035791819
                         0.063773403   0.298157191  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.134748468

   71   11.1  2.0 -2.0  -0.068423643  -0.276539087   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.295003994
                        -0.298245570   0.067372594  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.078358816

   72   12.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.407986391  -0.407948859  -0.011184618  -0.188694348  -0.189007908   0.000000000

   73   13.1  2.0 -2.0   0.000000004   0.000000051  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000084
                         0.000000017  -0.000000012  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000022

   74   14.1  2.0 -2.0   0.000000047  -0.000000004   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000019
                        -0.000000011  -0.000000015  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000072

   75   15.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000048   0.000000024   0.000000000  -0.000000054   0.000000016   0.000000000

   76    1.1  1.0  1.0   0.003349900   0.014532381  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.009496642
                         0.014601573  -0.003540491   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.002522493

   77    2.1  1.0  1.0  -0.000000000   0.000000000  -0.004168409  -0.016475603   0.008818276   0.004330545   0.009787545  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   78    3.1  1.0  1.0  -0.014836286   0.001143055  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.002951366
                         0.003403748   0.004691811  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.011111255

   79    4.1  1.0  1.0   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.015155156   0.002533347  -0.005909343  -0.011711192  -0.009030361   0.000000000

   80    5.1  1.0  1.0   0.015774745   0.005141606   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.001214955
                        -0.003619049   0.021104355  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.004574041

   81    6.1  1.0  1.0   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.006569873  -0.016279751  -0.009222045   0.003647190   0.008543821  -0.000000000

   82    7.1  1.0  1.0   0.000000000   0.000000000   0.015896816  -0.000093413  -0.005855298   0.011815957   0.007664780  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   83    1.1  1.0  0.0  -0.000000000   0.000000000   0.023287538   0.000000000  -0.000000000   0.000000000  -0.013903351   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   84    2.1  1.0  0.0  -0.000000000  -0.004110422   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.013496461
                         0.000000000   0.001001413  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.003584923

   85    3.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.022453990   0.004150200  -0.013671628  -0.000000000  -0.000000000

   86    4.1  1.0  0.0  -0.012143575   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.002785985  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   87    5.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.006182630  -0.018170517  -0.002619474   0.000000000   0.000000000

   88    6.1  1.0  0.0  -0.005912059   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.001356347  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   89    7.1  1.0  0.0   0.000000000   0.012760068   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.010331051
                        -0.000000000  -0.003108706   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.002744129

   90    1.1  1.0 -1.0   0.003349900  -0.014532381   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.009496642
                         0.014601573   0.003540491   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.002522494

   91    2.1  1.0 -1.0   0.000000000  -0.000000000   0.004168409  -0.016475603   0.008818276   0.004330545  -0.009787545   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   92    3.1  1.0 -1.0   0.014836286   0.001143055   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.002951366
                        -0.003403748   0.004691811  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.011111255

   93    4.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.015155156  -0.002533347   0.005909343   0.011711192  -0.009030361   0.000000000

   94    5.1  1.0 -1.0  -0.015774745   0.005141606  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.001214955
                         0.003619050   0.021104354  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.004574042

   95    6.1  1.0 -1.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.006569873   0.016279751   0.009222045  -0.003647190   0.008543821  -0.000000000

   96    7.1  1.0 -1.0  -0.000000000  -0.000000000  -0.015896816  -0.000093413  -0.005855298   0.011815957  -0.007664780   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  2.0  2.0  -0.000000000   0.000000000  -0.000000000   0.000000004   0.000000000   0.000000000  -0.001929544   0.001367167
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000091609   0.000000000   0.000000000  -0.000545097   0.001386360
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000094898   0.000000000   0.000000000  -0.000545148   0.001863074

    4    4.1  2.0  2.0   0.000119745  -0.000042460  -0.000036205   0.000000000   0.000015777  -0.002263896  -0.000000000   0.000000000
                        -0.000064350  -0.000025291  -0.000026327  -0.000000000  -0.001680768   0.000032080  -0.000000000  -0.000000000

    5    5.1  2.0  2.0   0.000065802   0.000022906   0.000029068   0.000000000  -0.002266250   0.000025061  -0.000000000  -0.000000000
                         0.000122447  -0.000038455  -0.000039975   0.000000000  -0.000021273   0.001768562   0.000000000  -0.000000000

    6    6.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.267155117   0.000000000   0.000000000  -0.002436411   0.012580957
                        -0.000000000  -0.000000000  -0.000000000  -0.000000098   0.000000000   0.000000000   0.000000000  -0.000000000

    7    7.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.000000098   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.267179730  -0.000000000  -0.000000000   0.002435138  -0.001940282

    8    8.1  2.0  2.0   0.166264975  -0.148865065   0.198703840   0.000000000  -0.004263217   0.000088277  -0.000000000   0.000000000
                         0.309391894   0.249919314  -0.273260884  -0.000000000  -0.000040019   0.006229738   0.000000000  -0.000000000

    9    9.1  2.0  2.0  -0.196324769  -0.290276785   0.235322759   0.000000000   0.000061522  -0.004282395  -0.000000000   0.000000000
                         0.105503515  -0.172904096   0.171116826   0.000000000  -0.006553947   0.000060683  -0.000000000  -0.000000000

   10   10.1  2.0  2.0   0.268794559   0.008165118  -0.139144606  -0.000000000   0.000158861  -0.009945672  -0.000000000   0.000000000
                        -0.144448264   0.004863569  -0.101180118  -0.000000000  -0.016923473   0.000140933  -0.000000000  -0.000000000

   11   11.1  2.0  2.0  -0.065934718  -0.088098546   0.005664501  -0.000000000   0.008973625  -0.000236192   0.000000000   0.000000000
                        -0.122693704   0.147902579  -0.007789924  -0.000000000   0.000084235  -0.016668138  -0.000000000   0.000000000

   12   12.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000001037  -0.000000000  -0.000000000   0.019280385  -0.013661581

   13   13.1  2.0  2.0   0.000000038   0.000000039   0.000000009   0.000000000  -0.000000043   0.000000001  -0.000000000  -0.000000000
                         0.000000070  -0.000000065  -0.000000013  -0.000000000  -0.000000000   0.000000081   0.000000000  -0.000000000

   14   14.1  2.0  2.0  -0.000000073   0.000000012   0.000000059  -0.000000000  -0.000000001   0.000000054   0.000000000  -0.000000000
                         0.000000039   0.000000007   0.000000043  -0.000000000   0.000000095  -0.000000001   0.000000000  -0.000000000

   15   15.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000003   0.000000000   0.000000000   0.000000225  -0.000000160

   16    1.1  2.0  1.0  -0.000037535  -0.000041677  -0.000047904  -0.000000000  -0.001014137  -0.000012160  -0.000000000  -0.000000000
                        -0.000069847   0.000069969   0.000065878  -0.000000000  -0.000009520  -0.000858123  -0.000000000  -0.000000000

   17    2.1  2.0  1.0   0.000065134  -0.000025382   0.000029163   0.000000000  -0.001679945   0.000025049  -0.000000000  -0.000000000
                         0.000121203   0.000042612  -0.000040105  -0.000000000  -0.000015770   0.001767690   0.000000000  -0.000000000

   18    3.1  2.0  1.0   0.000120520   0.000039588  -0.000037265  -0.000000000   0.000021272  -0.002263532  -0.000000000   0.000000000
                        -0.000064767   0.000023581  -0.000027098  -0.000000000  -0.002266063   0.000032075  -0.000000000  -0.000000000

   19    4.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000047640  -0.000000000  -0.000000000   0.002229109  -0.002531653

   20    5.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.000047643  -0.000000000  -0.000000000   0.002228853  -0.000626084
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.000058312   0.136739349  -0.157143825  -0.000000000  -0.000172133  -0.000008934   0.000000000   0.000000000
                        -0.000108510  -0.229562282   0.216106850   0.000000000  -0.000001616  -0.000630459  -0.000000000   0.000000000

   22    7.1  2.0  1.0   0.000113509   0.229601206  -0.216144927  -0.000000000   0.000084399  -0.008380220  -0.000000000   0.000000000
                        -0.000060999   0.136762534  -0.157171514  -0.000000000  -0.008991031   0.000118750  -0.000000000   0.000000000

   23    8.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.093867975  -0.000000000  -0.000000000   0.007015515   0.011657400
                         0.000000000  -0.000000000  -0.000000000  -0.000000034   0.000000000   0.000000000   0.000000000  -0.000000000

   24    9.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000034   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.093743631  -0.000000000  -0.000000000   0.012747023  -0.000759017

   25   10.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000119  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.324831765  -0.000000000  -0.000000000   0.000418978   0.006071844

   26   11.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000   0.324795811   0.000000000   0.000000000  -0.002071354   0.015029108
                         0.000000000   0.000000000   0.000000000   0.000000119   0.000000000   0.000000000   0.000000000  -0.000000000

   27   12.1  2.0  1.0   0.332786825  -0.177979691  -0.167546399   0.000000000  -0.000047582  -0.004286817  -0.000000000  -0.000000000
                        -0.178837250  -0.106014059  -0.121832716  -0.000000000   0.005068844   0.000060745   0.000000000   0.000000000

   28   13.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000000203   0.000000000  -0.000000000   0.000000023  -0.000000013
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   29   14.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000196   0.000000000  -0.000000000  -0.000000044  -0.000000038

   30   15.1  2.0  1.0   0.000000105  -0.000000062  -0.000000055   0.000000000  -0.000000001  -0.000000042   0.000000000  -0.000000000
                        -0.000000056  -0.000000037  -0.000000040  -0.000000000   0.000000065   0.000000001  -0.000000000   0.000000000

   31    1.1  2.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.002020678
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   32    2.1  2.0  0.0   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.001933995
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   33    3.1  2.0  0.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000004  -0.000000000  -0.000000000   0.002729793   0.000000000

   34    4.1  2.0  0.0   0.000000000   0.000000000  -0.000092127  -0.000000000  -0.000013476   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000066991  -0.000000000   0.001435639  -0.000000000   0.000000000  -0.000000000

   35    5.1  2.0  0.0   0.000053252  -0.000058288  -0.000000000  -0.000000000   0.000000000   0.000017208  -0.000000000   0.000000000
                         0.000099093   0.000097855   0.000000000  -0.000000000   0.000000000   0.001214369   0.000000000   0.000000000

   36    6.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.017280279
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   37    7.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000002408  -0.000000000  -0.000000000   0.024391000   0.000000000

   38    8.1  2.0  0.0   0.049629633   0.058835087   0.000000003   0.000000000   0.000000000   0.000350925  -0.000000000  -0.000000000
                         0.092352620  -0.098774173  -0.000000000   0.000000000   0.000000001   0.024764947   0.000000000   0.000000000

   39    9.1  2.0  0.0   0.000000000  -0.000000003   0.092862019   0.000000000  -0.000225327   0.000000000   0.000000000  -0.000000000
                         0.000000001   0.000000001   0.067525363   0.000000000   0.024004008  -0.000000001   0.000000000   0.000000000

   40   10.1  2.0  0.0   0.000000002  -0.000000011   0.321832895   0.000000000   0.000114532  -0.000000000  -0.000000000   0.000000000
                         0.000000003   0.000000004   0.234023375   0.000000000  -0.012201062   0.000000000  -0.000000000   0.000000000

   41   11.1  2.0  0.0  -0.171735435  -0.203613902  -0.000000011  -0.000000000   0.000000000   0.000164647  -0.000000000   0.000000000
                        -0.319571518   0.341833350   0.000000001  -0.000000000   0.000000000   0.011619201   0.000000000   0.000000000

   42   12.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000186  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.507219980   0.000000000   0.000000000  -0.000000928  -0.000000000

   43   13.1  2.0  0.0   0.000000116   0.000000111   0.000000000   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000
                         0.000000216  -0.000000186  -0.000000000  -0.000000000   0.000000000   0.000000036   0.000000000   0.000000000

   44   14.1  2.0  0.0  -0.000000000   0.000000000  -0.000000170   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000124  -0.000000000  -0.000000036  -0.000000000  -0.000000000   0.000000000

   45   15.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000200  -0.000000000  -0.000000000  -0.000000018   0.000000000

   46    1.1  2.0 -1.0   0.000037535   0.000041677  -0.000047904  -0.000000000  -0.001014137   0.000012160  -0.000000000   0.000000000
                         0.000069847  -0.000069969   0.000065878   0.000000000  -0.000009520   0.000858123   0.000000000  -0.000000000

   47    2.1  2.0 -1.0  -0.000065134   0.000025382   0.000029163   0.000000000  -0.001679945  -0.000025048  -0.000000000   0.000000000
                        -0.000121203  -0.000042612  -0.000040105   0.000000000  -0.000015770  -0.001767690  -0.000000000  -0.000000000

   48    3.1  2.0 -1.0   0.000120520   0.000039588   0.000037265  -0.000000000  -0.000021272  -0.002263532  -0.000000000  -0.000000000
                        -0.000064767   0.000023581   0.000027098   0.000000000   0.002266063   0.000032075   0.000000000  -0.000000000

   49    4.1  2.0 -1.0   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000047640   0.000000000   0.000000000  -0.002229109  -0.002531653

   50    5.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000047643  -0.000000000  -0.000000000   0.002228853   0.000626084
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   51    6.1  2.0 -1.0   0.000058312  -0.136739354  -0.157143841  -0.000000000  -0.000172133   0.000008934   0.000000000  -0.000000000
                         0.000108510   0.229562268   0.216106851  -0.000000000  -0.000001616   0.000630459   0.000000000   0.000000000

   52    7.1  2.0 -1.0   0.000113509   0.229601192   0.216144929  -0.000000000  -0.000084400  -0.008380220  -0.000000000  -0.000000000
                        -0.000060999   0.136762539   0.157171529   0.000000000   0.008991031   0.000118749   0.000000000   0.000000000

   53    8.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000  -0.093867975  -0.000000000  -0.000000000   0.007015515  -0.011657400
                         0.000000000  -0.000000000  -0.000000000  -0.000000034  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   54    9.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000   0.000000034   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.093743631   0.000000000   0.000000000  -0.012747023  -0.000759017

   55   10.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000   0.000000119  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.324831765   0.000000000   0.000000000  -0.000418978   0.006071844

   56   11.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.324795811   0.000000000   0.000000000  -0.002071354  -0.015029108
                        -0.000000000   0.000000000   0.000000000   0.000000119  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   57   12.1  2.0 -1.0   0.332786829  -0.177979702   0.167546398   0.000000000   0.000047581  -0.004286817  -0.000000000   0.000000000
                        -0.178837243  -0.106014055   0.121832704   0.000000000  -0.005068844   0.000060745  -0.000000000   0.000000000

   58   13.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000  -0.000000203   0.000000000  -0.000000000   0.000000023   0.000000013
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   59   14.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000196  -0.000000000   0.000000000   0.000000044  -0.000000038

   60   15.1  2.0 -1.0   0.000000105  -0.000000062   0.000000055  -0.000000000   0.000000001  -0.000000042   0.000000000   0.000000000
                        -0.000000056  -0.000000037   0.000000040   0.000000000  -0.000000065   0.000000001   0.000000000   0.000000000

   61    1.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000000  -0.000000004  -0.000000000  -0.000000000   0.001929544   0.001367167
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   62    2.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000091609  -0.000000000  -0.000000000   0.000545097   0.001386360
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   63    3.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000094898   0.000000000   0.000000000  -0.000545148  -0.001863074

   64    4.1  2.0 -2.0  -0.000119745   0.000042460  -0.000036205  -0.000000000   0.000015778   0.002263896   0.000000000   0.000000000
                         0.000064350   0.000025291  -0.000026327  -0.000000000  -0.001680768  -0.000032080  -0.000000000   0.000000000

   65    5.1  2.0 -2.0   0.000065802   0.000022906  -0.000029068  -0.000000000   0.002266250   0.000025061   0.000000000  -0.000000000
                         0.000122447  -0.000038455   0.000039975   0.000000000   0.000021273   0.001768562   0.000000000   0.000000000

   66    6.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.267155117  -0.000000000  -0.000000000   0.002436411   0.012580957
                        -0.000000000   0.000000000   0.000000000   0.000000098   0.000000000   0.000000000   0.000000000   0.000000000

   67    7.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000098  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.267179730  -0.000000000  -0.000000000   0.002435138   0.001940282

   68    8.1  2.0 -2.0   0.166264980  -0.148865071  -0.198703856  -0.000000000   0.004263217   0.000088277   0.000000000   0.000000000
                         0.309391892   0.249919296   0.273260885  -0.000000000   0.000040019   0.006229738   0.000000000   0.000000000

   69    9.1  2.0 -2.0   0.196324766   0.290276770   0.235322760  -0.000000000   0.000061522   0.004282395   0.000000000   0.000000000
                        -0.105503521   0.172904101   0.171116845   0.000000000  -0.006553947  -0.000060682  -0.000000000   0.000000000

   70   10.1  2.0 -2.0  -0.268794560  -0.008165109  -0.139144606   0.000000000   0.000158862   0.009945672   0.000000000   0.000000000
                         0.144448261  -0.004863572  -0.101180118  -0.000000000  -0.016923473  -0.000140932  -0.000000000   0.000000000

   71   11.1  2.0 -2.0  -0.065934712  -0.088098546  -0.005664511  -0.000000000  -0.008973625  -0.000236191  -0.000000000   0.000000000
                        -0.122693707   0.147902578   0.007789924  -0.000000000  -0.000084236  -0.016668138  -0.000000000  -0.000000000

   72   12.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000001037  -0.000000000  -0.000000000   0.019280385   0.013661581

   73   13.1  2.0 -2.0   0.000000038   0.000000039  -0.000000009  -0.000000000   0.000000043   0.000000001   0.000000000  -0.000000000
                         0.000000070  -0.000000065   0.000000013  -0.000000000   0.000000000   0.000000081   0.000000000   0.000000000

   74   14.1  2.0 -2.0   0.000000073  -0.000000012   0.000000059   0.000000000  -0.000000001  -0.000000054  -0.000000000  -0.000000000
                        -0.000000039  -0.000000007   0.000000043  -0.000000000   0.000000095   0.000000001   0.000000000   0.000000000

   75   15.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000003   0.000000000   0.000000000   0.000000225   0.000000160

   76    1.1  1.0  1.0  -0.004651299  -0.000001475   0.000001702  -0.000000000  -0.462502269   0.006546633  -0.000000002  -0.000000000
                        -0.008655305   0.000002476  -0.000002340   0.000000000  -0.004341513   0.461998145   0.000000003  -0.000000000

   77    2.1  1.0  1.0   0.000000000   0.000000000  -0.000000000   0.000004785  -0.000000002  -0.000000003   0.397109738  -0.448919203
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   78    3.1  1.0  1.0   0.006565412   0.000000381   0.000000577  -0.000000000  -0.002718650   0.382517501   0.000000003  -0.000000000
                        -0.003528205   0.000000227   0.000000420  -0.000000000   0.289618705  -0.005420368   0.000000001   0.000000000

   79    4.1  1.0  1.0  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000001814  -0.000000001  -0.000000001   0.172053737  -0.343412386

   80    5.1  1.0  1.0   0.008764989  -0.000001825  -0.000001688   0.000000000  -0.002250445  -0.030035847  -0.000000000  -0.000000000
                        -0.004710242  -0.000001087  -0.000001227  -0.000000000   0.239739325   0.000425606   0.000000001   0.000000000

   81    6.1  1.0  1.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000005097  -0.000000001  -0.000000002   0.315622688   0.074280048

   82    7.1  1.0  1.0   0.000000000   0.000000000  -0.000000000  -0.000002523   0.000000000   0.000000000  -0.072689268   0.085472647
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000001

   83    1.1  1.0  0.0  -0.000000000  -0.000000000  -0.000000000  -0.000000016  -0.000000003  -0.000000004   0.643249170   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   84    2.1  1.0  0.0   0.000000000   0.000000000   0.000005057  -0.000000000   0.494834953  -0.000000018   0.000000002  -0.000000000
                        -0.000000000   0.000000000  -0.000006954   0.000000000   0.004645038  -0.000000001  -0.000000000   0.000000000

   85    3.1  1.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.533551675

   86    4.1  1.0  0.0  -0.007489659   0.000002125   0.000000000   0.000000000   0.000000011   0.306379823   0.000000002  -0.000000000
                         0.004024889   0.000001266   0.000000000   0.000000000  -0.000000001  -0.004341470   0.000000000   0.000000000

   87    5.1  1.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.221190019

   88    6.1  1.0  0.0  -0.013559873   0.000007771   0.000000000  -0.000000000  -0.000000016  -0.427518949  -0.000000003  -0.000000000
                         0.007286978   0.000004629   0.000000000   0.000000000   0.000000001   0.006058038  -0.000000000   0.000000000

   89    7.1  1.0  0.0  -0.000000000  -0.000000000  -0.000002225   0.000000000   0.206628727  -0.000000007   0.000000001   0.000000000
                         0.000000000  -0.000000000   0.000003060  -0.000000000   0.001939633  -0.000000000  -0.000000000   0.000000000

   90    1.1  1.0 -1.0  -0.004651299  -0.000001475  -0.000001702   0.000000000   0.462502270   0.006546599   0.000000002  -0.000000000
                        -0.008655305   0.000002476   0.000002340   0.000000000   0.004341547   0.461998143   0.000000003   0.000000000

   91    2.1  1.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000004785   0.000000002   0.000000003  -0.397109738  -0.448919203
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   92    3.1  1.0 -1.0  -0.006565412  -0.000000381   0.000000577   0.000000000  -0.002718678  -0.382517500  -0.000000003  -0.000000000
                         0.003528205  -0.000000227   0.000000420  -0.000000000   0.289618706   0.005420347   0.000000001  -0.000000000

   93    4.1  1.0 -1.0   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001
                        -0.000000000   0.000000000  -0.000000000  -0.000001814  -0.000000001  -0.000000001   0.172053737   0.343412386

   94    5.1  1.0 -1.0  -0.008764989   0.000001825  -0.000001688  -0.000000000  -0.002250443   0.030035848   0.000000000  -0.000000000
                         0.004710242   0.000001087  -0.000001227  -0.000000000   0.239739325  -0.000425624   0.000000001  -0.000000000

   95    6.1  1.0 -1.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000005097  -0.000000001  -0.000000002   0.315622688  -0.074280048

   96    7.1  1.0 -1.0  -0.000000000  -0.000000000  -0.000000000   0.000002523  -0.000000000  -0.000000000   0.072689268   0.085472647
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000001


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  2.0  2.0  -0.000000000   0.001404943   0.000356940  -0.000000000  -0.000091406   0.000000000  -0.001695601   0.001598350
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  2.0  2.0   0.000000000  -0.001191152  -0.002947125   0.000000000   0.002428836   0.000000000   0.000000016   0.000253812
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.001702946  -0.002947862   0.000000000   0.001694861   0.000000000   0.000000050  -0.000253505

    4    4.1  2.0  2.0   0.001475124   0.000000000  -0.000000000   0.000049878   0.000000000   0.000069232   0.000000000  -0.000000000
                         0.000369548   0.000000000  -0.000000000   0.000094035   0.000000000   0.000598393   0.000000000  -0.000000000

    5    5.1  2.0  2.0   0.000007096  -0.000000000   0.000000000  -0.001252140  -0.000000000  -0.001189054  -0.000000000  -0.000000000
                        -0.000028327   0.000000000   0.000000000   0.000664160  -0.000000000   0.000137569  -0.000000000   0.000000000

    6    6.1  2.0  2.0   0.000000000  -0.012177949  -0.013173255   0.000000000   0.001013134  -0.000000000  -0.000000497  -0.005507625
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    7    7.1  2.0  2.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000756249   0.013170215   0.000000000  -0.017413763  -0.000000000  -0.000001200  -0.005507743

    8    8.1  2.0  2.0   0.000127578   0.000000000   0.000000000   0.005044181   0.000000000  -0.004769663  -0.000000000  -0.000000001
                        -0.000509254   0.000000000  -0.000000000  -0.002675532  -0.000000000   0.000551830  -0.000000000  -0.000000000

    9    9.1  2.0  2.0  -0.005166059  -0.000000000  -0.000000000  -0.000123225   0.000000000  -0.001340346   0.000000000   0.000000000
                        -0.001294201   0.000000000   0.000000000  -0.000232317   0.000000000  -0.011585084  -0.000000000  -0.000000000

   10   10.1  2.0  2.0  -0.003619704  -0.000000000  -0.000000000  -0.007473639   0.000000000  -0.001335932   0.000000000  -0.000000000
                        -0.000906808  -0.000000000   0.000000000  -0.014090054  -0.000000000  -0.011546939  -0.000000000   0.000000000

   11   11.1  2.0  2.0  -0.004013748  -0.000000000   0.000000000  -0.004183417  -0.000000000  -0.012051599  -0.000000000   0.000000001
                         0.016021665   0.000000000  -0.000000000   0.002218966   0.000000000   0.001394319   0.000000000  -0.000000000

   12   12.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.014037317  -0.003564542   0.000000000   0.000911657  -0.000000000   0.016474854  -0.015529920

   13   13.1  2.0  2.0   0.000000015   0.000000000   0.000000000   0.000000040  -0.000000000   0.000000039   0.000000000  -0.000000000
                        -0.000000061  -0.000000000  -0.000000000  -0.000000021   0.000000000  -0.000000005  -0.000000000  -0.000000000

   14   14.1  2.0  2.0   0.000000042   0.000000000   0.000000000   0.000000032  -0.000000000   0.000000042  -0.000000000   0.000000000
                         0.000000011   0.000000000   0.000000000   0.000000060   0.000000000   0.000000359  -0.000000000   0.000000000

   15   15.1  2.0  2.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000168  -0.000000052  -0.000000000   0.000000023  -0.000000000   0.000000623  -0.000000587

   16    1.1  2.0  1.0  -0.000627797  -0.000000000   0.000000000  -0.002331521  -0.000000000  -0.001032288  -0.000000000   0.000000000
                         0.002505974   0.000000000   0.000000000   0.001236684  -0.000000000   0.000119431   0.000000000  -0.000000000

   17    2.1  2.0  1.0   0.000369560  -0.000000000  -0.000000000  -0.001252695  -0.000000000   0.001189290   0.000000000   0.000000000
                        -0.001475169  -0.000000000   0.000000000   0.000664454  -0.000000000  -0.000137596   0.000000000  -0.000000000

   18    3.1  2.0  1.0   0.000027967  -0.000000000  -0.000000000   0.000049950   0.000000000  -0.000069256  -0.000000000   0.000000000
                         0.000007006   0.000000000   0.000000000   0.000094170   0.000000000  -0.000598601  -0.000000000   0.000000000

   19    4.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000599752  -0.000411762   0.000000000   0.001573615   0.000000000   0.000000354   0.000507207

   20    5.1  2.0  1.0   0.000000000  -0.002644984  -0.000412607   0.000000000  -0.001362739  -0.000000000   0.000000278  -0.000506966
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.003255297   0.000000000   0.000000000   0.011820797   0.000000000  -0.006501400  -0.000000000   0.000000000
                         0.012994159   0.000000000  -0.000000000  -0.006269980   0.000000000   0.000752185   0.000000000  -0.000000000

   22    7.1  2.0  1.0  -0.009632758  -0.000000000   0.000000000   0.004897507   0.000000000  -0.001494057   0.000000000  -0.000000000
                        -0.002413199   0.000000000   0.000000000   0.009233272   0.000000000  -0.012913666  -0.000000000  -0.000000001

   23    8.1  2.0  1.0  -0.000000000   0.000498836  -0.017325529  -0.000000000   0.014077283  -0.000000000   0.009709934   0.014912341
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   24    9.1  2.0  1.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.010709091   0.013671870  -0.000000000  -0.014801651  -0.000000000   0.009714353   0.013943519

   25   10.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.015471476  -0.004705193   0.000000000  -0.009029633   0.000000000  -0.013303833   0.004059144

   26   11.1  2.0  1.0   0.000000000  -0.006271133  -0.004250195   0.000000000  -0.009623051  -0.000000000   0.013308810  -0.007400443
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   27   12.1  2.0  1.0   0.012519724   0.000000000   0.000000000   0.006179149  -0.000000000  -0.000579685  -0.000000000   0.000000000
                         0.003136442   0.000000000  -0.000000000   0.011649552   0.000000000  -0.005010426  -0.000000000   0.000000000

   28   13.1  2.0  1.0   0.000000000   0.000000045  -0.000000040   0.000000000   0.000000092  -0.000000000   0.000000366  -0.000000162
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   29   14.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000022  -0.000000032   0.000000000   0.000000102   0.000000000  -0.000000365   0.000000385

   30   15.1  2.0  1.0   0.000000155   0.000000000  -0.000000000   0.000000070   0.000000000   0.000000048  -0.000000000   0.000000000
                         0.000000039   0.000000000   0.000000000   0.000000132  -0.000000000   0.000000419   0.000000000  -0.000000000

   31    1.1  2.0  0.0   0.000000000  -0.002168518  -0.000000000   0.000000000  -0.003114559  -0.000000000   0.000000253  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   32    2.1  2.0  0.0   0.000000000  -0.001987653  -0.000000000   0.000000000   0.000128974   0.000000000  -0.002397778   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   33    3.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000504888   0.000000000   0.000000000   0.000000000   0.000000000   0.002259517

   34    4.1  2.0  0.0   0.003544279   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000887913  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   35    5.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.003297868   0.000000000  -0.001459297  -0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.001749253   0.000000000   0.000168835   0.000000000  -0.000000000

   36    6.1  2.0  0.0  -0.000000000   0.017755713   0.000000000  -0.000000000  -0.001154328  -0.000000000   0.000000326  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   37    7.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.004510304   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000763

   38    8.1  2.0  0.0   0.000000000   0.000000000   0.000000000  -0.010690574  -0.000000000   0.001985330  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.005670488  -0.000000000  -0.000229694   0.000000000  -0.000000000

   39    9.1  2.0  0.0  -0.013148679  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.003294008   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001

   40   10.1  2.0  0.0  -0.009234404  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.002313403   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001

   41   11.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.009035125   0.000000000   0.016233621   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.004792406   0.000000000  -0.001878162  -0.000000000  -0.000000000

   42   12.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000001842   0.000000000   0.000000000  -0.000000000   0.000000000  -0.006967195

   43   13.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000095   0.000000000   0.000000521   0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000050  -0.000000000  -0.000000060   0.000000000   0.000000000

   44   14.1  2.0  0.0   0.000000109   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000027  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   45   15.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000000   0.000000009   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000149

   46    1.1  2.0 -1.0  -0.000627797   0.000000000   0.000000000   0.002331521   0.000000000   0.001032288   0.000000000   0.000000000
                         0.002505974   0.000000000  -0.000000000  -0.001236684  -0.000000000  -0.000119431   0.000000000   0.000000000

   47    2.1  2.0 -1.0   0.000369560   0.000000000  -0.000000000   0.001252695   0.000000000  -0.001189290  -0.000000000   0.000000000
                        -0.001475169  -0.000000000  -0.000000000  -0.000664454  -0.000000000   0.000137596   0.000000000   0.000000000

   48    3.1  2.0 -1.0  -0.000027967   0.000000000  -0.000000000   0.000049950  -0.000000000  -0.000069256   0.000000000   0.000000000
                        -0.000007006   0.000000000  -0.000000000   0.000094170   0.000000000  -0.000598601  -0.000000000  -0.000000000

   49    4.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000599752   0.000411762   0.000000000   0.001573615  -0.000000000   0.000000354  -0.000507207

   50    5.1  2.0 -1.0  -0.000000000   0.002644984  -0.000412607  -0.000000000   0.001362739  -0.000000000  -0.000000278  -0.000506966
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   51    6.1  2.0 -1.0  -0.003255297  -0.000000000   0.000000000  -0.011820797  -0.000000000   0.006501400   0.000000000   0.000000000
                         0.012994159   0.000000000   0.000000000   0.006269980   0.000000000  -0.000752185   0.000000000   0.000000000

   52    7.1  2.0 -1.0   0.009632758   0.000000000   0.000000000   0.004897507  -0.000000000  -0.001494057  -0.000000000  -0.000000000
                         0.002413199   0.000000000  -0.000000000   0.009233272   0.000000000  -0.012913666  -0.000000000   0.000000001

   53    8.1  2.0 -1.0  -0.000000000  -0.000498836  -0.017325529   0.000000000  -0.014077283   0.000000000  -0.009709934   0.014912341
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   54    9.1  2.0 -1.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.010709091  -0.013671870   0.000000000  -0.014801651  -0.000000000   0.009714353  -0.013943519

   55   10.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.015471476   0.004705193   0.000000000  -0.009029633   0.000000000  -0.013303833  -0.004059144

   56   11.1  2.0 -1.0  -0.000000000   0.006271133  -0.004250195   0.000000000   0.009623051   0.000000000  -0.013308810  -0.007400443
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   57   12.1  2.0 -1.0  -0.012519724  -0.000000000   0.000000000   0.006179149   0.000000000  -0.000579685   0.000000000   0.000000000
                        -0.003136442   0.000000000   0.000000000   0.011649552   0.000000000  -0.005010426  -0.000000000  -0.000000000

   58   13.1  2.0 -1.0  -0.000000000  -0.000000045  -0.000000040   0.000000000  -0.000000092  -0.000000000  -0.000000366  -0.000000162
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   59   14.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000022   0.000000032  -0.000000000   0.000000102   0.000000000  -0.000000365  -0.000000385

   60   15.1  2.0 -1.0  -0.000000155  -0.000000000  -0.000000000   0.000000070  -0.000000000   0.000000048   0.000000000   0.000000000
                        -0.000000039   0.000000000  -0.000000000   0.000000132  -0.000000000   0.000000419   0.000000000   0.000000000

   61    1.1  2.0 -2.0  -0.000000000   0.001404943  -0.000356940  -0.000000000  -0.000091406   0.000000000  -0.001695601  -0.001598350
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   62    2.1  2.0 -2.0   0.000000000  -0.001191152   0.002947125  -0.000000000   0.002428836   0.000000000   0.000000016  -0.000253812
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   63    3.1  2.0 -2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.001702946  -0.002947861   0.000000000  -0.001694861  -0.000000000  -0.000000050  -0.000253505

   64    4.1  2.0 -2.0   0.001475124   0.000000000   0.000000000  -0.000049878   0.000000000  -0.000069232   0.000000000   0.000000000
                         0.000369548  -0.000000000  -0.000000000  -0.000094035  -0.000000000  -0.000598393  -0.000000000  -0.000000000

   65    5.1  2.0 -2.0  -0.000007096  -0.000000000  -0.000000000  -0.001252140  -0.000000000  -0.001189054  -0.000000000   0.000000000
                         0.000028327  -0.000000000   0.000000000   0.000664160   0.000000000   0.000137569   0.000000000   0.000000000

   66    6.1  2.0 -2.0   0.000000000  -0.012177949   0.013173255  -0.000000000   0.001013134   0.000000000  -0.000000497   0.005507625
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   67    7.1  2.0 -2.0   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000756249   0.013170215  -0.000000000   0.017413763  -0.000000000   0.000001200  -0.005507743

   68    8.1  2.0 -2.0  -0.000127578   0.000000000  -0.000000000   0.005044181   0.000000000  -0.004769663  -0.000000000   0.000000001
                         0.000509254  -0.000000000  -0.000000000  -0.002675532   0.000000000   0.000551830   0.000000000   0.000000000

   69    9.1  2.0 -2.0  -0.005166059  -0.000000000   0.000000000   0.000123225   0.000000000   0.001340346   0.000000000  -0.000000000
                        -0.001294201  -0.000000000   0.000000000   0.000232317  -0.000000000   0.011585084   0.000000000  -0.000000000

   70   10.1  2.0 -2.0  -0.003619704  -0.000000000   0.000000000   0.007473639   0.000000000   0.001335932   0.000000000   0.000000000
                        -0.000906808   0.000000000   0.000000000   0.014090054   0.000000000   0.011546939   0.000000000   0.000000000

   71   11.1  2.0 -2.0   0.004013748  -0.000000000  -0.000000000  -0.004183417  -0.000000000  -0.012051599  -0.000000000  -0.000000001
                        -0.016021665  -0.000000000  -0.000000000   0.002218966  -0.000000000   0.001394320  -0.000000000  -0.000000000

   72   12.1  2.0 -2.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.014037317  -0.003564542  -0.000000000  -0.000911657   0.000000000  -0.016474854  -0.015529920

   73   13.1  2.0 -2.0  -0.000000015   0.000000000  -0.000000000   0.000000040  -0.000000000   0.000000039   0.000000000   0.000000000
                         0.000000061   0.000000000  -0.000000000  -0.000000021  -0.000000000  -0.000000005   0.000000000  -0.000000000

   74   14.1  2.0 -2.0   0.000000042   0.000000000  -0.000000000  -0.000000032  -0.000000000  -0.000000042  -0.000000000  -0.000000000
                         0.000000011  -0.000000000   0.000000000  -0.000000060  -0.000000000  -0.000000359   0.000000000   0.000000000

   75   15.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000168  -0.000000052  -0.000000000  -0.000000023  -0.000000000  -0.000000623  -0.000000587

   76    1.1  1.0  1.0   0.001443819   0.000000000   0.000000000   0.019209967   0.000000000  -0.371875508  -0.000000000  -0.000000036
                        -0.005763285   0.000000000   0.000000000  -0.010189340  -0.000000000   0.043024438  -0.000000001   0.000000000

   77    2.1  1.0  1.0  -0.000000000   0.110855309   0.235419147   0.000000000  -0.009938579  -0.000000000   0.407911912   0.034294018
                        -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000001

   78    3.1  1.0  1.0  -0.391467113  -0.000000000   0.000000000   0.080749465  -0.000000000  -0.042535143  -0.000000000   0.000000001
                        -0.098070362  -0.000000000   0.000000000   0.152237004   0.000000000  -0.367646382  -0.000000000   0.000000005

   79    4.1  1.0  1.0   0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000007   0.000000000  -0.000000000  -0.000000001
                         0.000000000  -0.054361567   0.412849060   0.000000000  -0.403244658   0.000000000  -0.062721976  -0.433741634

   80    5.1  1.0  1.0   0.287576716   0.000000000   0.000000000   0.217360908  -0.000000000   0.045981185   0.000000000  -0.000000000
                         0.072043735   0.000000000  -0.000000000   0.409790624   0.000000000   0.397431744   0.000000000  -0.000000030

   81    6.1  1.0  1.0  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000
                         0.000000000  -0.457446938  -0.304035697   0.000000000  -0.028456801  -0.000000000   0.403046877  -0.298521546

   82    7.1  1.0  1.0  -0.000000000   0.303979453   0.416777797  -0.000000000  -0.430641497  -0.000000000   0.002259844   0.270110964
                        -0.000000000  -0.000000001   0.000000001  -0.000000000   0.000000007  -0.000000000  -0.000000001  -0.000000000

   83    1.1  1.0  0.0   0.000000000   0.000000000  -0.118969812   0.000000000   0.000000000   0.000000000   0.000000000   0.543685859
                        -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000001

   84    2.1  1.0  0.0   0.104378309  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000021
                        -0.416646522  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002  -0.000000001  -0.000000000

   85    3.1  1.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000003  -0.000000000   0.000000001   0.000000001
                        -0.000000000   0.350324296   0.000000000  -0.000000000  -0.174598243  -0.000000000   0.556203030  -0.000000000

   86    4.1  1.0  0.0  -0.000000000   0.000000000   0.000000001   0.220912373  -0.000000000  -0.037097724  -0.000000000  -0.000000001
                         0.000000000   0.000000000  -0.000000000   0.416486203   0.000000000  -0.320648822   0.000000000   0.000000000

   87    5.1  1.0  0.0   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000008  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.491560778   0.000000000  -0.000000000   0.519375928  -0.000000000   0.153108396  -0.000000000

   88    6.1  1.0  0.0  -0.000000000   0.000000000   0.000000000   0.250251147  -0.000000000  -0.016173826  -0.000000000   0.000000001
                         0.000000001   0.000000000  -0.000000000   0.471798606   0.000000000  -0.139796134  -0.000000000  -0.000000000

   89    7.1  1.0  0.0  -0.135759962   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000057
                         0.541912557   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000003  -0.000000002  -0.000000000

   90    1.1  1.0 -1.0  -0.001443818   0.000000000  -0.000000000   0.019209967   0.000000000  -0.371875508  -0.000000000   0.000000036
                         0.005763285  -0.000000000   0.000000000  -0.010189340   0.000000000   0.043024435   0.000000001   0.000000000

   91    2.1  1.0 -1.0  -0.000000000   0.110855310  -0.235419147   0.000000000  -0.009938579  -0.000000000   0.407911912  -0.034294018
                         0.000000000   0.000000001  -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000

   92    3.1  1.0 -1.0  -0.391467113  -0.000000000  -0.000000000  -0.080749464  -0.000000000   0.042535145  -0.000000000  -0.000000001
                        -0.098070362   0.000000000   0.000000000  -0.152237005  -0.000000000   0.367646382   0.000000000   0.000000005

   93    4.1  1.0 -1.0   0.000000000   0.000000001  -0.000000003   0.000000000   0.000000006   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.054361567   0.412849060  -0.000000000   0.403244658  -0.000000000   0.062721976  -0.433741634

   94    5.1  1.0 -1.0   0.287576716   0.000000000  -0.000000000  -0.217360909  -0.000000000  -0.045981186   0.000000000   0.000000000
                         0.072043734  -0.000000000  -0.000000000  -0.409790624  -0.000000000  -0.397431744  -0.000000000  -0.000000030

   95    6.1  1.0 -1.0  -0.000000000  -0.000000000   0.000000003  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000001
                        -0.000000000   0.457446939  -0.304035697   0.000000000   0.028456801   0.000000000  -0.403046877  -0.298521546

   96    7.1  1.0 -1.0  -0.000000000   0.303979453  -0.416777797   0.000000000  -0.430641497   0.000000000   0.002259844  -0.270110964
                         0.000000000   0.000000001  -0.000000003   0.000000000   0.000000006   0.000000000   0.000000001   0.000000000


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  2.0  2.0   0.000000000   0.000000000  -0.000000000   0.000567091   0.000000000   0.000000000   0.000564654  -0.000240010
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  2.0  2.0   0.000000000   0.000000000   0.000000000  -0.000715389  -0.000000000  -0.000000000   0.000000070  -0.000511967
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    3    3.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000714410  -0.000000000  -0.000000000  -0.000000085   0.000511392

    4    4.1  2.0  2.0   0.000043985   0.001323100  -0.000094771   0.000000000   0.000028839  -0.000489433   0.000000000   0.000000000
                         0.001510592   0.000431139   0.000080929  -0.000000000  -0.000488456  -0.000009220   0.000000000   0.000000000

    5    5.1  2.0  2.0   0.000256944   0.000288504   0.000970586   0.000000000   0.000488662   0.000009217  -0.000000000  -0.000000000
                        -0.000007482  -0.000885375   0.001136596   0.000000000   0.000028851  -0.000489284   0.000000000   0.000000000

    6    6.1  2.0  2.0  -0.000000000  -0.000000000  -0.000000000   0.015523769  -0.000000000   0.000000000  -0.000001036   0.010897038
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    7    7.1  2.0  2.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.015526280  -0.000000000   0.000000000  -0.000000931   0.010897979

    8    8.1  2.0  2.0   0.009420474   0.000350971  -0.004483629  -0.000000000   0.006333394  -0.000188469  -0.000000000   0.000000000
                        -0.000274300  -0.001077077  -0.005250513   0.000000000   0.000373928   0.010005221  -0.000000000   0.000000000

    9    9.1  2.0  2.0   0.000135070  -0.000594918   0.001280200  -0.000000000  -0.000589709  -0.006346221   0.000000000  -0.000000000
                         0.004638807  -0.000193857  -0.001093215  -0.000000000   0.009988194  -0.000119544  -0.000000000   0.000000000

   10   10.1  2.0  2.0  -0.000116055   0.004937102  -0.012222017  -0.000000000  -0.000234281   0.008696766  -0.000000000  -0.000000000
                        -0.003985757   0.001608780   0.010436882   0.000000000   0.003968129   0.000163822  -0.000000000  -0.000000000

   11   11.1  2.0  2.0  -0.012560623  -0.003491658   0.001306055   0.000000000   0.008685187   0.000074804  -0.000000000  -0.000000000
                         0.000365733   0.010715369   0.001529444   0.000000000   0.000512779  -0.003971092   0.000000000   0.000000000

   12   12.1  2.0  2.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000001  -0.000000000   0.000000000  -0.005509405  -0.000000000  -0.000000000  -0.005380773   0.002287297

   13   13.1  2.0  2.0   0.000000542   0.000000172   0.000000122  -0.000000000  -0.000000137  -0.000000004   0.000000000   0.000000000
                        -0.000000016  -0.000000527   0.000000143  -0.000000000  -0.000000008   0.000000193   0.000000000   0.000000000

   14   14.1  2.0  2.0  -0.000000008  -0.000000436   0.000000376   0.000000000   0.000000012  -0.000000140  -0.000000000   0.000000000
                        -0.000000270  -0.000000142  -0.000000321  -0.000000000  -0.000000199  -0.000000003   0.000000000  -0.000000000

   15   15.1  2.0  2.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000222  -0.000000000   0.000000000  -0.000000324   0.000000129

   16    1.1  2.0  1.0  -0.000723818  -0.000082325   0.000513726   0.000000000  -0.000281904  -0.000005319   0.000000000   0.000000000
                         0.000021076   0.000252644   0.000601595   0.000000000  -0.000016644   0.000282371  -0.000000000  -0.000000000

   17    2.1  2.0  1.0  -0.001511077  -0.000288432  -0.000080619   0.000000000  -0.000488187   0.000009212   0.000000000  -0.000000000
                         0.000043999   0.000885154  -0.000094408  -0.000000000  -0.000028823  -0.000489016   0.000000000  -0.000000000

   18    3.1  2.0  1.0  -0.000007483  -0.001323351   0.001136531  -0.000000000  -0.000028842  -0.000489151   0.000000000  -0.000000000
                        -0.000256977  -0.000431221  -0.000970531  -0.000000000   0.000488508  -0.000009214  -0.000000000   0.000000000

   19    4.1  2.0  1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.001429379   0.000000000   0.000000000   0.000489223  -0.000463705

   20    5.1  2.0  1.0  -0.000000000  -0.000000000  -0.000000000   0.001429567   0.000000000   0.000000000   0.000489039   0.000047905
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.002790098  -0.004683367  -0.010541696  -0.000000000   0.000000015   0.000000012  -0.000000000   0.000000000
                         0.000081240   0.014372543  -0.012344759   0.000000000   0.000000001  -0.000000653   0.000000000   0.000000000

   22    7.1  2.0  1.0   0.000477811   0.009618658  -0.001031787  -0.000000000   0.000000202   0.000003139  -0.000000000  -0.000000000
                         0.016409805   0.003134289   0.000881085  -0.000000000  -0.000003426   0.000000059  -0.000000000  -0.000000000

   23    8.1  2.0  1.0   0.000000001   0.000000000   0.000000000   0.003753676  -0.000000000  -0.000000000  -0.006350342  -0.002336647
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   24    9.1  2.0  1.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000001   0.000000000  -0.000000000   0.006480527  -0.000000000  -0.000000000  -0.006353646  -0.006160728

   25   10.1  2.0  1.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.006751187   0.000000000   0.000000000   0.008693848  -0.008311209

   26   11.1  2.0  1.0  -0.000000001  -0.000000000   0.000000000   0.002683916  -0.000000000  -0.000000000  -0.008696896  -0.004935491
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   27   12.1  2.0  1.0  -0.000102330  -0.001228051  -0.002920526  -0.000000000  -0.000634677   0.010766540  -0.000000000  -0.000000000
                        -0.003514390  -0.000400167   0.002493957   0.000000000   0.010749833   0.000202811  -0.000000000  -0.000000000

   28   13.1  2.0  1.0  -0.000000000   0.000000000   0.000000000  -0.000000423  -0.000000000  -0.000000000   0.000000142  -0.000000224
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   29   14.1  2.0  1.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000228  -0.000000000  -0.000000000  -0.000000143  -0.000000052

   30   15.1  2.0  1.0   0.000000008   0.000000093   0.000000240   0.000000000  -0.000000003   0.000000055   0.000000000   0.000000000
                         0.000000269   0.000000030  -0.000000205  -0.000000000   0.000000052   0.000000001  -0.000000000   0.000000000

   31    1.1  2.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000723382
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   32    2.1  2.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000338896
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   33    3.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000801553  -0.000000000  -0.000000000  -0.000799468  -0.000000000

   34    4.1  2.0  0.0  -0.000029804   0.000000000  -0.000850619   0.000000000  -0.000023573  -0.000000000   0.000000000  -0.000000000
                        -0.001023569  -0.000000000   0.000726379   0.000000000   0.000399272  -0.000000000  -0.000000000   0.000000000

   35    5.1  2.0  0.0  -0.000000000  -0.000116613   0.000000000  -0.000000000   0.000000000   0.000007531   0.000000000  -0.000000000
                        -0.000000000   0.000357868  -0.000000000   0.000000000  -0.000000000  -0.000399773   0.000000000  -0.000000000

   36    6.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.007229721
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   37    7.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000002122   0.000000000   0.000000000   0.017022951   0.000000000

   38    8.1  2.0  0.0   0.000000000  -0.007844793   0.000000000  -0.000000000  -0.000000000  -0.000056317  -0.000000000   0.000000000
                        -0.000000000   0.024074480  -0.000000000   0.000000000   0.000000000   0.002989681  -0.000000000   0.000000000

   39    9.1  2.0  0.0   0.000452092  -0.000000000  -0.015283480   0.000000000   0.000176137   0.000000000   0.000000000   0.000000000
                         0.015526513   0.000000000   0.013051191   0.000000000  -0.002983322   0.000000000   0.000000000  -0.000000000

   40   10.1  2.0  0.0  -0.000450308   0.000000000  -0.004712494   0.000000000   0.000609552   0.000000000  -0.000000000   0.000000000
                        -0.015465235  -0.000000000   0.004024192   0.000000000  -0.010324271   0.000000000   0.000000000  -0.000000000

   41   11.1  2.0  0.0   0.000000000  -0.001018605  -0.000000000  -0.000000000   0.000000000   0.000194760   0.000000000  -0.000000000
                         0.000000000   0.003125944   0.000000000  -0.000000000  -0.000000000  -0.010339150   0.000000000  -0.000000000

   42   12.1  2.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001  -0.000000000  -0.000000000   0.019639252   0.000000000  -0.000000000  -0.000001294   0.000000000

   43   13.1  2.0  0.0  -0.000000000   0.000000021  -0.000000000  -0.000000000   0.000000000   0.000000004  -0.000000000   0.000000000
                        -0.000000000  -0.000000066   0.000000000   0.000000000  -0.000000000  -0.000000211   0.000000000   0.000000000

   44   14.1  2.0  0.0  -0.000000012  -0.000000000  -0.000000250  -0.000000000   0.000000012   0.000000000   0.000000000  -0.000000000
                        -0.000000398   0.000000000   0.000000214   0.000000000  -0.000000208   0.000000000  -0.000000000  -0.000000000

   45   15.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000427   0.000000000  -0.000000000  -0.000000019  -0.000000000

   46    1.1  2.0 -1.0  -0.000723818   0.000082325   0.000513726   0.000000000  -0.000281904   0.000005319   0.000000000  -0.000000000
                         0.000021076  -0.000252644   0.000601595  -0.000000000  -0.000016644  -0.000282371   0.000000000  -0.000000000

   47    2.1  2.0 -1.0  -0.001511077   0.000288432  -0.000080619   0.000000000  -0.000488187  -0.000009212   0.000000000   0.000000000
                         0.000043999  -0.000885154  -0.000094408   0.000000000  -0.000028823   0.000489016  -0.000000000  -0.000000000

   48    3.1  2.0 -1.0   0.000007483  -0.001323351  -0.001136531  -0.000000000   0.000028842  -0.000489151   0.000000000   0.000000000
                         0.000256977  -0.000431221   0.000970531   0.000000000  -0.000488508  -0.000009214   0.000000000   0.000000000

   49    4.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.001429379  -0.000000000  -0.000000000  -0.000489223  -0.000463705

   50    5.1  2.0 -1.0  -0.000000000  -0.000000000  -0.000000000   0.001429567   0.000000000   0.000000000   0.000489039  -0.000047905
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   51    6.1  2.0 -1.0  -0.002790098   0.004683367  -0.010541696  -0.000000000   0.000000015  -0.000000012  -0.000000000  -0.000000000
                         0.000081241  -0.014372543  -0.012344759  -0.000000000   0.000000001   0.000000653  -0.000000000   0.000000000

   52    7.1  2.0 -1.0  -0.000477811   0.009618658   0.001031787   0.000000000  -0.000000202   0.000003139  -0.000000000   0.000000000
                        -0.016409805   0.003134289  -0.000881085   0.000000000   0.000003426   0.000000059  -0.000000000  -0.000000000

   53    8.1  2.0 -1.0   0.000000001   0.000000000  -0.000000000   0.003753676  -0.000000000  -0.000000000  -0.006350342   0.002336647
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   54    9.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000001  -0.000000000   0.000000000  -0.006480527   0.000000000   0.000000000   0.006353646  -0.006160728

   55   10.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.006751187  -0.000000000  -0.000000000  -0.008693848  -0.008311209

   56   11.1  2.0 -1.0  -0.000000001  -0.000000000  -0.000000000   0.002683916  -0.000000000  -0.000000000  -0.008696896   0.004935491
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   57   12.1  2.0 -1.0   0.000102330  -0.001228051   0.002920526  -0.000000000   0.000634677   0.010766540  -0.000000000   0.000000000
                         0.003514390  -0.000400167  -0.002493957  -0.000000000  -0.010749833   0.000202811   0.000000000  -0.000000000

   58   13.1  2.0 -1.0  -0.000000000   0.000000000  -0.000000000  -0.000000423   0.000000000  -0.000000000   0.000000142   0.000000224
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   59   14.1  2.0 -1.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000228   0.000000000   0.000000000   0.000000143  -0.000000052

   60   15.1  2.0 -1.0  -0.000000008   0.000000093  -0.000000240   0.000000000   0.000000003   0.000000055   0.000000000  -0.000000000
                        -0.000000269   0.000000030   0.000000205   0.000000000  -0.000000052   0.000000001   0.000000000   0.000000000

   61    1.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000  -0.000567091  -0.000000000  -0.000000000  -0.000564654  -0.000240010
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   62    2.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000   0.000715389   0.000000000  -0.000000000  -0.000000070  -0.000511967
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   63    3.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000714410  -0.000000000  -0.000000000  -0.000000085  -0.000511392

   64    4.1  2.0 -2.0   0.000043985  -0.001323100  -0.000094771  -0.000000000   0.000028839   0.000489433  -0.000000000   0.000000000
                         0.001510592  -0.000431139   0.000080929  -0.000000000  -0.000488456   0.000009220   0.000000000  -0.000000000

   65    5.1  2.0 -2.0  -0.000256944   0.000288504  -0.000970586  -0.000000000  -0.000488662   0.000009217   0.000000000  -0.000000000
                         0.000007482  -0.000885375  -0.001136596   0.000000000  -0.000028851  -0.000489284   0.000000000  -0.000000000

   66    6.1  2.0 -2.0   0.000000000   0.000000000   0.000000000  -0.015523769  -0.000000000   0.000000000   0.000001036   0.010897038
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   67    7.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.015526280   0.000000000  -0.000000000  -0.000000931  -0.010897979

   68    8.1  2.0 -2.0  -0.009420474   0.000350971   0.004483629   0.000000000  -0.006333394  -0.000188469   0.000000000   0.000000000
                         0.000274300  -0.001077077   0.005250513   0.000000000  -0.000373928   0.010005221  -0.000000000  -0.000000000

   69    9.1  2.0 -2.0   0.000135070   0.000594918   0.001280200   0.000000000  -0.000589709   0.006346221  -0.000000000  -0.000000000
                         0.004638807   0.000193857  -0.001093215  -0.000000000   0.009988194   0.000119544  -0.000000000  -0.000000000

   70   10.1  2.0 -2.0  -0.000116055  -0.004937102  -0.012222017   0.000000000  -0.000234281  -0.008696766   0.000000000  -0.000000000
                        -0.003985757  -0.001608780   0.010436882   0.000000000   0.003968129  -0.000163822  -0.000000000   0.000000000

   71   11.1  2.0 -2.0   0.012560623  -0.003491658  -0.001306055  -0.000000000  -0.008685187   0.000074804   0.000000000  -0.000000000
                        -0.000365733   0.010715369  -0.001529444   0.000000000  -0.000512779  -0.003971092   0.000000000  -0.000000000

   72   12.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000001  -0.000000000  -0.000000000  -0.005509405  -0.000000000  -0.000000000  -0.005380773  -0.002287297

   73   13.1  2.0 -2.0  -0.000000542   0.000000172  -0.000000122   0.000000000   0.000000137  -0.000000004  -0.000000000  -0.000000000
                         0.000000016  -0.000000527  -0.000000143  -0.000000000   0.000000008   0.000000193   0.000000000  -0.000000000

   74   14.1  2.0 -2.0  -0.000000008   0.000000436   0.000000376  -0.000000000   0.000000012   0.000000140   0.000000000   0.000000000
                        -0.000000270   0.000000142  -0.000000321  -0.000000000  -0.000000199   0.000000003   0.000000000   0.000000000

   75   15.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000222   0.000000000   0.000000000  -0.000000324  -0.000000129

   76    1.1  1.0  1.0   0.401839621   0.050204440  -0.044886923  -0.000000000   0.344198002  -0.006493667  -0.000000000   0.000000000
                        -0.011700541  -0.154069803  -0.052564431   0.000000000   0.020321674   0.344727327  -0.000000000   0.000000000

   77    2.1  1.0  1.0   0.000000003   0.000000000   0.000000001  -0.408732614  -0.000000000  -0.000000000  -0.343336756  -0.343828521
                        -0.000000001   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000

   78    3.1  1.0  1.0  -0.001660478  -0.326297191   0.223651745  -0.000000000  -0.023778149  -0.261505444   0.000000000  -0.000000000
                        -0.057027042  -0.106325619  -0.190985397  -0.000000000   0.402741989  -0.004926008  -0.000000000   0.000000000

   79    4.1  1.0  1.0  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000039  -0.000000001  -0.000000000   0.102510459   0.000000000   0.000000000   0.317077244   0.344831192

   80    5.1  1.0  1.0   0.009726570   0.032272018   0.352234934   0.000000000   0.009787998  -0.349144072   0.000000000   0.000000000
                         0.334046255   0.010516004  -0.300787860  -0.000000001  -0.165784054  -0.006576866   0.000000000   0.000000000

   81    6.1  1.0  1.0   0.000000000  -0.000000000   0.000000001   0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000027  -0.000000000   0.000000000   0.358069152  -0.000000000  -0.000000000  -0.299722672   0.253201335

   82    7.1  1.0  1.0   0.000000025   0.000000000  -0.000000001   0.418074146  -0.000000000  -0.000000000  -0.269207066   0.037317926
                        -0.000000001   0.000000000  -0.000000001  -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000000

   83    1.1  1.0  0.0   0.000000049   0.000000001  -0.000000000   0.192924177   0.000000000   0.000000000   0.487583620   0.000000000
                        -0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000

   84    2.1  1.0  0.0   0.233317672   0.000000002   0.340328715   0.000000001   0.489009731  -0.000000000  -0.000000000   0.000000000
                        -0.006793613   0.000000001   0.398538900  -0.000000000   0.028871453   0.000000000  -0.000000000   0.000000000

   85    3.1  1.0  0.0   0.000000001  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.042451421

   86    4.1  1.0  0.0  -0.000000002   0.664867043  -0.000000000   0.000000000   0.000000000   0.298352021  -0.000000000   0.000000000
                        -0.000000000   0.216650347  -0.000000001   0.000000000   0.000000000   0.005620090   0.000000000  -0.000000000

   87    5.1  1.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.626197967

   88    6.1  1.0  0.0   0.000000003  -0.444952232   0.000000001  -0.000000000   0.000000000   0.539972840  -0.000000000   0.000000000
                        -0.000000000  -0.144989974   0.000000001  -0.000000000   0.000000000   0.010171529   0.000000000  -0.000000000

   89    7.1  1.0  0.0   0.624859359   0.000000003   0.217395235   0.000000000  -0.374525562   0.000000000   0.000000000  -0.000000000
                        -0.018194304   0.000000001   0.254578747   0.000000000  -0.022112233  -0.000000000   0.000000000  -0.000000000

   90    1.1  1.0 -1.0  -0.401839621   0.050204436   0.044886924   0.000000000  -0.344198002  -0.006493667   0.000000000   0.000000000
                         0.011700540  -0.154069804   0.052564431   0.000000000  -0.020321674   0.344727327  -0.000000000  -0.000000000

   91    2.1  1.0 -1.0  -0.000000003  -0.000000000  -0.000000000   0.408732614   0.000000000   0.000000000   0.343336756  -0.343828521
                        -0.000000001   0.000000000  -0.000000001  -0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000

   92    3.1  1.0 -1.0  -0.001660484   0.326297191   0.223651743   0.000000000  -0.023778149   0.261505444  -0.000000000  -0.000000000
                        -0.057027042   0.106325618  -0.190985399  -0.000000000   0.402741989   0.004926007  -0.000000000  -0.000000000

   93    4.1  1.0 -1.0  -0.000000001   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000039  -0.000000001   0.000000000   0.102510459   0.000000000   0.000000000   0.317077244  -0.344831192

   94    5.1  1.0 -1.0   0.009726573  -0.032272019   0.352234935  -0.000000000   0.009787999   0.349144072  -0.000000000   0.000000000
                         0.334046255  -0.010516003  -0.300787858  -0.000000001  -0.165784054   0.006576866   0.000000000  -0.000000000

   95    6.1  1.0 -1.0  -0.000000002   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000027  -0.000000000  -0.000000001   0.358069152  -0.000000000  -0.000000000  -0.299722672  -0.253201336

   96    7.1  1.0 -1.0  -0.000000025  -0.000000000   0.000000001  -0.418074146   0.000000000   0.000000000   0.269207066   0.037317926
                         0.000000001  -0.000000000   0.000000001   0.000000002   0.000000000  -0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  2.0  2.0  -0.000511522   0.000000000  -0.000000000  -0.000045535  -0.000045530   0.000000000   0.000000000   0.000000031
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  2.0  2.0   0.000240168  -0.000000000   0.000000000  -0.000000016  -0.000000003  -0.000000000  -0.000000000  -0.000020484
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  2.0  2.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000239936  -0.000000000   0.000000000   0.000000013   0.000000000  -0.000000000   0.000000000   0.000020459

    4    4.1  2.0  2.0  -0.000000000   0.000036222  -0.000020765   0.000000000   0.000000000   0.000024424   0.000024422  -0.000000000
                        -0.000000000   0.000015698  -0.000008999  -0.000000000  -0.000000000  -0.000004912  -0.000004923  -0.000000000

    5    5.1  2.0  2.0   0.000000000   0.000015702  -0.000009001   0.000000000   0.000000000   0.000004910   0.000004921   0.000000000
                        -0.000000000  -0.000036231   0.000020770  -0.000000000  -0.000000000   0.000024414   0.000024412  -0.000000000

    6    6.1  2.0  2.0  -0.005112227  -0.000000000   0.000000000  -0.000000002  -0.000000002  -0.000000000  -0.000000000  -0.000000024
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    7    7.1  2.0  2.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.005112815  -0.000000000   0.000000000   0.000000001   0.000000001  -0.000000000  -0.000000000  -0.000000080

    8    8.1  2.0  2.0  -0.000000000  -0.000000007   0.000000004   0.000000000   0.000000000   0.000000008   0.000000008  -0.000000000
                        -0.000000000   0.000000016  -0.000000009   0.000000000   0.000000000   0.000000039   0.000000037  -0.000000000

    9    9.1  2.0  2.0   0.000000000  -0.000000017   0.000000010  -0.000000000  -0.000000000   0.000000036   0.000000037   0.000000000
                        -0.000000000  -0.000000007   0.000000004   0.000000000   0.000000000  -0.000000007  -0.000000007  -0.000000000

   10   10.1  2.0  2.0   0.000000000  -0.000000033   0.000000019   0.000000000   0.000000000   0.000000036   0.000000037  -0.000000000
                         0.000000000  -0.000000014   0.000000008   0.000000000   0.000000000  -0.000000007  -0.000000008  -0.000000000

   11   11.1  2.0  2.0   0.000000000   0.000000013  -0.000000007  -0.000000000   0.000000000  -0.000000008  -0.000000008   0.000000000
                        -0.000000000  -0.000000030   0.000000017   0.000000000   0.000000000  -0.000000040  -0.000000038  -0.000000000

   12   12.1  2.0  2.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.004873925   0.000000000   0.000000000  -0.000000173  -0.000000173  -0.000000000  -0.000000000   0.000000002

   13   13.1  2.0  2.0   0.000000000  -0.243930275   0.139834599  -0.000000000  -0.000000000   0.025472867   0.025530164   0.000000000
                         0.000000000   0.562846620  -0.322653944   0.000000000   0.000000000   0.126655039   0.126643134  -0.000000000

   14   14.1  2.0  2.0  -0.000000000   0.562894432  -0.322681176   0.000000000   0.000000000  -0.126494827  -0.126483830   0.000000000
                         0.000000000   0.243950996  -0.139846402   0.000000000   0.000000000   0.025440645   0.025498049   0.000000000

   15   15.1  2.0  2.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000300   0.000000000  -0.000000000  -0.407959907  -0.407921521   0.000000000   0.000000000   0.000266041

   16    1.1  2.0  1.0  -0.000000000   0.000000004  -0.000000002   0.000000000   0.000000000   0.000005680   0.000005693  -0.000000000
                         0.000000000  -0.000000008   0.000000005   0.000000000   0.000000000   0.000028240   0.000028241  -0.000000000

   17    2.1  2.0  1.0   0.000000000  -0.000015790   0.000009055  -0.000000000  -0.000000000   0.000004948  -0.000004956   0.000000000
                         0.000000000   0.000036435  -0.000020892  -0.000000000   0.000000000   0.000024603  -0.000024586   0.000000000

   18    3.1  2.0  1.0   0.000000000  -0.000036395   0.000020857  -0.000000000   0.000000000   0.000024560  -0.000024569   0.000000000
                        -0.000000000  -0.000015773   0.000009039  -0.000000000  -0.000000000  -0.000004940   0.000004953  -0.000000000

   19    4.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000322917   0.000000000  -0.000000000  -0.000000001   0.000000026   0.000000000  -0.000000000  -0.000040676

   20    5.1  2.0  1.0  -0.000563072  -0.000000000   0.000000000   0.000000052   0.000000026  -0.000000000   0.000000000   0.000040677
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.000000000  -0.000000013   0.000000008  -0.000000000   0.000000000   0.000000006  -0.000000005  -0.000000000
                         0.000000000   0.000000030  -0.000000017  -0.000000000  -0.000000000   0.000000027  -0.000000025   0.000000000

   22    7.1  2.0  1.0   0.000000000   0.000000134  -0.000000077   0.000000000   0.000000000  -0.000000093   0.000000096  -0.000000000
                         0.000000000   0.000000058  -0.000000033  -0.000000000  -0.000000000   0.000000019  -0.000000019  -0.000000000

   23    8.1  2.0  1.0  -0.009959072  -0.000000000   0.000000000  -0.000000038  -0.000000041   0.000000000   0.000000000   0.000000073
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   24    9.1  2.0  1.0   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.008163886  -0.000000000   0.000000000  -0.000000038  -0.000000040   0.000000000   0.000000000  -0.000000071

   25   10.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000490205   0.000000000  -0.000000000  -0.000000040  -0.000000043  -0.000000000  -0.000000000  -0.000000068

   26   11.1  2.0  1.0   0.006699529   0.000000000  -0.000000000   0.000000040   0.000000043  -0.000000000   0.000000000  -0.000000073
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   27   12.1  2.0  1.0   0.000000000  -0.000000004   0.000000003   0.000000000   0.000000000  -0.000000206  -0.000000212  -0.000000000
                         0.000000000  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000041   0.000000043  -0.000000000

   28   13.1  2.0  1.0  -0.000000104   0.000000000  -0.000000000  -0.408214823  -0.408382538   0.000000000   0.000000000   0.316625433
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000059

   29   14.1  2.0  1.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000059
                         0.000000242  -0.000000000   0.000000000   0.408627454   0.408382879  -0.000000000   0.000000000   0.316093028

   30   15.1  2.0  1.0  -0.000000000   0.000094834  -0.000054011  -0.000000000  -0.000000000  -0.506059494  -0.506013600   0.000000000
                         0.000000000   0.000041099  -0.000023410   0.000000000   0.000000000   0.101778707   0.102007979   0.000000000

   31    1.1  2.0  0.0   0.000339221  -0.000000000   0.000000000   0.000000000   0.000000005   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   32    2.1  2.0  0.0   0.000722956   0.000000000   0.000000000  -0.000000003  -0.000064764   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   33    3.1  2.0  0.0   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000064684   0.000000003   0.000000000   0.000000000   0.000000042

   34    4.1  2.0  0.0   0.000000000   0.000000006   0.000000002   0.000000000  -0.000000000  -0.000039857  -0.000000000  -0.000000000
                         0.000000000   0.000000003   0.000000001   0.000000000   0.000000000   0.000008016   0.000000000   0.000000000

   35    5.1  2.0  0.0   0.000000000   0.000000001  -0.000000002   0.000000000   0.000000000   0.000000000   0.000008034  -0.000000000
                         0.000000000  -0.000000001   0.000000005   0.000000000  -0.000000000  -0.000000000   0.000039855  -0.000000000

   36    6.1  2.0  0.0   0.015410418   0.000000000  -0.000000000  -0.000000000  -0.000000061  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   37    7.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000243  -0.000000000   0.000000000  -0.000000000  -0.000000002

   38    8.1  2.0  0.0  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000021  -0.000000000
                        -0.000000000  -0.000000001   0.000000002   0.000000000   0.000000000  -0.000000000   0.000000102  -0.000000000

   39    9.1  2.0  0.0  -0.000000000  -0.000000002  -0.000000001  -0.000000000   0.000000000  -0.000000099  -0.000000000   0.000000000
                        -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000020   0.000000000  -0.000000000

   40   10.1  2.0  0.0  -0.000000000  -0.000000003  -0.000000001  -0.000000000  -0.000000000  -0.000000095  -0.000000000   0.000000000
                        -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000019   0.000000000  -0.000000000

   41   11.1  2.0  0.0   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000020   0.000000000
                         0.000000000   0.000000001  -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000099  -0.000000000

   42   12.1  2.0  0.0   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000007   0.000000000   0.000000000  -0.000000000   0.000000317

   43   13.1  2.0  0.0  -0.000000000   0.000010860  -0.000039133   0.000000000   0.000000000   0.000000047   0.125047586  -0.000000000
                        -0.000000000  -0.000024603   0.000091091   0.000000000  -0.000000000  -0.000000076   0.620302562  -0.000000000

   44   14.1  2.0  0.0  -0.000000000  -0.000091550  -0.000024939   0.000000000   0.000000000   0.620359451   0.000000052   0.000000000
                        -0.000000000  -0.000039478  -0.000010462  -0.000000000   0.000000000  -0.124766657  -0.000000072  -0.000000000

   45   15.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000144
                         0.000000000   0.000000000  -0.000000000   0.000504724  -0.000000024  -0.000000000   0.000000000   0.774381634

   46    1.1  2.0 -1.0   0.000000000   0.000000002   0.000000003   0.000000000  -0.000000000   0.000005680  -0.000005693  -0.000000000
                         0.000000000  -0.000000005  -0.000000008  -0.000000000   0.000000000   0.000028240  -0.000028241   0.000000000

   47    2.1  2.0 -1.0  -0.000000000  -0.000008946  -0.000015609  -0.000000000   0.000000000   0.000004948   0.000004956   0.000000000
                         0.000000000   0.000020928   0.000036519   0.000000000   0.000000000   0.000024603   0.000024586  -0.000000000

   48    3.1  2.0 -1.0  -0.000000000   0.000020912   0.000036468  -0.000000000  -0.000000000  -0.000024560  -0.000024569   0.000000000
                        -0.000000000   0.000008938   0.000015588   0.000000000  -0.000000000   0.000004940   0.000004953   0.000000000

   49    4.1  2.0 -1.0   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000322917   0.000000000   0.000000000   0.000000001   0.000000026  -0.000000000   0.000000000   0.000040676

   50    5.1  2.0 -1.0   0.000563072   0.000000000   0.000000000   0.000000052  -0.000000026  -0.000000000   0.000000000   0.000040677
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   51    6.1  2.0 -1.0   0.000000000  -0.000000007  -0.000000013   0.000000000   0.000000000   0.000000006   0.000000005  -0.000000000
                         0.000000000   0.000000017   0.000000030   0.000000000  -0.000000000   0.000000027   0.000000025  -0.000000000

   52    7.1  2.0 -1.0  -0.000000000  -0.000000077  -0.000000134   0.000000000  -0.000000000   0.000000093   0.000000096  -0.000000000
                         0.000000000  -0.000000033  -0.000000057   0.000000000  -0.000000000  -0.000000019  -0.000000019   0.000000000

   53    8.1  2.0 -1.0   0.009959072  -0.000000000  -0.000000000  -0.000000038   0.000000041  -0.000000000   0.000000000   0.000000073
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   54    9.1  2.0 -1.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.008163886  -0.000000000  -0.000000000   0.000000038  -0.000000040   0.000000000  -0.000000000   0.000000071

   55   10.1  2.0 -1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000490205   0.000000000   0.000000000   0.000000040  -0.000000043  -0.000000000   0.000000000   0.000000068

   56   11.1  2.0 -1.0  -0.006699529  -0.000000000  -0.000000000   0.000000040  -0.000000043  -0.000000000   0.000000000  -0.000000073
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   57   12.1  2.0 -1.0  -0.000000000   0.000000002   0.000000004   0.000000000  -0.000000000   0.000000206  -0.000000212  -0.000000000
                         0.000000000   0.000000001   0.000000002   0.000000000  -0.000000000  -0.000000041   0.000000043   0.000000000

   58   13.1  2.0 -1.0   0.000000104  -0.000000000  -0.000000000  -0.408176306   0.408421036  -0.000000000   0.000000000   0.316625433
                         0.000000000  -0.000000000  -0.000000000  -0.000000025   0.000000025   0.000000000  -0.000000000   0.000000059

   59   14.1  2.0 -1.0   0.000000000   0.000000000   0.000000000   0.000000025  -0.000000025  -0.000000000   0.000000000   0.000000059
                         0.000000242  -0.000000000  -0.000000000  -0.408588937   0.408421415  -0.000000000  -0.000000000  -0.316093028

   60   15.1  2.0 -1.0   0.000000000  -0.000054659  -0.000094735  -0.000000000   0.000000000   0.506059618  -0.506013516   0.000000000
                         0.000000000  -0.000023365  -0.000040492  -0.000000000   0.000000000  -0.101778631   0.102007861  -0.000000000

   61    1.1  2.0 -2.0  -0.000511522   0.000000000   0.000000000   0.000045530  -0.000045535   0.000000000  -0.000000000  -0.000000031
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   62    2.1  2.0 -2.0   0.000240168  -0.000000000  -0.000000000   0.000000016  -0.000000003  -0.000000000   0.000000000   0.000020484
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   63    3.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000239936   0.000000000   0.000000000   0.000000013  -0.000000000  -0.000000000   0.000000000   0.000020459

   64    4.1  2.0 -2.0  -0.000000000   0.000020810   0.000036301  -0.000000000   0.000000000   0.000024424  -0.000024422   0.000000000
                         0.000000000   0.000008895   0.000015516  -0.000000000   0.000000000  -0.000004912   0.000004923  -0.000000000

   65    5.1  2.0 -2.0   0.000000000  -0.000008897  -0.000015520  -0.000000000   0.000000000  -0.000004910   0.000004921  -0.000000000
                         0.000000000   0.000020815   0.000036310  -0.000000000   0.000000000  -0.000024414   0.000024412  -0.000000000

   66    6.1  2.0 -2.0  -0.005112227  -0.000000000  -0.000000000   0.000000002  -0.000000002  -0.000000000   0.000000000   0.000000024
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   67    7.1  2.0 -2.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.005112815   0.000000000   0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000000  -0.000000080

   68    8.1  2.0 -2.0  -0.000000000   0.000000004   0.000000007  -0.000000000   0.000000000  -0.000000008   0.000000008   0.000000000
                         0.000000000  -0.000000009  -0.000000016   0.000000000  -0.000000000  -0.000000039   0.000000037  -0.000000000

   69    9.1  2.0 -2.0   0.000000000  -0.000000010  -0.000000017   0.000000000  -0.000000000   0.000000036  -0.000000037  -0.000000000
                         0.000000000  -0.000000004  -0.000000007   0.000000000  -0.000000000  -0.000000007   0.000000007  -0.000000000

   70   10.1  2.0 -2.0   0.000000000  -0.000000019  -0.000000033  -0.000000000   0.000000000   0.000000036  -0.000000037   0.000000000
                        -0.000000000  -0.000000008  -0.000000014   0.000000000  -0.000000000  -0.000000007   0.000000008  -0.000000000

   71   11.1  2.0 -2.0   0.000000000  -0.000000007  -0.000000013   0.000000000   0.000000000   0.000000008  -0.000000008  -0.000000000
                         0.000000000   0.000000017   0.000000030   0.000000000  -0.000000000   0.000000040  -0.000000038  -0.000000000

   72   12.1  2.0 -2.0   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.004873925   0.000000000   0.000000000  -0.000000173   0.000000173   0.000000000   0.000000000   0.000000002

   73   13.1  2.0 -2.0   0.000000000   0.138211959   0.241101744   0.000000000  -0.000000000  -0.025472848   0.025530134  -0.000000000
                        -0.000000000  -0.323352185  -0.564064134   0.000000000  -0.000000000  -0.126655070   0.126643113  -0.000000000

   74   14.1  2.0 -2.0  -0.000000000   0.323379741   0.564111897  -0.000000000   0.000000000  -0.126494858   0.126483809  -0.000000000
                        -0.000000000   0.138223738   0.241122159   0.000000000  -0.000000000   0.025440626  -0.025498020   0.000000000

   75   15.1  2.0 -2.0   0.000000000   0.000000000   0.000000000   0.000000025  -0.000000025  -0.000000000   0.000000000  -0.000000000
                        -0.000000300  -0.000000000  -0.000000000  -0.407921434   0.407959994  -0.000000000   0.000000000   0.000266041

   76    1.1  1.0  1.0  -0.000000000   0.000000140  -0.000000080  -0.000000000  -0.000000000  -0.000000034   0.000000039  -0.000000000
                        -0.000000000  -0.000000324   0.000000185  -0.000000000  -0.000000000  -0.000000169   0.000000196  -0.000000000

   77    2.1  1.0  1.0  -0.026670194   0.000000000  -0.000000000   0.000000172   0.000000378  -0.000000000   0.000000000  -0.000000174
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   78    3.1  1.0  1.0   0.000000000  -0.000000222   0.000000127   0.000000000   0.000000000   0.000000109  -0.000000274   0.000000000
                        -0.000000000  -0.000000096   0.000000055   0.000000000   0.000000000  -0.000000022   0.000000055  -0.000000000

   79    4.1  1.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.304901716  -0.000000000   0.000000000   0.000000261  -0.000000032   0.000000000  -0.000000000   0.000000140

   80    5.1  1.0  1.0  -0.000000000  -0.000000070   0.000000040  -0.000000000  -0.000000000   0.000000348   0.000000248  -0.000000000
                        -0.000000000  -0.000000030   0.000000017   0.000000000   0.000000000  -0.000000070  -0.000000050  -0.000000000

   81    6.1  1.0  1.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.238948617   0.000000000  -0.000000000   0.000000208   0.000000371   0.000000000  -0.000000000   0.000000198

   82    7.1  1.0  1.0  -0.461241572  -0.000000000   0.000000000  -0.000000300  -0.000000034  -0.000000000   0.000000000   0.000000159
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   83    1.1  1.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000000248   0.000000000   0.000000000  -0.000000000   0.000000024
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   84    2.1  1.0  0.0   0.000000000   0.000000136   0.000000036   0.000000000  -0.000000000  -0.000000009  -0.000000000  -0.000000000
                        -0.000000000  -0.000000315  -0.000000086   0.000000000  -0.000000000  -0.000000045  -0.000000000  -0.000000000

   85    3.1  1.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.499431091  -0.000000000   0.000000000   0.000000000   0.000000321  -0.000000000  -0.000000000  -0.000000000

   86    4.1  1.0  0.0  -0.000000000   0.000000121  -0.000000449   0.000000000   0.000000000   0.000000000  -0.000000056  -0.000000000
                         0.000000000   0.000000054  -0.000000193  -0.000000000   0.000000000   0.000000000   0.000000011  -0.000000000

   87    5.1  1.0  0.0   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.150737280  -0.000000000  -0.000000000   0.000000000   0.000000077   0.000000000  -0.000000000   0.000000000

   88    6.1  1.0  0.0  -0.000000000  -0.000000068   0.000000251   0.000000000   0.000000000  -0.000000000   0.000000030  -0.000000000
                         0.000000000  -0.000000030   0.000000108  -0.000000000   0.000000000  -0.000000000  -0.000000006  -0.000000000

   89    7.1  1.0  0.0  -0.000000000   0.000000175   0.000000046   0.000000000   0.000000000  -0.000000007  -0.000000000  -0.000000000
                         0.000000000  -0.000000406  -0.000000111   0.000000000  -0.000000000  -0.000000033  -0.000000000   0.000000000

   90    1.1  1.0 -1.0  -0.000000000  -0.000000079  -0.000000139   0.000000000  -0.000000000   0.000000034   0.000000039   0.000000000
                         0.000000000   0.000000186   0.000000324  -0.000000000   0.000000000   0.000000169   0.000000196  -0.000000000

   91    2.1  1.0 -1.0  -0.026670194  -0.000000000   0.000000000  -0.000000172   0.000000378  -0.000000000  -0.000000000   0.000000174
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   92    3.1  1.0 -1.0   0.000000000  -0.000000127  -0.000000222  -0.000000000   0.000000000   0.000000109   0.000000274  -0.000000000
                         0.000000000  -0.000000054  -0.000000095   0.000000000  -0.000000000  -0.000000022  -0.000000055  -0.000000000

   93    4.1  1.0 -1.0  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.304901716   0.000000000   0.000000000   0.000000261   0.000000032  -0.000000000  -0.000000000   0.000000140

   94    5.1  1.0 -1.0  -0.000000000  -0.000000041  -0.000000070   0.000000000  -0.000000000   0.000000348  -0.000000248   0.000000000
                         0.000000000  -0.000000017  -0.000000030   0.000000000  -0.000000000  -0.000000070   0.000000050  -0.000000000

   95    6.1  1.0 -1.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.238948617  -0.000000000   0.000000000   0.000000208  -0.000000371  -0.000000000  -0.000000000   0.000000198

   96    7.1  1.0 -1.0  -0.461241572  -0.000000000  -0.000000000   0.000000300  -0.000000034   0.000000000  -0.000000000  -0.000000159
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz       89            90            91            92            93            94            95            96

    1    1.1  2.0  2.0   0.000000015  -0.000000000   0.000000000   0.000032517   0.000032519   0.000000000  -0.000000000  -0.000000002
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  2.0  2.0  -0.000032470  -0.000000000   0.000000000   0.000000001   0.000000014  -0.000000000   0.000000000   0.000025194
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    3    3.1  2.0  2.0   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000032432  -0.000000000  -0.000000000  -0.000000000  -0.000000012   0.000000000  -0.000000000  -0.000025165

    4    4.1  2.0  2.0   0.000000000   0.000015837  -0.000015506   0.000000000   0.000000000   0.000004626  -0.000004496  -0.000000000
                         0.000000000  -0.000023040   0.000023265  -0.000000000  -0.000000000  -0.000011631   0.000011682  -0.000000000

    5    5.1  2.0  2.0  -0.000000000   0.000023041  -0.000023265   0.000000000   0.000000000   0.000011630  -0.000011681   0.000000000
                         0.000000000   0.000015838  -0.000015506   0.000000000   0.000000000   0.000004626  -0.000004496  -0.000000000

    6    6.1  2.0  2.0  -0.000000041  -0.000000000   0.000000000   0.000000004   0.000000004  -0.000000000   0.000000000   0.000000031
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    7    7.1  2.0  2.0  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000124   0.000000000  -0.000000000   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000093

    8    8.1  2.0  2.0  -0.000000000   0.000000011  -0.000000016  -0.000000000  -0.000000000  -0.000000039   0.000000042   0.000000000
                        -0.000000000   0.000000008  -0.000000010   0.000000000   0.000000000  -0.000000015   0.000000016   0.000000000

    9    9.1  2.0  2.0   0.000000000   0.000000010  -0.000000007   0.000000000   0.000000000  -0.000000017   0.000000015  -0.000000000
                        -0.000000000  -0.000000014   0.000000010   0.000000000  -0.000000000   0.000000042  -0.000000039   0.000000000

   10   10.1  2.0  2.0  -0.000000000   0.000000006  -0.000000005  -0.000000000  -0.000000000  -0.000000024   0.000000023   0.000000000
                         0.000000000  -0.000000009   0.000000008   0.000000000   0.000000000   0.000000061  -0.000000061  -0.000000000

   11   11.1  2.0  2.0   0.000000000  -0.000000010   0.000000011   0.000000000   0.000000000   0.000000060  -0.000000060  -0.000000000
                        -0.000000000  -0.000000007   0.000000008   0.000000000   0.000000000   0.000000024  -0.000000023   0.000000000

   12   12.1  2.0  2.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000004  -0.000000000   0.000000000  -0.000000126  -0.000000126   0.000000000  -0.000000000  -0.000000003

   13   13.1  2.0  2.0  -0.000000000   0.238057807  -0.240374274   0.000000000   0.000000000   0.359734540  -0.361308836   0.000000000
                         0.000000000   0.163635324  -0.160213284   0.000000000   0.000000000   0.143086584  -0.139064244  -0.000000000

   14   14.1  2.0  2.0  -0.000000000  -0.163635180   0.160213142  -0.000000000  -0.000000000  -0.143086500   0.139064162   0.000000000
                        -0.000000000   0.238057598  -0.240374062   0.000000000   0.000000000   0.359734328  -0.361308624   0.000000000

   15   15.1  2.0  2.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000220140  -0.000000000   0.000000000   0.577549418   0.577585743  -0.000000000   0.000000000   0.000000142

   16    1.1  2.0  1.0   0.000000000  -0.000013155   0.000013287  -0.000000000  -0.000000000  -0.000020182   0.000020268  -0.000000000
                        -0.000000000  -0.000009043   0.000008856  -0.000000000  -0.000000000  -0.000008027   0.000007801   0.000000000

   17    2.1  2.0  1.0  -0.000000000  -0.000023162  -0.000023384   0.000000000   0.000000000   0.000011710   0.000011764   0.000000000
                         0.000000000  -0.000015921  -0.000015586  -0.000000000  -0.000000000   0.000004658   0.000004528  -0.000000000

   18    3.1  2.0  1.0  -0.000000000  -0.000015901  -0.000015568   0.000000000  -0.000000000   0.000004653   0.000004522   0.000000000
                         0.000000000   0.000023133   0.000023358   0.000000000   0.000000000  -0.000011698  -0.000011749  -0.000000000

   19    4.1  2.0  1.0  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000016123   0.000000000   0.000000000   0.000027944   0.000027952   0.000000000  -0.000000000  -0.000012526

   20    5.1  2.0  1.0   0.000016144  -0.000000000  -0.000000000   0.000027944   0.000027940  -0.000000000   0.000000000   0.000012527
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   21    6.1  2.0  1.0  -0.000000000  -0.000000024  -0.000000026  -0.000000000  -0.000000000   0.000000011   0.000000013  -0.000000000
                         0.000000000  -0.000000017  -0.000000018  -0.000000000  -0.000000000   0.000000004   0.000000005  -0.000000000

   22    7.1  2.0  1.0   0.000000000   0.000000058   0.000000057  -0.000000000  -0.000000000  -0.000000015  -0.000000016  -0.000000000
                         0.000000000  -0.000000084  -0.000000086   0.000000000   0.000000000   0.000000039   0.000000043  -0.000000000

   23    8.1  2.0  1.0  -0.000000009  -0.000000000   0.000000000   0.000000048   0.000000043   0.000000000  -0.000000000   0.000000072
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   24    9.1  2.0  1.0   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000009  -0.000000000   0.000000000   0.000000047   0.000000041  -0.000000000   0.000000000  -0.000000071

   25   10.1  2.0  1.0   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000023   0.000000000  -0.000000000   0.000000045   0.000000044   0.000000000   0.000000000  -0.000000095

   26   11.1  2.0  1.0   0.000000021   0.000000000   0.000000000  -0.000000048  -0.000000047   0.000000000  -0.000000000  -0.000000097
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   27   12.1  2.0  1.0  -0.000000000   0.000000037  -0.000000040  -0.000000000  -0.000000000  -0.000000090   0.000000089  -0.000000000
                        -0.000000000  -0.000000054   0.000000060   0.000000000   0.000000000   0.000000227  -0.000000231  -0.000000000

   28   13.1  2.0  1.0   0.499890237  -0.000000000  -0.000000000  -0.288448493  -0.288657184   0.000000000   0.000000000  -0.387191085
                        -0.000000016   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000064

   29   14.1  2.0  1.0   0.000000016  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000064
                         0.500109687  -0.000000000  -0.000000000   0.288448696   0.288276289   0.000000000   0.000000000  -0.387190715

   30   15.1  2.0  1.0  -0.000000000  -0.163533610   0.160113450  -0.000000000  -0.000000000   0.143238117  -0.139211569  -0.000000000
                        -0.000000000   0.237909834  -0.240224490   0.000000000   0.000000000  -0.360115510   0.361691607  -0.000000000

   31    1.1  2.0  0.0  -0.000045425   0.000000000   0.000000000  -0.000000000   0.000000021  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   32    2.1  2.0  0.0  -0.000000021   0.000000000  -0.000000000   0.000000001  -0.000045879   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   33    3.1  2.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000045823  -0.000000001  -0.000000000  -0.000000000  -0.000000000

   34    4.1  2.0  0.0   0.000000000  -0.000012926   0.000000000  -0.000000000  -0.000000000   0.000011342  -0.000000000  -0.000000000
                        -0.000000000   0.000018805   0.000000000   0.000000000  -0.000000000  -0.000028515   0.000000000  -0.000000000

   35    5.1  2.0  0.0  -0.000000000  -0.000000000  -0.000018989   0.000000000  -0.000000000   0.000000000   0.000028640   0.000000000
                        -0.000000000   0.000000000  -0.000012656  -0.000000000   0.000000000   0.000000000   0.000011023   0.000000000

   36    6.1  2.0  0.0   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000041   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   37    7.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000161   0.000000000  -0.000000000  -0.000000000   0.000000003

   38    8.1  2.0  0.0   0.000000000  -0.000000000  -0.000000052   0.000000000  -0.000000000   0.000000000   0.000000075  -0.000000000
                         0.000000000   0.000000000  -0.000000035   0.000000000  -0.000000000   0.000000000   0.000000029   0.000000000

   39    9.1  2.0  0.0  -0.000000000  -0.000000035   0.000000000   0.000000000   0.000000000   0.000000029  -0.000000000   0.000000000
                        -0.000000000   0.000000050   0.000000000   0.000000000   0.000000000  -0.000000074   0.000000000   0.000000000

   40   10.1  2.0  0.0   0.000000000  -0.000000044   0.000000000   0.000000000  -0.000000000   0.000000035  -0.000000000   0.000000000
                         0.000000000   0.000000063   0.000000000   0.000000000  -0.000000000  -0.000000088   0.000000000   0.000000000

   41   11.1  2.0  0.0   0.000000000   0.000000000   0.000000066   0.000000000   0.000000000  -0.000000000  -0.000000092  -0.000000000
                        -0.000000000  -0.000000000   0.000000044   0.000000000   0.000000000  -0.000000000  -0.000000035   0.000000000

   42   12.1  2.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000005  -0.000000000  -0.000000000  -0.000000000  -0.000000407

   43   13.1  2.0  0.0   0.000000000   0.000000004   0.588106663   0.000000000  -0.000000000  -0.000000159  -0.295223154  -0.000000000
                        -0.000000000  -0.000000029   0.391982430  -0.000000000   0.000000000  -0.000000033  -0.113628480  -0.000000000

   44   14.1  2.0  0.0  -0.000000000  -0.400354936   0.000000015  -0.000000000  -0.000000000   0.116915071  -0.000000084  -0.000000000
                        -0.000000000   0.582439193   0.000000026   0.000000000   0.000000000  -0.293936715   0.000000139  -0.000000000

   45   15.1  2.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000105
                        -0.000000000  -0.000000000   0.000000000  -0.000000364  -0.000000000  -0.000000000  -0.000000000   0.632718598

   46    1.1  2.0 -1.0  -0.000000000  -0.000013155  -0.000013287  -0.000000000   0.000000000  -0.000020182  -0.000020268  -0.000000000
                        -0.000000000  -0.000009043  -0.000008856   0.000000000  -0.000000000  -0.000008027  -0.000007801  -0.000000000

   47    2.1  2.0 -1.0   0.000000000  -0.000023162   0.000023384   0.000000000  -0.000000000   0.000011710  -0.000011764   0.000000000
                         0.000000000  -0.000015921   0.000015586   0.000000000  -0.000000000   0.000004658  -0.000004528   0.000000000

   48    3.1  2.0 -1.0   0.000000000   0.000015901  -0.000015568   0.000000000   0.000000000  -0.000004653   0.000004522   0.000000000
                         0.000000000  -0.000023133   0.000023358  -0.000000000   0.000000000   0.000011698  -0.000011749   0.000000000

   49    4.1  2.0 -1.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000016123   0.000000000   0.000000000  -0.000027946   0.000027951  -0.000000000  -0.000000000   0.000012526

   50    5.1  2.0 -1.0  -0.000016144   0.000000000   0.000000000   0.000027946  -0.000027939  -0.000000000  -0.000000000   0.000012527
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   51    6.1  2.0 -1.0   0.000000000  -0.000000024   0.000000026  -0.000000000   0.000000000   0.000000011  -0.000000013  -0.000000000
                         0.000000000  -0.000000017   0.000000018   0.000000000  -0.000000000   0.000000004  -0.000000005   0.000000000

   52    7.1  2.0 -1.0  -0.000000000  -0.000000058   0.000000057  -0.000000000   0.000000000   0.000000015  -0.000000016  -0.000000000
                         0.000000000   0.000000084  -0.000000086  -0.000000000   0.000000000  -0.000000039   0.000000043   0.000000000

   53    8.1  2.0 -1.0   0.000000009  -0.000000000   0.000000000   0.000000048  -0.000000043   0.000000000  -0.000000000   0.000000072
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   54    9.1  2.0 -1.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000009   0.000000000  -0.000000000  -0.000000047   0.000000041  -0.000000000  -0.000000000   0.000000071

   55   10.1  2.0 -1.0   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000023   0.000000000   0.000000000  -0.000000045   0.000000044   0.000000000   0.000000000   0.000000095

   56   11.1  2.0 -1.0  -0.000000021  -0.000000000   0.000000000  -0.000000048   0.000000047  -0.000000000  -0.000000000  -0.000000097
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   57   12.1  2.0 -1.0   0.000000000  -0.000000037  -0.000000040  -0.000000000   0.000000000   0.000000090   0.000000089  -0.000000000
                        -0.000000000   0.000000054   0.000000060  -0.000000000   0.000000000  -0.000000227  -0.000000231   0.000000000

   58   13.1  2.0 -1.0  -0.499890237   0.000000000   0.000000000  -0.288466668   0.288639021   0.000000000   0.000000000  -0.387191085
                         0.000000016  -0.000000000   0.000000000   0.000000011  -0.000000011   0.000000000  -0.000000000  -0.000000064

   59   14.1  2.0 -1.0   0.000000016  -0.000000000  -0.000000000  -0.000000011   0.000000011   0.000000000  -0.000000000  -0.000000064
                         0.500109687  -0.000000000  -0.000000000  -0.288466847   0.288258126  -0.000000000  -0.000000000   0.387190715

   60   15.1  2.0 -1.0   0.000000000   0.163533586   0.160113438  -0.000000000   0.000000000  -0.143238197  -0.139211364  -0.000000000
                        -0.000000000  -0.237909837  -0.240224511  -0.000000000   0.000000000   0.360115899   0.361691267   0.000000000

   61    1.1  2.0 -2.0   0.000000015   0.000000000   0.000000000  -0.000032519   0.000032517  -0.000000000  -0.000000000   0.000000002
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   62    2.1  2.0 -2.0  -0.000032470  -0.000000000  -0.000000000  -0.000000001   0.000000014   0.000000000   0.000000000  -0.000025194
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   63    3.1  2.0 -2.0  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000032432   0.000000000   0.000000000  -0.000000000   0.000000012   0.000000000   0.000000000  -0.000025165

   64    4.1  2.0 -2.0   0.000000000   0.000015837   0.000015506  -0.000000000   0.000000000   0.000004626   0.000004496   0.000000000
                        -0.000000000  -0.000023040  -0.000023265  -0.000000000   0.000000000  -0.000011631  -0.000011682  -0.000000000

   65    5.1  2.0 -2.0  -0.000000000  -0.000023041  -0.000023265  -0.000000000   0.000000000  -0.000011630  -0.000011681  -0.000000000
                        -0.000000000  -0.000015838  -0.000015506   0.000000000  -0.000000000  -0.000004626  -0.000004496  -0.000000000

   66    6.1  2.0 -2.0  -0.000000041  -0.000000000  -0.000000000  -0.000000004   0.000000004  -0.000000000  -0.000000000  -0.000000031
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   67    7.1  2.0 -2.0   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000124  -0.000000000  -0.000000000   0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000093

   68    8.1  2.0 -2.0  -0.000000000  -0.000000011  -0.000000016   0.000000000  -0.000000000   0.000000039   0.000000042  -0.000000000
                         0.000000000  -0.000000008  -0.000000010   0.000000000  -0.000000000   0.000000015   0.000000016   0.000000000

   69    9.1  2.0 -2.0   0.000000000   0.000000010   0.000000007  -0.000000000   0.000000000  -0.000000017  -0.000000015   0.000000000
                         0.000000000  -0.000000014  -0.000000010   0.000000000   0.000000000   0.000000042   0.000000039   0.000000000

   70   10.1  2.0 -2.0  -0.000000000   0.000000006   0.000000005   0.000000000  -0.000000000  -0.000000024  -0.000000023  -0.000000000
                         0.000000000  -0.000000009  -0.000000008   0.000000000  -0.000000000   0.000000061   0.000000061  -0.000000000

   71   11.1  2.0 -2.0   0.000000000   0.000000010   0.000000011  -0.000000000   0.000000000  -0.000000060  -0.000000060   0.000000000
                         0.000000000   0.000000007   0.000000008   0.000000000  -0.000000000  -0.000000024  -0.000000023   0.000000000

   72   12.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000004  -0.000000000  -0.000000000  -0.000000126   0.000000126   0.000000000   0.000000000  -0.000000003

   73   13.1  2.0 -2.0  -0.000000000  -0.238057811  -0.240374295  -0.000000000   0.000000000  -0.359734928  -0.361308496  -0.000000000
                        -0.000000000  -0.163635300  -0.160213272   0.000000000  -0.000000000  -0.143086664  -0.139064039  -0.000000000

   74   14.1  2.0 -2.0  -0.000000000  -0.163635156  -0.160213130   0.000000000  -0.000000000  -0.143086580  -0.139063958  -0.000000000
                         0.000000000   0.238057601   0.240374083   0.000000000  -0.000000000   0.359734717   0.361308284   0.000000000

   75   15.1  2.0 -2.0  -0.000000000   0.000000000   0.000000000   0.000000021  -0.000000021  -0.000000000  -0.000000000   0.000000000
                        -0.000220140   0.000000000   0.000000000   0.577585785  -0.577549376  -0.000000000  -0.000000000   0.000000142

   76    1.1  1.0  1.0   0.000000000   0.000000052   0.000000040   0.000000000   0.000000000   0.000000020   0.000000024  -0.000000000
                         0.000000000   0.000000036   0.000000027  -0.000000000  -0.000000000   0.000000008   0.000000009  -0.000000000

   77    2.1  1.0  1.0  -0.000000082   0.000000000  -0.000000000  -0.000000260  -0.000000107   0.000000000  -0.000000000   0.000000076
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   78    3.1  1.0  1.0  -0.000000000  -0.000000069  -0.000000012  -0.000000000  -0.000000000  -0.000000015   0.000000004   0.000000000
                         0.000000000   0.000000100   0.000000018  -0.000000000  -0.000000000   0.000000038  -0.000000011  -0.000000000

   79    4.1  1.0  1.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000096  -0.000000000   0.000000000  -0.000000026  -0.000000244  -0.000000000   0.000000000  -0.000000078

   80    5.1  1.0  1.0  -0.000000000   0.000000101  -0.000000118   0.000000000   0.000000000   0.000000038  -0.000000040  -0.000000000
                        -0.000000000  -0.000000147   0.000000178   0.000000000   0.000000000  -0.000000095   0.000000104   0.000000000

   81    6.1  1.0  1.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000101   0.000000000  -0.000000000  -0.000000264  -0.000000143   0.000000000  -0.000000000  -0.000000091

   82    7.1  1.0  1.0   0.000000114   0.000000000  -0.000000000   0.000000084   0.000000281   0.000000000  -0.000000000  -0.000000102
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   83    1.1  1.0  0.0   0.000000000   0.000000000  -0.000000000   0.000000269   0.000000000  -0.000000000   0.000000000   0.000000007
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   84    2.1  1.0  0.0  -0.000000000   0.000000024   0.000000000   0.000000000   0.000000000   0.000000151  -0.000000000   0.000000000
                        -0.000000000   0.000000016  -0.000000000   0.000000000   0.000000000   0.000000060  -0.000000000   0.000000000

   85    3.1  1.0  0.0   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000202   0.000000000  -0.000000000  -0.000000000

   86    4.1  1.0  0.0   0.000000000  -0.000000000  -0.000000033   0.000000000   0.000000000   0.000000000   0.000000046   0.000000000
                        -0.000000000  -0.000000000   0.000000049   0.000000000   0.000000000  -0.000000000  -0.000000119  -0.000000000

   87    5.1  1.0  0.0  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000030   0.000000000  -0.000000000   0.000000000  -0.000000061  -0.000000000   0.000000000   0.000000000

   88    6.1  1.0  0.0   0.000000000  -0.000000000   0.000000009  -0.000000000  -0.000000000   0.000000000   0.000000066   0.000000000
                         0.000000000  -0.000000000  -0.000000013   0.000000000  -0.000000000  -0.000000000  -0.000000171  -0.000000000

   89    7.1  1.0  0.0   0.000000000   0.000000061   0.000000000   0.000000000  -0.000000000  -0.000000160   0.000000000  -0.000000000
                        -0.000000000   0.000000042  -0.000000000   0.000000000  -0.000000000  -0.000000064   0.000000000   0.000000000

   90    1.1  1.0 -1.0   0.000000000  -0.000000052   0.000000040  -0.000000000   0.000000000  -0.000000020   0.000000024   0.000000000
                        -0.000000000  -0.000000036   0.000000027  -0.000000000   0.000000000  -0.000000008   0.000000009  -0.000000000

   91    2.1  1.0 -1.0  -0.000000082   0.000000000   0.000000000   0.000000260  -0.000000107   0.000000000   0.000000000  -0.000000076
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   92    3.1  1.0 -1.0  -0.000000000  -0.000000069   0.000000012   0.000000000  -0.000000000  -0.000000015  -0.000000004  -0.000000000
                        -0.000000000   0.000000100  -0.000000018  -0.000000000   0.000000000   0.000000038   0.000000011  -0.000000000

   93    4.1  1.0 -1.0  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000096   0.000000000  -0.000000000  -0.000000026   0.000000244  -0.000000000   0.000000000  -0.000000078

   94    5.1  1.0 -1.0  -0.000000000   0.000000101   0.000000118  -0.000000000   0.000000000   0.000000038   0.000000040   0.000000000
                         0.000000000  -0.000000147  -0.000000178   0.000000000  -0.000000000  -0.000000095  -0.000000104   0.000000000

   95    6.1  1.0 -1.0  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000101   0.000000000   0.000000000  -0.000000264   0.000000143   0.000000000   0.000000000  -0.000000091

   96    7.1  1.0 -1.0   0.000000114   0.000000000   0.000000000  -0.000000084   0.000000281   0.000000000   0.000000000   0.000000102
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%  10.749%   0.000%   0.000%  10.766%  25.001%
    2    2.1  2.0  2.0  25.716%  25.031%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0  22.401%  24.967%   3.283%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.015%   5.790%   0.000%   8.445%  14.232%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   5.792%   0.015%   0.000%  14.232%   8.443%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%  19.229%  19.234%   0.000%   2.257%   2.260%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   5.822%   5.817%   0.000%   8.530%   8.527%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.013%   0.014%   0.000%  14.293%  14.293%   0.000%   0.000%
   19    4.1  2.0  1.0   0.441%   0.000%  10.901%   0.000%   0.000%  14.311%   0.000%   0.000%  14.260%   0.000%
   20    5.1  2.0  1.0   0.443%   0.000%  11.018%   0.000%   0.000%  14.193%   0.000%   0.000%  14.260%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    7.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    8.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    9.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25   10.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26   11.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   12.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   1.994%   0.000%  49.543%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  21.491%   0.000%   0.000%   0.000%  49.997%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  21.425%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  38.258%   0.000%   4.481%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%  38.254%   0.000%   0.000%   0.000%   4.485%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%  19.229%  19.234%   0.000%   2.257%   2.260%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   5.822%   5.817%   0.000%   8.530%   8.527%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.013%   0.014%   0.000%  14.293%  14.293%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.441%   0.000%  10.901%   0.000%   0.000%  14.311%   0.000%   0.000%  14.260%   0.000%
   50    5.1  2.0 -1.0   0.443%   0.000%  11.018%   0.000%   0.000%  14.193%   0.000%   0.000%  14.260%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    8.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   10.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   11.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%  10.749%   0.000%   0.000%  10.766%  25.001%
   62    2.1  2.0 -2.0  25.716%  25.031%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0  22.401%  24.967%   3.283%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.015%   5.790%   0.000%   8.445%  14.232%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   5.792%   0.015%   0.000%  14.232%   8.443%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%
   77    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   79    4.1  1.0  1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  1.0  1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    5.1  1.0  0.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%
   91    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   93    4.1  1.0 -1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  2.0  2.0  25.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.250%  14.214%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   5.011%  14.289%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   5.034%  14.327%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.003%  18.570%   1.420%  19.989%   0.000%   0.000%   0.000%   0.000%  10.740%
    5    5.1  2.0  2.0   0.000%  18.570%   0.003%  19.989%   1.419%   0.000%   0.000%   0.000%   0.000%  10.759%
    6    6.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   6.404%   6.402%   3.605%   3.606%   0.000%   0.000%   0.000%   0.000%   3.531%
   17    2.1  2.0  1.0   0.000%  18.630%  18.633%   1.382%   1.382%   0.000%   0.000%   0.000%   0.000%  10.657%
   18    3.1  2.0  1.0   0.000%   0.006%   0.006%  19.987%  19.987%   0.000%   0.000%   0.000%   0.000%  10.704%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  19.977%   3.561%  10.759%  10.739%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  19.977%   3.585%  10.736%  10.739%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    7.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    8.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    9.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25   10.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26   11.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   12.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.476%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.510%   0.000%   0.000%
   33    3.1  2.0  0.0  49.960%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.614%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%  12.772%   7.235%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%  12.770%   0.000%   0.000%   7.236%   0.000%   0.000%   0.000%   0.000%   7.216%
   36    6.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   6.404%   6.402%   3.605%   3.606%   0.000%   0.000%   0.000%   0.000%   3.531%
   47    2.1  2.0 -1.0   0.000%  18.630%  18.633%   1.382%   1.382%   0.000%   0.000%   0.000%   0.000%  10.657%
   48    3.1  2.0 -1.0   0.000%   0.006%   0.006%  19.987%  19.987%   0.000%   0.000%   0.000%   0.000%  10.704%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  19.977%   3.561%  10.759%  10.739%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  19.977%   3.585%  10.736%  10.739%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    8.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   10.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   11.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0  25.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.250%  14.214%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   5.011%  14.289%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   5.034%  14.327%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.003%  18.570%   1.420%  19.989%   0.000%   0.000%   0.000%   0.000%  10.740%
   65    5.1  2.0 -2.0   0.000%  18.570%   0.003%  19.989%   1.419%   0.000%   0.000%   0.000%   0.000%  10.759%
   66    6.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%  19.957%   0.000%   0.000%   9.970%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%  19.998%   0.000%   0.000%   9.988%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0  10.759%   0.000%   5.020%   5.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0  10.740%   0.000%   5.016%   5.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%  15.735%  15.003%   0.000%   0.000%   0.000%
    7    7.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%  13.963%  15.000%   0.000%   0.000%   0.000%
    8    8.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.456%   7.236%  16.893%
    9    9.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.266%   1.278%  22.422%
   10   10.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.624%   8.084%   0.036%
   11   11.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.955%   4.711%   5.563%
   12   12.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   3.530%   0.000%  14.968%  14.970%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0  10.659%   0.000%   4.982%   4.980%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0  10.704%   0.000%   4.995%   4.995%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   5.023%   0.000%   0.000%  10.025%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   5.022%   0.000%   0.000%  10.025%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.228%  12.842%   2.026%
   22    7.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.218%   9.362%   2.042%
   23    8.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   9.744%   9.169%   0.000%   0.000%   0.000%
   24    9.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   9.746%   9.288%   0.000%   0.000%   0.000%
   25   10.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.273%   0.740%   0.000%   0.000%   0.000%
   26   11.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.275%   0.799%   0.000%   0.000%   0.000%
   27   12.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.435%   0.456%   0.000%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  19.985%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   7.216%   0.000%   0.000%  30.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%  30.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.619%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.058%   1.869%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.165%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.527%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   3.530%   0.000%  14.968%  14.970%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0  10.659%   0.000%   4.982%   4.980%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0  10.704%   0.000%   4.995%   4.995%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   5.023%   0.000%   0.000%  10.025%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   5.022%   0.000%   0.000%  10.025%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.228%  12.842%   2.026%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.218%   9.362%   2.042%
   53    8.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   9.744%   9.169%   0.000%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   9.746%   9.288%   0.000%   0.000%   0.000%
   55   10.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.273%   0.740%   0.000%   0.000%   0.000%
   56   11.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.275%   0.799%   0.000%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.435%   0.456%   0.000%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%  19.957%   0.000%   0.000%   9.970%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%  19.998%   0.000%   0.000%   9.988%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0  10.759%   0.000%   5.020%   5.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0  10.740%   0.000%   5.016%   5.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%  15.735%  15.003%   0.000%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%  13.963%  15.000%   0.000%   0.000%   0.000%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.456%   7.236%  16.893%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.266%   1.278%  22.422%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.624%   8.084%   0.036%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.955%   4.711%   5.563%
   72   12.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.459%   8.351%   9.981%   0.000%   0.000%
    7    7.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   2.229%  11.556%   9.978%   0.000%   0.000%
    8    8.1  2.0  2.0  19.238%   0.000%   0.000%   0.024%   0.080%   0.000%   0.000%   0.000%   0.621%   0.018%
    9    9.1  2.0  2.0  11.870%   0.000%   0.000%   0.077%   0.021%   0.000%   0.000%   0.000%   0.030%   0.598%
   10   10.1  2.0  2.0   7.637%   0.000%   0.000%   0.761%   3.394%   0.000%   0.000%   0.000%   4.593%  18.446%
   11   11.1  2.0  2.0   0.177%   0.000%   0.000%   3.386%   0.750%   0.000%   0.000%   0.000%  18.243%   4.291%
   12   12.1  2.0  2.0   0.000%   8.327%   8.329%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   4.627%   0.000%   0.000%   1.342%   1.328%   0.000%   0.000%   0.000%   5.025%   5.229%
   22    7.1  2.0  1.0   4.210%   0.000%   0.000%   4.766%   4.789%   0.000%   0.000%   0.000%   0.044%   0.075%
   23    8.1  2.0  1.0   0.000%   3.515%   0.011%   0.000%   0.000%   0.401%  14.446%  13.687%   0.000%   0.000%
   24    9.1  2.0  1.0   0.000%   3.394%   0.011%   0.000%   0.000%   0.400%  14.626%  13.955%   0.000%   0.000%
   25   10.1  2.0  1.0   0.000%   9.908%  13.308%   0.000%   0.000%  11.499%   0.477%   1.147%   0.000%   0.000%
   26   11.1  2.0  1.0   0.000%   9.847%  13.335%   0.000%   0.000%  11.470%   0.452%   1.159%   0.000%   0.000%
   27   12.1  2.0  1.0   0.016%   0.000%   0.000%  18.591%  18.586%   0.000%   0.000%   0.000%   1.841%   2.009%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%  30.018%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%  30.013%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   38    8.1  2.0  0.0   4.293%   0.000%   0.000%   1.701%   0.000%   0.000%   0.000%   0.000%   0.000%  38.389%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   1.680%   0.000%   0.000%   0.000%  38.875%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  40.422%   0.000%   0.000%   0.000%   0.151%   0.000%
   41   11.1  2.0  0.0   0.160%   0.000%   0.000%  40.406%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  47.086%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   4.627%   0.000%   0.000%   1.342%   1.328%   0.000%   0.000%   0.000%   5.025%   5.229%
   52    7.1  2.0 -1.0   4.210%   0.000%   0.000%   4.766%   4.789%   0.000%   0.000%   0.000%   0.044%   0.075%
   53    8.1  2.0 -1.0   0.000%   3.515%   0.011%   0.000%   0.000%   0.401%  14.446%  13.687%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.000%   3.394%   0.011%   0.000%   0.000%   0.400%  14.626%  13.955%   0.000%   0.000%
   55   10.1  2.0 -1.0   0.000%   9.908%  13.308%   0.000%   0.000%  11.499%   0.477%   1.147%   0.000%   0.000%
   56   11.1  2.0 -1.0   0.000%   9.847%  13.335%   0.000%   0.000%  11.470%   0.452%   1.159%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.016%   0.000%   0.000%  18.591%  18.586%   0.000%   0.000%   0.000%   1.841%   2.009%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.459%   8.351%   9.981%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   2.229%  11.556%   9.978%   0.000%   0.000%
   68    8.1  2.0 -2.0  19.238%   0.000%   0.000%   0.024%   0.080%   0.000%   0.000%   0.000%   0.621%   0.018%
   69    9.1  2.0 -2.0  11.870%   0.000%   0.000%   0.077%   0.021%   0.000%   0.000%   0.000%   0.030%   0.598%
   70   10.1  2.0 -2.0   7.637%   0.000%   0.000%   0.761%   3.394%   0.000%   0.000%   0.000%   4.593%  18.446%
   71   11.1  2.0 -2.0   0.177%   0.000%   0.000%   3.386%   0.750%   0.000%   0.000%   0.000%  18.243%   4.291%
   72   12.1  2.0 -2.0   0.000%   8.327%   8.329%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.018%
   77    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.017%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.028%
   79    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.034%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%
   81    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.010%   0.000%   0.000%
   82    7.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.031%   0.028%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.054%
   87    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.018%
   91    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.017%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.028%
   93    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.034%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%
   95    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.010%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.031%   0.028%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   8.677%   0.084%   0.000%   0.000%   0.001%   0.000%   0.000%  16.642%   0.000%   0.000%
    7    7.1  2.0  2.0   5.485%   0.071%   0.000%   0.000%   0.001%   0.000%   0.000%  16.646%   0.000%   0.000%
    8    8.1  2.0  2.0   0.000%   0.000%   0.405%   3.955%   0.000%   0.007%   0.093%   0.000%   1.399%   8.360%
    9    9.1  2.0  2.0   0.000%   0.000%   3.937%   0.426%   0.000%   0.095%   0.009%   0.000%   8.352%   1.399%
   10   10.1  2.0  2.0   0.000%   0.000%  12.117%   1.211%   0.000%   7.395%   1.808%   0.000%   8.134%   9.417%
   11   11.1  2.0  2.0   0.000%   0.000%   1.411%  12.413%   0.000%   1.835%   7.452%   0.000%   9.363%   8.101%
   12   12.1  2.0  2.0   0.233%  21.156%   0.000%   0.000%  21.384%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   4.956%   4.753%   0.000%  13.718%  13.761%   0.000%   2.876%   2.919%
   22    7.1  2.0  1.0   0.000%   0.000%   9.939%   9.909%   0.000%   6.659%   6.603%   0.000%  10.032%   9.977%
   23    8.1  2.0  1.0   0.375%   3.777%   0.000%   0.000%   5.752%   0.000%   0.000%   0.121%   0.000%   0.000%
   24    9.1  2.0  1.0   0.991%   2.982%   0.000%   0.000%   5.486%   0.000%   0.000%   0.135%   0.000%   0.000%
   25   10.1  2.0  1.0  15.679%   3.749%   0.000%   0.000%   0.095%   0.000%   0.000%   1.543%   0.000%   0.000%
   26   11.1  2.0  1.0  18.283%   1.170%   0.000%   0.000%   0.085%   0.000%   0.000%   1.523%   0.000%   0.000%
   27   12.1  2.0  1.0   0.000%   0.000%   8.857%   8.689%   0.000%   0.084%   0.086%   0.000%   1.575%   1.578%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.372%  33.841%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  34.217%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   3.888%   0.000%   0.000%  39.412%   0.000%   0.135%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   3.410%   0.000%   0.000%  39.431%   0.000%   0.000%   0.000%   0.121%
   40   10.1  2.0  0.0   0.000%   0.000%  13.164%   0.000%   0.000%   0.821%   0.000%   0.000%   0.000%  16.212%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%  13.221%   0.000%   0.000%   0.801%   0.000%  16.238%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  26.617%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   4.956%   4.753%   0.000%  13.718%  13.761%   0.000%   2.876%   2.919%
   52    7.1  2.0 -1.0   0.000%   0.000%   9.939%   9.909%   0.000%   6.659%   6.603%   0.000%  10.032%   9.977%
   53    8.1  2.0 -1.0   0.375%   3.777%   0.000%   0.000%   5.752%   0.000%   0.000%   0.121%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.991%   2.982%   0.000%   0.000%   5.486%   0.000%   0.000%   0.135%   0.000%   0.000%
   55   10.1  2.0 -1.0  15.679%   3.749%   0.000%   0.000%   0.095%   0.000%   0.000%   1.543%   0.000%   0.000%
   56   11.1  2.0 -1.0  18.283%   1.170%   0.000%   0.000%   0.085%   0.000%   0.000%   1.523%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.000%   0.000%   8.857%   8.689%   0.000%   0.084%   0.086%   0.000%   1.575%   1.578%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   8.677%   0.084%   0.000%   0.000%   0.001%   0.000%   0.000%  16.642%   0.000%   0.000%
   67    7.1  2.0 -2.0   5.485%   0.071%   0.000%   0.000%   0.001%   0.000%   0.000%  16.646%   0.000%   0.000%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.405%   3.955%   0.000%   0.007%   0.093%   0.000%   1.399%   8.360%
   69    9.1  2.0 -2.0   0.000%   0.000%   3.937%   0.426%   0.000%   0.095%   0.009%   0.000%   8.352%   1.399%
   70   10.1  2.0 -2.0   0.000%   0.000%  12.117%   1.211%   0.000%   7.395%   1.808%   0.000%   8.134%   9.417%
   71   11.1  2.0 -2.0   0.000%   0.000%   1.411%  12.413%   0.000%   1.835%   7.452%   0.000%   9.363%   8.101%
   72   12.1  2.0 -2.0   0.233%  21.156%   0.000%   0.000%  21.384%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.019%   0.020%   0.000%   0.005%   0.005%   0.000%   0.022%   0.022%
   77    2.1  1.0  1.0   0.017%   0.007%   0.000%   0.000%   0.021%   0.000%   0.000%   0.026%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.001%   0.004%   0.000%   0.012%   0.018%   0.000%   0.023%   0.002%
   79    4.1  1.0  1.0   0.001%   0.013%   0.000%   0.000%   0.001%   0.000%   0.000%   0.009%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.026%   0.023%   0.000%   0.006%   0.000%   0.000%   0.026%   0.047%
   81    6.1  1.0  1.0   0.014%   0.017%   0.000%   0.000%   0.024%   0.000%   0.000%   0.031%   0.000%   0.000%
   82    7.1  1.0  1.0   0.006%   0.014%   0.000%   0.000%   0.004%   0.000%   0.000%   0.015%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.077%   0.000%   0.000%   0.052%   0.000%   0.000%   0.000%   0.002%
   85    3.1  1.0  0.0   0.013%   0.066%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.081%   0.000%   0.016%   0.000%
   87    5.1  1.0  0.0   0.089%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.083%   0.000%   0.000%   0.035%   0.000%   0.004%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.010%   0.000%   0.000%   0.065%   0.000%   0.000%   0.000%   0.017%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.019%   0.020%   0.000%   0.005%   0.005%   0.000%   0.022%   0.022%
   91    2.1  1.0 -1.0   0.017%   0.007%   0.000%   0.000%   0.021%   0.000%   0.000%   0.026%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.001%   0.004%   0.000%   0.012%   0.018%   0.000%   0.023%   0.002%
   93    4.1  1.0 -1.0   0.001%   0.013%   0.000%   0.000%   0.001%   0.000%   0.000%   0.009%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.026%   0.023%   0.000%   0.006%   0.000%   0.000%   0.026%   0.047%
   95    6.1  1.0 -1.0   0.014%   0.017%   0.000%   0.000%   0.024%   0.000%   0.000%   0.031%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.006%   0.014%   0.000%   0.000%   0.004%   0.000%   0.000%   0.015%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.000%  17.775%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%   7.137%
    7    7.1  2.0  2.0   0.000%   0.000%  17.779%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%   7.139%
    8    8.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   4.962%  12.337%   8.462%  11.415%   0.000%
    9    9.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%  12.333%   4.967%  11.416%   8.466%   0.000%
   10   10.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   1.944%   9.312%   0.009%   2.960%   0.000%
   11   11.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   9.317%   1.940%   2.964%   0.009%   0.000%
   12   12.1  2.0  2.0  16.645%  16.642%   0.013%   3.561%   3.572%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.140%   7.140%   0.000%
   22    7.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.142%   7.142%   0.000%
   23    8.1  2.0  1.0  14.383%   5.783%   0.284%  12.598%   4.957%   0.000%   0.000%   0.000%   0.000%   0.881%
   24    9.1  2.0  1.0  14.365%   5.789%   0.897%  11.979%   4.962%   0.000%   0.000%   0.000%   0.000%   0.879%
   25   10.1  2.0  1.0   2.255%  10.849%   6.998%   1.540%   9.312%   0.000%   0.000%   0.000%   0.000%  10.552%
   26   11.1  2.0  1.0   2.270%  10.855%   6.151%   2.382%   9.317%   0.000%   0.000%   0.000%   0.000%  10.549%
   27   12.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.273%  14.273%   4.292%   4.292%   0.000%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%   0.000%   0.125%  35.551%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  35.678%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.099%   1.322%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   1.096%   0.000%   0.000%   1.318%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  13.165%   0.000%   0.000%  15.834%   0.000%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.162%  15.831%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  25.727%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.140%   7.140%   0.000%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.142%   7.142%   0.000%
   53    8.1  2.0 -1.0  14.383%   5.783%   0.284%  12.598%   4.957%   0.000%   0.000%   0.000%   0.000%   0.881%
   54    9.1  2.0 -1.0  14.365%   5.789%   0.897%  11.979%   4.962%   0.000%   0.000%   0.000%   0.000%   0.879%
   55   10.1  2.0 -1.0   2.255%  10.849%   6.998%   1.540%   9.312%   0.000%   0.000%   0.000%   0.000%  10.552%
   56   11.1  2.0 -1.0   2.270%  10.855%   6.151%   2.382%   9.317%   0.000%   0.000%   0.000%   0.000%  10.549%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.273%  14.273%   4.292%   4.292%   0.000%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.000%  17.775%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%   7.137%
   67    7.1  2.0 -2.0   0.000%   0.000%  17.779%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%   7.139%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   4.962%  12.337%   8.462%  11.415%   0.000%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%  12.333%   4.967%  11.416%   8.466%   0.000%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   1.944%   9.312%   0.009%   2.960%   0.000%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   9.317%   1.940%   2.964%   0.009%   0.000%
   72   12.1  2.0 -2.0  16.645%  16.642%   0.013%   3.561%   3.572%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.010%   0.000%   0.000%   0.000%
   77    2.1  1.0  1.0   0.002%   0.027%   0.008%   0.002%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.006%   0.000%   0.000%   0.000%
   79    4.1  1.0  1.0   0.023%   0.001%   0.003%   0.014%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.010%   0.000%   0.000%   0.000%
   81    6.1  1.0  1.0   0.004%   0.027%   0.009%   0.001%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  1.0  1.0   0.025%   0.000%   0.003%   0.014%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    1.1  1.0  0.0   0.054%   0.000%   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.050%   0.002%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%
   87    5.1  1.0  0.0   0.000%   0.004%   0.033%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.010%   0.000%   0.000%   0.000%
   91    2.1  1.0 -1.0   0.002%   0.027%   0.008%   0.002%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.006%   0.000%   0.000%   0.000%
   93    4.1  1.0 -1.0   0.023%   0.001%   0.003%   0.014%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.010%   0.000%   0.000%   0.000%
   95    6.1  1.0 -1.0   0.004%   0.027%   0.009%   0.001%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.025%   0.000%   0.003%   0.014%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.000%   0.001%   0.016%   0.000%   0.015%   0.017%   0.000%   0.000%   0.000%
    7    7.1  2.0  2.0   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.017%   0.000%   0.030%   0.000%
    8    8.1  2.0  2.0   0.002%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.002%
    9    9.1  2.0  2.0   0.004%   0.002%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.014%
   10   10.1  2.0  2.0   0.029%   0.010%   0.000%   0.000%   0.001%   0.000%   0.000%   0.025%   0.000%   0.014%
   11   11.1  2.0  2.0   0.008%   0.028%   0.000%   0.000%   0.027%   0.000%   0.000%   0.002%   0.000%   0.015%
   12   12.1  2.0  2.0   0.000%   0.000%   0.037%   0.019%   0.000%   0.020%   0.001%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   0.018%   0.000%   0.004%
   22    7.1  2.0  1.0   0.008%   0.007%   0.000%   0.000%   0.010%   0.000%   0.000%   0.011%   0.000%   0.017%
   23    8.1  2.0  1.0   0.000%   0.000%   0.005%   0.014%   0.000%   0.000%   0.030%   0.000%   0.020%   0.000%
   24    9.1  2.0  1.0   0.000%   0.000%   0.016%   0.000%   0.000%   0.011%   0.019%   0.000%   0.022%   0.000%
   25   10.1  2.0  1.0   0.000%   0.000%   0.000%   0.004%   0.000%   0.024%   0.002%   0.000%   0.008%   0.000%
   26   11.1  2.0  1.0   0.000%   0.000%   0.000%   0.023%   0.000%   0.004%   0.002%   0.000%   0.009%   0.000%
   27   12.1  2.0  1.0   0.003%   0.002%   0.000%   0.000%   0.017%   0.000%   0.000%   0.017%   0.000%   0.003%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%   0.000%   0.000%   0.030%   0.000%   0.032%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.059%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.000%
   39    9.1  2.0  0.0   0.058%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  2.0  0.0   0.015%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   41   11.1  2.0  0.0   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.027%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%   0.000%   0.018%   0.000%   0.004%
   52    7.1  2.0 -1.0   0.008%   0.007%   0.000%   0.000%   0.010%   0.000%   0.000%   0.011%   0.000%   0.017%
   53    8.1  2.0 -1.0   0.000%   0.000%   0.005%   0.014%   0.000%   0.000%   0.030%   0.000%   0.020%   0.000%
   54    9.1  2.0 -1.0   0.000%   0.000%   0.016%   0.000%   0.000%   0.011%   0.019%   0.000%   0.022%   0.000%
   55   10.1  2.0 -1.0   0.000%   0.000%   0.000%   0.004%   0.000%   0.024%   0.002%   0.000%   0.008%   0.000%
   56   11.1  2.0 -1.0   0.000%   0.000%   0.000%   0.023%   0.000%   0.004%   0.002%   0.000%   0.009%   0.000%
   57   12.1  2.0 -1.0   0.003%   0.002%   0.000%   0.000%   0.017%   0.000%   0.000%   0.017%   0.000%   0.003%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.000%   0.001%   0.016%   0.000%   0.015%   0.017%   0.000%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.017%   0.000%   0.030%   0.000%
   68    8.1  2.0 -2.0   0.002%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.002%
   69    9.1  2.0 -2.0   0.004%   0.002%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.014%
   70   10.1  2.0 -2.0   0.029%   0.010%   0.000%   0.000%   0.001%   0.000%   0.000%   0.025%   0.000%   0.014%
   71   11.1  2.0 -2.0   0.008%   0.028%   0.000%   0.000%   0.027%   0.000%   0.000%   0.002%   0.000%   0.015%
   72   12.1  2.0 -2.0   0.000%   0.000%   0.037%   0.019%   0.000%   0.020%   0.001%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0  21.393%  21.349%   0.000%   0.000%   0.004%   0.000%   0.000%   0.047%   0.000%  14.014%
   77    2.1  1.0  1.0   0.000%   0.000%  15.770%  20.153%   0.000%   1.229%   5.542%   0.000%   0.010%   0.000%
   78    3.1  1.0  1.0   8.389%  14.635%   0.000%   0.000%  16.286%   0.000%   0.000%   2.970%   0.000%  13.697%
   79    4.1  1.0  1.0   0.000%   0.000%   2.960%  11.793%   0.000%   0.296%  17.044%   0.000%  16.261%   0.000%
   80    5.1  1.0  1.0   5.748%   0.090%   0.000%   0.000%   8.789%   0.000%   0.000%  21.517%   0.000%  16.007%
   81    6.1  1.0  1.0   0.000%   0.000%   9.962%   0.552%   0.000%  20.926%   9.244%   0.000%   0.081%   0.000%
   82    7.1  1.0  1.0   0.000%   0.000%   0.528%   0.731%   0.000%   9.240%  17.370%   0.000%  18.545%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%  41.377%   0.000%   0.000%   0.000%   1.415%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0  24.488%   0.000%   0.000%   0.000%  18.449%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.000%   0.000%  28.468%   0.000%  12.273%   0.000%   0.000%   3.048%   0.000%
   86    4.1  1.0  0.0   0.000%   9.389%   0.000%   0.000%   0.000%   0.000%   0.000%  22.226%   0.000%  10.419%
   87    5.1  1.0  0.0   0.000%   0.000%   0.000%   4.893%   0.000%  24.163%   0.000%   0.000%  26.975%   0.000%
   88    6.1  1.0  0.0   0.000%  18.281%   0.000%   0.000%   0.000%   0.000%   0.000%  28.522%   0.000%   1.980%
   89    7.1  1.0  0.0   4.270%   0.000%   0.000%   0.000%  31.210%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0  21.393%  21.349%   0.000%   0.000%   0.004%   0.000%   0.000%   0.047%   0.000%  14.014%
   91    2.1  1.0 -1.0   0.000%   0.000%  15.770%  20.153%   0.000%   1.229%   5.542%   0.000%   0.010%   0.000%
   92    3.1  1.0 -1.0   8.389%  14.635%   0.000%   0.000%  16.286%   0.000%   0.000%   2.970%   0.000%  13.697%
   93    4.1  1.0 -1.0   0.000%   0.000%   2.960%  11.793%   0.000%   0.296%  17.044%   0.000%  16.261%   0.000%
   94    5.1  1.0 -1.0   5.748%   0.090%   0.000%   0.000%   8.789%   0.000%   0.000%  21.517%   0.000%  16.007%
   95    6.1  1.0 -1.0   0.000%   0.000%   9.962%   0.552%   0.000%  20.926%   9.244%   0.000%   0.081%   0.000%
   96    7.1  1.0 -1.0   0.000%   0.000%   0.528%   0.731%   0.000%   9.240%  17.370%   0.000%  18.545%   0.000%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.003%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%   0.012%
    7    7.1  2.0  2.0   0.000%   0.003%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%   0.012%
    8    8.1  2.0  2.0   0.000%   0.000%   0.009%   0.000%   0.005%   0.000%   0.004%   0.010%   0.000%   0.000%
    9    9.1  2.0  2.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.010%   0.004%   0.000%   0.000%
   10   10.1  2.0  2.0   0.000%   0.000%   0.002%   0.003%   0.026%   0.000%   0.002%   0.008%   0.000%   0.000%
   11   11.1  2.0  2.0   0.000%   0.000%   0.016%   0.013%   0.000%   0.000%   0.008%   0.002%   0.000%   0.000%
   12   12.1  2.0  2.0   0.027%   0.024%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.003%   0.001%
   13   13.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.001%   0.023%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    7.1  2.0  1.0   0.000%   0.000%   0.027%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    8.1  2.0  1.0   0.009%   0.022%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.001%
   24    9.1  2.0  1.0   0.009%   0.019%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.004%   0.004%
   25   10.1  2.0  1.0   0.018%   0.002%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.008%   0.007%
   26   11.1  2.0  1.0   0.018%   0.005%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.008%   0.002%
   27   12.1  2.0  1.0   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.012%   0.012%   0.000%   0.000%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.064%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.024%   0.000%   0.040%   0.000%   0.001%   0.000%   0.000%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.024%   0.000%   0.004%   0.000%   0.011%   0.000%   0.000%   0.000%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.005%   0.000%   0.000%   0.000%   0.039%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.001%   0.023%   0.026%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.027%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    8.1  2.0 -1.0   0.009%   0.022%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.001%
   54    9.1  2.0 -1.0   0.009%   0.019%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.004%   0.004%
   55   10.1  2.0 -1.0   0.018%   0.002%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.008%   0.007%
   56   11.1  2.0 -1.0   0.018%   0.005%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.008%   0.002%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.012%   0.012%   0.000%   0.000%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.003%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%   0.012%
   67    7.1  2.0 -2.0   0.000%   0.003%   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%   0.012%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.009%   0.000%   0.005%   0.000%   0.004%   0.010%   0.000%   0.000%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.010%   0.004%   0.000%   0.000%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.002%   0.003%   0.026%   0.000%   0.002%   0.008%   0.000%   0.000%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.016%   0.013%   0.000%   0.000%   0.008%   0.002%   0.000%   0.000%
   72   12.1  2.0 -2.0   0.027%   0.024%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.003%   0.001%
   73   13.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%  16.161%   2.626%   0.478%   0.000%  11.889%  11.888%   0.000%   0.000%
   77    2.1  1.0  1.0  16.639%   0.118%   0.000%   0.000%   0.000%  16.706%   0.000%   0.000%  11.788%  11.822%
   78    3.1  1.0  1.0   0.000%   0.000%   0.325%  11.777%   8.650%   0.000%  16.277%   6.841%   0.000%   0.000%
   79    4.1  1.0  1.0   0.393%  18.813%   0.000%   0.000%   0.000%   1.051%   0.000%   0.000%  10.054%  11.891%
   80    5.1  1.0  1.0   0.000%   0.000%  11.168%   0.115%  21.454%   0.000%   2.758%  12.194%   0.000%   0.000%
   81    6.1  1.0  1.0  16.245%   8.912%   0.000%   0.000%   0.000%  12.821%   0.000%   0.000%   8.983%   6.411%
   82    7.1  1.0  1.0   0.001%   7.296%   0.000%   0.000%   0.000%  17.479%   0.000%   0.000%   7.247%   0.139%
   83    1.1  1.0  0.0   0.000%  29.559%   0.000%   0.000%   0.000%   3.722%   0.000%   0.000%  23.774%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   5.448%   0.000%  27.466%   0.000%  23.996%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0  30.936%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.180%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%  48.899%   0.000%   0.000%   0.000%   8.905%   0.000%   0.000%
   87    5.1  1.0  0.0   2.344%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  39.212%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%  21.900%   0.000%   0.000%   0.000%  29.167%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%  39.078%   0.000%  11.207%   0.000%  14.076%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%  16.161%   2.626%   0.478%   0.000%  11.889%  11.888%   0.000%   0.000%
   91    2.1  1.0 -1.0  16.639%   0.118%   0.000%   0.000%   0.000%  16.706%   0.000%   0.000%  11.788%  11.822%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.325%  11.777%   8.650%   0.000%  16.277%   6.841%   0.000%   0.000%
   93    4.1  1.0 -1.0   0.393%  18.813%   0.000%   0.000%   0.000%   1.051%   0.000%   0.000%  10.054%  11.891%
   94    5.1  1.0 -1.0   0.000%   0.000%  11.168%   0.115%  21.454%   0.000%   2.758%  12.194%   0.000%   0.000%
   95    6.1  1.0 -1.0  16.245%   8.912%   0.000%   0.000%   0.000%  12.821%   0.000%   0.000%   8.983%   6.411%
   96    7.1  1.0 -1.0   0.001%   7.296%   0.000%   0.000%   0.000%  17.479%   0.000%   0.000%   7.247%   0.139%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  2.0  2.0   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  2.0  2.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   0.000%  37.630%  12.366%   0.000%   0.000%   1.669%   1.669%   0.000%   0.000%   8.345%
   14   14.1  2.0  2.0   0.000%  37.636%  12.368%   0.000%   0.000%   1.665%   1.665%   0.000%   0.000%   8.345%
   15   15.1  2.0  2.0   0.000%   0.000%   0.000%  16.643%  16.640%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    7.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    8.1  2.0  1.0   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    9.1  2.0  1.0   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25   10.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26   11.1  2.0  1.0   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   12.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   13.1  2.0  1.0   0.000%   0.000%   0.000%  16.664%  16.678%   0.000%   0.000%  10.025%  24.989%   0.000%
   29   14.1  2.0  1.0   0.000%   0.000%   0.000%  16.698%  16.678%   0.000%   0.000%   9.991%  25.011%   0.000%
   30   15.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  26.646%  26.646%   0.000%   0.000%   8.334%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  40.041%   0.000%   0.000%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  40.041%   0.000%   0.000%   0.000%  49.952%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  59.967%   0.000%   0.000%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    8.1  2.0 -1.0   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   10.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   11.1  2.0 -1.0   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   13.1  2.0 -1.0   0.000%   0.000%   0.000%  16.661%  16.681%   0.000%   0.000%  10.025%  24.989%   0.000%
   59   14.1  2.0 -1.0   0.000%   0.000%   0.000%  16.694%  16.681%   0.000%   0.000%   9.991%  25.011%   0.000%
   60   15.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  26.646%  26.646%   0.000%   0.000%   8.334%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  2.0 -2.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   0.000%  12.366%  37.630%   0.000%   0.000%   1.669%   1.669%   0.000%   0.000%   8.345%
   74   14.1  2.0 -2.0   0.000%  12.368%  37.636%   0.000%   0.000%   1.665%   1.665%   0.000%   0.000%   8.345%
   75   15.1  2.0 -2.0   0.000%   0.000%   0.000%  16.640%  16.643%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  1.0  1.0   0.071%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  1.0  1.0   9.297%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  1.0  1.0   5.710%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  1.0  1.0  21.274%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0  24.943%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    5.1  1.0  0.0   2.272%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    2.1  1.0 -1.0   0.071%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    4.1  1.0 -1.0   9.297%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95    6.1  1.0 -1.0   5.710%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96    7.1  1.0 -1.0  21.274%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      91       92       93       94       95       96

    1    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  2.0  2.0   8.345%   0.000%   0.000%  14.988%  14.988%   0.000%
   14   14.1  2.0  2.0   8.345%   0.000%   0.000%  14.988%  14.988%   0.000%
   15   15.1  2.0  2.0   0.000%  33.356%  33.361%   0.000%   0.000%   0.000%
   16    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    4.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    5.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    6.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    7.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    8.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    9.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25   10.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26   11.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   12.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   13.1  2.0  1.0   0.000%   8.320%   8.332%   0.000%   0.000%  14.992%
   29   14.1  2.0  1.0   0.000%   8.320%   8.310%   0.000%   0.000%  14.992%
   30   15.1  2.0  1.0   8.334%   0.000%   0.000%  15.020%  15.020%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41   11.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42   12.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43   13.1  2.0  0.0  49.952%   0.000%   0.000%   0.000%  10.007%   0.000%
   44   14.1  2.0  0.0   0.000%   0.000%   0.000%  10.007%   0.000%   0.000%
   45   15.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  40.033%
   46    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    4.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    5.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    6.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    7.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    8.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    9.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   10.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   11.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   12.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   13.1  2.0 -1.0   0.000%   8.321%   8.331%   0.000%   0.000%  14.992%
   59   14.1  2.0 -1.0   0.000%   8.321%   8.309%   0.000%   0.000%  14.992%
   60   15.1  2.0 -1.0   8.334%   0.000%   0.000%  15.020%  15.020%   0.000%
   61    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  2.0 -2.0   8.345%   0.000%   0.000%  14.988%  14.988%   0.000%
   74   14.1  2.0 -2.0   8.345%   0.000%   0.000%  14.988%  14.988%   0.000%
   75   15.1  2.0 -2.0   0.000%  33.361%  33.356%   0.000%   0.000%   0.000%
   76    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    7.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96    7.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%


 Property matrices transformed in SO basis (not sym. adapted)
 ============================================================

 No matrix element <i|DMX|i> larger than 1E-10
 No matrix element <i|DMX|1> larger than 1E-10

 No matrix element <i|DMY|i> larger than 1E-10
 No matrix element <i|DMY|1> larger than 1E-10

 No matrix element <i|DMZ|i> larger than 1E-10
 No matrix element <i|DMZ|1> larger than 1E-10


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2192.89       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1763.16       700     1000      520     2100     2140     5101     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15549.44   8596.69   1350.88   5586.53      3.16      3.29      8.71
 REAL TIME  *     16098.98 SEC
 DISK USED  *         1.77 GB (local),        9.61 GB (total)
 SF USED    *        12.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCV5Z-DK energy=  -1271.930573255035

              CI              CI           MULTI         RHF-SCF
  -1271.90407204  -1271.87405976  -1271.23125270  -1271.27122543
 **********************************************************************************************************************************
 Molpro calculation terminated
